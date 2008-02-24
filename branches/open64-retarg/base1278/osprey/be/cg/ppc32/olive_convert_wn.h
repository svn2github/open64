#ifndef _olive_expand_expr_h_
#define _olive_expand_expr_h_

#include <alloca.h>
#include <ctype.h>
#include <vector>

#include <stdint.h>
#include "defs.h"
#include "cg_flags.h"
#include "mempool.h"
#include "wn.h"
#include "symtab.h"
#include "const.h"
#include "erbe.h"
#include "erglob.h"
#include "tracing.h"
#include "config.h"
#include "config_TARG.h"
#include "topcode.h"
#include "targ_isa_lits.h"
#include "intrn_info.h"
#include "opcode.h"
#include "w2op.h"
#include "wn_util.h"
#include "ir_reader.h"
#include "region_util.h"
#include "cg_region.h"
#include "bb.h"
#include "op.h"
#include "tn.h"
#include "register.h"
#include "calls.h"
#include "cgexp.h"
#include "stblock.h"
#include "targ_sim.h"
#include "irbdata.h"
#include "ttype.h"
#include "op_map.h"
#include "pf_cg.h"
#include "wn_map.h"
#include "whirl2ops.h"
#include "gtn_universe.h"
#include "cg.h"
#include "cg_internal.h"
#include "variants.h"
#include "targ_sim.h"
#include "eh_region.h"
#include "fb_whirl.h"
#include "xstats.h"
#include "data_layout.h"
#include "cgtarget.h"
#include "cg_spill.h"
#include "label_util.h"
#include "comment.h"
#include "be_symtab.h"
#include "be_util.h"
#include "config_asm.h"

/*
 * extern declaration 
*/
typedef OPS * pOPS;
extern OPS New_OPs;
extern BOOL In_Glue_Region;    /* in glue-code region */
extern OP *Last_Mem_OP;
 
extern BB * Start_New_Basic_Block (void);
extern void region_stack_eh_set_has_call(void);
extern PREG_NUM Find_PREG_For_Symbol(const ST *st);
extern TN * TN_CORRESPOND_Lookup(TN *result);
extern TN * TN_CORRESPOND_Get(TN *result, WN *expr);
extern void Set_OP_To_WN_Map(WN *wn);
extern TN* Expand_Immediate_Into_Register (TN * reg, TN *src, TYPE_ID mtype, OPS *ops);

/*
 * auxiliary uplevel functions
*/

#define CHECK(a) if (!(a)) return 0

inline bool IN_RANGE(INT64 a, INT64 b, INT64 c)
{ 
    return (a >= b && a <= c);
}

#define SIMM16 -32768, 32767
#define SIMM32 -2147483648, 2147483647
#define UIMM16A 0, 32767
#define UIMM16 0, 65535
#define UIMM32 0, 4294967295

int OPC2OP(OPCODE opc);

void Handle_Imm32(TN* dest, INT64 imm, OPS* ops);
void Handle_Add_Imm(TN* dest, TN* src, INT64 imm, OPS * ops);
void Handle_Logic_Imm(TOP inst_low, TOP inst_high, TN* dest, TN* src, INT64 imm, OPS *ops);
void Handle_Cond_Move_Int(OPERATOR opr, TOP top_cmp, TN *dest, TN *src1, TN *src2, OPS *ops);
void Handle_MaxMin_Int(bool max, TN* dest, TN* src1, TN* src2, OPS* ops);
void Handle_MaxMin_Uint(bool max, TN* dest, TN* src1, TN* src2, OPS* ops);
void Handle_Cond_Move_Float(OPERATOR opr, TN *dest, TN *src1, TN *src2, OPS *ops);
void Handle_MaxMin_Float(bool max, TYPE_ID mtype, TN* dest, TN* src1, TN* src2, OPS* ops);
void Handle_MaxMin_Longlong(bool max, TOP top_cmp, TN* dest_high, TN* dest_low, TN* src1_high, TN* src1_low, TN* src2_high, TN* src2_low, OPS* ops);

enum Cvt_Type {RND, TRUNC, CEIL, FLOOR};

void Handle_Float_Int_Cvt(Cvt_Type cvtType, TYPE_ID srcType, TN* dest, TN* src, OPS* ops);
void Handle_Float_Uint_Cvt(Cvt_Type cvtType, TYPE_ID srcType, TN* dest, TN* src, OPS* ops);
void Handle_Int_Float_Cvt(TN * dest, TN * src, OPS * ops, bool isUnsigned, bool isDouble);
void Handle_ULonglong_Float_Cvt(TN* dest, TN* src_high, TN* src_low, OPS* ops, bool isDouble);

void Handle_Longlong_Ldst(WN* expr, TOP top, TN *low, TN* high, OPS* ops);
void Handle_Cond_Longlong(OPERATOR opr, TOP top_cmp, TN *dest, TN *src1_high, TN* src1_low, TN *src2_high,  TN *src2_low, OPS *ops);


void Expand_Load_Address(WN *expr, TN **p_base_tn, TN **p_ofst_tn, OPS *ops);
void Handle_Cond_Branch(TOP top_branch, TOP top_cmp, TN *dest, TN *src1, TN *src2, OPS *ops);
void Handle_Call(WN *call, OPERATOR call_opr);

TN * Handle_Load(WN *ldid, TN *result, TOP top, OPS * ops);
void Handle_Store(WN *stid, TN *result, TOP top, OPS * ops);
TN * Handle_Float_Load(WN *fld, TN *result, TOP top, OPS *ops);
void Handle_Float_Store(WN *fst, TN *result, TOP top, OPS *ops);

/*
 * olive defines
*/

typedef struct burm_state * STATE;
typedef struct olive_node * NODEPTR;
typedef struct olive_node * TREE;

#define GET_KIDS(r)         ((r)->get_kids())
#define OP_LABEL(r)         ((r)->op_label())
#define STATE_LABEL(r)      ((r)->state_label())
#define SET_STATE(r,s)      (r)->set_state(s)

#define DEFAULT_COST        break
#define PANIC               printf
#define NO_ACTION(x)        

#define CHECK(a)            if (!(a)) return 0

typedef struct COST {
    int cost;
} COST;

static COST COST_INFINITY = { 32767 };
static COST COST_ZERO     = { 0 };
#define COST_LESS(x,y)  ((x).cost < (y).cost)

#define burm_trace printf

struct olive_node{     
    OPCODE    opcode;
    OPERATOR  opr;
    TOP       top;
    int       num_opnds;
    WN        * wn;
    WN        * parent;
    INTRINSIC intrn_id;
    
    TN        * result;
    TN        * result_high; // used for long long
    TN        * opnd_tn[OP_MAX_FIXED_OPNDS];
    
    NODEPTR   kids[OP_MAX_FIXED_OPNDS];
    STATE     state;
    int       opc;
    
    olive_node(WN * w, WN * p, TN * res, INTRINSIC iid)
    {        
        wn        = w;
        parent    = p;
        result    = res;
        intrn_id  = iid;
        
        opcode    = WN_opcode(wn);
        opr       = WN_operator(wn);
        top       = WHIRL_To_TOP(wn);  
        opc       = OPC2OP(WN_opcode(wn));
          
        if (top != TOP_UNDEFINED) {
            num_opnds = ISA_OPERAND_INFO_Operands(ISA_OPERAND_Info(top))
		        - (TOP_is_predicated(top) != 0);
        } else {
            num_opnds = OPCODE_nkids(opcode);
        }
        FmtAssert(num_opnds <= OP_MAX_FIXED_OPNDS, ("too many operands (%d) in olive_node::olive_node", num_opnds));
        
        if (OPCODE_has_sym(opcode) && WN_st(wn) != NULL) {            
            Allocate_Object (WN_st(wn));  /* make sure st is allocated */
        }

	result = NULL;
	result_high = NULL;
        
        /* if we need a result, make sure we have a valid result tn */
        /* move this to action */
//        if (OPCODE_is_expression(opcode) && (result == NULL)) {
//            result = Build_TN_Of_Mtype (WN_rtype(wn));
//        }
        int i;
        for (i = 0; i < OP_MAX_FIXED_OPNDS; i++) {
            opnd_tn[i] = NULL;
        }
        
        for (i = 0; i < num_opnds; i++) {
            kids[i] = new olive_node(WN_kid(wn, i), wn, opnd_tn[i], intrn_id);
            opnd_tn[i] = kids[i]->result;
        }
        for (; i < OP_MAX_FIXED_OPNDS; i++) {
            kids[i] = NULL;
        }
    }
    
    virtual ~olive_node() {
        for (int i = 0; i < num_opnds; i++) {
            delete kids[i];
        }
    }
    
    // Required by olive
    void       set_state(STATE s) { state = s;      }
    STATE      state_label()      { return state;   }
    NODEPTR*   get_kids()         { return kids;    }
    int        op_label()         { return opc;  }
    void       Print()            { /* printf("WN\n%s\n", dump_wn(wn));*/ }    
};

#endif
