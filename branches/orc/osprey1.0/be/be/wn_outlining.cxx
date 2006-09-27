/*
 * Copyright (C) 2000-2002, Dept. of Computing Science, University of Alberta, 
 * Canada.
 *
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this 
 * list of conditions and the following disclaimer. 
 *
 * Redistributions in binary form must reproduce the above copyright notice, 
 * this list of conditions and the following disclaimer in the documentation 
 * and/or other materials provided with the distribution. 
 *
 * Neither the name of the owner nor the names of its contributors may be used 
 * to endorse or promote products derived from this software without specific 
 * prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
 * ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (
 * INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF 
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

// This is just an initial version of outlininer. Intensive debugging is still
// needed

#include "wn_outlining.h"

MEM_POOL *Splitter_mem_pool;
static  MEM_POOL Cold_Pu_Pool, *Cold_Pu_Pool_ptr = NULL;
BOOL    dump_cwt = FALSE;
BOOL    dump_result = FALSE;
BOOL    dump_action = FALSE;
BOOL    dump_tmp = FALSE;
BOOL    dump_vobose = FALSE;
BOOL    outlining_detail_dumping = FALSE;
float   PU_max_freq;
void outlining_put_st (ST_IDX st_idx, FILE *fp);
BLOCK_FREQ_MAP Outlining_Block_List; 

extern "C" void
Outliner_Initialize(void)
{

  // Initialize DRA_clone_pool to be used for cloning
  // This MEM_POOL lives throughout the compilation of the file
  //
  MEM_POOL_Initialize (&Cold_Pu_Pool, "Outliner", TRUE);
  Cold_Pu_Pool_ptr = &Cold_Pu_Pool;
  MEM_POOL_Push (Cold_Pu_Pool_ptr);
  
}

extern "C" void
Outliner_Finalize(void)
{
  if(Cold_Pu_Pool_ptr != NULL)
  {
    MEM_POOL_Pop (Cold_Pu_Pool_ptr);
    MEM_POOL_Delete (Cold_Pu_Pool_ptr);
    Cold_Pu_Pool_ptr = NULL;
  }
}


void 
SPLITTER::Splitter_Parentize (WN* wn) 
{
  //Set up the parent map
  //borrowed from omp_lower.cxx:273
  //"create parent map"
  
  // -> WN_MAP_Do_Create(Current_Map_Tab, (pool), WN_MAP_KIND_VOIDP)
  Set_Parent_Map(WN_MAP_Create(Splitter_mem_pool));

  //set the parent_map of the root of the pu_tree to NULL
  Splitter_Set_Parent(_orig_pu_tree, NULL);

  copied_lwn_parentize(_orig_pu_tree);
}

void
SPLITTER::copied_lwn_parentize(WN *wn)
{
  if (!OPCODE_is_leaf (WN_opcode (wn))) 
  { 
    if (WN_opcode(wn) == OPC_BLOCK) 
    {
      WN* kid = WN_first (wn);
      while (kid) 
      {
        Splitter_Set_Parent (kid, wn);
        copied_lwn_parentize (kid);
        kid = WN_next (kid);
      }
    }
    else 
    {
      INT kidno;
      WN* kid;
      for (kidno=WN_kid_count(wn)-1; kidno>=0; kidno--) 
      {
        kid = WN_kid (wn, kidno);
        if (kid) 
        { 
          Splitter_Set_Parent (kid, wn);
          copied_lwn_parentize (kid);
        } //end of if (kid)
      }//end of for
    }//end of else
  }//end of if (!OPCODE_is_leaf (WN_opcode (wn))) 
}//end of SPLITTER::copied_lwn_parentize(WN *wn)


/*
 * Replace old_wn with new_wn in old_wn's parent.
 * Do not delete old_wn
 * copied from lego_util.cxx
 */
void 
SPLITTER::Splitter_Replace_WN(WN *old_wn, WN *new_wn)
{
  WN *parent = Splitter_Get_Parent(old_wn);

  Is_True (parent, ("Splitter-Replace-WN: expected a parent node"));

  if (WN_opcode(parent) != OPC_BLOCK) 
  {
    INT kidno;

    for (kidno = WN_kid_count(parent)-1; kidno >=0; kidno-- ) 
    {
      if (WN_kid(parent, kidno) == old_wn)
        break;
    }
    Is_True(kidno < WN_kid_count(parent), ("Bad parent pointer\n")); 

    WN_kid(parent, kidno) = new_wn;
  }
  else 
  {
    WN_prev(new_wn) = WN_prev(old_wn);
    WN_next(new_wn) = WN_next(old_wn);

    if (WN_prev(new_wn)) WN_next(WN_prev(new_wn)) = new_wn;
    else WN_first(parent) = new_wn;
    if (WN_next(new_wn)) WN_prev(WN_next(new_wn)) = new_wn;
    else WN_last(parent) = new_wn;
  }
  Splitter_Set_Parent(new_wn, parent);
  Splitter_Set_Parent(old_wn, NULL);
}




inline WN *
Gen_Param( WN *arg, UINT32 flag )
{
  return WN_CreateParm( WN_rtype( arg ), arg, MTYPE_To_TY( WN_rtype( arg ) ), flag );
}

WN *WN_Label(LABEL_IDX l)
{
  WN *label = WN_CreateLabel(ST_IDX_ZERO, l, 0, NULL);
//  WN_Set_Linenum(label, current_srcpos);
  return label;
}


LABEL_IDX 
NewLabel(void)
{
  LABEL_IDX label;
  LABEL& lab = New_LABEL(CURRENT_SYMTAB, label);
  // create label name
  char *name = (char *) alloca (strlen(".L..") + 8 + 8 + 1);
  sprintf(name, ".L_splitter_%d",  label);
  LABEL_Init (lab, Save_Str(name), LKIND_DEFAULT);
  return label;
}



WN *
Gen_Call_Shell( char *name, TYPE_ID rtype, INT32 argc )
{
  TY_IDX  ty = Make_Function_Type( MTYPE_To_TY( rtype ) );
  ST     *st = Gen_Intrinsic_Function( ty, name );

  Clear_PU_no_side_effects( Pu_Table[ST_pu( st )] );
  Clear_PU_is_pure( Pu_Table[ST_pu( st )] );
  Set_PU_no_delete( Pu_Table[ST_pu( st )] );

  WN *wn_call = WN_Call( rtype, MTYPE_V, argc, st );

  WN_Set_Call_Default_Flags(  wn_call );
  // WN_Reset_Call_Non_Parm_Mod( wn_call );
  // WN_Reset_Call_Non_Parm_Ref( wn_call );
  
  return wn_call;
}

//^=============== function splitting (outlining)
void
CWT_LIST_ELMT::Generate_Cold_Procedure()
{

  MEM_POOL *save_pu_pool_ptr = MEM_pu_pool_ptr;
  MEM_POOL *save_wn_pool_ptr = WN_mem_pool_ptr;

  if(Get_Trace(TP_OUTLINING, TP_OUTLINING_CWT)) //0x0002
  {
     Print(TFile); // controlled by the TP_ flags , SPLITTER
  }

  //We save the SYMTAB for the CARRIER so that it can be recovered
  //after the outlining is finished
  Set_PU_Info_symtab_ptr(_splitter->Orig_Pu_Info(), NULL);
  Save_Local_Symtab(CURRENT_SYMTAB, _splitter->Orig_Pu_Info());

  MEM_pu_pool_ptr = Cold_Pu_Pool_ptr;    
  WN_mem_pool_ptr = Cold_Pu_Pool_ptr;

  Generate_Callee_PU_ST();

  //the Scope_tab is written in this phase
  Build_Cold_Pu_Scope_Tab(); 
  Handle_Outside_Gotos();
  Build_Callee_Local_Labels();
  Modify_Return_Val_Wns();
  Fill_Local_Symtab_And_Update_CWT();
  Generate_Cold_PU_Info(); // and save the SYMTAB for the new PU_Info

  // Restore pointers to standard memory pools (the carrier's pools)
  MEM_pu_pool_ptr = save_pu_pool_ptr;
  WN_mem_pool_ptr = save_wn_pool_ptr;

  // now, we restore the CARRIER's SYMTAB
  Restore_Local_Symtab(_splitter->Orig_Pu_Info());
}// CWT_LIST_ELMT::Generate-Cold-Procedure()

void
CWT_LIST_ELMT::Generate_Cold_PU_Info()
{
  //borrowed from dra_clone.cxx : L1000
  //Alocate and initialize PU_Info structure FOR the clone
  //And initialize the new PU_Info
  // no inlining, no cloining, no optimization

  PU_Info *new_pu_info = CXX_NEW(PU_Info, Malloc_Mem_Pool);
  PU_Info_init(new_pu_info);

  // Add new pu right after the original pu
  // pengzhao, maybe we can insert them in the end of the pu_tree
  PU_Info_next(new_pu_info) = PU_Info_next(_splitter->Orig_Pu_Info());
  PU_Info_next(_splitter->Orig_Pu_Info()) = new_pu_info;

  // Update the PU pointers and state information
  //modify the driver 1315
  //we change the PU_IS_COLD to PU_OUTLINED
  //but maybe we should add PU_IS_COLD FOR those PUs which are cold
  Set_PU_Info_flags(new_pu_info, PU_IS_COMPILER_GENERATED|PU_OUTLINED);
  //pengzhao Set_PU_Info_pu_dst(new_pu_info, new_pu_dst);

  Set_PU_Info_tree_ptr(new_pu_info, _cold_pu_tree);  //attach the WT
  
  PU_Info_proc_sym(new_pu_info) = ST_st_idx(_new_pu_st);  //set the func's ST

  // Because WN-MAP-TAB-Create() build a new map-tab and set Current-Map-Tab
  // to the new map-tab. We should save and restore the Current-Map-Tab around
  // the call to WN-MAP-TAB-Create()
  WN_MAP_TAB *tmp_maptab = Current_Map_Tab;
  PU_Info_maptab(new_pu_info) = WN_MAP_TAB_Create(Cold_Pu_Pool_ptr);
  Current_Map_Tab = tmp_maptab;

  Set_PU_Info_state(new_pu_info, WT_TREE,     Subsect_InMem);//set WT flag
  Set_PU_Info_state(new_pu_info, WT_SYMTAB,   Subsect_InMem);//set SYMTAB flag
  Set_PU_Info_state(new_pu_info, WT_PROC_SYM, Subsect_InMem);//?? pengzhao

  //save the local symtab for the new PU_Info, so that it can be restored
  //when the new PU_Info get its turn to be optimized
  Set_PU_Info_symtab_ptr(new_pu_info, NULL);  
  Save_Local_Symtab(CURRENT_SYMTAB, new_pu_info);

  //dump the new PUs (i.e. the CWT-based PUs)
  if(dump_result) //0x0004
  {
    fprintf(TFile, DBar);
    fprintf(TFile,"The new PU for CWT_%d (%s): \n",_seq_no, _cold_PU_name);
    fdump_tree( TFile, _cold_pu_tree);
    fprintf( TFile, "\n");
    fprintf(TFile, DBar);
  }
} // CWT-LIST-ELMT::Generate-Cold-PU-Info()

void
CWT_LIST_ELMT::Modify_Return_Val_Wns()
{
  //^(4)modify the RETURN_VAL WNs
  for (INT32 i=_rv_list->Lastidx(); i>=0; i--)
  {
    WN *return_wn = (*_rv_list)[i].wn;

    //pengzhao "Current_Map_Tab" & "_parent-map"
    WN *parent_block = (WN*)WN_MAP_Get(_splitter->Parent_Map(), return_wn );

	if(WN_opcode(return_wn) == OPC_RETURN) //handle the OPR_RETURN case
	{
	  WN *flag = WN_Intconst( MTYPE_I4, CWT_RETURN);

    // the return_flag (1st param) is a pointer, thus ldid actually is loading the address
      WN *ldid_return_flag = WN_Ldid(MTYPE_U8, 0, _cwt_return_flag, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)),0);
      WN *tmp_istore2 = WN_Istore(MTYPE_I4, 0,Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)), ldid_return_flag, flag, 0 );
      Splitter_Set_Parent(flag, tmp_istore2);
      Splitter_Set_Parent(ldid_return_flag, tmp_istore2);
      WN_INSERT_BlockBefore(parent_block, return_wn, tmp_istore2);
	  return;
	}

  //  insert instruction to copy the return result to the param 0

  //--------- set up the return value FOR the caller,(2nd param)

//    WN *expr_copy = WN_COPY_Tree(WN_kid(return_wn,0));
    WN *expr_ptr = (WN_kid(return_wn,0));
    //pengzhao: rtype & return_value(2nd parm) the second param
    WN *return_address = WN_Ldid(MTYPE_U8, 0, _cwt_return_value, Make_Pointer_Type(Be_Type_Tbl(_splitter->Return_Type_Id())), 0);
    WN *tmp_istore1 = WN_Istore(_splitter->Return_Type_Id(), 0, Make_Pointer_Type(Be_Type_Tbl(_splitter->Return_Type_Id())), return_address, expr_ptr , 0 );

	//set up the parent relationship (MUST, it inherits the children)
    Splitter_Set_Parent(expr_ptr, tmp_istore1);
    Splitter_Set_Parent(return_address, tmp_istore1);

    WN_INSERT_BlockBefore(parent_block, return_wn, tmp_istore1);

//------------ the semantics of the first parameter: return_flag
//------------ 0: control flows smoothly
//------------ 1: return a value, 
//------------ >=2: jump to a label out of the CWT

    //pengzhao?? should we insert a whirl tree at the beginning of the CWT
    //to set the return_flag 0?
  //  modify the OPR_RETURN_VAL so that it returns "1"
    WN *flag = WN_Intconst( MTYPE_I4, CWT_RETURN);

    // the return_flag (1st param) is a pointer, thus ldid actually is loading the address
    WN *ldid_return_flag = WN_Ldid(MTYPE_U8, 0, _cwt_return_flag, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)),0);
    WN *tmp_istore2 = WN_Istore(MTYPE_I4, 0,Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)), ldid_return_flag, flag, 0 );
    Splitter_Set_Parent(flag, tmp_istore2);
    Splitter_Set_Parent(ldid_return_flag, tmp_istore2);
    WN_INSERT_BlockBefore(parent_block, return_wn, tmp_istore2);

	//insert the RETURN WN.
//    WN_INSERT_BlockBefore(parent_block, return_wn, WN_CreateReturn());
    _splitter->Splitter_Replace_WN(return_wn, WN_CreateReturn());

  // !!!!! we should insert a new RETURN WN to exit this CWT pengzhao
  // delete the RETURN_VAL WT
//    WN_DELETE_Tree(return_wn);
//    WN_Delete(return_wn);
  }//$(4)modify the RETURN_VAL WNs
}

void
CWT_LIST_ELMT::Fill_Local_Symtab_And_Update_CWT()
{
  //(3) we make up the symtab for the current _level and modify the
  //related whirl nodes, borrowed from Copy_Local_Tables()

#if 0
  //(3.1) we first generate the cold PU's whirl tree (func-entry)
  //replicate the cold whilr tree
  WN * cold_PU_body = WN_COPY_Tree(_cwt_root_wn);
  fprintf( TFile,"^4(cwt_root_wn)=============================================\n");
  ;;fdump_tree ( TFile, cold_PU_body);
  fprintf( TFile,"$4(cwt_root_wn)=============================================\n");
// here, pengzhao, valencia, we should insert a pragma and a WN which set the return_flag = 0  
  //replicate the two pragma blocks
  INT kidnum_of_orig_pu = WN_kid_count(_splitter->Orig_Pu_Tree());
  WN *local_pragma_3 = WN_COPY_Tree(WN_kid(_splitter->Orig_Pu_Tree(),kidnum_of_orig_pu-3));
    WN *caller_pragma_2 = WN_COPY_Tree(WN_kid(_splitter->Orig_Pu_Tree(), kidnum_of_orig_pu-2));

  // Here, we insert the "return-flag=0" at the begining of the cold function
  WN *wn_zero = WN_Intconst( MTYPE_I4, 0);  
  WN *ldid_return_flag = WN_Ldid(MTYPE_U8, 0, _cwt_return_flag, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)),0);
  WN *tmp_istore2 = WN_Istore(MTYPE_I4, 0, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)), ldid_return_flag, wn_zero, 0 );

  WN_INSERT_BlockAfter(cold_PU_body, NULL, tmp_istore2);

  // we insert the "preamble-end" of the function body: valencia,
  // pengzhao
//  WN *preamble_end =   
  
#endif
  
  INT kidnum_of_orig_pu = WN_kid_count(_splitter->Orig_Pu_Tree());
  WN *local_pragma_3 = WN_COPY_Tree(WN_kid(_splitter->Orig_Pu_Tree(),kidnum_of_orig_pu-3));
  WN *caller_pragma_2 = WN_COPY_Tree(WN_kid(_splitter->Orig_Pu_Tree(), kidnum_of_orig_pu-2));
  //Create FuncEntry
  _cold_pu_tree = WN_CreateEntry (_local_access_list->Elements() + 2,_new_pu_st, NULL, local_pragma_3, caller_pragma_2 );

  WN_kid0(_cold_pu_tree) = WN_CreateIdname(0, _cwt_return_flag);
  WN_kid1(_cold_pu_tree) = WN_CreateIdname(0, _cwt_return_value);

  //(3.2) other variables that are used in the CWT. def&use (except r_v&r_f)
  //at the same time, we init the children of the func-entry according to the
  //accessed symbols (they are the parameters to the cold PUs)
  for (INT32 i=_local_access_list->Lastidx(); i>=0; i--)
  {
    ST* orig_st = (*_local_access_list)[i].st;
    
    {
      //insert new symbol  in the symtab

      char *clone_name = (char*)alloca(strlen(ST_name(orig_st)) + 15);
      sprintf(clone_name, "SpLiTtEd_%s", ST_name (orig_st)); // new symbol FOR var
      ST *clone_st = New_ST(CURRENT_SYMTAB);

      // make the child WN FOR the func_entry according to this parameter
      WN_kid(_cold_pu_tree, i+2) = WN_CreateIdname(0, clone_st);

      // and modify the related whirl nodes, the parameters?
      if( (*_local_access_list)[i].flag == SCALAR_DEFED)
      {
        ST_Init( clone_st, Save_Str(clone_name), CLASS_VAR, SCLASS_FORMAL,ST_export(orig_st), MTYPE_To_TY(Pointer_type));

        // change the related WNs
        for(INT32 j=(*_local_access_list)[i].wn_list->Lastidx(); j>=0;j--)
        {
          WN* orig_wn;
          WN*  new_wn;
          OPERATOR orig_opr;
          orig_wn = (*((*_local_access_list)[i].wn_list))[j];
//          WN *ldid_wn = WN_CreateLdid(OPC_U8U8LDID, 0, clone_st, Be_Type_Tbl(MTYPE_U8), 0);
          WN *ldid_wn = WN_CreateLdid(OPC_U8U8LDID, 0, clone_st, Make_Pointer_Type(WN_ty (orig_wn)), 0);

          orig_opr = WN_operator(orig_wn);
          if(  orig_opr == OPR_STBITS||orig_opr == OPR_STID || orig_opr == OPR_MSTORE)
          {
            // DEF
            new_wn = WN_CreateIstore( 
                OPR_ISTORE,
                MTYPE_V,
                WN_desc(orig_wn),
                0,
                Make_Pointer_Type (WN_ty (orig_wn)),
                WN_kid0(orig_wn),//WN_COPY_Tree(WN_kid0(orig_wn)),kid0,the value
                ldid_wn, // kid 1, the pointer
                WN_field_id(orig_wn) // field id ???
                );

	//set up the parent relationship (MUST, it inherits the children)
            Splitter_Set_Parent(WN_kid0(orig_wn), new_wn);
            Splitter_Set_Parent(ldid_wn, new_wn);
			
          }else if (orig_opr == OPR_LDA)
		  {
            new_wn  = ldid_wn;
		  }else //load
          {
            // USE  
            // OPR_LDID, OPR_MLOAD
            new_wn = WN_CreateIload(
                OPR_ILOAD, 
                WN_rtype(orig_wn), 
                WN_desc(orig_wn),
                0,
                WN_ty(orig_wn),
                Make_Pointer_Type (WN_ty (orig_wn)),
                ldid_wn,
                WN_field_id(orig_wn) // field id ???
                );
            Splitter_Set_Parent(ldid_wn, new_wn);
          }

          //after generate the new sub-whirl-tree, we transplant it to
          //the splitted tree
          //pengzhao, should be initialize the WN_MAP (parent) ?
    
	if(Get_Trace(TP_OUTLINING, TP_OUTLINING_EXTRA))//0x0040
	{
		fprintf(TFile, "**********************************************\n");
      {
		OUTL_SCOPE_CONTEXT switch_scope(_splitter->Cloned_Scope_Tab());
        fdump_tree ( TFile, orig_wn );
	  }	
		fprintf(TFile, "---------------\n");
      fdump_tree ( TFile, new_wn );
		fprintf(TFile, "**********************************************\n");
	}

          _splitter->Splitter_Replace_WN(orig_wn, new_wn);
        }// FOR all the elements of the related WNs of the access elmt

      }else // SCALAR_USED
      {
        ST_Init( clone_st, Save_Str(clone_name), CLASS_VAR, SCLASS_FORMAL,ST_export(orig_st), ST_type(orig_st));

        for(INT32 j=(*_local_access_list)[i].wn_list->Lastidx(); j>=0;j--)
        {
          WN* orig_wn;
          WN*  new_wn;
          orig_wn = (*((*_local_access_list)[i].wn_list))[j];

          new_wn = WN_CreateLdid(  OPR_LDID,
                WN_rtype(orig_wn), 
                WN_desc(orig_wn),
                0,
                clone_st,
                WN_ty(orig_wn),
                WN_field_id(orig_wn) // field id ???
                );
	if(Get_Trace(TP_OUTLINING, TP_OUTLINING_EXTRA))//0x0040
	{
		fprintf(TFile, "**********************************************\n");
      {
		OUTL_SCOPE_CONTEXT switch_scope(_splitter->Cloned_Scope_Tab());
        fdump_tree ( TFile, orig_wn );
	  }	
		fprintf(TFile, "---------------\n");
      fdump_tree ( TFile, new_wn );
		fprintf(TFile, "**********************************************\n");
	}
          _splitter->Splitter_Replace_WN(orig_wn, new_wn);
        }

      }//SCALAR_USED
    }// If it is the local variable
  }//FOR all accessed symbols

  //(3.1) we first generate the cold PU's whirl tree (func-entry)
  //replicate the cold whilr tree
  fdump_tree(TFile,_cwt_root_wn);
  WN * cold_PU_body = WN_COPY_Tree(_cwt_root_wn);
  // here, pengzhao, valencia, we should insert a pragma and a WN 
  // which set the return_flag = 0 replicate the two pragma blocks

  // Here, we insert the "return-flag=0" at the begining of the cold function
  WN *wn_zero = WN_Intconst( MTYPE_I4, 0);  
  WN *ldid_return_flag = WN_Ldid(MTYPE_U8, 0, _cwt_return_flag, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)),0);
  WN *tmp_istore2 = WN_Istore(MTYPE_I4, 0, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)), ldid_return_flag, wn_zero, 0 );
  Splitter_Set_Parent(wn_zero, tmp_istore2);
  Splitter_Set_Parent(ldid_return_flag, tmp_istore2);

  // insert the return-flag initialization code
//  WN_INSERT_BlockAfter(cold_PU_body, NULL, tmp_istore2);
  WN_INSERT_BlockFirst(cold_PU_body, tmp_istore2);

  //insert the PREAMBLE_END pragma
  WN_INSERT_BlockFirst ( cold_PU_body, WN_CreatePragma ( WN_PRAGMA_PREAMBLE_END, ST_IDX_ZERO, 0, 0 ));

  //insert RETURN at the end of the function
//  WN_INSERT_BlockBefore(cold_PU_body, NULL, WN_CreateReturn());
  WN_INSERT_BlockLast(cold_PU_body, WN_CreateReturn());

  WN_func_body(_cold_pu_tree) = cold_PU_body;

  if(dump_vobose)//0x20
  {
    fprintf( TFile,"^9(cold PU's tree[%d])=========================\n",_seq_no);
    fdump_tree ( TFile, _cold_pu_tree );
    fprintf( TFile,"^9(cold PU's tree[%d])=========================\n",_seq_no);
  }
} // CWT-LIST-ELMT::Fill-Local-Symtab-And-Update-CWT()

void
CWT_LIST_ELMT::Collect_Outside_Goto_Info()
{
  // Now we caculate the out-label-list and out-goto-list
  for(INT32 i=_local_goto_list->Lastidx(); i>=0; i--)
  {
	//if we cannot find the consponding label in local-label-list,
	//then it has non-local-gotos
    if((Appear_in_Label_List(_local_label_list, (*_local_goto_list)[i].wn))<0)
    {
    //if it GOTOs out-of-cwt, we modify the goto to a return, and we also
    //need to modify the caller side to direct the control flow to related
    //labels

    // goto OUT_label1 --> return_flag = i+2;

      CWT_has_non_local_jump = TRUE;
      
      INT32 tmp;
      if((tmp = Appear_in_Label_List(_out_label_list, (*_local_goto_list)[i].wn)) >= 0)
      {
        //if the label has been added to the out-label-list
        //just put the idx
        Add_Goto_List(_out_goto_list, (*_local_goto_list)[i].wn, tmp);
      }else
      {
        // add the label into out-label-list. 
        // in out-label-list, the CWT_ID makes no sense  

        Add_Label_List(_out_label_list, (*_local_goto_list)[i].wn, -1);

        Add_Goto_List(_out_goto_list, (*_local_goto_list)[i].wn, _out_label_list->Lastidx());
      }
    }
    //pengzhao, maybe we should add some verification code here
    // the GOTOs to the local labels has been handled in 
    //Build-Local-Label-List();
  }
}// CWT_LIST_ELMT::Collect_Outside_Goto_Info()

void
CWT_LIST_ELMT::Handle_Outside_Gotos()
{

  // Acording to the out-goto-list and out-label-list, we modify the
  //goto-out-of-cwt WNs

  for(INT32 i=_out_goto_list->Lastidx(); i>=0; i--)
  {
    // Replace the goto with return
    // *return_flag = (*_out_goto_list)[i].flag;
    // pengzhao?? Intconst? should it be a variable? answer: no

    WN *goto_wn = (*_out_goto_list)[i].wn;
    WN *parent_block = (WN*)WN_MAP_Get(_splitter->Parent_Map(), goto_wn);
    WN *flag = WN_Intconst( MTYPE_I4, (*_out_goto_list)[i].flag + 2);//flag is a const
    WN *ldid_return_flag = WN_Ldid(MTYPE_U8, 0, _cwt_return_flag, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)),0);
    WN *tmp_istore2 = WN_Istore(MTYPE_I4, 0, Make_Pointer_Type(Be_Type_Tbl(MTYPE_I4)), ldid_return_flag, flag, 0 );
    Splitter_Set_Parent(flag, tmp_istore2);
    Splitter_Set_Parent(ldid_return_flag, tmp_istore2);


    WN_INSERT_BlockBefore(parent_block, goto_wn, tmp_istore2);

	//insert the RETURN WN.
    WN *return_wn = WN_CreateReturn();
    _splitter->Splitter_Replace_WN(goto_wn, return_wn);

    WN_DELETE_Tree(goto_wn);
  }//for all outside gotos
} //CWT_LIST_ELMT::Handle-Outside-Gotos()

void
CWT_LIST_ELMT::Build_Callee_Local_Labels()
{

// now we want to clone the local label list
//  for(INT i=0; i< _local_label_list->Elements(); i++)
  for(INT32 i=_local_label_list->Lastidx(); i>=0; i--)
  {
    INT32    old_label_ID = (*_local_label_list)[i].label_ID;
    WN*    old_wn = (*_local_label_list)[i].wn;

    LABEL_IDX label_index;
    LABEL& new_label = New_LABEL(_splitter->Orig_Level(), label_index);

  //we init the callee's new label, 
  //LABEL_Init (LABEL& label, STR_IDX name_idx, LABEL_KIND kind)

//	fprintf(TFile, "11&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n");
//	Print_local_symtab(TFile,_splitter->Orig_Scope() );
//	fprintf(TFile, "11&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n");

    LABEL_Init(new_label, (*(_splitter->Orig_Scope().label_tab))[old_label_ID].name_idx, LKIND_DEFAULT );

  //we modify the label's WN, pengzhao??should we modify other in wn?
    WN_label_number(old_wn) = label_index;

  // we modify the related GOTOs pointing to this label
    //for(INT j=0; j<(*_local_label_list)[i].label_goto_list->Elements();j++)
    for(INT32 j=(*_local_label_list)[i].label_goto_list->Lastidx(); j>=0;j--)
    {
      WN_label_number((*((*_local_label_list)[i].label_goto_list))[j].wn) = label_index;
    }
  } // end of "for all labels"
}

void
CWT_LIST_ELMT::Build_Cold_Pu_Scope_Tab()
{
  char *new_name_flag, *new_name_value;

  //the second parameter to New_Scope() is the pool for the SYMTABs, not for
  //the SCOPE!!!
  New_Scope(_splitter->Orig_Level(), Cold_Pu_Pool_ptr , TRUE); 
  Scope_tab[_splitter->Orig_Level()].st = _new_pu_st;
// After we clone the Scope-tab, 
// We first insert two symbols (-cwt-return-flag, -cwt-return-value)

  new_name_flag = (char*)alloca(strlen("SpLiTtEd_return_flag_callee"));
  new_name_value = (char*)alloca(strlen("SpLiTtEd_return_value_callee"));
  sprintf(new_name_flag,"SpLiTtEd_return_flag_callee");
  sprintf(new_name_value,"SpLiTtEd_return_value_callee");

  _cwt_return_flag = New_ST(CURRENT_SYMTAB);
  _cwt_return_value = New_ST(CURRENT_SYMTAB);

  ST_Init( _cwt_return_flag, Save_Str(new_name_flag), CLASS_VAR, SCLASS_FORMAL,EXPORT_LOCAL, MTYPE_To_TY(Pointer_type));
  ST_Init( _cwt_return_value, Save_Str(new_name_value), CLASS_VAR, SCLASS_FORMAL,EXPORT_LOCAL, MTYPE_To_TY(Pointer_type));

}// CWT_LIST_ELMT::Build-Cold-Pu-Scope-Tab()

/* Generate-callee() is called by Generate-callee() to generate the name FOR
 * the splitted function (i.e. CWT_LIST), whatsmore, it also generates the new 
 * symbol FOR the CWT_LIST in the global symbol table.
 */

void
CWT_LIST_ELMT::Generate_Callee_PU_ST()
{
  PU_IDX   pu_idx;
  PU&   pu = New_PU(pu_idx);
  char  *new_func_type_name;

  //  Pu_Table[pu_idx] = Pu_Table[ST_pu(orig_st)];
  // generate a new PU

  //we frist make the prototype for the new PU: 
  //borrowed from: wn_mp.cxx : Create_Nested_Parallel_Function
  new_func_type_name = (char*)alloca(Outliner_max_name_len);
  sprintf(new_func_type_name ,"_Outliner_func_type_%d", _seq_no);

  TY_IDX func_ty_idx;
  TY& func_ty = New_TY(func_ty_idx);

  TY_Init (func_ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, Save_Str(new_func_type_name));
  // The prototype of the cold pu
  TYLIST_IDX tylist_idx;
  TYLIST& tylist = New_TYLIST (tylist_idx);
  Set_TY_tylist (func_ty, tylist_idx); //This TY points a TYLIST for a PU
  Set_TYLIST_type (tylist, Be_Type_Tbl(SPLITTER_RETURN_TYPE)); //return-type

  for(INT32 i=_local_access_list->Lastidx(); i>=0; i--)
  {
    ST* orig_st = (*_local_access_list)[i].st;
    if( (*_local_access_list)[i].flag == SCALAR_DEFED) 
    {   // DEF
      Set_TYLIST_type(New_TYLIST(tylist_idx), Make_Pointer_Type (ST_type(orig_st)));
      
    }else
    {  // USE
      Set_TYLIST_type(New_TYLIST(tylist_idx), ST_type(orig_st));
    }
  }

  Set_TYLIST_type (New_TYLIST(tylist_idx), 0); // end the prototype

  PU_Init(pu, func_ty_idx, _splitter->Orig_Level());
  Set_PU_no_inline(pu);
 
  if (PU_c_lang(Current_PU_Info_pu()))
      Set_PU_c_lang(pu);
  if (PU_cxx_lang(Current_PU_Info_pu()))
      Set_PU_cxx_lang(pu);
  if (PU_f77_lang(Current_PU_Info_pu()))
      Set_PU_f77_lang(pu);
  if (PU_f90_lang(Current_PU_Info_pu()))
      Set_PU_f90_lang(pu);
  if (PU_java_lang(Current_PU_Info_pu()))
      Set_PU_java_lang(pu);                                                                  
  Set_PU_lexical_level(pu, CURRENT_SYMTAB);

  // modify the global SYMTAB
  _new_pu_st = New_ST(GLOBAL_SYMTAB);

  ST_Init(_new_pu_st, Save_Str(_cold_PU_name), CLASS_FUNC, SCLASS_TEXT, EXPORT_LOCAL, pu_idx);

  Allocate_Object ( _new_pu_st );

}//Generate-Callee-PU-ST();

//=============== function splitting (outlining)$

//^=============== repair the caller

void
CWT_LIST_ELMT::Repair_Caller()
{
  INT32   i;

  //1. We first generate the call site to cwt-function and prepare FOR the 
  //parameters FOR the CWT-function
  //The parameters are prepared in following way:
  //parm[0]: Caller_R_F()
  //parm[1]: Caller_R_V()
  //parm[i] i>=2: other local symbols referenced by the CWT

  //^1.2 Generate the call statement and its parameters
  INT num_of_parms = 2 + _local_access_list->Elements();

  WN *cwt_call = Gen_Call_Shell( _cold_PU_name, MTYPE_V, num_of_parms ) ;

  WN *lda_return_flag = WN_Lda (Pointer_type, 0, _splitter->Caller_R_F() );
  WN *lda_return_value = WN_Lda ( Pointer_type, 0, _splitter->Caller_R_V() );
  WN_actual(cwt_call, 0) = WN_CreateParm ( Pointer_type, lda_return_flag, lda_return_flag->u3.ty_fields.ty, WN_PARM_BY_VALUE );
  WN_actual(cwt_call, 1) = WN_CreateParm ( Pointer_type, lda_return_value,lda_return_value->u3.ty_fields.ty, WN_PARM_BY_VALUE );

  for(i=_local_access_list->Lastidx(); i>=0; i--)
  {
    WN *tmp_wn;
    ST *tmp_st = (*_local_access_list)[i].st;
    if( (*_local_access_list)[i].flag == SCALAR_DEFED)
    {
      tmp_wn = WN_Lda(Pointer_type, 0, tmp_st);
      WN_actual(cwt_call, i+2) = WN_CreateParm ( Pointer_type, tmp_wn, ST_type(tmp_st), WN_PARM_BY_VALUE );
    }else //SCALAR_USED
    {
      tmp_wn = WN_Ldid(ST_mtype(tmp_st), 0, tmp_st,(ST_type(tmp_st)),0); 
//      WN_actual( cwt_call, i+2 ) = Gen_Param( tmp_wn, WN_PARM_BY_VALUE);
      WN_actual( cwt_call, i+2 ) =  WN_CreateParm (WN_rtype( tmp_wn ) , tmp_wn, ST_type(tmp_st), WN_PARM_BY_VALUE );
    }
  }

#if 0
     +-------------cwt-parent-wn(a block) ----------------------- ...
     /      |          |      \      \          \      \      \
    /       |          |       \      \          \      \      \
   /        |          |        \      \          \      \      \
call-cwt  if(r_f==0) if(r_f!=1) (return r_v)  new_label compgoto natural_label
    goto natural_label  goto new-label                 /      \
                                              switch_value case_block  
#endif

  //$Generate the function call site.
  

  // We should generate a new block for the "if", because we cut the block
  // away
  WN *wn_new_block = WN_CreateBlock();
  WN_INSERT_BlockAfter(wn_new_block, NULL, cwt_call);

                            
  //^2.  Now, we replace the CWT with the generated call statement
  
  //Splitter-Replace-WN(WN *old_wn,WN *new_wn) 
  //from osprey1.0/be/lno/lego_util.cxx
  if(dump_vobose)//0x20
  {
    fprintf( TFile,"^1(_cwt_root_wn)=======================================\n");
    fdump_tree ( TFile, _cwt_root_wn);
    fprintf( TFile,"$1(_cwt_root_wn)======================================\n");
  }
  _splitter->Splitter_Replace_WN(_cwt_root_wn, wn_new_block);

  _cwt_root_pos = cwt_call;//remember the position of the cwt in the carrier
//  _cwt_parent_wn = wn_new_block;

  if (CWT_may_return || CWT_has_non_local_jump)
  {
    LABEL_IDX natural_flow_label_idx = NewLabel();
    WN  *natural_flow_label = WN_Label(natural_flow_label_idx);
    WN_INSERT_BlockAfter(wn_new_block, _cwt_root_pos, natural_flow_label);

    WN *compare_const1 = WN_Intconst(MTYPE_I4, CWT_NATURAL_FLOW);
    WN *ldid_return_flag = WN_Ldid(MTYPE_I4, 0, _splitter->Caller_R_F(), Be_Type_Tbl(MTYPE_I4), 0);
    WN *compare_wn = WN_EQ(MTYPE_I4, compare_const1, ldid_return_flag);
    
    WN *end_cond1 = WN_CreateTruebr( natural_flow_label_idx, compare_wn);
    WN_INSERT_BlockBefore(wn_new_block, natural_flow_label, end_cond1);


  //^3. The following codes deal with return stmt in the CWT (need 
  //double-return) 
  //Further implementation: double_return()!!! (pengzhao, valencia)
  if (CWT_may_return)
  {
    //construct if(cwt-return-flag) then return
    //
    //Should insert a label after the call
    //
    //1. call_cwt
    //2. if (CWT-may-return)... else goto EXTRA_label
    //3. EXTRA_label: switch for non-local-goto or natural flow

    //3.1 insert a new label just after the inserted call
    LABEL_IDX new_label_idx = NewLabel();
    WN  *new_label = WN_Label(new_label_idx);
    WN_INSERT_BlockBefore(wn_new_block, natural_flow_label, new_label);

    //3.2 insert a FALSEBR whirl-tree
    WN *compare_const = WN_Intconst(MTYPE_I4, CWT_RETURN);
    WN *ldid_return_flag = WN_Ldid(MTYPE_I4, 0, _splitter->Caller_R_F(), Be_Type_Tbl(MTYPE_I4), 0);
    WN *compare_wn = WN_NE(MTYPE_I4, compare_const, ldid_return_flag);
    
    WN *end_cond = WN_CreateTruebr( new_label_idx, compare_wn);
    WN_INSERT_BlockBefore(wn_new_block, new_label, end_cond);

    // (3) insert the RETURN_VAL between the label and the FALSEBR
	if(_splitter->Return_Ty_Idx() == Be_Type_Tbl(MTYPE_V))//RETURN
	{
	  WN *tmp_return = WN_CreateReturn();
      WN_INSERT_BlockBefore(wn_new_block, new_label, tmp_return);
	}else //RETURN_VAL
	{
	  // if the carrier is not "void-typed", we don't care the case
	  // in which the CWT RETURN instead of RETURN_VAL, thus the 
	  // return-value is random in this situation.
      WN *tmp_return_value = WN_Ldid(_splitter->Return_Type_Id(), 0, 
	            _splitter->Caller_R_V()->st_idx,
				Be_Type_Tbl(_splitter->Return_Type_Id()),0);

//    WN *tmp_return_val = WN_CreateReturn_Val(OPR_RETURN_VAL,_splitter->Return_Type_Id() ,_splitter->Return_Type_Id(),tmp_return_value);
      WN *tmp_return_val = WN_CreateReturn_Val(OPR_RETURN_VAL,
			    _splitter->Return_Type_Id(), MTYPE_V, tmp_return_value);
      WN_INSERT_BlockBefore(wn_new_block, new_label, tmp_return_val);
	}
  }

  //          cwt-parent-wn ----------------------- ...
  //          /          |         \           \        \
  //         /           |          \           \        \
  //        /            |           \           \        \
  //  call-site-to-cwt  if(r-f!=1) (return r-v)  new_label compgoto
  //                goto new_label                           /    \
  //                                                        /      \
  //                                               switch_value case_block  
  //
  // Following codes deal with the jump to non-local-label in the CWT

  if (CWT_has_non_local_jump)
  {
    WN    *case_block= WN_CreateBlock ();
    //construct compgoto

    //CWT_NON_LOCAL_GOTO equals 2
    WN *leaf_const_2 = WN_Intconst(MTYPE_I4, CWT_NON_LOCAL_GOTO);
    WN *ldid_return_flag =  WN_Ldid(MTYPE_I4, 0, _splitter->Caller_R_F(), Be_Type_Tbl(MTYPE_I4), 0);
    WN *return_flag_minus_2 = WN_Sub(MTYPE_I4, ldid_return_flag, leaf_const_2);
  
//    for(INT i=0; i<_out_label_list->Elements(); i++)
    for(INT32 i=_out_label_list->Lastidx(); i>=0; i--)
    {
      //generate the GOTOs-block for COMPGOTO 
    
      WN *wn_goto = WN_CreateGoto((ST_IDX)NULL, (*_out_label_list)[i].label_ID);
      WN_INSERT_BlockBefore(case_block, WN_first(case_block), wn_goto);
    }

    WN *wn_compgoto = WN_CreateCompgoto(_out_label_list->Elements(), return_flag_minus_2, case_block, NULL, 0);

    WN_INSERT_BlockBefore(wn_new_block, natural_flow_label, wn_compgoto);
  } // if there are non-local-jumps
  }// if (CWT-may-return || CWT-has-non-local-jump)

  //dump the modified PUs (i.e. the original PU)
  if(dump_result) //0x0004
  {
    fprintf( TFile,DBar);
	fprintf( TFile, "The carrier after the outlining of CWT_%d", _seq_no);
    fdump_tree ( TFile, _splitter->Orig_Pu_Tree());
    fprintf( TFile,DBar);
  }
}// CWT_LIST_ELMT::Repair-caller()

//=============== repair the caller$

//
//^=============== DYN_ARRAY related functions
//pengzhao, SPLITTER::Appear-in-Goto-List, should we make is a member function?
INT
Appear_in_Goto_List( GOTO_LIST *goto_list, WN *wn)
{

  for(INT32 i=(*goto_list).Lastidx(); i>=0; i-- )
  {
    if(wn == (*goto_list)[i].wn)
      return i;
  }

  return -1;

}

void
Add_Goto_List(GOTO_LIST *goto_list ,WN* wn, mINT32 label_list_idx)
{
  struct GOTO_LIST_ELMT goto_list_elmt;

  goto_list_elmt.wn = wn;
  goto_list_elmt.flag = label_list_idx;

  // insert this label into the label_list
  (*goto_list).AddElement(goto_list_elmt);

}

void 
Add_Goto_List(GOTO_LIST *goto_list ,WN* wn)
{
  struct GOTO_LIST_ELMT goto_list_elmt;

  goto_list_elmt.wn = wn;
  goto_list_elmt.flag = -1;

  // insert this label into the label_list
  (*goto_list).AddElement(goto_list_elmt);

}

//  label related stuff
INT
Appear_in_Label_List( LABEL_LIST *label_list, WN *wn)
{
  INT32 label_ID = WN_label_number(wn);

  for(INT32 i=(*label_list).Lastidx(); i>=0; i-- )
  {
    if((*label_list)[i].label_ID == label_ID)
      return i;
  }
  
  return -1;
}//Appear-in-label-list()

INT 
CWT_LIST_ELMT::Appear_in_access_list(ST *st)
{
//  for(INT32 i=0; i< _local_access_list->Elements(); i++)
  for(INT32 i=_local_access_list->Lastidx(); i>=0; i-- )
  {
    if(st == (*_local_access_list)[i].st)
      return i;
  
  }

  return -1;
}

// Add-global-label-list() is only used when a forward GOTO is encoutered
// When a OPC_LABEL is encounted, it is directly handled without calling this 
// subroutine
void
Add_Label_List(LABEL_LIST *label_list ,WN* wn, mINT32 CWT_ID )
{
  struct LABEL_LIST_ELMT label_list_elmt;
  struct GOTO_LIST_ELMT  tmp;

  tmp.wn = wn;
  tmp.flag = CWT_ID;

  label_list_elmt.label_ID = WN_label_number(wn);
//  label_list_elmt.flag     = -1;
  
  //initialization for the gotos pointing to this label
  label_list_elmt.label_goto_list = CXX_NEW(DYN_ARRAY<GOTO_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);

  // add the goto pointing to this label
  label_list_elmt.label_goto_list->AddElement(tmp); 

  // insert this label into the label_list
  (*label_list).AddElement(label_list_elmt);
}//Add-label-list()


//=============== DYN_ARRAY related functions$
//
//^=============== splitter
/* aNalyze() goes through the original function's WT, check the weight of the 
 * CWT_LISTs.
 */
void
SPLITTER::Outlining()
{
  INT i,j,k, start_j;


  if (Cur_PU_Feedback)
  {
    if(dump_action) //0x1
      fprintf(TFile," In SPLITTER::Outlining(), Cur_PU_Feedback OK, calls Splitter-Collect-Fdbk-Statistics\n");

    clct_blk_freq(_orig_pu_tree);

    prop_blk_freq();

	if(Get_Trace(TP_OUTLINING, TP_OUTLINING_FREQ))//0x0008
	{
      outlining_dump_freq(TFile);
	}

    // if the feedback information is ready
    Splitter_Collect_Fdbk_Statistics(_orig_pu_tree);
  }
  else
  {
    if(dump_action) //0x1
    {
      fprintf(TFile, " In SPLITTER::Outlining(), Cur_PU_Feedback NO,"); 
      fprintf(TFile, " calls Splitter_Collect_Guess_CWT\n");
    }

    // if the feedback information is NOT ready, we have to turn to some
    // simple heuristics such as setjmp, longjmp, exit etc
    Splitter_Collect_Guess_CWT(_orig_pu_tree);
  }

  if(dump_action) //0x1
  {
    fprintf(TFile, " In SPLITTER::Outlining(), End of frequency analysis, starting splitting\n");
    fprintf(TFile, " In SPLITTER::Outlining(), There are %d CWTs\n",_cold_WTs->Elements());
  }

  // Check the cold trees: if there are multiple entries
  // we will discard this cold whirl tree

  // FOR all cold whirl trees, indexed by i
  // i-th CWT-LIST-ELMT, j-th -local-label-list, k-th -global-label-list
  for(i=_cold_WTs->Lastidx(); i>=0; i--)
  {
    _current_cwt_elmt = &((*_cold_WTs)[i]);
    //FOR all the labels in the i-th cold whirl tree, indexed by j
    //
    //And because we don't really care about the obvious entry (the first
    //WN): if it is a label and there are many GOTOs out of the CWT_LIST, 
    //no need to worry about it: we still think it is a single-entry CWT_LIST
    
    if(WN_opcode(WN_kid(_current_cwt_elmt->Get_root_wn(), 0)) != OPC_LABEL)
    {
      // the first WN is not a label. ??all the local labels are not the entry
      start_j=0; 
    }
    else
    {
      // if there are labels in this CWT_LIST, we will do some verification:
      // whether the first label's id is consistant
      if(_current_cwt_elmt->Local_label_list()->Elements() > 0)
      {
      // if the first kid of this tree is label but not the same with the
      // -local-label-list[0]
        Is_True(((*(_current_cwt_elmt->Local_label_list()))[0].label_ID != WN_label_number(WN_kid(_current_cwt_elmt->Get_root_wn(), 0))), ("Error in the splitter, discrepancy between the -local-label-list and -global-label-list(1)"));
      }

      start_j=1; // the first label([0]) is the obvious entry
    }

    //FOR all the local labels
    for(j =(_current_cwt_elmt->Local_label_list()->Lastidx()); 
					j>=start_j; j--)
    {
      
      if ( (k = Appear_in_Label_List( _global_label_list,
		(*(_current_cwt_elmt->Local_label_list()))[j].wn )) >= 0)

      Is_True((k>=0), 
	  ("Error in the splitter, discrepancy between the "
	   "-local-label-list and -global-label-list(2)"));

      // if there are more gotos to this label in 
	  // _global_label_list than the local gotos, 
      // It implies there are GOTOs outside this 
	  // CWT pointing to this label, thus
      // it is a multi-entry whirl-tree. We will 
	  // ignore this kind of trees
      if((*_global_label_list)[k].label_goto_list->Elements() > (*(_current_cwt_elmt->Local_label_list()))[j].label_goto_list->Elements())
      {
        _cold_wn_counter -= _current_cwt_elmt->Estimated_size();
        _current_cwt_elmt->Set_cwt_flag( MULTI_ENTRY );
      }
    }//for all local labels in this CWT
  }//for all CWTs

  if( ((float)_cold_wn_counter/(float)_total_wn_counter) >= SPLITTING_THRESHOLD)
  {
    Split_functions();
  }

  //Clear the Block-freq-mapping for this pu
  //this mapping is generated in the annotation phase, used in the
  //propagate-freq phase and CWT identification phase
  //maybe it can be cleared early (just after the CWT identification phase
  Outlining_Block_List.erase(Outlining_Block_List.begin(), Outlining_Block_List.end());
}//outlining()


/* Split-functions() is called by Outlining()
 * For all the CWT_LISTs, Split-functions() cuts them from the original WT
 */
void
SPLITTER::Split_functions()
{
  INT i;
  
  for(i=(*_cold_WTs).Lastidx(); i>=0; i-- )
  {
    _current_cwt_elmt = &((*_cold_WTs)[i]);
    if(_current_cwt_elmt->Get_cwt_flag() == SINGLE_ENTRY)
    {
      if(dump_action) //0x1
      {
        fprintf( TFile,"%d.......... Collecting outside goto  statistics\n",i);
      }
      _current_cwt_elmt->Collect_Outside_Goto_Info();

      // generate the splitted function's name
      _current_cwt_elmt->Cold_pu_name() =
            (char*)alloca(strlen(ST_name(Scope_tab[CURRENT_SYMTAB].st))+32);

      sprintf(_current_cwt_elmt->Cold_pu_name(),"SpLiTtEd_%s_%d", 
        ST_name(Scope_tab[CURRENT_SYMTAB].st), (*_cold_WTs)[i].Get_cwt_seqno());


      //Following codes split the current CWT
  if(dump_action) //0x1
  {
    fprintf( TFile,"%d................ Collecting access statistics\n",i);
  }
      _current_cwt_elmt->Collect_access_stat(_current_cwt_elmt->Get_root_wn()); // Collect DU info 

      //   1. replace the CWT with the call to the new function
      //  2. Parameter preparation
      //  Repaire the caller
//####      _current_cwt_elmt->Repair-Caller();

      // should the global symtab be modified?
      // test:A calls B, does B appear in A's symtab or the global symtab?
      // answer: B appears ONLY in the global symtab

      // Cut the CWT_LIST based on which a new callee is generated

      _current_cwt_elmt->Generate_Cold_Procedure();
      _current_cwt_elmt->Repair_Caller();
    } // if this is a single-entry WT
  }// for all cold WTs
}//Split-functions()

// pengzhao: TODO
void 
SPLITTER::Splitter_Collect_Guess_CWT(WN* wn)
{

}
#if 0
UINT64
SPLITTER::Splitter_Collect_Fdbk_Statistics2(WN *wn)
{

  if(wn)
  {
    _total_wn_counter ++;

    if(_Splitter_state == IN_COLD_AREA)
    {
      _cold_wn_counter++;

      (_current_cwt_elmt->Estimated_size()) ++;
    }
    
    OPCODE opc = WN_opcode(wn);

    switch (opc)
    {
      case OPC_IF:
      {
        if(WN_then(wn)) 
        {
          UINT64 tmp_freq = Splitter_Collect_Fdbk_Statistics2( WN_then(wn) );
        }
        
        Propagate_Freq_to_Ancestors( wn );
        record_if();
        break;
      }

      case OPC_DO_LOOP:
      case OPC_DO_WHILE:
      case OPC_WHILE_DO:
      {
        Splitter_Collect_Fdbk_Statistics2( wn );
        Propagate_Freq_to_Ancestors( wn );
        break;
      }

    }
  }

}


void 
SPLITTER::Propagate_Freq_to_Ancestors(WN* wn)
{
    WN   *parent = Splitter_Get_Parent( wn );
  BOOL end_of_propagation = FALSE;

  // propagate the freq to its ancestor
  while ((parent != NULL) && (end_of_propagation == FALSE)) 
  {
    switch(WN_opcode(parent))
    {
      case OPC_IF:
        if(propagated_freq(parent) < self-freq)
        {
        } else
        {
          end_of_propagation = TRUE;  
        }


      break;

      case OPC_DO_LOOP:
      case OPC_WHILE_DO:
      case OPC_DO_WHILE:
        if(propagated_freq(parent) < self-freq)
        {
        } else
        {
          end_of_propagation = TRUE;  
        }

      break;
    }
    parent = Splitter_Get_Parent( wn );
  }
}
#endif

/*
 *  Splitter-collect-stat() collect the global label, goto info, the cold 
 *  regions, the goto&label in cold regions
 */
void 
SPLITTER::Splitter_Collect_Fdbk_Statistics(WN* wn)
{

  if(wn)
  {
    if (dump_vobose) //0x20
    {
      dump_wn(wn);
      fflush(stdin);
//      getchar();
      fflush(stdin);
    }
    _total_wn_counter ++;

    if(_Splitter_state == IN_COLD_AREA)
    {
      _cold_wn_counter++;

      (_current_cwt_elmt->Estimated_size()) ++;
    }
    
    OPCODE opc = WN_opcode(wn);

    switch (opc)
    {
      case OPC_BLOCK:
      {

        //pengzhao: should we check the parent of this block
        //initially, we only take care of the children blocks of IF and loops
        //but some other control flow structure have children blocks
        //their freq are not handled and probabaly will be  0 and then get cut
        //
        //and maybe we should add some codes here to take care of those
        //too-small blocks (considering the codes inserted after outlining
        WN* tmp_parent = Splitter_Get_Parent(wn);
        OPCODE tmp_opcode = WN_opcode(tmp_parent);

        float tmp_freq = Outlining_Block_List[(INTPTR)(wn)];
        if( (tmp_freq < 0.2 * PU_max_freq)
            && (_Splitter_state == IN_NORMAL_AREA) &&
            (WN_kid(wn, 0)))
//            (tmp_opcode != OPC_FUNC_ENTRY))
        {
          // We are entering a cold CWT
          _Splitter_state = IN_COLD_AREA;
          Record_cold_region((wn));

//    if(WN_opcode(WN_kid(_current_cwt_elmt->Get_root_wn(), 0)) != OPC_LABEL)
          WN *wn2 = WN_first(wn);
          while(wn2)
          {
            Splitter_Collect_Fdbk_Statistics(wn2);  
            wn2 = WN_next(wn2);
          }
          // We are exiting a cold CWT
          _Splitter_state = IN_NORMAL_AREA;
         }else
         {
          WN *wn2 = WN_first(wn);
          while(wn2)
          {
            Splitter_Collect_Fdbk_Statistics(wn2);  
            wn2 = WN_next(wn2);
          }
        }
  
        break; // OPC_BLOCK
      }

      case OPC_REGION:
      Splitter_Collect_Fdbk_Statistics(WN_region_exits(wn));
      Splitter_Collect_Fdbk_Statistics(WN_region_pragmas(wn));
      Splitter_Collect_Fdbk_Statistics(WN_region_body(wn));
      
      break;

      case OPC_IF:
      {

        const FB_Info_Branch& info_branch =  Cur_PU_Feedback->Query_branch(wn);
        if(dump_action) //0x1
        {
//         fprintf( TFile,"fb_idx of if is %d\n", Get_index_branch( wn ));
           info_branch.Print(stdout);
           fprintf( TFile,"\n");
        }

        if(WN_then(wn)) 
        {
          if(dump_action) //0x1
          {
            fprintf( TFile,"in Splitter-Collect-Fdbk-Statistics: IF statement\n");
            info_branch.Print(stdout);
            fprintf( TFile,"\n");
          } 
          // Only when we find a new cold whirltree, we record it
          if((info_branch.freq_taken == FB_FREQ_ZERO) && (_Splitter_state == IN_NORMAL_AREA))
          {
//            _Splitter_state = IN_COLD_AREA;
//            Record_cold_region(WN_then(wn));

             Splitter_Collect_Fdbk_Statistics(WN_then(wn));

//             _Splitter_state = IN_NORMAL_AREA;

            // Check the cold trees: if there is multiple entry
            // we will discard this cold whirl tree
          }else
          {
            Splitter_Collect_Fdbk_Statistics(WN_then(wn));
          }
        }
  
        if(WN_else(wn) ) // handle the ELSE block
        {
          // Only when we find a new cold whirltree, we record it
          if((info_branch.freq_not_taken == FB_FREQ_ZERO) && (_Splitter_state == IN_NORMAL_AREA))
          {
//            _Splitter_state = IN_COLD_AREA;
//            Record_cold_region(WN_else(wn));
            Splitter_Collect_Fdbk_Statistics(WN_else(wn));
//            _Splitter_state = IN_NORMAL_AREA;
          }else
          {
            Splitter_Collect_Fdbk_Statistics(WN_else(wn));
          }

        }
  
        break; // OPC_IF
      }
      
       case OPC_DO_LOOP:
    if (outlining_detail_dumping) 
    {
//        fprintf( TFile,"fb_idx of if is %d\n", Get_index_loop( wn ));
        Cur_PU_Feedback->Query_loop(wn).Print(stdout);
        fprintf( TFile,"\n");
    }
        // check the iteration/max

        Splitter_Collect_Fdbk_Statistics(WN_index(wn));
        Splitter_Collect_Fdbk_Statistics(WN_start(wn));
        Splitter_Collect_Fdbk_Statistics(WN_end(wn));
        Splitter_Collect_Fdbk_Statistics(WN_step(wn));
        Splitter_Collect_Fdbk_Statistics(WN_do_body(wn));
        if ( WN_do_loop_info(wn) != NULL ) 
          Splitter_Collect_Fdbk_Statistics(WN_do_loop_info(wn));

      break; // OPC_DO_LOOP

      case OPC_LOOP_INFO:

      if ( WN_loop_induction(wn) != NULL ) 
      {
        Splitter_Collect_Fdbk_Statistics(WN_loop_induction(wn));
      }

      if ( WN_loop_trip(wn) != NULL ) 
      {
        Splitter_Collect_Fdbk_Statistics(WN_loop_trip(wn));
          }
      case OPC_COMPGOTO:

        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,0));
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,1));

        if(WN_kid_count(wn) > 2)
        {
          Splitter_Collect_Fdbk_Statistics(WN_kid(wn,2));
        } // handle the default case
      break; // OPC_COMPGOTO

      case OPC_SWITCH:

// Kid 0 is a switch expression
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,0)); 

// Kid 1 is a block that defines the jump table 
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,1)); 

        if(WN_kid_count(wn) > 2) // handle the default case
        {
          Splitter_Collect_Fdbk_Statistics(WN_kid(wn,2));
        } // handle the default case

      break; //OPC_SWITCH

      case OPC_XGOTO:
      {
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,0));
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,1));
      }
      break; // OPC_XGOTO

      case OPC_WHERE: 
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,0));
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,1));
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,2));
      break; // OPC_WHERE

      case OPC_EXC_SCOPE_BEGIN: 
      {
        INT i;
//        for(i=0; i< WN_kid_count(wn); i++)
        for(i=WN_kid_count(wn)-1; i>=0; i-- )
          Splitter_Collect_Fdbk_Statistics(WN_kid(wn,i));
      }
      break; // OPC_EXC_SCOPE_BEGIN

      case OPC_ASM_STMT:
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,0));
        Splitter_Collect_Fdbk_Statistics(WN_kid(wn,1));
        {
          INT i;
          //for (i = 2; i < WN_kid_count(wn); i++) 
          for (i =WN_kid_count(wn)-1 ; i>=2; i-- ) 
          {
            Splitter_Collect_Fdbk_Statistics(WN_kid(wn,i));
          }
            }
      break; //OPC_ASM_STMT

      case OPC_GOTO:
      case OPC_TRUEBR:
      case OPC_FALSEBR:
      case OPC_CASEGOTO:
      case OPC_REGION_EXIT:
      case OPC_GOTO_OUTER_BLOCK:
      {
        
        INT i;

        // record the label and related goto info in _global_label_list
        if ( (i = Appear_in_Label_List( _global_label_list, wn)) >= 0)
        {
          // if the label has appeared before, we only add this wn to
          // the goto_list of the label
          struct GOTO_LIST_ELMT tmp;

          tmp.wn = wn;
          tmp.flag = _cold_WTs->Lastidx();
          (*_global_label_list)[i].label_goto_list->AddElement(tmp);
        }
        else
        {
          //  this label appears the first time, we will have to first
          //  add this label to the global_list and then add this wn
          //  to the new goto-list
          Add_Label_List(_global_label_list,wn,_cold_WTs->Lastidx());
        }

        // For gotos & labels, if we are IN_COLD_AREA, we not only
        // record it in global DS, but the cold-related DS
        if(_Splitter_state == IN_COLD_AREA)
        {
          //1. first we add the label list, 
          if((i = Appear_in_Label_List( (_current_cwt_elmt->Local_label_list()), wn)) >= 0)
          {
            struct GOTO_LIST_ELMT tmp;
            tmp.wn = wn;
            tmp.flag = _cold_WTs->Lastidx();
            (*(_current_cwt_elmt->Local_label_list()))[i].label_goto_list->AddElement(tmp);
          }
          //why we should add the GOTO's label in the cwt's 
          //label_list? I think no need. If the GOTO's label is in the
          //current CWT, we add the wn to the label's gotolist.
          //otherwise, no need to worry about it
          /*
          else
          {
            Add_Label_List( (_current_cwt_elmt->Local_label_list()),wn, _cold_WTs->Lastidx());
          }
          */

          //2. then we add the local-goto-list
          // if the goto happens in a CWT, we should rocord it in the
          // local-goto-list
          //valencia, is this "if" statement necessary? we meet it the first time, should be
          if((i = Appear_in_Goto_List( (_current_cwt_elmt->Local_goto_list()), wn)) < 0)
          {
            Add_Goto_List( (_current_cwt_elmt->Local_goto_list()),wn, _cold_WTs->Lastidx());
          }
        }// cold area
      }

      break;

      case OPC_LABEL:
      {
        INT local_idx,global_idx;

		//insert the info about this label into the global-label-list
		//at the same time, get its index (global_idx) in the global-label-list
        if ( (global_idx = Appear_in_Label_List( _global_label_list, wn)) >= 0)
          (*_global_label_list)[global_idx].wn = wn;
        else
        {
          struct LABEL_LIST_ELMT label_list_elmt;
          
          // init for the label-goto-list
          label_list_elmt.label_goto_list = CXX_NEW(DYN_ARRAY<GOTO_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);

            label_list_elmt.label_ID = WN_label_number(wn);
            label_list_elmt.wn       = wn;
//            label_list_elmt.flag     = -1;
  
            // insert this label into the label_list
            _global_label_list->AddElement(label_list_elmt);

			//get the index in the global-label-list
            global_idx = _global_label_list->Lastidx();
        }

		//if in cold area, add this label info in the local-label-list
		//at the same time, get its index (local_idx )in the local-label-list

        if(_Splitter_state == IN_COLD_AREA)
        {
          if ( (local_idx = Appear_in_Label_List( (_current_cwt_elmt->Local_label_list()), wn)) >= 0)
          {
            //pengzhao, here should not be reached
            (*(_current_cwt_elmt->Local_label_list()))[local_idx].wn = wn;
          }
          else
          {
            struct LABEL_LIST_ELMT label_list_elmt;
            
            // init for the label-goto-list
            label_list_elmt.label_goto_list = CXX_NEW(DYN_ARRAY<GOTO_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);
  
            label_list_elmt.label_ID = WN_label_number(wn);
            label_list_elmt.wn = wn;
//            label_list_elmt.flag     = _cold_WTs->Lastidx();
    
            // insert this label into the label_list
            (_current_cwt_elmt->Local_label_list())->AddElement(label_list_elmt);
            local_idx = (_current_cwt_elmt->Local_label_list())->Lastidx();
          }

		  //copy the this label's goto information from the -global-label-list
		  //and we only copy the GOTOs in the same CWT
		  // GOTOs from outside of this CWT are in global-label-list's gotos
		  // thus global's goto-list is larger than local's goto-list
		  // this is used to identify the single-entry CWT
          DYN_ARRAY<GOTO_LIST_ELMT> *tmp_goto_list = (*_global_label_list)[global_idx].label_goto_list;
          mINT32  tmp_flag = _cold_WTs->Lastidx();
          for(INT32 k=tmp_goto_list->Lastidx(); k>=0; k--)
          {
            if((*tmp_goto_list)[k].flag == tmp_flag)
			{
			  DYN_ARRAY<GOTO_LIST_ELMT>* tmp_local_goto_list;
			  tmp_local_goto_list = (*(_current_cwt_elmt->Local_label_list()))[local_idx].label_goto_list;
			  tmp_local_goto_list->AddElement((*tmp_goto_list)[k]);
			  (*tmp_local_goto_list)[tmp_local_goto_list->Lastidx()].flag = _cold_WTs->Lastidx();
			}
            //  (_current_cwt_elmt->Local_label_list())->AddElement(label_list_elmt);
          }
        }
      }
      break;
      case OPC_DO_WHILE:
      case OPC_WHILE_DO:
      {
    if(dump_action) //0x1
	{
//        fprintf( TFile,"fb_idx of if is %d\n", Get_index_loop( wn ));
        Cur_PU_Feedback->Query_loop(wn).Print(stdout);
        fprintf( TFile,"\n");
    }
        INT i = WN_kid_count(wn)-1;
        //for (i = 0; i < WN_kid_count(wn); i++) 
        for ( ; i>=0; i-- ) 
          Splitter_Collect_Fdbk_Statistics(WN_kid(wn,i));
      
      }

      break;

      default:
      {
        INT i = WN_kid_count(wn)-1;
        //for (i = 0; i < WN_kid_count(wn); i++) 
        for ( ; i>=0; i-- ) 
          Splitter_Collect_Fdbk_Statistics(WN_kid(wn,i));
      
      }
    } // switch ends here
  }// if the wn is not NULL
}//Splitter-Collect-Fdbk-Statistics()


//=============== DYN_ARRAY related functions$

void
SPLITTER::Record_cold_region(WN *wn)
{
  //pengzhao (parentmap & maptab)

  WN *parent_wn = (WN*)WN_MAP_Get(_parent_map, wn );

  CWT_LIST_ELMT  cwt_elmt(this, wn, parent_wn);

  cwt_elmt.Set_cwt_seqno(_cold_WTs->Elements());

  _cold_WTs->AddElement(cwt_elmt);

  CWT_LIST_ELMT* cwt_elmt_ptr = &((*_cold_WTs)[_cold_WTs->Lastidx()]);

  cwt_elmt_ptr->Local_label_list() = CXX_NEW(DYN_ARRAY<LABEL_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);
  cwt_elmt_ptr->Local_Access_List() = CXX_NEW(DYN_ARRAY<ACCESS_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);
  cwt_elmt_ptr->Local_goto_list()  = CXX_NEW(DYN_ARRAY<GOTO_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);

  cwt_elmt_ptr->Out_label_list() = CXX_NEW(DYN_ARRAY<LABEL_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);
  cwt_elmt_ptr->Out_goto_list() = CXX_NEW(DYN_ARRAY<GOTO_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);

  cwt_elmt_ptr->Rv_List() = CXX_NEW(DYN_ARRAY<RV_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);


  //current_cwt_elmt points to the last (or latest) cold whirltree
  _current_cwt_elmt = &((*_cold_WTs)[_cold_WTs->Lastidx()]);
}//Record-cold-region()

// Collect-access-stat() is a resursive function, called by Split-functions()
// Collect-access-stat() collect the access(Use and Def) info in the cold
// whirltree, these access-info is used to modify caller(generate the parameters
// to the callee) and callee(let the callee use or modify the data from the 
// caller )
//
// It calls Add-use() and Add-def() to record the access information in a CWT_LIST
void
CWT_LIST_ELMT::Collect_access_stat(WN *wn)
{
  
  if (wn == NULL)
    return;
 
  if(dump_vobose)//0x20
  {
    dump_wn(wn);
    fflush(stdin);
//    getchar();
    fflush(stdin);
  }
  const OPCODE   opc = WN_opcode(wn);
  const OPERATOR opr = OPCODE_operator(opc);

  // find the variables used or defined(say the set is V)
  
  switch ( opr ) 
  {
    case OPR_LDID:
            // here, "->" means "calls"
            // in case this variable is used by the callee's callee
              // e.g. A() -> B() -> C(), B use "X", and C(&X)
              // transformed to B(&X) -> C(X)
            // &x, the callee's parameter is &x, the original &x->x
    case OPR_LDBITS:  // Add this to the symtab&Parm-list of the new callee
      // search the use-list & def-list
      // if in use-list, nothing, 
      // else if in def-list, (later change the access from X to *X)
      // else if not-appeared before, add into the parameter-list

      // use-list[i] ---> position (WN*)
      // def-list[i] ---> position (WN*)
      //
      // struct use-list-elmt{idx-to-the-caller, WN* WNs}

    // attention!!! peng. Should be < current scope level
    //we donot care the global variables
	{
      if( ST_IDX_level(WN_st_idx(wn)) == PU_lexical_level(PU_Info_pu(_splitter->Orig_Pu_Info())))
        Add_use( wn);
  
      INT32 i = WN_kid_count(wn)-1;  
      for(; i>=0; i-- )
      {
          Collect_access_stat(WN_kid(wn,i));
      }

      break;
	}


    case OPR_STBITS:
    case OPR_STID:     // A()->B(), in which B() modified "X"
    case OPR_LDA:  // LDA is regarded as defined (reference at the caller side)
               // transformed to B(&X), in B(), X-> *X

    //we donot care the global variables
	{
      if( ST_IDX_level(WN_st_idx(wn)) == PU_lexical_level(PU_Info_pu(_splitter->Orig_Pu_Info())))
        Add_def(wn);

      INT32 i = WN_kid_count(wn)-1;  
      for(; i>=0; i-- )
      {
          Collect_access_stat(WN_kid(wn,i));
      }

      break;
	}

    case OPR_RETURN:
    case OPR_RETURN_VAL:
	{

    //record the RETURN_VAL WNs

      CWT_may_return = TRUE;
      RV_LIST_ELMT  tmp_rv_elmt;
      tmp_rv_elmt.wn = wn;
      _rv_list->AddElement(tmp_rv_elmt);

      INT32 i = WN_kid_count(wn)-1;  
      for(; i>=0; i-- )
      {
          Collect_access_stat(WN_kid(wn,i));
      }

      break;
	}

    case OPR_BLOCK:
    {
      WN *wn2 = WN_first(wn);
      while(wn2)
      {
        Collect_access_stat(wn2);  
        wn2 = WN_next(wn2);
      }
      break; // OPR_BLOCK
    }
    default:
    {
      INT32 i = WN_kid_count(wn)-1;  
      for(; i>=0; i-- )
      {
        Collect_access_stat(WN_kid(wn,i));
      }
	}
  } //end of switch
}//Collect-access-stat()


/* Add-def() is called by Collect-access-stat(). when Collect-access-stat() runs
 * into a use-site, it record this use
 * if the defed varialbes has been recorded, it just add the WN.
 * if the defed varialbes has never been recorded, it recorded the variable and
 * the related WN
 */
void
CWT_LIST_ELMT::Add_def( WN *wn)
{
  INT i;
  ST*  st= WN_st(wn);
  if((i = Appear_in_access_list(st)) >= 0)//appears before 
  {
    (*_local_access_list)[i].wn_list->AddElement(wn);
    
    // we will change the symbol's list in USE_LIST to DEF_LIST
//    if ((*_local_access_list)[i].flag == SCALAR_USED)
      (*_local_access_list)[i].flag = SCALAR_DEFED; // mark it "to be modified"
  }else // this symbol never appears in the sub-whirltree
  {
    Record_access(st, wn, SCALAR_DEFED);
  }
}//Add-def()


/* Add-use() is called by Collect-access-stat(). when Collect-access-stat() runs
 * into a use-site, it record this use
 * if the used varialbes has been recorded, it just add the WN.
 * if the used varialbes has never been recorded, it recorded the variable and
 * the related WN
 */
void
CWT_LIST_ELMT::Add_use( WN *wn)
{
  INT i;
  ST *st= WN_st(wn);
  if((i = Appear_in_access_list(st)) >= 0) // this symbol is defined before 
  {
    // record the wn in which the variable is used
    (*_local_access_list)[i].wn_list->AddElement(wn);
  }else // this symbol never appears in the sub-whirltree
  {
    Record_access(st, wn, SCALAR_USED);
  }
}//Add-use()

void
CWT_LIST_ELMT::Add_lda( WN *wn)
{
  INT i;
  ST *st= WN_st(wn);
  if((i = Appear_in_access_list(st)) >= 0) // this symbol is defined before 
  {
    // record the wn in which the variable is used
    (*_local_access_list)[i].wn_list->AddElement(wn);
  }else // this symbol never appears in the sub-whirltree
  {
    Record_access(st, wn, LDA_USED);
  }
}//Add-lda()

/* Record-access is called by Add-use() and Add-def(), it record the access site
 * in a cold whirl tree
 */
void
CWT_LIST_ELMT::Record_access(ST *st, WN* wn, SPLITTER_ACCESS_FLAG flag)
{
  ACCESS_LIST_ELMT access_list_elmt;

  access_list_elmt.wn_list=CXX_NEW(DYN_ARRAY<WN*>(Splitter_mem_pool),Splitter_mem_pool);
  access_list_elmt.st= st;
  access_list_elmt.wn_list->AddElement(wn);  
  access_list_elmt.flag = flag;

  _local_access_list->AddElement(access_list_elmt);// copy access_list_element into the local-access-list
}//Record-access()


#if 0
// make a copy of the specified entry of Scope_tab, so that it can be later 
// restored by Restore_Local_Symtab.  This is primarily used by the
// mp-lowerer where multiple nested procedures are created before they are
// compiled. We need a place holder for their corresponding tree nodes and
// local symtab.  Note that the Scope_tab entry will be re-initialized for
// the next nested procedure.
void
CWT_LIST_ELMT::Splitter_Save_Local_Symtab (SYMTAB_IDX level, PU_Info *pu)
{
    // Why all this assertion checking?  Because this way of saving/
    // restoring scopes is a hack that the symbol table and PU_Info
    // classes weren't really designed to support, so this could easily
    // break if it's used in an unexpected way.
  FmtAssert (PU_Info_state (pu, WT_SYMTAB) == Subsect_InMem,
             ("Local symbol table not in memory"));
  FmtAssert (level >= 2,
             ("saving symtab at too high a level (%d)", level));
  FmtAssert (Current_scope >= level, ("bad level and/or Current_scope"));

    // to make sure that save/restore symtab hack is used only by those
    // who understand it, the caller must set symtab_ptr to NULL
  FmtAssert (PU_Info_symtab_ptr(pu) == NULL,  
             ("Incorrect call to Save-Local-Symtab"));
  FmtAssert (level == PU_lexical_level (&St_Table[PU_Info_proc_sym (pu)]),
             ("Invalid pu_info in Save-Local-Symtab"));

  SCOPE *scope = (SCOPE*) MEM_POOL_Alloc (Scope_tab[CURRENT_SYMTAB].pool,
                                          sizeof(SCOPE));
  *scope = Scope_tab[level];
//  SAVED_SCOPE *saved_scope = CXX_NEW(SAVED_SCOPE(scope, level), Scope_tab[CURRENT_SYMTAB].pool);

  SPLITTER_SAVED_SCOPE *saved_scope = (SPLITTER_SAVED_SCOPE*)MEM_POOL_Alloc(Scope_tab[CURRENT_SYMTAB].pool, sizeof(SPLITTER_SAVED_SCOPE));

  saved_scope->magic = 0x23456789;
  saved_scope->parent_pu_st = Scope_tab[level - 1].st;
  saved_scope->saved_scope = scope;

  Set_PU_Info_symtab_ptr (pu, saved_scope);
} // Splitter-Save-Local-Symtab
#endif

void
SPLITTER::clct_blk_freq(WN *wn)
{
  if(wn)
  {
    OPCODE opc = WN_opcode(wn);
	if (OPCODE_is_scf(opc))
	{
	  switch (opc)
      {
		 case OPC_BLOCK:
		 {
			WN *wn2 = WN_first(wn);
            while(wn2)
            {
              clct_blk_freq(wn2);  
              wn2 = WN_next(wn2);
            }
		    break;
		 }
		 case OPC_WHERE:
		 case OPC_FUNC_ENTRY:
		 {
			INT i = WN_kid_count(wn)-1;
           //for (i = 0; i < WN_kid_count(wn); i++) 
           for ( ; i>=0; i-- ) 
            clct_blk_freq(WN_kid(wn,i));

		   break;
		 }

		 case OPC_DO_LOOP:
		 {
		   const FB_Info_Loop& info_loop = Cur_PU_Feedback->Query_loop(wn);
		   Outlining_Block_List[(INTPTR)(WN_do_body(wn))] 
				   = info_loop.freq_iterate.Value();
		   clct_blk_freq(WN_do_body(wn));
		   break;
		 }

		 case OPC_DO_WHILE:
		 case OPC_WHILE_DO:
		 {
		   const FB_Info_Loop& info_loop = Cur_PU_Feedback->Query_loop(wn);
		   Outlining_Block_List[(INTPTR)(WN_while_body(wn))] 
				   = info_loop.freq_iterate.Value();

		   INT i = WN_kid_count(wn)-1;
           for ( ; i>=0; i-- ) 
           clct_blk_freq(WN_kid(wn,i));
		   break;
		 }

		 case OPC_IF:
		 {
		   const FB_Info_Branch& info_branch= Cur_PU_Feedback->Query_branch(wn);
		   if(WN_then(wn))
	       {	
		     Outlining_Block_List[(INTPTR)(WN_then(wn))]
					 = info_branch.freq_taken.Value();
			 clct_blk_freq(WN_then(wn));

		   }
		   if(WN_else(wn))
		   {
		     Outlining_Block_List[(INTPTR)(WN_else(wn))]
					 = info_branch.freq_not_taken.Value();
			 clct_blk_freq(WN_else(wn));
		   }
		   break;
		 }

		 default:
		   return;

	  } // switch (opc)
	}
  } // if (wn)
}

void
SPLITTER::prop_blk_freq()
{
  BLOCK_FREQ_MAP::iterator Outlining_Block_List_iter;

  // initialize the frequency map for the block_wn's
  for(Outlining_Block_List_iter=Outlining_Block_List.begin(); 
        Outlining_Block_List_iter!=Outlining_Block_List.end(); 
        Outlining_Block_List_iter++)
  {
    WN *block_wn = (WN*)((*Outlining_Block_List_iter).first);
    float block_freq = (*Outlining_Block_List_iter).second;

    WN *tmp_parent = Splitter_Get_Parent(block_wn);
    WN *current_node = block_wn;

    while (tmp_parent != NULL)
    {
      OPCODE tmp_parent_opc = WN_opcode(tmp_parent);

      // initialize the map (value of the frequency)!!! pengzhao
      float parent_freq = Outlining_Block_List[(INTPTR)(tmp_parent)];
//      WN_MAP_Get(Accumulated_Freq_Map, tmp_parent);
//      float my_freq =   WN_MAP_Get(Accumulated_Freq_Map, current_node);
      float my_freq =   Outlining_Block_List[(INTPTR)(current_node)];

      if ( (tmp_parent_opc == OPC_IF) || (tmp_parent_opc == OPC_SWITCH) )
      {
          Outlining_Block_List[(INTPTR)(tmp_parent)] = (parent_freq+my_freq);
//        WN_MAP_Set (Accumulated_Freq_Map, tmp_parent, (parent_freq+my_freq));
      }
      else
      {
         Outlining_Block_List[(INTPTR)(tmp_parent)] = MAX(parent_freq,my_freq);
//        WN_MAP_Set (Accumulated_Freq_Map, tmp_parent, MAX(parent_freq, my_freq));
      }

      current_node = tmp_parent;
      tmp_parent = Splitter_Get_Parent(tmp_parent);
    }
  }//end of for()

  //assumption: the propagation should set the freq of _orig_pu_tree the highest
  //frequency (check it pengzhao)
  PU_max_freq = Outlining_Block_List[(INTPTR)_orig_pu_tree];
}//end of propagate-block-frequency()



// ==================================================================
//                Outlining Dumping facilities
// ==================================================================


void
LABEL_LIST_ELMT::Print(FILE *fp)
{
  fprintf(fp, "\t\tLABEL_WN=%8p, ID=%d\n",wn, label_ID);
  //dump the GOTOs pointing to this label
  INT32 i=label_goto_list->Lastidx();
  fprintf(fp, "\t\tthe GOTO statements pointing to this label [%d]:\n",i+1);
  for(; i>=0; i--)
  {
	fprintf(fp, "\t\t\t[%d]: ", i);
    (*label_goto_list)[i].Print(fp);
  }
  fprintf(fp, "\n");
}

void
GOTO_LIST_ELMT::Print(FILE *fp)
{
  fprintf(fp, "\t\t\tGOTO_WN=%8p, flag=%d\n", wn, flag);
}


void
CWT_LIST_ELMT::Print(FILE *fp)
{
  fprintf(fp, SBar);
  fprintf(fp, "CWT_%d: freq=%f (PU_max_freq=%f),  ", _seq_no, Outlining_Block_List[(INTPTR)_cwt_root_wn], PU_max_freq);
  if(_cwt_flag == SINGLE_ENTRY)
  {
    fprintf(fp, "SINGLE_ENTRY (candidate)\n");
  }else
  {
    fprintf(fp, "MULTIPLE_ENTRY (ignored)\n");
  }
  fdump_tree(fp, _cwt_root_wn);
  fprintf(fp, SBar);

  {
	//local-label-list
    INT32 j=_local_label_list->Lastidx();
    fprintf(fp, "\t********local LABELs [%d] *******:\n",j+1);
    for(; j>=0; j--)
    {
      (*_local_label_list)[j].Print(fp);
    }
    fprintf(fp, "\n");

	//local-goto-list
	j=_local_goto_list->Lastidx();
    fprintf(fp, "CWT[%d] Misc:\n", _seq_no );
    fprintf(fp, "\t********local GOTOs [%d] *******:\n",j+1);
    for(; j>=0; j--)
    {
      (*_local_goto_list)[j].Print(fp);
    }
    fprintf(fp, "\n");

	//outward-goto-list
    j=_out_goto_list->Lastidx();
	fprintf(fp, "\t********Outward GOTOs [%d] ********:\n", j+1);
    for(; j>=0; j--)
    {  
      (*_out_goto_list)[j].Print(fp); 
    }
    fprintf(fp, "\n");

	//outward-label-list (outside of the CWT)
	j=_out_label_list->Lastidx();
	fprintf(fp, "\t********Outward Labels [%d] **********:\n", j+1);
    for(; j>=0; j--)
    {
      (*_out_label_list)[j].Print(fp);
    }
    fprintf(fp, "\n");

	//return-value-list
	j=_rv_list->Lastidx();
	fprintf(fp, "\t********Return WNs [%d] *********:\n", j+1);
	for (; j>=0; j--)
	{
	  (*_rv_list)[j].Print(fp);
	}
	fprintf(fp, "\n");

	//local-access-list
	j=_local_access_list->Lastidx();
	fprintf(fp, "\t********Accessed symbols: %d *******:\n ", j+1);
    for(; j>=0; j--)
	{
	  (*_local_access_list)[j].Print(fp);
	}//for all the accessed symbols
    fprintf(fp, "\n");
  }//local label tracing
}// CWT_LIST_ELMT::Print(FILE *fp)

void
SPLITTER::Print(FILE *fp)
{
	INT32 i=(*_cold_WTs).Lastidx();
    fprintf(fp, SBar);
    fprintf(fp, "Cold Whirl Tree information (%d CWTs)\n",i+1);
    for(; i>=0; i-- )
    {
        fprintf(fp, DBar);
        ((*_cold_WTs)[i]).Print(fp);
        fprintf(fp, DBar);
    }//for all CWTs

	i = _global_label_list->Lastidx();
    fprintf(fp, "\t********* global LABEL information start**********\n");
    for(; i>=0; i--)
    {
      (*_global_label_list)[i].Print(fp);
    }
    fprintf(fp, "\t********* global LABEL information end**********\n");
}



void
ACCESS_LIST_ELMT::Print(FILE *fp)
{
  fprintf(fp, "\t");
  outlining_put_st(ST_st_idx(st), fp);

  if( flag == SCALAR_DEFED)
  {
    fprintf(fp, " SCALAR_DEFED ");
  }else
  {
    fprintf(fp, " SCALAR_USED ");
  }
  INT32 j= wn_list->Lastidx();
  fprintf(fp, "\n\t\tRelated WNs [%d]:\n\t\t",j+1);
  for(;j>=0; j--)
  {
    fprintf(fp, "%8p ", (*wn_list)[j]);
  }
  fprintf(fp, "\n");
}

void //return-value-list
RV_LIST_ELMT::Print(FILE *fp)
{
	fprintf(fp, "%8p ", wn);
}

/*
void
CWT_LIST_ELMT::Print_outward_flow(FILE *fp)
{
  if(Get_Trace(TP_OUTLINING, TP_OUTLINING_CWT))
  {
	INT32 i=_out_goto_list->Lastidx();
	fprintf(fp, "Outward GOTOs [%d]:", i+1);
    for(; i>=0; i--)
    {  
      (*_out_goto_list)[i].Print(fp); 
    }

	i = _out_label_list->Lastidx();
	fprintf(fp, "Outward Labels [%d]:", i+1);
    for(; i>=0; i--)
    {
      (*_out_label_list)[i].Print(fp);
    }
  }
}

void
CWT_LIST_ELMT::Print_access(FILE *fp)
{
  if(Get_Trace(TP_OUTLINING, TP_OUTLINING_CWT))
  {
    fprintf(fp, "The access information in CWT[%d]\n", _seq_no);
	INT32 i=_local_access_list->Lastidx();
	fprintf(fp, "Accessed symbols: %d", i+1);
    for(; i>=0; i--)
	{
	  (*_local_access_list)[i].Print(fp);
	}//for all the accessed symbols
  }//if Get_Trace()
}//CWT_LIST_ELMT::Print_access()

*/
void
SPLITTER::outlining_dump_freq(FILE *fp)
{
	/*
      vector<BLOCK_RECORD>::iterator Outlining_Block_List_iter;

      for(Outlining_Block_List_iter=Outlining_Block_List.begin(); 
		 Outlining_Block_List_iter!=Outlining_Block_List.end(); 
		 Outlining_Block_List_iter++)
      {
		fprintf(TFile, SBar);
        fprintf(TFile, "propagated frequency = %f\n", (*Outlining_Block_List_iter).Get_frequency());
		fdump_tree(TFile, (*Outlining_Block_List_iter).Get_wn());
		fprintf(TFile, SBar);
      }
	  */

	  BLOCK_FREQ_MAP::iterator Outlining_Block_List_iter;

	  for(Outlining_Block_List_iter=Outlining_Block_List.begin(); 
		 Outlining_Block_List_iter!=Outlining_Block_List.end(); 
		 Outlining_Block_List_iter++)
	  {
		fprintf(fp, SBar);
        fprintf(fp, "propagated frequency = %f\n", (*Outlining_Block_List_iter).second);
		fdump_tree(fp, (WN*)((*Outlining_Block_List_iter).first));
		fprintf(fp, SBar);
	  
	  }
}// outlining_dump_freq(FILE *fp)


void
outlining_put_st (ST_IDX st_idx, FILE *fp)
{
  char *name;
  char *p;
  
  if (st_idx == (ST_IDX) 0) {
    /* labels may have empty st */
    fprintf(fp, " <null-st>");

  } 
#if 0
  else if (!follow_st) {
    /* Do not follow ST *, so that it can dump useful information
       even when ST * is not valid */
    fprintf(fp, " <st %d>", (INT32) st_idx);

  }
#endif
  else {
    const ST* st = &St_Table[st_idx];
    if (ST_class(st) == CLASS_CONST) {
      name = Targ_Print(NULL, STC_val(st));
      /* new lines and spaces in constant strings 
       * will mess up the ascii reader,
       * so replace with underlines */
      for (p = name; *p != '\0'; p++)
	switch (*p) {
	case ' ':
	case '\t':
	case '\n':
	  *p = '_';
	}
    } else
      name = ST_name(st);
    fprintf (fp, " <%d,%d,%s>", ST_level (st), ST_index (st), name);
  }
}


void
count_wn(WN *wn, int *count)
{
  if(wn != NULL)
  {
  if (!OPCODE_is_leaf (WN_opcode (wn))) 
  {
	if (WN_opcode(wn) == OPC_BLOCK) 
    {
      WN* kid = WN_first (wn);
      while (kid) 
      {
        count_wn (kid, count);
        kid = WN_next (kid);
      }
    }
    else 
    {
      INT kidno;
      WN* kid;
      for (kidno=WN_kid_count(wn)-1; kidno>=0; kidno--) 
      {
        kid = WN_kid (wn, kidno);
        if (kid) 
        { 
        count_wn (kid, count);
        } //end of if (kid)
      }//end of for
    }//end of else
  }

  (*count)++;
  }
}// count_wn(WN *wn, int *count)
