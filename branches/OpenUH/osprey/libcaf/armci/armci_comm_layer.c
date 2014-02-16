/*
 ARMCI Communication Layer for supporting Coarray Fortran

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

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <unistd.h>
#include <math.h>
#include "caf_rtl.h"
#include "comm.h"
#include "alloc.h"
#include "env.h"
#include "armci_comm_layer.h"
#include "trace.h"
#include "util.h"
#include "collectives.h"
#include "profile.h"

const size_t LARGE_COMM_BUF_SIZE = 120 * 1024;

const size_t SMALL_XFER_SIZE = 200;     /* size for which local mem copy would be
                                           advantageous */

extern co_reduce_t co_reduce_algorithm;

extern unsigned long _this_image;
extern unsigned long _num_images;
extern unsigned long _log2_images;
extern unsigned long _rem_images;
extern mem_usage_info_t *mem_info;

extern int rma_prof_rid;

/* common_slot is a node in the shared memory link-list that keeps track
 * of available memory that can used for both allocatable coarrays and
 * asymmetric data. */
extern shared_memory_slot_t *common_slot;

/*
 * Static Variable declarations
 */
static unsigned long my_proc;
static unsigned long num_procs;

static unsigned long static_symm_data_total_size_ = 0;
#pragma weak static_symm_data_total_size = static_symm_data_total_size_
extern unsigned long static_symm_data_total_size;

/* sync images */

static sync_images_t sync_images_algorithm;
typedef union {
    int value; /* used for counter and ping-pong */
    struct {
        short sense;
        short val;
    } t; /* used for sense reversing */
} sync_flag_t;
static sync_flag_t *sync_flags = NULL;

/* Shared memory management:
 * coarray_start_all_images stores the shared memory start address of all
 * images */
static void **coarray_start_all_images = NULL;  /* local address space */
static void **start_shared_mem_address = NULL;  /* different address spaces */

/* image stoppage info */
static int *error_stopped_image_exists = NULL;
static int *this_image_stopped = NULL;
static char *stopped_image_exists = NULL;
static int in_error_termination = 0;
static int in_normal_termination = 0;

/* NON-BLOCKING PUT: ARMCI non-blocking operations does not ensure local
 * completion on its return. ARMCI_Wait(handle) provides local completion,
 * as opposed to GASNET where it means remote completion. For remote
 * completion, ARMCI_Fence(remote_proc) needs to be invoked. However, we
 * can not FENCE for a specific handle. Hence we wait for all remote
 * writes to finish when a new read/write adrress overlaps any one of
 * them.  */
static struct nb_handle_manager nb_mgr[2];
static armci_handle_x_t *armci_nbput_handles;
static armci_handle_x_t *armci_nbget_handles;

static size_t nb_xfer_limit;


/* GET CACHE OPTIMIZATION */
static int enable_get_cache;    /* set by env variable */
static unsigned long getCache_line_size;        /* set by env var. */
/* Instead of making the cache_all_image an array of struct cache, I
 * make it an array of pointer to struct cache. This will make it easy
 * to add more cache lines in the future by making it 2D array */
static struct cache **cache_all_images;
static unsigned long shared_memory_size;

/* Mutexes */
static int critical_mutex;


/* Local function declarations */
static inline void check_for_error_stop();
static void *get_remote_address(void *src, size_t img);
static void clear_all_cache();
static void clear_cache(size_t node);
static void cache_check_and_get(size_t node, void *remote_address,
                                size_t nbytes, void *local_address);
static void cache_check_and_get_strided(void *remote_src,
                                        int src_strides[],
                                        void *local_dest,
                                        int dest_strides[], int count[],
                                        size_t stride_levels, size_t node);
static void update_cache(size_t node, void *remote_address, size_t nbytes,
                         void *local_address);

static void local_strided_copy(void *src, const int src_strides[],
                               void *dest, const int dest_strides[],
                               const int count[], size_t stride_levels);

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
static int address_in_nb_address_block(void *remote_addr, size_t proc,
                                       size_t size,
                                       access_type_t access_type);
static void update_nb_address_block(void *remote_addr, size_t proc,
                                    size_t size,
                                    access_type_t access_type);
static void wait_on_pending_accesses(size_t proc,
                                     void *remote_address,
                                     size_t size,
                                     access_type_t access_type);
static void wait_on_pending_puts(size_t proc);
static void wait_on_all_pending_accesses_to_proc(unsigned long proc);
static void wait_on_all_pending_accesses();

static inline armci_hdl_t *get_next_armci_handle(access_type_t
                                                 access_type);
static inline void return_armci_handle(armci_handle_x_t * handle,
                                       access_type_t access_type);

static void comm_sync_images_counter(hashed_image_list_t *image_list,
                      int image_count, int *status, int stat_len,
                      char *errmsg, int errmsg_len);
static void comm_sync_images_ping_pong(hashed_image_list_t *image_list,
                      int image_count, int *status, int stat_len,
                      char *errmsg, int errmsg_len);
static void comm_sync_images_sense_rev(hashed_image_list_t *image_list,
                      int image_count, int *status, int stat_len,
                      char *errmsg, int errmsg_len);



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

/* must call comm_init() first */
size_t comm_get_node_id(size_t proc)
{
    return (size_t) armci_domain_id(ARMCI_DOMAIN_SMP, (int)proc);
}

static int mpi_initialized_by_armci = 0;

int MPI_Init(int *argc, char ***argv)
{
    int ret = MPI_SUCCESS;

    if (!mpi_initialized_by_armci) {
        ret = PMPI_Init(argc, argv);
    }

    return ret;
}

void mpi_init_(int *ierr)
{
    int argc;
    char **argv;
    int flag;
    *ierr = MPI_SUCCESS;

    if (!mpi_initialized_by_armci) {
        argc = ARGC;
        argv = ARGV;
        *ierr = PMPI_Init(&argc, &argv);
    }
}

int MPI_Finalize()
{
    int ret = MPI_SUCCESS;
    if (!mpi_initialized_by_armci ||
        in_error_termination || in_normal_termination) {
        ret = PMPI_Finalize();
    }

    return ret;
}

void mpi_finalize_(int *ierr)
{
    int flag;
    *ierr = MPI_SUCCESS;

    if (!mpi_initialized_by_armci ||
        in_error_termination || in_normal_termination) {
        *ierr = PMPI_Finalize();
    }
}

/**************************************************************
 *       Shared (RMA) Memory Segment Address Ranges
 **************************************************************/

inline void *comm_start_shared_mem(size_t proc)
{
    return get_remote_address(coarray_start_all_images[my_proc], proc);
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

    start_symm_mem = coarray_start_all_images[my_proc];
    end_symm_mem = common_slot->addr;

    return (addr >= start_symm_mem && addr < end_symm_mem);
}



/**************************************************************
 *                Memory Copy Helper Routines
 **************************************************************/

/* naive implementation of strided copy
 * TODO: improve by finding maximal blocksize
 */
static void local_strided_copy(void *src, const int src_strides[],
                               void *dest, const int dest_strides[],
                               const int count[], size_t stride_levels)
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
 * 1) Initialize ARMCI
 * 2) Create flags and mutexes for sync_images
 * 3) Create pinned memory and populates coarray_start_all_images.
 * 4) Populates common_slot with the pinned memory data which is used by
 *    alloc.c to allocate/deallocate coarrays.
 */

void comm_init()
{
    int ret, i;
    int argc;
    char **argv;
    unsigned long caf_shared_memory_size;
    unsigned long image_heap_size;
    armci_handle_x_t *p;
    shared_memory_slot_t *common_shared_memory_slot;

    if (common_slot != NULL) {
        LIBCAF_TRACE(LIBCAF_LOG_FATAL,
                     "common_slot has already been initialized");
    }

    common_slot = malloc(sizeof(shared_memory_slot_t));
    common_shared_memory_slot = common_slot;

    /* Get total shared memory size, per image, requested by program (enough
     * space for save coarrays + heap).
     *
     * We reserve sizeof(void*) bytes at the beginning of the shared memory
     * segment for storing the start address of every proc's shared memory, so
     * add that as well (treat is as part of save coarray memory).
     */
    static_symm_data_total_size += sizeof(void *);
    caf_shared_memory_size = static_symm_data_total_size;
    image_heap_size = get_env_size(ENV_IMAGE_HEAP_SIZE,
                                   DEFAULT_IMAGE_HEAP_SIZE);
    caf_shared_memory_size += image_heap_size;

    argc = ARGC;
    argv = ARGV;
    MPI_Init(&argc, &argv);
    __f90_set_args(argc, argv);

    ret = ARMCI_Init();
    if (ret != 0) {
        Error("ARMCI init error");
    }

    mpi_initialized_by_armci = 1;

    MPI_Comm_rank(MPI_COMM_WORLD, (int *) &my_proc);
    MPI_Comm_size(MPI_COMM_WORLD, (int *) &num_procs);

    /* compute log2_images and rem_images */
    int log2_procs = 0;
    long n = num_procs;
    long m = 1;
    while (n > 0) {
        static int first = 1;
        if (first) {
            first = 0;
        } else {
            log2_procs++;
            m <<= 1;
        }
        n >>= 1;
    }
    long rem_procs = num_procs - m;

    /* set extern symbols used for THIS_IMAGE and NUM_IMAGES intrinsics */
    _this_image = my_proc + 1;
    _num_images = num_procs;
    _log2_images = log2_procs;
    _rem_images = rem_procs;

    LIBCAF_TRACE_INIT();
    LIBCAF_TRACE(LIBCAF_LOG_INIT, "after ARMCI_Init");

    if (_num_images >= MAX_NUM_IMAGES) {
        if (my_proc == 0) {
            Error("Number of images may not exceed %lu", MAX_NUM_IMAGES);
        }
    }

    /* which reduction algorithm to use */
    char *alg;
    alg = getenv(ENV_CO_REDUCE_ALGORITHM);
    co_reduce_algorithm = CO_REDUCE_DEFAULT;

    if (alg != NULL) {
        if (strncasecmp(alg, "all2all", 7) == 0) {
            co_reduce_algorithm = CO_REDUCE_ALL2ALL;
        } else if (strncasecmp(alg, "2tree_syncall", 13) == 0) {
            co_reduce_algorithm = CO_REDUCE_2TREE_SYNCALL;
        } else if (strncasecmp(alg, "2tree_syncimages", 16) == 0) {
            co_reduce_algorithm = CO_REDUCE_2TREE_SYNCIMAGES;
        } else if (strncasecmp(alg, "2tree_events", 12) == 0) {
            co_reduce_algorithm = CO_REDUCE_2TREE_EVENTS;
        } else {
            if (my_proc == 0) {
                Warning("CO_REDUCE_ALGORITHM %s is not supported. "
                        "Using default", alg);
            }
        }
    }

    /* which sync images to use */
    char *si_alg;
    si_alg = getenv(ENV_SYNC_IMAGES_ALGORITHM);
    sync_images_algorithm = SYNC_IMAGES_DEFAULT;

    if (si_alg != NULL) {
        if (strncasecmp(si_alg, "counter", 7) == 0) {
            sync_images_algorithm = SYNC_COUNTER;
        } else if (strncasecmp(si_alg, "ping_pong", 9) == 0) {
            sync_images_algorithm = SYNC_PING_PONG;
        } else if (strncasecmp(si_alg, "sense_reversing", 15 ) == 0) {
            sync_images_algorithm = SYNC_SENSE_REV;
        } else if (strncasecmp(si_alg, "default", 7 ) == 0) {
            sync_images_algorithm = SYNC_IMAGES_DEFAULT;
        } else {
            if (my_proc == 0) {
                Warning("SYNC_IMAGES_ALGORITHM %s is not supported. "
                        "Using default", si_alg);
            }
        }
    }

    /* Check if optimizations are enabled */
    enable_get_cache = get_env_flag(ENV_GETCACHE, DEFAULT_ENABLE_GETCACHE);
    getCache_line_size = get_env_size(ENV_GETCACHE_LINE_SIZE,
                                      DEFAULT_GETCACHE_LINE_SIZE);

    nb_xfer_limit = get_env_size(ENV_NB_XFER_LIMIT, DEFAULT_NB_XFER_LIMIT);

    /* Create flags and mutex for sync_images and critical regions
     * For every image, we create num_procs mutexes and one additional
     * mutex for the critical region. This needs to be changed to
     * multiple mutexes based depending on the number of critical regions.
     * The important point to note here is that ARMCI_Create_mutexes can be
     * called only once per image
     */
    ARMCI_Create_mutexes(num_procs + 1);

    critical_mutex = num_procs; /* last mutex reserved for critical sections */

    if (caf_shared_memory_size / 1024 >= MAX_SHARED_MEMORY_SIZE / 1024) {
        if (my_proc == 0) {
            Error("Image shared memory size must not exceed %lu GB",
                  MAX_SHARED_MEMORY_SIZE / (1024 * 1024 * 1024));
        }
    }

    /* Create pinned/registered memory (Shared Memory) */
    coarray_start_all_images = malloc(num_procs * sizeof(void *));
    start_shared_mem_address = malloc(num_procs * sizeof(void *));


    /* TODO: where's the check for maximum allowable segment by system? */
    ret = ARMCI_Malloc((void **) coarray_start_all_images,
                       caf_shared_memory_size);

    if (ret != 0) {
        Error("ARMCI_Malloc failed when allocating %lu bytes.",
              caf_shared_memory_size);
    }


    start_shared_mem_address[my_proc] = coarray_start_all_images[my_proc];

    /* write start shared memory address to beginning of shared memory */
    *((void **) start_shared_mem_address[my_proc]) =
        start_shared_mem_address[my_proc];
    ARMCI_Barrier();

    for (i = 0; i < num_procs; i++) {
        int domain_id = armci_domain_id(ARMCI_DOMAIN_SMP, i);
        if (armci_domain_same_id(ARMCI_DOMAIN_SMP, i)) {
            start_shared_mem_address[i] =
                *((void **) coarray_start_all_images[i]);
        } else if (i ==
                   armci_domain_glob_proc_id(ARMCI_DOMAIN_SMP, domain_id,
                                             0)) {
            start_shared_mem_address[i] = coarray_start_all_images[i];
        } else {
            /* will be updated on demand */
            start_shared_mem_address[i] = NULL;
        }
    }

    allocate_static_symm_data((char *) coarray_start_all_images[my_proc]
                              + sizeof(void *));
    nb_mgr[PUTS].handles = (struct handle_list **) malloc
        (num_procs * sizeof(struct handle_list *));
    nb_mgr[PUTS].num_handles = 0;
    nb_mgr[PUTS].min_nb_address = malloc(num_procs * sizeof(void *));
    nb_mgr[PUTS].max_nb_address = malloc(num_procs * sizeof(void *));
    armci_nbput_handles = malloc(nb_xfer_limit * sizeof(armci_handle_x_t));
    p = armci_nbput_handles;
    for (i = 0; i < nb_xfer_limit - 1; i++) {
        p[i].next = &p[i + 1];
    }
    p[nb_xfer_limit - 1].next = NULL;
    nb_mgr[PUTS].free_armci_handles = armci_nbput_handles;

    nb_mgr[GETS].handles = (struct handle_list **) malloc
        (num_procs * sizeof(struct handle_list *));
    nb_mgr[GETS].num_handles = 0;
    nb_mgr[GETS].min_nb_address = malloc(num_procs * sizeof(void *));
    nb_mgr[GETS].max_nb_address = malloc(num_procs * sizeof(void *));
    armci_nbget_handles = malloc(nb_xfer_limit * sizeof(armci_handle_x_t));
    p = armci_nbget_handles;
    for (i = 0; i < nb_xfer_limit - 1; i++) {
        p[i].next = &p[i + 1];
    }
    p[nb_xfer_limit - 1].next = NULL;
    nb_mgr[GETS].free_armci_handles = armci_nbget_handles;

    /* initialize data structures to 0 */
    for (i = 0; i < num_procs; i++) {
        nb_mgr[PUTS].handles[i] = 0;
        nb_mgr[PUTS].min_nb_address[i] = 0;
        nb_mgr[PUTS].max_nb_address[i] = 0;
        nb_mgr[GETS].handles[i] = 0;
        nb_mgr[GETS].min_nb_address[i] = 0;
        nb_mgr[GETS].max_nb_address[i] = 0;
    }

    if (enable_get_cache) {
        cache_all_images =
            (struct cache **) malloc(num_procs * sizeof(struct cache *));
        /* initialize data structures to 0 */
        for (i = 0; i < num_procs; i++) {
            cache_all_images[i] =
                (struct cache *) malloc(sizeof(struct cache));
            cache_all_images[i]->remote_address = 0;
            cache_all_images[i]->handle = 0;
            cache_all_images[i]->cache_line_address =
                malloc(getCache_line_size);
        }
    }

    /* initialize common shared memory slot */
    common_shared_memory_slot->addr = coarray_start_all_images[my_proc]
        + static_symm_data_total_size;
    common_shared_memory_slot->size = caf_shared_memory_size
        - static_symm_data_total_size;
    common_shared_memory_slot->feb = 0;
    common_shared_memory_slot->next = 0;
    common_shared_memory_slot->prev = 0;

    shared_memory_size = caf_shared_memory_size;

    /* allocate space for recording image termination */
    error_stopped_image_exists =
        (int *) coarray_allocatable_allocate_(sizeof(int), NULL);
    this_image_stopped =
        (int *) coarray_allocatable_allocate_(sizeof(int), NULL);
    *error_stopped_image_exists = 0;
    *this_image_stopped = 0;

    stopped_image_exists = (char *) coarray_allocatable_allocate_(
                      (num_procs+1) * sizeof(char), NULL);

    memset(stopped_image_exists, 0, (num_procs+1)*sizeof(char));

    /* allocate space in symmetric heap for memory usage info */
    mem_info = (mem_usage_info_t *)
        coarray_allocatable_allocate_(sizeof(*mem_info), NULL);
    mem_info->current_heap_usage = sizeof(*mem_info);
    mem_info->max_heap_usage = sizeof(*mem_info);
    mem_info->reserved_heap_usage =
        caf_shared_memory_size - static_symm_data_total_size;

    /* allocate flags for p2p synchronization via sync images */
    sync_flags = (sync_flag_t *) coarray_allocatable_allocate_(
            num_procs * sizeof(sync_flag_t), NULL);
    memset(sync_flags, 0, num_procs*sizeof(sync_flag_t));


    LIBCAF_TRACE(LIBCAF_LOG_INIT, "Finished. Waiting for global barrier."
                 "common_slot->addr=%p, common_slot->size=%lu",
                 common_shared_memory_slot->addr,
                 common_shared_memory_slot->size);

    ARMCI_Barrier();

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
            ARMCI_NbGet(cache_all_images[i]->remote_address,
                        cache_all_images[i]->cache_line_address,
                        getCache_line_size, i,
                        cache_all_images[i]->handle);
        }
    }
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}

static void refetch_cache(unsigned long node)
{
    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "entry");

    if (cache_all_images[node]->remote_address) {
        ARMCI_NbGet(cache_all_images[node]->remote_address,
                    cache_all_images[node]->cache_line_address,
                    getCache_line_size, node,
                    cache_all_images[node]->handle);
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
            ARMCI_Wait(cache_all_images[node]->handle);
            cache_all_images[node]->handle = 0;
        }
        memcpy(local_address, cache_line_address + start_offset, nbytes);
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Address %p on"
                     " image %lu found in cache.", remote_address,
                     node + 1);
    } else {                    /*data not in cache */

        /* data NOT from end of shared segment OR bigger than cacheline */
        if (((remote_address + getCache_line_size) <=
             (coarray_start_all_images[node] + shared_memory_size))
            && (nbytes <= getCache_line_size)) {
            ARMCI_Get(remote_address, cache_line_address,
                      getCache_line_size, node);
            cache_all_images[node]->remote_address = remote_address;
            cache_all_images[node]->handle = 0;
            memcpy(local_address, cache_line_address, nbytes);
        } else {
            ARMCI_Get(remote_address, local_address, nbytes, node);
        }
        LIBCAF_TRACE(LIBCAF_LOG_CACHE, "Address %p on"
                     " image %lu NOT found in cache.", remote_address,
                     node + 1);
    }

    LIBCAF_TRACE(LIBCAF_LOG_CACHE, "exit");
}



static void cache_check_and_get_strided(void *remote_src,
                                        int src_strides[],
                                        void *local_dest,
                                        int dest_strides[], int count[],
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
            ARMCI_Wait(cache_all_images[node]->handle);
            cache_all_images[node]->handle = 0;
        }

        local_strided_copy(cache_line_address + start_offset,
                           src_strides, local_dest, dest_strides,
                           count, stride_levels);


    } else {                    /*data not in cache */

        /* data NOT from end of shared segment OR bigger than cacheline */
        if (((remote_src + getCache_line_size) <=
             (coarray_start_all_images[node] + shared_memory_size))
            && (size <= getCache_line_size)) {
            LIBCAF_TRACE(LIBCAF_LOG_CACHE,
                         "Data for Address %p on image %lu NOT found in cache.",
                         remote_src, node + 1);

            ARMCI_Get(remote_src, cache_line_address, getCache_line_size,
                      node);
            cache_all_images[node]->remote_address = remote_src;
            cache_all_images[node]->handle = 0;

            local_strided_copy(cache_line_address,
                               src_strides, local_dest, dest_strides,
                               count, stride_levels);
        } else {
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "ARMCI_GetS from"
                         " %p on image %lu to %p (stride_levels= %u)",
                         remote_src, node + 1, local_dest, stride_levels);

            ARMCI_GetS(remote_src, src_strides,
                       local_dest, dest_strides,
                       count, stride_levels, node);
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
                                 const int dest_strides[],
                                 void *local_src_address,
                                 const int src_strides[],
                                 const int count[], size_t stride_levels,
                                 size_t node)
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



static int handles_in_use = 0;

/* NOTE: this isn't thread safe */
static inline armci_hdl_t *get_next_armci_handle(access_type_t access_type)
{
    if (handles_in_use >= nb_xfer_limit) {
        wait_on_all_pending_accesses();
    }

    armci_handle_x_t *freed_handle =
        nb_mgr[access_type].free_armci_handles;
    nb_mgr[access_type].free_armci_handles = freed_handle->next;

    handles_in_use++;

    return &(freed_handle->handle);
}

/* NOTE: this isn't thread safe */
static inline void return_armci_handle(armci_handle_x_t * handle,
                                       access_type_t access_type)
{
    armci_handle_x_t *free_list = nb_mgr[access_type].free_armci_handles;
    nb_mgr[access_type].free_armci_handles = handle;
    handle->next = free_list;

    handles_in_use--;
}


static int address_in_nb_address_block(void *remote_addr,
                                       size_t proc, size_t size,
                                       access_type_t access_type)
{
    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
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
    if (nb_mgr[access_type].num_handles >= nb_xfer_limit) {
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
    handle_node->handle = NULL; /* should be initialized after call
                                   to this function */
    handle_node->address = remote_address;
#ifdef PCAF_INSTRUMENT
    handle_node->rmaid = rma_prof_rid;
#else
    handle_node->rmaid = 0;
#endif
    handle_node->local_buf = local_buf;
    handle_node->size = size;
    handle_node->proc = proc;
    handle_node->access_type = access_type;
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
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "min:%p, max:%p",
                 min_nb_address[proc], max_nb_address[proc]);
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

    /* return armci handle to free list */
    return_armci_handle((armci_handle_x_t *) node->handle, access_type);

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
        if (access_type = PUTS)
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


/* check that all pending accesses of access_type that may conflict with the
 * remote address have completed */
static void wait_on_pending_accesses(size_t proc,
                                     void *remote_address,
                                     size_t size,
                                     access_type_t access_type)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    void **min_nb_address = nb_mgr[access_type].min_nb_address;
    void **max_nb_address = nb_mgr[access_type].max_nb_address;
    struct handle_list **handles = nb_mgr[access_type].handles;
    struct handle_list *handle_node, *node_to_delete;

    handle_node = handles[proc];
    if (handle_node &&
        address_in_nb_address_block(remote_address, proc, size,
                                    access_type)) {
        if (access_type == PUTS) {
            /* ARMCI provides no way to wait on a specific PUT to complete
             * remotely, so just wait on all of them to complete */
            wait_on_pending_puts(proc);
        } else {                /* GETS */
            while (handle_node) {
                if (address_in_handle(handle_node, remote_address, size)) {
                    ARMCI_Wait(handle_node->handle);
                    PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);
                    delete_node(proc, handle_node, GETS);
                    return;
                } else if (ARMCI_Test(handle_node->handle) != 0) {
                    /* has completed */
                    PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);
                    node_to_delete = handle_node;
                    handle_node = handle_node->next;
                    delete_node(proc, node_to_delete, GETS);
                } else {
                    handle_node = handle_node->next;
                }
            }
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

/* wait on all pending PUTS to proc to complete */
static void wait_on_pending_puts(size_t proc)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    void **min_nb_address = nb_mgr[PUTS].min_nb_address;
    void **max_nb_address = nb_mgr[PUTS].max_nb_address;
    struct handle_list **handles = nb_mgr[PUTS].handles;
    struct handle_list *handle_node, *node_to_delete;
    handle_node = handles[proc];
    ARMCI_Fence(proc);
    PROFILE_RMA_END_ALL_STORES_TO_PROC(proc);

    /* clear out entire handle list */
    while (handle_node) {
        /* return armci handle to free list */
        return_armci_handle((armci_handle_x_t *) handle_node->handle,
                            PUTS);
        node_to_delete = handle_node;
        handle_node = handle_node->next;
        comm_lcb_free(node_to_delete->local_buf);
        comm_free(node_to_delete);
    }
    handles[proc] = 0;
    min_nb_address[proc] = 0;
    max_nb_address[proc] = 0;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

/* wait on all pending accesses to complete */
static void wait_on_all_pending_accesses()
{
    int i;
    struct handle_list *handle_node, *node_to_delete;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    /* ensures all non-blocking puts have completed */
    ARMCI_AllFence();
    PROFILE_RMA_END_ALL_STORES();

    for (i = 0; i < num_procs; i++) {
        handle_node = nb_mgr[PUTS].handles[i];
        /* clear out entire handle list */
        while (handle_node) {
            /* return armci handle to free list */
            return_armci_handle((armci_handle_x_t *) handle_node->handle,
                                PUTS);
            node_to_delete = handle_node;
            handle_node = handle_node->next;
            /* for puts */
            comm_lcb_free(node_to_delete->local_buf);
            comm_free(node_to_delete);
            nb_mgr[PUTS].num_handles--;
        }
        nb_mgr[PUTS].handles[i] = 0;
        nb_mgr[PUTS].min_nb_address[i] = 0;
        nb_mgr[PUTS].max_nb_address[i] = 0;

        handle_node = nb_mgr[GETS].handles[i];
        /* clear out entire handle list */
        while (handle_node) {
            ARMCI_Wait(handle_node->handle);
            PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);

            /* return armci handle to free list */
            return_armci_handle((armci_handle_x_t *) handle_node->handle,
                                GETS);
            node_to_delete = handle_node;
            handle_node = handle_node->next;
            comm_free(node_to_delete);
            nb_mgr[GETS].num_handles--;
        }
        nb_mgr[GETS].handles[i] = 0;
        nb_mgr[GETS].min_nb_address[i] = 0;
        nb_mgr[GETS].max_nb_address[i] = 0;
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

/* wait on all pending accesses to complete */
static void wait_on_all_pending_accesses_to_proc(unsigned long proc)
{
    struct handle_list *handle_node, *node_to_delete;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    /* ensures all non-blocking puts have completed */
    ARMCI_Fence(proc);
    PROFILE_RMA_END_ALL_STORES_TO_PROC(proc);

    handle_node = nb_mgr[PUTS].handles[proc];
    /* clear out entire handle list */
    while (handle_node) {
        /* return armci handle to free list */
        return_armci_handle((armci_handle_x_t *) handle_node->handle,
                PUTS);
        node_to_delete = handle_node;
        handle_node = handle_node->next;
        /* for puts */
        comm_lcb_free(node_to_delete->local_buf);
        comm_free(node_to_delete);
        nb_mgr[PUTS].num_handles--;
    }
    nb_mgr[PUTS].handles[proc] = 0;
    nb_mgr[PUTS].min_nb_address[proc] = 0;
    nb_mgr[PUTS].max_nb_address[proc] = 0;

    handle_node = nb_mgr[GETS].handles[proc];
    /* clear out entire handle list */
    while (handle_node) {
        ARMCI_Wait(handle_node->handle);
        PROFILE_COMM_HANDLE_END((comm_handle_t) handle_node);

        /* return armci handle to free list */
        return_armci_handle((armci_handle_x_t *) handle_node->handle,
                GETS);
        node_to_delete = handle_node;
        handle_node = handle_node->next;
        comm_free(node_to_delete);
        nb_mgr[GETS].num_handles--;
    }
    nb_mgr[GETS].handles[proc] = 0;
    nb_mgr[GETS].min_nb_address[proc] = 0;
    nb_mgr[GETS].max_nb_address[proc] = 0;

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

inline ssize_t comm_address_translation_offset(size_t proc)
{
    char *remote_base_address = coarray_start_all_images[proc];
    return remote_base_address -
        (char *) coarray_start_all_images[my_proc];
}


void comm_translate_remote_addr(void **remote_addr, int proc)
{
    ssize_t offset;
    void *local_address;

    if (start_shared_mem_address[proc] == NULL) {
        ARMCI_Get(coarray_start_all_images[proc],
                  &start_shared_mem_address[proc], sizeof(void *), proc);
    }

    offset =
        start_shared_mem_address[my_proc] - start_shared_mem_address[proc];
    local_address = *remote_addr + offset;

    if (!address_in_symmetric_mem(local_address)) {
        local_address = (char *) local_address +
            comm_address_translation_offset(proc);
    }
    *remote_addr = local_address;
}



/* Calculate the address on another image corresponding to a local address
 * This is possible as all images must have the same coarrays, i.e the
 * memory is symmetric. Since we know the start address of all images
 * from coarray_start_all_images, remote_address = start+offset
 * NOTE: remote_address on this image might be different from the actual
 * address on that image. So don't rely on it while debugging*/
static void *get_remote_address(void *src, size_t img)
{
    size_t offset;
    void *remote_address;
    if ((img == my_proc) || !address_in_symmetric_mem(src))
        return src;
    offset = src - coarray_start_all_images[my_proc];
    remote_address = coarray_start_all_images[img] + offset;
    return remote_address;
}

int comm_address_in_shared_mem(void *addr)
{
    void *start_shared_mem;
    void *end_shared_mem;

    start_shared_mem = coarray_start_all_images[my_proc];
    end_shared_mem = start_shared_mem + shared_memory_size;

    return (addr >= start_shared_mem && addr < end_shared_mem);
}

/****************************************************************
 *                         FINALIZATION
 ****************************************************************/

void comm_memory_free()
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    if (coarray_start_all_images) {
        coarray_free_all_shared_memory_slots(); /* in caf_rtl.c */
        ARMCI_Free(coarray_start_all_images[my_proc]);
        comm_free(coarray_start_all_images);
    }

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

void comm_exit(int status)
{
    int p;

    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "entry");

    /*
     * ERROR TERMINATION
     *
     * Notify other images that this image has started error termination
     */

    in_error_termination = 1;

    if (status == 0)
        Warning("Image %d is exiting without a set error code", my_proc+1);

    *this_image_stopped = 2; /* 2 means error stopped */

    if (*error_stopped_image_exists == 0 && status != 0) {
        *error_stopped_image_exists = status;

        /* broadcast to every image that this image has stopped.
         * TODO: Other images should be able to detect this image has stopped
         * when they try to synchronize with it. Requires custom
         * implementation of barriers.
         */
        for (p = 0; p < num_procs; p++) {
            if (p == my_proc) continue;
            comm_write(p, error_stopped_image_exists,
                       error_stopped_image_exists,
                       sizeof(*error_stopped_image_exists),
                       1, NULL);
        }
    }

    LOAD_STORE_FENCE();
    comm_memory_free();
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "Before call to ARMCI_Error"
                 " with status %d.", status);

    ARMCI_Error("", status);

    /* does not reach */
}

static inline void check_for_error_stop()
{
    if (!in_error_termination && error_stopped_image_exists != NULL &&
        *error_stopped_image_exists != 0)
        comm_exit(*error_stopped_image_exists);
}

void comm_finalize(int exit_code)
{
    int p;

    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "entry");

    /*
     * NORMAL TERMINATION STEPS:
     * (1) Initiation
     * (2) Synchronization
     * (3) Completion
     */

    /* Initiation */

    in_normal_termination = 1;

    int stopped_image_already_exists = stopped_image_exists[num_procs];

    *this_image_stopped = 1; /* 1 means normal stopped */
    stopped_image_exists[my_proc] = 1;
    stopped_image_exists[num_procs] = 1;

    /* broadcast to every image that this image has stopped.
     * TODO: Other images should be able to detect this image has stopped when
     * they try to synchronize with it. Requires custom implementation of
     * barriers.
     */
    for (p = 0; p < num_procs; p++) {
        if (p == my_proc) continue;

        if (!stopped_image_already_exists) {
            /* this indicates at least one image has stopped, allowing for
             * quicker check for barrier synchronization */
            char stopped = 1;
            comm_write(p, &stopped_image_exists[num_procs],
                       &stopped, sizeof(char), 1, NULL);
        }

        comm_write(p, &stopped_image_exists[my_proc],
                   &stopped_image_exists[my_proc], sizeof(char), 1, NULL);
    }

    /* Synchronization */

    comm_barrier_all();

    /* Completion */

    comm_memory_free();
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "Before call to ARMCI_Finalize");
    ARMCI_Finalize();
    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "Before call to MPI_Finalize");
    MPI_Finalize();

    LIBCAF_TRACE(LIBCAF_LOG_EXIT, "exit");
    exit(exit_code);

    /* does not reach */
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

    check_for_error_stop();

    ARMCI_Lock(critical_mutex, 0);

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_end_critical()
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    ARMCI_Unlock(critical_mutex, 0);

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

/* wait for any pending communication to specified proc to complete. Use value
 * < 0 if we want to wait on all procs to complete. */
void comm_fence(size_t proc)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    if (proc < 0) {
        wait_on_all_pending_accesses();
    } else {
        wait_on_all_pending_accesses_to_proc((unsigned long)proc);
    }

    LOAD_STORE_FENCE();

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_barrier_all()
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    wait_on_all_pending_accesses();
    ARMCI_Barrier();
    if (enable_get_cache)
        refetch_all_cache();

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_sync(comm_handle_t hdl)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    if (hdl == (comm_handle_t) - 1) {   /* wait on all non-blocking communication */
        wait_on_all_pending_accesses();
    } else if (hdl != NULL) {   /* wait on specified handle */
        check_remote_image(((struct handle_list *) hdl)->proc + 1);

        if (((struct handle_list *)hdl)->access_type == PUTS) {
            wait_on_pending_puts(((struct handle_list *)hdl)->proc);
        } else {
            ARMCI_Wait(((struct handle_list *) hdl)->handle);

            PROFILE_COMM_HANDLE_END(hdl);

            delete_node(((struct handle_list *) hdl)->proc,
                    (struct handle_list *) hdl,
                    ((struct handle_list *) hdl)->access_type);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_sync_all(int *status, int stat_len, char *errmsg, int errmsg_len)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    if (status != NULL) {
        memset(status, 0, (size_t) stat_len);
        *((INT2 *) status) = STAT_SUCCESS;
    }
    if (errmsg != NULL && errmsg_len) {
        memset(errmsg, 0, (size_t) errmsg_len);
    }

    wait_on_all_pending_accesses();

    LOAD_STORE_FENCE();

    /* TODO: need to check for stopped image during the execution of the
     * barrier, instead of just at the beginning */
    if (stopped_image_exists != NULL && stopped_image_exists[num_procs]) {
        LIBCAF_TRACE(LIBCAF_LOG_DEBUG, "statvar = %p", status);
        if (status != NULL) {
            *((INT2 *) status) = STAT_STOPPED_IMAGE;
        } else {
            Error("Image %d attempted to synchronize with stopped image",
                  _this_image);
            /* doesn't reach */
        }
    } else {
        ARMCI_Barrier();
    }

    if (enable_get_cache)
        refetch_all_cache();

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

void comm_sync_memory(int *status, int stat_len, char *errmsg,
                      int errmsg_len)
{
    unsigned long i;

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

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

void comm_sync_images(hashed_image_list_t *image_list, int image_count,
                      int *status, int stat_len, char *errmsg, int errmsg_len)
{
    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "entry");

    check_for_error_stop();

    if (status != NULL) {
        memset(status, 0, (size_t) stat_len);
        *((INT2 *) status) = STAT_SUCCESS;
    }
    if (errmsg != NULL && errmsg_len) {
        memset(errmsg, 0, (size_t) errmsg_len);
    }

    wait_on_all_pending_accesses();

    switch (sync_images_algorithm) {
        case SYNC_COUNTER:
            comm_sync_images_counter(image_list, image_count, status,
                                     stat_len, errmsg, errmsg_len);
            break;
        case SYNC_PING_PONG:
            comm_sync_images_ping_pong(image_list, image_count, status,
                                     stat_len, errmsg, errmsg_len);
            break;
        case SYNC_SENSE_REV:
            comm_sync_images_sense_rev(image_list, image_count, status,
                                     stat_len, errmsg, errmsg_len);
            break;
        default:
            comm_sync_images_sense_rev(image_list, image_count, status,
                                     stat_len, errmsg, errmsg_len);
            break;
    }

    LIBCAF_TRACE(LIBCAF_LOG_SYNC, "exit");
}

static void comm_sync_images_counter(hashed_image_list_t *image_list,
                                     int image_count, int *status,
                                     int stat_len, char *errmsg,
                                     int errmsg_len)
{
    hashed_image_list_t *list_item;
    int i;
    for (list_item = image_list, i = 0; i < image_count; i++) {
        int q;
        /* if image_list is NULL, we sync with all images */
        if (list_item != NULL) {
            q = list_item->image_id - 1;
            list_item = list_item->hh.next;
        } else {
            q = i;
        }

        if (my_proc != q) {
            int inc = 1;
            /* increment counter */
            comm_add_request(&sync_flags[my_proc].value, &inc,
                             sizeof(inc), q);
        }
    }
    for (list_item = image_list, i = 0; i < image_count; i++) {
        int q;
        /* if image_list is NULL, we sync with all images */
        if (list_item != NULL) {
            q = list_item->image_id - 1;
            list_item = list_item->hh.next;
        } else {
            q = i;
        }

        if (q == my_proc)
            continue;

        check_for_error_stop();

        while (sync_flags[q].value == 0) {
            comm_service();
            LOAD_STORE_FENCE();

            if (stopped_image_exists[q]) {
                /* q has stopped */
                if (status != NULL) {
                    *((INT2 *) status) = STAT_STOPPED_IMAGE;
                    LOAD_STORE_FENCE();
                    return;
                } else {
                    /* error termination */
                    Error("Image %d attempted to synchronize with "
                          "stopped image %d.", _this_image, q+1);
                    /* doesn't reach */
                }
            }
        }

        /* atomically decrement counter */
        SYNC_FETCH_AND_ADD((int *)&sync_flags[q].value, (int)-1);

        if (enable_get_cache)
            refetch_cache(q);
    }
}

static void comm_sync_images_ping_pong(hashed_image_list_t *image_list,
                                     int image_count, int *status,
                                     int stat_len, char *errmsg,
                                     int errmsg_len)
{
    int i;
    int images_to_check;
    hashed_image_list_t *list_item;
    char check_images[image_count];

    images_to_check = image_count;
    for (list_item = image_list, i = 0; i < image_count; i++) {
        int q;
        /* if image_list is NULL, we sync with all images */
        if (list_item != NULL) {
            q = list_item->image_id - 1;
            list_item = list_item->hh.next;
        } else {
            q = i;
        }

        check_images[i] = 1;
        if (my_proc == q) {
            images_to_check--;
            check_images[i] = 0;
        }
        if (my_proc < q) {
            int flag_set = 1;
            comm_write(q, &sync_flags[my_proc].value, &flag_set,
                       sizeof(flag_set), 1, NULL);
        }
    }

    while (images_to_check != 0) {
        for (list_item = image_list, i = 0; i < image_count; i++) {
            int q;
            /* if image_list is NULL, we sync with all images */
            if (list_item != NULL) {
                q = list_item->image_id - 1;
                list_item = list_item->hh.next;
            } else {
                q = i;
            }

            if (check_images[i] == 0) continue;

            check_for_error_stop();

            if (stopped_image_exists[q]) {
                /* q has stopped */
                if (status != NULL) {
                    *((INT2 *) status) = STAT_STOPPED_IMAGE;
                    LOAD_STORE_FENCE();
                    return;
                } else {
                    /* error termination */
                    Error("Image %d attempted to synchronize with stopped "
                          "image %d.", _this_image, q+1);
                    /* doesn't reach */
                }
            }

            if (sync_flags[q].value == 1) {
                sync_flags[q].value = 0;
                check_images[i] = 0;
                images_to_check--;
                if (q < my_proc) {
                    int flag_set = 1;
                    comm_write(q, &sync_flags[my_proc].value, &flag_set,
                            sizeof(flag_set), 1, NULL);
                }

                if (enable_get_cache)
                    refetch_cache(q);
            }
        }
        comm_service();
    }
}

static void comm_sync_images_sense_rev(hashed_image_list_t *image_list,
                              int image_count, int *status, int stat_len,
                              char *errmsg, int errmsg_len)
{
    int i;
    hashed_image_list_t *list_item;

    for (list_item = image_list, i = 0; i < image_count; i++) {
        int q;
        /* if image_list is NULL, we sync with all images */
        if (list_item != NULL) {
            q = list_item->image_id - 1;
            list_item = list_item->hh.next;
        } else {
            q = i;
        }

        if (my_proc != q) {
            short sense = sync_flags[q].t.sense % 2 + 1;
            sync_flags[q].t.sense = sense;
            comm_write(q, &sync_flags[my_proc].t.val, &sense,
                    sizeof(sense), 1, NULL);
        }
    }

    for (list_item = image_list, i = 0; i < image_count; i++) {
        int q;
        /* if image_list is NULL, we sync with all images */
        if (list_item != NULL) {
            q = list_item->image_id - 1;
            list_item = list_item->hh.next;
        } else {
            q = i;
        }

        if (my_proc == q)
            continue;

        check_for_error_stop();


        while (!sync_flags[q].t.val) {
            comm_service();
            LOAD_STORE_FENCE();

            if (stopped_image_exists[q]) {
                /* q has stopped */
                if (status != NULL) {
                    *((INT2 *) status) = STAT_STOPPED_IMAGE;
                    LOAD_STORE_FENCE();
                    return;
                } else {
                    /* error termination */
                    Error("Image %d attempted to synchronize with "
                          "stopped image %d.", _this_image, q+1);
                    /* doesn't reach */
                }
            }
        }

        short x;
        x = (short) SYNC_SWAP((short *)&sync_flags[q].t.val, 0);
        if (x != sync_flags[q].t.sense) {
            /* already received the next notification */
            sync_flags[q].t.val = x;
        }

        if (enable_get_cache)
            refetch_cache(q);
    }
}

/***************************************************************
 *                        ATOMICS
 ***************************************************************/

void comm_swap_request(void *target, void *value, size_t nbytes,
                       int proc, void *retval)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    check_remote_address(proc + 1, target);
    if (nbytes == sizeof(int)) {
        void *remote_address = get_remote_address(target, proc);
        ARMCI_Rmw(ARMCI_SWAP, value, remote_address, 0, proc);
        (void) ARMCI_Rmw(ARMCI_SWAP, value, remote_address, 0, proc);
        memmove(retval, value, nbytes);
    } else if (nbytes == sizeof(long)) {
        void *remote_address = get_remote_address(target, proc);
        (void) ARMCI_Rmw(ARMCI_SWAP_LONG, value, remote_address, 0, proc);
        memmove(retval, value, nbytes);
    } else {
        char msg[100];
        sprintf(msg, "unsupported nbytes (%lu) in comm_swap_request",
                (unsigned long) nbytes);
        Error(msg);
    }
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void
comm_cswap_request(void *target, void *cond, void *value,
                   size_t nbytes, int proc, void *retval)
{
    check_remote_address(proc + 1, target);
    /* TODO */
    Error("comm_cswap_request not implemented for ARMCI comm layer");
}

void comm_fadd_request(void *target, void *value, size_t nbytes, int proc,
                       void *retval)
{
    long long old;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    check_remote_address(proc + 1, target);
    if (nbytes == sizeof(int)) {
        int ret;
        void *remote_address = get_remote_address(target, proc);
        ret = ARMCI_Rmw(ARMCI_FETCH_AND_ADD, retval,
                        remote_address, *(int *) value, proc);
    } else if (nbytes == sizeof(long)) {
        long ret;
        void *remote_address = get_remote_address(target, proc);
        ret = ARMCI_Rmw(ARMCI_FETCH_AND_ADD_LONG, retval,
                        remote_address, *(int *) value, proc);
    } else {
        char msg[100];
        sprintf(msg, "unsupported nbytes (%lu) in comm_fadd_request",
                (unsigned long) nbytes);
        Error(msg);
    }
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_add_request(void *target, void *value, size_t nbytes, int proc)
{
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    check_remote_address(proc + 1, target);
    if (nbytes == sizeof(int)) {
        int ret;
        void *remote_address = get_remote_address(target, proc);
        ARMCI_Rmw(ARMCI_FETCH_AND_ADD, &ret,
                  remote_address, *(int *) value, proc);
    } else if (nbytes == sizeof(long)) {
        long ret;
        void *remote_address = get_remote_address(target, proc);
        ARMCI_Rmw(ARMCI_FETCH_AND_ADD_LONG, &ret,
                   remote_address, *(int *) value, proc);
    } else {
        char msg[100];
        sprintf(msg, "unsupported nbytes (%lu) in comm_fadd_request",
                (unsigned long) nbytes);
        Error(msg);
    }
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_fstore_request(void *target, void *value, size_t nbytes,
                         int proc, void *retval)
{
    long long old;
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    check_remote_address(proc + 1, target);
    memmove(&old, value, nbytes);
    if (nbytes == sizeof(int)) {
        void *remote_address = get_remote_address(target, proc);
        ARMCI_Rmw(ARMCI_SWAP, value, remote_address, 0, proc);
        memmove(retval, value, nbytes);
        memmove(value, &old, nbytes);
    } else if (nbytes == sizeof(long)) {
        void *remote_address = get_remote_address(target, proc);
        ARMCI_Rmw(ARMCI_SWAP_LONG, value, remote_address, 0, proc);
        memmove(retval, value, nbytes);
        memmove(value, &old, nbytes);
    } else {
        char msg[100];
        sprintf(msg, "unsupported nbytes (%lu) in comm_fstore_request",
                (unsigned long) nbytes);
        Error(msg);
    }
    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

/***************************************************************
 *                    Local memory allocations
 ***************************************************************/

void *comm_lcb_malloc(size_t size)
{
    void *ptr;

    check_for_error_stop();

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    /* allocate out of asymmetric heap if there is sufficient enough room */
    ptr = coarray_asymmetric_allocate_if_possible_(size);
    if (!ptr) {
        ptr = malloc(size);
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return ptr;
}

void comm_lcb_free(void *ptr)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    check_for_error_stop();

    if (!ptr) {
        LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
        return;
    }

    if (ptr < coarray_start_all_images[my_proc] &&
        ptr >= (coarray_start_all_images[my_proc] + shared_memory_size))
        free(ptr);
    else {
        /* in shared memory segment, which means it was allocated using
           coarray_asymmetric_allocate_ */
        coarray_asymmetric_deallocate_(ptr);
    }
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

void *comm_malloc(size_t size)  //To make it sync with gasnet
{
    return malloc(size);
}

void comm_free(void *ptr)       //To make it sync with gasnet
{
    if (!ptr)
        return;
    free(ptr);
}

/***************************************************************
 *                  Read/Write Communication
 ***************************************************************/

void comm_service()
{
    /* does nothing much right now */

    /* in case this is call in a spin-loop, sleep every SLEEP_INTERVAL calls
     */
    const unsigned long  SLEEP_INTERVAL = 1000000;
    static unsigned long count = 0;

    check_for_error_stop();

    if (count % SLEEP_INTERVAL == 0) usleep(1);
    count++;
}


void comm_nbread(size_t proc, void *src, void *dest, size_t nbytes,
                 comm_handle_t * hdl)
{
    void *remote_src;

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc && nbytes <= SMALL_XFER_SIZE) {
        memcpy(dest, src, nbytes);
        if (hdl != NULL)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    remote_src = get_remote_address(src, proc);
    LIBCAF_TRACE(LIBCAF_LOG_COMM,
                 "src: %p, remote_src: %p, offset: %p "
                 "start_all_images[proc]: %p, start_all_images[my_proc]: %p",
                 src, remote_src, comm_address_translation_offset(proc),
                 coarray_start_all_images[proc],
                 coarray_start_all_images[my_proc]);
    if (nb_mgr[PUTS].handles[proc]) {
        wait_on_pending_accesses(proc, remote_src, nbytes, PUTS);
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "Finished waiting for"
                     " pending puts on %p on image %lu. Min:%p, Max:%p",
                     remote_src, proc + 1,
                     nb_mgr[PUTS].min_nb_address[proc],
                     nb_mgr[PUTS].max_nb_address[proc]);
    }
    if (enable_get_cache)
        cache_check_and_get(proc, remote_src, nbytes, dest);
    else {
        int in_progress = 0;
        armci_hdl_t *handle;

        PROFILE_RMA_LOAD_BEGIN(proc, nbytes);

        handle = get_next_armci_handle(GETS);
        ARMCI_INIT_HANDLE(handle);
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "Before ARMCI_NbGet from %p on"
                     " image %lu to %p size %lu",
                     remote_src, proc + 1, dest, nbytes);
        ARMCI_NbGet(remote_src, dest, (int) nbytes, (int) proc, handle);

        in_progress = (ARMCI_Test(handle) == 0);

        if (in_progress == 1) {
            struct handle_list *handle_node =
                get_next_handle(proc, remote_src, dest, nbytes, GETS);

            handle_node->handle = handle;

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_LOAD_DEFERRED_END(proc);
        } else if (hdl != NULL) {
            /* get has completed */
            *hdl = NULL;
            return_armci_handle((armci_handle_x_t *) handle, GETS);

            PROFILE_RMA_LOAD_END(proc);
        }
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "After ARMCI_NbGet from %p on"
                     " image %lu to %p size %lu *hdl=%p",
                     remote_src, proc + 1, dest, nbytes, *hdl);
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_read(size_t proc, void *src, void *dest, size_t nbytes)
{
    void *remote_src;

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc) {
        memcpy(dest, src, nbytes);

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    remote_src = get_remote_address(src, proc);
    LIBCAF_TRACE(LIBCAF_LOG_COMM,
                 "src: %p, remote_src: %p, offset: %p "
                 "start_all_images[proc]: %p, start_all_images[my_proc]: %p",
                 src, remote_src, comm_address_translation_offset(proc),
                 coarray_start_all_images[proc],
                 coarray_start_all_images[my_proc]);
    if (nb_mgr[PUTS].handles[proc]) {
        wait_on_pending_accesses(proc, remote_src, nbytes, PUTS);
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "Finished waiting for"
                     " pending puts on %p on image %lu. Min:%p, Max:%p",
                     remote_src, proc + 1,
                     nb_mgr[PUTS].min_nb_address[proc],
                     nb_mgr[PUTS].max_nb_address[proc]);
    }
    if (enable_get_cache)
        cache_check_and_get(proc, remote_src, nbytes, dest);
    else {
        PROFILE_RMA_LOAD_BEGIN(proc, nbytes);
        ARMCI_Get(remote_src, dest, (int) nbytes, (int) proc);
        PROFILE_RMA_LOAD_END(proc);
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_write_from_lcb(size_t proc, void *dest, void *src, size_t nbytes,
                         int ordered, comm_handle_t * hdl)
{
    void *remote_dest;

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc && nbytes <= SMALL_XFER_SIZE) {
        memcpy(dest, src, nbytes);
        comm_lcb_free(src);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;

        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    remote_dest = get_remote_address(dest, proc);
    if (ordered) {
        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        if (hdl != (void *) -1) {
            armci_hdl_t *handle;
            handle = get_next_armci_handle(PUTS);
            ARMCI_INIT_HANDLE(handle);
            struct handle_list *handle_node =
                get_next_handle(proc, remote_dest, src, nbytes, PUTS);
            handle_node->handle = handle;
            ARMCI_NbPut(src, remote_dest, nbytes, proc,
                        handle_node->handle);
            handle_node->next = 0;
            update_nb_address_block(remote_dest, proc, nbytes, PUTS);
            LIBCAF_TRACE(LIBCAF_LOG_COMM,
                         "After ARMCI_NbPut to %p on image %lu. Min:%p, Max:%p",
                         remote_dest,
                         proc + 1,
                         nb_mgr[PUTS].min_nb_address[proc],
                         nb_mgr[PUTS].max_nb_address[proc]);

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else {
            /* block until remote completion */
            ARMCI_Put(src, remote_dest, nbytes, proc);
            comm_lcb_free(src);
            wait_on_pending_puts(proc);

            PROFILE_RMA_STORE_END(proc);
        }

    } else {                    /* ordered == 0 */
        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        int in_progress = 0;
        armci_hdl_t *handle;
        handle = get_next_armci_handle(PUTS);
        ARMCI_INIT_HANDLE(handle);

        ARMCI_NbPut(src, remote_dest, nbytes, proc, handle);
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "After ARMCI_NbPut to %p on image %lu.",
                     remote_dest, proc + 1);

        in_progress = (ARMCI_Test(handle) == 0);

        if (in_progress == 1 && hdl != (void *)-1) {
            struct handle_list *handle_node =
                get_next_handle(proc, NULL, src, 0, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (handle == NULL) {
            /* put has completed */
            comm_lcb_free(src);
            return_armci_handle((armci_handle_x_t *) handle, PUTS);
            if (hdl != NULL && hdl != (void *)-1)
                *hdl = NULL;

            PROFILE_RMA_STORE_END(proc);
        } else if (hdl == (void *) -1) {
            /* block until it remotely completes */
            wait_on_pending_puts(proc);
            comm_lcb_free(src);
            return_armci_handle((armci_handle_x_t *) handle, PUTS);

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
void comm_write(size_t proc, void *dest, void *src,
                size_t nbytes, int ordered, comm_handle_t * hdl)
{
    void *remote_dest;

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

#if defined(ENABLE_LOCAL_MEMCPY)
    if (my_proc == proc && nbytes <= SMALL_XFER_SIZE) {
        memcpy(dest, src, nbytes);

        if (hdl != NULL && hdl != (void *) -1)
            *hdl = NULL;
        LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
        return;
        /* does not reach */
    }
#endif

    remote_dest = get_remote_address(dest, proc);
    if (ordered) {
        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);
        /* guarantees local completion */
        ARMCI_Put(src, remote_dest, nbytes, proc);

        if (hdl != (void *) -1) {
            update_nb_address_block(remote_dest, proc, nbytes, PUTS);

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else {
            /* block until remote completion */
            wait_on_pending_puts(proc);

            PROFILE_RMA_STORE_END(proc);
        }

        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "After ARMCI_Put to %p on image %lu. Min:%p, Max:%p",
                     remote_dest,
                     proc + 1,
                     nb_mgr[PUTS].min_nb_address[proc],
                     nb_mgr[PUTS].max_nb_address[proc]);
    } else {                    /* ordered == 0 */
        if (nb_mgr[PUTS].handles[proc])
            wait_on_pending_accesses(proc, remote_dest, nbytes, PUTS);

        PROFILE_RMA_STORE_BEGIN(proc, nbytes);

        int in_progress = 0;
        armci_hdl_t *handle;
        handle = get_next_armci_handle(PUTS);
        ARMCI_INIT_HANDLE(handle);

        ARMCI_NbPut(src, remote_dest, nbytes, proc, handle);
        LIBCAF_TRACE(LIBCAF_LOG_COMM,
                     "After ARMCI_Put to %p on image %lu.",
                     remote_dest, proc + 1);

        in_progress = (ARMCI_Test(handle) == 0);

        if (in_progress == 1 && hdl != (void *)-1) {
            struct handle_list *handle_node =
                get_next_handle(proc, NULL, src, 0, PUTS);
            handle_node->handle = handle;
            handle_node->next = 0;

            if (hdl != NULL)
                *hdl = handle_node;

            PROFILE_RMA_STORE_END(proc);
        } else if (handle == NULL) {
            /* put has completed */
            if (hdl != NULL && hdl != (void *)-1)
                *hdl = NULL;
            return_armci_handle((armci_handle_x_t *) handle, PUTS);

            PROFILE_RMA_STORE_DEFERRED_END(proc);
        } else if (hdl == (void *) -1) {
            /* block until it remotely completes */
            wait_on_pending_puts(proc);
            return_armci_handle((armci_handle_x_t *) handle, PUTS);

            PROFILE_RMA_STORE_END(proc);
        }

    }

    if (enable_get_cache)
        update_cache(proc, remote_dest, nbytes, src);

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


void comm_strided_nbread(size_t proc,
                         void *src, const size_t src_strides_[],
                         void *dest, const size_t dest_strides_[],
                         const size_t count_[], size_t stride_levels,
                         comm_handle_t * hdl)
{
    void *remote_src;
    int src_strides[stride_levels];
    int dest_strides[stride_levels];
    int count[stride_levels + 1];

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    /* ARMCI uses int for strides and count arrays */
    int i;
    for (i = 0; i < stride_levels; i++) {
        src_strides[i] = src_strides_[i];
        dest_strides[i] = dest_strides_[i];
        count[i] = count_[i];
    }
    count[stride_levels] = count_[stride_levels];

#if defined(ENABLE_LOCAL_MEMCPY)
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

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Finished waiting for"
                         " pending puts on %p on image %lu. Min:%p,Max:%p",
                         remote_src, proc + 1,
                         nb_mgr[PUTS].min_nb_address[proc],
                         nb_mgr[PUTS].max_nb_address[proc]);
        }

        if (enable_get_cache) {

            cache_check_and_get_strided(remote_src, src_strides,
                                        dest, dest_strides, count,
                                        stride_levels, proc);

        } else {

            PROFILE_RMA_LOAD_STRIDED_BEGIN(proc, stride_levels, count);

            int in_progress = 0;
            armci_hdl_t *handle;
            handle = get_next_armci_handle(GETS);
            ARMCI_INIT_HANDLE(handle);
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "ARMCI_GetS from"
                         " %p on image %lu to %p (stride_levels= %u)",
                         remote_src, proc + 1, dest, stride_levels);
            ARMCI_NbGetS(remote_src, src_strides, dest, dest_strides,
                         count, stride_levels, proc, handle);

            in_progress = (ARMCI_Test(handle) == 0);

            if (in_progress == 1) {
                struct handle_list *handle_node =
                    get_next_handle(proc, remote_src, dest, size, GETS);

                handle_node->handle = handle;

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_LOAD_DEFERRED_END(proc);
            } else if (hdl != NULL) {
                *hdl = NULL;
                return_armci_handle((armci_handle_x_t *) handle, GETS);

                PROFILE_RMA_LOAD_END(proc);
            }

        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}

void comm_strided_read(size_t proc,
                       void *src, const size_t src_strides_[],
                       void *dest, const size_t dest_strides_[],
                       const size_t count_[], size_t stride_levels)
{
    void *remote_src;
    int src_strides[stride_levels];
    int dest_strides[stride_levels];
    int count[stride_levels + 1];

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    /* ARMCI uses int for strides and count arrays */
    int i;
    for (i = 0; i < stride_levels; i++) {
        src_strides[i] = src_strides_[i];
        dest_strides[i] = dest_strides_[i];
        count[i] = count_[i];
    }
    count[stride_levels] = count_[stride_levels];

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

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "Finished waiting for"
                         " pending puts on %p on image %lu. Min:%p,Max:%p",
                         remote_src, proc + 1,
                         nb_mgr[PUTS].min_nb_address[proc],
                         nb_mgr[PUTS].max_nb_address[proc]);
        }

        if (enable_get_cache) {

            cache_check_and_get_strided(remote_src, src_strides,
                                        dest, dest_strides, count,
                                        stride_levels, proc);

        } else {

            PROFILE_RMA_LOAD_STRIDED_BEGIN(proc, stride_levels, count);

            ARMCI_GetS(remote_src, src_strides, dest, dest_strides, count,
                       stride_levels, proc);

            PROFILE_RMA_LOAD_END(proc);
        }
    }

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "exit");
}


void comm_strided_write_from_lcb(size_t proc,
                                 void *dest, const size_t dest_strides_[],
                                 void *src, const size_t src_strides_[],
                                 const size_t count_[],
                                 size_t stride_levels, int ordered,
                                 comm_handle_t * hdl)
{
    void *remote_dest;
    int src_strides[stride_levels];
    int dest_strides[stride_levels];
    int count[stride_levels + 1];

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    check_for_error_stop();

    /* ARMCI uses int for strides and count arrays */
    int i;
    for (i = 0; i < stride_levels; i++) {
        src_strides[i] = src_strides_[i];
        dest_strides[i] = dest_strides_[i];
        count[i] = count_[i];
    }
    count[stride_levels] = count_[stride_levels];

#if defined(ENABLE_LOCAL_MEMCPY)
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

            if (hdl != (void *) -1) {
                armci_hdl_t *handle;
                handle = get_next_armci_handle(PUTS);
                ARMCI_INIT_HANDLE(handle);
                struct handle_list *handle_node =
                    get_next_handle(proc, remote_dest, src, size, PUTS);
                handle_node->handle = handle;
                ARMCI_NbPutS(src, src_strides, remote_dest, dest_strides,
                             count, stride_levels, proc,
                             handle_node->handle);
                handle_node->next = 0;
                update_nb_address_block(remote_dest, proc, size, PUTS);

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else {
                /* block until remote completion */
                ARMCI_PutS(src, src_strides, remote_dest, dest_strides,
                           count, stride_levels, proc);
                comm_lcb_free(src);
                wait_on_pending_puts(proc);

                PROFILE_RMA_STORE_END(proc);
            }

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "After ARMCI_NbPutS"
                         " to %p on image %lu. Min:%p, Max:%p",
                         remote_dest, proc + 1,
                         nb_mgr[PUTS].min_nb_address[proc],
                         nb_mgr[PUTS].max_nb_address[proc]);
        } else {                /* ordered == 0 */
            size_t size;
            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];
            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            int in_progress = 0;
            armci_hdl_t *handle;
            handle = get_next_armci_handle(PUTS);
            ARMCI_INIT_HANDLE(handle);

            ARMCI_NbPutS(src, src_strides, remote_dest, dest_strides,
                         count, stride_levels, proc, handle);
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "After ARMCI_NbPutS"
                         " to %p on image %lu.", remote_dest, proc + 1);

            in_progress = (ARMCI_Test(handle) == 0);

            if (in_progress == 1 && hdl != (void *)-1) {
                struct handle_list *handle_node =
                    get_next_handle(proc, NULL, src, 0, PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == NULL) {
                /* put has completed */
                comm_lcb_free(src);
                return_armci_handle((armci_handle_x_t *) handle, PUTS);
                if (hdl != NULL && hdl != (void *)-1)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                wait_on_pending_puts(proc);
                comm_lcb_free(src);
                return_armci_handle((armci_handle_x_t *) handle, PUTS);

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
                        void *dest,
                        const size_t dest_strides_[], void *src,
                        const size_t src_strides_[],
                        const size_t count_[],
                        size_t stride_levels, int ordered,
                        comm_handle_t * hdl)
{
    void *remote_dest;
    int src_strides[stride_levels];
    int dest_strides[stride_levels];
    int count[stride_levels + 1];

    check_for_error_stop();

    LIBCAF_TRACE(LIBCAF_LOG_COMM, "entry");

    /* ARMCI uses int for strides and count arrays */
    int i;
    for (i = 0; i < stride_levels; i++) {
        src_strides[i] = src_strides_[i];
        dest_strides[i] = dest_strides_[i];
        count[i] = count_[i];
    }
    count[stride_levels] = count_[stride_levels];

#if defined(ENABLE_LOCAL_MEMCPY)
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

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            /* guarantees local completion */
            ARMCI_PutS(src, src_strides, remote_dest, dest_strides,
                       count, stride_levels, proc);

            if (hdl != (void *) -1) {
                update_nb_address_block(remote_dest, proc, size, PUTS);

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else {
                /* block until it remotely completes */
                wait_on_pending_puts(proc);

                PROFILE_RMA_STORE_END(proc);
            }

            LIBCAF_TRACE(LIBCAF_LOG_COMM, "After ARMCI_PutS"
                         " to %p on image %lu. Min:%p, Max:%p",
                         remote_dest, proc + 1,
                         nb_mgr[PUTS].min_nb_address[proc],
                         nb_mgr[PUTS].max_nb_address[proc]);
        } else {                /* ordered == 0 */
            size_t size;
            /* calculate max size (very conservative!) */
            size = (src_strides[stride_levels - 1] * count[stride_levels])
                + count[0];
            if (nb_mgr[PUTS].handles[proc])
                wait_on_pending_accesses(proc, remote_dest, size, PUTS);

            PROFILE_RMA_STORE_STRIDED_BEGIN(proc, stride_levels, count);

            int in_progress = 0;
            armci_hdl_t *handle;
            handle = get_next_armci_handle(PUTS);
            ARMCI_INIT_HANDLE(handle);

            ARMCI_NbPutS(src, src_strides, remote_dest, dest_strides,
                         count, stride_levels, proc, handle);
            LIBCAF_TRACE(LIBCAF_LOG_COMM, "After ARMCI_NbPutS"
                         " to %p on image %lu. ", remote_dest, proc + 1);

            in_progress = (ARMCI_Test(handle) == 0);

            if (in_progress == 1 && hdl != (void *)-1) {
                struct handle_list *handle_node =
                    get_next_handle(proc, NULL, src, 0, PUTS);
                handle_node->handle = handle;
                handle_node->next = 0;

                if (hdl != NULL)
                    *hdl = handle_node;

                PROFILE_RMA_STORE_DEFERRED_END(proc);
            } else if (handle == NULL) {
                /* put has completed */
                return_armci_handle((armci_handle_x_t *) handle, PUTS);
                if (hdl != NULL && hdl != (void *)-1)
                    *hdl = NULL;

                PROFILE_RMA_STORE_END(proc);
            } else if (hdl == (void *) -1) {
                /* block until it remotely completes */
                wait_on_pending_puts(proc);
                return_armci_handle((armci_handle_x_t *) handle, PUTS);

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
