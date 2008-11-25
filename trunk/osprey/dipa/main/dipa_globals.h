/*

  Copyright (C) 2008 .  All Rights Reserved.

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

*/

/*!
\file dipa_globals.h
\brief dipa global variable definitions.

*/

#ifndef __DIPA_GLOBALS_H__
#define __DIPA_GLOBALS_H__ 1

typedef enum {
	T_ANNOT=1,
	T_DUMP=2,
} TIMER_ID_t;

namespace DIPA_NMSPC {

}

#if 0
/* To be removed */
extern MEM_POOL MEM_dipa_pool;
extern MEM_POOL MEM_dipa_nz_pool;

#define MEM_POOL_Initialize(x,y,z)
#define MEM_POOL_Push(pool)
#define MEM_POOL_Pop(pool)
#define MEM_POOL_Alloc(pool,size) malloc(size)
#define MEM_POOL_Free(pool,ptr) free(ptr)
#define MEM_POOL_Delete(pool)
#define MEM_POOL_Realloc(pool,oldblock,oldsize,newsize) realloc(oldblock,newsize)
#endif

#endif

