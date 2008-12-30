/*
  Copyright (C) 2006-2007, Hewlett-Packard Company.  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:
  
  Redistributions of source code must retain the above copyright notice, this list
  of conditions and the following disclaimer. 

  Redistributions in binary form must reproduce the above copyright notice, this list
  of conditions and the following disclaimer in the documentation and/or other materials
  provided with the distribution. 

  Neither the name of the owner nor the names of its contributors may be used to endorse or
  promote products derived from this software without specific prior written permission. 

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef be_com_tls_INCLUDED
#define be_com_tls_INCLUDED "tls.h"

#include "symtab.h"
#include "sections.h"

/* GCC compatible Thread-Local-Storage support for open64 compiler */

// TLS Access Model, it's GCC compatible on LINUX
typedef enum {
  TLS_MODEL_UNKNOWN /* =0 */,
  TLS_MODEL_GLOBAL_DYNAMIC,
  TLS_MODEL_LOCAL_DYNAMIC,
  TLS_MODEL_INITIAL_EXEC,
  TLS_MODEL_LOCAL_EXEC,
} TLS_MODEL;

extern TLS_MODEL TLS_model;     	/* TLS Access Model, parse from command line */
extern TY_IDX TLS_get_addr_ty_idx;      /* TY_IDX of Pointer_Mtype __tls_get_addr(U8, U8); */
extern ST *TLS_get_addr_st;     	/* ST of '__tls_get_addr' */

// These functions is implemented in tls.cxx
extern void TLS_init();         /* Initialize the variables used by TLS */
extern void TLS_fini();         /* Finalize the TLS variables */

static inline BOOL ST_is_tls(const ST* st) {
  if ( (ST_class(st) == CLASS_VAR && ST_is_thread_local(st) ) ||
       (ST_class(st) == CLASS_BLOCK && SEC_is_tls(STB_section_idx(st)) ) ) {
    return TRUE;
  }
  else {
    return FALSE;
  }
}

#endif  // be_com_tls_INCLUDED 

