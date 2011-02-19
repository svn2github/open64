/*

  OpenMP runtime library to be used in conjunction with Open64 Compiler Suites.

  Copyright (C) 2003 - 2009 Tsinghua University.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 USA
  
  Contact information: HPC Institute, Department of Computer Science and Technology,
  Tsinghua University, Beijing 100084, CHINA, or:

  http://hpc.cs.tsinghua.edu.cn
  
*/

#ifndef __omp_rtl_api_included
#define __omp_rtl_api_included
/* This file is the Extern API for OpenMP compiler. Not
 * include it in the RTL implementation.
 */

typedef void *frame_pointer_t;

typedef int omp_int32;
typedef long long omp_int64;
typedef float omp_real32;
typedef double omp_real64;

typedef omp_int32 omp_tid;

typedef void (*omp_micro)(omp_int32 , frame_pointer_t);
typedef void (*omp_task_func)(void *args);
typedef int (*omp_cond_func)();

typedef enum {
  OMP_SCHED_UNKNOWN             = 0,
  OMP_SCHED_STATIC              = 1,
  OMP_SCHED_STATIC_EVEN         = 2,
  OMP_SCHED_DYNAMIC             = 3,
  OMP_SCHED_GUIDED              = 4,
  OMP_SCHED_RUNTIME             = 5,
    
  OMP_SCHED_ORDERED_STATIC      = 31,
  OMP_SCHED_ORDERED_STATIC_EVEN = 32,
  OMP_SCHED_ORDERED_DYNAMIC 	= 33,
  OMP_SCHED_ORDERED_GUIDED 	= 34,
  OMP_SCHED_ORDERED_RUNTIME 	= 35 
} omp_sched_t;

#ifdef __cplusplus
extern "C" {
#endif

/* Used for user level control, for parallel thread num
 * control, see __ompc_fork. */
extern void __ompc_set_num_threads(omp_int32 global_tid, 
                                   omp_int32 num_threads);

extern omp_int32 __ompc_get_local_thread_num();
extern omp_int32 __ompc_get_num_threads();
extern omp_int32 __ompc_get_num_procs();
extern omp_int32 __ompc_can_fork();
extern void __ompc_fork(int num_threads, omp_micro micro_task, 
                        frame_pointer_t fp);
extern void __ompc_critical(omp_int32 gtid, omp_int32 **lck);
extern void __ompc_end_critical(omp_int32 gtid, omp_int32 **lck);

extern void __ompc_reduction(omp_int32 gtid, omp_int32 **lck);
extern void __ompc_end_reduction(omp_int32 gtid, omp_int32 **lck);

extern void __ompc_serialized_parallel(int vthread_id);
extern void __ompc_end_serialized_parallel(int vthread_id);
extern omp_int32 __ompc_in_parallel();

extern void __ompc_static_init_4(omp_int32 global_tid, omp_sched_t schedtype,
                                 omp_int32 *plower, 
                                 omp_int32 *pupper, omp_int32 *pstride, 
                                 omp_int32 incr, omp_int32 chunk);

extern void __ompc_static_init_8(omp_int32 global_tid, omp_sched_t schedtype,
                                 omp_int64 *plower, 
                                 omp_int64 *pupper, omp_int64 *pstride, 
                                 omp_int64 incr, omp_int64 chunk);

extern void __ompc_static_fini(omp_int32 global_tid);

extern void __ompc_scheduler_init_4(omp_int32 global_tid, 
                                    omp_sched_t schedtype,
                                    omp_int32 lower, omp_int32 upper,
                                    omp_int32 stride, omp_int32 chunk);

extern void __ompc_scheduler_init_8(omp_int32 global_tid, 
                                    omp_sched_t schedtype,
                                    omp_int64 lower, omp_int64 upper,
                                    omp_int64 stride, omp_int64 chunk);

extern omp_int32 __ompc_schedule_next_4(omp_int32 global_tid, 
                                        omp_int32 *plower, omp_int32 *pupper,
                                        omp_int32 *pstride);

extern omp_int32 __ompc_schedule_next_8(omp_int32 global_tid, 
                                        omp_int64 *plower, omp_int64 *pupper,
                                        omp_int64 *pstride);

extern void __ompc_scheduler_fini(omp_int32 global_tid);

extern omp_int32 __ompc_single(omp_int32 global_tid);
extern void __ompc_end_single(omp_int32 global_tid);

extern omp_int32 __ompc_master(omp_int32 global_tid);
extern void __ompc_end_master(omp_int32 global_tid);

extern void __ompc_barrier(void);
extern void __ompc_ebarrier(void);
extern void __ompc_ordered(omp_int32 global_tid);
extern void __ompc_end_ordered(omp_int32 global_tid);

extern void __ompc_flush(void *p);
extern omp_int32 __ompc_get_thdprv(void *** thdprv_p, \
                                   omp_int64 size, void *datap, omp_int32 global_tid);

/*
  copyin_thrdprv is a function with variable-length argument list
  the arguments are repetitive triplets for: char* dst, char*src, int nbyte
  Usage:
  __ompc_copyin_thdprv(3, __mplocal___ppthd_common_sum1, &sum1, 4);
  __ompc_copyin_thdprv(6, __mplocal___ppthd_common_y, &y, 4, __mplocal___ppthd_common_x, &x, 4);

*/
extern omp_int32 __ompc_copyin_thdprv(int num,...);
extern omp_int32 __ompc_copyprivate(omp_int32 mpsp_status, void *cppriv, void(*cp)(void* src, void* dst));


extern int __ompc_task_create(omp_task_func func, void *args, int may_delay, int is_tied);
extern void __ompc_task_wait();
extern void __ompc_task_exit();
extern omp_cond_func __ompc_task_create_cond;

#ifdef __cplusplus
}
#endif
#endif /* end __omp_rtl_api_included */
