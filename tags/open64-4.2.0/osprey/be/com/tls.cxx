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

#include "tls.h"
#include "config.h"

TLS_MODEL TLS_model = TLS_MODEL_UNKNOWN;     /* TLS Access Model, parse from command line */
TY_IDX TLS_get_addr_ty_idx = 0;		     /* TY_IDX of Pointer_Mtype __tls_get_addr(U8, U8); */
ST *TLS_get_addr_st = NULL;   		     /* ST of '__tls_get_addr' */

void TLS_init()
{
	static BOOL TLS_initialized = FALSE;
	if( TLS_initialized )
		return;
	TLS_initialized = TRUE;
	// Parse the command line '-ftls-model=%s' for tls access model
	TLS_model = TLS_MODEL_UNKNOWN;
	if( TLS_Model_Name != NULL ) {
		if( strcmp("global-dynamic", TLS_Model_Name) == 0 )
			TLS_model = TLS_MODEL_GLOBAL_DYNAMIC;
		else if( strcmp("local-dynamic", TLS_Model_Name) == 0 )
			TLS_model = TLS_MODEL_LOCAL_DYNAMIC;
		else if( strcmp("initial-exec", TLS_Model_Name) == 0 )
			TLS_model = TLS_MODEL_INITIAL_EXEC;
		else if( strcmp("local-exec", TLS_Model_Name) == 0 )
			TLS_model = TLS_MODEL_LOCAL_EXEC;
	}
	if( TLS_model == TLS_MODEL_UNKNOWN ) {
		// Set the default value for TLS_model. Follow the GCC's behavior.
		if( Gen_PIC_Shared == TRUE )
			TLS_model = TLS_MODEL_GLOBAL_DYNAMIC;
		else
			TLS_model = TLS_MODEL_INITIAL_EXEC;
	}

	if( TLS_model == TLS_MODEL_GLOBAL_DYNAMIC ||
	    TLS_model == TLS_MODEL_LOCAL_DYNAMIC ) {
		// with this access model, we'll call the '__tls_get_addr' 
		// to get the address of the thread local data
		// Create TY for this function call
		TY_IDX ty_idx = 0;
		TY& ty = New_TY(ty_idx);
		TY_Init(ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, 0);
		Set_TY_align(ty_idx, 1);

		TYLIST_IDX tylist_idx;
		
		Set_TYLIST_type (New_TYLIST (tylist_idx), MTYPE_To_TY(Pointer_Mtype));
		Set_TY_tylist (ty_idx, tylist_idx);
		Set_TYLIST_type (New_TYLIST (tylist_idx), MTYPE_To_TY(Pointer_Mtype));
		Set_TYLIST_type (New_TYLIST (tylist_idx), MTYPE_To_TY(Pointer_Mtype));
		Set_TYLIST_type (New_TYLIST (tylist_idx), 0);
		//TY_IDX ty_idx = Make_Function_Type( MTYPE_To_TY(Pointer_Mtype));
		TLS_get_addr_ty_idx = ty_idx;
		// Create PU for this function call
		ST* st = New_ST(GLOBAL_SYMTAB);
		PU_IDX pu_idx;
		PU&    pu = New_PU (pu_idx);
		PU_Init (pu, ty_idx, GLOBAL_SYMTAB + 1);
		// Create ST for this function call
		//ST* st = New_ST(GLOBAL_SYMTAB);
		ST_Init(st, Save_Str("__tls_get_addr"), CLASS_FUNC, SCLASS_EXTERN, EXPORT_PREEMPTIBLE, (TY_IDX)pu_idx);
		TLS_get_addr_st = st;
	}
}

void TLS_fini()
{
	// Do nothing
}


