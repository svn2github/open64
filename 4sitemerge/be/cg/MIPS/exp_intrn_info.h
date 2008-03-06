#ifndef EXP_INTRN_INFO_H_
#define EXP_INTRN_INFO_H_

#include "register.h"
#include "topcode.h"
#ifdef TARG_SL

typedef enum {
   attr_undef = 0,
   opnd_is_lit     = 0x01,
   opnd_is_cop_creg = 0x2, 
   opnd_is_cop_breg = 0x4,
   opnd_is_cop_vreg = 0x8,
   opnd_is_cop_sreg = 0x10,
   opnd_is_integer_reg = 0x20,
   opnd_is_expr = 0x40,
   opnd_is_sym = 0x80,
   opnd_is_c2acc = 0x100,
   opnd_is_c2acc_ctrl = 0x200,
   opnd_is_c2mvsel = 0x400,
   opnd_is_c2vlcs = 0x800,
   opnd_is_c2movpat = 0x1000,
} OPND_ATTR_TYPE ;

/* select one Build_OP to generate intrinsic instruction  and 
 * number represent which tn operands in function Build_OP */
typedef enum {
   BUILD_OP_0, 
   BUILD_OP_1,
   BUILD_OP_2,
   BUILD_OP_3,
   BUILD_OP_4,
   BUILD_OP_5,
   BUILD_OP_6,
   BUILD_OP_7,
   BUILD_OP_8,
   BUILD_OP_9,
} build_op_type; 

#define OPNDS_MAX 10    // the number of operands
#define OPND_INFO_MAX 100 // the number of operand info type

typedef build_op_type BUILD_OP_TYPE;
typedef UINT32 INTRN_INFO_GRP_IDX;  // index used to point to sl intrsic info entry
typedef UINT32 INTRN_INFO_OPNDS_IDX;

typedef struct sl_opnd_info {
   OPND_ATTR_TYPE type; // attribute type for current operand
   UINT32 pos;  // what position current opnd should locate in function Build_OP
} SL_OPND_INFO;

#define OPNDS_INFO_MAX 200
typedef enum opnd_info_idx {
	opnd_info_undef,
	/* immed */
	immed_pos_0,   immed_pos_1,       immed_pos_2,        immed_pos_3, 
	immed_pos_4,   immed_pos_5,       immed_pos_6,        immed_pos_7,
	immed_pos_8,
	/* cop_creg */
	creg_pos_0, creg_pos_1, creg_pos_2, creg_pos_3, creg_pos_4, creg_pos_5, creg_pos_6, 
	/* cop_vreg */
	vreg_pos_0, 	vreg_pos_1, 	vreg_pos_2, 	vreg_pos_3,
	vreg_pos_4, 
    /* cop_sreg */
    sreg_pos_0,     sreg_pos_1,     sreg_pos_2,     sreg_pos_3,
    sreg_pos_4,      
    /* gpr */
    gpr_pos_0,      gpr_pos_1,      gpr_pos_2,      gpr_pos_3,
    gpr_pos_4,
    /* expr */
    expr_pos_0,     expr_pos_1,     expr_pos_2,     expr_pos_3, expr_pos_4, 
    /* symbol */
    sym_pos_0,      sym_pos_1,
    /* c2 sum4 acc */
    c2acc_pos_0, c2acc_pos_1, c2acc_pos_2, c2acc_pos_3, c2acc_pos_4, c2acc_pos_5,
    /* c2 sum4 acc ctrl */
    c2acc_ctrl_pos_0, c2acc_ctrl_pos_1, c2acc_ctrl_pos_2, c2acc_ctrl_pos_3, c2acc_ctrl_pos_4,
    /* c2 mvsel internal reg */
    c2mvsel_pos_0, c2mvsel_pos_1, c2mvsel_pos_2, c2mvsel_pos_3, c2mvsel_pos_4, c2mvsel_pos_5, c2mvsel_pos_6,
    /* c2 vlcs internal reg */
    c2vlcs_pos_0, c2vlcs_pos_1, c2vlcs_pos_2, c2vlcs_pos_3, c2vlcs_pos_4, c2vlcsl_pos_5, c2vlcs_pos_6,
    /* c2 movpat internal reg */
    c2movpat_pos_0, c2movpat_pos_1, c2movpat_pos_2, c2movpat_pos_3, c2movpat_pos_4, c2movpat_pos_5, c2movpat_pos_6,
}OPNDS_ATTR_IDX;

SL_OPND_INFO  sl_opnd_info_array[OPNDS_INFO_MAX+1] = {
	/* NONE */ 
	{attr_undef, 0},
	/* immed */
	{opnd_is_lit, 0},
    {opnd_is_lit, 1},
    {opnd_is_lit, 2},
    {opnd_is_lit, 3},
    {opnd_is_lit, 4},
    {opnd_is_lit, 5},
    {opnd_is_lit, 6},
    {opnd_is_lit, 7},
    {opnd_is_lit, 8},
	/* cop_creg */
	{opnd_is_cop_creg, 0}, 
	{opnd_is_cop_creg, 1}, 
	{opnd_is_cop_creg, 2}, 
	{opnd_is_cop_creg, 3},  
	{opnd_is_cop_creg, 4},  
	{opnd_is_cop_creg, 5},  
	{opnd_is_cop_creg, 6},  
    /* cop_vreg */
    {opnd_is_cop_vreg, 0},  
	{opnd_is_cop_vreg, 1},
	{opnd_is_cop_vreg, 2},
	{opnd_is_cop_vreg, 3},
       {opnd_is_cop_vreg, 4},
	 /* cop_sreg */
    {opnd_is_cop_sreg, 0},  
	{opnd_is_cop_sreg, 1},
	{opnd_is_cop_sreg, 2},
	{opnd_is_cop_sreg, 3},
    {opnd_is_cop_sreg, 4},
	/* gpr */ 
	{opnd_is_integer_reg, 0},
    {opnd_is_integer_reg, 1},
  	{opnd_is_integer_reg, 2},
	{opnd_is_integer_reg, 3},
    {opnd_is_integer_reg, 4},
    /* expr */
    {opnd_is_expr,        0},
    {opnd_is_expr,        1},
    {opnd_is_expr,        2},
    {opnd_is_expr,        3},
    {opnd_is_expr,        4},    
    /* symbol */
    {opnd_is_sym,         0},
    {opnd_is_sym,         1},
   
    /* c2 acc */
    {opnd_is_c2acc, 0},
    {opnd_is_c2acc, 1},
    {opnd_is_c2acc, 2},
    {opnd_is_c2acc, 3},
    {opnd_is_c2acc, 4},
    {opnd_is_c2acc, 5},
   
    /* c2 acc ctrl */
    {opnd_is_c2acc_ctrl, 0},
    {opnd_is_c2acc_ctrl, 1},
    {opnd_is_c2acc_ctrl, 2},
    {opnd_is_c2acc_ctrl, 3},
    {opnd_is_c2acc_ctrl, 4},

    /* c2 mvsel internal register */
    {opnd_is_c2mvsel, 0},
    {opnd_is_c2mvsel, 1},
    {opnd_is_c2mvsel, 2},
    {opnd_is_c2mvsel, 3},
    {opnd_is_c2mvsel, 4},
    {opnd_is_c2mvsel, 5},
    {opnd_is_c2mvsel, 6},
   
    /* c2 vlcs internal register */
    {opnd_is_c2vlcs, 0},
    {opnd_is_c2vlcs, 1},
    {opnd_is_c2vlcs, 2},
    {opnd_is_c2vlcs, 3},
    {opnd_is_c2vlcs, 4},
    {opnd_is_c2vlcs, 5},
    {opnd_is_c2vlcs, 6},
   
    /* c2 movpat internal register */
    {opnd_is_c2movpat, 0},
    {opnd_is_c2movpat, 1},
    {opnd_is_c2movpat, 2},
    {opnd_is_c2movpat, 3},
    {opnd_is_c2movpat, 4},
    {opnd_is_c2movpat, 5},
    {opnd_is_c2movpat, 6},
};

inline SL_OPND_INFO* 
SL_Opnd_Info(UINT32 idx) {
  return &sl_opnd_info_array[idx];
}

inline OPND_ATTR_TYPE 
SL_OPND_INFO_Type(SL_OPND_INFO* info) {
  return info->type;
}

inline UINT32
SL_OPND_INFO_Pos(SL_OPND_INFO* info) {
  return info->pos;
}

inline bool OPND_is_cop_creg(SL_OPND_INFO* info) {
     return (info->type & opnd_is_cop_creg);
}

inline bool OPND_is_cop_vreg(SL_OPND_INFO* info) {
     return (info->type & opnd_is_cop_vreg);
}

inline bool OPND_is_c2acc(SL_OPND_INFO* info) {
     return (info->type & opnd_is_c2acc);
}

inline bool OPND_is_c2acc_ctrl(SL_OPND_INFO* info) {
     return (info->type & opnd_is_c2acc_ctrl);
}

inline bool OPND_is_c2mvsel(SL_OPND_INFO* info) {
     return (info->type & opnd_is_c2mvsel);
}

inline bool OPND_is_c2movpat(SL_OPND_INFO* info) {
     return (info->type & opnd_is_c2movpat);
}

typedef enum n_opnds{
   zero_opnds, one_opnds, two_opnds, three_opnds, four_opnds, five_opnds,
   six_opnds, seven_opnds, eight_opnds, nine_opnds
} N_OPNDS;

/* this struct is used to descript opnds information for each intrinsic function
 * 		opnds_num : the number of operands 
 *      opnds_idx : point to  */
typedef struct sl_intrn_opnds_info{
   BUILD_OP_TYPE build_type; 
   N_OPNDS opnds_num;  //including result and operands;
   OPNDS_ATTR_IDX opnds_idx[OPNDS_MAX];
   bool need_merge_opnds; // merge several const operands to generate one const
} SL_INTRN_OPNDS_INFO;

/* opnds_num_opnds_infos */
/* u: undef
 * g: gpr
 * s: sreg
 * v: vreg
 * i: immed
 * c: creg
 * e: expr  
 * m: symbol
 * a: c2acc  //for sl2
 * b: c2acc_ctrl  //for sl2 c2 acc control
 * d: c2 mvsel internal register
 * f: c2 vlcs internal register
 * j: c2 movpat internal register
 * */
typedef enum opnds_info_idx {
  opnds_zero,  
  u_i0, 
  u_v0,
  u_i0_v1, 
  u_s0_i1, 
  u_v0_i1,
  u_v0_s1,
  u_v1_s0,    
  u_v0_v1, 
  u_v1_v0,
  u_s_s_u_u_u_i_i,
  i_i_i,
  i_i_u_i_i,
  i_s_s,
  i_s_s_u_u_u_i,
  i1_c0,
  i1_v0,
  i_v_v,
  i_v_v_u_u_u_i,
  i_i_i_i,
  i_i_i_u_i,
  i_i_i_u_u_i,
  i_i_i_u_u_u_i,
  i_i_i_i_i_i_i_i,
  i_i_i_i_i_i_i_i_i,  //12
 g0,
  g0_u_m1,
  g0_u_u_m1,
  g0_c1,
  g0_e1,
  g0_s1,
  g_v,
  g0_v1_i2,
  g_s_i,
  g_v_i_2,  // gpr and vreg has different position not like above case
  g_c_i,   // 19
  g0_v1_e2,
  g0_e1_e2,
  g0_e1_e2_e3,
  g0_e1_i2_e3,  
  e0_e1_e2, 
  s_i,
  s0_s1,
  s1_s0,
  g0_e1_i2,
  s0_s1_s2,
  s1_s2_s0,
  s_i_s,
  s0_e1,
  s1_v0,
  g0_i1_e2,
  g0_i1_v2,
  s0_v1_i2, 
  s1_v0_i2,
  g0_v1_v2,
  g0_v1_v2_c3,
  s_s_u_u_i,  //new
  g0_e1_e2_i3, 
  g0_e1_e2_i3_i4,
  s0_s1_s2_s3,
  s1_s2_s3_s0,
  s1_s3_s2_s0, 
  g0_e1_i2_i3, 
  s1_s0_u_i3_i2,
  g0_e1_i2_u_i3_i4,
  g0_e1_i2_u_u_i3,
  g0_e1_e2_u_u_i3,
  s_s_s_u_i,
  s_s_s_u_u_i,
  s_s_s_u_s,
  s_s_s_u_u_u_i, //28
  g0_e1_e2_u_i3_i4,
  g0_e1_e2_u_i3_i4_i5,
  g0_e1_i2_u_i3_i4_i5,
  g0_v1_i2_u_i3_i4_i5,
  v0_v1_i2_u_u_i3_i4_i5_c6,
  g0_v1_v2_u_i3_i4_i5,
  v0_v1_v2_u_u_i3_i4_i5_c6,
  g0_e1_e2_i4_i5_e3,
  v0,
  v0_i1,
  v1_i0,
  v0_e1,
  v1_s0,
  v1_v0,
  v0_v1,
  v0_u_u_m1,
  v0_u_u_u_m1,
  v1_u_s0,
  v0_e1_i2,
  v0_e1_e2,
  v1_s0_i2,
  v0_s1_i2,
  v_s_s,
  v_i_v, 
  v0_v1_v2,
  v0_v1_v2_v3,
  v1_v2_v0,
  v0_v1_i2,
  v1_v0_i2,
  v_s_u_i,
  v0_v1_u_i2,
  v0_u_v1, 
  v1_v0_u_i2,
  v_v_u_u_i,  //new 
  g0_v1_v2_v3,
  g0_v1_v2_v3_i4, 
  v0_v1_i2_u_i3,
  v1_v0_u_i3_u_i2,
  v1_s0_u_i3_u_i2,
  v_v_v_u_u_i,
  v1_v0_i3_i2,
  v0_v1_i2_i3,
  v0_v1_i2_u_u_i3_i4,
  v0_v1_i2_u_u_u_i3_c4,
  v0_v1_i2_u_u_u_c3,
  v0_v1_v2_i3,
  v1_v2_v0_i3,
  v0_v1_e2_e3, 
  v_v_v_u_i,
  v0_v1_v2_u_i3,
  v_v_v_i3_i4, 
  v_v_v_i4_i3,
  v0_v1_v2_u_i3_i4,
  v_v_v_s,
  v2_v3_v0_s1,
  v2_v0_v3_s1,
  v_v_v_v,
  v0_v1_u_u_i2,
  v0_v1_u_u_i2_i3,
  v0_v1_u_u_u_i2,
  v1_v2_v0_u_u_u_i3,
  v0_v1_v2_u_u_i3_i4,
  v0_v1_v2_i3_u_u_u_i4,
  v0_v1_v2_u_u_u_u_i3,
  v0_v1_v2_i3_u_u_i4_i5,
  v0_v1_v2_u_u_u_i3_i4,
  v0_v1_v2_u_u_u_i3_c4,
  v_v_v_v_2,
  v0_v1_v2_v3_v4, 
#ifdef TARG_SL2
  v0_a1_v2_v3_v4_a5_c6, 
  a0_v1_e2_c3, 
  g0_d1_e2_e3_i4_d5,
  g0_d1_e2_e3_i4_d5_c6,
  v0_f1_v2_f3,
  g0_f1,
  v0_v1_i2_u_i3_f4,
  v0_f1_e2_c3_c4,
  v0_v1_c2,
  v0_e1_c2,
  v0_v1_v2_c3,
  g0_v1_i2_c3,
  v0_i1_c2,
#endif
  c,
  c1_i0,
  c0_m1,
  c0_e1,
  e0_s,
  e1_s,
  e0_v,
  e1_v,
  e_v_i,
  e_c_i,
  e0_e1, 
  e0_u_m1,
  m1_c0,
  m1_v0,
  c1_m0,
  v0_m1,
  // For c2 sum4 acc
  a0_v1_i2,
  a0_v1,
#ifdef TARG_SL2
  g0_a1_v2_i3,
  g0_e1_e2_i3_e4_i5, 
#endif
} OPNDS_INFO_IDX;


SL_INTRN_OPNDS_INFO  intrn_opnds_info_array[OPNDS_INFO_MAX+1] = {
	/* NONE group 0  */ 
    {BUILD_OP_0, zero_opnds, {}, 0 },

    {BUILD_OP_1, two_opnds,  {opnd_info_undef, immed_pos_0}, 0},     //u_i0

    /* Group 1 : undef  */
    {BUILD_OP_1, two_opnds,  {opnd_info_undef, vreg_pos_0}, 0},     //u_v0

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, immed_pos_0, vreg_pos_1}, 0},  //u_i0_v1

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, sreg_pos_0, immed_pos_1}, 0},     //u_s0_i1

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, vreg_pos_0, immed_pos_1}, 0},    //u_v0_i1

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, vreg_pos_0, sreg_pos_1}, 0},     //u_v0_s1

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, vreg_pos_1, sreg_pos_0}, 0},     //u_v1_s0

    {BUILD_OP_2, three_opnds,  {opnd_info_undef, vreg_pos_0, vreg_pos_1}, 0},  // u_v0_v1
    /* u_v1_v0 */
    {BUILD_OP_2, three_opnds,  {opnd_info_undef, vreg_pos_1, vreg_pos_0}, 0},  
 
    /* u_s_s_u_u_u_i_i */
    {BUILD_OP_4, eight_opnds,  {opnd_info_undef, sreg_pos_1, sreg_pos_0,opnd_info_undef, \
    	opnd_info_undef, opnd_info_undef, immed_pos_2, immed_pos_3}, 0}, 

    /* Group 2  : immed */
    {BUILD_OP_3,  three_opnds,  {immed_pos_1, immed_pos_2, immed_pos_0 }, 0},

    {BUILD_OP_4,  five_opnds,  {immed_pos_1, immed_pos_0, opnd_info_undef, immed_pos_3, immed_pos_2 }, 0},

    {BUILD_OP_3,  three_opnds,  {immed_pos_2, sreg_pos_1,  sreg_pos_0 }, 0},            

    {BUILD_OP_4,  seven_opnds,  {immed_pos_2, sreg_pos_1,  sreg_pos_0, opnd_info_undef,
    	          opnd_info_undef, opnd_info_undef, immed_pos_3 }, 0},            

    {BUILD_OP_2,  two_opnds,    {immed_pos_1, creg_pos_0 }, 0},                

    {BUILD_OP_2,  two_opnds,    {immed_pos_1, vreg_pos_0 }, 0},                

    {BUILD_OP_3,  three_opnds,  {immed_pos_2, vreg_pos_1,  vreg_pos_0 }, 0},                

    {BUILD_OP_4,  seven_opnds,  {immed_pos_2, vreg_pos_1,  vreg_pos_0, opnd_info_undef,
    	          opnd_info_undef, opnd_info_undef, immed_pos_3 }, 0},           
  
    {BUILD_OP_4, four_opnds,  {immed_pos_1, immed_pos_2, immed_pos_3, immed_pos_0}, 0},             

    {BUILD_OP_4, five_opnds,  {immed_pos_1, immed_pos_2, immed_pos_0, \
    	opnd_info_undef, immed_pos_3}, 0},             

 	{BUILD_OP_4, six_opnds,  {immed_pos_1, immed_pos_2, immed_pos_0, \
    	opnd_info_undef, opnd_info_undef, immed_pos_3}, 0},             

    {BUILD_OP_4, seven_opnds,  {immed_pos_1, immed_pos_2, immed_pos_0, \
    	opnd_info_undef, opnd_info_undef, opnd_info_undef, immed_pos_3}, 0},        

    {BUILD_OP_8, eight_opnds,  {immed_pos_0, immed_pos_1, immed_pos_2, immed_pos_3, \
                   immed_pos_4, immed_pos_5, immed_pos_6, immed_pos_7 }, 0},        

    {BUILD_OP_9, nine_opnds,  {immed_pos_0, immed_pos_1, immed_pos_2, immed_pos_3, \
                   immed_pos_4, immed_pos_5, immed_pos_6, immed_pos_7, \
                   immed_pos_8 }, 0},        

	/* Group 3 : gpr  */
    {BUILD_OP_1, one_opnds, {gpr_pos_0}, 0},     //g0

    {BUILD_OP_2, three_opnds,   {gpr_pos_0,  opnd_info_undef, sym_pos_1}, 0}, // g0_u_m1
	
    {BUILD_OP_2, four_opnds,   {gpr_pos_0,  opnd_info_undef, opnd_info_undef, sym_pos_1}, 0}, // g0_u_u_m1
	
    {BUILD_OP_2, two_opnds,   {gpr_pos_0,  creg_pos_1}, 0}, // g0_c1

    {BUILD_OP_2, two_opnds,   {gpr_pos_0,  expr_pos_1}, 0}, // g0_e1

    {BUILD_OP_2, two_opnds,   {gpr_pos_0,  sreg_pos_1}, 0}, //g0_s1

	{BUILD_OP_2, two_opnds,   {gpr_pos_0,  vreg_pos_1}, 0},

	{BUILD_OP_3,  three_opnds, {gpr_pos_0,  vreg_pos_1, immed_pos_2}, 0},

    {BUILD_OP_3,  three_opnds, {gpr_pos_0,  sreg_pos_1, immed_pos_2}, 0},

    {BUILD_OP_3,  three_opnds, {gpr_pos_1,  vreg_pos_0, immed_pos_2}, 0},

    {BUILD_OP_3,  three_opnds, {gpr_pos_1,  creg_pos_0, immed_pos_2}, 0},

    {BUILD_OP_3,  three_opnds, {gpr_pos_0,  vreg_pos_1, expr_pos_2}, 0},  // g0_v1_e2

    {BUILD_OP_3,  three_opnds, {gpr_pos_0,  expr_pos_1, expr_pos_2}, 0},  // g0_e1_e2

    {BUILD_OP_4,  four_opnds, {gpr_pos_0,  expr_pos_1, expr_pos_2, expr_pos_3}, 0},  // g0_e1_e2_e3

    {BUILD_OP_4,  four_opnds, {gpr_pos_0,  expr_pos_1, immed_pos_2, expr_pos_3}, 0},  // g0_e1_i2_e3

    {BUILD_OP_4,  three_opnds, { expr_pos_0,  expr_pos_1, expr_pos_2}, 0},  // e0_e1_e2

    /* Group 4: sreg */
    {BUILD_OP_2,  two_opnds,   {sreg_pos_1, immed_pos_2}, 0},

    {BUILD_OP_2,  two_opnds,   {sreg_pos_0, sreg_pos_1}, 0},     // s0_s1

    {BUILD_OP_2,  two_opnds,   {sreg_pos_1, sreg_pos_0}, 0},     // s1_s0

    {BUILD_OP_3,  three_opnds, {gpr_pos_0, expr_pos_1,  immed_pos_2}, 0},  //g0_e1_i2

    {BUILD_OP_3,  three_opnds, {sreg_pos_0, sreg_pos_1,  sreg_pos_2}, 0},  //s0_s1_s2

    {BUILD_OP_3,  three_opnds, {sreg_pos_1, sreg_pos_2,  sreg_pos_0}, 0},  //s1_s2_s0

    {BUILD_OP_3,  three_opnds, {sreg_pos_1, immed_pos_2, sreg_pos_0}, 0},     
    
    {BUILD_OP_2,  two_opnds, {sreg_pos_0, expr_pos_1}, 0},     // s0_e1

    {BUILD_OP_2,  two_opnds, {sreg_pos_1, vreg_pos_0}, 0},     //s1_v0

    {BUILD_OP_3,  three_opnds, {gpr_pos_0, immed_pos_1, expr_pos_2}, 0},  //g0_i1_e2

    {BUILD_OP_3,  three_opnds, {gpr_pos_0, immed_pos_1, vreg_pos_2}, 0},     //g0_i1_v2

    {BUILD_OP_3,  three_opnds, {sreg_pos_0, vreg_pos_1, immed_pos_2}, 0},     //s0_v1_i2

    {BUILD_OP_3,  three_opnds, {sreg_pos_1, vreg_pos_0, immed_pos_2}, 0},     //s1_v0_i2

    {BUILD_OP_3,  three_opnds, {gpr_pos_0, vreg_pos_1, vreg_pos_2}, 0},     //g0_v1_v2	

    {BUILD_OP_4,  four_opnds, {gpr_pos_0, vreg_pos_1, vreg_pos_2, creg_pos_3}, 0},     //g0_v1_v2_c3	

    {BUILD_OP_3,  five_opnds, {sreg_pos_1, sreg_pos_0, opnd_info_undef, opnd_info_undef, immed_pos_2}, 0},     

    {BUILD_OP_4,  four_opnds, {gpr_pos_0, expr_pos_1, expr_pos_2, immed_pos_3}, 0},     //g0_e1_e2_i3

    {BUILD_OP_5,  five_opnds, {gpr_pos_0, expr_pos_1, expr_pos_2, immed_pos_3, immed_pos_4}, 0},  //g0_e1_e2_i3_i4

    {BUILD_OP_4,  four_opnds,  {sreg_pos_0, sreg_pos_1, sreg_pos_2, sreg_pos_3}, 0},     //s0_s1_s2_s3

    {BUILD_OP_4,  four_opnds,  {sreg_pos_1, sreg_pos_2, sreg_pos_3, sreg_pos_0}, 0},     //s1_s2_s3_s0

    {BUILD_OP_4,  four_opnds,  {sreg_pos_1, sreg_pos_3, sreg_pos_2, sreg_pos_0}, 0},     //s1_s3_s2_s0

    {BUILD_OP_4,  four_opnds,  {gpr_pos_0, expr_pos_1, immed_pos_2, immed_pos_3}, 0},     //g0_e1_i2_i3

    {BUILD_OP_4,  five_opnds,  {sreg_pos_1, sreg_pos_0,  opnd_info_undef, \
   	              immed_pos_3, immed_pos_2}, 0},  //s1_s0_u_i3_i2

    {BUILD_OP_5,  seven_opnds, {gpr_pos_0, expr_pos_1, immed_pos_2,  \
           opnd_info_undef, immed_pos_3, immed_pos_4}, 0},   //g0_e1_i2_u_i3_i4

    {BUILD_OP_4,  six_opnds, {gpr_pos_0, expr_pos_1, immed_pos_2,  \
           opnd_info_undef, opnd_info_undef, immed_pos_3}, 0},   //g0_e1_i2_u_u_i3

    {BUILD_OP_4,  six_opnds, {gpr_pos_0, expr_pos_1, expr_pos_2,  \
           opnd_info_undef, opnd_info_undef, immed_pos_3}, 0},   //g0_e1_e2_u_u_i3

    {BUILD_OP_4,  five_opnds,  {sreg_pos_1, sreg_pos_2, sreg_pos_0,  \
           	       opnd_info_undef, immed_pos_3}, 0}, 

    {BUILD_OP_4,  six_opnds,  {sreg_pos_1, sreg_pos_2, sreg_pos_0,  \
           	       opnd_info_undef, opnd_info_undef, immed_pos_3}, 0}, 

    {BUILD_OP_4,  five_opnds,  {sreg_pos_1, sreg_pos_2, sreg_pos_0,  \
           	       opnd_info_undef, sreg_pos_3}, 0}, 

    {BUILD_OP_4,  seven_opnds,  {sreg_pos_1, sreg_pos_2, sreg_pos_0, \
    	opnd_info_undef, opnd_info_undef, opnd_info_undef, immed_pos_3}, 0}, 

    {BUILD_OP_5,  seven_opnds,  {gpr_pos_0, expr_pos_1, expr_pos_2, \
    	opnd_info_undef, immed_pos_3, immed_pos_4}, 0},  //g0_e1_e2_u_i3_i4

    {BUILD_OP_6,  seven_opnds,  {gpr_pos_0, expr_pos_1, expr_pos_2, \
    	opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5}, 0},  //g0_e1_e2_u_i3_i4_i5

    {BUILD_OP_6,  seven_opnds,  {gpr_pos_0, expr_pos_1, immed_pos_2, \
    	opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5}, 0},  //g0_e1_i2_u_i3_i4_i5

    {BUILD_OP_6,  seven_opnds,  {gpr_pos_0, vreg_pos_1, immed_pos_2, \
    	opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5}, 0},  //g0_v1_i2_u_i3_i4_i5

    {BUILD_OP_7,  nine_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, \
    	opnd_info_undef, opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5, creg_pos_6}, 0},  //v0_v1_i2_u_u_i3_i4_i5_c6

    {BUILD_OP_6,  seven_opnds,  {gpr_pos_0, vreg_pos_1, vreg_pos_2, \
    	opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5}, 0},  //g0_v1_v2_u_i3_i4_i5

    {BUILD_OP_7,  nine_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2,  opnd_info_undef, \
    	opnd_info_undef, immed_pos_3, immed_pos_4, immed_pos_5, creg_pos_6}, 0},  //v0_v1_v2_u_u_i3_i4_i5_c6

    {BUILD_OP_6,  six_opnds,  {gpr_pos_0, expr_pos_1, expr_pos_2, \
    	immed_pos_4, immed_pos_5, expr_pos_3}, 0},  //g0_e1_e2_i4_i5_e3	

    /* Group 5 : vreg */
	{BUILD_OP_1,  one_opnds, {vreg_pos_0}, 0},
	
	{BUILD_OP_2,  two_opnds, {vreg_pos_0, immed_pos_1}, 0},
	
	{BUILD_OP_2,  two_opnds, {vreg_pos_1, immed_pos_0}, 0},	

	{BUILD_OP_2,  two_opnds, {vreg_pos_0, expr_pos_1}, 0}, //v0_e1	

	{BUILD_OP_2,  two_opnds, {vreg_pos_1, sreg_pos_0}, 0},		

    {BUILD_OP_2,  two_opnds,   {vreg_pos_1, vreg_pos_0}, 0}, //v1_v0

    {BUILD_OP_2,  two_opnds,   {vreg_pos_0, vreg_pos_1}, 0}, //v0_v1

    {BUILD_OP_2,  four_opnds,  {vreg_pos_0, opnd_info_undef, opnd_info_undef, sym_pos_1}, 0},  //v0_u_u_m1

    {BUILD_OP_2,  five_opnds,  {vreg_pos_0, opnd_info_undef, opnd_info_undef, opnd_info_undef, sym_pos_1}, 0},  //v0_u_u_u_m1

    /* v1_u_s0 */
    {BUILD_OP_2,  three_opnds,  {vreg_pos_1, opnd_info_undef, sreg_pos_0}, 0}, 

    {BUILD_OP_3,  three_opnds, {vreg_pos_0, expr_pos_1, immed_pos_2}, 0},  //v0_e1_i2

    {BUILD_OP_3,  three_opnds, {vreg_pos_0, expr_pos_1, expr_pos_2}, 0},  //v0_e1_e2
    
    {BUILD_OP_3,  three_opnds, {vreg_pos_1, sreg_pos_0, immed_pos_2}, 0}, //v1_s0_i2

    {BUILD_OP_3,  three_opnds, {vreg_pos_0, sreg_pos_1, immed_pos_2}, 0}, //v0_s1_i2
    
    {BUILD_OP_3,  three_opnds, {vreg_pos_1, sreg_pos_0, sreg_pos_2}, 0},    

    {BUILD_OP_3,  three_opnds, {vreg_pos_1, immed_pos_2, vreg_pos_0}, 0},
    
    {BUILD_OP_3,  three_opnds, {vreg_pos_0, vreg_pos_1, vreg_pos_2}, 0}, //v0_v1_v2
    
    {BUILD_OP_4,  four_opnds, {vreg_pos_0, vreg_pos_1, vreg_pos_2, vreg_pos_3}, 0}, //v0_v1_v2_v3
    
    {BUILD_OP_3,  three_opnds, {vreg_pos_1, vreg_pos_2, vreg_pos_0}, 0}, //v1_v2_v0

    {BUILD_OP_3,  three_opnds, {vreg_pos_0, vreg_pos_1, immed_pos_2}, 0},  //v0_v1_i2

    {BUILD_OP_3,  three_opnds, {vreg_pos_1, vreg_pos_0, immed_pos_2}, 0},  //v1_v0_i2

    {BUILD_OP_3,  four_opnds, {vreg_pos_1, sreg_pos_0, opnd_info_undef, immed_pos_2}, 0},    
    
    {BUILD_OP_3,  four_opnds,  {vreg_pos_0, vreg_pos_1, opnd_info_undef, immed_pos_2}, 0},   //v0_v1_u_i2

    {BUILD_OP_2,  three_opnds,  {vreg_pos_0, opnd_info_undef, vreg_pos_1}, 0},   //v0_u_v1
    
    {BUILD_OP_3,  four_opnds,  {vreg_pos_1, vreg_pos_0, opnd_info_undef, immed_pos_2}, 0},   //v1_v0_u_i2

    {BUILD_OP_3,  five_opnds, {vreg_pos_1, vreg_pos_0, opnd_info_undef, opnd_info_undef, immed_pos_2}, 0},    

    {BUILD_OP_4,  four_opnds, {gpr_pos_0, vreg_pos_1, vreg_pos_2, vreg_pos_3}, 0},    //g0_v1_v2_v3

    {BUILD_OP_5,  five_opnds, {gpr_pos_0, vreg_pos_1, vreg_pos_2, vreg_pos_3, immed_pos_4}, 0},    //g0_v1_v2_v3_i4

    {BUILD_OP_4,  five_opnds, {vreg_pos_0, vreg_pos_1, immed_pos_2, opnd_info_undef, \
    	          immed_pos_3}, 0},    //v0_v1_i2_u_i3	

    /* v1_v0_u_i3_u_i2 */
    {BUILD_OP_4,  six_opnds, {vreg_pos_1, vreg_pos_0, opnd_info_undef, \
    	          immed_pos_3, opnd_info_undef, immed_pos_2}, 0},    
    	          
    /* v1_s0_u_i3_u_i2 */
    {BUILD_OP_4,  six_opnds, {vreg_pos_1, sreg_pos_0, opnd_info_undef, \
    	          immed_pos_3, opnd_info_undef, immed_pos_2}, 0},    

    {BUILD_OP_4,  six_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0, opnd_info_undef, \
    	          opnd_info_undef, immed_pos_3}, 0},        

    {BUILD_OP_4,  four_opnds,  {vreg_pos_1, vreg_pos_0, immed_pos_3, immed_pos_2}, 0},    //v1_v0_i3_i2

    {BUILD_OP_4,  four_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, immed_pos_3}, 0},    //v0_v1_i2_i3

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, opnd_info_undef, 
              opnd_info_undef, immed_pos_3, immed_pos_4}, 0},   //v0_v1_i2_u_u_i3_i4

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, opnd_info_undef, 
              opnd_info_undef, opnd_info_undef, immed_pos_3, creg_pos_4}, 0},   //v0_v1_i2_u_u_u_i3_c4
    {BUILD_OP_4,  seven_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, opnd_info_undef, 
              opnd_info_undef, opnd_info_undef, creg_pos_3}, 0},   //v0_v1_i2_u_u_u_c3

    {BUILD_OP_4,  four_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2,  immed_pos_3}, 0},  //v0_v1_v2_i3

    {BUILD_OP_4,  four_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0,  immed_pos_3}, 0},  //v1_v2_v0_i3
    
    {BUILD_OP_4,  four_opnds,  {vreg_pos_0, vreg_pos_1, expr_pos_2,  expr_pos_3}, 0},  //v0_v1_e2_e3

    {BUILD_OP_4,  five_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0,  opnd_info_undef, \
    	          immed_pos_3}, 0},    

    {BUILD_OP_4,  five_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2,  \
    	          opnd_info_undef, immed_pos_3}, 0},    //v0_v1_v2_u_i3

    /* v_v_v_i3_i4 */
    {BUILD_OP_5,  five_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0,  
    	               immed_pos_3, immed_pos_4}, 0},
    /* v_v_v_i4_i3 */
    {BUILD_OP_5,  five_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0,  
    	               immed_pos_4, immed_pos_3}, 0},

    {BUILD_OP_5,  six_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2,  
    	               opnd_info_undef, immed_pos_3, immed_pos_4}, 0},  //v0_v1_v2_u_i3_i4

    {BUILD_OP_4,  four_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0,  sreg_pos_3}, 0},    
    
    {BUILD_OP_4,  four_opnds,  {vreg_pos_2, vreg_pos_3, vreg_pos_0,  sreg_pos_1}, 0},        
    
    /* v2_v0_v3_s1 */
    {BUILD_OP_4,  four_opnds,  {vreg_pos_2, vreg_pos_0, vreg_pos_3,  sreg_pos_1}, 0},        

    {BUILD_OP_4,  four_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_3,  vreg_pos_0}, 0},     

    {BUILD_OP_3,  five_opnds,  {vreg_pos_0, vreg_pos_1, \
    	opnd_info_undef, opnd_info_undef, immed_pos_2}, 0},     // v0_v1_u_u_i2

    {BUILD_OP_4,  six_opnds,  {vreg_pos_0, vreg_pos_1, opnd_info_undef, \
    	opnd_info_undef, immed_pos_2, immed_pos_3}, 0},     // v0_v1_u_u_i2_i3

    {BUILD_OP_3,  six_opnds,  {vreg_pos_0, vreg_pos_1, \
    	opnd_info_undef, opnd_info_undef, opnd_info_undef, immed_pos_2}, 0},     // v0_v1_u_u_u_i2

    {BUILD_OP_4,  seven_opnds,  {vreg_pos_1, vreg_pos_2, vreg_pos_0, \
    	opnd_info_undef, opnd_info_undef, opnd_info_undef, immed_pos_3}, 0},     //v1_v2_v0_u_u_u_i3

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
    	opnd_info_undef, opnd_info_undef, immed_pos_3, immed_pos_4}, 0},     //v0_v1_v2_u_u_i3_i4

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
    	immed_pos_3, opnd_info_undef, opnd_info_undef, opnd_info_undef,
    	immed_pos_4}, 0},    // v0_v1_v2_i3_u_u_u_i4

    {BUILD_OP_4,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
    	opnd_info_undef, opnd_info_undef, opnd_info_undef, 
    	opnd_info_undef, immed_pos_3}, 0},    // v0_v1_v2_u_u_u_u_i3

    {BUILD_OP_6,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
    	immed_pos_3, opnd_info_undef, opnd_info_undef, immed_pos_4, immed_pos_5}, 0},     //v0_v1_v2_i3_u_u_i4_i5

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
        opnd_info_undef, opnd_info_undef, opnd_info_undef, \
       immed_pos_3, immed_pos_4}, 0},     //v0_v1_v2_u_u_u_i3_i4

    {BUILD_OP_5,  eight_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, \
        opnd_info_undef, opnd_info_undef, opnd_info_undef, \
       immed_pos_3, creg_pos_4}, 0},     //v0_v1_v2_u_u_u_i3_c4

    {BUILD_OP_4,  four_opnds,  {vreg_pos_1, vreg_pos_3, vreg_pos_2,  vreg_pos_0}, 0},     
          
    {BUILD_OP_5,  five_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2,  vreg_pos_3, vreg_pos_4}, 0},    //v0_v1_v2_v3_v4

#ifdef TARG_SL2          
    {BUILD_OP_7,  seven_opnds,  {vreg_pos_0, c2acc_pos_1, vreg_pos_2, vreg_pos_3,  vreg_pos_4, c2acc_pos_5, creg_pos_6}, 0},    //v0_a1_v2_v3_v4_a5_c6
    {BUILD_OP_4,  four_opnds,  {c2acc_pos_0, vreg_pos_1, expr_pos_2, creg_pos_3}, 0},    //a0_v1_c2
    {BUILD_OP_6,  six_opnds,  {gpr_pos_0, c2mvsel_pos_1, expr_pos_2, expr_pos_3, immed_pos_4, c2mvsel_pos_5}, 0},    //g0_d1_e2_e3_i4_d5
    {BUILD_OP_7,  seven_opnds,  {gpr_pos_0, c2mvsel_pos_1, expr_pos_2, expr_pos_3, immed_pos_4, c2mvsel_pos_5, creg_pos_6}, 0},    //g0_d1_e2_e3_i4_d5_c6
    {BUILD_OP_4,  four_opnds,  {vreg_pos_0, c2vlcs_pos_1, vreg_pos_2, c2vlcs_pos_3}, 0},    //v0_f1_v2_f3
    {BUILD_OP_2,  two_opnds,  {gpr_pos_0, c2vlcs_pos_1}, 0},    //g0_f1
    {BUILD_OP_5,  six_opnds,  {vreg_pos_0, vreg_pos_1, immed_pos_2, opnd_info_undef, immed_pos_3, c2movpat_pos_4}, 0},    //v0_v1_i2_u_i3_f4
    {BUILD_OP_5,  five_opnds,  {vreg_pos_0, c2movpat_pos_1, expr_pos_2, creg_pos_3, creg_pos_4}, 0},    //v0_f1_e2_c3_c4
    {BUILD_OP_3,  three_opnds,  {vreg_pos_0, vreg_pos_1, creg_pos_2}, 0},    //v0_v1_c2
    {BUILD_OP_3,  three_opnds,  {vreg_pos_0, expr_pos_1, creg_pos_2}, 0},    //v0_e1_c2
    {BUILD_OP_4,  four_opnds,  {vreg_pos_0, vreg_pos_1, vreg_pos_2, creg_pos_3}, 0},    //v0_v1_v2_c3
    {BUILD_OP_4,  four_opnds,  {gpr_pos_0, vreg_pos_1, immed_pos_2, creg_pos_3}, 0},    //g0_v1_i2_c3
    {BUILD_OP_3,  three_opnds,  {vreg_pos_0, immed_pos_1, creg_pos_2}, 0},    //v0_i1_c2
#endif
          
	/* Group 6 : creg */
	{BUILD_OP_1,  one_opnds,   {creg_pos_0}, 0},

	{BUILD_OP_2,  two_opnds,   {creg_pos_1, immed_pos_0}, 0},	 //c1_i0

       {BUILD_OP_2,  two_opnds,   {creg_pos_0, sym_pos_1}, 0},	 //c0_m1

	{BUILD_OP_2,  two_opnds,   {creg_pos_0, expr_pos_1}, 0},	//c0_g1

    /* Group 7 : expr */
    {BUILD_OP_2,  two_opnds, {expr_pos_0,  sreg_pos_1}, 0},    

    {BUILD_OP_2,  two_opnds, {expr_pos_1,  sreg_pos_0}, 0},
   
    {BUILD_OP_2,  two_opnds, {expr_pos_0,  vreg_pos_1}, 0},        
   
    {BUILD_OP_2,  two_opnds, {expr_pos_1,  vreg_pos_0}, 0},

    {BUILD_OP_3,  three_opnds, {expr_pos_1,  vreg_pos_0, immed_pos_2}, 0},
    
    {BUILD_OP_3,  three_opnds, {expr_pos_1,  creg_pos_0, immed_pos_2}, 0},

    {BUILD_OP_2,  two_opnds, {expr_pos_0,  expr_pos_1}, 0},  //e0_e1

    {BUILD_OP_2, three_opnds,   {expr_pos_0,  opnd_info_undef, sym_pos_1}, 0}, // e0_u_m1
    /* Group 8 : symbol */
    {BUILD_OP_2,  two_opnds,    {sym_pos_1, creg_pos_0 }, 0},                

    {BUILD_OP_2,  two_opnds,    {sym_pos_1, vreg_pos_0 }, 0}, 
    
  	{BUILD_OP_2,  two_opnds,    {creg_pos_1, sym_pos_0}, 0},	
  	
    {BUILD_OP_2,  two_opnds,    {vreg_pos_0, sym_pos_1}, 0},

    /* Group 9: C2 sum4 Acc */
    {BUILD_OP_3, three_opnds, {c2acc_pos_0, vreg_pos_1, immed_pos_2}, 0}, //a0_v1_i1
    {BUILD_OP_2, two_opnds, {c2acc_pos_0, vreg_pos_1}, 0}, //a0_v1
#if defined(TARG_SL2)

    {BUILD_OP_4, four_opnds, {gpr_pos_0, c2acc_pos_1, vreg_pos_2, immed_pos_3}, 0},  // g0_a1_v2_i3
    
    {BUILD_OP_6, six_opnds, {gpr_pos_0, expr_pos_1,expr_pos_2, immed_pos_3, expr_pos_4, immed_pos_5 }, 0} //g0_e1_e2_i3_e4_i5
#endif
};

inline BUILD_OP_TYPE
SL_INTRN_OPNDS_INFO_Build_Type(SL_INTRN_OPNDS_INFO* info) {
    return info->build_type;
}

inline UINT32 
SL_INTRN_OPNDS_INFO_Num (SL_INTRN_OPNDS_INFO* info) {
    return info->opnds_num;
}

inline OPNDS_ATTR_IDX*
SL_INTRN_OPNDS_INFO_Array (SL_INTRN_OPNDS_INFO* info) {
    return &(info->opnds_idx[0]);
}

inline bool
SL_INTRN_OPNDS_INFO_Merge (SL_INTRN_OPNDS_INFO* info) {
    return info->need_merge_opnds;
}


/* this struct is used to descript intrinsic information for each intrisic function 
 * it is root of struct tree and use index to access corresponding entry.
 * 		opcode       : the first parameter in function Build_OP
 * 		build_op_type: which Build_OP used to build one op for the intrinsic 
 *      group_idx    : idx to sl_intrn_opnds_info array */
typedef struct sl_intrn_info{
   TOP opcode;
   //BUILD_OP_TYPE optype;
   OPNDS_INFO_IDX idx;
} SL_INTRN_INFO;

#define SL_INTRN_MAX 600

SL_INTRN_INFO sl_intrn_info_array[SL_INTRN_MAX+1] = {
   /* NONE */
   {TOP_UNDEFINED,  opnds_zero},
#ifdef TARG_SL2             
             {TOP_c2_mvgr_r2g_h_u,        g0_v1_e2},
             {TOP_c2_mvgr_r2g_h,        g0_v1_e2},
             {TOP_c2_mvgr_r2g_w,        g0_v1_e2},
             {TOP_c2_mvgr_r2g_h_u_i,        g0_v1_i2},
             {TOP_c2_mvgr_r2g_h_i,        g0_v1_i2},
             {TOP_c2_mvgr_r2g_w_i,        g0_v1_i2},
             {TOP_c2_mvgr_r2s,          s0_v1_i2},
             {TOP_c2_mvgr_g2r_ba_lh,        v0_e1},
             {TOP_c2_mvgr_g2r_ba_hh,        v0_e1},
             {TOP_c2_mvgr_g2r_ba_w,        v0_e1},
             {TOP_c2_mvgr_g2r_lh_i,        v0_e1_i2},
             {TOP_c2_mvgr_g2r_hh_i,        v0_e1_i2},
             {TOP_c2_mvgr_g2r_w_i,        v0_e1_i2},
             {TOP_c2_mvgr_g2r_lh,        v0_e1_e2},
             {TOP_c2_mvgr_g2r_hh,        v0_e1_e2},
             {TOP_c2_mvgr_g2r_w,        v0_e1_e2},
             {TOP_c2_mvgr_g2r_bh,        v0_e1},
             {TOP_c2_mvgr_g2r_bh_u,        v0_e1},
             {TOP_c2_mvgr_g2r_bv,        v0_e1},
             {TOP_c2_mvgr_g2r_bv_u,        v0_e1},
             {TOP_c2_mvgr_g2r_b4_i,        v0_e1_i2},
             {TOP_c2_mvgr_g2r_b4,   v0_e1_e2}, 
             {TOP_c2_mvgr_g2s,        s0_e1},
             {TOP_c2_mvgr_s2g,        g0_s1},
             {TOP_c2_mvgc_c2g,        g0_c1},
             {TOP_c2_mvgc_g2c,        c0_e1},
             {TOP_c2_ld_v_b_u,        v0_e1_c2},
             {TOP_c2_ld_v_b,        v0_e1_c2},
             {TOP_c2_ld_v_h,        v0_e1_c2},
             {TOP_c2_ld_v_w,        v0_e1_c2},
             {TOP_c2_ld_v_sw,        v0_f1_e2_c3_c4},
             {TOP_c2_ld_v_m_b_u,        v0_e1_c2},
             {TOP_c2_ld_v_m_b,        v0_e1_c2},
             {TOP_c2_ld_v_m_h,        v0_e1_c2},
             {TOP_c2_ld_v_m_w,        v0_e1_c2},
             {TOP_c2_ld_s_h_u_p,        g0_e1},
             {TOP_c2_ld_s_h_u,        g0_e1},
             {TOP_c2_ld_s_h_p,        g0_e1},
             {TOP_c2_ld_s_h,        g0_e1},
             {TOP_c2_ld_s_w_p,        g0_e1},
             {TOP_c2_ld_s_w,        g0_e1},
             {TOP_c2_ld_s2s_ga_p,        s0_e1},
             {TOP_c2_ld_s2s_ga,        s0_e1},
             {TOP_c2_ld_s2s_sa_p,        s0_s1},
             {TOP_c2_ld_s2s_sa,        s0_s1},
             {TOP_c2_ld_v2g_b_u,     g0_e1},
             {TOP_c2_ld_v2g_b,         g0_e1},
             {TOP_c2_ld_v2g_h_u,      g0_e1},
             {TOP_c2_ld_v2g_h,       g0_e1},
             {TOP_c2_ld_v2g_w,      g0_e1},
             {TOP_c2_st_v_b,        v0_e1_c2},
             {TOP_c2_st_v_h,        v0_e1_c2},
             {TOP_c2_st_v_w,        v0_e1_c2},
             {TOP_c2_st_v_m_b,        v0_e1_c2},
             {TOP_c2_st_v_m_h,        v0_e1_c2},
             {TOP_c2_st_v_m_w,        v0_e1_c2},
             {TOP_c2_st_s_h,        e0_e1},
             {TOP_c2_st_s_h_p,        e0_e1},
             {TOP_c2_st_s_w,        e0_e1},
             {TOP_c2_st_s_w_p,        e0_e1},
             {TOP_c2_st_g2v_b,     e0_e1},
             {TOP_c2_st_g2v_h,     e0_e1},
             {TOP_c2_st_g2v_w,     e0_e1},
             {TOP_c2_ldi_s_h_u,        g0_u_u_m1},
             {TOP_c2_ldi_s_h,        g0_u_u_m1},
             {TOP_c2_ldi_s_w,        g0_u_u_m1},
             {TOP_c2_ldi_c,        c0_m1},
             {TOP_c2_ldi_v_b_u,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_b,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_h,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_w,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_m_b_u,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_m_b,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_m_h,        v0_u_u_u_m1},
             {TOP_c2_ldi_v_m_w,        v0_u_u_u_m1},
             {TOP_c2_ldi_v2g_b_u,      g0_u_u_m1}, 
             {TOP_c2_ldi_v2g_b,         g0_u_u_m1},
             {TOP_c2_ldi_v2g_h_u,      g0_u_u_m1},
             {TOP_c2_ldi_v2g_h,         g0_u_u_m1},
             {TOP_c2_ldi_v2g_w,         g0_u_u_m1},
             {TOP_c2_sti_v_b,        v0_u_u_m1},
             {TOP_c2_sti_v_h,        v0_u_u_m1},
             {TOP_c2_sti_v_w,        v0_u_u_m1},
             {TOP_c2_sti_v_m_b,        v0_u_u_m1},
             {TOP_c2_sti_v_m_h,        v0_u_u_m1},
             {TOP_c2_sti_v_m_w,        v0_u_u_m1},
             {TOP_c2_sti_c,        c0_m1},
             {TOP_c2_sti_s_h,        e0_u_m1},
             {TOP_c2_sti_s_w,        e0_u_m1},
             {TOP_c2_sti_g2v_b,    e0_u_m1},
             {TOP_c2_sti_g2v_h,    e0_u_m1},
             {TOP_c2_sti_g2v_w,    e0_u_m1},
             {TOP_c2_vadds_h,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vadds_w,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vadds_p,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vadds_h_c,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vadds_w_c,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vadds_p_c,        v0_v1_v2_u_u_i3_i4},
             {TOP_c2_vsubs_h,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_h_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_h_abs,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_h_abs_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vabs_h,        v0_u_v1},
             {TOP_c2_vabs_h_sm,        v0_u_v1},
             {TOP_c2_vsubs_w,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_w_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_w_abs,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_w_abs_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vabs_w,        v0_u_v1},
             {TOP_c2_vabs_w_sm,        v0_u_v1},
             {TOP_c2_vsubs_p,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_p_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_p_abs,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vsubs_p_abs_sm,        v0_v1_v2_u_u_u_i3_i4},
             {TOP_c2_vabs_p,        v0_u_v1},
             {TOP_c2_vabs_p_sm,        v0_u_v1},
             {TOP_c2_vabs_acc,      v0},
             {TOP_c2_vmul_h,        v0_v1_v2},
             {TOP_c2_vmul_w,        v0_v1_v2},
             {TOP_c2_vneg_h,        v0_v1_v2},
             {TOP_c2_vneg_w,        v0_v1_v2},
             {TOP_c2_vneg_p,        v0_v1_v2},
             {TOP_c2_vshr_p,        v0_v1_u_u_u_i2},
             {TOP_c2_vshr_h,        v0_v1_u_u_u_i2},
             {TOP_c2_vshr_w,        v0_v1_u_u_u_i2},
             {TOP_c2_vshl_p,        v0_v1_u_u_u_i2},
             {TOP_c2_vshl_h,        v0_v1_u_u_u_i2},
             {TOP_c2_vshl_w,        v0_v1_u_u_u_i2},
             {TOP_c2_vclp,        v0_v1},
             {TOP_c2_vclp_p,        v0_v1},
             {TOP_c2_vclp_a,        v0_v1_v2},
             {TOP_c2_vclp_s,        v0_v1_v2},
             {TOP_c2_vclp_2,        v0_v1_v2},
             {TOP_c2_vclp_n,        v0_v1_v2},
             {TOP_c2_vclg_h_lt_and,        v0_v1_v2},
             {TOP_c2_vclg_h_lt_or,        v0_v1_v2},
             {TOP_c2_vclg_h_le_and,        v0_v1_v2},
             {TOP_c2_vclg_h_le_or,        v0_v1_v2},
             {TOP_c2_vclg_h_eq_and,        v0_v1_v2},
             {TOP_c2_vclg_h_eq_or,        v0_v1_v2},
             {TOP_c2_vclg_h_ge_and,        v0_v1_v2},
             {TOP_c2_vclg_h_ge_or,        v0_v1_v2},
             {TOP_c2_vclg_h_gt_and,        v0_v1_v2},
             {TOP_c2_vclg_h_gt_or,        v0_v1_v2},
             {TOP_c2_vclg_h_and,        v0_v1_v2},
             {TOP_c2_vclg_h_or,        v0_v1_v2},
             {TOP_c2_vclg_h_le,        v0_v1_v2},
             {TOP_c2_vclg_h_lt,        v0_v1_v2},
             {TOP_c2_vclg_h_ge,        v0_v1_v2},
             {TOP_c2_vclg_h_gt,        v0_v1_v2},
             {TOP_c2_vclg_w_lt_and,        v0_v1_v2},
             {TOP_c2_vclg_w_lt_or,        v0_v1_v2},
             {TOP_c2_vclg_w_le_and,        v0_v1_v2},
             {TOP_c2_vclg_w_le_or,        v0_v1_v2},
             {TOP_c2_vclg_w_eq_and,        v0_v1_v2},
             {TOP_c2_vclg_w_eq_or,        v0_v1_v2},
             {TOP_c2_vclg_w_ge_and,        v0_v1_v2},
             {TOP_c2_vclg_w_ge_or,        v0_v1_v2},
             {TOP_c2_vclg_w_gt_and,        v0_v1_v2},
             {TOP_c2_vclg_w_gt_or,        v0_v1_v2},
             {TOP_c2_vclg_w_and,        v0_v1_v2},
             {TOP_c2_vclg_w_or,        v0_v1_v2},
             {TOP_c2_vclg_w_le,        v0_v1_v2},
             {TOP_c2_vclg_w_lt,        v0_v1_v2},
             {TOP_c2_vclg_w_ge,        v0_v1_v2},
             {TOP_c2_vclg_w_gt,        v0_v1_v2},
             {TOP_c2_vclg_p_lt_and,        v0_v1_v2},
             {TOP_c2_vclg_p_lt_or,        v0_v1_v2},
             {TOP_c2_vclg_p_le_and,        v0_v1_v2},
             {TOP_c2_vclg_p_le_or,        v0_v1_v2},
             {TOP_c2_vclg_p_eq_and,        v0_v1_v2},
             {TOP_c2_vclg_p_eq_or,        v0_v1_v2},
             {TOP_c2_vclg_p_ge_and,        v0_v1_v2},
             {TOP_c2_vclg_p_ge_or,        v0_v1_v2},
             {TOP_c2_vclg_p_gt_and,        v0_v1_v2},
             {TOP_c2_vclg_p_gt_or,        v0_v1_v2},
             {TOP_c2_vclg_p_and,        v0_v1_v2},
             {TOP_c2_vclg_p_or,        v0_v1_v2},
             {TOP_c2_vclg_p_le,        v0_v1_v2},
             {TOP_c2_vclg_p_eq,        v0_v1_v2},
             {TOP_c2_vclg_p_ge,        v0_v1_v2},
             {TOP_c2_vclg_p_gt,        v0_v1_v2},
             {TOP_c2_vcmov_h_f,        v0_v1_v2},
             {TOP_c2_vcmov_h_t,        v0_v1_v2},
             {TOP_c2_vcmov_w_f,        v0_v1_v2},
             {TOP_c2_vcmov_w_t,        v0_v1_v2},
             {TOP_c2_lczero_z,        v0_v1},
             {TOP_c2_lczero_nz_fw,        v0_v1},
             {TOP_c2_lczero_nz_bw,        v0_v1},
             {TOP_c2_vrnd_h,        v0_v1_u_i2},
             {TOP_c2_vrnd_w,        v0_v1_u_i2},
             {TOP_c2_vspas,        v0_v1_i2_i3},
             {TOP_c2_vspel_mul_h,        v0_v1_u_u_u_i2},
             {TOP_c2_vspel_mul_w,        v0_v1_u_u_u_i2},
             {TOP_c2_vspel_adds,        v0_v1_u_u_i2_i3},
             {TOP_c2_vspel_mac_h,        v0_v1_i2_u_i3},
             {TOP_c2_vspel_mac_w,          v0_v1_i2_u_i3},
             {TOP_c2_mmul_s123,        v0_v1_i2},
             {TOP_c2_mmul_h,        v0_v1_v2_u_i3_i4},
             {TOP_c2_mmul_w,        v0_v1_v2_u_i3_i4},
             {TOP_c2_vmov,        v0_v1_u_u_i2},
             {TOP_c2_vmov_swin,        v0_v1_i2_u_i3_f4},
             {TOP_c2_vcopy,               v0_v1},
             {TOP_c2_vcmpr_h_eq,        v0_v1_v2},
             {TOP_c2_vcmpr_h_lt,        v0_v1_v2},
             {TOP_c2_vcmpr_h_le,        v0_v1_v2},
             {TOP_c2_vcmpr_h_gt,        v0_v1_v2},
             {TOP_c2_vcmpr_h_ge,        v0_v1_v2},
             {TOP_c2_vcmpr_w_eq,        v0_v1_v2},
             {TOP_c2_vcmpr_w_lt,        v0_v1_v2},
             {TOP_c2_vcmpr_w_le,        v0_v1_v2},
             {TOP_c2_vcmpr_w_gt,        v0_v1_v2},
             {TOP_c2_vcmpr_w_ge,        v0_v1_v2},
             {TOP_c2_sad,  g0_v1_v2_v3}, 
             {TOP_c2_satd,  g0_v1_v2_v3_i4}, 
             {TOP_c2_intra,        v0_v1_i2},
             {TOP_c2_intra_0_1_9_14_16,        v0_v1_i2},
             {TOP_c2_intra_2_3_8_10,        v0_v1_i2},
             {TOP_c2_intra_4,        v0_v1_i2},
             {TOP_c2_intra_5_11,        v0_v1_i2},
             {TOP_c2_intra_6,        v0_v1_i2},             
             {TOP_c2_intra_7,        v0_v1_i2},        
             {TOP_c2_intra_12_13,  v0_v1_i2}, 
             {TOP_c2_intra_15_17,  v0_v1_i2},              
             {TOP_c2_mvsel,        g0_d1_e2_e3_i4_d5},
             /* Add new opcode: op_mode=2 or 0, of mvsel */
             {TOP_c2_mvsel_zero_two,        g0_d1_e2_e3_i4_d5_c6},
             {TOP_c2_bcst_q,       g0_e1_e2},
             {TOP_c2_bcst_i,        g0_e1_e2},
             {TOP_c2_vlcs_dc,        v0_f1_v2_f3},
             {TOP_c2_vlcs_ac,        v0_f1_v2_f3},
             {TOP_c2_vlcs_wb,        g0_f1},
             {TOP_c2_add_shl_g_i,    g0_e1_i2_u_i3_i4_i5},
             {TOP_c2_add_shr_g_i,     g0_e1_i2_u_i3_i4_i5},
             {TOP_c2_add_shl_g,       g0_e1_e2_u_i3_i4_i5},
             {TOP_c2_add_shr_g,       g0_e1_e2_u_i3_i4_i5},
             {TOP_c2_add_shl_r_h_i, v0_v1_i2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shr_r_h_i,  v0_v1_i2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shl_r_w_i, v0_v1_i2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shr_r_w_i,  v0_v1_i2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shl_r_h,    v0_v1_v2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shr_r_h,     v0_v1_v2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shl_r_w,    v0_v1_v2_u_u_i3_i4_i5_c6},
             {TOP_c2_add_shr_r_w,     v0_v1_v2_u_u_i3_i4_i5_c6},
             {TOP_c2_sub_g_abs_i,        g0_e1_i2},
             {TOP_c2_subs_g_i,        g0_e1_i2_u_u_i3},
             {TOP_c2_sub_g_abs,        g0_e1_e2},
             {TOP_c2_subs_g,        g0_e1_e2_u_u_i3},
             {TOP_c2_subs_r_h_i,        v0_v1_i2_u_u_u_i3_c4},
             {TOP_c2_subs_r_w_i,        v0_v1_i2_u_u_u_i3_c4},
             {TOP_c2_sub_r_abs_h_i,        v0_v1_i2_u_u_u_c3},
             {TOP_c2_sub_r_abs_w_i,        v0_v1_i2_u_u_u_c3},
             {TOP_c2_subs_r_h,        v0_v1_v2_u_u_u_i3_c4},
             {TOP_c2_subs_r_w,        v0_v1_v2_u_u_u_i3_c4},
             {TOP_c2_sub_r_abs_h,        v0_v1_v2_c3},
             {TOP_c2_sub_r_abs_w,        v0_v1_v2_c3},
             {TOP_c2_muls,        g0_e1_e2_i3_e4_i5},
             {TOP_c2_muls_r_h,        v0_v1_v2_u_i3},
             {TOP_c2_muls_r_w,        v0_v1_v2_u_i3},
             {TOP_c2_mads,        g0_e1_e2_i4_i5_e3},
             {TOP_c2_smads,       g0_e1_e2_e3},
             {TOP_c2_min,        g0_e1_e2},
             {TOP_c2_max,        g0_e1_e2},
             {TOP_c2_cmov,        g0_e1_e2_e3},
             {TOP_c2_mov_g,        g0_e1},
             {TOP_c2_mov_r,        v0_v1_c2},
             {TOP_c2_mov_c_i,        a0_v1_i2},
             {TOP_c2_mov_c,        a0_v1_e2_c3},
             {TOP_c2_mov_s_i,        v0_v1_i2_i3},
             {TOP_c2_mov_s,        v0_v1_e2_e3},             
             {TOP_c2_clp,        g0_e1_e2_e3},
             {TOP_c2_clp_i,       g0_e1_i2_e3}, 
             {TOP_c2_chkrng,        g0_e1_i2_i3},
             {TOP_c2_scond_r_h_wb_eq,   g0_v1_v2_c3},
             {TOP_c2_scond_r_h_wb_lt,    g0_v1_v2_c3},
             {TOP_c2_scond_r_h_wb_le,   g0_v1_v2_c3},
             {TOP_c2_scond_r_h_wb_gt,   g0_v1_v2_c3},
             {TOP_c2_scond_r_h_wb_ge,  g0_v1_v2_c3},
             {TOP_c2_scond_r_wb_eq_i,  g0_v1_i2_c3},
             {TOP_c2_scond_r_wb_lt_i,    g0_v1_i2_c3},
             {TOP_c2_scond_r_wb_le_i,   g0_v1_i2_c3},
             {TOP_c2_scond_r_wb_gt_i,   g0_v1_i2_c3},
             {TOP_c2_scond_r_wb_ge_i,  g0_v1_i2_c3},
             {TOP_c2_scond_r_w_wb_eq,   g0_v1_v2_c3},
             {TOP_c2_scond_r_w_wb_lt,    g0_v1_v2_c3},
             {TOP_c2_scond_r_w_wb_le,   g0_v1_v2_c3},
             {TOP_c2_scond_r_w_wb_gt,   g0_v1_v2_c3},
             {TOP_c2_scond_r_w_wb_ge,  g0_v1_v2_c3},
             {TOP_c2_scond_r_w_wb_eq_i,  g0_v1_i2_c3},
             {TOP_c2_scond_r_w_wb_lt_i,    g0_v1_i2_c3},
             {TOP_c2_scond_r_w_wb_le_i,   g0_v1_i2_c3},
             {TOP_c2_scond_r_w_wb_gt_i,   g0_v1_i2_c3},
             {TOP_c2_scond_r_w_wb_ge_i,  g0_v1_i2_c3},
             {TOP_c2_scond_r_h_eq,        v0_v1_c2},
             {TOP_c2_scond_r_h_lt,        v0_v1_c2},
             {TOP_c2_scond_r_h_le,        v0_v1_c2},
             {TOP_c2_scond_r_h_gt,        v0_v1_c2},
             {TOP_c2_scond_r_h_ge,        v0_v1_c2},
             {TOP_c2_scond_r_h_eq_i,       v0_i1_c2},
             {TOP_c2_scond_r_h_lt_i,        v0_i1_c2},
             {TOP_c2_scond_r_h_le_i,        v0_i1_c2},
             {TOP_c2_scond_r_h_gt_i,        v0_i1_c2},
             {TOP_c2_scond_r_h_ge_i,        v0_i1_c2},
             {TOP_c2_scond_r_w_eq,       v0_v1_c2},
             {TOP_c2_scond_r_w_lt,        v0_v1_c2},
             {TOP_c2_scond_r_w_le,        v0_v1_c2},
             {TOP_c2_scond_r_w_gt,        v0_v1_c2},
             {TOP_c2_scond_r_w_ge,        v0_v1_c2},
             {TOP_c2_scond_r_w_eq_i,        v0_i1_c2},
             {TOP_c2_scond_r_w_lt_i,        v0_i1_c2},
             {TOP_c2_scond_r_w_le_i,        v0_i1_c2},
             {TOP_c2_scond_r_w_gt_i,        v0_i1_c2},
             {TOP_c2_scond_r_w_ge_i,        v0_i1_c2},
             {TOP_c2_scond_eq,        g0_e1_e2},
             {TOP_c2_scond_lt,        g0_e1_e2},
             {TOP_c2_scond_le,        g0_e1_e2},
             {TOP_c2_scond_gt,        g0_e1_e2},
             {TOP_c2_scond_ge,        g0_e1_e2},
             {TOP_c2_scond_eq_i,        g0_e1_i2},
             {TOP_c2_scond_lt_i,        g0_e1_i2},
             {TOP_c2_scond_le_i,        g0_e1_i2},
             {TOP_c2_scond_gt_i,        g0_e1_i2},
             {TOP_c2_scond_ge_i,        g0_e1_i2},
             {TOP_c2_bop_ls,        g0_e1_e2},
             {TOP_c2_bop_rs,        g0_e1_e2},
             {TOP_c2_bop_and,        g0_e1_e2},
             {TOP_c2_bop_or,        g0_e1_e2},
             {TOP_c2_bop_xor,        g0_e1_e2},
             {TOP_c2_bop_ls_i,        g0_e1_i2},
             {TOP_c2_bop_rs_i,        g0_e1_i2},
             {TOP_c2_bop_and_i,        g0_e1_i2},
             {TOP_c2_bop_or_i,        g0_e1_i2},
             {TOP_c2_bop_xor_i,        g0_e1_i2},
             {TOP_c2_bdep_l,          e0_e1_e2},
             {TOP_c2_bdep_m,        e0_e1_e2},
             {TOP_c2_bxtr_u_l,        g0_e1_e2_e3},
             {TOP_c2_bxtr_s_l,        g0_e1_e2_e3},
             {TOP_c2_bxtr_u_m,        g0_e1_e2_e3},
             {TOP_c2_bxtr_s_m,        g0_e1_e2_e3},
             {TOP_c2_sum4_c,        a0_v1_i2},
             {TOP_c2_sum4_g,        g0_a1_v2_i3},
             {TOP_c2_sum4_sw,        g0_a1_v2_i3},
             {TOP_c2_sum4_r,        v0_a1_v2_v3_v4_a5_c6},
             {TOP_c2_med,           g0_e1_e2_e3},
             {TOP_c2_gsums,         g0_e1_e2_i3_i4},
             {TOP_c2_wrap,          g0_e1_e2},
             {TOP_c2_clzob_zd,      g0_e1_e2},
             {TOP_c2_clzob_za,      g0_e1_e2},
             {TOP_c2_clzob_od,      g0_e1_e2},
             {TOP_c2_clzob_oa,      g0_e1_e2},
             {TOP_c2_clzob_zd_i,    g0_e1_i2},
             {TOP_c2_clzob_za_i,    g0_e1_i2},
             {TOP_c2_clzob_od_i,    g0_e1_i2},
             {TOP_c2_clzob_oa_i,    g0_e1_i2},
             {TOP_c2_thctrl_lock,   opnds_zero}, 
             {TOP_c2_thctrl_unlock, opnds_zero}, 
             {TOP_c2_thctrl_deact,  opnds_zero}, 
             {TOP_c2_thctrl_act,     u_i0}, 
             {TOP_c2_thctrl_mode4,    u_i0}, 
             {TOP_c2_thctrl_mode5,    u_i0}, 
             {TOP_c2_thctrl_mode6,    u_i0}, 
             {TOP_c2_joint,        opnds_zero},  
 	      {TOP_c2_thread_major,  c},
 	      {TOP_c2_thread_minor, c}, 
             {TOP_c2_sum3_saddr,  g0_e1_e2_e3},
             {TOP_peripheral_rw_begin,  opnds_zero}, 
             {TOP_peripheral_rw_end,    opnds_zero}
#endif //TARG_SL2             

};



inline SL_INTRN_INFO* 
SL_Intrn_Info( TOP id ) {
     return &sl_intrn_info_array[ id - TOP_c2_mvgr_r2g_h_u+1/* INTRN_SL_INTRN_BGN*/ ];
}

inline TOP
SL_INTRN_INFO_Opcode ( SL_INTRN_INFO* info ) {
	return info->opcode ;
}

inline INTRN_INFO_OPNDS_IDX
SL_INTRN_INFO_Idx ( SL_INTRN_INFO* info ) {
	return info->idx;
}

inline SL_INTRN_OPNDS_INFO *
SL_Opnds_Info( SL_INTRN_INFO* info ) {
    INTRN_INFO_OPNDS_IDX opnds_grp_idx = SL_INTRN_INFO_Idx(info);
    INT opnds_info_idx = SL_INTRN_INFO_Idx(info);
    return &intrn_opnds_info_array[opnds_info_idx];
}
#endif  /* TARG_SL */

#endif /*EXP_INTRN_INFO_H_*/
