

#ifdef USE_PCH
#include "opt_pch.h"
#endif // USE_PCH
#pragma hdrstop


#ifdef _KEEP_RCS_ID
#define opt_tsa_CXX	"opt_tsa.cxx"
static char *rcs_id = 	opt_tsa_CXX"$Revision: 1.17 $";
#endif /* _KEEP_RCS_ID */

#include "defs.h"
#include "lock_map.h"
#include "opt_config.h"
#include "errors.h"
#include "erglob.h"
#include "tracing.h"

#include "opt_base.h"
#include "opt_cfg.h"
#include "opt_exc.h"
#include "opt_mu_chi.h"
#include "opt_ssa.h"
#include "opt_mu_chi.h"
#include "opt_util.h"
#include "opt_alias_rule.h"
#include "idx_32_set.h"

// ====================================================================
// ====================================================================


extern "C" {
#include "bitset.h"
}

//for the worklist for Basic Blocks
typedef mempool_allocator<BB_NODE*> BBNODE_ALLOC;
typedef std::vector<BB_NODE*,BBNODE_ALLOC> BBNODE_VECT;

typedef std::multiset<LOCK_ATTRIBUTE_ELEMENT*,compare_element>ELEMENTs;
typedef std::multiset<LOCK_ATTRIBUTE_ELEMENT*,compare_element>::iterator MUL_ITER;


/* A per-BB data structure used for topological traversal and data flow
   analysis.  */
struct bb_threadsafe_info
{
  /* Indicating whether the BB has been visited in the analysis.  */
  BOOL visited;

  /* Number of predecessors visited. Used for topological traversal of BBs.  */
  unsigned int n_preds_visited;

  /* Live out exclusive/shared lock sets.  */
  ELEMENTs *liveout_exclusive_locks;
  //ELEMENTs *liveout_shared_locks;

  /* Working live lock sets. These sets are used and updated during the
     analysis of statements.  */
  ELEMENTs *live_excl_locks;
  //ELEMENTs *live_shared_locks;
};

class TSA {
private:
  
  CFG *_cfg;			// handle on control-flow graph
  OPT_STAB *_opt_stab;	// handle on symbol table
  EXC      *_exc;
  MEM_POOL *_loc_pool;	// memory pool to allocate temporarily
  

  BOOL _tracing;		// are we tracing?
  

  struct bb_threadsafe_info * _bb_tsa_info;
  BBNODE_VECT  _worklist;


  //
  // access methods
  //
  CFG *Cfg( void ) const
  { return _cfg; }
  OPT_STAB *Opt_stab( void ) const
  { return _opt_stab; }
  MEM_POOL *Loc_pool( void ) const
  { return _loc_pool; }
  BOOL Tracing( void ) const
  { return _tracing; }
  
  //
  // tsa support functions
  //
public:
  
  TSA ( CFG *cfg, OPT_STAB *opt_stab, MEM_POOL *pool, EXC *exc, BOOL tracing )
    : _cfg(cfg), _opt_stab(opt_stab), _loc_pool(pool), _exc(exc),
      _tracing(tracing),_worklist(pool)
  {
    //constructor
  }
  ~TSA( void )
  {
    // get rid of our live-wn tracking map
  }
  void Handle_scalar_load( WN *wn, BB_NODE* bb);
  void Handle_scalar_store( WN *wn, BB_NODE* bb);
  void Handle_iload( WN *wn, BB_NODE* bb);
  void Handle_istore( WN *wn, BB_NODE* bb);
  void Handle_call(WN *call_wn, BB_NODE* bb);

  void Handle_WN( WN *wn, BB_NODE*bb);
  void Thread_safety_analyze( void );
  
}; // end of class TSA

void TSA::Handle_scalar_load(WN *wn, BB_NODE *bb)
{
  struct bb_threadsafe_info *current_bb_info = &(_bb_tsa_info[bb->Id()]);
  FmtAssert(OPCODE_operator(WN_opcode(wn))== OPR_LDID, ("now we only handle the STID case"));

  ST *st = Opt_stab()->St(Opt_stab()->Du_aux_id(WN_ver(wn)));

  ST_IDX st_idx = ST_st_idx (st);
  ST_IDX lock_st_idx  = lock_attr_collect->Find_lock_st_idx(st_idx,0);
  if(lock_st_idx){
    LOCK_ATTRIBUTE_ELEMENT lock_el;
    lock_el.Set_st_idx(lock_st_idx);
    lock_el.Set_field_id(0);
    lock_el.Set_flags(ELEMENT_IS_VARIABLE);
    MUL_ITER iter;
    iter = current_bb_info->live_excl_locks->find(&lock_el);
    if(iter == current_bb_info->live_excl_locks->end()){
      char * lock_name = ST_name(ST_ptr(lock_st_idx));
      char * var_name = ST_name(st);
      USRCPOS srcpos;
      USRCPOS_srcpos(srcpos) = WN_Get_Linenum(wn);
      DevWarn( "the variable %s accessd at %d:%d required lock %s", var_name,
	       USRCPOS_filenum(srcpos), USRCPOS_linenum(srcpos),lock_name );
    }
  }

}


void TSA::Handle_scalar_store(WN * wn, BB_NODE *bb)
{
  struct bb_threadsafe_info *current_bb_info = &(_bb_tsa_info[bb->Id()]);
  FmtAssert(OPCODE_operator(WN_opcode(wn))== OPR_STID, ("now we only handle the STID case"));


  ST *st = Opt_stab()->St(Opt_stab()->Du_aux_id(WN_ver(wn)));

  ST_IDX st_idx = ST_st_idx (st);
  ST_IDX lock_st_idx  = lock_attr_collect->Find_lock_st_idx(st_idx,0);
  if(lock_st_idx){
    LOCK_ATTRIBUTE_ELEMENT lock_el;
    lock_el.Set_st_idx(lock_st_idx);
    lock_el.Set_field_id(0);
    lock_el.Set_flags(ELEMENT_IS_VARIABLE);
    MUL_ITER iter;
    iter = current_bb_info->live_excl_locks->find(&lock_el);
    if(iter == current_bb_info->live_excl_locks->end()){
      USRCPOS srcpos;
      char * lock_name = ST_name(ST_ptr(lock_st_idx));
      char * var_name = ST_name(st);
      USRCPOS_srcpos(srcpos) = WN_Get_Linenum(wn);
      DevWarn( "the variable %s accessed at %d:%d required lock %s", var_name,
	       USRCPOS_filenum(srcpos), USRCPOS_linenum(srcpos),lock_name );
    }
  }
  
}




void TSA::Handle_iload(WN *wn, BB_NODE *bb)
{
  struct bb_threadsafe_info *current_bb_info = &(_bb_tsa_info[bb->Id()]);

  INT32 field_id = 0;
  FmtAssert(OPCODE_operator(WN_opcode(wn))== OPR_ILOAD,("Now we can only handle ILOAD case"));
  TY_IDX addr_ty = WN_load_addr_ty(wn);
  Is_True (TY_kind(addr_ty) == KIND_POINTER, ("TY of ILOAD is not KIND_POINTER."));
  TY_IDX ty = WN_ty(wn);
  Is_True (TY_pointed(addr_ty) == ty, ("Now we can only handle consistent indirect access"));
  if(WN_field_id(wn) != 0 && TY_kind(WN_ty(wn)) == KIND_STRUCT){
    field_id = WN_field_id(wn);
    LOCK_ATTRIBUTE_ELEMENT * lock_el;
    lock_el = lock_attr_collect->Find_lock_ty_idx(ty,field_id);
    if(lock_el != 0){
      TY_IDX lock_ty = lock_el->Get_ty_idx();
      TY_IDX lock_field_id = lock_el->Get_field_id();
      MUL_ITER iter;
      iter = current_bb_info->live_excl_locks->find(lock_el);
      
      if(iter == current_bb_info->live_excl_locks->end()){
	USRCPOS srcpos;
	char * lock_ty_name = TY_name(Ty_Table[lock_ty]);
	char  * ty_name = TY_name(Ty_Table[ty]);
	USRCPOS_srcpos(srcpos) = WN_Get_Linenum(wn);
	DevWarn( "the variable %s, field_id = %d, accessed at %d:%d required lock %s,field_id = %d", ty_name,field_id,
		 USRCPOS_filenum(srcpos), USRCPOS_linenum(srcpos),lock_ty_name,lock_field_id);
      }
    }
  }
}


void TSA::Handle_istore(WN *wn, BB_NODE *bb)
{
  struct bb_threadsafe_info *current_bb_info = &(_bb_tsa_info[bb->Id()]);

  INT32 field_id = 0;
  FmtAssert(OPCODE_operator(WN_opcode(wn))== OPR_ISTORE,("Now we can only handle ILOAD case"));
  TY_IDX ty = WN_ty(wn);
  TY_IDX pointed = TY_pointed(ty);
  if(WN_field_id(wn) != 0 && TY_kind(pointed) == KIND_STRUCT){
    field_id = WN_field_id(wn);
    LOCK_ATTRIBUTE_ELEMENT * lock_el;
    lock_el = lock_attr_collect->Find_lock_ty_idx(pointed,field_id);
    if(lock_el != 0){
      TY_IDX lock_ty = lock_el->Get_ty_idx();
      TY_IDX lock_field_id = lock_el->Get_field_id();
      MUL_ITER iter;
      iter = current_bb_info->live_excl_locks->find(lock_el);
      
      if(iter == current_bb_info->live_excl_locks->end()){
	USRCPOS srcpos;
	char * lock_ty_name = TY_name(Ty_Table[lock_ty]);
	char  * ty_name = TY_name(Ty_Table[pointed]);
	USRCPOS_srcpos(srcpos) = WN_Get_Linenum(wn);
	DevWarn( "the variable %s, field_id = %d, accessed at %d:%d required lock %s,field_id = %d", ty_name,field_id,
		 USRCPOS_filenum(srcpos), USRCPOS_linenum(srcpos),lock_ty_name,lock_field_id);
      }
    }
  }

  //  FmtAssert(false,("can't handle the istore now"));
}
//now we only tried to update the lock_set according to the 
//unlock and lock function
void TSA::Handle_call(WN*call_wn, BB_NODE *bb)
{
  ST * call_st = WN_st(call_wn);
  ST * lock_st = 0;
  struct bb_threadsafe_info *current_bb_info = &(_bb_tsa_info[bb->Id()]);
  FmtAssert(call_st!=NULL, ("call_st should be NULL here"));
  //here we handle the unlock primitive function
  if(ST_is_unlock_function(call_st))
    {
      WN * arg0 = WN_kid(call_wn,0);
      FmtAssert(OPCODE_operator(WN_opcode(arg0))== OPR_PARM, ("the first kid should be OPR_PARM"));
      
      WN * lock_wn = WN_kid(arg0,0);

      FmtAssert(OPCODE_operator(WN_opcode(lock_wn))== OPR_LDA || OPCODE_operator(WN_opcode(lock_wn))== OPR_LDID,
		("now we only handle the LDA and LDID case for the first arg"));
      
      if(OPCODE_operator(WN_opcode(lock_wn))== OPR_LDA)
	lock_st = Opt_stab()->St_ptr(lock_wn);
      else 
	lock_st = Opt_stab()->St(Opt_stab()->Du_aux_id(WN_ver(lock_wn))) ;

      ST_IDX lock_st_idx = ST_st_idx(lock_st);
      LOCK_ATTRIBUTE_ELEMENT lock_el;
      lock_el.Set_st_idx(lock_st_idx);
      lock_el.Set_field_id(0);
      lock_el.Set_flags(ELEMENT_IS_VARIABLE);
      MUL_ITER iter;
      iter = current_bb_info->live_excl_locks->find(&lock_el);
      if(iter != current_bb_info->live_excl_locks->end())
	current_bb_info->live_excl_locks->erase(*iter);
      else
	{
	  FmtAssert(false,("here, we want to release an unholded lock"));
	}
    }

  else if(ST_is_exclusive_lock_function(call_st))
    {
      WN * arg0 = WN_kid(call_wn,0);
      FmtAssert(OPCODE_operator(WN_opcode(arg0))== OPR_PARM, ("the first kid should be OPR_PARM"));
      
      WN * lock_wn = WN_kid(arg0,0);

      FmtAssert(OPCODE_operator(WN_opcode(lock_wn))== OPR_LDA || OPCODE_operator(WN_opcode(lock_wn))== OPR_LDID,
		("now we only handle the LDA and LDID case for the first arg"));
      
      if(OPCODE_operator(WN_opcode(lock_wn))== OPR_LDA)
	lock_st = Opt_stab()->St_ptr(lock_wn);
      else 
	lock_st = Opt_stab()->St(Opt_stab()->Du_aux_id(WN_ver(lock_wn))) ;

      
      ST_IDX lock_st_idx = ST_st_idx(lock_st);

      LOCK_ATTRIBUTE_ELEMENT *lock_el = CXX_NEW(LOCK_ATTRIBUTE_ELEMENT,Loc_pool());
      lock_el->Set_st_idx(lock_st_idx);
      lock_el->Set_field_id(0);
      lock_el->Set_flags(ELEMENT_IS_VARIABLE);
      MUL_ITER iter;
      iter = current_bb_info->live_excl_locks->find(lock_el);
      if(iter == current_bb_info->live_excl_locks->end())
	current_bb_info->live_excl_locks->insert(lock_el);
      else
	{
	  FmtAssert(false,("here, we want to lock an already hold lock"));
	}
    }
  else {

    //TODO: handle other kind of function call
    //FmtAssert(false,("we need to handle other kind of function call"));
  }
}


void TSA::Handle_WN(WN* wn, BB_NODE * bb)
{


  if (wn == NULL)
    return;

  const OPCODE   opc = WN_opcode(wn);
  const OPERATOR opr = OPCODE_operator(opc);
  Is_True(!OPCODE_is_scf(opc) || opc == OPC_REGION,
	  (": Wn is SCF %s",
	   OPCODE_name(opc)));
  Is_True(opc != OPC_BLOCK, ("Wn is a OPR_BLOCK."));

  AUX_ID vp_idx;

  OCC_TAB_ENTRY *occ;

  switch ( opr ) {
  case OPR_LDBITS:
  case OPR_LDID:
    Handle_scalar_load(wn,bb);
    break;
    
  case OPR_STID:  
  case OPR_STBITS:
    Handle_scalar_store(wn,bb);
    break;


  case OPR_ILOAD:
  case OPR_ILDBITS:
  case OPR_MLOAD:
  case OPR_ILOADX:
    Handle_iload(wn,bb);
    break;
    
  case OPR_ISTORE:
  case OPR_ISTBITS:
  case OPR_MSTORE:
  case OPR_ISTOREX:
    Handle_istore(wn,bb);
    break;
    
  case OPR_ICALL:
  case OPR_CALL:	// ST that are addr_taken or external affected
  case OPR_INTRINSIC_CALL:
    Handle_call(wn,bb);
    break;

  case OPR_INTRINSIC_OP:
#ifdef KEY
  case OPR_PURE_CALL_OP:
#endif
    // no more mu-list for INTRINSIC_OP
    break;

  case OPR_PARM:

    break;
    
  case OPR_IO:		// a "black-box" operator
  case OPR_FORWARD_BARRIER:
  case OPR_BACKWARD_BARRIER:
  case OPR_DEALLOCA:
  case OPR_PREFETCH:
  case OPR_RETURN:
  case OPR_RETURN_VAL:
#ifdef KEY
  case OPR_GOTO_OUTER_BLOCK:
#endif

    break;

  case OPR_REGION: 	

    break;

  case OPR_REGION_EXIT:	// look for region exit goto

    break;

  case OPR_ASM_STMT:

    break;
    
  default:
    break;
  }

  // Traverse the children of wn
  if ( opc == OPC_COMPGOTO ) {
    // only first kid is important, others are control-flow stuff
    Handle_WN(WN_kid(wn,0),bb);
  }
  else if (!OPCODE_is_black_box(opc)) {
    INT32 i = (opr == OPR_ASM_STMT ? 2 : 0);
    for (; i < WN_kid_count(wn); i++)
      Handle_WN(WN_kid(wn,i),bb);
  }

}



/* Perform thread safety analysis using the attributes mentioned above
   (see comments at the beginning of the file).  The analysis pass uses
   a single-pass (or single iteration) data-flow analysis to calculate
   live lock sets at each program point, using the attributes to decide
   when to add locks to the live sets and when to remove them from the
   sets. With the live lock sets and the attributes attached to shared
   variables and functions, we are able to check whether the variables
   and functions are well protected. Note that the reason why we don't
   need iterative data flow analysis is because critical sections across
   back edges are considered a bad practice.

   The single-iteration data flow analysis is performed by visiting
   each basic block only once in a topological order. The topological
   traversal is achieved by maintaining a work list (or ready list) which
   is seeded with the successors of the function's entry block. A basic
   block is added to the work list when all of its predecessors have been
   visited. During the traversal, back edges are ignored.  */



void TSA::Thread_safety_analyze(void)
{
  
  int append_ptr =0, visit_ptr = 0;
  ELEMENTs * live_excl_locks_at_entry;
  //ELEMENTs * live_shared_locks_at_entry;
  
  BB_NODE * entry_bb;
  BB_NODE * bb;
  BB_LIST_ITER bb_ps_iter;
  BB_NODE *succ,*pred;

  int size = 0 ;
  
  if(Tracing())
    lock_attr_collect->Print();

  size = Cfg()->Total_bb_count();

  entry_bb = Cfg()->Entry_bb();

  _bb_tsa_info = CXX_NEW_ARRAY(struct bb_threadsafe_info,size,Loc_pool());

  for(int i = 0; i < size; i++)
    {
      _bb_tsa_info[i].visited = FALSE;
      _bb_tsa_info[i].n_preds_visited = 0;
      _bb_tsa_info[i].liveout_exclusive_locks = 0;//	_bb_tsa_info[i].liveout_shared_locks = 0;
      _bb_tsa_info[i].live_excl_locks = 0;//_bb_tsa_info[i].live_shared_locks = 0;

    }

  /* Since the back/complex edges are not traversed in the analysis,
     mark them as visited.  */
  CFG_ITER cfg_iter(Cfg());
  FOR_ALL_NODE( bb, cfg_iter, Init() ) {
    FOR_ALL_ELEM( pred, bb_ps_iter, Init(bb->Pred()) ) {
      if(bb->Dominates(pred))
	++_bb_tsa_info[bb->Id()].n_preds_visited;
    }    
  }


  /* Populate ENTRY_BLOCK's live out sets with "exclusive_locks_required"
     and "shared_locks_required" attributes.  */
  live_excl_locks_at_entry =   CXX_NEW(ELEMENTs,Loc_pool());
  //live_shared_locks_at_entry = CXX_NEW(ELEMENTs,Loc_pool());
  
  

  _bb_tsa_info[entry_bb->Id()].liveout_exclusive_locks =
      live_excl_locks_at_entry;
  //_bb_tsa_info[entry_bb->Id()].liveout_shared_locks =
  //    live_shared_locks_at_entry;

  /* Allocate the worklist of BBs for topological traversal, which is
     basically an array of pointers to basic blocks.  */
   _worklist.resize(size);


  /* Seed the worklist by adding the successors of the entry block
     to the worklist.  */
  FOR_ALL_ELEM( succ, bb_ps_iter, Init(entry_bb->Succ()) ) {
    _worklist[append_ptr++] =  succ;
  }

 
/* The basic blocks in the current function are traversed in a topological
     order. Both "visit_ptr" and "append_ptr" are indices to the worklist
     array and initialized to zero. "append_ptr" is incremented whenever a BB
     is added to the work list, while "visit_ptr" is incremented when we
     visit a BB. When "visit_ptr" catches up with "append_ptr", the traversal
     is done.  */
  while (visit_ptr != append_ptr)
    {
      ELEMENTs * reported_unreleased_locks;
      struct bb_threadsafe_info *current_bb_info;


      bb = _worklist[visit_ptr++];
      current_bb_info = &_bb_tsa_info[bb->Id()];
      current_bb_info->visited = true;



      /* First create the live-in lock sets for bb by intersecting all of its
         predecessors' live-out sets */
      
      //TODO: we will meet the case the we have multiple entry for c++ case
      //here, entry_bb's succes are also entry, their pred is 0, but we need to initilize them
      if(bb->Pred() == NULL)
	{
	  current_bb_info->live_excl_locks = CXX_NEW(ELEMENTs,Loc_pool());
	  //current_bb_info->live_shared_locks = CXX_NEW(ELEMENTs,Loc_pool());
	}
      else {
	FOR_ALL_ELEM( pred, bb_ps_iter, Init(bb->Pred()) ) {
	  //ELEMENTs *unreleased_locks;
	  ELEMENTs *pred_liveout_excl_locks;
	  //ELEMENTs *pred_liveout_shared_locks;
	  
	  if(bb->Dominates(pred))
	    continue;
	  
	  /* If this is the first predecessor of bb's, simply copy the
             predecessor's live-out sets to bb's live (working) sets.  */
          if (current_bb_info->live_excl_locks == NULL)
            {
              current_bb_info->live_excl_locks = 
		CXX_NEW(ELEMENTs(*(ELEMENTs*)(_bb_tsa_info[pred->Id()].liveout_exclusive_locks)),Loc_pool());

              //current_bb_info->live_shared_locks = 
	      //CXX_NEW(ELEMENTs(*(ELEMENTs*)(_bb_tsa_info[pred->Id()].liveout_shared_locks)),Loc_pool());

	      continue;
	    }
   

	
          //unreleased_locks = CXX_NEW(ELEMENTs,Loc_pool());
          pred_liveout_excl_locks =
	    _bb_tsa_info[pred->Id()].liveout_exclusive_locks;
          //pred_liveout_shared_locks =
	  //  _bb_tsa_info[pred->Id()].liveout_shared_locks;


          /* Intersect the current (working) live set with the predecessor's
             live-out set. Locks that are not in the intersection (i.e.
             complement set) should be reported as improperly released.  */

	  //ELEMENTs *union_result = CXX_NEW(ELEMENTs,Loc_pool());
	  ELEMENTs *inter_result = CXX_NEW(ELEMENTs,Loc_pool());
	    //set_union(current_bb_info->live_excl_locks->begin(),current_bb_info->live_excl_locks->end(),
	    //pred_liveout_excl_locks->begin(),pred_liveout_excl_locks->end(),
	    //inserter(*union_result,union_result->begin()));

	  set_intersection(current_bb_info->live_excl_locks->begin(),current_bb_info->live_excl_locks->end(),
		    pred_liveout_excl_locks->begin(),pred_liveout_excl_locks->end(),
		    inserter(*inter_result,inter_result->begin()));

	  CXX_DELETE(current_bb_info->live_excl_locks, Loc_pool());

	  current_bb_info->live_excl_locks = inter_result;
	  
          //unreleased_locks = BS_DifferenceD(temp,current_bb_info->live_excl_locks);
	}
      }      
      /* Now iterate through each statement of the bb and analyze its
	 operands.  */
      STMT_ITER stmt_iter;
      WN *wn;
      FOR_ALL_ELEM(wn, stmt_iter, Init(bb->Firststmt(),bb->Laststmt())) {
	Handle_WN( wn ,bb);
      }

      /* Now that we have visited the current bb, check if any of its
	 successors can be added to the work list.  */
      FOR_ALL_ELEM( succ, bb_ps_iter, Init(bb->Succ()) ) {
	if(succ->Dominates(bb))
	  continue;
	FmtAssert(!_bb_tsa_info[succ->Id()].visited,("the edge shouldn't be visited before"));
	if ((++_bb_tsa_info[succ->Id()].n_preds_visited) ==
	    succ->Pred()->Len())
	  _worklist[append_ptr++] = succ;
      }

      current_bb_info->liveout_exclusive_locks =
          current_bb_info->live_excl_locks;
      //current_bb_info->liveout_shared_locks =
      //    current_bb_info->live_shared_locks;
    }


}



// ====================================================================
// SSA:Thread_safety_analyze
//
// Driver for the thread safety analyze phase
// ====================================================================

void
SSA::Thread_safety_analyze( CFG *cfg, OPT_STAB *opt_stab, EXC *exc )
{
  // get a local memory area
  OPT_POOL_Push( cfg->Loc_pool(), TSA_DUMP_FLAG );

  { // scope so we destruct this item before popping the mem pool
    TSA tsa( cfg, opt_stab, cfg->Loc_pool(), exc,
	     Get_Trace( TP_WOPT2, TSA_DUMP_FLAG ) );

    // do it
    tsa.Thread_safety_analyze();

  }

  // free up the our local memory area
  OPT_POOL_Pop( cfg->Loc_pool(), TSA_DUMP_FLAG );
}
