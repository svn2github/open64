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

/*
 * File: omp_util.c
 * Abstract: some utilities of the OpenMP Runtime Library
 * History: 04/23/2003, built by Jiang Hongshan, Tsinghua Univ.
 * 
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/resource.h>
#include <ctype.h>
#include <unistd.h>
#include "omp_util.h"

void
Not_Valid (char *error_message)
{
  fprintf(stderr, error_message);
  fprintf(stderr, "\n");
  fflush(stderr);
  abort();
}

void
Warning (char *warning_message)
{
  fprintf(stderr, "Warning: %s\n", warning_message);
  fflush(stderr);
}

char *
Trim_Leading_Spaces (char *input)
{
  char *output = input;
  DevWarning( output != NULL, ("input string is NULL!"));

  while ((*output != '\0') && isspace((int)(*output))) {
    output++;
  }

  return output;
}

unsigned long int
Get_System_Stack_Limit (void)
{
  struct rlimit cur_rlimit;
  int return_value;
  return_value = getrlimit(RLIMIT_STACK, &cur_rlimit);
  Is_True(return_value == 0, ("user stack limit setting wrong"));
  return cur_rlimit.rlim_cur;
}

int
Get_SMP_CPU_num (void)
{
  /* Maybe we still want to check it's supported by underlying system? */
  return (int) sysconf(_SC_NPROCESSORS_ONLN);
}

void
__ompc_do_nothing (void)
{
}

