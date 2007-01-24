#include "targ_isa_bundle.h"


const ISA_BUNDLE_INFO ISA_BUNDLE_info[] = {
 {
    "mii",           ".mii",     3,
    {  4 /*  M_Unit */,  2 /*  I_Unit */,  2 /*  I_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_I_Unit, ISA_EXEC_I_Unit, },
     0, 0x0, 0x004002002, FALSE, FALSE
  },
 {
    "mi_i",          ".mii",     3,
    {  4 /*  M_Unit */,  2 /*  I_Unit */,  2 /*  I_Unit */, },
    { FALSE,  TRUE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_I_Unit, ISA_EXEC_I_Unit, },
     1, 0x2, 0x004002002, FALSE, FALSE
  },
 {
    "mlx",           ".mlx",     3,
    {  4 /*  M_Unit */, 32 /*  L_Unit */, 32 /*  L_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_L_Unit, ISA_EXEC_L_Unit, },
     2, 0x0, 0x004020020, FALSE, FALSE
  },
 {
    "reserved_3",    ".0x3",     3,
    {  1 /*  R_Unit */,  1 /*  R_Unit */,  1 /*  R_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, },
     3, 0x0, 0x001001001, FALSE, FALSE
  },
 {
    "mmi",           ".mmi",     3,
    {  4 /*  M_Unit */,  4 /*  M_Unit */,  2 /*  I_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_M_Unit, ISA_EXEC_I_Unit, },
     4, 0x0, 0x004004002, FALSE, FALSE
  },
 {
    "m_mi",          ".mmi",     3,
    {  4 /*  M_Unit */,  4 /*  M_Unit */,  2 /*  I_Unit */, },
    {  TRUE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_M_Unit, ISA_EXEC_I_Unit, },
     5, 0x4, 0x004004002, FALSE, FALSE
  },
 {
    "mfi",           ".mfi",     3,
    {  4 /*  M_Unit */, 16 /*  F_Unit */,  2 /*  I_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_F_Unit, ISA_EXEC_I_Unit, },
     6, 0x0, 0x004010002, FALSE, FALSE
  },
 {
    "mmf",           ".mmf",     3,
    {  4 /*  M_Unit */,  4 /*  M_Unit */, 16 /*  F_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_M_Unit, ISA_EXEC_F_Unit, },
     7, 0x0, 0x004004010, TRUE, TRUE
  },
 {
    "mib",           ".mib",     3,
    {  4 /*  M_Unit */,  2 /*  I_Unit */, 128 /* B2_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_I_Unit, ISA_EXEC_B_Unit, },
     8, 0x0, 0x004002080, FALSE, FALSE
  },
 {
    "mbb",           ".mbb",     3,
    {  4 /*  M_Unit */,  8 /*  B_Unit */, 128 /* B2_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_B_Unit, ISA_EXEC_B_Unit, },
     9, 0x0, 0x004008080, FALSE, TRUE
  },
 {
    "reserved_a",    ".0xa",     3,
    {  1 /*  R_Unit */,  1 /*  R_Unit */,  1 /*  R_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, },
    10, 0x0, 0x001001001, FALSE, FALSE
  },
 {
    "bbb",           ".bbb",     3,
    {  8 /*  B_Unit */,  8 /*  B_Unit */, 128 /* B2_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_B_Unit, ISA_EXEC_B_Unit, ISA_EXEC_B_Unit, },
    11, 0x0, 0x008008080, FALSE, TRUE
  },
 {
    "mmb",           ".mmb",     3,
    {  4 /*  M_Unit */,  4 /*  M_Unit */, 128 /* B2_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_M_Unit, ISA_EXEC_B_Unit, },
    12, 0x0, 0x004004080, FALSE, FALSE
  },
 {
    "reserved_d",    ".0xd",     3,
    {  1 /*  R_Unit */,  1 /*  R_Unit */,  1 /*  R_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, },
    13, 0x0, 0x001001001, FALSE, FALSE
  },
 {
    "mfb",           ".mfb",     3,
    {  4 /*  M_Unit */, 16 /*  F_Unit */, 128 /* B2_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_M_Unit, ISA_EXEC_F_Unit, ISA_EXEC_B_Unit, },
    14, 0x0, 0x004010080, FALSE, FALSE
  },
 {
    "reserved_f",    ".0xf",     3,
    {  1 /*  R_Unit */,  1 /*  R_Unit */,  1 /*  R_Unit */, },
    { FALSE, FALSE, FALSE, },
    { ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, ISA_EXEC_R_Unit, },
    15, 0x0, 0x001001001, FALSE, FALSE
  },
  {
    "template_MAX", "", -1,
    { -1 /* ??????? */, -1 /* ??????? */, -1 /* ??????? */,},
    { FALSE, FALSE, FALSE,},
    -1, 0x0, 0x000000000, FALSE, FALSE
  }
};

const ISA_EXEC_UNIT_PROPERTY ISA_EXEC_unit_prop[759] = {
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    4,  /* (null):  M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
   66,  /* (null):  I_Unit I2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
   96,  /* (null):  L_Unit I2_Unit */
    0,  /* (null):  */
    0,  /* (null):  */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
  128,  /* (null):  B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
   96,  /* (null):  L_Unit I2_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
   66,  /* (null):  I_Unit I2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
   96,  /* (null):  L_Unit I2_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
    4,  /* (null):  M_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    4,  /* (null):  M_Unit */
  136,  /* (null):  B_Unit B2_Unit */
  136,  /* (null):  B_Unit B2_Unit */
    0,  /* (null):  */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
    2,  /* (null):  I_Unit */
   16,  /* (null):  F_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
   16,  /* (null):  F_Unit */
  222,  /* (null):  I_Unit M_Unit B_Unit F_Unit I2_Unit B2_Unit */
    6,  /* (null):  I_Unit M_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    2,  /* (null):  I_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
    6,  /* (null):  I_Unit M_Unit */
  222,  /* (null):  I_Unit M_Unit B_Unit F_Unit I2_Unit B2_Unit */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
    0,  /* (null):  */
};

const ISA_BUNDLE_PACK_INFO ISA_BUNDLE_pack_info[] = {
  { ISA_BUNDLE_PACK_COMP_stop     ,  0,  0,  0, 0x00000000000001LL },  /* STOP */
  { ISA_BUNDLE_PACK_COMP_template ,  0,  0,  1, 0x0000000000001eLL },  /* TEMPLATE */
  { ISA_BUNDLE_PACK_COMP_slot+0   ,  0,  0,  5, 0x003fffffffffe0LL },  /* SLOT0 */
  { ISA_BUNDLE_PACK_COMP_slot+1   ,  0,  0, 46, 0xffffc00000000000LL },  /* SLOT1 */
  { ISA_BUNDLE_PACK_COMP_slot+1   ,  1, 18,  0, 0x000000007fffffLL },  /* SLOT1 */
  { ISA_BUNDLE_PACK_COMP_slot+2   ,  1,  0, 23, 0xffffffffff800000LL },  /* SLOT2 */
  { ISA_BUNDLE_PACK_COMP_end      , -1, -1, -1,                 -1 },  /* END */
};

const mUINT8 ISA_BUNDLE_pack_info_index[6] = {
   6, /* ISA_BUNDLE_PACK_COMP_end */
   0, /* ISA_BUNDLE_PACK_COMP_stop */
   1, /* ISA_BUNDLE_PACK_COMP_template */
   2, /* ISA_BUNDLE_PACK_COMP_slot+0 */
   3, /* ISA_BUNDLE_PACK_COMP_slot+1 */
   5, /* ISA_BUNDLE_PACK_COMP_slot+2 */
};
