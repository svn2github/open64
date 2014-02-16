/*
 Runtime library for supporting Coarray Fortran

 Copyright (C) 2013 University of Houston.

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
#include "utlist.h"
#include "caf_rtl.h"
#include "comm.h"
#include "util.h"
#include "profile.h"
#include "alloc.h"


typedef struct rma_node_t {
    int rmaid;
    int target;
    struct rma_node_t *next, *prev;
} rma_node_t;

extern unsigned long _this_image;
extern unsigned long _num_images;

rma_node_t *saved_store_rma_list = NULL;
rma_node_t *saved_load_rma_list = NULL;

static int epik_avail = 0;
int profiling_enabled = 0;
int epik_enabled = 0;
int stats_enabled = 0;
int in_rma_region = 0;
int rma_prof_rid = 0;

/* communication information for a particular target image */
typedef struct {
    long      get_rma_count;    /* total number of RMA GET requests to image */
    double    get_bytes_count;  /* total number of bytes sent to node */
    long      put_rma_count;    /* total number of RMA PUT requests to image */
    double    put_bytes_count;  /* total number of bytes received from node */
} rma_info_t;

static rma_info_t ** rma_node_stats;

caf_prof_groups_t prof_groups = CAFPROF_DEFAULT;

const char* CAFPROF_GRP       = "CAF";
const char* CAFPROF_GRP_MEM   = "CAF_MEM";
const char* CAFPROF_GRP_COMM  = "CAF_COMM";
const char* CAFPROF_GRP_SYNC  = "CAF_SYNC";
const char* CAFPROF_GRP_COLL  = "CAF_COLL";

static int rmaid_cmp(rma_node_t * a, rma_node_t * b)
{
    return (a->rmaid - b->rmaid);
}


void profile_init()
{
    epik_avail = (esd_open != NULL);
    if (epik_avail) {
        esd_open();
    }
}

void profile_stats_init()
{
    stats_enabled = get_env_flag(ENV_STATS, DEFAULT_ENABLE_STATS);

    if (!stats_enabled)
        return;

    /* we pre-allocate NUM_IMAGES bins, since that's an upper bound on the
     * total number of nodes used */
    rma_node_stats = (rma_info_t **)
        coarray_allocatable_allocate_(_num_images*sizeof(rma_info_t*), NULL);

    memset(rma_node_stats, 0, _num_images * sizeof(rma_info_t));

    if (_this_image == 1) {
        FILE *fp = fopen("cafrun-stats.out", "w");
        fprintf(fp, "%s \t %s \t %s \t %s \t %s \t %s \t %s\n",
                "id", "node", "target node", "#gets",
                "avg get size", "#puts", "avg put size");
        fclose(fp);
    }

    comm_barrier_all();
}

void profile_stats_dump()
{
    FILE *fp;

    if (!stats_enabled)
        return;

    /* each image writes its stats into the output file */

    comm_critical();

    fp = fopen("cafrun-stats.out", "a");

    int i;
    for (i = 0; i < _num_images; i++) {
        /* image-id, target-id, node-id, target-image-id, #reqs, avg-size */
        int my_node_id = (int) comm_get_node_id(_this_image-1);
        long get_rma_count, put_rma_count;
        double get_avg_size, put_avg_size;

        if (rma_node_stats[i] == NULL)
            continue;

        get_rma_count = rma_node_stats[i]->get_rma_count;
        put_rma_count = rma_node_stats[i]->put_rma_count;

        if (get_rma_count != 0)
            get_avg_size = rma_node_stats[i]->get_bytes_count/get_rma_count;
        else
            get_avg_size = 0;

        if (put_rma_count != 0)
            put_avg_size = rma_node_stats[i]->put_bytes_count/put_rma_count;
        else
            put_avg_size = 0;

        fprintf(fp, "%ld \t %d \t %d \t %ld \t %8.0lf \t %ld \t %8.0lf\n",
                _this_image-1, my_node_id, i,
                get_rma_count, get_avg_size,
                put_rma_count, put_avg_size);
    }

    fclose(fp);

    comm_end_critical();
}

void profile_rma_store_begin(int proc, int nelem)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;
    if (in_rma_region)
        Error("profile_rma_store_begin called within active rma region");

    rma_prof_rid = rma_prof_rid + 1;

    if (stats_enabled)
        profile_record_put(proc, rma_prof_rid, nelem);

    if (epik_enabled)
        elg_put_1ts(proc, rma_prof_rid, nelem);

    in_rma_region = 1;
}

void profile_rma_store_end(int proc)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;
    if (!in_rma_region)
        Error("profile_rma_load_end called outside of active rma region");

    if (epik_enabled)
        elg_put_1te_remote(proc, rma_prof_rid);

    in_rma_region = 0;
}

void profile_rma_store(int proc, int nelem)
{
}


void profile_rma_load_begin(int proc, int nelem)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;
    if (in_rma_region)
        Error("profile_rma_load_begin called within active rma region");

    rma_prof_rid = rma_prof_rid + 1;

    if (stats_enabled)
        profile_record_get(proc, rma_prof_rid, nelem);

    if (epik_enabled)
        elg_get_1ts_remote(proc, rma_prof_rid, nelem);

    in_rma_region = 1;
}

void profile_rma_load_end(int proc)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;
    if (!in_rma_region)
        Error("profile_rma_load_end called outside of active rma region");

    if (epik_enabled)
        elg_get_1te(proc, rma_prof_rid);

    in_rma_region = 0;
}

void profile_rma_load(int proc, int nelem)
{
}

/* compiler and internal API */

void profile_rma_nbstore_end(int proc, int rid)
{
    rma_node_t *rma_node, tmp;
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;

    if (epik_enabled)
        elg_put_1te_remote(proc, rid);

    /* remove this RMA from the save list */
    tmp.rmaid = rid;
    rma_node = NULL;
    DL_SEARCH(saved_store_rma_list, rma_node, &tmp, rmaid_cmp);
    if (rma_node)
        DL_DELETE(saved_store_rma_list, rma_node);

}

void profile_save_nbstore(int proc)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;
    profile_save_nbstore_rmaid(proc, rma_prof_rid);
}

void profile_save_nbstore_rmaid(int proc, int rid)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;
    rma_node_t *new_rma;
    if ((new_rma = malloc(sizeof(*new_rma))) == NULL)
        Error("malloc failed to allocate memory");

    new_rma->rmaid = rid;
    new_rma->target = proc;

    DL_APPEND(saved_store_rma_list, new_rma);
}


void profile_rma_nbload_end(int proc, int rid)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;
    rma_node_t *rma_node, tmp;

    if (epik_enabled)
        elg_get_1te(proc, rid);

    /* remove this RMA from the save list */
    tmp.rmaid = rid;
    rma_node = NULL;
    DL_SEARCH(saved_load_rma_list, rma_node, &tmp, rmaid_cmp);
    if (rma_node)
        DL_DELETE(saved_load_rma_list, rma_node);

}

void profile_save_nbload(int proc)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;
    profile_save_nbload_rmaid(proc, rma_prof_rid);
}

void profile_save_nbload_rmaid(int proc, int rid)
{
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;
    rma_node_t *new_rma;
    if ((new_rma = malloc(sizeof(*new_rma))) == NULL)
        Error("malloc failed to allocate memory");

    new_rma->rmaid = rid;
    new_rma->target = proc;

    DL_APPEND(saved_load_rma_list, new_rma);
}


void profile_rma_end_all()
{
    if (!profiling_enabled)
        return;
    profile_rma_end_all_nbstores();
    profile_rma_end_all_nbloads();
}

void profile_rma_end_all_nbstores()
{
    rma_node_t *rma_node, *tmp;
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;

    DL_FOREACH_SAFE(saved_store_rma_list, rma_node, tmp) {
        if (epik_enabled)
            elg_put_1te_remote(rma_node->target, rma_node->rmaid);
        DL_DELETE(saved_store_rma_list, rma_node);
    }
}

void profile_rma_end_all_nbstores_to_proc(int proc)
{
    rma_node_t *rma_node, *tmp;
    if (!profiling_enabled || !(prof_groups & CAFPROF_PUT))
        return;

    DL_FOREACH_SAFE(saved_store_rma_list, rma_node, tmp) {
        if (rma_node->target == proc) {
            if (epik_enabled)
                elg_put_1te_remote(proc, rma_node->rmaid);
            DL_DELETE(saved_store_rma_list, rma_node);
        }
    }
}

void profile_rma_end_all_nbloads()
{
    rma_node_t *rma_node, *tmp;
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;

    DL_FOREACH_SAFE(saved_load_rma_list, rma_node, tmp) {
        if (epik_enabled)
            elg_put_1te(rma_node->target, rma_node->rmaid);
        DL_DELETE(saved_load_rma_list, rma_node);
    }
}

void profile_rma_end_all_nbloads_to_proc(int proc)
{
    rma_node_t *rma_node, *tmp;
    if (!profiling_enabled || !(prof_groups & CAFPROF_GET))
        return;

    DL_FOREACH_SAFE(saved_load_rma_list, rma_node, tmp) {
        if (rma_node->target == proc) {
            if (epik_enabled)
                elg_put_1te(proc, rma_node->rmaid);
            DL_DELETE(saved_load_rma_list, rma_node);
        }
    }
}

void profile_record_put(int proc, int rid, int nelem)
{
    int node_id = (int) comm_get_node_id(proc);

    if (rma_node_stats[node_id] == NULL) {
        rma_node_stats[node_id] =
            (rma_info_t *)coarray_asymmetric_allocate_(sizeof(rma_info_t));
        memset(rma_node_stats[node_id], 0, sizeof(rma_info_t));
    }

    rma_node_stats[node_id]->put_rma_count++;
    rma_node_stats[node_id]->put_bytes_count += nelem;
}

void profile_record_put_end(int proc, int rid)
{
    /* do nothing */
}

void profile_record_get(int proc, int rid, int nelem)
{
    int node_id = (int) comm_get_node_id(proc);

    if (rma_node_stats[node_id] == NULL) {
        rma_node_stats[node_id] =
            (rma_info_t *)coarray_asymmetric_allocate_(sizeof(rma_info_t));
        memset(rma_node_stats[node_id], 0, sizeof(rma_info_t));
    }

    rma_node_stats[node_id]->get_rma_count++;
    rma_node_stats[node_id]->get_bytes_count += nelem;
}

void profile_record_get_end(int proc, int rid)
{
    /* do nothing */
}




void profile_set_in_prof_region()
{
    in_rma_region = 1;
}

void profile_unset_in_prof_region()
{
    in_rma_region = 0;
}

#pragma weak uhcaf_profile_start_ = uhcaf_profile_start
void uhcaf_profile_start()
{
    profiling_enabled = 1;
    if (epik_avail)
        epik_enabled = 1;
}

#pragma weak uhcaf_profile_stop_ = uhcaf_profile_stop
void uhcaf_profile_stop()
{
    profiling_enabled = 0;
    epik_enabled = 0;
}

#pragma weak uhcaf_profile_set_events_ = uhcaf_profile_set_events
void uhcaf_profile_set_events(caf_prof_groups_t *groups)
{
    prof_groups = *groups;
}

#pragma weak uhcaf_profile_reset_events_ = uhcaf_profile_reset_events
void uhcaf_profile_reset_events()
{
    prof_groups = CAFPROF_DEFAULT;
}

#pragma weak uhcaf_profile_add_events_ = uhcaf_profile_add_events
void uhcaf_profile_add_events(caf_prof_groups_t *groups)
{
    prof_groups |= *groups;
}

#pragma weak uhcaf_profile_remove_events_ = uhcaf_profile_remove_events
void uhcaf_profile_remove_events(caf_prof_groups_t *groups)
{
    prof_groups &= ~(*groups);
}
