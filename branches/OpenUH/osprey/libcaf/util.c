/*
 Runtime library for supporting Coarray Fortran

 Copyright (C) 2011-2013 University of Houston.

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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "trace.h"

#define MSG_BUF_SIZE 512

void __caf_exit(int status);

void __libcaf_warning(const char *file, const char *func, int line,
                      char *warning_msg, ...)
{
    char tmp[MSG_BUF_SIZE];
    va_list ap;

    va_start(ap, warning_msg);
    vsnprintf(tmp, MSG_BUF_SIZE, warning_msg, ap);
    va_end(ap);
#if defined(CAFRT_DEBUG)
    fprintf(stderr, "-- LIBCAF WARNING (%s:%d::%s): %s \n\n",
            file, line, func, tmp);
#else
    fprintf(stderr, "-- LIBCAF WARNING: %s \n\n", tmp);
#endif
    fflush(stderr);
}


void __libcaf_error(const char *file, const char *func, int line,
                    char *error_msg, ...)
{
    char tmp[MSG_BUF_SIZE];
    va_list ap;

    va_start(ap, error_msg);
    vsnprintf(tmp, MSG_BUF_SIZE, error_msg, ap);
    va_end(ap);
#if defined(CAFRT_DEBUG)
    fprintf(stderr, "-- LIBCAF ERROR (%s:%d::%s): %s \n\n",
            file, line, func, tmp);
#else
    fprintf(stderr, "** LIBCAF ERROR: %s \n\n", tmp);
    fflush(stderr);
#endif
    __caf_exit(1);
}

/* file utils */

/* drops path prefix in string */
char *drop_path(char *s)
{
    char *tail = NULL;
    char *t;
    for (t = s; *t; t++) {
        if (*t == '/')
            tail = t;
    }

    if (tail == NULL) {
        return s;               /* no path prefix */
    } else {
        tail++;                 /* skip the slash */
        return tail;            /* points inside s, not new string! */
    }
}

/* debug utility functions */

#if defined(CAFRT_DEBUG)

void __libcaf_debug_print_array_int(char *name, int *arr, int n)
{
    char str[100];
    int i;

    memset(str, 0, 100);

    sprintf(str, "*** %s = {", name);
    if (n < 1) {
        sprintf(&str[strlen(str)], "}\n");
        return;
    }
    sprintf(&str[strlen(str)], "%d", arr[0]);
    for (i = 1; i < n; i++) {
        sprintf(&str[strlen(str)], ",%d", arr[i]);
    }
    sprintf(&str[strlen(str)], "}");

    LIBCAF_TRACE(LIBCAF_LOG_DEBUG, str);
}

void __libcaf_debug_print_array_long(char *name, long *arr, int n)
{
    char str[100];
    int i;

    memset(str, 0, 100);

    sprintf(str, "*** %s = {", name);
    if (n < 1) {
        sprintf(&str[strlen(str)], "}\n");
        return;
    }
    sprintf(&str[strlen(str)], "%ld", arr[0]);
    for (i = 1; i < n; i++) {
        sprintf(&str[strlen(str)], ",%ld", arr[i]);
    }
    sprintf(&str[strlen(str)], "}");

    LIBCAF_TRACE(LIBCAF_LOG_DEBUG, str);
}

#endif                          /* DEBUG */
