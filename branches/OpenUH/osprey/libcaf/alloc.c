/*
 Runtime library for supporting Coarray Fortran

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
#include <math.h>
#include <string.h>
#include <assert.h>
#include <unistd.h>

#include "caf_rtl.h"
#include "alloc.h"
#include "comm.h"

#include "trace.h"
#include "profile.h"
#include "util.h"


/* describes memory usage status */
mem_usage_info_t *mem_info;

/* common_slot is a node in the shared memory link-list that keeps track
 * of available memory that can used for both allocatable coarrays and
 * asymmetric data. It is the only handle to access the link-list.*/
shared_memory_slot_t *common_slot;

/* LOCAL FUNCTION DECLARATIONIS */
static struct shared_memory_slot *find_empty_shared_memory_slot_above
    (struct shared_memory_slot *slot, unsigned long var_size);
static struct shared_memory_slot *find_empty_shared_memory_slot_below
    (struct shared_memory_slot *slot, unsigned long var_size);
static void *split_empty_shared_memory_slot_from_top
    (struct shared_memory_slot *slot, unsigned long var_size);
static void *split_empty_shared_memory_slot_from_bottom
    (struct shared_memory_slot *slot, unsigned long var_size);

static void print_slots_below(struct shared_memory_slot *slot);

static struct shared_memory_slot *find_shared_memory_slot_above
    (struct shared_memory_slot *slot, void *address);
static struct shared_memory_slot *find_shared_memory_slot_below
    (struct shared_memory_slot *slot, void *address);

static void join_3_shared_memory_slots(struct shared_memory_slot *slot);
static void join_with_prev_shared_memory_slot
    (struct shared_memory_slot *slot);
static void join_with_next_shared_memory_slot
    (struct shared_memory_slot *slot);

static void empty_shared_memory_slot(struct shared_memory_slot *slot);
static void free_prev_slots_recursively(struct shared_memory_slot *slot);
static void free_next_slots_recursively(struct shared_memory_slot *slot);


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * SHARED MEMORY MANAGEMENT FUNCTIONS
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Note: The term 'shared memory' is used in the PGAS sense, i.e. the
 * memory may not be physically shared. It can however be directly
 * accessed from any other image. This is done by the pinning/registering
 * memory by underlying communication layer (GASNet/ARMCI).
 *
 * During comm_init GASNet/ARMCI creates a big chunk of shared memory.
 * Static coarrays are allocated memory from this chunk. The remaining
 * memory is left for allocatable coarrays and pointers in coarrays of
 * derived datatype (henceforth referred as asymmetric data).
 * It returns the starting address and size of this remaining memory chunk
 * by populating the structure common_slot(explained later).
 *
 * Normal fortan allocation calls are intercepted to check whether they
 * are for coarrays or asymmetric data. If yes, the following functions
 * are called which are defined below.
 *  void* coarray_allocatable_allocate_(unsigned long var_size);
 *  void* coarray_asymmetric_allocate_(unsigned long var_size);
 * Since allocatable coarrays must have symmetric address, a seperate heap
 * must be created for asymmetric data. To avoid wasting memory space by
 * statically reserving it, we use the top of heap for allocatable
 * coarrays (which grows downward) and the bottom of heap for asymmetric
 * data(which grows up). A link-list of struct shared_memory_slot is
 * used to manage allocation and deallocation.
 *
 * common_slot is an empty slot which always lies in between allocatable
 * heap and asymmetric heap, and used by both to reserve memory.
 *                          _________
 *                          | Alloc |
 *                          | heap  |
 *                          =========
 *                          | Common|
 *                          |  slot |
 *                          =========
 *                          | asymm |
 *                          | heap  |
 *                          |_______|
 * Allocatable heap comsumes common_slot from top, while assymetric heap
 * consumes from bottom. Each allocation address and size is stored in
 * a sperate slot (node in the list). Each slot has a full-empty bit(feb).
 * During deallocation (using function coarray_deallocate_) the feb is set
 * to 0 (empty). If any neighboring slot is empty, they are merged. Hence,
 * when a slot bordering common-slot is deallocated, the common-slot
 * grows.
 *
 * If there is no more space left in common slot, empty slots are used
 * from above for allocable coarrays or from below for asymmetric data.
 *
 * During exit, the function coarray_free_all_shared_memory_slots()
 * is used to free all nodes in the shared memory list.
 */

/* Static function used to find empty memory slots while reserving
 * memory for allocatable coarrays */
static struct shared_memory_slot *find_empty_shared_memory_slot_above
    (struct shared_memory_slot *slot, unsigned long var_size) {
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    while (slot) {
        if (slot->feb == 0 && slot->size >= var_size) {
            LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
            return slot;
        }
        slot = slot->prev;
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return 0;
}

/* Static function used to find empty memory slots while reserving
 * memory for assymetric coarrays */
static struct shared_memory_slot *find_empty_shared_memory_slot_below
    (struct shared_memory_slot *slot, unsigned long var_size) {
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    while (slot) {
        if (slot->feb == 0 && slot->size >= var_size) {
            LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
            return slot;
        }
        slot = slot->next;
    }
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return 0;
}


/* Static function used to reserve top part of an empty memory slot
 * for allocatable coarrays. Returns the memory address allocated */
static void *split_empty_shared_memory_slot_from_top
    (struct shared_memory_slot *slot, unsigned long var_size) {
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    struct shared_memory_slot *new_empty_slot;
    new_empty_slot = (struct shared_memory_slot *) malloc
        (sizeof(struct shared_memory_slot));
    new_empty_slot->addr = slot->addr + var_size;
    new_empty_slot->size = slot->size - var_size;
    new_empty_slot->feb = 0;
    new_empty_slot->next = slot->next;
    new_empty_slot->prev = slot;
    slot->size = var_size;
    slot->feb = 1;
    slot->next = new_empty_slot;
    if (common_slot == slot)
        common_slot = new_empty_slot;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return slot->addr;
}

/* Static function used to reserve bottom part of an empty memory slot
 * for asymmetric data. Returns the memory address allocated*/
static void *split_empty_shared_memory_slot_from_bottom
    (struct shared_memory_slot *slot, unsigned long var_size) {
    struct shared_memory_slot *new_full_slot;
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");
    new_full_slot = (struct shared_memory_slot *) malloc
        (sizeof(struct shared_memory_slot));
    new_full_slot->addr = slot->addr + slot->size - var_size;
    new_full_slot->size = var_size;
    new_full_slot->feb = 1;
    new_full_slot->next = slot->next;
    new_full_slot->prev = slot;
    slot->size = slot->size - var_size;

    if (slot->next)
        slot->next->prev = new_full_slot;

    slot->next = new_full_slot;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return new_full_slot->addr;
}

/* Memory allocation function for allocatable coarrays. It is invoked
 * from fortran allocation function _ALLOCATE in
 * osprey/libf/fort/allocation.c
 * It finds empty slot from the shared memory list (common_slot & above)
 * and then splits the slot from top
 * Note: there is barrier as it is a collective operation*/
void *coarray_allocatable_allocate_(unsigned long var_size)
{
    struct shared_memory_slot *empty_slot;
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    empty_slot = find_empty_shared_memory_slot_above(common_slot,
                                                     var_size);
    if (empty_slot == 0)
        Error
            ("No more shared memory space available for allocatable coarray. "
             "Set environment variable %s or cafrun option for more space.",
             ENV_IMAGE_HEAP_SIZE);

    if (mem_info) {
        size_t current_size = mem_info->current_heap_usage + var_size;
        mem_info->current_heap_usage = current_size;
        if (mem_info->max_heap_usage < current_size)
            mem_info->max_heap_usage = current_size;
    }
    // implicit barrier in case of allocatable.
    CALLSITE_TIMED_TRACE(SYNC, SYNC, comm_barrier_all);

    if (empty_slot != common_slot && empty_slot->size == var_size) {
        empty_slot->feb = 1;
        LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
        return empty_slot->addr;
    }

    void *retval =
        split_empty_shared_memory_slot_from_top(empty_slot, var_size);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return retval;
}

/* Memory allocation function for asymmetric data. It is invoked
 * from fortran allocation function _ALLOCATE in
 * osprey/libf/fort/allocation.c
 * It finds empty slot from the shared memory list (common_slot & below)
 * and then splits the slot from bottom */
void *coarray_asymmetric_allocate_(unsigned long var_size)
{
    struct shared_memory_slot *empty_slot;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");


    empty_slot = find_empty_shared_memory_slot_below(common_slot,
                                                     var_size);
    if (empty_slot == 0)
        Error("No more shared memory space available for asymmetric data. "
              "Set environment variable %s or cafrun option for more space.",
              ENV_IMAGE_HEAP_SIZE);


    /* update heap usage info */
    size_t current_size = mem_info->current_heap_usage + var_size;
    mem_info->current_heap_usage = current_size;
    if (mem_info->max_heap_usage < current_size)
        mem_info->max_heap_usage = current_size;

    if (empty_slot != common_slot && empty_slot->size == var_size) {
        empty_slot->feb = 1;
        LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
        return empty_slot->addr;
    }

    void *retval = split_empty_shared_memory_slot_from_bottom(empty_slot,
                                                              var_size);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");

    return retval;
}

/* Memory allocation function for asymmetric data. It is invoked
 * from fortran allocation function _ALLOCATE in
 * osprey/libf/fort/allocation.c
 * It finds empty slot from the shared memory list (common_slot & below)
 * and then splits the slot from bottom */
void *coarray_asymmetric_allocate_if_possible_(unsigned long var_size)
{
    struct shared_memory_slot *empty_slot;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");


    empty_slot = find_empty_shared_memory_slot_below(common_slot,
                                                     var_size);
    if (empty_slot == 0) {
        LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "Couldn't find empty slot.");
        return 0;
    }

    /* update heap usage info */
    size_t current_size = mem_info->current_heap_usage + var_size;
    mem_info->current_heap_usage = current_size;
    if (mem_info->max_heap_usage < current_size)
        mem_info->max_heap_usage = current_size;

    if (empty_slot != common_slot && empty_slot->size == var_size) {
        empty_slot->feb = 1;
        return empty_slot->addr;
    }

    void *retval = split_empty_shared_memory_slot_from_bottom(empty_slot,
                                                              var_size);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");

    return retval;
}

/* Static function called from coarray_deallocate.
 * It finds the slot with the address (passed in param) by searching
 * the shared memory link-list starting from the slot(passed in param)
 * and above it. Used for finding slots containing allocatable coarrays*/
static struct shared_memory_slot *find_shared_memory_slot_above
    (struct shared_memory_slot *slot, void *address) {
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    while (slot) {
        if (slot->feb == 1 && slot->addr == address)
            return slot;
        slot = slot->prev;
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return 0;
}

/* Static function called from coarray_deallocate.
 * It finds the slot with the address (passed in param) by searching
 * the shared memory link-list starting from the slot(passed in param)
 * and below it. Used for finding slots containing asymmetric data*/
static struct shared_memory_slot *find_shared_memory_slot_below
    (struct shared_memory_slot *slot, void *address) {
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    while (slot) {
        if (slot->feb == 1 && slot->addr == address)
            return slot;
        slot = slot->next;
    }

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
    return 0;
}

/* Static function called from empty_shared_memory_slot (used in dealloc).
 * Merge slot with the slot above & below it. If any of these slots is the
 * common-slot, the common-slot points to the merged slot */
static void join_3_shared_memory_slots(struct shared_memory_slot *slot)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    slot->prev->size = slot->prev->size + slot->size + slot->next->size;
    slot->prev->next = slot->next->next;
    if (slot->next->next)
        slot->next->next->prev = slot->prev;
    if (common_slot == slot || common_slot == slot->next)
        common_slot = slot->prev;
    comm_free(slot->next);
    comm_free(slot);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* Static function called from empty_shared_memory_slot (used in dealloc).
 * Merge slot with the slot above it. If any of these slots is the
 * common-slot, the common-slot points to the merged slot */
static void join_with_prev_shared_memory_slot(struct shared_memory_slot
                                              *slot)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    slot->prev->size += slot->size;
    slot->prev->next = slot->next;
    if (slot->next)
        slot->next->prev = slot->prev;
    if (common_slot == slot)
        common_slot = slot->prev;
    comm_free(slot);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* Static function called from empty_shared_memory_slot (used in dealloc).
 * Merge slot with the slot below it. If any of these slots is the
 * common-slot, the common-slot points to the merged slot */
static void join_with_next_shared_memory_slot(struct shared_memory_slot
                                              *slot)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    struct shared_memory_slot *tmp;
    tmp = slot->next;
    slot->size += slot->next->size;
    if (slot->next->next)
        slot->next->next->prev = slot;
    slot->next = slot->next->next;
    if (common_slot == tmp)
        common_slot = slot;
    comm_free(tmp);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* Static function called from coarray_deallocate.
 * Empties the slot passed in parameter:
 * 1) set full-empty-bit to 0
 * 2) merge the slot with neighboring empty slots (if found) */
static void empty_shared_memory_slot(struct shared_memory_slot *slot)
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    slot->feb = 0;
    if (slot->prev && (slot->prev->feb == 0) && slot->next
        && (slot->next->feb == 0))
        join_3_shared_memory_slots(slot);
    else if (slot->prev && (slot->prev->feb == 0))
        join_with_prev_shared_memory_slot(slot);
    else if (slot->next && (slot->next->feb == 0))
        join_with_next_shared_memory_slot(slot);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* Memory deallocation function for allocatable coarrays and asymmetric
 * data. It is invoked from fortran allocation function _DEALLOCATE in
 * osprey/libf/fort/allocation.c
 * It finds the slot from the shared memory list, set full-empty-bit to 0,
 * and then merge the slot with neighboring empty slots (if found)
 * Note: there is implicit barrier for allocatable coarrays*/
void coarray_deallocate_(void *var_address)
{
    struct shared_memory_slot *slot;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    slot = find_shared_memory_slot_above(common_slot, var_address);
    if (slot) {
        // implicit barrier for allocatable
        CALLSITE_TIMED_TRACE(SYNC, SYNC, comm_barrier_all);
    } else
        slot = find_shared_memory_slot_below(common_slot, var_address);
    if (slot == 0) {
        LIBCAF_TRACE(LIBCAF_LOG_NOTICE, "Address%p not coarray.",
                     var_address);
        return;
    }

    /* update heap usage info if MEMORY_SUMMARY trace is enabled */
    mem_info->current_heap_usage -= slot->size;

    empty_shared_memory_slot(slot);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

void coarray_asymmetric_deallocate_(void *var_address)
{
    struct shared_memory_slot *slot;
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");


    slot = find_shared_memory_slot_below(common_slot, var_address);
    if (slot == 0) {
        LIBCAF_TRACE(LIBCAF_LOG_NOTICE, "Address%p not coarray.",
                     var_address);
        return;
    }

    /* update heap usage info if MEMORY_SUMMARY trace is enabled */
    mem_info->current_heap_usage -= slot->size;

    empty_shared_memory_slot(slot);

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* Static function called from coarray_free_all_shared_memory_slots()
 * during exit from program.
 * It recursively frees slots in the shared memory link-list starting
 * from slot passed in param and all slots above(previous) it. */
static void free_prev_slots_recursively(struct shared_memory_slot *slot)
{
    if (slot) {
        free_prev_slots_recursively(slot->prev);
        comm_free(slot);
    }
}

/* Static function called from coarray_free_all_shared_memory_slots()
 * during exit from program.
 * It recursively frees slots in the shared memory link-list starting
 * from slot passed in param and all slots below(next) it. */
static void free_next_slots_recursively(struct shared_memory_slot *slot)
{
    if (slot) {
        free_next_slots_recursively(slot->next);
        comm_free(slot);
    }
}

/* Function to delete the shared memory link-list.
 * Called during exit from comm_exit in armci_comm_layer.c or
 * gasnet_comm_layer.c.
 */
void coarray_free_all_shared_memory_slots()
{
    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "entry");

    free_prev_slots_recursively(common_slot->prev);
    free_next_slots_recursively(common_slot);

    /* update heap usage info */
    mem_info->current_heap_usage = 0;

    LIBCAF_TRACE(LIBCAF_LOG_MEMORY, "exit");
}

/* used for debugging to print memory slots below the specified slot */
#if defined (CAFRT_DEBUG)

static void print_slots_below(struct shared_memory_slot *slot)
{
    FILE *f;
    int i;
    struct shared_memory_slot *s;

    f = __trace_log_stream();

    if (!f)
        f = stderr;

    fprintf(f,
            "=======================================================\n");
    fprintf(f, "    Allocated Slots at/below slot %p\n", slot->addr);
    fprintf(f,
            "-------------------------------------------------------\n");
    s = slot;
    i = 1;
    while (s) {
        fprintf(f, "\t%d \t %p \t %10ld \t %d\n",
                i, s->addr, s->size, (int) s->feb);
        s = s->next;
        i++;
    }
    fprintf(f,
            "=======================================================\n");

    fflush(f);
}

#else

static inline void print_slots_below(struct shared_memory_slot *slot)
{
    return;
}

#endif
