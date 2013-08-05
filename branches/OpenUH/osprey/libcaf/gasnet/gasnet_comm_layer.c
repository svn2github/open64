/*
 GASNet Communication runtime library to be used with OpenUH

 Copyright (C) 2009-2013 University of Houston.

 This program is free software; you can redistribute it and/or modify it
 under the terms of version 2 of the GNU General Public License as
 published by the Free Software Foundation.

 This program is distributed in the hope that it would be useful, but
 WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 Further, this software is distributed without any warranty that it is
 free of the rightful claim of any third person regarding infringement
 or the like.  Any license provided herein, whether implied or
 otherwise, applies only to this software file.  Patent licenses, if
 any, provided herein do not apply to combinations of this program with
 other software, or any other product whatsoever.

 You should have received a copy of the GNU General Public License along
 with this program; if not, write the Free Software Foundation, Inc., 59
 Temple Place - Suite 330, Boston MA 02111-1307, USA.

 Contact information:
 http://www.cs.uh.edu/~hpctools
*/

/*
 *
 * Copyright (c) 2011, 2012
 *   University of Houston System and Oak Ridge National Laboratory.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * o Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * o Neither the name of the University of Houston System, Oak Ridge
 *   National Laboratory nor the names of its contributors may be used to
 *   endorse or promote products derived from this software without specific
 *   prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/*
 * This file defines the communication layer on top of GASNet. It makes use of
 * the GASNet Active Message API for atomic operations and for point-to-point
 * synchronization. The atomics implementation (compare-and-swap, swap,
 * fetch-and-store, fetch-and-add) is adapated from the UH OpenSHMEM
 * implementation.
 */

/* #defines are in the header file */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include <stdint.h>
#include "caf_rtl.h"
#include "alloc.h"
#include "comm.h"
#include "gasnet_comm_layer.h"
#include "lock.h"
#include "env.h"
#include "service.h"
#include "trace.h"
#include "util.h"
#include "profile.h"

const size_t LARGE_COMM_BUF_SIZE = 120 * 1024;

const size_t SMALL_XFER_SIZE = 200;     /* size for which local mem copy would be
                                           advantageous */


extern unsigned long _this_image;
extern unsigned long _num_images;
extern mem_usage_info_t *mem_info;

extern int rma_prof_rid;

/* common_slot is a node in the shared memory link-list that keeps track
 * of available memory that can used for both allocatable coarrays and
 * asymmetric data.  */
extern shared_memory_slot_t *common_slot;

/*
 * Static variable declarations
 */

static unsigned long my_proc;
static unsigned long num_procs;

static unsigned long static_symm_data_total_size_ = 0;
#pragma weak static_symm_data_total_size = static_symm_data_total_size_
extern unsigned long static_symm_data_total_size;

static unsigned short gasnet_everything = 0;    /* flag */

/* Global barrier */
static unsigned int barcount = 0;
static unsigned int barflag = 0;        // GASNET_BARRIERFLAG_ANONYMOUS

/* Shared memory management
 * coarray_start_all_images stores the shared memory start address and
 * size of all images.
 * gasnet_seginfo_t is a struct defined in gasnet.h:
 * typedef struct {
 *      void *addr;
 *      uintptr_t size;
 * }gasnet_seginfo_t
 */
static gasnet_seginfo_t *coarray_start_all_images = NULL;
/* For everything config, coarray_start_all_images has to be populated
 * by remote gets. But we can not pass the address of
 * coarray_start_all_images[img]->addr to gasnet_get as it is on heap.
 * Only static variables have same address across images. So we use a
 * static variable everything_heap_start to store
 * coarray_start_all_images[my_proc]->addr */
static void *everything_heap_start;

static gasnet_nodeinfo_t *nodeinfo_table;

/* image stoppage info */
static unsigned short *stopped_image_exists = NULL;
static unsigned short *this_image_stopped = NULL;

/*sync images*/
static unsigned short *sync_images_flag = NULL;
static gasnet_hsl_t sync_lock = GASNET_HSL_INITIALIZER;

/*non-blocking put*/
static struct nb_handle_manager nb_mgr[2];

static size_t nb_xfer_limit;


/* get cache */
static int enable_get_cache;    /* set by env variable */
static size_t getCache_line_size;       /* set by env var. */
/* Instead of making the cache_all_image an array of struct cache, I
 * make it an array of pointer to struct cache. This will make it easy
 * to add more cache lines in the future by making it 2D array */
static struct cache **cache_all_images;
static size_t shared_memory_size;

/* mutex for critical sections */
lock_t *critical_lock;

/* mutex for atomic ops  -- using a single one for now. */
gasnet_hsl_t atomics_mutex = GASNET_HSL_INITIALIZER;

/* forward declarations */

static inline int address_in_symmetric_mem(void *addr);
static inline int address_in_shared_mem(void *addr);
static inline void sync_on_handle(struct handle_list *handle);

static void handler_put_request(gasnet_token_t token, void *buf,
                                size_t bufsiz, gasnet_handlerarg_t unused);

static void handler_put_reply(gasnet_token_t token, void *buf,
                              size_t bufsiz, gasnet_handlerarg_t unused);

static void handler_get_request(gasnet_token_t token, void *buf,
                                size_t bufsiz, gasnet_handlerarg_t unused);

static void handler_get_reply(gasnet_token_t token, void *buf,
                              size_t bufsiz, gasnet_handlerarg_t unused);

static void handler_sync_request(gasnet_token_t token, int imageIndex);

static void
handler_swap_request(gasnet_token_t token,
                     void *buf, size_t bufsiz, gasnet_handlerarg_t unused);

static void
handler_swap_reply(gasnet_token_t token,
                   void *buf, size_t bufsiz, gasnet_handlerarg_t unused);

static void handler_cswap_request(gasnet_token_t token,
                                  void *buf, size_t bufsiz,
                                  gasnet_handlerarg_t unused);

static void
handler_cswap_reply(gasnet_token_t token,
                    void *buf, size_t bufsiz, gasnet_handlerarg_t unused);

static void
handler_fadd_request(gasnet_token_t token,
                     void *buf, size_t bufsiz, gasnet_handlerarg_t unused);

static void
handler_fadd_reply(gasnet_token_t token,
                   void *buf, size_t bufsiz, gasnet_handlerarg_t unused);

static void *get_remote_address(void *src, size_t img);
static int address_in_nb_address_block(void *remote_addr,
                                       size_t proc, size_t size,
                                       access_type_t access_type);
static void update_nb_address_block(void *remote_addr, size_t proc,
                                    size_t size,
                                    access_type_t access_type);
static struct handle_list *get_next_handle(unsigned long proc,
                                           void *remote_address,
                                           void *local_buf,
                                           unsigned long size,
                                           access_type_t access_type);
static void reset_min_nb_address(unsigned long proc,
                                 access_type_t access_type);
static void reset_max_nb_address(unsigned long proc,
                                 access_type_t access_type);
static void delete_node(unsigned long proc, struct handle_list *node,
                        access_type_t access_type);
static int address_in_handle(struct handle_list *handle_node,
                             void *address, unsigned long size);
static void wait_on_pending_accesses(unsigned long proc,
                                     void *remote_address,
                                     unsigned long size,
                                     access_type_t access_type);
static void wait_on_all_pending_accesses_to_proc(unsigned long proc);
static inline void wait_on_all_pending_accesses();

static void clear_all_cache();
static void clear_cache(unsigned long node);
static void cache_check_and_get(size_t node, void *remote_address,
                                size_t nbytes, void *local_address);
static void update_cache(size_t node, void *remote_address,
                         size_t nbytes, void *local_address);

static void local_strided_copy(void *src, const size_t src_strides[],
                               void *dest, const size_t dest_strides[],
                               const size_t count[], size_t stride_levels);


/* must call comm_init() first */
inline size_t comm_get_proc_id()
{
    return my_proc;
}

/* must call comm_init() first */
inline size_t comm_get_num_procs()
{
    return num_procs;
}


/**************************************************************
 *       Shared (RMA) Memory Segment Address Ranges
 **************************************************************/

inline ssize_t comm_address_translation_offset(size_t proc)
{
    char *remote_base_address = coarray_start_all_images[proc].addr;
    if (gasnet_everything && remote_base_address == 0) {
        gasnet_get(&remote_base_address, proc,
                   &everything_heap_start, sizeof(void *));
        coarray_start_all_images[proc].addr = remote_base_address;
    }

    return remote_base_address -
        (char *) coarray_start_all_images[my_proc].addr;
}

inline void *comm_start_shared_mem(size_t proc)
{
    return get_remote_address(coarray_start_all_images[my_proc].addr,
                              proc);
}

inline void *comm_start_symmetric_mem(size_t proc)
{
    return comm_start_shared_mem(proc);
}

inline void *comm_start_static_data(size_t proc)
{
    return comm_start_shared_mem(proc);
}

inline void *comm_end_static_data(size_t proc)
{
    return (char *) comm_start_shared_mem(proc) +
        static_symm_data_total_size;
}

inline void *comm_start_allocatable_heap(size_t proc)
{
    return comm_end_static_data(proc);
}

inline void *comm_end_allocatable_heap(size_t proc)
{
    return comm_end_symmetric_mem(proc);
}

inline void *comm_end_symmetric_mem(size_t proc)
{
    /* we can't directly use common_slot->addr as the argument, because the
     * translation algorithm will treat it as part of the asymmetric memory
     * space */
    return get_remote_address(common_slot->addr - 1, proc) + 1;
}

inline void *comm_start_asymmetric_heap(size_t proc)
{
    if (proc != my_proc) {
        return comm_end_symmetric_mem(proc);
    } else {
        return (char *) common_slot->addr + common_slot->size;
    }
}

inline void *comm_end_asymmetric_heap(size_t proc)
{
    return comm_end_shared_mem(proc);
}

inline void *comm_end_shared_mem(size_t proc)
{
    return comm_start_shared_mem(proc) + shared_memory_size;
}

static inline int address_in_symmetric_mem(void *addr)
{
    void *start_symm_mem;
    void *end_symm_mem;

    if (gasnet_everything)
        return 1;

    start_symm_mem = coarray_start_all_images[my_proc].addr;
    end_symm_mem = common_slot->addr;

    return (addr >= start_symm_mem && addr < end_symm_mem);
}

static inline int address_in_shared_mem(void *addr)
{
    void *start_shared_mem;
    void *end_shared_mem;

    if (gasnet_everything)
        return 1;

    start_shared_mem = coarray_start_all_images[my_proc].addr;
    end_shared_mem = start_shared_mem + shared_memory_size;

    return (addr >= start_shared_mem && addr < end_shared_mem);
}

int comm_address_in_shared_mem(void *addr)
{
    void *start_shared_mem;
    void *end_shared_mem;

    if (gasnet_everything)
        return 1;

    start_shared_mem = coarray_start_all_images[my_proc].addr;
    end_shared_mem = start_shared_mem + shared_memory_size;

    return (addr >= start_shared_mem && addr < end_shared_mem);
}


static inline int remote_address_in_shared_mem(size_t proc, void *address)
{
    return !((address < comm_start_symmetric_mem(my_proc) ||
              address >= comm_end_symmetric_mem(my_proc)) &&
             (address < comm_start_asymmetric_heap(proc) ||
              address >= comm_end_asymmetric_heap(proc)));
}


/*************************************************************
 *                    GASNET HANDLERS
 *************************************************************/

static gasnet_handlerentry_t handlers[] = {
    {GASNET_HANDLER_SYNC_REQUEST, handler_sync_request},
    {GASNET_HANDLER_SWAP_REQUEST, handler_swap_request},
    {GASNET_HANDLER_SWAP_REPLY, handler_swap_reply},
    {GASNET_HANDLER_CSWAP_REQUEST, handler_cswap_request},
    {GASNET_HANDLER_CSWAP_REPLY, handler_cswap_reply},
    {GASNET_HANDLER_FADD_REQUEST, handler_fadd_request},
    {GASNET_HANDLER_FADD_REPLY, handler_fadd_reply},
    {GASNET_HANDLER_PUT_REQUEST, handler_put_request},
    {GASNET_HANDLER_PUT_REPLY, handler_put_reply},
    {GASNET_HANDLER_GET_REQUEST, handler_get_request},
    {GASNET_HANDLER_GET_REPLY, handler_get_reply}
};

static const int nhandlers = sizeof(handlers) / sizeof(handlers[0]);

/* handler funtion for  sync images */
static void handler_sync_request(gasnet_token_t token, int imageIndex)
{
    gasnet_hsl_lock(&sync_lock);
    sync_images_flag[imageIndex]++;
    gasnet_hsl_unlock(&sync_lock);
}

typedef struct {
    size_t nbytes;              /* size of read/write */
    void *target;               /* where to read/write */
    void *source;
    volatile int completed;
    volatile int *completed_addr;
} outside_shared_mem_payload_t;

static void handler_put_request(gasnet_token_t token, void *buf,
                                size_t bufsiz, gasnet_handlerarg_t unused)
{
    outside_shared_mem_payload_t *pp =
        (outside_shared_mem_payload_t *) buf;
    void *data = buf + sizeof(*pp);

    memmove(pp->target, data, pp->nbytes);
    LOAD_STORE_FENCE();

    /* return ack, just need the control structure */
    gasnet_AMReplyMedium1(token, GASNET_HANDLER_PUT_REPLY, buf,
                          sizeof(*pp), unused);
}

static void handler_put_reply(gasnet_token_t token, void *buf,
                              size_t bufsiz, gasnet_handlerarg_t unused)
{
    outside_shared_mem_payload_t *pp =
        (outside_shared_mem_payload_t *) buf;
    *(pp->completed_addr) = 1;
}


static void handler_get_request(gasnet_token_t token, void *buf,
                                size_t bufsiz, gasnet_handlerarg_t unused)
{
    outside_shared_mem_payload_t *pp =
        (outside_shared_mem_payload_t *) buf;
    outside_shared_mem_payload_t *datap = buf + sizeof(*pp);

    memmove(datap, pp->source, pp->nbytes);
    LOAD_STORE_FENCE();

    /* return ack, copied data is returned */
    gasnet_AMReplyMedium1(token, GASNET_HANDLER_GET_REPLY, buf,
                          bufsiz, unused);
}

static void handler_get_reply(gasnet_token_t token, void *buf,
                              size_t bufsiz, gasnet_handlerarg_t unused)
{
    outside_shared_mem_payload_t *pp =
        (outside_shared_mem_payload_t *) buf;

    /* write back payload data here */
    memmove(pp->target, buf + sizeof(*pp), pp->nbytes);
    LOAD_STORE_FENCE();

    *(pp->completed_addr) = 1;
}

/* the following handlers for atomic operations come mostly from the OpenSHMEM
 * implementation. Also, a single mutex is used, per image, for any atomic
 * operations instead of a separate mutex per address. This could perhaps be
 * optimized at a later time.
 */

typedef struct {
    void *local_store;          /* sender saves here */
    void *r_symm_addr;          /* recipient symmetric var */
    volatile int completed;     /* transaction end marker */
    volatile int *completed_addr;       /* addr of marker */
    size_t nbytes;              /* how big the value is */
    long long value;            /* value to be swapped */
} swap_payload_t;

/*
 * called by remote PE to do the swap.  Store new value, send back old value
 */
static void
handler_swap_request(gasnet_token_t token,
                     void *buf, size_t bufsiz, gasnet_handlerarg_t unused)
{
    long long old;
    swap_payload_t *pp = (swap_payload_t *) buf;

    if (pp->nbytes == sizeof(INT4)) {
        pp->value = SYNC_SWAP((INT4 *) pp->r_symm_addr, (INT4) pp->value);
    } else if (pp->nbytes == sizeof(INT8)) {
        pp->value = SYNC_SWAP((INT8 *) pp->r_symm_addr, (INT8) pp->value);
    } else if (pp->nbytes == sizeof(INT1)) {
        pp->value = SYNC_SWAP((INT1 *) pp->r_symm_addr, (INT1) pp->value);
    } else if (pp->nbytes == sizeof(INT2)) {
        pp->value = SYNC_SWAP((INT2 *) pp->r_symm_addr, (INT2) pp->value);
    } else {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "comm_swap_request doesn't allow nbytes = %d",
                     pp->nbytes);
    }

    /* return updated payload */
    gasnet_AMReplyMedium1(token, GASNET_HANDLER_SWAP_REPLY, buf, bufsiz,
                          unused);
}

/*
 * called by swap invoker when old value returned by remote PE
 */
static void
handler_swap_reply(gasnet_token_t token,
                   void *buf, size_t bufsiz, gasnet_handlerarg_t unused)
{
    swap_payload_t *pp = (swap_payload_t *) buf;

    /* save returned value */
    (void) memmove(pp->local_store, &(pp->value), pp->nbytes);

    LOAD_STORE_FENCE();

    /* done it */
    *(pp->completed_addr) = 1;

}

typedef struct {
    void *local_store;          /* sender saves here */
    void *r_symm_addr;          /* recipient symmetric var */
    volatile int completed;     /* transaction end marker */
    volatile int *completed_addr;       /* addr of marker */
    size_t nbytes;              /* how big the value is */
    long long value;            /* value to be swapped */
    long long cond;             /* conditional value */
} cswap_payload_t;


/*
 * called by remote PE to do the swap.  Store new value if cond
 * matches, send back old value in either case
 */
static void handler_cswap_request(gasnet_token_t token,
                                  void *buf, size_t bufsiz,
                                  gasnet_handlerarg_t unused)
{
    void *old;
    cswap_payload_t *pp = (cswap_payload_t *) buf;

    if (pp->nbytes == sizeof(INT4)) {
        pp->value = SYNC_CSWAP((INT4 *) pp->r_symm_addr,
                               (INT4) pp->cond, (INT4) pp->value);
    } else if (pp->nbytes == sizeof(INT8)) {
        pp->value = SYNC_CSWAP((INT8 *) pp->r_symm_addr,
                               (INT8) pp->cond, (INT8) pp->value);
    } else if (pp->nbytes == sizeof(INT1)) {
        pp->value = SYNC_CSWAP((INT1 *) pp->r_symm_addr,
                               (INT1) pp->cond, (INT1) pp->value);
    } else if (pp->nbytes == sizeof(INT2)) {
        pp->value = SYNC_CSWAP((INT2 *) pp->r_symm_addr,
                               (INT2) pp->cond, (INT2) pp->value);
    } else {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "comm_cswap_request doesn't allow nbytes = %d",
                     pp->nbytes);
    }

    /* return updated payload */
    gasnet_AMReplyMedium1(token, GASNET_HANDLER_CSWAP_REPLY, buf, bufsiz,
                          unused);
}

/*
 * called by swap invoker when old value returned by remote PE
 * (same as swap_bak for now)
 */
static void
handler_cswap_reply(gasnet_token_t token,
                    void *buf, size_t bufsiz, gasnet_handlerarg_t unused)
{
    cswap_payload_t *pp = (cswap_payload_t *) buf;

    /* save returned value */
    (void) memmove(pp->local_store, &(pp->value), pp->nbytes);

    LOAD_STORE_FENCE();

    /* done it */
    *(pp->completed_addr) = 1;

}

/*
 * fetch/add
 */

typedef struct {
    void *local_store;          /* sender saves here */
    void *r_symm_addr;          /* recipient symmetric var */
    volatile int completed;     /* transaction end marker */
    volatile int *completed_addr;       /* addr of marker */
    size_t nbytes;              /* how big the value is */
    long long value;            /* value to be added & then return old */
} fadd_payload_t;

/*
 * called by remote PE to do the fetch and add.  Store new value, send
 * back old value
 */
static void
handler_fadd_request(gasnet_token_t token,
                     void *buf, size_t bufsiz, gasnet_handlerarg_t unused)
{
    long long old = 0;
    long long plus = 0;
    fadd_payload_t *pp = (fadd_payload_t *) buf;

    if (pp->nbytes == sizeof(INT4)) {
        pp->value = SYNC_FETCH_AND_ADD((INT4 *) pp->r_symm_addr,
                                       (INT4) pp->value);
    } else if (pp->nbytes == sizeof(INT8)) {
        pp->value = SYNC_FETCH_AND_ADD((INT8 *) pp->r_symm_addr,
                                       (INT8) pp->value);
    } else if (pp->nbytes == sizeof(INT1)) {
        pp->value = SYNC_FETCH_AND_ADD((INT1 *) pp->r_symm_addr,
                                       (INT1) pp->value);
    } else if (pp->nbytes == sizeof(INT2)) {
        pp->value = SYNC_FETCH_AND_ADD((INT2 *) pp->r_symm_addr,
                                       (INT2) pp->value);
    } else {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "comm_fadd_request doesn't allow nbytes = %d",
                     pp->nbytes);
    }

    /* return updated payload */
    gasnet_AMReplyMedium1(token, GASNET_HANDLER_FADD_REPLY, buf, bufsiz,
                          unused);
}

/*
 * called by fadd invoker when old value returned by remote PE
 */
static void
handler_fadd_reply(gasnet_token_t token,
                   void *buf, size_t bufsiz, gasnet_handlerarg_t unused)
{
    fadd_payload_t *pp = (fadd_payload_t *) buf;

    /* save returned value */
    (void) memmove(pp->local_store, &(pp->value), pp->nbytes);

    LOAD_STORE_FENCE();

    /* done it */
    *(pp->completed_addr) = 1;

}

/***************************************************************
 *                        ATOMICS
 ***************************************************************/

/*
 * perform the swap
 */
void
comm_swap_request(void *target, void *value, size_t nbytes,
                  int proc, void *retval)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    const gasnet_nodeinfo_t *node_info = &nodeinfo_table[proc];
    check_remote_address(proc + 1, target);

    if (proc == my_proc) {

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_SWAP((INT4 *) target, *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_SWAP((INT8 *) target, *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_SWAP((INT1 *) target, *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_SWAP((INT2 *) target, *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_swap_request doesn't allow nbytes = %d",
                         nbytes);
        }

        return;
    }
#if GASNET_PSHM
    else if (node_info->supernode == nodeinfo_table[my_proc].supernode) {
        /* target resides in the same compute node */
        void *new_target;

        /* if target address falls outside the symmetric heap, we assume it is
         * with respect to the address space of target image. Otherwise, we
         * assume it is with respect to the local address space.
         */
        if (!address_in_symmetric_mem(target)) {
            ssize_t ofst = node_info->offset;
            new_target = (void *) ((uintptr_t) target + ofst);
        } else {
            ssize_t ofst = node_info->offset;
            new_target =
                (void *) ((uintptr_t) get_remote_address(target, proc) +
                          ofst);
        }

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_SWAP((INT4 *) new_target,
                                         *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_SWAP((INT8 *) new_target,
                                         *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_SWAP((INT1 *) new_target,
                                         *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_SWAP((INT2 *) new_target,
                                         *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_swap_request doesn't allow nbytes = %d",
                         nbytes);
        }

        return;
    }
#endif

    swap_payload_t *p = (swap_payload_t *) malloc(sizeof(*p));
    if (p == (swap_payload_t *) NULL) {
        Error("unable to allocate swap payload memory");
    }
    /* build payload to send */
    p->local_store = value;
    p->r_symm_addr = get_remote_address(target, proc);
    p->nbytes = nbytes;
    /* p->value = *(long long *) value; */
    memmove(&(p->value), value, nbytes);
    p->completed = 0;
    p->completed_addr = &(p->completed);

    /* send and wait for ack */
    gasnet_AMRequestMedium1(proc, GASNET_HANDLER_SWAP_REQUEST, p,
                            sizeof(*p), 0);

    GASNET_BLOCKUNTIL(p->completed);
    memmove(retval, value, nbytes);

    free(p);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}



/*
 * perform the conditional swap
 */
void
comm_cswap_request(void *target, void *cond, void *value,
                   size_t nbytes, int proc, void *retval)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    const gasnet_nodeinfo_t *node_info = &nodeinfo_table[proc];
    check_remote_address(proc + 1, target);

    if (proc == my_proc) {

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_CSWAP((INT4 *) target,
                                          *(INT4 *) cond, *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_CSWAP((INT8 *) target,
                                          *(INT8 *) cond, *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_CSWAP((INT1 *) target,
                                          *(INT1 *) cond, *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_CSWAP((INT2 *) target,
                                          *(INT2 *) cond, *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_cswap_request doesn't allow nbytes = %d",
                         nbytes);
        }

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
    }
#if GASNET_PSHM
    else if (node_info->supernode == nodeinfo_table[my_proc].supernode) {
        long long old;
        void *new_target;

        /* if target address falls outside the symmetric heap, we assume it is
         * with respect to the address space of target image. Otherwise, we
         * assume it is with respect to the local address space.
         */
        if (!address_in_symmetric_mem(target)) {
            ssize_t ofst = node_info->offset;
            new_target = (void *) ((uintptr_t) target + ofst);
        } else {
            ssize_t ofst = node_info->offset;
            new_target =
                (void *) ((uintptr_t) get_remote_address(target, proc) +
                          ofst);
        }

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_CSWAP((INT4 *) new_target,
                                          *(INT4 *) cond, *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_CSWAP((INT8 *) new_target,
                                          *(INT8 *) cond, *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_CSWAP((INT1 *) new_target,
                                          *(INT1 *) cond, *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_CSWAP((INT2 *) new_target,
                                          *(INT2 *) cond, *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_cswap_request doesn't allow nbytes = %d",
                         nbytes);
        }


        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
    }
#endif

    cswap_payload_t *cp = (cswap_payload_t *) malloc(sizeof(*cp));

    if (cp == (cswap_payload_t *) NULL) {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "unable to allocate conditional swap payload memory");
    }

    /* build payload to send */
    cp->local_store = retval;
    cp->r_symm_addr = get_remote_address(target, proc);
    cp->nbytes = nbytes;
    cp->value = cp->cond = 0LL;
    memmove(&(cp->value), value, nbytes);
    memmove(&(cp->cond), cond, nbytes);
    cp->completed = 0;
    cp->completed_addr = &(cp->completed);

    LOAD_STORE_FENCE();

    /* send and wait for ack */
    gasnet_AMRequestMedium1(proc, GASNET_HANDLER_CSWAP_REQUEST, cp,
                            sizeof(*cp), 0);

    GASNET_BLOCKUNTIL(cp->completed);

    free(cp);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


/*
 * perform the fetch-and-add
 */
void
comm_fadd_request(void *target, void *value, size_t nbytes, int proc,
                  void *retval)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    const gasnet_nodeinfo_t *node_info = &nodeinfo_table[proc];
    check_remote_address(proc + 1, target);

    if (proc == my_proc) {

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_FETCH_AND_ADD((INT4 *) target,
                                                  *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_FETCH_AND_ADD((INT8 *) target,
                                                  *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_FETCH_AND_ADD((INT1 *) target,
                                                  *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_FETCH_AND_ADD((INT2 *) target,
                                                  *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_fadd_request doesn't allow nbytes = %d",
                         nbytes);
        }

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
    }
#if GASNET_PSHM
    else if (node_info->supernode == nodeinfo_table[my_proc].supernode) {
        void *new_target;

        /* if target address falls outside the symmetric heap, we assume it is
         * with respect to the address space of target image. Otherwise, we
         * assume it is with respect to the local address space.
         */
        if (!address_in_symmetric_mem(target)) {
            ssize_t ofst = node_info->offset;
            new_target = (void *) ((uintptr_t) target + ofst);
        } else {
            ssize_t ofst = node_info->offset;
            new_target =
                (void *) ((uintptr_t) get_remote_address(target, proc) +
                          ofst);
        }

        if (nbytes == sizeof(INT4)) {
            *(INT4 *) retval = SYNC_FETCH_AND_ADD((INT4 *) new_target,
                                                  *(INT4 *) value);
        } else if (nbytes == sizeof(INT8)) {
            *(INT8 *) retval = SYNC_FETCH_AND_ADD((INT8 *) new_target,
                                                  *(INT8 *) value);
        } else if (nbytes == sizeof(INT1)) {
            *(INT1 *) retval = SYNC_FETCH_AND_ADD((INT1 *) new_target,
                                                  *(INT1 *) value);
        } else if (nbytes == sizeof(INT2)) {
            *(INT2 *) retval = SYNC_FETCH_AND_ADD((INT2 *) new_target,
                                                  *(INT2 *) value);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                         "comm_fadd_request doesn't allow nbytes = %d",
                         nbytes);
        }

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
    }
#endif

    fadd_payload_t *p = (fadd_payload_t *) malloc(sizeof(*p));

    if (p == (fadd_payload_t *) NULL) {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "unable to allocate fetch-and-add payload memory");
    }

    /* build payload to send */
    p->local_store = retval;
    p->r_symm_addr = get_remote_address(target, proc);
    p->nbytes = nbytes;
    p->value = *(long long *) value;
    p->completed = 0;
    p->completed_addr = &(p->completed);

    /* send and wait for ack */
    gasnet_AMRequestMedium1(proc, GASNET_HANDLER_FADD_REQUEST, p,
                            sizeof(*p), 0);

    GASNET_BLOCKUNTIL(p->completed);

    free(p);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void
comm_fstore_request(void *target, void *value, size_t nbytes, int proc,
                    void *retval)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");
    long long old;

    memmove(&old, value, nbytes);
    comm_swap_request(target, value, nbytes, proc, retval);
    memmove(value, &old, nbytes);
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


/**************************************************************
 *                Memory Copy Helper Routines
 **************************************************************/

/* naive implementation of strided copy
 * TODO: improve by finding maximal blocksize
 */
static void local_strided_copy(void *src, const size_t src_strides[],
                               void *dest, const size_t dest_strides[],
                               const size_t count[], size_t stride_levels)
{
    int i, j;
    size_t num_blks;
    size_t cnt_strides[stride_levels + 1];
    size_t blockdim_size[stride_levels];
    void *dest_ptr = dest;
    void *src_ptr = src;

    /* assuming src_elem_size=dst_elem_size */
    size_t blk_size = count[0];
    num_blks = 1;
    cnt_strides[0] = 1;
    blockdim_size[0] = count[0];
    for (i = 1; i <= stride_levels; i++) {
        cnt_strides[i] = cnt_strides[i - 1] * count[i];
        blockdim_size[i] = blk_size * cnt_strides[i];
        num_blks *= count[i];
    }

    for (i = 1; i <= num_blks; i++) {
        memcpy(dest_ptr, src_ptr, blk_size);
        for (j = 1; j <= stride_levels; j++) {
            if (i % cnt_strides[j])
                break;
            src_ptr -= (count[j] - 1) * src_strides[j - 1];
            dest_ptr -= (count[j] - 1) * dest_strides[j - 1];
        }
        src_ptr += src_strides[j - 1];
        dest_ptr += dest_strides[j - 1];
    }
}

/*****************************************************************
 *                      INITIALIZATION
 *****************************************************************/

/*
 * comm_init:
 * 1) Initialize GASNet
 * 2) Allocate memory and initialize data-structures used for sync and
 *    non-blocking puts.
 * 3) Create pinned memory and populate coarray_start_all_images(except
 *    for EVERYTHING config.
 * 4) Populates common_slot with the pinned memory data which is used by
 *    alloc.c to allocate/deallocate coarrays.
 */

void comm_init()
{
    int ret, i;
    int argc;
    char **argv;
    const int gasnet_pagesize = GASNET_PAGESIZE;
    unsigned long caf_shared_memory_size;
    unsigned long caf_shared_memory_pages;
    unsigned long image_heap_size;

    shared_memory_slot_t *common_shared_memory_slot;

    if (common_slot != NULL) {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "common_slot has already been initialized");
    }

    common_slot = malloc(sizeof(shared_memory_slot_t));
    common_shared_memory_slot = common_slot;

    /* Get total shared memory size, per image, requested by program (enough
     * space for save coarrays + heap) and adjust GASNET_MAX_SEGSIZE
     * accordingly.
     */
    caf_shared_memory_size = static_symm_data_total_size;
    image_heap_size = get_env_size(ENV_IMAGE_HEAP_SIZE,
                                   DEFAULT_IMAGE_HEAP_SIZE);
    caf_shared_memory_size += image_heap_size;

    gasnet_max_segsize = 2 * caf_shared_memory_size;
    /* at minimum, make this  1 GB */
    if (gasnet_max_segsize < (1 << 30))
        gasnet_max_segsize = 1 << 30;

    argc = ARGC;
    argv = ARGV;
    ret = gasnet_init(&argc, &argv);
    if (ret != GASNET_OK) {
        Error("GASNet initialization error");
    }
    __f90_set_args(argc, argv);

#ifdef GASNET_SEGMENT_EVERYTHING
    gasnet_everything = 1;
#endif


    my_proc = gasnet_mynode();
    num_procs = gasnet_nodes();


    /* set extern symbols used for THIS_IMAGE and NUM_IMAGES intrinsics */
    _this_image = my_proc + 1;
    _num_images = num_procs;

    LIBCAF_TRACE_INIT();
    LIBCAF_TRACE(LIBCAF_LOG_INIT, "after gasnet_init");


    if (_num_images >= MAX_NUM_IMAGES) {
        if (my_proc == 0) {
            Error("Number of images must not exceed %lu", MAX_NUM_IMAGES);
        }
    }

    /* Check if optimizations are enabled */
    enable_get_cache = get_env_flag(ENV_GETCACHE, DEFAULT_ENABLE_GETCACHE);
    getCache_line_size = get_env_size(ENV_GETCACHE_LINE_SIZE,
                                      DEFAULT_GETCACHE_LINE_SIZE);

    nb_xfer_limit = get_env_size(ENV_NB_XFER_LIMIT, DEFAULT_NB_XFER_LIMIT);

    /* malloc data structures for sync_images, nb-put, get-cache */
    sync_images_flag = (unsigned short *) malloc
        (num_procs * sizeof(unsigned short));
    nb_mgr[PUTS].handles = (struct handle_list **) malloc
        (num_procs * sizeof(struct handle_list *));
    nb_mgr[PUTS].num_handles = 0;
    nb_mgr[PUTS].min_nb_address = malloc(num_procs * sizeof(void *));
    nb_mgr[PUTS].max_nb_address = malloc(num_procs * sizeof(void *));
    nb_mgr[GETS].handles = (struct handle_list **) malloc
        (num_procs * sizeof(struct handle_list *));
    nb_mgr[GETS].num_handles = 0;
    nb_mgr[GETS].min_nb_address = malloc(num_procs * sizeof(void *));
    nb_mgr[GETS].max_nb_address = malloc(num_procs * sizeof(void *));


    if (enable_get_cache) {
        cache_all_images =
            (struct cache **) malloc(num_procs * sizeof(struct cache *));
    }


    /* initialize data structures to 0 */
    for (i = 0; i < num_procs; i++) {
        sync_images_flag[i] = 0;

        nb_mgr[PUTS].handles[i] = 0;
        nb_mgr[PUTS].min_nb_address[i] = 0;
        nb_mgr[PUTS].max_nb_address[i] = 0;
        nb_mgr[GETS].handles[i] = 0;
        nb_mgr[GETS].min_nb_address[i] = 0;
        nb_mgr[GETS].max_nb_address[i] = 0;

        if (enable_get_cache) {
            cache_all_images[i] =
                (struct cache *) malloc(sizeof(struct cache));
            cache_all_images[i]->remote_address = 0;
            cache_all_images[i]->handle = 0;
            cache_all_images[i]->cache_line_address =
                malloc(getCache_line_size);
        }
    }

    /* create pinned-down/registered memory  and populate
     * coarray_start_all_images */
    coarray_start_all_images = (gasnet_seginfo_t *) malloc
        (num_procs * sizeof(gasnet_seginfo_t));

    nodeinfo_table = (gasnet_nodeinfo_t *) malloc
        (num_procs * sizeof(gasnet_nodeinfo_t));


    if (caf_shared_memory_size / 1024 >= MAX_SHARED_MEMORY_SIZE / 1024) {
        if (my_proc == 0) {
            Error("Image shared memory size must not exceed %lu GB",
                  MAX_SHARED_MEMORY_SIZE / (1024 * 1024 * 1024));
        }
    }

    uintptr_t max_local = gasnet_getMaxLocalSegmentSize();

    if (my_proc == 0) {
        LIBCAF_TRACE(LIBCAF_LOG_INIT,
                     "gasnet max local segment size: %lu, "
                     "requested caf_shared_memory_size: %lu",
                     max_local, caf_shared_memory_size);
    }

    /* We observed that when using ibv conduit with FAST segment
     * configuration, the max size reported by getMaxLocalSegmentSize is still
     * too large. To be safe, we set max_local to 75% of what it returns.
     */
#if (defined(GASNET_CONDUIT_IBV) || defined(GASNET_CONDUIT_VAPI)) && \
     defined(GASNET_SEGMENT_FAST)
    max_local = 0.75 * max_local;
#endif

    /* caf_shared_memory_size = MIN ( caf_shared_memory_size, max_local ) */
    if (caf_shared_memory_size > max_local) {
        /* let the first process issue a warning to the user */
        if (my_proc == 0) {
            Warning("Requested shared memory size (%lu bytes) "
                    "exceeds system's resources by %lu bytes. Setting to %lu "
                    "bytes instead.",
                    (unsigned long) caf_shared_memory_size,
                    (unsigned long) caf_shared_memory_size - max_local,
                    (unsigned long) max_local);
        }
        caf_shared_memory_size = max_local;
    }

    /* pinned-down memory must be PAGESIZE aligned */
    caf_shared_memory_pages = caf_shared_memory_size / GASNET_PAGESIZE;
    if (caf_shared_memory_size % GASNET_PAGESIZE)
        caf_shared_memory_pages++;
    caf_shared_memory_size = caf_shared_memory_pages * GASNET_PAGESIZE;

    /* gasnet everything ignores the last 2 params
     * note that attach is a collective operation */
    ret = gasnet_attach(handlers, nhandlers, caf_shared_memory_size, 0);
    if (ret != GASNET_OK) {
        Error("GASNET attach failed");
    }

    /* Get start address from all images
     * For gasnet_everything,  it get initialized to null,
     * I don't fetch it now, do when required first
     * time during get_remote_address(lazy init).*/
    ret = gasnet_getSegmentInfo(coarray_start_all_images, num_procs);
    if (ret != GASNET_OK) {
        Error("GASNET getSegmentInfo failed");
    }

    /* populate nodeinfo table */
    ret = gasnet_getNodeInfo(nodeinfo_table, num_procs);
    if (ret != GASNET_OK) {
        Error("GASNET getNodeInfo failed");
    }


    /* Do a simple malloc for EVERYTHING, as attach did not do it */
    if (gasnet_everything) {
        coarray_start_all_images[my_proc].addr =
            malloc(caf_shared_memory_pages * GASNET_PAGESIZE);
        coarray_start_all_images[my_proc].size =
            caf_shared_memory_pages * GASNET_PAGESIZE;
    }

    allocate_static_symm_data(coarray_start_all_images[my_proc].addr);

    if (gasnet_everything) {
        everything_heap_start = coarray_start_all_images[my_proc].addr;
    }

    /* initialize common shared memory slot */
    common_shared_memory_slot->addr =
        coarray_start_all_images[my_proc].addr +
        static_symm_data_total_size;
    common_shared_memory_slot->size =
        caf_shared_memory_size - static_symm_data_total_size;
    common_shared_memory_slot->feb = 0;
    common_shared_memory_slot->next = 0;
    common_shared_memory_slot->prev = 0;

    shared_memory_size = caf_shared_memory_size;

    /* allocate space in symmetric heap for memory usage info */
    mem_info = (mem_usage_info_t *)
        coarray_allocatable_allocate_(sizeof(*mem_info));
    mem_info->current_heap_usage = sizeof(*mem_info);
    mem_info->max_heap_usage = sizeof(*mem_info);
    mem_info->reserved_heap_usage =
        caf_shared_memory_size - static_symm_data_total_size;

    /* create a symmetric lock variable for guarding critical sections.
     * What's really needed is a distinct lock variable created for each
     * critical section in the program, but for now we'll keep this simple.
     */
    critical_lock =
        (lock_t *) coarray_allocatable_allocate_(sizeof(lock_t));

    /* allocate space for recording image termination */
    stopped_image_exists =
        (short *) coarray_allocatable_allocate_(sizeof(short));
    this_image_stopped =
        (short *) coarray_allocatable_allocate_(sizeof(short));

    *stopped_image_exists = 0;
    *this_image_stopped = 0;

    /* start progress thread */
    comm_service_init();

    LIBCAF_TRACE(LIBCAF_LOG_INIT,
                 "Finished. Waiting for global barrier. Gasnet_Everything is %d. "
                 "common_slot->addr=%p, common_slot->size=%lu",
                 gasnet_everything, common_shared_memory_slot->addr,
                 common_shared_memory_slot->size);

    comm_barrier_all();

    LIBCAF_TRACE(LIBCAF_LOG_INIT, "exit");
}


/*****************************************************************
 *                      GET CACHE Support
 *****************************************************************/

static void refetch_all_cache()
{
    int i;
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    for (i = 0; i < num_procs; i++) {
        if (cache_all_images[i]->remote_address) {
            cache_all_images[i]->handle =
                gasnet_get_nb_bulk(cache_all_images[i]->cache_line_address,
                                   i, cache_all_images[i]->remote_address,
                                   getCache_line_size);
        }
    }
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}

static void refetch_cache(size_t node)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    if (cache_all_images[node]->remote_address) {
        cache_all_images[node]->handle =
            gasnet_get_nb_bulk(cache_all_images[node]->cache_line_address,
                               node,
                               cache_all_images[node]->remote_address,
                               getCache_line_size);
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}

static void cache_check_and_get(size_t node, void *remote_address,
                                size_t nbytes, void *local_address)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    void *cache_address = cache_all_images[node]->remote_address;
    size_t start_offset;
    void *cache_line_address = cache_all_images[node]->cache_line_address;
    /* data in cache */
    if (cache_address > 0 && remote_address >= cache_address &&
        remote_address + nbytes <= cache_address + getCache_line_size) {
        start_offset = remote_address - cache_address;
        if (cache_all_images[node]->handle) {
            gasnet_wait_syncnb(cache_all_images[node]->handle);
            cache_all_images[node]->handle = 0;
        }
        memcpy(local_address, cache_line_address + start_offset, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Address %p on"
                     " image %lu found in cache.", remote_address,
                     node + 1);
    } else {                    /*data not in cache */

        /* data NOT from end of shared segment OR bigger than cacheline */
        if (((remote_address + getCache_line_size) <=
             (coarray_start_all_images[node].addr + shared_memory_size))
            && (nbytes <= getCache_line_size)) {
            gasnet_get(cache_line_address, node, remote_address,
                       getCache_line_size);
            cache_all_images[node]->remote_address = remote_address;
            cache_all_images[node]->handle = 0;
            memcpy(local_address, cache_line_address, nbytes);
        } else {
            gasnet_get(local_address, node, remote_address, nbytes);
        }
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Address %p on"
                     " image %lu NOT found in cache.", remote_address,
                     node + 1);
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}



static void cache_check_and_get_strided(void *remote_src,
                                        const size_t src_strides[],
                                        void *local_dest,
                                        const size_t dest_strides[],
                                        const size_t count[],
                                        size_t stride_levels, size_t node)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    void *cache_address = cache_all_images[node]->remote_address;
    size_t start_offset;
    void *cache_line_address = cache_all_images[node]->cache_line_address;
    size_t size;
    int i, j;

    size = src_strides[stride_levels - 1] * (count[stride_levels] - 1)
        + count[0];

    /* data in cache */
    if (cache_address > 0 && remote_src >= cache_address &&
        remote_src + size <= cache_address + getCache_line_size) {
        LIBCAF_TRACE(LIBCAF_LOG_CACHE,
                     "Address %p on image %lu found in cache.", remote_src,
                     node + 1);
        start_offset = remote_src - cache_address;
        if (cache_all_images[node]->handle) {
            gasnet_wait_syncnb(cache_all_images[node]->handle);
            cache_all_images[node]->handle = 0;
        }

        local_strided_copy(cache_line_address + start_offset,
                           src_strides, local_dest, dest_strides,
                           count, stride_levels);


    } else {                    /*data not in cache */

        /* data NOT from end of shared segment OR bigger than cacheline */
        if (((remote_src + getCache_line_size) <=
             (coarray_start_all_images[node].addr + shared_memory_size))
            && (size <= getCache_line_size)) {
            LIBCAF_TRACE(LIBCAF_LOG_CACHE,
                         "Data for Address %p on image %lu NOT found in cache.",
                         remote_src, node + 1);

            gasnet_get(cache_line_address, node, remote_src,
                       getCache_line_size);
            cache_all_images[node]->remote_address = remote_src;
            cache_all_images[node]->handle = 0;

            local_strided_copy(cache_line_address,
                               src_strides, local_dest, dest_strides,
                               count, stride_levels);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "gasnet_gets_bulk from"
                         " %p on image %lu to %p (stride_levels= %u)",
                         remote_src, node + 1, local_dest, stride_levels);

            gasnet_gets_bulk(local_dest, dest_strides, node, remote_src,
                             src_strides, count, stride_levels);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}


/* Update cache if remote write overlap -- like writethrough cache */
static void update_cache(size_t node, void *remote_address,
                         size_t nbytes, void *local_address)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    void *cache_address = cache_all_images[node]->remote_address;
    size_t start_offset;
    void *cache_line_address = cache_all_images[node]->cache_line_address;
    if (cache_address > 0 && remote_address >= cache_address &&
        remote_address + nbytes <= cache_address + getCache_line_size) {
        start_offset = remote_address - cache_address;
        memcpy(cache_line_address + start_offset, local_address, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Value of address %p on"
                     " image %lu updated in cache due to write conflict.",
                     remote_address, node + 1);
    } else if (cache_address > 0 &&
               remote_address >= cache_address &&
               remote_address <= cache_address + getCache_line_size) {
        start_offset = remote_address - cache_address;
        nbytes = getCache_line_size - start_offset;
        memcpy(cache_line_address + start_offset, local_address, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Value of address %p on"
                     " image %lu partially updated in cache (write conflict).",
                     remote_address, node + 1);
    } else if (cache_address > 0 &&
               remote_address + nbytes >= cache_address &&
               remote_address + nbytes <=
               cache_address + getCache_line_size) {
        start_offset = cache_address - remote_address;
        nbytes = nbytes - start_offset;
        memcpy(cache_line_address, local_address + start_offset, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Value of address %p on"
                     " image %lu partially updated in cache (write conflict).",
                     remote_address, node + 1);
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}

static void update_cache_strided(void *remote_dest_address,
                                 const size_t dest_strides[],
                                 void *local_src_address,
                                 const size_t src_strides[],
                                 const size_t count[],
                                 unsigned int stride_levels, size_t node)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    void *cache_address = cache_all_images[node]->remote_address;
    size_t start_offset;
    void *cache_line_address = cache_all_images[node]->cache_line_address;
    size_t size;

    /* calculate max size (very conservative!) */
    size = (dest_strides[stride_levels - 1] * (count[stride_levels] - 1))
        + count[0];

    /* New data completely fit into cache */
    if (cache_address > 0 && remote_dest_address >= cache_address &&
        remote_dest_address + size <= cache_address + getCache_line_size) {
        start_offset = remote_dest_address - cache_address;

        local_strided_copy(local_src_address, src_strides,
                           cache_line_address + start_offset, dest_strides,
                           count, stride_levels);

        LIBCAF_TRACE(LIBCAF_LOG_CACHE, " Value of address %p on"
                     " image %lu updated in cache due to write conflict.",
                     remote_dest_address, node + 1);
    }
    /* Some memory overlap */
    else if (cache_address > 0 &&
             ((remote_dest_address + size > cache_address &&
               remote_dest_address + size <
               cache_address + getCache_line_size)
              || (remote_dest_address > cache_address
                  && remote_dest_address <
                  cache_address + getCache_line_size)
             )) {
        //make it invalid
        cache_all_images[node]->remote_address = 0;
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}


/*****************************************************************
 *      Helper Routines for Non-blocking Support
 *****************************************************************/

static int address_in_nb_address_block(void *remote_addr,
                                       size_t proc, size_t size,
                                       access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    LIBCAF_TRACE(LIBCAF_LOG_COMM,
                 "remote address:%p, min:%p, max:%p, addr+size:%p",
                 remote_addr, min_nb_address[proc],
                 max_nb_address[proc], remote_addr + size);
    if (max_nb_address[proc] == 0)
        return 0;
    if (((remote_addr + size) > min_nb_address[proc])
        && (remote_addr < max_nb_address[proc]))
        return 1;
    else
        return 0;
}

static void update_nb_address_block(void *remote_addr, size_t proc,
                                    size_t size, access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    LIBCAF_TRACE(LIBCAF_LOG_COMM,
                 "remote address:%p, min:%p, max:%p, addr+size:%p",
                 remote_addr, min_nb_address[proc],
                 max_nb_address[proc], remote_addr + size);
    if (max_nb_address[proc] == 0) {
        min_nb_address[proc] = remote_addr;
        max_nb_address[proc] = remote_addr + size;
        return;
    }
    if (remote_addr < min_nb_address[proc])
        min_nb_address[proc] = remote_addr;
    if ((remote_addr + size) > max_nb_address[proc])
        max_nb_address[proc] = remote_addr + size;
}

static struct handle_list *get_next_handle(unsigned long proc,
                                           void *remote_address,
                                           void *local_buf,
                                           unsigned long size,
                                           access_type_t access_type)
{
    struct handle_list **handles = nb_mgr[access_type].handles;
    struct handle_list *handle_node;

    /* don't allow too many outstanding non-blocking transfers to accumulate.
     * If the number exceeds a specified threshold, then block until all have
     * completed.
     */
    if ((nb_mgr[PUTS].num_handles + nb_mgr[GETS].num_handles) >=
        nb_xfer_limit) {
        wait_on_all_pending_accesses();
    }

    if (handles[proc] == 0) {
        handles[proc] = (struct handle_list *)
            comm_malloc(sizeof(struct handle_list));
        handle_node = handles[proc];
        handle_node->prev = 0;
    } else {
        handle_node = handles[proc];
        while (handle_node->next) {
            handle_node = handle_node->next;
        }
        handle_node->next = (struct handle_list *)
            comm_malloc(sizeof(struct handle_list));
        handle_node->next->prev = handle_node;
        handle_node = handle_node->next;
    }
    handle_node->handle = GASNET_INVALID_HANDLE;
    handle_node->address = remote_address;
    handle_node->local_buf = local_buf;
    handle_node->size = size;
    handle_node->proc = proc;
#ifdef PCAF_INSTRUMENT
    handle_node->rmaid = rma_prof_rid;
#else
    handle_node->rmaid = 0;
#endif
    handle_node->access_type = access_type;
    handle_node->final_dest = NULL;
    handle_node->next = 0;      //Just in case there is a sync before the put
    nb_mgr[access_type].num_handles++;
    return handle_node;
}

static void reset_min_nb_address(unsigned long proc,
                                 access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    struct handle_list **handles = nb_mgr[access_type].handles;
    struct handle_list *handle_node;
    handle_node = handles[proc];
    if (handle_node) {
        min_nb_address[proc] = handle_node->address;
        handle_node = handle_node->next;
    } else
        min_nb_address[proc] = 0;
    while (handle_node) {
        if (handle_node->address < min_nb_address[proc])
            min_nb_address[proc] = handle_node->address;
        handle_node = handle_node->next;
    }
}

static void reset_max_nb_address(unsigned long proc,
                                 access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    struct handle_list **handles = nb_mgr[access_type].handles;
    struct handle_list *handle_node;
    void *end_address;
    handle_node = handles[proc];
    max_nb_address[proc] = 0;
    while (handle_node) {
        end_address = handle_node->address + handle_node->size;
        if (end_address > max_nb_address[proc])
            max_nb_address[proc] = end_address;
        handle_node = handle_node->next;
    }
}

static void delete_node(unsigned long proc, struct handle_list *node,
                        access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    struct handle_list **handles = nb_mgr[access_type].handles;
    void *node_address;

    nb_mgr[access_type].num_handles--;

    if (node->prev) {
        if (node->next) {
            node->prev->next = node->next;
            node->next->prev = node->prev;
        } else                  // last node in the list
            node->prev->next = 0;
    } else if (node->next)      // this is the first node in the list
    {
        handles[proc] = node->next;
        node->next->prev = 0;
    } else                      // this is the only node in the list
    {
        handles[proc] = 0;
        min_nb_address[proc] = 0;
        max_nb_address[proc] = 0;
        if (access_type == PUTS)
            comm_lcb_free(node->local_buf);
        comm_free(node);
        return;
    }
    node_address = node->address;
    if (access_type == PUTS)
        comm_lcb_free(node->local_buf);
    comm_free(node);
    if (node_address == min_nb_address[proc])
        reset_min_nb_address(proc, access_type);
    if ((node_address + node->size) == max_nb_address[proc])
        reset_max_nb_address(proc, access_type);
}

static int address_in_handle(struct handle_list *handle_node,
                             void *address, unsigned long size)
{
    if (((address + size) > handle_node->address)
        && (address < (handle_node->address + handle_node->size)))
        return 1;
    else
        return 0;
}

static void wait_on_pending_accesses(unsigned long proc,
                                     void *remote_address,
                                     unsigned long size,
                                     access_type_t access_type)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    struct handle_list **handles = nb_mgr[access_type].handles;
    struct handle_list *handle_node = handles[proc];


    if (handle_node &&
        address_in_nb_address_block(remote_address, proc, size,
                                    access_type)) {
        struct handle_list *node_to_delete;
        while (handle_node) {
            if (address_in_handle(handle_node, remote_address, size)) {
                sync_on_handle(handle_node);
                delete_node(proc, handle_node, access_type);
                return;
            } else if (gasnet_try_syncnb(handle_node->handle) == GASNET_OK) {
                PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);
                node_to_delete = handle_node;
                handle_node = handle_node->next;
                delete_node(proc, node_to_delete, access_type);
            } else {
                handle_node = handle_node->next;
            }
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

static void wait_on_all_pending_accesses_to_proc(unsigned long proc)
{
    struct handle_list *handle_node, *node_to_delete;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    handle_node = nb_mgr[PUTS].handles[proc];
    while (handle_node) {
        if (handle_node->handle != GASNET_INVALID_HANDLE)
            gasnet_wait_syncnb(handle_node->handle);
        PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);
        node_to_delete = handle_node;
        handle_node = handle_node->next;
        /* for puts */
        comm_lcb_free(node_to_delete->local_buf);
        comm_free(node_to_delete);
        nb_mgr[PUTS].num_handles--;
    }
    handle_node = nb_mgr[GETS].handles[proc];
    while (handle_node) {
        if (handle_node->handle != GASNET_INVALID_HANDLE) {
            LIBCAF_TRACE(LIBCAF_LOG_SYNC, "before gasnet_wait_syncnb"
                         " (handle_node=%p)", handle_node);
            sync_on_handle(handle_node);
        }
        LIBCAF_TRACE(LIBCAF_LOG_SYNC, "about to delete handle_node %p",
                     handle_node);
        node_to_delete = handle_node;
        handle_node = handle_node->next;
        comm_free(node_to_delete);
        nb_mgr[GETS].num_handles--;
    }

    nb_mgr[PUTS].handles[proc] = 0;
    nb_mgr[PUTS].min_nb_address[proc] = 0;
    nb_mgr[PUTS].max_nb_address[proc] = 0;
    nb_mgr[GETS].handles[proc] = 0;
    nb_mgr[GETS].min_nb_address[proc] = 0;
    nb_mgr[GETS].max_nb_address[proc] = 0;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

static inline void wait_on_all_pending_accesses()
{
    int i;
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    for (i = 0; i < num_procs; i++) {
        wait_on_all_pending_accesses_to_proc(i);
    }
    gasnet_wait_syncnbi_all();

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}


/*****************************************************************
 *                  Shared Memory Management
 ****************************************************************/

/* It should allocate memory to all static coarrays/targets from the
 * pinned-down memory created during init */
void set_static_symm_data_(void *base_address)
{
    /* do nothing */
}

#pragma weak set_static_symm_data = set_static_symm_data_
void set_static_symm_data(void *base_address);


void allocate_static_symm_data(void *base_address)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    set_static_symm_data(base_address);
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}


void comm_translate_remote_addr(void **remote_addr, int proc)
{
    void *start_symm_mem, *end_symm_mem;
    start_symm_mem = comm_start_symmetric_mem(proc);
    end_symm_mem = comm_end_symmetric_mem(proc);


    /* subtract the offset if remote address falls within the symmetric memory
     * of the remote image
     */
    if (*remote_addr >= start_symm_mem && *remote_addr < end_symm_mem) {
        *remote_addr = (char *) (*remote_addr) -
            comm_address_translation_offset(proc);
    }
}


/* Calculate the address on another image corresponding to a local address
 * This is possible as all images must have the same coarrays, i.e the
 * memory is symmetric. Since we know the start address of all images
 * from coarray_start_all_images, remote_address = start+offset
 * For EVERYTHING config:
 * 1) Static coarrays have same address on all images
 * 2) coarray_start_all_images is not populated at init. It needs to be
 *    populated when accessing an image for 1st time (lazy init)*/
static void *get_remote_address(void *src, size_t proc)
{
    size_t offset;
    void *remote_start_address;
    if ((proc == my_proc) || !address_in_symmetric_mem(src))
        return src;
    if (gasnet_everything) {
        if (src >= coarray_start_all_images[my_proc].addr && src <=
            (coarray_start_all_images[my_proc].addr +
             coarray_start_all_images[my_proc].size)) {
            offset = src - coarray_start_all_images[my_proc].addr;
            remote_start_address = coarray_start_all_images[proc].addr;
            /* lazy fetch as gasnet_getSegmentInfo initialzed it to 0 */
            if (remote_start_address == (void *) 0) {
                gasnet_get(&remote_start_address, proc,
                           &everything_heap_start, sizeof(void *));
                coarray_start_all_images[proc].addr = remote_start_address;
            }
            return remote_start_address + offset;
        } else
            return src;
    }
    offset = src - coarray_start_all_images[my_proc].addr;
    return coarray_start_all_images[proc].addr + offset;
}

/****************************************************************
 *                         FINALIZATION
 ****************************************************************/

void comm_memory_free()
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    if (gasnet_everything)
        comm_free(coarray_start_all_images[my_proc].addr);

    if (sync_images_flag)
        comm_free(sync_images_flag);

    if (coarray_start_all_images) {
        coarray_free_all_shared_memory_slots(); /* in caf_rtl.c */
        comm_free(coarray_start_all_images);
    }

    comm_free(nb_mgr[PUTS].handles);
    comm_free(nb_mgr[PUTS].min_nb_address);
    comm_free(nb_mgr[PUTS].max_nb_address);
    comm_free(nb_mgr[GETS].handles);
    comm_free(nb_mgr[GETS].min_nb_address);
    comm_free(nb_mgr[GETS].max_nb_address);

    if (enable_get_cache) {
        int i;
        for (i = 0; i < num_procs; i++) {
            comm_free(cache_all_images[i]->cache_line_address);
            comm_free(cache_all_images[i]);
        }
        comm_free(cache_all_images);
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}


void comm_finalize(int exit_code)
{
    int p;
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "entry");

    comm_service();

    *this_image_stopped = 1;
    *stopped_image_exists = 1;

    /* broadcast to every image that this image has stopped.
     * TODO: Other images should be able to detect this image has stopped when
     * they try to synchronize with it. Requires custom implementation of
     * barriers.
     */
    for (p = 0; p < num_procs; p++) {
        comm_write(p, stopped_image_exists,
                   stopped_image_exists, sizeof(*stopped_image_exists), 1,
                   NULL);
    }

    comm_barrier_all();
    comm_memory_free();
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "Before call to gasnet_exit"
                 " with status 0.");

    comm_service_finalize();

    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "exit");
    gasnet_exit(exit_code);

    /* does not reach */
}

void comm_exit(int status)
{
    int p;
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "entry");

    comm_service();

    *this_image_stopped = 1;
    *stopped_image_exists = 1;

    /* broadcast to every image that this image has stopped.
     * TODO: Other images should be able to detect this image has stopped when
     * they try to synchronize with it. Requires custom implementation of
     * barriers.
     */
    for (p = 0; p < num_procs; p++) {
        comm_write(p, stopped_image_exists,
                   stopped_image_exists, sizeof(*stopped_image_exists), 1,
                   NULL);
    }

    LOAD_STORE_FENCE();
    comm_memory_free();
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "Before call to gasnet_exit"
                 " with status %d.", status);

    comm_service_finalize();

    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "exit");
    gasnet_exit(status);
}

/***************************************************************
 *                      SYNCHRONIZATION
 ***************************************************************/

/* TODO: Right now, for every critical section we simply acquire a mutex on
 * process 0. Instead, we should define a mutex for each critical section in
 * order to allow execution of different critical sections at the same time.
 */

void comm_critical()
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    comm_lock(critical_lock, 1, NULL, 0);

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_end_critical()
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    comm_unlock(critical_lock, 1, NULL, 0);

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}


void comm_barrier_all()
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    wait_on_all_pending_accesses();
    gasnet_barrier_notify(barcount, barflag);
    gasnet_barrier_wait(barcount, barflag);

    if (enable_get_cache)
        refetch_all_cache();

    barcount += 1;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

static inline void sync_on_handle(struct handle_list *hdl)
{
    gasnet_wait_syncnb(hdl->handle);

    PROFILE_COMM_HANDLE_END((comm_handle_t) hdl);

    if (hdl->access_type == GETS && hdl->final_dest != NULL) {
        /* assume if final_dest isn't NULL that destination buffer is
         * contiguous */
        memcpy(hdl->final_dest, hdl->local_buf, hdl->size);
        coarray_asymmetric_deallocate_(hdl->local_buf);
    }
}

void comm_sync(comm_handle_t hdl)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    if (hdl == (comm_handle_t) - 1) {   /* wait on all non-blocking communication */
        wait_on_all_pending_accesses();
    } else if (hdl != NULL) {   /* wait on specified handle */
        check_remote_image(((struct handle_list *) hdl)->proc + 1);
        sync_on_handle(hdl);
        delete_node(((struct handle_list *) hdl)->proc,
                    (struct handle_list *) hdl,
                    ((struct handle_list *) hdl)->access_type);
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_sync_all(int *status, int stat_len, char *errmsg, int errmsg_len)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    if (status != NULL) {
        memset(status, 0, (size_t) stat_len);
        *((INT2 *) status) = STAT_SUCCESS;
    }
    if (errmsg != NULL && errmsg_len) {
        memset(errmsg, 0, (size_t) errmsg_len);
    }

    wait_on_all_pending_accesses();

    LOAD_STORE_FENCE();
    if (status != NULL && *stopped_image_exists == 1) {
        *((INT2 *) status) = STAT_STOPPED_IMAGE;
        /* no barrier */
    } else {
        gasnet_barrier_notify(barcount, barflag);
        gasnet_barrier_wait(barcount, barflag);
    }

    if (enable_get_cache)
        refetch_all_cache();

    barcount += 1;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_sync_memory(int *status, int stat_len, char *errmsg,
                      int errmsg_len)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    if (status != NULL) {
        memset(status, 0, (size_t) stat_len);
        *((INT2 *) status) = STAT_SUCCESS;
    }
    if (errmsg != NULL && errmsg_len) {
        memset(errmsg, 0, (size_t) errmsg_len);
    }

    wait_on_all_pending_accesses();

    if (enable_get_cache)
        refetch_all_cache();

    LOAD_STORE_FENCE();

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}


void comm_sync_images(int *image_list, int image_count, int *status,
                      int stat_len, char *errmsg, int errmsg_len)
{
    int i, ret;
    int this_image;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    if (status != NULL) {
        memset(status, 0, (size_t) stat_len);
        *((INT2 *) status) = STAT_SUCCESS;
    }
    if (errmsg != NULL && errmsg_len) {
        memset(errmsg, 0, (size_t) errmsg_len);
    }

    wait_on_all_pending_accesses();

    for (i = 0; i < image_count; i++) {
        int q = image_list[i] - 1;
        if (my_proc != q) {
            ret = gasnet_AMRequestShort1
                (q, GASNET_HANDLER_SYNC_REQUEST, my_proc);
            if (ret != GASNET_OK) {
                Error("GASNet AM request error");
            }
        } else {
            sync_images_flag[my_proc] = 1;
        }
        wait_on_all_pending_accesses_to_proc(q);
    }
    for (i = 0; i < image_count; i++) {
        short image_has_stopped;
        int q = image_list[i] - 1;

        if (status != NULL) {
            image_has_stopped = 0;
            comm_read(q, this_image_stopped, &image_has_stopped,
                      sizeof(image_has_stopped));
            LOAD_STORE_FENCE();
            if (image_has_stopped && !sync_images_flag[q]) {
                *((INT2 *) status) = STAT_STOPPED_IMAGE;
                LOAD_STORE_FENCE();
                return;
            }
        }

        GASNET_BLOCKUNTIL(sync_images_flag[q]);

        gasnet_hsl_lock(&sync_lock);
        sync_images_flag[q]--;
        gasnet_hsl_unlock(&sync_lock);
        if (enable_get_cache)
            refetch_cache(q);
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

/***************************************************************
 *                    Local memory allocations
 ***************************************************************/

void *comm_lcb_malloc(size_t size)
{
    void *ptr;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    ptr = coarray_asymmetric_allocate_if_possible_(size);
    if (!ptr) {
        if (size >= LARGE_COMM_BUF_SIZE) {
            Warning("Could not allocate a large buffer (%.1lfKB) "
                    "from system memory. If used for communication, "
                    "GASNet's memory registration policy may not handle "
                    "large system memory malloc's correctly. Consider "
                    "increasing the image heap size.",
                    ((double) size) / 1024);
        }
        gasnet_hold_interrupts();
        ptr = malloc(size);
        gasnet_resume_interrupts();
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return ptr;
}

void comm_lcb_free(void *ptr)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    if (!ptr) {
        LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
        return;
    }

    if (ptr < coarray_start_all_images[my_proc].addr &&
        ptr >=
        (coarray_start_all_images[my_proc].addr + shared_memory_size)) {
        gasnet_hold_interrupts();
        free(ptr);
        gasnet_resume_interrupts();
    } else {
        /* in shared memory segment, which means it was allocated using
           coarray_asymmetric_allocate_ */
        coarray_asymmetric_deallocate_(ptr);
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

void *comm_malloc(size_t size)
{
    void *ptr;
    gasnet_hold_interrupts();
    ptr = malloc(size);
    gasnet_resume_interrupts();
    return ptr;
}


void comm_free(void *ptr)
{
    if (!ptr)
        return;

    gasnet_hold_interrupts();
    free(ptr);
    gasnet_resume_interrupts();
}

/***************************************************************
 *           (out of segment) Read/Write Communication
 ***************************************************************/


static inline void allocate_transfer_buf(void **buf, size_t siz)
{
    int r = posix_memalign(buf, GASNET_PAGESIZE, siz);
    switch (r) {
    case 0:
        break;
    case EINVAL:
        Error("outside-shared-mem payload not aligned correctly");
        /* not reached */
        break;
    case ENOMEM:
        Error("no memory to allocate outside-shared-mem payload");
        /* not reached */
        break;
    default:
        Error("unknown error with outside-shared-mem-payload"
              " (posix_memalign returned %d)", r);
        /* not reached */
        break;
    }
}

static void
comm_read_chunk_outside_shared_mem(outside_shared_mem_payload_t * p,
                                   size_t bufsize, void *target,
                                   void *source, size_t offset,
                                   size_t bytes_to_send, size_t proc)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    /* build payload to send */
    p->nbytes = bytes_to_send;
    p->source = source + offset;
    p->target = target + offset;
    p->completed = 0;
    p->completed_addr = &(p->completed);

    gasnet_AMRequestMedium1(proc, GASNET_HANDLER_GET_REQUEST, p, bufsize,
                            0);

    GASNET_BLOCKUNTIL(p->completed);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

static void
comm_read_outside_shared_mem(size_t proc, void *dest, void *src,
                             size_t nbytes)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    PROFILE_RMA_LOAD_BEGIN(proc, nbytes);

    /* get the buffer size and chop off control structure */
    const size_t max_req = gasnet_AMMaxMedium();
    const size_t max_data = max_req - sizeof(outside_shared_mem_payload_t);
    /* how to split up transfers */
    const size_t nchunks = nbytes / max_data;
    const size_t rem_size = nbytes % max_data;
    /* track size and progress of transfers */
    size_t payload_size;
    size_t alloc_size;
    size_t offset = 0;
    void *get_buf;

    alloc_size = max_req;

    allocate_transfer_buf(&get_buf, alloc_size);

    if (nchunks > 0) {
        size_t t;
        int i;

        payload_size = max_data;

        for (i = 0; i < nchunks; i++) {
            comm_read_chunk_outside_shared_mem(get_buf, alloc_size, dest,
                                               src, offset, payload_size,
                                               proc);
            offset += payload_size;
        }
    }

    if (rem_size > 0) {
        payload_size = rem_size;
        comm_read_chunk_outside_shared_mem(get_buf, alloc_size, src,
                                           dest, offset, payload_size,
                                           proc);
    }

    free(get_buf);

    PROFILE_RMA_LOAD_END(proc);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

static void
comm_write_chunk_outside_shared_mem(void *buf, size_t bufsize,
                                    void *target, void *source,
                                    size_t offset, size_t bytes_to_send,
                                    size_t proc)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    outside_shared_mem_payload_t *p = buf;
    void *data = buf + sizeof(*p);

    /* build payload to send */
    p->nbytes = bytes_to_send;
    p->source = NULL;
    p->target = target + offset;
    p->completed = 0;
    p->completed_addr = &(p->completed);

    /* data added after control structure */
    memmove(data, source + offset, bytes_to_send);
    LOAD_STORE_FENCE();

    gasnet_AMRequestMedium1(proc, GASNET_HANDLER_PUT_REQUEST, p,
                            bufsize, 0);

    GASNET_BLOCKUNTIL(p->completed);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

static void
comm_write_outside_shared_mem(size_t proc, void *dest, void *src,
                              size_t nbytes)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    PROFILE_RMA_STORE_BEGIN(proc, nbytes);

    /* get the buffer size and chop off control structure */
    const size_t max_req = gasnet_AMMaxMedium();
    const size_t max_data = max_req - sizeof(outside_shared_mem_payload_t);
    /* how to split up transfers */
    const size_t nchunks = nbytes / max_data;
    const size_t rem_size = nbytes % max_data;
    /* track size and progress of transfers */
    size_t payload_size;
    size_t alloc_size;
    size_t offset = 0;
    void *put_buf;

    alloc_size = max_req;
    payload_size = max_data;

    allocate_transfer_buf(&put_buf, alloc_size);

    if (nchunks > 0) {
        size_t t;
        int i;

        for (i = 0; i < nchunks; i++) {
            comm_write_chunk_outside_shared_mem(put_buf, alloc_size, dest,
                                                src, offset, payload_size,
                                                proc);
            offset += payload_size;
        }
    }

    if (rem_size > 0) {
        payload_size = rem_size;
        comm_write_chunk_outside_shared_mem(put_buf, alloc_size, dest, src,
                                            offset, payload_size, proc);
    }

    free(put_buf);

    PROFILE_RMA_STORE_END(proc);
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


/***************************************************************
 *                  Read/Write Communication
 ***************************************************************/

void comm_service()
{
    GASNET_Safe(gasnet_AMPoll());
}


void comm_nbread(size_t proc, void *src, void *dest, size_t nbytes,
                 comm_handle_t * hdl)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    const gasnet_nodeinfo_t *node_info = &nodeinfo_table[proc];
    void *remote_src;
    int src_in_shared_mem = remote_address_in_shared_mem(proc, src);

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc
        && (!src_in_shared_mem || nbytes <= SMALL_XFER_SIZE)) {
        memcpy(dest, src, nbytes);
        if (hdl != NULL)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    if (!src_in_shared_mem) {
        /* TODO: make this non-blocking */
        comm_read_outside_shared_mem(proc, src, dest, nbytes);
        if (hdl != NULL)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }

    remote_src = get_remote_address(src, proc);
    if (nb_mgr[PUTS].handles[proc])
        wait_on_pending_accesses(proc, remote_src, nbytes, PUTS);

    if (enable_get_cache) {
        cache_check_and_get(proc, remote_src, nbytes, dest);
    } else {
        /* do a non-blocking read */
        void *temp_dest = dest;
        gasnet_handle_t handle;

        PROFILE_RMA_LOAD_BEGIN(proc, nbytes);

        if (node_info->supernode != nodeinfo_table[my_proc].supernode &&
            !address_in_shared_mem(dest)) {
            /* allocate out of asymmetric heap if there is sufficient enough
             * room */
            temp_dest = coarray_asymmetric_allocate_if_possible_(nbytes);
            if (!temp_dest)
                temp_dest = dest;
        }

        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "gasnet_get_nb_bulk from %p on image %lu"
                     " to %p size %lu", remote_src, proc + 1, temp_dest,
                     nbytes);
        handle = gasnet_get_nb_bulk(temp_dest, proc, remote_src, nbytes);

        if (handle != GASNET_INVALID_HANDLE) {
            /* get is not yet complete */

            struct handle_list *handle_node =
                get_next_handle(proc, remote_src, temp_dest, nbytes, GETS);
            /* final_dest is only set if temp_dest != dest. Otherwise, it
             * should be NULL. */
            if (temp_dest != dest)
                handle_node->final_dest = dest;
            handle_node->handle = handle;
            LIBCAF_TRACE(LIBCAF_LOG_COMM,
                         "gasnet_get_nb_bulk from %p on image %lu"
                         " to %p size %lu, handle = %p, final_dest = %p",
                         remote_src, proc + 1, temp_dest, nbytes,
                         handle_node->handle, dest);

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_LOAD_DEFERRED_END(proc);
        } else {
            /* get has completed */

            if (hdl != NULL) {
                *hdl = NULL;
            }

            PROFILE_RMA_LOAD_END(proc);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_read(size_t proc, void *src, void *dest, size_t nbytes)
{
    void *remote_src;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc) {
        memcpy(dest, src, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    if (!remote_address_in_shared_mem(proc, src)) {
        comm_read_outside_shared_mem(proc, src, dest, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }

    remote_src = get_remote_address(src, proc);
    if (nb_mgr[PUTS].handles[proc])
        wait_on_pending_accesses(proc, remote_src, nbytes, PUTS);

    if (enable_get_cache) {
        cache_check_and_get(proc, remote_src, nbytes, dest);
    } else {
        PROFILE_RMA_LOAD_BEGIN(proc, nbytes);
        gasnet_get_bulk(dest, proc, remote_src, nbytes);
        PROFILE_RMA_LOAD_END(proc);
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


void comm_write_from_lcb(size_t proc, void *dest, void *src, size_t nbytes,
                         int ordered, comm_handle_t * hdl)
{
    void *remote_dest;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    int dest_in_shared_mem = remote_address_in_shared_mem(proc, dest);

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc
        && (!dest_in_shared_mem || nbytes <= SMALL_XFER_SIZE)) {
        memcpy(dest, src, nbytes);
        comm_lcb_free(src);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    if (!dest_in_shared_mem) {
        /* TODO: consider a non-blocking version */
        comm_write_outside_shared_mem(proc, dest, src, nbytes);
        comm_lcb_free(src);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }

    remote_dest = get_remote_address(dest, proc);
    if (ordered) {
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before gasnet_put_nb to %p on "
                     "image %lu from %p size %lu",
                     remote_dest, proc + 1, src, nbytes);

        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        gasnet_handle_t handle;
        handle = gasnet_put_nb_bulk(proc, remote_dest, src, nbytes);

        if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
            /* put hasn't completed, and we don't want to block */
            struct handle_list *handle_node =
                get_next_handle(proc, remote_dest, src, nbytes, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;
            update_nb_address_block(remote_dest, proc, nbytes, PUTS);

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (handle == GASNET_INVALID_HANDLE) {
            /* put has completed */
            comm_lcb_free(src);
            if (hdl != NULL)
                *hdl = NULL;

            PROFILE_RMA_STORE_END(proc);
        } else if (hdl == (void *) -1) {
            /* block until it remotely completes */
            gasnet_wait_syncnb(handle);
            comm_lcb_free(src);

            PROFILE_RMA_STORE_END(proc);
        }

    } else {                    /* ordered == 0 */
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before gasnet_put_nb to %p on "
                     "image %lu from %p size %lu",
                     remote_dest, proc + 1, src, nbytes);

        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        gasnet_handle_t handle;
        handle = gasnet_put_nb_bulk(proc, remote_dest, src, nbytes);

        if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
            /* put hasn't completed, and we don't want to block */
            struct handle_list *handle_node =
                get_next_handle(proc, NULL, src, 0, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (handle == GASNET_INVALID_HANDLE) {
            /* put has completed */
            comm_lcb_free(src);
            if (hdl != NULL)
                *hdl = NULL;

            PROFILE_RMA_STORE_END(proc);
        } else if (hdl == (void *) -1) {
            /* put has not have completed, and block until it remotely
             * completes */
            gasnet_wait_syncnb(handle);
            comm_lcb_free(src);

            PROFILE_RMA_STORE_END(proc);
        }

    }

    if (enable_get_cache)
        update_cache(proc, remote_dest, nbytes, src);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


/* like comm_write_from_lcb, except we don't need to "release" the source
 * buffer upon completion and guarantees local completion
 */
char tmp_aligned_buffer[8] __attribute__ ((aligned(8)));
void comm_write(size_t proc, void *dest, void *src,
                size_t nbytes, int ordered, comm_handle_t * hdl)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    size_t dummy = proc;
    void *remote_dest;
    int dest_in_shared_mem = remote_address_in_shared_mem(proc, dest);

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc
        && (!dest_in_shared_mem || nbytes <= SMALL_XFER_SIZE)) {
        memcpy(dest, src, nbytes);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    if (!dest_in_shared_mem) {
        /* TODO: consider a non-blocking version */
        comm_write_outside_shared_mem(proc, dest, src, nbytes);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }

    remote_dest = get_remote_address(dest, proc);
    if (ordered) {
        /* use gasnet_put_nb to ensure local completion. If 2-, 4-, or
         * 8-bytes, it needs to be aligned */
        void *aligned_src = src;
        if (nbytes == 2 && ((unsigned long) src % 2) == 0 ||
            nbytes == 4 && ((unsigned long) src % 4) == 0 ||
            nbytes == 8 && ((unsigned long) src % 8) == 0) {
            memset(tmp_aligned_buffer, 0, 8);
            memcpy(&tmp_aligned_buffer, src, nbytes);
            aligned_src = &tmp_aligned_buffer;
        }
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before gasnet_put_nb to %p on "
                     "image %lu from %p size %lu",
                     remote_dest, proc + 1, aligned_src, nbytes);
        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        gasnet_handle_t handle;
        handle = gasnet_put_nb(proc, remote_dest, aligned_src, nbytes);

        if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
            /* pass NULL for source buf argument */
            struct handle_list *handle_node =
                get_next_handle(proc, remote_dest, NULL, nbytes, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;
            update_nb_address_block(remote_dest, proc, nbytes, PUTS);

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (handle == GASNET_INVALID_HANDLE) {
            /* put has completed */
            if (hdl != NULL)
                *hdl = NULL;

            PROFILE_RMA_STORE_END(proc);
        } else if (hdl == (void *) -1) {
            /* block until it remotely completes */
            gasnet_wait_syncnb(handle);

            PROFILE_RMA_STORE_END(proc);
        }

    } else {                    /* ordered == 0 */
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before gasnet_put_nb to %p on "
                     "image %lu from %p size %lu",
                     remote_dest, proc + 1, src, nbytes);

        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        gasnet_handle_t handle;
        handle = gasnet_put_nb_bulk(proc, remote_dest, src, nbytes);

        if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
            /* pass NULL for source buf argument */
            struct handle_list *handle_node =
                get_next_handle(proc, NULL, NULL, 0, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;
            update_nb_address_block(remote_dest, proc, nbytes, PUTS);

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (handle == GASNET_INVALID_HANDLE) {
            /* put has completed */
            if (hdl != NULL)
                *hdl = NULL;

            PROFILE_RMA_STORE_END(proc);
        } else if (hdl == (void *) -1) {
            /* block until it remotely completes */
            gasnet_wait_syncnb(handle);

            PROFILE_RMA_STORE_END(proc);
        }

    }

    if (enable_get_cache)
        update_cache(proc, remote_dest, nbytes, src);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


void comm_strided_nbread(size_t proc,
                         void *src, const size_t src_strides[],
                         void *dest, const size_t dest_strides[],
                         const size_t count[], size_t stride_levels,
                         comm_handle_t * hdl)
{
    void *remote_src;

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

#if defined(ENABLE_LOCAL_MEMCPY)
    int i;
    size_t nbytes = 1;
    if (my_proc == proc) {
        for (i = 0; i <= stride_levels; i++) {
            nbytes = nbytes * count[i];
        }
        if (nbytes <= SMALL_XFER_SIZE) {
            /* local copy */
            local_strided_copy(src, src_strides, dest, dest_strides,
                               count, stride_levels);
            if (hdl != NULL)
                *hdl = NULL;

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
            return;
            /* does not reach */
        }
    }
#endif
    {
        size_t size;
        /* calculate max size (very conservative!) */
        size = src_strides[stride_levels - 1] * (count[stride_levels] - 1)
            + count[0];
        remote_src = get_remote_address(src, proc);
        if (nb_mgr[PUTS].handles[proc]) {
            wait_on_pending_accesses(proc, remote_src, size, PUTS);
        }

        if (enable_get_cache) {

            cache_check_and_get_strided(remote_src, src_strides,
                                        dest, dest_strides, count,
                                        stride_levels, proc);

        } else {

            PROFILE_RMA_LOAD_STRIDED_BEGIN(proc, stride_levels, count);

            gasnet_handle_t handle;
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "gasnet_gets_nb_bulk from"
                         " %p on image %lu to %p (stride_levels= %u)",
                         remote_src, proc + 1, dest, stride_levels);
            handle = gasnet_gets_nb_bulk(dest,
                                         dest_strides,
                                         proc, remote_src,
                                         src_strides,
                                         count, stride_levels);

            if (handle != GASNET_INVALID_HANDLE) {
                /* get is not yet complete */

                struct handle_list *handle_node =
                    get_next_handle(proc, remote_src, dest, size, GETS);

                handle_node->handle = handle;
                LIBCAF_TRACE(LIBCAF_LOG_COMM, "gasnet_gets_nb_bulk from"
                             " %p on image %lu to %p (stride_levels= %u)"
                             " handle = %p",
                             remote_src, proc + 1, dest, stride_levels,
                             handle_node->handle);

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_LOAD_DEFERRED_END(proc);
            } else if (hdl != NULL) {
                /* get has completed */

                *hdl = NULL;

                PROFILE_RMA_LOAD_END(proc);
            }
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_strided_read(size_t proc,
                       void *src, const size_t src_strides[],
                       void *dest, const size_t dest_strides[],
                       const size_t count[], size_t stride_levels)
{
    void *remote_src;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc) {
        /* local copy */
        local_strided_copy(src, src_strides, dest, dest_strides,
                           count, stride_levels);

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif
    {
        size_t size;
        /* calculate max size (very conservative!) */
        size = src_strides[stride_levels - 1] * (count[stride_levels] - 1)
            + count[0];
        remote_src = get_remote_address(src, proc);
        if (nb_mgr[PUTS].handles[proc]) {
            wait_on_pending_accesses(proc, remote_src, size, PUTS);
        }

        if (enable_get_cache) {

            cache_check_and_get_strided(remote_src, src_strides,
                                        dest, dest_strides, count,
                                        stride_levels, proc);

        } else {

            PROFILE_RMA_LOAD_STRIDED_BEGIN(proc, stride_levels, count);

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "gasnet_gets_bulk from"
                         " %p on image %lu to %p (stride_levels= %u)",
                         remote_src, proc + 1, dest, stride_levels);
            gasnet_gets_bulk(dest, dest_strides, proc, remote_src,
                             src_strides, count, stride_levels);

            PROFILE_RMA_LOAD_END(proc);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_strided_write_from_lcb(size_t proc,
                                 void *dest, const size_t dest_strides[],
                                 void *src, const size_t src_strides[],
                                 const size_t count[],
                                 size_t stride_levels, int ordered,
                                 comm_handle_t * hdl)
{
    void *remote_dest;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

#if defined(ENABLE_LOCAL_MEMCPY)
    int i;
    size_t nbytes = 1;
    if (my_proc == proc) {
        for (i = 0; i <= stride_levels; i++) {
            nbytes = nbytes * count[i];
        }
        if (nbytes <= SMALL_XFER_SIZE) {
            /* local copy */
            local_strided_copy(src, src_strides, dest, dest_strides,
                               count, stride_levels);
            comm_lcb_free(src);

            if (hdl != NULL && hdl != (void *) -1)
                *hdl = NULL;

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
            return;
            /* does not reach */
        }
    }
#endif
    {
        remote_dest = get_remote_address(dest, proc);

        if (ordered) {
            size_t size;
            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];

            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before"
                         " gasnet_puts_nb_bulk to %p on image %lu from %p size %lu",
                         remote_dest, proc + 1, src, size);

            gasnet_handle_t handle;
            handle = gasnet_puts_nb_bulk(proc, remote_dest,
                                         dest_strides, src,
                                         src_strides, count,
                                         stride_levels);

            if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
                /* put has not yet completed */
                struct handle_list *handle_node =
                    get_next_handle(proc, remote_dest, src, size, PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;
                update_nb_address_block(remote_dest, proc, size, PUTS);

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == GASNET_INVALID_HANDLE) {
                /* put has completed */
                comm_lcb_free(src);
                if (hdl != NULL)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                gasnet_wait_syncnb(handle);
                comm_lcb_free(src);

                PROFILE_RMA_STORE_END(proc);
            }

        } else {                /* ordered == 0 */
            size_t size;

            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];

            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before"
                         " gasnet_puts_nb_bulk to %p on image %lu from %p",
                         remote_dest, proc + 1, src);

            gasnet_handle_t handle;
            handle = gasnet_puts_nb_bulk(proc, remote_dest,
                                         dest_strides, src,
                                         src_strides, count,
                                         stride_levels);

            if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
                /* put has not yet completed */
                struct handle_list *handle_node =
                    get_next_handle(proc, NULL, src, 0, PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == GASNET_INVALID_HANDLE) {
                /* put has completed */
                comm_lcb_free(src);
                if (hdl != NULL)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                gasnet_wait_syncnb(handle);
                comm_lcb_free(src);

                PROFILE_RMA_STORE_END(proc);
            }

        }

        if (enable_get_cache) {
            update_cache_strided(remote_dest, dest_strides,
                                 src, src_strides, count, stride_levels,
                                 proc);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


/* like comm_strided_write_from_lcb, except we don't need to "release" the
 * source buffer upon completion and local completion guaranteed
 */
void comm_strided_write(size_t proc,
                        void *dest, const size_t dest_strides[],
                        void *src, const size_t src_strides[],
                        const size_t count[],
                        size_t stride_levels, int ordered,
                        comm_handle_t * hdl)
{
    void *remote_dest;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

#if defined(ENABLE_LOCAL_MEMCPY)
    int i;
    size_t nbytes = 1;
    if (my_proc == proc) {
        for (i = 0; i <= stride_levels; i++) {
            nbytes = nbytes * count[i];
        }
        if (nbytes <= SMALL_XFER_SIZE) {
            /* local copy */
            local_strided_copy(src, src_strides, dest, dest_strides,
                               count, stride_levels);

            if (hdl != NULL && hdl != (void *) -1)
                *hdl = NULL;

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
            return;
            /* does not reach */
        }
    }
#endif
    {
        remote_dest = get_remote_address(dest, proc);

        if (ordered) {
            size_t size;
            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];

            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            /* GASNet doesn't provide non-contiguous, non-blocking PUT that
             * guarantees local completion. It may be cheaper to do
             * this LCB creation and mem copy with the compiler instead. */

            void *new_src;
            size_t new_src_strides[stride_levels];
            size_t nbytes = 1;
            int i;
            for (i = 0; i < stride_levels; i++) {
                nbytes = nbytes * count[i];
                new_src_strides[i] = nbytes;
            }
            nbytes = nbytes * count[stride_levels];
            new_src = comm_lcb_malloc(nbytes);
            /* local copy */
            local_strided_copy(src, src_strides, new_src, new_src_strides,
                               count, stride_levels);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before"
                         " gasnet_puts_nb_bulk to %p on image %lu from %p size %lu",
                         remote_dest, proc + 1, new_src, size);

            gasnet_handle_t handle;
            handle = gasnet_puts_nb_bulk(proc, remote_dest,
                                         dest_strides,
                                         new_src,
                                         new_src_strides,
                                         count, stride_levels);
            if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
                /* put has not yet completed */
                struct handle_list *handle_node =
                    get_next_handle(proc, remote_dest, new_src, size,
                                    PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;
                update_nb_address_block(remote_dest, proc, size, PUTS);

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == GASNET_INVALID_HANDLE) {
                /* put has completed */
                if (hdl != NULL)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                gasnet_wait_syncnb(handle);

                PROFILE_RMA_STORE_END(proc);
            }

        } else {                /* ordered == 0 */
            size_t size;
            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];

            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Before"
                         " gasnet_puts_nb_bulk to %p on image %lu from %p",
                         remote_dest, proc + 1, src);

            gasnet_handle_t handle;
            handle = gasnet_puts_nb_bulk(proc, remote_dest,
                                         dest_strides, src,
                                         src_strides, count,
                                         stride_levels);

            if (handle != GASNET_INVALID_HANDLE && hdl != (void *) -1) {
                struct handle_list *handle_node =
                    get_next_handle(proc, NULL, src, 0, PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == GASNET_INVALID_HANDLE) {
                /* put has completed */
                if (hdl != NULL)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                gasnet_wait_syncnb(handle);

                PROFILE_RMA_STORE_END(proc);
            }

        }

        if (enable_get_cache) {
            update_cache_strided(remote_dest, dest_strides,
                                 src, src_strides, count, stride_levels,
                                 proc);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

#ifdef PCAF_INSTRUMENT

/***************************************************************
 *                      Profiling Support
 ***************************************************************/

void profile_comm_handle_end(comm_handle_t hdl)
{
    if (hdl == (comm_handle_t) - 1) {
        PROFILE_RMA_END_ALL();
    } else if (hdl != NULL) {
        struct handle_list *handle_node = hdl;
        if (handle_node->access_type == PUTS) {
            profile_rma_nbstore_end(handle_node->proc,
                                    handle_node->rmaid);
        } else {
            profile_rma_nbload_end(handle_node->proc,
                                   handle_node->rmaid);
        }
    }
}
#endif
