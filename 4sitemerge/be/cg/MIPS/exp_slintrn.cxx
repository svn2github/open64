#define __STDC_LIMIT_MACROS
#include <stdint.h>
#include "defs.h"
#include "config.h"
//#include "glob.h"
#include "util.h"
#include "tn.h"
#include "cg_flags.h"
#include "bb.h"
#include "symtab.h"
#include "opcode.h"
#include "const.h"	/* needed to manipulate target/host consts */
#include "targ_const.h"	/* needed to manipulate target/host consts */
#include "op.h"
#include "cgexp.h"
#include "w2op.h"
#include "cgtarget.h"
#include "whirl2ops.h"
#include "printsrc.h"
#ifdef TARG_SL
#include <map>
using std::map;
#include "be_symtab.h"
static BOOL dotrace = FALSE;
#define TFile stdout

#include "targ_const_private.h"
#endif 

extern std::map<INT32, TN*> var2acc;
extern std::map<INT32, TN*> var2addr;
extern INT32 AccPregN;
extern INT32 AddPregN;
extern void Set_OP_To_WN_Map(WN *wn);
extern INT32 CG_Max_Accreg;
extern INT32 CG_Max_Addreg;
UINT16 prev_alloc_AccIndex = 0;
UINT16 prev_alloc_AddrIndex = 0;

/*
 * create a asm op
 */
OP *Fixup_OP(TOP top, TN *op1) {
  char asm_string[256];

  switch (top) {
    case TOP_c3_viterbi: 
      sprintf(asm_string, "ldw $0, 0(%0)"); 
      break;
    default:
      Is_True(0, ("unsupport op to be fixed up")); 
  }
  TN *opnd[1];
  opnd[0] = op1;
  OP *asm_op = Mk_VarOP(TOP_asm, 0, 1, NULL, opnd);
  Set_OP_volatile(asm_op);
  ASM_OP_ANNOT* asm_info = TYPE_PU_ALLOC(ASM_OP_ANNOT);
  bzero(asm_info, sizeof(ASM_OP_ANNOT));
  WN *asm_wn = WN_CreateAsm_Stmt (1, asm_string);
  ASM_OP_wn(asm_info) = asm_wn;
  OP_MAP_Set(OP_Asm_Map, asm_op, asm_info);
  return asm_op; 
}

/*Given an acc tn, print the variable map to acc special register */
void Print_Acc (TN *acctn) {
  typedef std::map<INT32, TN*> Var2Acc;
  Var2Acc::iterator it = var2acc.begin();
  fprintf(TFile, "ACC[%d] --> ", (TN_number(acctn) - 271));
  for(;it != var2acc.end();++it) {
    if ((*it).second == acctn) {
      if ((*it).first >= 0)
        fprintf(TFile,  " GPR[%d]   ", (*it).first);
      else
        fprintf(TFile,  "  ST [%s]   ",  ST_name(-(*it).first));
    }
  }
  fprintf(stdout, "\n");
}

/*Given an addr tn, print the variable map to addr special register */
void Print_Addr (TN *addrtn) {
  typedef std::map<INT32, TN*> Var2Addr;
  Var2Addr::iterator it = var2addr.begin();
  fprintf(TFile, "ADDR[%d] --> ", (TN_number(addrtn) - 275));
  for(;it != var2addr.end();++it)
  {
    if ((*it).second == addrtn) {
      if ((*it).first >= 0)
        fprintf(TFile,  " GPR[%d]   ", (*it).first);
      else
        fprintf(TFile,  "  ST [%s]   ",  ST_name(-(*it).first));
    }
  }
  fprintf(stdout, "\n");
}

static BOOL Has_VarWN_idx(WN *stmt) {
  Is_True(WN_operator(stmt) == OPR_STID, ("statement should be stid "));
  if (WN_class(stmt) == CLASS_PREG) {
    if (WN_operator(stmt) == OPR_STID) {
       return TRUE;
    }
  } else if (WN_class(stmt) == CLASS_VAR) {
     return TRUE;
  }
  return FALSE;
}
           			
/*
 *  Pair <preg_num/st_idx,  special_reg_tn> 
 *  get pregnum or st_idx of variable 
 */
static INT Get_VarWN_idx (WN *stmt) {

  Is_True(WN_operator(stmt) == OPR_STID || WN_operator(stmt) == OPR_LDID, ("stid or ldid"));

  if (WN_class(stmt) == CLASS_PREG) {
    if (WN_operator(stmt) == OPR_STID )
      return WN_store_offset(stmt);
    else if (WN_operator(stmt) == OPR_LDID)
      return WN_load_offset(stmt);
  } else if (WN_class(stmt) == CLASS_VAR) {
    return (-WN_st_idx(stmt));
  } else {
    Is_True(0, ("NYI"));
  }
}

/*  if rhs of statement is c3 intrnsic op, 
 *  we save the result variable into global variable AddPregN/AccPregN and map it with special register later
 */
void Set_IntrnOP_Result (WN *stid) {
  if (WN_operator(WN_kid0(stid)) == OPR_INTRINSIC_OP ) {
    INTRINSIC id = (INTRINSIC) WN_intrinsic (WN_kid0(stid));
    //  only deal with c3 intrinsic op
    if (id >= INTRN_C3_INTRINSIC_BEGIN && id <= INTRN_C3_INTRINSIC_END) {
      if (id == INTRN_C3_PTR)
        AddPregN = Get_VarWN_idx(stid);
      else
        AccPregN = Get_VarWN_idx(stid);
    }
  }
  return; 
}

/*
 *  Get immediate value of wn 
 *  if wn is an const , return WN_const_val(wn)
 *  else if WN is preg num, get the value of " home wn"
 *  some parameter of c3 intrnsic ops are const value 
 *  in WOPT phase, some const value will be translated to a "preg variable" by LPRE
 *  in CG phase, we get the "home wn" of preg variable for generating right op operand
 */
TN *Get_Liternal_TN  (WN *wn, INT size) {
  INT val=0;
  if (WN_operator(wn) == OPR_INTCONST) {
    val = WN_const_val(wn);
  } else {
    Is_True(WN_class(wn) == CLASS_PREG, ("WN should be PREG variable"));
    WN *home = Preg_Home(WN_load_offset(wn));
    if (!home) {
  	Is_True(0, ("WN should be immediate"));
  }	
    Is_True(WN_operator(home) == OPR_INTCONST, ("WN should be immediate"));	
    val = WN_const_val(home);
  }
  return Gen_Literal_TN(val, size);
}


/* get variable index from TN*/
static INT TN_To_Index(TN *tn) {
  if (TN_var(tn))
    return (-TN_var(tn)->st_idx);
  else  // need some condition
    return TN_To_PREG(tn);
}

/* called by EXP_COPY
 * if src_tn is mapped to a special register
 * do mapping tgt_tn to the same special register
 */
void Copy_Tn_MapInfo(TN *src_tn, TN *tgt_tn) {
  if ( TN_register_class(tgt_tn) == TN_register_class(src_tn)) {
    INT32 srcpreg = TN_To_Index(src_tn);
    if (var2acc[srcpreg]) {
      INT32 tgtpreg = TN_To_Index(tgt_tn);
      var2acc[tgtpreg] = var2acc[srcpreg];
      if (dotrace) {	
        fprintf(TFile, "EXP_COPY::");	
        Print_Acc(var2acc[srcpreg]);	
      }
    } 
    else if (var2addr[srcpreg]) {
      INT32 tgtpreg = TN_To_Index(tgt_tn);
      var2addr[tgtpreg] = var2addr[srcpreg];
      if (dotrace) {		
        fprintf(TFile, "EXP_COPY::");	
        Print_Addr(var2addr[srcpreg]);	
      }
    }
  }
}

/*called by HANDLE_STID
 * if src_tn is mapped to a special register
 * do mapping tgt_tn to the same special register
 */
void Copy_Preg_MapInfo(WN *stid) {
    WN *ldid = WN_kid0(stid);
    if (WN_operator(ldid) != OPR_LDID ) {
      return;   
    }
    Is_True(WN_operator(ldid) == OPR_LDID, ("ldid"));
    if (!(WN_class(ldid) == CLASS_PREG) && !(WN_class(ldid) == CLASS_VAR)) {
      return;
    }
    INT32 srcpreg = Get_VarWN_idx(ldid);
    // fix bug 232: st of stid is mapped to acc
    INT32 tgtpreg; 
    if (Has_VarWN_idx(stid)) {
      tgtpreg = Get_VarWN_idx(stid);
      if (var2acc[tgtpreg]) {
        var2acc[srcpreg] = var2acc[tgtpreg];
        if (dotrace) {
          fprintf(stdout, "HANDLE_STID::");
          Print_Acc(var2acc[tgtpreg]);
        }
      } else if (var2addr[tgtpreg]) {
        var2addr[srcpreg] = var2addr[tgtpreg];
        if (dotrace) {
          fprintf(stdout, "HANDLE_STID::");
          Print_Addr(var2addr[tgtpreg]);
        }
      } else if (var2acc[srcpreg]) {
        tgtpreg = Get_VarWN_idx(stid);
        var2acc[tgtpreg] = var2acc[srcpreg];
        if (dotrace) {	
          fprintf(stdout, "HANDLE_STID::");	
          Print_Acc(var2acc[srcpreg]);	
        }
      } else if (var2addr[srcpreg]) {
        tgtpreg = Get_VarWN_idx(stid);
        var2addr[tgtpreg] = var2addr[srcpreg];
        if (dotrace) {		
          fprintf(stdout, "HANDLE_STID::");	
          Print_Addr(var2addr[srcpreg]);	
        }
      }
   }
}

static INT32 Get_ParmVaridx_Intrncall(WN *intrncall, int kidnum=0) {
  
  WN *para_wn = WN_kid0(WN_kid(intrncall, kidnum));
  OPERATOR opr = WN_operator(para_wn) ;
  if (opr== OPR_LDID) {
    return Get_VarWN_idx(para_wn);
  } else if (opr == OPR_INTRINSIC_OP) {
    INTRINSIC id = (INTRINSIC) WN_intrinsic (para_wn);
    if ((id >= INTRN_C3_INTRINSIC_BEGIN)  && (id <= INTRN_C3_INTRINSIC_END)) {
      if (id == INTRN_C3_PTR) 
        return Get_ParmVaridx_Intrncall(para_wn, 1);
      else 
        return Get_ParmVaridx_Intrncall(para_wn);
    } else {
      Is_True(0, ("WN must be c3 intrinsic "));
    }
     
  }  
  return 0;
  
}

/*  deal with special case: the result of intrncall is pointer value
    *p = intrinsic_c3_init_acc(*p) 
    the whirl is

     I4INTCONST 0 (0x0)
  I4PARM 2 T<4,.predef_I4,4> #  by_value 
 I4INTRINSIC_CALL <877,INTRN_C3_INIT_ACC> 126 # flags 0x7e
  I4I4LDID 2 <1,2,.preg_I4> T<4,.predef_I4,4> # $r2
 I4STID 72 <1,2,.preg_I4> T<4,.predef_I4,4> # __comma
  I4I4LDID 72 <1,2,.preg_I4> T<4,.predef_I4,4> # __comma
  U4U4LDID 85 <1,4,.preg_U4> T<48,anon_ptr.,4> # L_tdist
 I4ISTORE 0 T<48,anon_ptr.,4>
 ...
   U4U4LDID 85 <1,4,.preg_U4> T<48,anon_ptr.,4> # L_tdist
  I4I4ILOAD 0 T<4,.predef_I4,4> T<48,anon_ptr.,4>
 I4STID 78 <1,2,.preg_I4> T<4,.predef_I4,4> # <preg>            -> map to acctn
*/
static INT32 Get_ResultEqVarIdx ( WN *istore) {
  Is_True(WN_operator(istore) == OPR_ISTORE , ("operator must be istore")) ;

  WN *next = WN_next(istore);
  INT32 varidx = Get_VarWN_idx(WN_kid1(istore));
  WN_OFFSET  addroff = WN_offset(istore);            

  while(next) {
    if ((WN_operator(next) == OPR_STID) && 
        (WN_operator(WN_kid0(next)) == OPR_ILOAD)) {
      WN *load = WN_kid0(next);
      if ((varidx == Get_VarWN_idx(WN_kid0(load)))  && (addroff == WN_offset(load)))
        return Get_VarWN_idx(next);	
      }
      next = WN_next(next);
    }

    if (!next) {
      DevWarn("init special register is undefined");
      return -1;
    }
}

static INT32 Get_Resultidx_Intrncall (WN *intrncall) {
  	
  // get st of result variable now
  //     parm
  //  intrinsic c3 call
  //     ldid r2
  //  stid preg  __comma   <- temp equivalence  variable
  //  ...
  //     ldid __comma
  //  stid variable          <- get the st of variable map to acc
  WN *next= WN_next(intrncall); // get stid from $r2 to __comma or other st
  WN *retval = WN_kid0(next);     // must be $r2

  Is_True(next && (WN_operator(next) == OPR_STID), 
   	           ("intrnsic call should have result"));
  Is_True((WN_operator(retval) == OPR_LDID) && (ST_class(WN_st(retval)) == CLASS_PREG) && 
          (WN_offset(retval) == First_Int_Preg_Return_Offset),
          ("intrnsic call should have result tn"));

  //    ldid r2 
  // stid tmp_eq   <- temp equivalence  variable
  INT32 tmp_idx =  Get_VarWN_idx(next);

  if (strcmp(ST_name(WN_st(next)) , "__comma") != 0) {
    next = WN_next(next);
  }
  
  while (next) {
    if (WN_operator(next) == OPR_STID  && 
        (WN_operator(WN_kid0(next))==OPR_LDID) && 
	(tmp_idx == Get_VarWN_idx(WN_kid0(next)))) {
	  PREG_NUM tmppn= Get_VarWN_idx(next);
	  if (tmppn > 11 || tmppn < 4) // skip argument register tn
           break;
    }		
    if (WN_operator(next) == OPR_ISTORE && 
        (WN_operator(WN_kid0(next)) == OPR_LDID)  && 
        (tmp_idx == Get_VarWN_idx(WN_kid0(next)))) {
      return Get_ResultEqVarIdx(next);
    }		  
    next = WN_next(next);
  }
  
  if (!next) {
    return tmp_idx;
  }
  
  return  Get_VarWN_idx(next);
 
}

/*Get  a valid acctn, if status array Accreg[i]=0, "Acc[i]_TN" is the valid acc register*/
static TN *Get_New_AccTN () {
  TN *acctn=NULL;
  int i;
  for(i = prev_alloc_AccIndex; i < (prev_alloc_AccIndex + CG_Max_Accreg); i++) {
    if (ACCreg[i%CG_Max_Accreg] == 0) {
      switch (i%CG_Max_Accreg) {
        case 0 : acctn = Acc0_TN ; ACCreg[0]=1; break;
        case 1 : acctn = Acc1_TN ; ACCreg[1]=1; break;
        case 2 : acctn = Acc2_TN ; ACCreg[2]=1; break;
        case 3 : acctn = Acc3_TN;  ACCreg[3]=1; break;
        default: Is_True(0,("illegal acc register tn"));
      }
    }
    if (acctn) break;
   }

   if (i == (prev_alloc_AccIndex + CG_Max_Accreg))
     Is_True(0, ("No valid new acc register, max acc register numbers is %d\n", CG_Max_Accreg));
   if (CG_round_spreg)
     prev_alloc_AccIndex = (i+1)%CG_Max_Accreg;
   return acctn;
}

static TN *Create_Var2Acc_Map(INT32 varidx) {
  INT i;	
  TN *acctn = var2acc[varidx];	
  Is_True(!acctn, ("variable has acquired an acc register and did't free it"));	
  acctn = Get_New_AccTN();	
  var2acc[varidx] = acctn;  

  if (dotrace) {
    fprintf(TFile, "Create_Var2Acc_Map::");
    Print_Acc(acctn);
  }
  return acctn;	
}

/*dual acc tn must be even */
static TN *Get_New_DualAccTN () {
  TN *acctn=NULL;
  int i;
  if (prev_alloc_AccIndex %2 !=0 ) {
    prev_alloc_AccIndex = (prev_alloc_AccIndex+1)%CG_Max_Accreg;
  }
  for(i = prev_alloc_AccIndex; i < (prev_alloc_AccIndex + CG_Max_Accreg); i=i+2) {
    if ((ACCreg[i%CG_Max_Accreg] == 0)  && (ACCreg[(i+1)%CG_Max_Accreg] == 0)) {
      switch (i%CG_Max_Accreg) {
        case 0 : acctn = Acc0_TN ; ACCreg[0]=1; ACCreg[1]=1;break;
        case 2 : acctn = Acc2_TN ; ACCreg[2]=1; ACCreg[3]=1; break;
        default: Is_True(0,("Get_New_DualAccTN::illegal acc register tn"));
      }
    }
    if (acctn) break;
  }

  if (!acctn || (CG_Max_Accreg < 2) || (CG_Max_Accreg == 3 && ACCreg[3]==1))
    Is_True(0, ("NO valid dual acc registers, max acc register numbers are %d\n", CG_Max_Accreg));

  if (CG_round_spreg)
    prev_alloc_AccIndex = (i+2)%CG_Max_Accreg;
 
  return acctn;
}

static TN *Create_Var2DualAcc_Map(INT32 varidx) {
  INT i;	
  TN *acctn = var2acc[varidx];	
  Is_True(!acctn, ("variable has acquired an acc register and didn't free it"));	
  acctn = Get_New_DualAccTN();
  var2acc[varidx] = acctn; 

  if (dotrace) {
    fprintf(TFile, "Create_Var2DAcc_Map::");
    Print_Acc(acctn);
  }
  return acctn;	
}


static TN *Get_New_AddrTN () {
  TN *addtn=NULL;
  int i;
  for(i = prev_alloc_AddrIndex; i < (prev_alloc_AddrIndex + CG_Max_Addreg); i++) {
    if (Addreg[i%CG_Max_Addreg] == 0) {
      switch (i%CG_Max_Addreg) {
        case 0 : addtn = Addr0_TN ; Addreg[0]=1; break;
        case 1 : addtn = Addr1_TN ; Addreg[1]=1; break;
        case 2 : addtn = Addr2_TN ; Addreg[2]=1; break;
        case 3 : addtn = Addr3_TN;  Addreg[3]=1; break;
        case 4 : addtn = Addr4_TN;  Addreg[4]=1; break;
        case 5 : addtn = Addr5_TN;  Addreg[5]=1; break;
        case 6 : addtn = Addr6_TN;  Addreg[6]=1; break;
        case 7 : addtn = Addr7_TN;  Addreg[7]=1; break;
        default: Is_True(0,("illegal address register tn"));
      }
    }
    if (addtn) break;
  }
  
  if (i == (prev_alloc_AddrIndex + CG_Max_Addreg))
    Is_True(0, ("No valid new address register, max address register numbers is %d\n", CG_Max_Addreg));
  if (CG_round_spreg)
    prev_alloc_AddrIndex = (i+1)%CG_Max_Addreg;
  return addtn;
}

static TN * Get_AddrSize_Reg(TN *addrtn) {
  TN *addr_size = NULL;

  if (addrtn == Addr0_TN) 
    addr_size = Addrsize0_TN;
  else if (addrtn == Addr1_TN)
    addr_size = Addrsize1_TN;
  else if (addrtn == Addr2_TN)
    addr_size = Addrsize2_TN;
  else if (addrtn == Addr3_TN)
    addr_size = Addrsize3_TN;
  else if (addrtn == Addr4_TN)
    addr_size = Addrsize4_TN;
  else if (addrtn == Addr5_TN)
    addr_size = Addrsize5_TN;
  else if (addrtn == Addr6_TN)
    addr_size = Addrsize6_TN;
  else if (addrtn == Addr7_TN)
    addr_size = Addrsize7_TN;
  return addr_size;
}

static TN *Create_Var2Add_Map(INT32 varidx) {
  INT i;	
  TN *addrtn = var2addr[varidx];	
  Is_True(!addrtn, ("addrtn should be null"));	
  addrtn = Get_New_AddrTN();
  var2addr[varidx] = addrtn;
  if(dotrace) {
    fprintf(TFile, "Create_Var2Add_Map::");
    Print_Addr(addrtn);
  }
  return addrtn;	
}


static inline void Set_Var_AccTN ( INT32 varidx, TN *acctn) {
  var2acc[varidx] = acctn;
  if (dotrace) {
    Print_Acc(acctn);
  }	
}

static inline void Set_Var_AddrTN ( INT32 varidx, TN *addtn) {
  var2addr[varidx] = addtn;
  if (dotrace) {
    Print_Addr(addtn);
  }
}


static TN *Get_Acc_from_Varidx(INT32 varidx) {
  if (var2acc[varidx]) {
    return var2acc[varidx];
  } else
    return NULL;
}

static TN *Get_Addr_from_Varidx(INT32 varidx) {
  if (var2addr[varidx]) {
    return var2addr[varidx];
  } 
  else
    return NULL;
}

static void Erase_AccTN (TN *acctn) {
  if (acctn == Acc0_TN) 
    ACCreg[0] = 0;
  else if (acctn == Acc1_TN) 
    ACCreg[1] = 0;
  else if (acctn == Acc2_TN)
    ACCreg[2] = 0;
  else if (acctn == Acc3_TN)
    ACCreg[3] = 0;
  else 
    Is_True(0, ("tn is not a valie acc register tn"));
  
  return;
}


/* erase an acc register dedicate tn*/
static void Erase_Var2Acc_Map(INT32 varidx) {
  TN *acctn = Get_Acc_from_Varidx(varidx);
  Is_True(acctn, ("acctn are not used or has been freed before "));
  
  if(dotrace) {
    fprintf(TFile, "Erase_Var2Acc_Map:: ");
    Print_Acc(acctn);
  }
  Erase_AccTN(acctn);
  // erase var2acc related with acctn
  typedef std::map<INT32, TN*> Var2Acc;
  Var2Acc::iterator it = var2acc.begin(); 
  for(;it != var2acc.end();++it) 
  { 
    if ((*it).second == acctn) {
      var2acc.erase((*it).first);
    }
  }   
  return;
}

/*
 * return 2nd acc tn of dual opertion
 */
static TN *Get_DualAccTN (TN *acc_tn) {
   TN *dacc_tn ;
   if (acc_tn == Acc0_TN) 
     dacc_tn = Acc1_TN;
   else if (acc_tn == Acc2_TN)
     dacc_tn = Acc3_TN;
   else if (acc_tn == Acc3_TN || acc_tn == Acc1_TN)
     Is_True(0, ("first dual acc register should be even index"));
   else {
     Is_True(0, ("dual acc register is not valid"));
   }
   return dacc_tn;	
}

/* erase a acc register dedicate tn*/
static void Erase_Var2DualAcc_Map(INT32 varidx) {
  TN *acctn = Get_Acc_from_Varidx(varidx);
  Is_True(acctn, ("dual acctn are not used or have been free before"));
  TN *dacctn = Get_DualAccTN(acctn);
 
  if(dotrace) {
    fprintf(TFile, "Erase_Var2DualAcc_Map ");
    Print_Acc(acctn);
    fprintf(TFile, "Erase_Var2DualAcc_Map ");
    Print_Acc(dacctn);
  }
  Erase_AccTN(acctn);
  Erase_AccTN(dacctn);
  // erase var2acc related with acctn
  typedef std::map<INT32, TN*> Var2Acc;
  Var2Acc::iterator it = var2acc.begin(); 
  for(;it != var2acc.end();++it) 
  { 
    if (((*it).second == acctn) || ((*it).second == dacctn)) {
      var2acc.erase((*it).first);
    }
  }   
  return;
}


static void Erase_AddrTN (TN *addrtn) {

  if (addrtn == Addr0_TN) 
    Addreg[0] = 0;
  else if (addrtn == Addr1_TN) 
    Addreg[1] = 0;
  else if (addrtn == Addr2_TN)
    Addreg[2] = 0;
  else if (addrtn == Addr3_TN)
    Addreg[3] = 0;
  else if (addrtn == Addr4_TN)
    Addreg[4] = 0;
  else if (addrtn == Addr5_TN)
    Addreg[5] = 0;
  else if (addrtn == Addr6_TN)
    Addreg[6] = 0;
  else if (addrtn == Addr7_TN)
    Addreg[7] = 0;
  else 
    Is_True(0, ("addrtn is not a valid address register tn"));
  return;
}

/* erase a address register dedicate tn*/
static void Erase_Var2Addr_Map(INT32 varidx) {
  TN *addtn = Get_Addr_from_Varidx(varidx);
  Is_True(addtn, ("address register is not used or has been free before"));
  
  if (dotrace) {
    fprintf(TFile, "Erase_Var2Addr_Map:: ");
    Print_Addr(addtn);
  }
  Erase_AddrTN(addtn);	

  // erase var2acc related with acctn
  typedef std::map<INT32, TN*> Var2Addr;
  Var2Addr::iterator it = var2addr.begin(); 
  for(;it != var2addr.end();++it) 
  { 
    if ((*it).second == addtn) {
      var2addr.erase((*it).first);
    }
  }   
  return;
}

/*
 *  result = SL1_acquire_acc (rs1);         
 *  result : acquire a new acc register for result
 *  rs1 : init the value of acc
 */

TN *Expand_C3_INIT_ACC (WN *intrncall, TN *result, OPS *ops) {
   
   Is_True(WN_kid0(intrncall), ("sl1_l_acquire_acc: 1 argument is null"));
   TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
   TN *shl_tn =  Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // shift left
   INT32 pregn = Get_Resultidx_Intrncall(intrncall);
   TN *acc_tn = Create_Var2Acc_Map(pregn);
   Build_OP(TOP_c3_mvtacc, acc_tn, kid0_tn, shl_tn, ops);

   return kid0_tn;	
}

/*
 * rd = SL1_free_acc(a)
 * a: variable acquired an acc register 
 * result: copy value of acc register
 * operand0 map acc register tn
 */
TN *Expand_C3_SAVE_ACC (WN *intrncall, TN *result, OPS *ops) {
   
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall), ("sl1_l_free_acc: argument is null"));
   TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *shr_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);
   INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
   TN *acctn = Get_Acc_from_Varidx(varidx);
   Is_True(acctn, ("variable hasn't acquired acc register")); 
   
   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   Build_OP(TOP_c3_mvfacc, result, acctn, shr_tn, ops);

   Erase_Var2Acc_Map(varidx);

   return result;	
	
}

TN *Expand_C3_MAC(WN *intrncall, TN *result, OPS *ops, BOOL ismac=TRUE) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall)),
   	          ("sl1_mac: argument is null"));

  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // variable may acquire an acc register
  TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);   // rs1
  TN *kid2_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);   // rs2
  TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);     // acm 
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
   
  // map result idx to the same acctn
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);   
 
  TOP top = ismac ? TOP_c3_mac: TOP_c3_macn;
  if (acctn) {
    Build_OP(top, acctn, acmode, kid1_tn, kid2_tn, acctn, ops);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn,Gen_Literal_TN(0,4), ops);
    Build_OP(top, acctn, acmode, kid1_tn, kid2_tn, acctn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, Gen_Literal_TN(0,4), ops);
    Erase_AccTN(acctn);
  }
  return result;
}


TN *Expand_C3_ROUND (WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall), 
           ("sl1_shl_round_shr: argument is null"));
   TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // variable may acquire an acc register
   TN *shl_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);     // shl
   TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);     // acm 
   TN *shr_tn =  Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);    // shr
   INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
   TN *acctn = Get_Acc_from_Varidx(varidx);
 
   if (acctn) {
     Is_True(TN_value(shr_tn) == 0, ("sl1_shl_round_shr: the last parameter must be zero")); 
     Set_Var_AccTN(AccPregN, acctn);
     Build_OP(TOP_c3_round, acctn, shl_tn, acmode, acctn, ops);  
   } else {
     acctn = Get_New_AccTN();
     Build_OP(TOP_c3_mvtacc, acctn, kid0_tn, Gen_Literal_TN(0,4), ops);
     Build_OP(TOP_c3_round, acctn, shl_tn, acmode, acctn, ops);
     Build_OP(TOP_c3_mvfacc, result, acctn, shr_tn, ops);	
     Erase_AccTN(acctn);	 
   }
   return result;
}

TN *Expand_C3_SAADDS(WN *intrncall, TN *result, OPS *ops, BOOL isadd= TRUE) {
  
   Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)),
   	          ("sl1_saadds: argument is null"));
   TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
   TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);   // RS2
   TN *kid2_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);    // shr 
   TOP top = isadd ? TOP_c3_saadds: TOP_c3_sasubs;

   Build_OP(top, result, kid0_tn, kid1_tn, kid2_tn, ops);
   return result;	
}

TN *Expand_C3_MULA (WN *intrncall, TN *result, OPS *ops, BOOL ismula=TRUE) {
  
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall)),
   	          ("sl1_l_mula: argument is null"));
  TN *kidtn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);    // variable may acquired a acc register 
  TN *kid0_tn = Expand_Expr (WN_kid1(intrncall), intrncall, NULL);  // RS1
  TN *kid1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);   // RS2
  TN *accmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);    // acm 
  TN *shiftnum = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4); // shr

  TOP top = ismula ? TOP_c3_mula : TOP_c3_mulad;
  TN *acctn = NULL;
  if (TN_has_value(kidtn)) {
    acctn = NULL;
  } else {
    INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
    acctn = Get_Acc_from_Varidx(varidx);
  }
  if (acctn) {
    Is_True(TN_value(shiftnum) == 0, ("sl1_l_mula :: shiftnum should be zero"));	
    Set_Var_AccTN(AccPregN, acctn);   
    Build_OP(top, acctn, accmode, kid0_tn, kid1_tn, ops);
  }else {	
    acctn = Get_New_AccTN();
    Build_OP(top, acctn, accmode, kid0_tn, kid1_tn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, shiftnum, ops);
    Erase_AccTN(acctn);	 	 
  } 
  return result;
}


// special function for 729a 
// rd = intrinsic_mpy_32_16 ( hi, lo, n);
TN *Expand_MPY_32_16 (WN *intrncall, TN *result, OPS *ops) {

  Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall), 
          ("Expand_MPY_32_16:: operand is null"));
	
  TN *kid0_tn =  Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // hi
  TN *kid1_tn =  Expand_Expr (WN_kid1(intrncall), intrncall, NULL);  // lo
  TN *kid2_tn =  Expand_Expr (WN_kid2(intrncall), intrncall, NULL);  // n
/*
      c3.mula $acc0,hi,n
      c3.mula $acc1,lo,n
      c3.mvfs $temp,$acc1,16
      c3.mac.i $acc0,$temp,1
      c3.mvfs $2,$acc0
*/
   TN *tmp_acc1tn = Get_New_AccTN();
   TN *tmp_acc2tn = Get_New_AccTN();
   TN *accmode = Gen_Literal_TN(3, 4); // shift and saturate
   TN *tmp16 = Gen_Literal_TN(16, 4);
   TN  *tmp1 = Gen_Literal_TN(1, 4);
   TN *tmp0 = Gen_Literal_TN(0, 4);
   TN *tmptn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   Build_OP(TOP_c3_mula, tmp_acc1tn, accmode, kid0_tn, kid2_tn, ops);
   Build_OP(TOP_c3_mula, tmp_acc2tn, accmode, kid1_tn, kid2_tn, ops);
   Build_OP(TOP_c3_mvfacc,  tmptn, tmp_acc2tn, tmp16, ops);
   Build_OP(TOP_c3_mac_i,  tmp_acc1tn, accmode, tmptn, tmp1, tmp_acc1tn, ops);
   Build_OP(TOP_c3_mvfacc,  result, tmp_acc1tn, tmp0, ops);
   Erase_AccTN(tmp_acc1tn);
   Erase_AccTN(tmp_acc2tn);
   return result;
}

// special function for 729a 
// rd = intrinsic_mpy_32 ( hi1, lo1, hi2, lo2);
TN *Expand_MPY_32 (WN *intrncall, TN *result, OPS *ops) {
     Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall), 
		    ("Expand_MPY_32_16:: operand is null"));
	
    TN *kid0_tn =  Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // hi1
    TN *kid1_tn =  Expand_Expr (WN_kid1(intrncall), intrncall, NULL);  // lo1
    TN *kid2_tn =  Expand_Expr (WN_kid2(intrncall), intrncall, NULL);  // hi2
    TN *kid3_tn =  Expand_Expr (WN_kid3(intrncall), intrncall, NULL);  // lo2
   /*
     c3.mula $acc0,3,hi1,lo2
    c3.mac $acc0,3,lo1,hi2
    c3.mvfs $temp,$acc0,16
    c3.mvts $acc0,$temp,0
    c3.mac $acc0,hi1,hi2
    c3.mvfs $2,$acc0
   */
   TN *tmp_acc1tn = Get_New_AccTN();
   TN *accmode = Gen_Literal_TN(3, 4); // shift and saturate
   TN *tmp16 = Gen_Literal_TN(16, 4);
   TN *tmp0 = Gen_Literal_TN(0, 4);
   TN *tmptn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   Build_OP(TOP_c3_mula, tmp_acc1tn, accmode, kid0_tn, kid3_tn, ops);
   Build_OP(TOP_c3_mac, tmp_acc1tn, accmode, kid1_tn, kid2_tn, tmp_acc1tn, ops);
   Build_OP(TOP_c3_mvfacc,  tmptn, tmp_acc1tn, tmp16, ops);
   Build_OP(TOP_c3_mvtacc,  tmp_acc1tn, tmptn, tmp0, ops);
   Build_OP(TOP_c3_mac,  tmp_acc1tn, accmode, kid0_tn, kid2_tn, tmp_acc1tn, ops);
   Build_OP(TOP_c3_mvfacc, result, tmp_acc1tn, tmp0, ops);
   Erase_AccTN(tmp_acc1tn);
  
   return result;
}

// resevered
TN *Expand_C3_MACD(WN *intrncall, TN *result, OPS *ops) {
   
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall)),
           ("sl1_l_macd:: operand is null"));

  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // copy to acc
  TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);   //rs1
  TN *kid2_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);   //rs2
  TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);     // acm 
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  
  if (acctn) {
    // set result tn same acctn
    Set_Var_AccTN(AccPregN, acctn);   
    Build_OP(TOP_c3_macd, acctn, acmode, kid1_tn, kid2_tn, acctn, ops);
  } 
  else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn,Gen_Literal_TN(0,4), ops);
    Build_OP(TOP_c3_macd, acctn, acmode, kid1_tn, kid2_tn, acctn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, Gen_Literal_TN(0,4), ops);
    Erase_AccTN(acctn);
  }
  return result;
}


TN *Expand_C3_MVFS(WN *intrncall, TN *result, OPS *ops)  {
  	
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall)),
          ("sl1_l_copy_shr_acc: argument is null"));
  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // acc tn
  TN *shiftnum = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  
  TN *accid = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);  
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  Is_True(acctn, ("sl1_copy_shr_acc:: argument 1 has not mapped to  acc register"));
  Is_True(TN_has_value(accid), ("sl1_copy_shr_acc:: arg 3 is not immediate integer"));
  if (TN_value(accid) == 1) {
    Is_True(Get_DualAccTN(acctn), ("sl1_copy_shr_acc:: arg 1 has not mapped to dual acc register")); 
    acctn = Get_DualAccTN(acctn); 
  } 
  Build_OP(TOP_c3_mvfacc, result, acctn, shiftnum, ops);
  return result;
}

TN *Expand_C3_SAADDSH (WN *intrncall, TN *result, OPS *ops, BOOL isadd=TRUE) {
  
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)),
          ("sl1_saaddsh: arguments are incomplete "));
  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
  TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);   // RS2
  TN *kid2_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);    // SHIFT IMM

  TOP top = isadd ? TOP_c3_saaddsh : TOP_c3_sasubsh;
  Build_OP(top, result, kid0_tn, kid1_tn, kid2_tn, ops);
  return result;
}

TN *Expand_C3_MAC_A (WN *intrncall, TN *result, OPS *ops, BOOL mac_a = TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4) && WN_kid(intrncall, 5) && WN_kid(intrncall, 6)),
          ("sl1_l_mac_p:: arguments are incomplete"));
	
  TN *acc_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // accvariable
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *as1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 4), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // bsel
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  TOP top = mac_a ? TOP_c3_mac_a : TOP_c3_macn_a;	   
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add1tn = Get_Addr_from_Varidx(varidx1);
  INT32 varidx2  = Get_ParmVaridx_Intrncall(intrncall, 4);
  TN *add2tn = Get_Addr_from_Varidx(varidx2);

  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);   
  if (!acctn) {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, acc_tn, tmp0, ops);	
    flag = 1;
  }
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=2;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=4;
  }
  Build_OP(top, acctn, add1tn, add2tn, acmtn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, acctn, ops);
  Set_OP_To_WN_Map(intrncall);

  if (flag & 1) {
    Build_OP(TOP_c3_mvfacc,  result, acctn, tmp0, ops);
    Erase_AccTN(acctn);		
  } 
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 4) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
	
}


TN *Expand_C3_INIT_DACC (WN *intrncall, TN *result, OPS *ops) {
    
   Is_True(WN_kid0(intrncall), ("sl1_l_acquire_dual_acc: argument is incomplete"));
   TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
   TN *shl_tn =  Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // shift left
   INT32 varidx = Get_Resultidx_Intrncall(intrncall);
   TN *acc_tn = Create_Var2DualAcc_Map(varidx);
   TN *dacc_tn =  Get_DualAccTN(acc_tn); 
  
   Build_OP(TOP_c3_mvtacc, acc_tn, kid0_tn, shl_tn, ops);
   Build_OP(TOP_c3_mvtacc, dacc_tn, Zero_TN, Gen_Literal_TN(0,4), ops);
   
   return kid0_tn;	
}

TN *Expand_C3_SAVE_DACC (WN *intrncall, TN *result, OPS *ops) {
   
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall), ("sl1_l_free_dual_acc: operand is null"));
   TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   //opr_tn == 0:copy first acc to result; opr_tn ==1: add dual acc registers with saturation and copy to result 
   TN *opr_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4); 
   INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
   TN *acc_tn = Get_Acc_from_Varidx(varidx);
   Is_True(acc_tn, ("sl1_l_free_dual_acc: variable has not acquired acc register")); 
   TN *dacc_tn =  Get_DualAccTN(acc_tn); 
   TN *tmp1 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   TN *tmp2 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   TN *tmp0 = Gen_Literal_TN(0,4);
   
   Is_True(TN_has_value(opr_tn), ("sl1_l_free_dual_acc:: the arg 2 must be immediate")); 
   int oprvalue= TN_value(opr_tn);

   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   if (oprvalue == 1) {    
     Build_OP(TOP_c3_mvfacc, tmp1, acc_tn, tmp0, ops);
     Build_OP(TOP_c3_mvfacc, tmp2, dacc_tn, tmp0, ops);
     Build_OP(TOP_c3_saadds, result, tmp1, tmp2, tmp0, ops);
   } else if (oprvalue == 0) {
     // TODO: this version only copy first acc value to result
     // how to deal withe second acc register?
     Build_OP(TOP_c3_mvfacc, result, acc_tn, tmp0, ops);
   } else {
     Is_True(0, ("sl1_l_free_dual_acc: the 2nd argument is unknown immediate"));
   }
   //enable acc_tn
   Erase_Var2DualAcc_Map(varidx);

   return result;	
	
}

TN *Expand_C3_DMAC_A (WN *intrncall, TN *result, OPS *ops, BOOL dmac_a = TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4) && WN_kid(intrncall, 5) && WN_kid(intrncall, 6)),
          ("sl1_l_dmac_p:: argument is incomplete"));
	
  TN *acc_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // accvariable
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);    // acm
  TN *as1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 4), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // bsel
  TN *subn_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 7)), 4);   // n
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  TOP top = dmac_a ? TOP_c3_dmac_a : TOP_c3_dmacn_a;	   
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add1tn = Get_Addr_from_Varidx(varidx1);
  INT32 varidx2  = Get_ParmVaridx_Intrncall(intrncall, 4);
  TN *add2tn = Get_Addr_from_Varidx(varidx2);
  if (acctn)
     Set_Var_AccTN(AccPregN, acctn);   
  
  if (!acctn) {
     acctn = Get_New_DualAccTN();
     Build_OP(TOP_c3_mvtacc, acctn, acc_tn, tmp0, ops);	
     Build_OP(TOP_c3_mvtacc, Get_DualAccTN(acctn), Zero_TN, tmp0, ops); 
     flag = 1;
  }
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=2;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=4;
  }
  Build_OP(top,  acctn, Get_DualAccTN(acctn), add1tn, add2tn, acmtn, add1tn, as1_mode, add2tn, as2_mode, subn_tn, bsel_tn, acctn, Get_DualAccTN(acctn), ops);
  Set_OP_To_WN_Map(intrncall);
  if (flag & 1) {
    TN *tmp1 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TN *tmp2 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4); 	
    Build_OP(TOP_c3_mvfacc,  tmp1, acctn, tmp0, ops);
    Build_OP(TOP_c3_mvfacc,  tmp2, Get_DualAccTN(acctn), tmp0, ops);	
    Build_OP(TOP_c3_saadds,  result, tmp1, tmp2, tmp0, ops);
    Erase_AccTN(acctn);	
    Erase_AccTN(Get_DualAccTN(acctn));
  } 
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 4) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
}

/*
 *  result = intrinsic_c3_init_acc (rs1);         
 *  result : map to acc
 *  rs1 : init the value of acc
 */

TN *Expand_INIT_ADDR (WN *intrncall, TN *result, OPS *ops) {

  Is_True(WN_kid0(intrncall), ("sl1_acquire_addr:: argument is incomplete"));
  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
  TN *address_mode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);    // add_mode

  INT32 varidx = Get_Resultidx_Intrncall(intrncall);
  TN *addr_tn = Create_Var2Add_Map(varidx);
  TN *tmp_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);

  Build_OP(TOP_addiu, tmp_tn, kid0_tn, address_mode, ops);
  Build_OP(TOP_c3_mvtadd, addr_tn, tmp_tn, Gen_Literal_TN(0,4), ops);

  return kid0_tn;	
}

TN *Expand_SAVE_ADDR (WN *intrncall, TN *result, OPS *ops) {
   
  Is_True(WN_kid0(intrncall), ("sl1_free_addr: argument is incomplete"));
  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *addrtn = Get_Addr_from_Varidx(varidx);
  Is_True(addrtn, ("sl1_free_addr: variable has not arquired address register")); 
  if (!result) {
    result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  }
  Build_OP(TOP_c3_mvfadd, result, addrtn, Gen_Literal_TN(0,4), ops);
   //enable acc_tn
  Erase_Var2Addr_Map(varidx);

  return result;	
}

/*c3.saaddh.a*/

TN *Expand_C3_SAADDH_A (WN *intrncall, TN *result, OPS *ops, BOOL is_add = TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4) ),
          ("sl1_saaddh_p: arguments are incomplete"));
		
  TN *as1_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // bsel
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 0);
  TN *add1tn = Get_Addr_from_Varidx(pregn1);
  INT32 pregn2  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add2tn = Get_Addr_from_Varidx(pregn2);
  TOP top = is_add ? TOP_c3_saaddh_a : TOP_c3_sasubh_a;
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=1;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=2;
  }
  Build_OP(top,  result, add1tn, add2tn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, ops);
  Set_OP_To_WN_Map(intrncall); 
  if (flag & 1) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
}

TN *Expand_C3_SAMULSH (WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)),
          ("sl1_samulsh:: arguments are incomplete"));

  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // RS1
  TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);   //RS2
  TN *kid2_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4); //SHIFT IMM

  Build_OP(TOP_c3_samulsh, result, kid0_tn, kid1_tn, kid2_tn, ops);
  return result;
}

TN *Expand_C3_LEAD (WN *intrncall, TN *result, OPS *ops) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) ),
          ("SL1_c3_lead: arguments are incomplete"));

  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // acctn
  TN *mode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);   //mode

  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 0);
  TN *acctn = Get_Acc_from_Varidx(pregn1);
  TN *tmp0 = Gen_Literal_TN(0, 4);
  if (acctn) {
    Build_OP(TOP_c3_lead, result, acctn, mode, ops);
  } 
  else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc,  acctn, kid0_tn, tmp0, ops);
    Build_OP(TOP_c3_lead, result, acctn, mode, ops);
    Erase_AccTN(acctn);	
  } 
  return result;
}

TN *Expand_C3_MULA_A (WN *intrncall, TN *result, OPS *ops)  {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
          WN_kid(intrncall, 4) && WN_kid(intrncall, 5) && WN_kid(intrncall, 6) ),
          ("sl1_l_mula_p: arguments are incomplete"));

  TN *kidtn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  	
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *as1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 4), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // bsel
  TN  *shift_num = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 7)), 4);   // shift_num
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add1tn = Get_Addr_from_Varidx(pregn1);
  INT32 pregn2  = Get_ParmVaridx_Intrncall(intrncall, 4);
  TN *add2tn = Get_Addr_from_Varidx(pregn2);
  TN *acctn = NULL;
  if (TN_has_value(kidtn)) {
    acctn = NULL; 
  } else {
    INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
    acctn = Get_Acc_from_Varidx(varidx);
  }
 
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=1;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=2;
  }

  if (acctn) {
    Is_True(TN_value(shift_num) == 0, ("sl1_l_mula_p: shiftnum should be zero"));		
    Build_OP(TOP_c3_mula_a,  acctn, add1tn, add2tn, acmtn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, ops);
    Set_OP_To_WN_Map(intrncall);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mula_a,  acctn, add1tn, add2tn, acmtn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, ops);
    Set_OP_To_WN_Map(intrncall);
    Build_OP(TOP_c3_mvfacc,  result, acctn, shift_num, ops);	
    Erase_AccTN(acctn);   
  }	
 	  
  if (flag & 1) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
}

TN *Expand_C3_SAMULH_A (WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
          WN_kid(intrncall, 4) ), ("sl1_samulh_p: arguments are incomplete"));
	
  TN *as1_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 2), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 3)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // bsel
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 0);
  TN *add1tn = Get_Addr_from_Varidx(pregn1);
  INT32 pregn2  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add2tn = Get_Addr_from_Varidx(pregn2);
	
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=1;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=2;
  }
	
  Build_OP(TOP_c3_samulh_a, result, add1tn, add2tn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, ops);
  Set_OP_To_WN_Map(intrncall);
  if (flag & 1) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }
  return result;	  
}

TN *Expand_C3_PTR (WN *intrncall, TN *result, OPS *ops) {
      
  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 1);
  TN *add1tn = Get_Addr_from_Varidx(pregn1);
  if (add1tn) {
    Set_Var_AddrTN(AddPregN, add1tn);
    if (dotrace) {	
      fprintf(TFile, "Expand_C3_PTR :: ");	 
      Print_Addr(add1tn);	 
    }
  }  
  else {
    TN *rs1 = Expand_Expr(WN_kid1(intrncall), intrncall, NULL); 
    Exp_COPY(result, rs1, ops);
  }	  
  return result;	  
}

TN *Expand_C3_MAC_AR  (WN *intrncall, TN *result, OPS *ops, BOOL mac_ar = TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && 
           WN_kid3(intrncall) && WN_kid(intrncall, 4) && WN_kid(intrncall, 5)),
          ("sl1_l_mac_v_p: arguments are incomplete"));
	
  TN *acc_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // accvariable
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *rs1tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);       // opr1
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 3), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // as2 mode 
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // bsel
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  INT32 varidx2  = Get_ParmVaridx_Intrncall(intrncall, 3);
  TN *add2tn = Get_Addr_from_Varidx(varidx2);
  TOP top = mac_ar ? TOP_c3_mac_ar : TOP_c3_macn_ar; 
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);   
	   
  if (!acctn) {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, acc_tn, tmp0, ops);	
    flag = 1;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=2;
  }

  Build_OP(top,  acctn, add2tn, acmtn, rs1tn, add2tn, as2_mode, bsel_tn, acctn, ops);
  Set_OP_To_WN_Map(intrncall);

  if (flag & 1) {
    Build_OP(TOP_c3_mvfacc,  result, acctn, tmp0, ops);
    Erase_AccTN(acctn);		
  } 
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }
  return result;	  
}

	
TN *Expand_C3_MULA_AR (WN *intrncall, TN *result, OPS *ops)  {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4) && WN_kid(intrncall, 5)),
          ("sl1_l_mula_v_p: arguments are incomplete"));
  TN *kidtn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);	
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *rs1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // rs1
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 3), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // bsel
  TN  *shift_num = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // shift num
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 pregn2  = Get_ParmVaridx_Intrncall(intrncall, 3);
  TN *add2tn = Get_Addr_from_Varidx(pregn2);
  TN *acctn = NULL;
  if (TN_has_value(kidtn)) {
    acctn = NULL;
  } else {
    INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
    acctn = Get_Acc_from_Varidx(varidx);
  }	
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag =1;
  }
  if (acctn) {
    Is_True(TN_value(shift_num) == 0, ("sl1_l_mula_v_p :: shiftnum should be zero"));		
    Build_OP(TOP_c3_mula_ar,  acctn, add2tn, acmtn, rs1_tn, add2tn, as2_mode, bsel_tn, ops); 	
    Set_OP_To_WN_Map(intrncall);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mula_ar,  acctn, add2tn, acmtn, rs1_tn, add2tn, as2_mode, bsel_tn, ops);
    Set_OP_To_WN_Map(intrncall);
    Build_OP(TOP_c3_mvfacc,  result, acctn, shift_num, ops);	
    Erase_AccTN(acctn);
  }
  
  if (flag == 1) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
}

TN *Build_C3_INIT_PTR (WN *intrncall, TN *result, OPS *ops) {
  TN *src =    Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  if (!result ) 
    result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, TN_size(src));
  Exp_COPY(result, src, ops);
  
  return result;
}

TN *Build_C3_TRBACK(WN *intrncall, TN *result, OPS *ops) {
  TN *op1 =  Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  TN *op2 =  Expand_Expr(WN_kid1(intrncall), intrncall, NULL);

  Build_OP(TOP_c3_trback, op1, op1, op2, ops);
  return op1;
} 

TN *Build_C3_VITERBI(WN *intrncall, TN *result, OPS *ops) {
  TN *op1 =  Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  TN *op2 =  Expand_Expr(WN_kid1(intrncall), intrncall, NULL);
  TN *tmp0 = Gen_Literal_TN(0, 4);
  // add 3 ldw instructions 
  OPS_Append_Op(ops, Fixup_OP(TOP_c3_viterbi, op1));
  OPS_Append_Op(ops, Fixup_OP(TOP_c3_viterbi, op1));
  OPS_Append_Op(ops, Fixup_OP(TOP_c3_viterbi, op1));
  Build_OP(TOP_c3_viterbi, op1, op1, op2, ops);
  return op1;
}


TN *Build_C3_FFT(WN *intrncall, TN *result, OPS *ops) {
  TN *op1 =  Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  TN *op2 =  Expand_Expr(WN_kid1(intrncall), intrncall, NULL);

  Build_OP(TOP_c3_fft, op1, op1, op2, ops);
  return op1;
}

TN *Expand_C3_DMULA (WN *intrncall, TN *result, OPS *ops, BOOL isdmula=TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall)),
                  ("sl1_l_dmula: arguments are incomplete"));
  TN *kidtn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL); // acc tn
  TN *kid0_tn = Expand_Expr (WN_kid1(intrncall), intrncall, NULL);  // RS1
  TN *kid1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);   //RS2
  TN *accmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);     // acm
  TN *shiftnum = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);     // shift num

  TOP top = isdmula ? TOP_c3_dmula : TOP_c3_dmulan;
  TN *acctn = NULL;
  if (TN_has_value(kidtn)) {
    acctn = NULL;
  } else {
    INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
    acctn = Get_Acc_from_Varidx(varidx);
  }
  if (acctn) {
    Is_True(Get_DualAccTN(acctn), ("sl1_l_dmula: second acc is null"));
    Is_True(TN_value(shiftnum) == 0, ("sl1_l_dmula :: shiftnum should be zero"));
    Set_Var_AccTN(AccPregN, acctn);
    Build_OP(top, acctn, Get_DualAccTN(acctn), accmode, kid0_tn, kid1_tn, ops);
  }else {
    acctn = Get_New_DualAccTN();
    Build_OP(top, acctn, Get_DualAccTN(acctn), accmode, kid0_tn, kid1_tn, ops);
    // TODO:: only copy first acc value to result
    // how to deal with the other acc ?
    Build_OP(TOP_c3_mvfacc, result, acctn, shiftnum, ops);
    Erase_AccTN(acctn);
    Erase_AccTN(Get_DualAccTN(acctn));
  }
  return result;
}

TN *Expand_C3_DMULT_A (WN *intrncall, TN *result, OPS *ops, BOOL dmult_a = TRUE) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4) && WN_kid(intrncall, 5) && WN_kid(intrncall, 6)),
          ("sl1_l_dmult_p: arguments are incomplete"));
	
  TN *acc_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // accvariable
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *as1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid(intrncall, 4), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // bsel
  TN *shr_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 7)), 4);   // shr

  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  TOP top = dmult_a ? TOP_c3_dmula_a : TOP_c3_dmulan_a;	   
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add1tn = Get_Addr_from_Varidx(varidx1);
  INT32 varidx2  = Get_ParmVaridx_Intrncall(intrncall, 4);
  TN *add2tn = Get_Addr_from_Varidx(varidx2);
  if (acctn) {
     Is_True(Get_DualAccTN(acctn), ("sl1_l_dmult_p: second acc is not valid"));
     Set_Var_AccTN(AccPregN, acctn);   
  }
  if (!acctn) {
     acctn = Get_New_DualAccTN();
     Build_OP(TOP_c3_mvtacc, acctn, acc_tn, tmp0, ops);	
     Build_OP(TOP_c3_mvtacc, Get_DualAccTN(acctn), Zero_TN, tmp0, ops); 
     flag = 1;
  }
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=2;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=4;
  }
  Build_OP(top, acctn, Get_DualAccTN(acctn), add1tn, add2tn, acmtn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, acctn, Get_DualAccTN(acctn), ops);
  Set_OP_To_WN_Map(intrncall);

  if (flag & 1) {
    // TODO: this version is only copy the first acc to result
    // how to deal with the second acc 	
    Build_OP(TOP_c3_mvfacc, result, acctn, shr_tn, ops);
    Erase_AccTN(acctn);	
    Erase_AccTN(Get_DualAccTN(acctn));
  } 
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);		
  }
  if (flag & 4) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);		
  }

  return result;	  
}

TN *Expand_Set_CircBuf(WN *intrncall, TN *result, OPS *ops) {
  Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid(intrncall, 3) && WN_kid(intrncall, 4),
          ("sl1_set_CircBuf: arguments are incomplete"));
  int cbuf1_b = 0xb1c;
  int cbuf1_e = 0xb20;
  int cbuf2_b = 0xb24;
  int cbuf2_e = 0xb28;
  //TN  *cbuf_b, *cbuf_e;
  TN *src_begin = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  
  TN *src_end = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);  
  TN *circbuf_id = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);   // circular buffer id
  TN *cbuf_b = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4); // begin address 
  TN *cbuf_e = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);  // end address
  TN *value0 = Gen_Literal_TN(0, 4);
  Is_True(TN_has_value(circbuf_id) && TN_has_value(cbuf_b) && TN_has_value(cbuf_e), ("sl1_set_circbuf:: 3nd/4th/5th arguments must be immediate")); 
  // check mmr address 
  if (TN_value(circbuf_id) == 0) {
    Is_True((TN_value(cbuf_b) == cbuf1_b) && (TN_value(cbuf_e) == cbuf1_e), ("circular buffer 0 address changed, original is %x %x\n", cbuf1_b, cbuf1_e));
  } else if (TN_value(circbuf_id) == 1) {
    Is_True((TN_value(cbuf_b) == cbuf2_b) && (TN_value(cbuf_e) == cbuf2_e), ("circular buffer 1 address changed, original is %x %x\n", cbuf2_b, cbuf2_e));
  } else {
    Is_True(0, ("sl1_set_circbuf:: 3rd argument must be 0 or 1 "));  
  }
  
  TN *begin_addr = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  TN *end_addr = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  Build_OP(TOP_ori, begin_addr, Zero_TN, cbuf_b, ops);
  Build_OP(TOP_ori, end_addr, Zero_TN, cbuf_e, ops);

  Build_OP(TOP_sw, src_begin, begin_addr, value0, ops);
  Set_OP_volatile(OPS_last(ops));
  Build_OP(TOP_sw, src_end, end_addr, value0, ops); 
  Set_OP_volatile(OPS_last(ops));
}

TN *Expand_C3_DADD(WN *intrncall, TN *result, OPS *ops, BOOL is_dadd = TRUE) {
   Is_True((WN_kid0(intrncall) && WN_kid1(intrncall)), 
            ("Expand_C3_DADD/DSUB:: operand is null"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //rs1 
  TN *kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);  //rs2
  TOP top = is_dadd ? TOP_c3_dadd : TOP_c3_dsub;
   
  Build_OP(top, result, kid0_tn, kid1_tn, ops);
  return result;
}


TN *Expand_C3_FFTLD(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&
           WN_kid3(intrncall), 
            ("Expand_C3_FFTLD:: operand is null"));
   TN *as1_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *am1_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);// as1 mode  
   TN *dtyp_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);  // dtyp
   TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);  //bsel
   UINT flag = 0;
   INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 0);
   TN *add1tn = Get_Addr_from_Varidx(varidx1);
   TN *tmp0 = Gen_Literal_TN(0, 4);

   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   if (!add1tn) {
     add1tn = Get_New_AddrTN();
     Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
     flag |=1;
   }
   Build_OP(TOP_c3_fftld, result, add1tn, add1tn, tmp0, am1_tn, dtyp_tn, bsel_tn, ops);
   Set_OP_To_WN_Map(intrncall);
   if (flag == 1) {
     Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
     Erase_AddrTN(add1tn);	
   }
   return result; 
}


TN *Expand_C3_FFTST(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&
           WN_kid3(intrncall) && WN_kid(intrncall, 4),
            ("Expand_C3_FFTST:: operand is null"));
   TN *rs0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *as1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);
   TN *am1_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);// as1 mode
   TN *dtyp_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);  // dtyp
   TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);  //bsel
   UINT flag = 0;
   INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 1);
   TN *add1tn = Get_Addr_from_Varidx(varidx1);
   TN *tmp0 = Gen_Literal_TN(0, 4);
   
   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   if (!add1tn) {
     add1tn = Get_New_AddrTN();
     Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
     flag |=1;
   }
   Build_OP(TOP_c3_fftst, add1tn, rs0_tn, add1tn, tmp0, am1_tn, dtyp_tn, bsel_tn, ops);
   Set_OP_To_WN_Map(intrncall);
   if (flag == 1) {
     Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
     Erase_AddrTN(add1tn);
   }
   return result;
}



TN *Expand_Deposit(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall), 
           ("Expand_Deposit:: operand is null"));
   TN *rs0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *rs1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);
   TN *pos_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);// position
   TN *width_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);  // width
   
   Build_OP(TOP_depb, result, rs0_tn, rs1_tn, pos_tn, width_tn, ops);
   
   return result;
}


TN *Expand_Extract(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall),
           ("Expand_Extract:: operand is null"));
   TN *rs0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *pos_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);// position
   TN *width_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);  // width
   
   Is_True(WN_kid0(WN_kid0(intrncall)), ("first actual arg is null"));
   TYPE_ID rtype = OPCODE_rtype(WN_opcode(WN_kid0(WN_kid0(intrncall))));
   TOP top = (MTYPE_is_signed(rtype)) ? TOP_extrbs :  TOP_extrbu;
     
   Build_OP(top, result, rs0_tn, pos_tn, width_tn, ops);

   return result;
}


TN *Expand_C3_LD(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&
           WN_kid3(intrncall),
            ("Expand_C3_LD:: operand is null"));
   TN *as1_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *am1_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);// as1 mode
   TN *dtyp_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);  // dtyp
   TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);  //bsel
   UINT flag = 0;
   INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 0);
   TN *add1tn = Get_Addr_from_Varidx(varidx1);
   TN *tmp0 = Gen_Literal_TN(0, 4);

   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   if (!add1tn) {
     add1tn = Get_New_AddrTN();
     Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
     flag |=1;
   }
   Build_OP(TOP_c3_ld, result, add1tn, add1tn, tmp0, am1_tn, dtyp_tn, bsel_tn, ops);
   Set_OP_To_WN_Map(intrncall);
   if (flag == 1) {
     Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
     Erase_AddrTN(add1tn);
   }
   return result;
}


TN *Expand_C3_ST(WN *intrncall, TN *result, OPS *ops) {
   Is_True(WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&
           WN_kid3(intrncall) && WN_kid(intrncall, 4),
            ("Expand_C3_ST:: operand is null"));
   TN *rs0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
   TN *as1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);
   TN *am1_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);// as1 mode
   TN *dtyp_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);  // dtyp
   TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);  //bsel
   UINT flag = 0;
   INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 1);
   TN *add1tn = Get_Addr_from_Varidx(varidx1);
   TN *tmp0 = Gen_Literal_TN(0, 4);

   if (!result) {
     result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   }
   if (!add1tn) {
     add1tn = Get_New_AddrTN();
     Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
     flag |=1;
   }
   Build_OP(TOP_c3_st, add1tn, rs0_tn, add1tn, tmp0, am1_tn, dtyp_tn, bsel_tn, ops);
   Set_OP_To_WN_Map(intrncall);
   if (flag == 1) {
     Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
     Erase_AddrTN(add1tn);
   }
   return result;
}


TN *Expand_C3_DMAC(WN *intrncall, TN *result, OPS *ops, BOOL isdmac=TRUE) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) && WN_kid3(intrncall)),
                  ("sl1_dmac: argument is null"));

  TN *kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);  // variable may acquire an acc register
  TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);     // acm
  TN *kid1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);   // rs1
  TN *kid2_tn = Expand_Expr(WN_kid3(intrncall), intrncall, NULL);   // rs2
  TN *n_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);     // n bit

  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  TN *tmp0 = Gen_Literal_TN(0,4);
  TN *tmp1 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  TN *tmp2 = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  // map result idx to the same acctn
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);

  TOP top = isdmac ? TOP_c3_dmac: TOP_c3_dmacn;
  if (acctn) {
    Build_OP(top, acctn, Get_DualAccTN(acctn), acmode, kid1_tn, kid2_tn, n_mode, acctn, Get_DualAccTN(acctn), ops);
  } else {
    acctn = Get_New_DualAccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn, tmp0, ops);
    Build_OP(TOP_c3_mvtacc, Get_DualAccTN(acctn), Zero_TN, tmp0, ops);
    Build_OP(top, acctn, Get_DualAccTN(acctn), acmode, kid1_tn, kid2_tn, n_mode, acctn, Get_DualAccTN(acctn), ops);
    Build_OP(TOP_c3_mvfacc,  tmp1, acctn, tmp0, ops);
    Build_OP(TOP_c3_mvfacc,  tmp2, Get_DualAccTN(acctn), tmp0, ops);
    Build_OP(TOP_c3_saadds,  result, tmp1, tmp2, tmp0, ops);
    Erase_AccTN(acctn);
    Erase_AccTN(Get_DualAccTN(acctn));
  }
  return result;
}


TN *Expand_C3_BITR(WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)),
          ("C3.BITR:: operand is null"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //rs1
  TN *imm5_tn =  Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4); // imm5
  TN *mode_tn =  Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4);  // mode

  Build_OP(TOP_c3_bitr, result, kid0_tn, imm5_tn, mode_tn, ops);
  return result;
}

TN *Expand_C3_REVB(WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall)) ,
          ("C3.REVB:: operand is null"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //rs1
  TN *imm5_tn =  Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4); // imm5

  Build_OP(TOP_c3_revb, result, kid0_tn, imm5_tn, ops);
  return result;
}


TN *Expand_C3_DSHIFT_I(WN *intrncall, TN *result, OPS *ops, BOOL shl = TRUE) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)) ,
          ("C3.shll.i/C3.shrl.i:: operand is null"));
 
  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //rs1
  TN *imm5_hi_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4); // hi_imm5
  TN *imm5_lo_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4); // lo_imm5

  TOP top = shl ? TOP_c3_dshll_i : TOP_c3_dshrl_i; 
  Build_OP(top, result, kid0_tn, imm5_hi_tn, imm5_lo_tn, ops);
  return result;
}


TN *Expand_C3_MAC_I(WN *intrncall, TN *result, OPS *ops, BOOL mac_i = TRUE) {
   Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && 
            WN_kid2(intrncall) && WN_kid(intrncall, 3)) ,
           ("C3.mac.i/C3.macn.i:: operand is null"));
  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //acc
  TN *rs1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);  // rs1
  TN *imm10_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4); // imm10
  TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4); // mode
  TOP top = mac_i ? TOP_c3_mac_i : TOP_c3_macn_i;
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  
  // map result idx to the same acctn
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);

  if (acctn) {
    Build_OP(top, acctn, acmode, rs1_tn, imm10_tn, acctn, ops);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn, Gen_Literal_TN(0,4), ops);
    Build_OP(top, acctn, acmode, rs1_tn, imm10_tn, acctn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, Gen_Literal_TN(0,4), ops);
    Erase_AccTN(acctn);
  }
  return result;
  
}


TN *Expand_C3_MULA_I(WN *intrncall, TN *result, OPS *ops) {

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid(intrncall, 4) &&
           WN_kid2(intrncall) && WN_kid(intrncall, 3)) ,
          ("C3.mula.i:: operand is null"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL); //acc
  TN *rs1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);  // rs1
  TN *imm10_tn = Get_Liternal_TN(WN_kid0(WN_kid2(intrncall)), 4); // imm10
  TN *acmode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4); // mode
  TN *shr_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4); // shr
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);

  // map result idx to the same acctn
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);

  if (acctn) {
    Build_OP(TOP_c3_mula_i, acctn, acmode, rs1_tn, imm10_tn, acctn, ops);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn, Gen_Literal_TN(0,4), ops);
    Build_OP(TOP_c3_mula_i, acctn, acmode, rs1_tn, imm10_tn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, shr_tn, ops);
    Erase_AccTN(acctn);
  }
  return result;

}


TN *Expand_C3_SAADD_A(WN *intrncall, TN *result, OPS *ops, BOOL is_add = TRUE) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
           WN_kid(intrncall, 4)),
          ("C3.saadd.a: arguments are incomplete"));

  TN *as1_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);   // as1 mode
  TN *as2_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as2 variable
  TN *as2_mode = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // as2 mode
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // bsel
  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 pregn1  = Get_ParmVaridx_Intrncall(intrncall, 0);
  TN *add1tn = Get_Addr_from_Varidx(pregn1);
  INT32 pregn2  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add2tn = Get_Addr_from_Varidx(pregn2);
  TOP top = is_add ? TOP_c3_saadd_a : TOP_c3_sasub_a;
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=1;
  }
  if (!add2tn) {
    add2tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add2tn, as2_tn, tmp0, ops);
    flag |=2;
  }
  Build_OP(top,  result, add1tn, add2tn, add1tn, as1_mode, add2tn, as2_mode, bsel_tn, ops);
  Set_OP_To_WN_Map(intrncall);
  if (flag & 1) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);
  }
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as2_tn, add2tn, tmp0, ops);
    Erase_AddrTN(add2tn);
  }

  return result;

}


TN *Expand_C3_SADDHA(WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&  WN_kid3(intrncall) &&
          WN_kid(intrncall, 4)),
         ("C3.saddha: arguments are incomplete"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // acc
  TN *acm_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);   // acc mode
  TN *rs1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // rs1
  TN *imm4_tn = Get_Liternal_TN(WN_kid0(WN_kid3(intrncall)), 4);   // imm4
  TN *n_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);   // N
  
  INT32 varidx  = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);

  // map result idx to the same acctn
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);

  if (acctn) {
    Build_OP(TOP_c3_saddha, acctn, acm_tn, rs1_tn, imm4_tn, n_tn, acctn, ops);
  } else {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, kid0_tn, Gen_Literal_TN(0,4), ops);
    Build_OP(TOP_c3_saddha, acctn, acm_tn, rs1_tn, imm4_tn, n_tn, acctn, ops);
    Build_OP(TOP_c3_mvfacc, result, acctn, Gen_Literal_TN(0,4), ops);
    Erase_AccTN(acctn);
  }
  return result;
}

TN *Expand_C3_SADDHA_A(WN *intrncall, TN *result, OPS *ops) {
  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall) &&
           WN_kid3(intrncall) && WN_kid(intrncall, 4) && WN_kid(intrncall, 5) && WN_kid(intrncall, 6)),
          ("c3.saddha.a: arguments are incomplete"));

  TN *acc_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);  // acc
  TN *acmtn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // acm
  TN *as1_tn = Expand_Expr(WN_kid2(intrncall), intrncall, NULL);  // as1 variable
  TN *as1_mode = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 3)), 4);   // as1 mode
  TN *imm4_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 4)), 4);;       // imm4
  TN *n_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 5)), 4);;       // imm4
  TN *bsel_tn = Get_Liternal_TN(WN_kid0(WN_kid(intrncall, 6)), 4);   // bsel

  UINT flag= 0;
  TN *tmp0 = Gen_Literal_TN(0, 4);
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *acctn = Get_Acc_from_Varidx(varidx);
  INT32 varidx1  = Get_ParmVaridx_Intrncall(intrncall, 2);
  TN *add1tn = Get_Addr_from_Varidx(varidx1);
  
  if (acctn)
    Set_Var_AccTN(AccPregN, acctn);

  if (!acctn) {
    acctn = Get_New_AccTN();
    Build_OP(TOP_c3_mvtacc, acctn, acc_tn, tmp0, ops);
    flag = 1;
  }
  if (!add1tn) {
    add1tn = Get_New_AddrTN();
    Build_OP(TOP_c3_mvtadd, add1tn, as1_tn, tmp0, ops);
    flag |=2;
  }

  Build_OP(TOP_c3_saddha_a,  acctn, add1tn, acmtn, add1tn, as1_mode, imm4_tn, n_tn, bsel_tn, acctn, ops);
  Set_OP_To_WN_Map(intrncall);

  if (flag & 1) {
    Build_OP(TOP_c3_mvfacc,  result, acctn, tmp0, ops);
    Erase_AccTN(acctn);
  }
  if (flag & 2) {
    Build_OP(TOP_c3_mvfadd,  as1_tn, add1tn, tmp0, ops);
    Erase_AddrTN(add1tn);
  }
  return result;
  
}

TN *Expand_COPY_ADDR(WN *intrncall, TN *result, OPS *ops) {
  Is_True(WN_kid0(intrncall), ("sl1_copy_addr: argument is incomplete"));

  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *addrtn = Get_Addr_from_Varidx(varidx);
  Is_True(addrtn, ("sl1_copy_addr: variable has not arquired address register"));
  if (!result) {
    result = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
  }
  Build_OP(TOP_c3_mvfadd, result, addrtn, Gen_Literal_TN(0,4), ops);

  return result;

}

TN *Expand_SET_ADDRSIZE (WN *intrncall, TN *result, OPS *ops) {

  Is_True(WN_kid0(intrncall), ("sl1_set_addrsize: argument is incomplete"));
  TN *kid0_tn = Expand_Expr(WN_kid0(intrncall), intrncall, NULL);
  TN *step_tn = Get_Liternal_TN(WN_kid0(WN_kid1(intrncall)), 4);  // step

  INT32 varidx = Get_ParmVaridx_Intrncall(intrncall);
  TN *addrtn = Get_Addr_from_Varidx(varidx);
  Is_True(addrtn, ("sl1_size_addrsize: argument 0 has not arquired address register"));
  Is_True(TN_value(step_tn), ("sl1_size_addrsize: argument 1 should be larger than 0"));

  TN *tmp_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer, 4);
  TN *addrs_tn = Get_AddrSize_Reg(addrtn);
  Build_OP(TOP_addiu, tmp_tn, Zero_TN, step_tn, ops);
  Build_OP(TOP_c3_mvtadds, addrs_tn, addrtn, tmp_tn,  Gen_Literal_TN(0,4), addrtn, ops);

  return result;
}

TN* Expand_Float64_Const(WN* intrncall, TN* result,  BOOL Is_high,  OPS *ops)
{
// check if the value has been stored into a preg.
// check if the parameter is a const. give a assertion if not. 
// following format is expected
//      F8CONST
//    F8PARM
//  I4INTRINSIC_OP
  WN* kid0 = WN_kid0(intrncall); 
  if(!kid0) {
     Print_Src_Line(current_srcpos, stderr); 
     Fail_FmtAssertion("line %d: Parameter is NULL when handling CVT64",  SRCPOS_linenum(current_srcpos)); 
  }
  
  WN* const_val = WN_kid0(kid0); 
  
  if(WN_operator(const_val) != OPR_CONST) {
     Print_Src_Line(current_srcpos, stderr); 
     Fail_FmtAssertion("line %d: constant expected when handling CVT64",  SRCPOS_linenum(current_srcpos)); 
  }
  
  ST* sym = WN_st(const_val); 
  TCON tcon = STC_val(sym);
  INTRINSIC id = WN_intrinsic(intrncall); 
  INT32 val  = (id == INTRN_CVT64_LOW) ?  TCON_v0(tcon) : TCON_v1(tcon);  
  if(val == 0) 
     Exp_COPY(result, Zero_TN, ops); 
  else {
     Build_OP (TOP_lui, result, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);
     Build_OP(TOP_ori, result, result, Gen_Literal_TN(val & 0xffff, 4), ops);
  }
  return result; 
}


TN* Expand_Float32_Const(WN* intrncall, TN* result,  OPS *ops)
{
// check if the value has been stored into a preg.
// check if the parameter is a const. give a assertion if not. 
// following format is expected
//      F4CONST
//    F4PARM
//  I4INTRINSIC_OP
  WN* kid0 = WN_kid0(intrncall); 
  if(!kid0) {
     Print_Src_Line(current_srcpos, stderr); 
     Fail_FmtAssertion("line %d:  Parameter is NULL when handling CVT64", SRCPOS_linenum(current_srcpos)); 
  }

  WN* const_val = WN_kid0(kid0); 
  
  if(WN_operator(const_val) != OPR_CONST) {
     Print_Src_Line(current_srcpos, stderr); 
     Fail_FmtAssertion("line %d: constant expected when handling CVT32",  SRCPOS_linenum(current_srcpos)); 
  }

  ST* sym = WN_st(const_val); 
  TCON tcon = STC_val(sym);
  INTRINSIC id = WN_intrinsic(intrncall); 
  INT32 val  = TCON_v0(tcon);  
  if(val == 0) 
     Exp_COPY(result, Zero_TN, ops); 
  else {
     Build_OP (TOP_lui, result, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);
     Build_OP(TOP_ori, result, result, Gen_Literal_TN(val & 0xffff, 4), ops);
  }
  return result; 
}


