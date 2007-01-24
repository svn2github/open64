#include "targ_isa_operands.h"
#include "targ_isa_registers.h"
#include "targ_isa_properties.h"
#include "targ_isa_lits.h"


const ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[] = {
  { ISA_REGISTER_CLASS_application, ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED, 64, 0x01 }, /* ar */
  { ISA_REGISTER_CLASS_application, ISA_REGISTER_SUBCLASS_ar_i      ,
      0, EC_UNDEFINED, 64, 0x01 }, /* ar_i */
  { ISA_REGISTER_CLASS_application, ISA_REGISTER_SUBCLASS_ar_m      ,
      0, EC_UNDEFINED, 64, 0x01 }, /* ar_m */
  { ISA_REGISTER_CLASS_application, ISA_REGISTER_SUBCLASS_ec        ,
      0, EC_UNDEFINED, 64, 0x01 }, /* ec */
  { ISA_REGISTER_CLASS_application, ISA_REGISTER_SUBCLASS_lc        ,
      0, EC_UNDEFINED, 64, 0x01 }, /* lc */
  { ISA_REGISTER_CLASS_control   , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED, 64, 0x01 }, /* cr */
  { ISA_REGISTER_CLASS_branch    , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED, 64, 0x01 }, /* br */
  { ISA_REGISTER_CLASS_predicate , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED,  1, 0x01 }, /* pr */
  { ISA_REGISTER_CLASS_float     , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED, 64, 0x03 }, /* fp64 */
  { ISA_REGISTER_CLASS_integer   , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_UNDEFINED, 64, 0x03 }, /* int64 */
  { ISA_REGISTER_CLASS_integer   , ISA_REGISTER_SUBCLASS_addl      ,
      0, EC_UNDEFINED, 64, 0x03 }, /* int64_2 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_ph,  8, 0x00 }, /* ph */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_dh,  8, 0x00 }, /* dh */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_bwh,  8, 0x00 }, /* bwh */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_aclr,  8, 0x00 }, /* aclr */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_ldhint,  8, 0x00 }, /* ldhint */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_sthint,  8, 0x00 }, /* sthint */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_lfhint,  8, 0x00 }, /* lfhint */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_indwh,  8, 0x00 }, /* indwh */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_ih,  8, 0x00 }, /* ih */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_ipwh,  8, 0x00 }, /* ipwh */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_ldtype,  8, 0x00 }, /* ldtype */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_sttype,  8, 0x00 }, /* sttype */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_fldtype,  8, 0x00 }, /* fldtype */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_sem,  8, 0x00 }, /* sem */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_mwh,  8, 0x00 }, /* mwh */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_mbtype4,  4, 0x00 }, /* mbtype4 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      0, EC_sf,  2, 0x00 }, /* sf */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      1, EC_UNDEFINED,  1, 0x02 }, /* lit1 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      2, EC_UNDEFINED,  8, 0x02 }, /* lit8 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      3, EC_UNDEFINED,  9, 0x02 }, /* lit9 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      5, EC_UNDEFINED, 14, 0x02 }, /* lit14 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      6, EC_UNDEFINED, 16, 0x02 }, /* lit16 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      7, EC_UNDEFINED, 17, 0x02 }, /* lit17 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      8, EC_UNDEFINED, 22, 0x02 }, /* lit22 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     10, EC_UNDEFINED, 44, 0x02 }, /* lit44 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     11, EC_UNDEFINED, 64, 0x02 }, /* lit64 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     12, EC_UNDEFINED,  2, 0x00 }, /* ulit2 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     13, EC_UNDEFINED,  4, 0x00 }, /* ulit4 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     14, EC_UNDEFINED,  5, 0x00 }, /* ulit5 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     15, EC_UNDEFINED,  6, 0x00 }, /* ulit6 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     16, EC_UNDEFINED,  7, 0x00 }, /* ulit7 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     17, EC_UNDEFINED,  8, 0x00 }, /* ulit8 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     18, EC_UNDEFINED,  9, 0x00 }, /* ulit9 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     19, EC_UNDEFINED, 21, 0x00 }, /* ulit21 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     20, EC_UNDEFINED, 24, 0x00 }, /* ulit24 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     21, EC_UNDEFINED, 62, 0x00 }, /* ulit62 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      4, EC_UNDEFINED, 13, 0x0a }, /* pcrel13 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
      9, EC_UNDEFINED, 25, 0x0a }, /* pcrel25 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     11, EC_UNDEFINED, 64, 0x0a }, /* pcrel64 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     22, EC_UNDEFINED,  5, 0x00 }, /* pmpyshr2 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     23, EC_UNDEFINED,  6, 0x02 }, /* fetchadd */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     24, EC_UNDEFINED,  3, 0x00 }, /* shfadd */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     25, EC_UNDEFINED,  2, 0x00 }, /* pshfadd */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     26, EC_UNDEFINED,  5, 0x00 }, /* len4 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     27, EC_UNDEFINED,  7, 0x00 }, /* len6 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     28, EC_UNDEFINED,  9, 0x02 }, /* scmp */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     29, EC_UNDEFINED, 64, 0x00 }, /* ucmp1 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     30, EC_UNDEFINED, 64, 0x00 }, /* ucmp2 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     31, EC_UNDEFINED, 64, 0x00 }, /* ucmp3 */
  { ISA_REGISTER_CLASS_UNDEFINED , ISA_REGISTER_SUBCLASS_UNDEFINED ,
     32, EC_UNDEFINED, 64, 0x00 }, /* ucmp4 */
};

const ISA_OPERAND_INFO ISA_OPERAND_info[] = {
  { 0, {  -1,  -1,  -1,  -1,  -1,  -1 },          /* O_0 */
       {   0,   0,   0,   0,   0,   0 },          /* O_0 */
    0, {  -1,  -1,  -1 } },                       /* O_0 */
  { 1, {   7,  -1,  -1,  -1,  -1,  -1 },          /* O_1 */
       {   1,   0,   0,   0,   0,   0 },          /* O_1 */
    0, {  -1,  -1,  -1 } },                       /* O_1 */
  { 2, {   7,   8,  -1,  -1,  -1,  -1 },          /* O_2 */
       {   1,   0,   0,   0,   0,   0 },          /* O_2 */
    0, {  -1,  -1,  -1 } },                       /* O_2 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_3 */
       {   1,   0,   0,   0,   0,   0 },          /* O_3 */
    0, {  -1,  -1,  -1 } },                       /* O_3 */
  { 1, {   7,  -1,  -1,  -1,  -1,  -1 },          /* O_4 */
       {   1,   0,   0,   0,   0,   0 },          /* O_4 */
    1, {   9,  -1,  -1 } },                       /* O_4 */
  { 2, {   7,  27,  -1,  -1,  -1,  -1 },          /* O_5 */
       {   1,   0,   0,   0,   0,   0 },          /* O_5 */
    0, {  -1,  -1,  -1 } },                       /* O_5 */
  { 2, {   7,  35,  -1,  -1,  -1,  -1 },          /* O_6 */
       {   1,   0,   0,   0,   0,   0 },          /* O_6 */
    0, {  -1,  -1,  -1 } },                       /* O_6 */
  { 3, {  11,  12,   6,  -1,  -1,  -1 },          /* O_7 */
       {   0,   0,   5,   0,   0,   0 },          /* O_7 */
    0, {  -1,  -1,  -1 } },                       /* O_7 */
  { 2, {   7,  44,  -1,  -1,  -1,  -1 },          /* O_8 */
       {   1,   0,   0,   0,   0,   0 },          /* O_8 */
    0, {  -1,  -1,  -1 } },                       /* O_8 */
  { 2, {   7,  45,  -1,  -1,  -1,  -1 },          /* O_9 */
       {   1,   0,   0,   0,   0,   0 },          /* O_9 */
    0, {  -1,  -1,  -1 } },                       /* O_9 */
  { 2, {   7,  46,  -1,  -1,  -1,  -1 },          /* O_10 */
       {   1,   0,   0,   0,   0,   0 },          /* O_10 */
    0, {  -1,  -1,  -1 } },                       /* O_10 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_11 */
       {   1,   0,   0,   0,   0,   0 },          /* O_11 */
    1, {   6,  -1,  -1 } },                       /* O_11 */
  { 2, {   7,   8,  -1,  -1,  -1,  -1 },          /* O_12 */
       {   1,   0,   0,   0,   0,   0 },          /* O_12 */
    1, {   8,  -1,  -1 } },                       /* O_12 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_13 */
       {   1,   0,   0,   0,   0,   0 },          /* O_13 */
    1, {   8,  -1,  -1 } },                       /* O_13 */
  { 3, {   7,   9,   9,  -1,  -1,  -1 },          /* O_14 */
       {   1,   0,   0,   0,   0,   0 },          /* O_14 */
    0, {  -1,  -1,  -1 } },                       /* O_14 */
  { 2, {   7,   6,  -1,  -1,  -1,  -1 },          /* O_15 */
       {   1,   0,   0,   0,   0,   0 },          /* O_15 */
    1, {   9,  -1,  -1 } },                       /* O_15 */
  { 2, {   7,   8,  -1,  -1,  -1,  -1 },          /* O_16 */
       {   1,   0,   0,   0,   0,   0 },          /* O_16 */
    1, {   9,  -1,  -1 } },                       /* O_16 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_17 */
       {   1,   0,   0,   0,   0,   0 },          /* O_17 */
    1, {   9,  -1,  -1 } },                       /* O_17 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_18 */
       {   1,   0,   0,   0,   0,   0 },          /* O_18 */
    1, {   0,  -1,  -1 } },                       /* O_18 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_19 */
       {   1,   0,   0,   0,   0,   0 },          /* O_19 */
    1, {   5,  -1,  -1 } },                       /* O_19 */
  { 2, {   7,   0,  -1,  -1,  -1,  -1 },          /* O_20 */
       {   1,   0,   0,   0,   0,   0 },          /* O_20 */
    1, {   9,  -1,  -1 } },                       /* O_20 */
  { 2, {   7,   5,  -1,  -1,  -1,  -1 },          /* O_21 */
       {   1,   0,   0,   0,   0,   0 },          /* O_21 */
    1, {   9,  -1,  -1 } },                       /* O_21 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_22 */
       {   1,   0,   0,   0,   0,   0 },          /* O_22 */
    1, {   9,  -1,  -1 } },                       /* O_22 */
  { 2, {   7,  29,  -1,  -1,  -1,  -1 },          /* O_23 */
       {   1,   0,   0,   0,   0,   0 },          /* O_23 */
    1, {   0,  -1,  -1 } },                       /* O_23 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_24 */
       {   1,   0,   0,   0,   0,   0 },          /* O_24 */
    1, {   1,  -1,  -1 } },                       /* O_24 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_25 */
       {   1,   0,   0,   0,   0,   0 },          /* O_25 */
    1, {   2,  -1,  -1 } },                       /* O_25 */
  { 3, {   7,   9,  33,  -1,  -1,  -1 },          /* O_26 */
       {   1,   0,   0,   0,   0,   0 },          /* O_26 */
    0, {  -1,  -1,  -1 } },                       /* O_26 */
  { 3, {   7,   9,  37,  -1,  -1,  -1 },          /* O_27 */
       {   1,   0,   0,   0,   0,   0 },          /* O_27 */
    0, {  -1,  -1,  -1 } },                       /* O_27 */
  { 2, {   7,   1,  -1,  -1,  -1,  -1 },          /* O_28 */
       {   1,   0,   0,   0,   0,   0 },          /* O_28 */
    1, {   9,  -1,  -1 } },                       /* O_28 */
  { 2, {   7,   2,  -1,  -1,  -1,  -1 },          /* O_29 */
       {   1,   0,   0,   0,   0,   0 },          /* O_29 */
    1, {   9,  -1,  -1 } },                       /* O_29 */
  { 2, {   7,  34,  -1,  -1,  -1,  -1 },          /* O_30 */
       {   1,   0,   0,   0,   0,   0 },          /* O_30 */
    1, {   9,  -1,  -1 } },                       /* O_30 */
  { 2, {   7,   8,  -1,  -1,  -1,  -1 },          /* O_31 */
       {   1,   7,   0,   0,   0,   0 },          /* O_31 */
    1, {   8,  -1,  -1 } },                       /* O_31 */
  { 2, {   7,  36,  -1,  -1,  -1,  -1 },          /* O_32 */
       {   1,   0,   0,   0,   0,   0 },          /* O_32 */
    1, {   9,  -1,  -1 } },                       /* O_32 */
  { 4, {  13,  11,  12,   6,  -1,  -1 },          /* O_33 */
       {   0,   0,   0,   5,   0,   0 },          /* O_33 */
    0, {  -1,  -1,  -1 } },                       /* O_33 */
  { 3, {  11,  12,  48,  -1,  -1,  -1 },          /* O_34 */
       {   0,   0,   5,   0,   0,   0 },          /* O_34 */
    0, {  -1,  -1,  -1 } },                       /* O_34 */
  { 3, {  11,  12,  49,  -1,  -1,  -1 },          /* O_35 */
       {   0,   0,   5,   0,   0,   0 },          /* O_35 */
    0, {  -1,  -1,  -1 } },                       /* O_35 */
  { 2, {   7,  29,  -1,  -1,  -1,  -1 },          /* O_36 */
       {   1,   0,   0,   0,   0,   0 },          /* O_36 */
    1, {   1,  -1,  -1 } },                       /* O_36 */
  { 2, {   7,  29,  -1,  -1,  -1,  -1 },          /* O_37 */
       {   1,   0,   0,   0,   0,   0 },          /* O_37 */
    1, {   2,  -1,  -1 } },                       /* O_37 */
  { 3, {   7,   8,   8,  -1,  -1,  -1 },          /* O_38 */
       {   1,   0,   0,   0,   0,   0 },          /* O_38 */
    1, {   8,  -1,  -1 } },                       /* O_38 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_39 */
       {   1,   0,   0,   0,   0,   0 },          /* O_39 */
    2, {   7,   7,  -1 } },                       /* O_39 */
  { 3, {   7,   9,   9,  -1,  -1,  -1 },          /* O_40 */
       {   1,   0,   0,   0,   0,   0 },          /* O_40 */
    1, {   9,  -1,  -1 } },                       /* O_40 */
  { 3, {   7,   9,   9,  -1,  -1,  -1 },          /* O_41 */
       {   1,   0,   0,   0,   0,   0 },          /* O_41 */
    0, {  -1,  -1,  -1 } },                       /* O_41 */
  { 3, {   7,  27,   8,  -1,  -1,  -1 },          /* O_42 */
       {   1,   0,   0,   0,   0,   0 },          /* O_42 */
    1, {   8,  -1,  -1 } },                       /* O_42 */
  { 4, {  18,  19,   6,  47,  -1,  -1 },          /* O_43 */
       {   0,   0,   0,   0,   0,   0 },          /* O_43 */
    0, {  -1,  -1,  -1 } },                       /* O_43 */
  { 3, {   7,   9,  37,  -1,  -1,  -1 },          /* O_44 */
       {   1,   0,   0,   0,   0,   0 },          /* O_44 */
    1, {   9,  -1,  -1 } },                       /* O_44 */
  { 3, {   7,   9,  42,  -1,  -1,  -1 },          /* O_45 */
       {   1,   0,   0,   0,   0,   0 },          /* O_45 */
    1, {   9,  -1,  -1 } },                       /* O_45 */
  { 3, {  41,  41,  38,  -1,  -1,  -1 },          /* O_46 */
       {   0,   0,   0,   0,   0,   0 },          /* O_46 */
    1, {   9,  -1,  -1 } },                       /* O_46 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_47 */
       {   1,   7,   0,   0,   0,   0 },          /* O_47 */
    2, {   7,   7,  -1 } },                       /* O_47 */
  { 2, {   7,   9,  -1,  -1,  -1,  -1 },          /* O_48 */
       {   1,   8,   0,   0,   0,   0 },          /* O_48 */
    2, {   7,   7,  -1 } },                       /* O_48 */
  { 3, {   7,   8,  48,  -1,  -1,  -1 },          /* O_49 */
       {   1,   0,   5,   0,   0,   0 },          /* O_49 */
    0, {  -1,  -1,  -1 } },                       /* O_49 */
  { 4, {   7,   8,   8,   8,  -1,  -1 },          /* O_50 */
       {   1,   0,   0,   0,   0,   0 },          /* O_50 */
    1, {   8,  -1,  -1 } },                       /* O_50 */
  { 3, {   7,  17,   9,  -1,  -1,  -1 },          /* O_51 */
       {   1,   0,   3,   0,   0,   0 },          /* O_51 */
    0, {  -1,  -1,  -1 } },                       /* O_51 */
  { 3, {   7,   9,  48,  -1,  -1,  -1 },          /* O_52 */
       {   1,   0,   5,   0,   0,   0 },          /* O_52 */
    0, {  -1,  -1,  -1 } },                       /* O_52 */
  { 3, {   7,   9,  26,  -1,  -1,  -1 },          /* O_53 */
       {   1,   0,   0,   0,   0,   0 },          /* O_53 */
    1, {   9,  -1,  -1 } },                       /* O_53 */
  { 5, {  13,  11,  12,  48,   4,  -1 },          /* O_54 */
       {   0,   0,   0,   5,   0,   0 },          /* O_54 */
    1, {   4,  -1,  -1 } },                       /* O_54 */
  { 6, {  13,  11,  12,  48,   3,   4 },          /* O_55 */
       {   0,   0,   0,   5,   0,   0 },          /* O_55 */
    2, {   3,   4,  -1 } },                       /* O_55 */
  { 3, {   7,  27,   8,  -1,  -1,  -1 },          /* O_56 */
       {   1,   0,   0,   0,   0,   0 },          /* O_56 */
    2, {   8,   7,  -1 } },                       /* O_56 */
  { 3, {   7,  27,  48,  -1,  -1,  -1 },          /* O_57 */
       {   1,   0,   5,   0,   0,   0 },          /* O_57 */
    0, {  -1,  -1,  -1 } },                       /* O_57 */
  { 4, {   7,  27,  41,  41,  -1,  -1 },          /* O_58 */
       {   1,   0,   0,   0,   0,   0 },          /* O_58 */
    0, {  -1,  -1,  -1 } },                       /* O_58 */
  { 4, {  20,  19,  48,  47,  -1,  -1 },          /* O_59 */
       {   0,   0,   0,   0,   0,   0 },          /* O_59 */
    0, {  -1,  -1,  -1 } },                       /* O_59 */
  { 3, {   7,   8,   8,  -1,  -1,  -1 },          /* O_60 */
       {   1,   7,   8,   0,   0,   0 },          /* O_60 */
    1, {   8,  -1,  -1 } },                       /* O_60 */
  { 3, {   7,   8,  43,  -1,  -1,  -1 },          /* O_61 */
       {   1,   0,   0,   0,   0,   0 },          /* O_61 */
    2, {   7,   7,  -1 } },                       /* O_61 */
  { 3, {   7,   9,  40,  -1,  -1,  -1 },          /* O_62 */
       {   1,   0,   0,   0,   0,   0 },          /* O_62 */
    2, {   7,   7,  -1 } },                       /* O_62 */
  { 3, {   7,   9,   9,  -1,  -1,  -1 },          /* O_63 */
       {   1,   7,   8,   0,   0,   0 },          /* O_63 */
    1, {   9,  -1,  -1 } },                       /* O_63 */
  { 4, {   7,   9,   9,  40,  -1,  -1 },          /* O_64 */
       {   1,   0,   0,   0,   0,   0 },          /* O_64 */
    1, {   9,  -1,  -1 } },                       /* O_64 */
  { 4, {   7,   9,  52,   9,  -1,  -1 },          /* O_65 */
       {   1,   0,   0,   0,   0,   0 },          /* O_65 */
    1, {   9,  -1,  -1 } },                       /* O_65 */
  { 5, {   7,  13,  11,  12,   6,  -1 },          /* O_66 */
       {   1,   0,   0,   0,   5,   0 },          /* O_66 */
    0, {  -1,  -1,  -1 } },                       /* O_66 */
  { 3, {   7,  15,   9,  -1,  -1,  -1 },          /* O_67 */
       {   1,   0,   3,   0,   0,   0 },          /* O_67 */
    1, {   8,  -1,  -1 } },                       /* O_67 */
  { 3, {   7,  29,   9,  -1,  -1,  -1 },          /* O_68 */
       {   1,   7,   8,   0,   0,   0 },          /* O_68 */
    1, {   9,  -1,  -1 } },                       /* O_68 */
  { 3, {   7,  15,   9,  -1,  -1,  -1 },          /* O_69 */
       {   1,   0,   3,   0,   0,   0 },          /* O_69 */
    1, {   9,  -1,  -1 } },                       /* O_69 */
  { 4, {   7,   9,  53,   9,  -1,  -1 },          /* O_70 */
       {   1,   0,   0,   0,   0,   0 },          /* O_70 */
    1, {   9,  -1,  -1 } },                       /* O_70 */
  { 4, {   7,   9,  40,  55,  -1,  -1 },          /* O_71 */
       {   1,   0,   0,   0,   0,   0 },          /* O_71 */
    1, {   9,  -1,  -1 } },                       /* O_71 */
  { 4, {   7,  27,   8,   8,  -1,  -1 },          /* O_72 */
       {   1,   0,   0,   0,   0,   0 },          /* O_72 */
    2, {   8,   7,  -1 } },                       /* O_72 */
  { 3, {   7,  31,   9,  -1,  -1,  -1 },          /* O_73 */
       {   1,   7,   8,   0,   0,   0 },          /* O_73 */
    1, {   9,  -1,  -1 } },                       /* O_73 */
  { 3, {   7,   9,  39,  -1,  -1,  -1 },          /* O_74 */
       {   1,   7,   8,   0,   0,   0 },          /* O_74 */
    1, {   9,  -1,  -1 } },                       /* O_74 */
  { 3, {   7,   9,  40,  -1,  -1,  -1 },          /* O_75 */
       {   1,   7,   8,   0,   0,   0 },          /* O_75 */
    1, {   9,  -1,  -1 } },                       /* O_75 */
  { 4, {   7,   9,   9,  50,  -1,  -1 },          /* O_76 */
       {   1,   0,   0,   0,   0,   0 },          /* O_76 */
    1, {   9,  -1,  -1 } },                       /* O_76 */
  { 4, {  41,  41,  41,  41,  -1,  -1 },          /* O_77 */
       {   0,   0,   0,   0,   0,   0 },          /* O_77 */
    1, {   9,  -1,  -1 } },                       /* O_77 */
  { 4, {   7,  14,   8,  48,  -1,  -1 },          /* O_78 */
       {   1,   0,   0,   5,   0,   0 },          /* O_78 */
    0, {  -1,  -1,  -1 } },                       /* O_78 */
  { 4, {   7,  14,   9,  48,  -1,  -1 },          /* O_79 */
       {   1,   0,   0,   5,   0,   0 },          /* O_79 */
    0, {  -1,  -1,  -1 } },                       /* O_79 */
  { 3, {   7,  31,   9,  -1,  -1,  -1 },          /* O_80 */
       {   1,   7,   8,   0,   0,   0 },          /* O_80 */
    1, {   9,  -1,  -1 } },                       /* O_80 */
  { 3, {   7,  34,  10,  -1,  -1,  -1 },          /* O_81 */
       {   1,   7,   8,   0,   0,   0 },          /* O_81 */
    1, {   9,  -1,  -1 } },                       /* O_81 */
  { 4, {   7,  29,  40,  55,  -1,  -1 },          /* O_82 */
       {   1,   0,   0,   0,   0,   0 },          /* O_82 */
    1, {   9,  -1,  -1 } },                       /* O_82 */
  { 4, {   7,  27,   8,   8,  -1,  -1 },          /* O_83 */
       {   1,   0,   7,   8,   0,   0 },          /* O_83 */
    1, {   8,  -1,  -1 } },                       /* O_83 */
  { 3, {   7,   9,   9,  -1,  -1,  -1 },          /* O_84 */
       {   1,   7,   8,   0,   0,   0 },          /* O_84 */
    2, {   7,   7,  -1 } },                       /* O_84 */
  { 4, {   7,  27,   8,   8,  -1,  -1 },          /* O_85 */
       {   1,   0,   7,   8,   0,   0 },          /* O_85 */
    1, {   8,  -1,  -1 } },                       /* O_85 */
  { 4, {   7,  17,   9,   9,  -1,  -1 },          /* O_86 */
       {   1,   0,   3,   4,   0,   0 },          /* O_86 */
    1, {   9,  -1,  -1 } },                       /* O_86 */
  { 6, {   7,  13,  11,  12,   6,   3 },          /* O_87 */
       {   1,   0,   0,   0,   5,   0 },          /* O_87 */
    1, {   6,  -1,  -1 } },                       /* O_87 */
  { 3, {   7,  29,   9,  -1,  -1,  -1 },          /* O_88 */
       {   1,   7,   8,   0,   0,   0 },          /* O_88 */
    2, {   7,   7,  -1 } },                       /* O_88 */
  { 3, {   7,  56,   9,  -1,  -1,  -1 },          /* O_89 */
       {   1,   7,   8,   0,   0,   0 },          /* O_89 */
    2, {   7,   7,  -1 } },                       /* O_89 */
  { 4, {   7,  15,   9,   9,  -1,  -1 },          /* O_90 */
       {   1,   0,   3,   0,   0,   0 },          /* O_90 */
    1, {   9,  -1,  -1 } },                       /* O_90 */
  { 5, {   7,   9,   9,  40,  54,  -1 },          /* O_91 */
       {   1,   0,   0,   0,   0,   0 },          /* O_91 */
    1, {   9,  -1,  -1 } },                       /* O_91 */
  { 5, {   7,  25,  19,   9,  47,  -1 },          /* O_92 */
       {   1,   0,   0,   0,   0,   0 },          /* O_92 */
    1, {   6,  -1,  -1 } },                       /* O_92 */
  { 5, {   7,  13,  11,  12,  48,  -1 },          /* O_93 */
       {   1,   0,   0,   0,   5,   0 },          /* O_93 */
    0, {  -1,  -1,  -1 } },                       /* O_93 */
  { 6, {   7,  13,  11,  12,  48,   3 },          /* O_94 */
       {   1,   0,   0,   0,   5,   0 },          /* O_94 */
    1, {   3,  -1,  -1 } },                       /* O_94 */
  { 5, {   7,  13,  11,  12,  49,  -1 },          /* O_95 */
       {   1,   0,   0,   0,   5,   0 },          /* O_95 */
    0, {  -1,  -1,  -1 } },                       /* O_95 */
  { 4, {   7,  17,   9,  30,  -1,  -1 },          /* O_96 */
       {   1,   0,   3,   4,   0,   0 },          /* O_96 */
    1, {   9,  -1,  -1 } },                       /* O_96 */
  { 3, {   7,  57,   9,  -1,  -1,  -1 },          /* O_97 */
       {   1,   7,   8,   0,   0,   0 },          /* O_97 */
    2, {   7,   7,  -1 } },                       /* O_97 */
  { 3, {   7,  58,   9,  -1,  -1,  -1 },          /* O_98 */
       {   1,   7,   8,   0,   0,   0 },          /* O_98 */
    2, {   7,   7,  -1 } },                       /* O_98 */
  { 3, {   7,  59,   9,  -1,  -1,  -1 },          /* O_99 */
       {   1,   7,   8,   0,   0,   0 },          /* O_99 */
    2, {   7,   7,  -1 } },                       /* O_99 */
  { 3, {   7,  60,   9,  -1,  -1,  -1 },          /* O_100 */
       {   1,   7,   8,   0,   0,   0 },          /* O_100 */
    2, {   7,   7,  -1 } },                       /* O_100 */
  { 4, {   7,   8,   8,   8,  -1,  -1 },          /* O_101 */
       {   1,   7,   8,   9,   0,   0 },          /* O_101 */
    1, {   8,  -1,  -1 } },                       /* O_101 */
  { 5, {   7,  28,   9,  40,  55,  -1 },          /* O_102 */
       {   1,   0,   0,   0,   0,   0 },          /* O_102 */
    1, {   9,  -1,  -1 } },                       /* O_102 */
  { 4, {   7,  16,   9,   8,  -1,  -1 },          /* O_103 */
       {   1,   0,   3,   6,   0,   0 },          /* O_103 */
    0, {  -1,  -1,  -1 } },                       /* O_103 */
  { 4, {   7,  16,   9,   9,  -1,  -1 },          /* O_104 */
       {   1,   0,   3,   6,   0,   0 },          /* O_104 */
    0, {  -1,  -1,  -1 } },                       /* O_104 */
  { 4, {   7,  15,   9,   9,  -1,  -1 },          /* O_105 */
       {   1,   0,   3,   4,   0,   0 },          /* O_105 */
    2, {   8,   9,  -1 } },                       /* O_105 */
  { 4, {   7,  27,   8,   8,  -1,  -1 },          /* O_106 */
       {   1,   0,   7,   8,   0,   0 },          /* O_106 */
    2, {   7,   7,  -1 } },                       /* O_106 */
  { 4, {   7,  15,   9,   9,  -1,  -1 },          /* O_107 */
       {   1,   0,   3,   4,   0,   0 },          /* O_107 */
    2, {   9,   9,  -1 } },                       /* O_107 */
  { 4, {   7,  21,  15,   9,  -1,  -1 },          /* O_108 */
       {   1,   0,   0,   3,   0,   0 },          /* O_108 */
    1, {   9,  -1,  -1 } },                       /* O_108 */
  { 4, {   7,  23,  15,   9,  -1,  -1 },          /* O_109 */
       {   1,   0,   0,   3,   0,   0 },          /* O_109 */
    1, {   8,  -1,  -1 } },                       /* O_109 */
  { 6, {   7,  13,  11,  12,  48,   3 },          /* O_110 */
       {   1,   0,   0,   0,   5,   0 },          /* O_110 */
    1, {   6,  -1,  -1 } },                       /* O_110 */
  { 5, {   7,  13,  11,  12,  49,  -1 },          /* O_111 */
       {   1,   0,   0,   0,   5,   0 },          /* O_111 */
    1, {   6,  -1,  -1 } },                       /* O_111 */
  { 4, {   7,  15,   9,  30,  -1,  -1 },          /* O_112 */
       {   1,   0,   3,   4,   0,   0 },          /* O_112 */
    2, {   8,   9,  -1 } },                       /* O_112 */
  { 4, {   7,  15,   9,  30,  -1,  -1 },          /* O_113 */
       {   1,   0,   3,   4,   0,   0 },          /* O_113 */
    2, {   9,   9,  -1 } },                       /* O_113 */
  { 5, {   7,  24,  15,   9,   9,  -1 },          /* O_114 */
       {   1,   0,   0,   3,   0,   0 },          /* O_114 */
    1, {   9,  -1,  -1 } },                       /* O_114 */
  { 5, {   7,  27,   8,   8,   8,  -1 },          /* O_115 */
       {   1,   0,   7,   8,   9,   0 },          /* O_115 */
    1, {   8,  -1,  -1 } },                       /* O_115 */
  { 4, {   7,  23,  15,   9,  -1,  -1 },          /* O_116 */
       {   1,   0,   0,   3,   0,   0 },          /* O_116 */
    2, {   8,   8,  -1 } },                       /* O_116 */
  { 4, {   7,  23,  15,   9,  -1,  -1 },          /* O_117 */
       {   1,   0,   0,   3,   0,   0 },          /* O_117 */
    3, {   8,   8,   9 } },                       /* O_117 */
  { 5, {   7,  22,  16,   9,   9,  -1 },          /* O_118 */
       {   1,   0,   0,   3,   6,   0 },          /* O_118 */
    0, {  -1,  -1,  -1 } },                       /* O_118 */
  { 5, {   7,  24,  15,   9,  51,  -1 },          /* O_119 */
       {   1,   0,   0,   3,   0,   0 },          /* O_119 */
    1, {   9,  -1,  -1 } },                       /* O_119 */
  { 5, {   7,  21,  15,   9,   9,  -1 },          /* O_120 */
       {   1,   0,   0,   3,   4,   0 },          /* O_120 */
    2, {   9,   9,  -1 } },                       /* O_120 */
  { 5, {   7,  16,   9,   8,  30,  -1 },          /* O_121 */
       {   1,   0,   3,   6,   4,   0 },          /* O_121 */
    1, {   9,  -1,  -1 } },                       /* O_121 */
  { 5, {   7,  16,   9,   9,  30,  -1 },          /* O_122 */
       {   1,   0,   3,   6,   4,   0 },          /* O_122 */
    1, {   9,  -1,  -1 } },                       /* O_122 */
  { 5, {   7,  23,  15,   9,   9,  -1 },          /* O_123 */
       {   1,   0,   0,   3,   4,   0 },          /* O_123 */
    2, {   8,   9,  -1 } },                       /* O_123 */
  { 5, {   7,  21,  15,   9,  30,  -1 },          /* O_124 */
       {   1,   0,   0,   3,   4,   0 },          /* O_124 */
    2, {   9,   9,  -1 } },                       /* O_124 */
  { 5, {   7,  23,  15,   9,  30,  -1 },          /* O_125 */
       {   1,   0,   0,   3,   4,   0 },          /* O_125 */
    2, {   8,   9,  -1 } },                       /* O_125 */
  { 6, {   7,  22,  16,   9,   9,  30 },          /* O_126 */
       {   1,   0,   0,   3,   6,   4 },          /* O_126 */
    1, {   9,  -1,  -1 } },                       /* O_126 */
  { 3, {   7,   9,  36,  -1,  -1,  -1 },          /* O_127 */
       {   1,   7,   8,   0,   0,   0 },          /* O_127 */
    1, {   9,  -1,  -1 } },                       /* O_127 */
  { 2, {   9,  32,  -1,  -1,  -1,  -1 },          /* O_128 */
       {   0,   0,   0,   0,   0,   0 },          /* O_128 */
    0, {  -1,  -1,  -1 } },                       /* O_128 */
  { 1, {  36,  -1,  -1,  -1,  -1,  -1 },          /* O_129 */
       {   0,   0,   0,   0,   0,   0 },          /* O_129 */
    1, {   9,  -1,  -1 } },                       /* O_129 */
  { 0, {  -1,  -1,  -1,  -1,  -1,  -1 },          /* O_130 */
       {   0,   0,   0,   0,   0,   0 },          /* O_130 */
    1, {   9,  -1,  -1 } },                       /* O_130 */
  { 0, {  -1,  -1,  -1,  -1,  -1,  -1 },          /* O_131 */
       {   0,   0,   0,   0,   0,   0 },          /* O_131 */
    1, {   8,  -1,  -1 } },                       /* O_131 */
  { 0, {  -1,  -1,  -1,  -1,  -1,  -1 },          /* O_132 */
       {   0,   0,   0,   0,   0,   0 },          /* O_132 */
    0, {  -1,  -1,  -1 } },                       /* O_132 */
  { 2, {   7,   6,  -1,  -1,  -1,  -1 },          /* O_133 */
       {   0,   0,   0,   0,   0,   0 },          /* O_133 */
    1, {   6,  -1,  -1 } },                       /* O_133 */
  { 0, {  -1,  -1,  -1,  -1,  -1,  -1 },          /* O_134 */
       {   0,   0,   0,   0,   0,   0 },          /* O_134 */
    0, {  -1,  -1,  -1 } },                       /* O_134 */
  { 1, {  49,  -1,  -1,  -1,  -1,  -1 },          /* O_135 */
       {   0,   0,   0,   0,   0,   0 },          /* O_135 */
    0, {  -1,  -1,  -1 } },                       /* O_135 */
};

const mUINT8 ISA_OPERAND_info_index[] = {
   63,  /* add: O_63 */
   40,  /* add_1: O_40 */
   80,  /* adds: O_80 */
   81,  /* addl: O_81 */
   63,  /* addp4: O_63 */
   73,  /* addp4_i: O_73 */
   46,  /* alloc_3: O_46 */
   63,  /* and: O_63 */
   68,  /* and_i: O_68 */
   63,  /* andcm: O_63 */
   68,  /* andcm_i: O_68 */
   93,  /* br.cond: O_93 */
   66,  /* br_r.cond: O_66 */
  110,  /* br.call: O_110 */
   87,  /* br_r.call: O_87 */
   66,  /* br.ret: O_66 */
   33,  /* br.ia: O_33 */
   54,  /* br.cloop: O_54 */
   55,  /* br.ctop: O_55 */
   55,  /* br.cexit: O_55 */
   94,  /* br.wtop: O_94 */
   94,  /* br.wexit: O_94 */
    8,  /* break.i: O_8 */
    8,  /* break.b: O_8 */
    8,  /* break.m: O_8 */
    8,  /* break.f: O_8 */
   10,  /* break.x: O_10 */
   95,  /* brl.cond: O_95 */
  111,  /* brl.call: O_111 */
   59,  /* brp: O_59 */
   43,  /* brp_r: O_43 */
   43,  /* brp.ret: O_43 */
    0,  /* bsw.0: O_0 */
    0,  /* bsw.1: O_0 */
   52,  /* chk.s.i: O_52 */
   52,  /* chk.s.m: O_52 */
   49,  /* chk_f.s: O_49 */
   79,  /* chk.a: O_79 */
   78,  /* chk_f.a: O_78 */
    0,  /* clrrrb: O_0 */
    0,  /* clrrrb.pr: O_0 */
   84,  /* cmp.eq: O_84 */
   84,  /* cmp.eq.unc: O_84 */
   84,  /* cmp.eq.and: O_84 */
   84,  /* cmp.eq.or: O_84 */
   84,  /* cmp.eq.or.andcm: O_84 */
   84,  /* cmp.ne.and: O_84 */
   84,  /* cmp.ne.or: O_84 */
   84,  /* cmp.ne.or.andcm: O_84 */
   84,  /* cmp.lt: O_84 */
   84,  /* cmp.lt.unc: O_84 */
   84,  /* cmp.ltu: O_84 */
   84,  /* cmp.ltu.unc: O_84 */
   48,  /* cmp_z1.lt.and: O_48 */
   48,  /* cmp_z1.lt.or: O_48 */
   48,  /* cmp_z1.lt.or.andcm: O_48 */
   48,  /* cmp_z1.le.and: O_48 */
   48,  /* cmp_z1.le.or: O_48 */
   48,  /* cmp_z1.le.or.andcm: O_48 */
   48,  /* cmp_z1.gt.and: O_48 */
   48,  /* cmp_z1.gt.or: O_48 */
   48,  /* cmp_z1.gt.or.andcm: O_48 */
   48,  /* cmp_z1.ge.and: O_48 */
   48,  /* cmp_z1.ge.or: O_48 */
   48,  /* cmp_z1.ge.or.andcm: O_48 */
   88,  /* cmp_i.eq: O_88 */
   88,  /* cmp_i.eq.unc: O_88 */
   88,  /* cmp_i.eq.and: O_88 */
   88,  /* cmp_i.eq.or: O_88 */
   88,  /* cmp_i.eq.or.andcm: O_88 */
   88,  /* cmp_i.ne.and: O_88 */
   88,  /* cmp_i.ne.or: O_88 */
   88,  /* cmp_i.ne.or.andcm: O_88 */
   88,  /* cmp_i.lt: O_88 */
   88,  /* cmp_i.lt.unc: O_88 */
   97,  /* cmp_i.ltu: O_97 */
   97,  /* cmp_i.ltu.unc: O_97 */
   84,  /* cmp4.eq: O_84 */
   84,  /* cmp4.eq.unc: O_84 */
   84,  /* cmp4.eq.and: O_84 */
   84,  /* cmp4.eq.or: O_84 */
   84,  /* cmp4.eq.or.andcm: O_84 */
   84,  /* cmp4.ne.and: O_84 */
   84,  /* cmp4.ne.or: O_84 */
   84,  /* cmp4.ne.or.andcm: O_84 */
   84,  /* cmp4.lt: O_84 */
   84,  /* cmp4.lt.unc: O_84 */
   84,  /* cmp4.ltu: O_84 */
   84,  /* cmp4.ltu.unc: O_84 */
   48,  /* cmp4_z1.lt.and: O_48 */
   48,  /* cmp4_z1.lt.or: O_48 */
   48,  /* cmp4_z1.lt.or.andcm: O_48 */
   48,  /* cmp4_z1.le.and: O_48 */
   48,  /* cmp4_z1.le.or: O_48 */
   48,  /* cmp4_z1.le.or.andcm: O_48 */
   48,  /* cmp4_z1.gt.and: O_48 */
   48,  /* cmp4_z1.gt.or: O_48 */
   48,  /* cmp4_z1.gt.or.andcm: O_48 */
   48,  /* cmp4_z1.ge.and: O_48 */
   48,  /* cmp4_z1.ge.or: O_48 */
   48,  /* cmp4_z1.ge.or.andcm: O_48 */
   88,  /* cmp4_i.eq: O_88 */
   88,  /* cmp4_i.eq.unc: O_88 */
   88,  /* cmp4_i.eq.and: O_88 */
   88,  /* cmp4_i.eq.or: O_88 */
   88,  /* cmp4_i.eq.or.andcm: O_88 */
   88,  /* cmp4_i.ne.and: O_88 */
   88,  /* cmp4_i.ne.or: O_88 */
   88,  /* cmp4_i.ne.or.andcm: O_88 */
   88,  /* cmp4_i.lt: O_88 */
   88,  /* cmp4_i.lt.unc: O_88 */
   99,  /* cmp4_i.ltu: O_99 */
   99,  /* cmp4_i.ltu.unc: O_99 */
  114,  /* cmpxchg1: O_114 */
  114,  /* cmpxchg2: O_114 */
  114,  /* cmpxchg4: O_114 */
  114,  /* cmpxchg8: O_114 */
    0,  /* cover: O_0 */
   17,  /* czx1.l: O_17 */
   17,  /* czx1.r: O_17 */
   17,  /* czx2.l: O_17 */
   17,  /* czx2.r: O_17 */
   91,  /* dep: O_91 */
   71,  /* dep.z: O_71 */
  102,  /* dep_i: O_102 */
   82,  /* dep_i.z: O_82 */
    0,  /* epc: O_0 */
   71,  /* extr: O_71 */
   71,  /* extr.u: O_71 */
   83,  /* famax: O_83 */
   83,  /* famin: O_83 */
   60,  /* fand: O_60 */
   60,  /* fandcm: O_60 */
    3,  /* fc: O_3 */
   57,  /* fchkf: O_57 */
   61,  /* fclass.m: O_61 */
   61,  /* fclass.m.unc: O_61 */
    5,  /* fclrf: O_5 */
  106,  /* fcmp.eq: O_106 */
  106,  /* fcmp.eq.unc: O_106 */
  106,  /* fcmp.lt: O_106 */
  106,  /* fcmp.lt.unc: O_106 */
  106,  /* fcmp.le: O_106 */
  106,  /* fcmp.le.unc: O_106 */
  106,  /* fcmp.unord: O_106 */
  106,  /* fcmp.unord.unc: O_106 */
   42,  /* fcvt.fx: O_42 */
   42,  /* fcvt.fx.trunc: O_42 */
   42,  /* fcvt.fxu: O_42 */
   42,  /* fcvt.fxu.trunc: O_42 */
   12,  /* fcvt.xf: O_12 */
  119,  /* fetchadd4: O_119 */
  119,  /* fetchadd8: O_119 */
    0,  /* flushrs: O_0 */
  115,  /* fma: O_115 */
  115,  /* fma.s: O_115 */
  115,  /* fma.d: O_115 */
   85,  /* fmax: O_85 */
   38,  /* fmerge.ns: O_38 */
   38,  /* fmerge.s: O_38 */
   38,  /* fmerge.se: O_38 */
   85,  /* fmin: O_85 */
   38,  /* fmix.l: O_38 */
   38,  /* fmix.r: O_38 */
   38,  /* fmix.lr: O_38 */
  115,  /* fms: O_115 */
  115,  /* fms.s: O_115 */
  115,  /* fms.d: O_115 */
  115,  /* fnma: O_115 */
  115,  /* fnma.s: O_115 */
  115,  /* fnma.d: O_115 */
   60,  /* for: O_60 */
   38,  /* fpack: O_38 */
   85,  /* fpamax: O_85 */
   85,  /* fpamin: O_85 */
   85,  /* fpcmp.eq: O_85 */
   85,  /* fpcmp.lt: O_85 */
   85,  /* fpcmp.le: O_85 */
   85,  /* fpcmp.unord: O_85 */
   85,  /* fpcmp.neq: O_85 */
   85,  /* fpcmp.nlt: O_85 */
   85,  /* fpcmp.nle: O_85 */
   85,  /* fpcmp.ord: O_85 */
   42,  /* fpcvt.fx: O_42 */
   42,  /* fpcvt.fx.trunc: O_42 */
   42,  /* fpcvt.fxu: O_42 */
   42,  /* fpcvt.fxu.trunc: O_42 */
  115,  /* fpma: O_115 */
   85,  /* fpmax: O_85 */
   38,  /* fpmerge.ns: O_38 */
   38,  /* fpmerge.s: O_38 */
   38,  /* fpmerge.se: O_38 */
   85,  /* fpmin: O_85 */
  115,  /* fpms: O_115 */
  115,  /* fpnma: O_115 */
   72,  /* fprcpa: O_72 */
   56,  /* fprsqrta: O_56 */
   72,  /* frcpa: O_72 */
   56,  /* frsqrta: O_56 */
   50,  /* fselect: O_50 */
   58,  /* fsetc: O_58 */
   38,  /* fswap: O_38 */
   38,  /* fswap.nl: O_38 */
   38,  /* fswap.nr: O_38 */
   38,  /* fsxt.l: O_38 */
   38,  /* fsxt.r: O_38 */
    1,  /* fwb: O_1 */
   60,  /* fxor: O_60 */
   16,  /* getf.s: O_16 */
   16,  /* getf.d: O_16 */
   16,  /* getf.exp: O_16 */
   16,  /* getf.sig: O_16 */
    1,  /* invala: O_1 */
    3,  /* invala.e: O_3 */
    2,  /* invala_f.e: O_2 */
    3,  /* itc.i: O_3 */
    3,  /* itc.d: O_3 */
   41,  /* itr.i: O_41 */
   41,  /* itr.d: O_41 */
  108,  /* ld1: O_108 */
  120,  /* ld1_r: O_120 */
  124,  /* ld1_i: O_124 */
  108,  /* ld2: O_108 */
  120,  /* ld2_r: O_120 */
  124,  /* ld2_i: O_124 */
  108,  /* ld4: O_108 */
  120,  /* ld4_r: O_120 */
  124,  /* ld4_i: O_124 */
  108,  /* ld8: O_108 */
  120,  /* ld8_r: O_120 */
  124,  /* ld8_i: O_124 */
   69,  /* ld8.fill: O_69 */
  107,  /* ld8_r.fill: O_107 */
  113,  /* ld8_i.fill: O_113 */
  109,  /* ldfs: O_109 */
  123,  /* ldfs_r: O_123 */
  125,  /* ldfs_i: O_125 */
  109,  /* ldfd: O_109 */
  123,  /* ldfd_r: O_123 */
  125,  /* ldfd_i: O_125 */
  109,  /* ldfe: O_109 */
  123,  /* ldfe_r: O_123 */
  125,  /* ldfe_i: O_125 */
  109,  /* ldf8: O_109 */
  123,  /* ldf8_r: O_123 */
  125,  /* ldf8_i: O_125 */
   67,  /* ldf.fill: O_67 */
  105,  /* ldf_r.fill: O_105 */
  112,  /* ldf_i.fill: O_112 */
  116,  /* ldfps: O_116 */
  117,  /* ldfps_i: O_117 */
  116,  /* ldfpd: O_116 */
  117,  /* ldfpd_i: O_117 */
  116,  /* ldfp8: O_116 */
  117,  /* ldfp8_i: O_117 */
   51,  /* lfetch: O_51 */
   51,  /* lfetch.excl: O_51 */
   51,  /* lfetch.fault: O_51 */
   51,  /* lfetch.fault.excl: O_51 */
   86,  /* lfetch_r: O_86 */
   86,  /* lfetch_r.excl: O_86 */
   86,  /* lfetch_r.fault: O_86 */
   86,  /* lfetch_r.fault.excl: O_86 */
   96,  /* lfetch_i: O_96 */
   96,  /* lfetch_i.excl: O_96 */
   96,  /* lfetch_i.fault: O_96 */
   96,  /* lfetch_i.fault.excl: O_96 */
    0,  /* loadrs: O_0 */
    1,  /* mf: O_1 */
    1,  /* mf.a: O_1 */
   40,  /* mix1.l: O_40 */
   40,  /* mix1.r: O_40 */
   40,  /* mix2.l: O_40 */
   40,  /* mix2.r: O_40 */
   40,  /* mix4.l: O_40 */
   40,  /* mix4.r: O_40 */
   28,  /* mov_f_ar.i: O_28 */
   24,  /* mov_t_ar_r.i: O_24 */
   36,  /* mov_t_ar_i.i: O_36 */
   29,  /* mov_f_ar.m: O_29 */
   25,  /* mov_t_ar_r.m: O_25 */
   37,  /* mov_t_ar_i.m: O_37 */
   15,  /* mov_f_br: O_15 */
   92,  /* mov_t_br_i: O_92 */
   92,  /* mov_t_br.ret: O_92 */
   19,  /* mov_t_cr: O_19 */
   21,  /* mov_f_cr: O_21 */
   22,  /* mov_f_cpuid: O_22 */
   41,  /* mov_t_dbr: O_41 */
   22,  /* mov_f_dbr: O_22 */
   41,  /* mov_t_ibr: O_41 */
   22,  /* mov_f_ibr: O_22 */
   41,  /* mov_t_msr: O_41 */
   22,  /* mov_f_msr: O_22 */
   41,  /* mov_t_pkr: O_41 */
   22,  /* mov_f_pkr: O_22 */
   41,  /* mov_t_pmc: O_41 */
   22,  /* mov_f_pmc: O_22 */
   41,  /* mov_t_pmd: O_41 */
   22,  /* mov_f_pmd: O_22 */
   41,  /* mov_t_rr: O_41 */
   22,  /* mov_f_rr: O_22 */
    4,  /* mov_f_ip: O_4 */
    4,  /* mov_f_pr: O_4 */
   26,  /* mov_t_pr: O_26 */
    6,  /* mov_t_pr_i: O_6 */
    3,  /* mov_t_psr: O_3 */
    4,  /* mov_f_psr: O_4 */
    3,  /* mov_t_psrum: O_3 */
    4,  /* mov_f_psrum: O_4 */
   32,  /* movl: O_32 */
   53,  /* mux1: O_53 */
   45,  /* mux2: O_45 */
    8,  /* nop.i: O_8 */
    8,  /* nop.b: O_8 */
    8,  /* nop.m: O_8 */
    8,  /* nop.f: O_8 */
   10,  /* nop.x: O_10 */
   63,  /* or: O_63 */
   68,  /* or_i: O_68 */
   40,  /* pack2.sss: O_40 */
   40,  /* pack2.uss: O_40 */
   40,  /* pack4.sss: O_40 */
   63,  /* padd1: O_63 */
   63,  /* padd1.sss: O_63 */
   63,  /* padd1.uus: O_63 */
   63,  /* padd1.uuu: O_63 */
   63,  /* padd2: O_63 */
   63,  /* padd2.sss: O_63 */
   63,  /* padd2.uus: O_63 */
   63,  /* padd2.uuu: O_63 */
   63,  /* padd4: O_63 */
   40,  /* pavg1: O_40 */
   40,  /* pavg1.raz: O_40 */
   40,  /* pavg2: O_40 */
   40,  /* pavg2.raz: O_40 */
   40,  /* pavgsub1: O_40 */
   40,  /* pavgsub2: O_40 */
   63,  /* pcmp1.eq: O_63 */
   63,  /* pcmp1.gt: O_63 */
   63,  /* pcmp2.eq: O_63 */
   63,  /* pcmp2.gt: O_63 */
   63,  /* pcmp4.eq: O_63 */
   63,  /* pcmp4.gt: O_63 */
   63,  /* pmax1.u: O_63 */
   63,  /* pmax2: O_63 */
   63,  /* pmin1.u: O_63 */
   63,  /* pmin2: O_63 */
   63,  /* pmpy2.r: O_63 */
   63,  /* pmpy2.l: O_63 */
   76,  /* pmpyshr2: O_76 */
   76,  /* pmpyshr2.u: O_76 */
   17,  /* popcnt: O_17 */
   40,  /* probe.r: O_40 */
   40,  /* probe.w: O_40 */
   44,  /* probe_i.r: O_44 */
   44,  /* probe_i.w: O_44 */
   27,  /* probe.r.fault: O_27 */
   27,  /* probe.w.fault: O_27 */
   27,  /* probe.rw.fault: O_27 */
   40,  /* psad1: O_40 */
   63,  /* pshl2: O_63 */
   63,  /* pshl4: O_63 */
   74,  /* pshl2_i: O_74 */
   74,  /* pshl4_i: O_74 */
   70,  /* pshladd2: O_70 */
   63,  /* pshr2: O_63 */
   63,  /* pshr2.u: O_63 */
   63,  /* pshr4: O_63 */
   63,  /* pshr4.u: O_63 */
   74,  /* pshr2_i: O_74 */
   74,  /* pshr2_i.u: O_74 */
   74,  /* pshr4_i: O_74 */
   74,  /* pshr4_i.u: O_74 */
   70,  /* pshradd2: O_70 */
   63,  /* psub1: O_63 */
   63,  /* psub2: O_63 */
   63,  /* psub4: O_63 */
   63,  /* psub1.sss: O_63 */
   63,  /* psub1.uus: O_63 */
   63,  /* psub1.uuu: O_63 */
   63,  /* psub2.sss: O_63 */
   63,  /* psub2.uus: O_63 */
   63,  /* psub2.uuu: O_63 */
    3,  /* ptc.e: O_3 */
   14,  /* ptc.g: O_14 */
   14,  /* ptc.ga: O_14 */
   14,  /* ptc.l: O_14 */
   14,  /* ptr.d: O_14 */
   14,  /* ptr.i: O_14 */
    0,  /* rfi: O_0 */
    9,  /* rsm: O_9 */
    9,  /* rum: O_9 */
   13,  /* setf.s: O_13 */
   13,  /* setf.d: O_13 */
   13,  /* setf.exp: O_13 */
   13,  /* setf.sig: O_13 */
   63,  /* shl: O_63 */
   65,  /* shladd: O_65 */
   65,  /* shladdp4: O_65 */
   63,  /* shr: O_63 */
   63,  /* shr.u: O_63 */
   64,  /* shrp: O_64 */
    1,  /* srlz.i: O_1 */
    1,  /* srlz.d: O_1 */
    9,  /* ssm: O_9 */
  118,  /* st1: O_118 */
  126,  /* st1_i: O_126 */
  118,  /* st2: O_118 */
  126,  /* st2_i: O_126 */
  118,  /* st4: O_118 */
  126,  /* st4_i: O_126 */
  118,  /* st8: O_118 */
  126,  /* st8_i: O_126 */
  104,  /* st8.spill: O_104 */
  122,  /* st8_i.spill: O_122 */
  103,  /* stfs: O_103 */
  121,  /* stfs_i: O_121 */
  103,  /* stfd: O_103 */
  121,  /* stfd_i: O_121 */
  103,  /* stfe: O_103 */
  121,  /* stfe_i: O_121 */
  103,  /* stf8: O_103 */
  121,  /* stf8_i: O_121 */
  103,  /* stf.spill: O_103 */
  121,  /* stf_i.spill: O_121 */
   63,  /* sub: O_63 */
   40,  /* sub_1: O_40 */
   68,  /* sub_i: O_68 */
    9,  /* sum: O_9 */
   17,  /* sxt1: O_17 */
   17,  /* sxt2: O_17 */
   17,  /* sxt4: O_17 */
    1,  /* sync.i: O_1 */
   17,  /* tak: O_17 */
   62,  /* tbit.z: O_62 */
   62,  /* tbit.z.unc: O_62 */
   62,  /* tbit.z.and: O_62 */
   62,  /* tbit.z.or: O_62 */
   62,  /* tbit.z.or.andcm: O_62 */
   62,  /* tbit.nz.and: O_62 */
   62,  /* tbit.nz.or: O_62 */
   62,  /* tbit.nz.or.andcm: O_62 */
   17,  /* thash: O_17 */
   39,  /* tnat.z: O_39 */
   39,  /* tnat.z.unc: O_39 */
   39,  /* tnat.z.and: O_39 */
   39,  /* tnat.z.or: O_39 */
   39,  /* tnat.z.or.andcm: O_39 */
   39,  /* tnat.nz.and: O_39 */
   39,  /* tnat.nz.or: O_39 */
   39,  /* tnat.nz.or.andcm: O_39 */
   17,  /* tpa: O_17 */
   17,  /* ttag: O_17 */
   40,  /* unpack1.l: O_40 */
   40,  /* unpack1.h: O_40 */
   40,  /* unpack2.l: O_40 */
   40,  /* unpack2.h: O_40 */
   40,  /* unpack4.l: O_40 */
   40,  /* unpack4.h: O_40 */
   90,  /* xchg1: O_90 */
   90,  /* xchg2: O_90 */
   90,  /* xchg4: O_90 */
   90,  /* xchg8: O_90 */
  101,  /* xma.l: O_101 */
  101,  /* xma.h: O_101 */
  101,  /* xma.hu: O_101 */
   63,  /* xor: O_63 */
   68,  /* xor_i: O_68 */
   17,  /* zxt1: O_17 */
   17,  /* zxt2: O_17 */
   17,  /* zxt4: O_17 */
   77,  /* alloc: O_77 */
   34,  /* br: O_34 */
    7,  /* br_r: O_7 */
   35,  /* brl: O_35 */
   84,  /* cmp.eq.orcm: O_84 */
   84,  /* cmp.eq.andcm: O_84 */
   84,  /* cmp.eq.and.orcm: O_84 */
   84,  /* cmp.ne: O_84 */
   84,  /* cmp.ne.unc: O_84 */
   84,  /* cmp.ne.orcm: O_84 */
   84,  /* cmp.ne.andcm: O_84 */
   84,  /* cmp.ne.and.orcm: O_84 */
   84,  /* cmp.le: O_84 */
   84,  /* cmp.le.unc: O_84 */
   84,  /* cmp.gt: O_84 */
   84,  /* cmp.gt.unc: O_84 */
   84,  /* cmp.ge: O_84 */
   84,  /* cmp.ge.unc: O_84 */
   84,  /* cmp.leu: O_84 */
   84,  /* cmp.leu.unc: O_84 */
   84,  /* cmp.gtu: O_84 */
   84,  /* cmp.gtu.unc: O_84 */
   84,  /* cmp.geu: O_84 */
   84,  /* cmp.geu.unc: O_84 */
   48,  /* cmp_z1.lt.orcm: O_48 */
   48,  /* cmp_z1.lt.andcm: O_48 */
   48,  /* cmp_z1.lt.and.orcm: O_48 */
   48,  /* cmp_z1.le.orcm: O_48 */
   48,  /* cmp_z1.le.andcm: O_48 */
   48,  /* cmp_z1.le.and.orcm: O_48 */
   48,  /* cmp_z1.gt.orcm: O_48 */
   48,  /* cmp_z1.gt.andcm: O_48 */
   48,  /* cmp_z1.gt.and.orcm: O_48 */
   48,  /* cmp_z1.ge.orcm: O_48 */
   48,  /* cmp_z1.ge.andcm: O_48 */
   48,  /* cmp_z1.ge.and.orcm: O_48 */
   47,  /* cmp_z2.lt.orcm: O_47 */
   47,  /* cmp_z2.lt.andcm: O_47 */
   47,  /* cmp_z2.lt.and.orcm: O_47 */
   47,  /* cmp_z2.le.orcm: O_47 */
   47,  /* cmp_z2.le.andcm: O_47 */
   47,  /* cmp_z2.le.and.orcm: O_47 */
   47,  /* cmp_z2.gt.orcm: O_47 */
   47,  /* cmp_z2.gt.andcm: O_47 */
   47,  /* cmp_z2.gt.and.orcm: O_47 */
   47,  /* cmp_z2.ge.orcm: O_47 */
   47,  /* cmp_z2.ge.andcm: O_47 */
   47,  /* cmp_z2.ge.and.orcm: O_47 */
   47,  /* cmp_z2.lt.and: O_47 */
   47,  /* cmp_z2.lt.or: O_47 */
   47,  /* cmp_z2.lt.or.andcm: O_47 */
   47,  /* cmp_z2.le.and: O_47 */
   47,  /* cmp_z2.le.or: O_47 */
   47,  /* cmp_z2.le.or.andcm: O_47 */
   47,  /* cmp_z2.gt.and: O_47 */
   47,  /* cmp_z2.gt.or: O_47 */
   47,  /* cmp_z2.gt.or.andcm: O_47 */
   47,  /* cmp_z2.ge.and: O_47 */
   47,  /* cmp_z2.ge.or: O_47 */
   47,  /* cmp_z2.ge.or.andcm: O_47 */
   88,  /* cmp_i.eq.orcm: O_88 */
   88,  /* cmp_i.eq.andcm: O_88 */
   88,  /* cmp_i.eq.and.orcm: O_88 */
   88,  /* cmp_i.ne: O_88 */
   88,  /* cmp_i.ne.unc: O_88 */
   88,  /* cmp_i.ne.orcm: O_88 */
   88,  /* cmp_i.ne.andcm: O_88 */
   88,  /* cmp_i.ne.and.orcm: O_88 */
   89,  /* cmp_i.le: O_89 */
   89,  /* cmp_i.le.unc: O_89 */
   89,  /* cmp_i.gt: O_89 */
   89,  /* cmp_i.gt.unc: O_89 */
   88,  /* cmp_i.ge: O_88 */
   88,  /* cmp_i.ge.unc: O_88 */
   98,  /* cmp_i.leu: O_98 */
   98,  /* cmp_i.leu.unc: O_98 */
   98,  /* cmp_i.gtu: O_98 */
   98,  /* cmp_i.gtu.unc: O_98 */
   97,  /* cmp_i.geu: O_97 */
   97,  /* cmp_i.geu.unc: O_97 */
   84,  /* cmp4.eq.orcm: O_84 */
   84,  /* cmp4.eq.andcm: O_84 */
   84,  /* cmp4.eq.and.orcm: O_84 */
   84,  /* cmp4.ne: O_84 */
   84,  /* cmp4.ne.unc: O_84 */
   84,  /* cmp4.ne.orcm: O_84 */
   84,  /* cmp4.ne.andcm: O_84 */
   84,  /* cmp4.ne.and.orcm: O_84 */
   84,  /* cmp4.le: O_84 */
   84,  /* cmp4.le.unc: O_84 */
   84,  /* cmp4.gt: O_84 */
   84,  /* cmp4.gt.unc: O_84 */
   84,  /* cmp4.ge: O_84 */
   84,  /* cmp4.ge.unc: O_84 */
   84,  /* cmp4.leu: O_84 */
   84,  /* cmp4.leu.unc: O_84 */
   84,  /* cmp4.gtu: O_84 */
   84,  /* cmp4.gtu.unc: O_84 */
   84,  /* cmp4.geu: O_84 */
   84,  /* cmp4.geu.unc: O_84 */
   48,  /* cmp4_z1.lt.orcm: O_48 */
   48,  /* cmp4_z1.lt.andcm: O_48 */
   48,  /* cmp4_z1.lt.and.orcm: O_48 */
   48,  /* cmp4_z1.le.orcm: O_48 */
   48,  /* cmp4_z1.le.andcm: O_48 */
   48,  /* cmp4_z1.le.and.orcm: O_48 */
   48,  /* cmp4_z1.gt.orcm: O_48 */
   48,  /* cmp4_z1.gt.andcm: O_48 */
   48,  /* cmp4_z1.gt.and.orcm: O_48 */
   48,  /* cmp4_z1.ge.orcm: O_48 */
   48,  /* cmp4_z1.ge.andcm: O_48 */
   48,  /* cmp4_z1.ge.and.orcm: O_48 */
   47,  /* cmp4_z2.lt.orcm: O_47 */
   47,  /* cmp4_z2.lt.andcm: O_47 */
   47,  /* cmp4_z2.lt.and.orcm: O_47 */
   47,  /* cmp4_z2.le.orcm: O_47 */
   47,  /* cmp4_z2.le.andcm: O_47 */
   47,  /* cmp4_z2.le.and.orcm: O_47 */
   47,  /* cmp4_z2.gt.orcm: O_47 */
   47,  /* cmp4_z2.gt.andcm: O_47 */
   47,  /* cmp4_z2.gt.and.orcm: O_47 */
   47,  /* cmp4_z2.ge.orcm: O_47 */
   47,  /* cmp4_z2.ge.andcm: O_47 */
   47,  /* cmp4_z2.ge.and.orcm: O_47 */
   47,  /* cmp4_z2.lt.and: O_47 */
   47,  /* cmp4_z2.lt.or: O_47 */
   47,  /* cmp4_z2.lt.or.andcm: O_47 */
   47,  /* cmp4_z2.le.and: O_47 */
   47,  /* cmp4_z2.le.or: O_47 */
   47,  /* cmp4_z2.le.or.andcm: O_47 */
   47,  /* cmp4_z2.gt.and: O_47 */
   47,  /* cmp4_z2.gt.or: O_47 */
   47,  /* cmp4_z2.gt.or.andcm: O_47 */
   47,  /* cmp4_z2.ge.and: O_47 */
   47,  /* cmp4_z2.ge.or: O_47 */
   47,  /* cmp4_z2.ge.or.andcm: O_47 */
   88,  /* cmp4_i.eq.orcm: O_88 */
   88,  /* cmp4_i.eq.andcm: O_88 */
   88,  /* cmp4_i.eq.and.orcm: O_88 */
   88,  /* cmp4_i.ne: O_88 */
   88,  /* cmp4_i.ne.unc: O_88 */
   88,  /* cmp4_i.ne.orcm: O_88 */
   88,  /* cmp4_i.ne.andcm: O_88 */
   88,  /* cmp4_i.ne.and.orcm: O_88 */
   89,  /* cmp4_i.le: O_89 */
   89,  /* cmp4_i.le.unc: O_89 */
   89,  /* cmp4_i.gt: O_89 */
   89,  /* cmp4_i.gt.unc: O_89 */
   88,  /* cmp4_i.ge: O_88 */
   88,  /* cmp4_i.ge.unc: O_88 */
  100,  /* cmp4_i.leu: O_100 */
  100,  /* cmp4_i.leu.unc: O_100 */
  100,  /* cmp4_i.gtu: O_100 */
  100,  /* cmp4_i.gtu.unc: O_100 */
   99,  /* cmp4_i.geu: O_99 */
   99,  /* cmp4_i.geu.unc: O_99 */
   31,  /* fabs: O_31 */
   85,  /* fadd: O_85 */
   85,  /* fadd.s: O_85 */
   85,  /* fadd.d: O_85 */
   61,  /* fclass.nm: O_61 */
   61,  /* fclass.nm.unc: O_61 */
  106,  /* fcmp.gt: O_106 */
  106,  /* fcmp.gt.unc: O_106 */
  106,  /* fcmp.ge: O_106 */
  106,  /* fcmp.ge.unc: O_106 */
  106,  /* fcmp.neq: O_106 */
  106,  /* fcmp.neq.unc: O_106 */
  106,  /* fcmp.nlt: O_106 */
  106,  /* fcmp.nlt.unc: O_106 */
  106,  /* fcmp.nle: O_106 */
  106,  /* fcmp.nle.unc: O_106 */
  106,  /* fcmp.ngt: O_106 */
  106,  /* fcmp.ngt.unc: O_106 */
  106,  /* fcmp.nge: O_106 */
  106,  /* fcmp.nge.unc: O_106 */
  106,  /* fcmp.ord: O_106 */
  106,  /* fcmp.ord.unc: O_106 */
   42,  /* fcvt.xuf: O_42 */
   42,  /* fcvt.xuf.s: O_42 */
   42,  /* fcvt.xuf.d: O_42 */
   85,  /* fmpy: O_85 */
   85,  /* fmpy.s: O_85 */
   85,  /* fmpy.d: O_85 */
   31,  /* fneg: O_31 */
   31,  /* fnegabs: O_31 */
   85,  /* fnmpy: O_85 */
   85,  /* fnmpy.s: O_85 */
   85,  /* fnmpy.d: O_85 */
   42,  /* fnorm: O_42 */
   42,  /* fnorm.s: O_42 */
   42,  /* fnorm.d: O_42 */
   31,  /* fpabs: O_31 */
   85,  /* fpcmp.gt: O_85 */
   85,  /* fpcmp.ge: O_85 */
   85,  /* fpcmp.ngt: O_85 */
   85,  /* fpcmp.nge: O_85 */
   85,  /* fpmpy: O_85 */
   31,  /* fpneg: O_31 */
   31,  /* fpnegabs: O_31 */
   85,  /* fpnmpy: O_85 */
   85,  /* fsub: O_85 */
   85,  /* fsub.s: O_85 */
   85,  /* fsub.d: O_85 */
   11,  /* mov_t_br: O_11 */
   12,  /* mov_f: O_12 */
   17,  /* mov: O_17 */
   30,  /* mov_i: O_30 */
   75,  /* shl_i: O_75 */
   75,  /* shr_i: O_75 */
   75,  /* shr_i.u: O_75 */
   62,  /* tbit.nz: O_62 */
   62,  /* tbit.nz.unc: O_62 */
   39,  /* tnat.nz: O_39 */
   39,  /* tnat.nz.unc: O_39 */
  101,  /* xma.lu: O_101 */
   60,  /* xmpy.l: O_60 */
   60,  /* xmpy.lu: O_60 */
   60,  /* xmpy.h: O_60 */
   60,  /* xmpy.hu: O_60 */
    8,  /* break: O_8 */
   52,  /* chk.s: O_52 */
   84,  /* cmp.lt.and: O_84 */
   84,  /* cmp.lt.or: O_84 */
   84,  /* cmp.lt.or.andcm: O_84 */
   84,  /* cmp.le.and: O_84 */
   84,  /* cmp.le.or: O_84 */
   84,  /* cmp.le.or.andcm: O_84 */
   84,  /* cmp.gt.and: O_84 */
   84,  /* cmp.gt.or: O_84 */
   84,  /* cmp.gt.or.andcm: O_84 */
   84,  /* cmp.ge.and: O_84 */
   84,  /* cmp.ge.or: O_84 */
   84,  /* cmp.ge.or.andcm: O_84 */
   84,  /* cmp.lt.orcm: O_84 */
   84,  /* cmp.lt.andcm: O_84 */
   84,  /* cmp.lt.and.orcm: O_84 */
   84,  /* cmp.le.orcm: O_84 */
   84,  /* cmp.le.andcm: O_84 */
   84,  /* cmp.le.and.orcm: O_84 */
   84,  /* cmp.gt.orcm: O_84 */
   84,  /* cmp.gt.andcm: O_84 */
   84,  /* cmp.gt.and.orcm: O_84 */
   84,  /* cmp.ge.orcm: O_84 */
   84,  /* cmp.ge.andcm: O_84 */
   84,  /* cmp.ge.and.orcm: O_84 */
   84,  /* cmp4.lt.and: O_84 */
   84,  /* cmp4.lt.or: O_84 */
   84,  /* cmp4.lt.or.andcm: O_84 */
   84,  /* cmp4.le.and: O_84 */
   84,  /* cmp4.le.or: O_84 */
   84,  /* cmp4.le.or.andcm: O_84 */
   84,  /* cmp4.gt.and: O_84 */
   84,  /* cmp4.gt.or: O_84 */
   84,  /* cmp4.gt.or.andcm: O_84 */
   84,  /* cmp4.ge.and: O_84 */
   84,  /* cmp4.ge.or: O_84 */
   84,  /* cmp4.ge.or.andcm: O_84 */
   84,  /* cmp4.lt.orcm: O_84 */
   84,  /* cmp4.lt.andcm: O_84 */
   84,  /* cmp4.lt.and.orcm: O_84 */
   84,  /* cmp4.le.orcm: O_84 */
   84,  /* cmp4.le.andcm: O_84 */
   84,  /* cmp4.le.and.orcm: O_84 */
   84,  /* cmp4.gt.orcm: O_84 */
   84,  /* cmp4.gt.andcm: O_84 */
   84,  /* cmp4.gt.and.orcm: O_84 */
   84,  /* cmp4.ge.orcm: O_84 */
   84,  /* cmp4.ge.andcm: O_84 */
   84,  /* cmp4.ge.and.orcm: O_84 */
   20,  /* mov_f_ar: O_20 */
   18,  /* mov_t_ar_r: O_18 */
   23,  /* mov_t_ar_i: O_23 */
    8,  /* nop: O_8 */
  134,  /* asm: O_134 */
  129,  /* intrncall: O_129 */
  127,  /* spadjust: O_127 */
  133,  /* copy.br: O_133 */
  128,  /* begin.pregtn: O_128 */
  128,  /* end.pregtn: O_128 */
  132,  /* bwd.bar: O_132 */
  132,  /* fwd.bar: O_132 */
  131,  /* dfixup: O_131 */
  131,  /* ffixup: O_131 */
  130,  /* ifixup: O_130 */
  135,  /* label: O_135 */
  132,  /* noop: O_132 */
};

const mINT8 ISA_OPERAND_relocatable_opnd[] = {
  -1,  /* add */
  -1,  /* add_1 */
   1,  /* adds */
   1,  /* addl */
  -1,  /* addp4 */
  -1,  /* addp4_i */
  -1,  /* alloc_3 */
  -1,  /* and */
  -1,  /* and_i */
  -1,  /* andcm */
  -1,  /* andcm_i */
   4,  /* br.cond */
  -1,  /* br_r.cond */
   4,  /* br.call */
  -1,  /* br_r.call */
  -1,  /* br.ret */
  -1,  /* br.ia */
   3,  /* br.cloop */
   3,  /* br.ctop */
   3,  /* br.cexit */
   4,  /* br.wtop */
   4,  /* br.wexit */
  -1,  /* break.i */
  -1,  /* break.b */
  -1,  /* break.m */
  -1,  /* break.f */
  -1,  /* break.x */
   4,  /* brl.cond */
   4,  /* brl.call */
   2,  /* brp */
  -1,  /* brp_r */
  -1,  /* brp.ret */
  -1,  /* bsw.0 */
  -1,  /* bsw.1 */
   2,  /* chk.s.i */
   2,  /* chk.s.m */
   2,  /* chk_f.s */
   3,  /* chk.a */
   3,  /* chk_f.a */
  -1,  /* clrrrb */
  -1,  /* clrrrb.pr */
  -1,  /* cmp.eq */
  -1,  /* cmp.eq.unc */
  -1,  /* cmp.eq.and */
  -1,  /* cmp.eq.or */
  -1,  /* cmp.eq.or.andcm */
  -1,  /* cmp.ne.and */
  -1,  /* cmp.ne.or */
  -1,  /* cmp.ne.or.andcm */
  -1,  /* cmp.lt */
  -1,  /* cmp.lt.unc */
  -1,  /* cmp.ltu */
  -1,  /* cmp.ltu.unc */
  -1,  /* cmp_z1.lt.and */
  -1,  /* cmp_z1.lt.or */
  -1,  /* cmp_z1.lt.or.andcm */
  -1,  /* cmp_z1.le.and */
  -1,  /* cmp_z1.le.or */
  -1,  /* cmp_z1.le.or.andcm */
  -1,  /* cmp_z1.gt.and */
  -1,  /* cmp_z1.gt.or */
  -1,  /* cmp_z1.gt.or.andcm */
  -1,  /* cmp_z1.ge.and */
  -1,  /* cmp_z1.ge.or */
  -1,  /* cmp_z1.ge.or.andcm */
  -1,  /* cmp_i.eq */
  -1,  /* cmp_i.eq.unc */
  -1,  /* cmp_i.eq.and */
  -1,  /* cmp_i.eq.or */
  -1,  /* cmp_i.eq.or.andcm */
  -1,  /* cmp_i.ne.and */
  -1,  /* cmp_i.ne.or */
  -1,  /* cmp_i.ne.or.andcm */
  -1,  /* cmp_i.lt */
  -1,  /* cmp_i.lt.unc */
  -1,  /* cmp_i.ltu */
  -1,  /* cmp_i.ltu.unc */
  -1,  /* cmp4.eq */
  -1,  /* cmp4.eq.unc */
  -1,  /* cmp4.eq.and */
  -1,  /* cmp4.eq.or */
  -1,  /* cmp4.eq.or.andcm */
  -1,  /* cmp4.ne.and */
  -1,  /* cmp4.ne.or */
  -1,  /* cmp4.ne.or.andcm */
  -1,  /* cmp4.lt */
  -1,  /* cmp4.lt.unc */
  -1,  /* cmp4.ltu */
  -1,  /* cmp4.ltu.unc */
  -1,  /* cmp4_z1.lt.and */
  -1,  /* cmp4_z1.lt.or */
  -1,  /* cmp4_z1.lt.or.andcm */
  -1,  /* cmp4_z1.le.and */
  -1,  /* cmp4_z1.le.or */
  -1,  /* cmp4_z1.le.or.andcm */
  -1,  /* cmp4_z1.gt.and */
  -1,  /* cmp4_z1.gt.or */
  -1,  /* cmp4_z1.gt.or.andcm */
  -1,  /* cmp4_z1.ge.and */
  -1,  /* cmp4_z1.ge.or */
  -1,  /* cmp4_z1.ge.or.andcm */
  -1,  /* cmp4_i.eq */
  -1,  /* cmp4_i.eq.unc */
  -1,  /* cmp4_i.eq.and */
  -1,  /* cmp4_i.eq.or */
  -1,  /* cmp4_i.eq.or.andcm */
  -1,  /* cmp4_i.ne.and */
  -1,  /* cmp4_i.ne.or */
  -1,  /* cmp4_i.ne.or.andcm */
  -1,  /* cmp4_i.lt */
  -1,  /* cmp4_i.lt.unc */
  -1,  /* cmp4_i.ltu */
  -1,  /* cmp4_i.ltu.unc */
  -1,  /* cmpxchg1 */
  -1,  /* cmpxchg2 */
  -1,  /* cmpxchg4 */
  -1,  /* cmpxchg8 */
  -1,  /* cover */
  -1,  /* czx1.l */
  -1,  /* czx1.r */
  -1,  /* czx2.l */
  -1,  /* czx2.r */
  -1,  /* dep */
  -1,  /* dep.z */
  -1,  /* dep_i */
  -1,  /* dep_i.z */
  -1,  /* epc */
  -1,  /* extr */
  -1,  /* extr.u */
  -1,  /* famax */
  -1,  /* famin */
  -1,  /* fand */
  -1,  /* fandcm */
  -1,  /* fc */
   2,  /* fchkf */
  -1,  /* fclass.m */
  -1,  /* fclass.m.unc */
  -1,  /* fclrf */
  -1,  /* fcmp.eq */
  -1,  /* fcmp.eq.unc */
  -1,  /* fcmp.lt */
  -1,  /* fcmp.lt.unc */
  -1,  /* fcmp.le */
  -1,  /* fcmp.le.unc */
  -1,  /* fcmp.unord */
  -1,  /* fcmp.unord.unc */
  -1,  /* fcvt.fx */
  -1,  /* fcvt.fx.trunc */
  -1,  /* fcvt.fxu */
  -1,  /* fcvt.fxu.trunc */
  -1,  /* fcvt.xf */
  -1,  /* fetchadd4 */
  -1,  /* fetchadd8 */
  -1,  /* flushrs */
  -1,  /* fma */
  -1,  /* fma.s */
  -1,  /* fma.d */
  -1,  /* fmax */
  -1,  /* fmerge.ns */
  -1,  /* fmerge.s */
  -1,  /* fmerge.se */
  -1,  /* fmin */
  -1,  /* fmix.l */
  -1,  /* fmix.r */
  -1,  /* fmix.lr */
  -1,  /* fms */
  -1,  /* fms.s */
  -1,  /* fms.d */
  -1,  /* fnma */
  -1,  /* fnma.s */
  -1,  /* fnma.d */
  -1,  /* for */
  -1,  /* fpack */
  -1,  /* fpamax */
  -1,  /* fpamin */
  -1,  /* fpcmp.eq */
  -1,  /* fpcmp.lt */
  -1,  /* fpcmp.le */
  -1,  /* fpcmp.unord */
  -1,  /* fpcmp.neq */
  -1,  /* fpcmp.nlt */
  -1,  /* fpcmp.nle */
  -1,  /* fpcmp.ord */
  -1,  /* fpcvt.fx */
  -1,  /* fpcvt.fx.trunc */
  -1,  /* fpcvt.fxu */
  -1,  /* fpcvt.fxu.trunc */
  -1,  /* fpma */
  -1,  /* fpmax */
  -1,  /* fpmerge.ns */
  -1,  /* fpmerge.s */
  -1,  /* fpmerge.se */
  -1,  /* fpmin */
  -1,  /* fpms */
  -1,  /* fpnma */
  -1,  /* fprcpa */
  -1,  /* fprsqrta */
  -1,  /* frcpa */
  -1,  /* frsqrta */
  -1,  /* fselect */
  -1,  /* fsetc */
  -1,  /* fswap */
  -1,  /* fswap.nl */
  -1,  /* fswap.nr */
  -1,  /* fsxt.l */
  -1,  /* fsxt.r */
  -1,  /* fwb */
  -1,  /* fxor */
  -1,  /* getf.s */
  -1,  /* getf.d */
  -1,  /* getf.exp */
  -1,  /* getf.sig */
  -1,  /* invala */
  -1,  /* invala.e */
  -1,  /* invala_f.e */
  -1,  /* itc.i */
  -1,  /* itc.d */
  -1,  /* itr.i */
  -1,  /* itr.d */
  -1,  /* ld1 */
  -1,  /* ld1_r */
  -1,  /* ld1_i */
  -1,  /* ld2 */
  -1,  /* ld2_r */
  -1,  /* ld2_i */
  -1,  /* ld4 */
  -1,  /* ld4_r */
  -1,  /* ld4_i */
  -1,  /* ld8 */
  -1,  /* ld8_r */
  -1,  /* ld8_i */
  -1,  /* ld8.fill */
  -1,  /* ld8_r.fill */
  -1,  /* ld8_i.fill */
  -1,  /* ldfs */
  -1,  /* ldfs_r */
  -1,  /* ldfs_i */
  -1,  /* ldfd */
  -1,  /* ldfd_r */
  -1,  /* ldfd_i */
  -1,  /* ldfe */
  -1,  /* ldfe_r */
  -1,  /* ldfe_i */
  -1,  /* ldf8 */
  -1,  /* ldf8_r */
  -1,  /* ldf8_i */
  -1,  /* ldf.fill */
  -1,  /* ldf_r.fill */
  -1,  /* ldf_i.fill */
  -1,  /* ldfps */
  -1,  /* ldfps_i */
  -1,  /* ldfpd */
  -1,  /* ldfpd_i */
  -1,  /* ldfp8 */
  -1,  /* ldfp8_i */
  -1,  /* lfetch */
  -1,  /* lfetch.excl */
  -1,  /* lfetch.fault */
  -1,  /* lfetch.fault.excl */
  -1,  /* lfetch_r */
  -1,  /* lfetch_r.excl */
  -1,  /* lfetch_r.fault */
  -1,  /* lfetch_r.fault.excl */
  -1,  /* lfetch_i */
  -1,  /* lfetch_i.excl */
  -1,  /* lfetch_i.fault */
  -1,  /* lfetch_i.fault.excl */
  -1,  /* loadrs */
  -1,  /* mf */
  -1,  /* mf.a */
  -1,  /* mix1.l */
  -1,  /* mix1.r */
  -1,  /* mix2.l */
  -1,  /* mix2.r */
  -1,  /* mix4.l */
  -1,  /* mix4.r */
  -1,  /* mov_f_ar.i */
  -1,  /* mov_t_ar_r.i */
  -1,  /* mov_t_ar_i.i */
  -1,  /* mov_f_ar.m */
  -1,  /* mov_t_ar_r.m */
  -1,  /* mov_t_ar_i.m */
  -1,  /* mov_f_br */
  -1,  /* mov_t_br_i */
  -1,  /* mov_t_br.ret */
  -1,  /* mov_t_cr */
  -1,  /* mov_f_cr */
  -1,  /* mov_f_cpuid */
  -1,  /* mov_t_dbr */
  -1,  /* mov_f_dbr */
  -1,  /* mov_t_ibr */
  -1,  /* mov_f_ibr */
  -1,  /* mov_t_msr */
  -1,  /* mov_f_msr */
  -1,  /* mov_t_pkr */
  -1,  /* mov_f_pkr */
  -1,  /* mov_t_pmc */
  -1,  /* mov_f_pmc */
  -1,  /* mov_t_pmd */
  -1,  /* mov_f_pmd */
  -1,  /* mov_t_rr */
  -1,  /* mov_f_rr */
  -1,  /* mov_f_ip */
  -1,  /* mov_f_pr */
  -1,  /* mov_t_pr */
  -1,  /* mov_t_pr_i */
  -1,  /* mov_t_psr */
  -1,  /* mov_f_psr */
  -1,  /* mov_t_psrum */
  -1,  /* mov_f_psrum */
   1,  /* movl */
  -1,  /* mux1 */
  -1,  /* mux2 */
  -1,  /* nop.i */
  -1,  /* nop.b */
  -1,  /* nop.m */
  -1,  /* nop.f */
  -1,  /* nop.x */
  -1,  /* or */
  -1,  /* or_i */
  -1,  /* pack2.sss */
  -1,  /* pack2.uss */
  -1,  /* pack4.sss */
  -1,  /* padd1 */
  -1,  /* padd1.sss */
  -1,  /* padd1.uus */
  -1,  /* padd1.uuu */
  -1,  /* padd2 */
  -1,  /* padd2.sss */
  -1,  /* padd2.uus */
  -1,  /* padd2.uuu */
  -1,  /* padd4 */
  -1,  /* pavg1 */
  -1,  /* pavg1.raz */
  -1,  /* pavg2 */
  -1,  /* pavg2.raz */
  -1,  /* pavgsub1 */
  -1,  /* pavgsub2 */
  -1,  /* pcmp1.eq */
  -1,  /* pcmp1.gt */
  -1,  /* pcmp2.eq */
  -1,  /* pcmp2.gt */
  -1,  /* pcmp4.eq */
  -1,  /* pcmp4.gt */
  -1,  /* pmax1.u */
  -1,  /* pmax2 */
  -1,  /* pmin1.u */
  -1,  /* pmin2 */
  -1,  /* pmpy2.r */
  -1,  /* pmpy2.l */
  -1,  /* pmpyshr2 */
  -1,  /* pmpyshr2.u */
  -1,  /* popcnt */
  -1,  /* probe.r */
  -1,  /* probe.w */
  -1,  /* probe_i.r */
  -1,  /* probe_i.w */
  -1,  /* probe.r.fault */
  -1,  /* probe.w.fault */
  -1,  /* probe.rw.fault */
  -1,  /* psad1 */
  -1,  /* pshl2 */
  -1,  /* pshl4 */
  -1,  /* pshl2_i */
  -1,  /* pshl4_i */
  -1,  /* pshladd2 */
  -1,  /* pshr2 */
  -1,  /* pshr2.u */
  -1,  /* pshr4 */
  -1,  /* pshr4.u */
  -1,  /* pshr2_i */
  -1,  /* pshr2_i.u */
  -1,  /* pshr4_i */
  -1,  /* pshr4_i.u */
  -1,  /* pshradd2 */
  -1,  /* psub1 */
  -1,  /* psub2 */
  -1,  /* psub4 */
  -1,  /* psub1.sss */
  -1,  /* psub1.uus */
  -1,  /* psub1.uuu */
  -1,  /* psub2.sss */
  -1,  /* psub2.uus */
  -1,  /* psub2.uuu */
  -1,  /* ptc.e */
  -1,  /* ptc.g */
  -1,  /* ptc.ga */
  -1,  /* ptc.l */
  -1,  /* ptr.d */
  -1,  /* ptr.i */
  -1,  /* rfi */
  -1,  /* rsm */
  -1,  /* rum */
  -1,  /* setf.s */
  -1,  /* setf.d */
  -1,  /* setf.exp */
  -1,  /* setf.sig */
  -1,  /* shl */
  -1,  /* shladd */
  -1,  /* shladdp4 */
  -1,  /* shr */
  -1,  /* shr.u */
  -1,  /* shrp */
  -1,  /* srlz.i */
  -1,  /* srlz.d */
  -1,  /* ssm */
  -1,  /* st1 */
  -1,  /* st1_i */
  -1,  /* st2 */
  -1,  /* st2_i */
  -1,  /* st4 */
  -1,  /* st4_i */
  -1,  /* st8 */
  -1,  /* st8_i */
  -1,  /* st8.spill */
  -1,  /* st8_i.spill */
  -1,  /* stfs */
  -1,  /* stfs_i */
  -1,  /* stfd */
  -1,  /* stfd_i */
  -1,  /* stfe */
  -1,  /* stfe_i */
  -1,  /* stf8 */
  -1,  /* stf8_i */
  -1,  /* stf.spill */
  -1,  /* stf_i.spill */
  -1,  /* sub */
  -1,  /* sub_1 */
  -1,  /* sub_i */
  -1,  /* sum */
  -1,  /* sxt1 */
  -1,  /* sxt2 */
  -1,  /* sxt4 */
  -1,  /* sync.i */
  -1,  /* tak */
  -1,  /* tbit.z */
  -1,  /* tbit.z.unc */
  -1,  /* tbit.z.and */
  -1,  /* tbit.z.or */
  -1,  /* tbit.z.or.andcm */
  -1,  /* tbit.nz.and */
  -1,  /* tbit.nz.or */
  -1,  /* tbit.nz.or.andcm */
  -1,  /* thash */
  -1,  /* tnat.z */
  -1,  /* tnat.z.unc */
  -1,  /* tnat.z.and */
  -1,  /* tnat.z.or */
  -1,  /* tnat.z.or.andcm */
  -1,  /* tnat.nz.and */
  -1,  /* tnat.nz.or */
  -1,  /* tnat.nz.or.andcm */
  -1,  /* tpa */
  -1,  /* ttag */
  -1,  /* unpack1.l */
  -1,  /* unpack1.h */
  -1,  /* unpack2.l */
  -1,  /* unpack2.h */
  -1,  /* unpack4.l */
  -1,  /* unpack4.h */
  -1,  /* xchg1 */
  -1,  /* xchg2 */
  -1,  /* xchg4 */
  -1,  /* xchg8 */
  -1,  /* xma.l */
  -1,  /* xma.h */
  -1,  /* xma.hu */
  -1,  /* xor */
  -1,  /* xor_i */
  -1,  /* zxt1 */
  -1,  /* zxt2 */
  -1,  /* zxt4 */
  -1,  /* alloc */
   2,  /* br */
  -1,  /* br_r */
   2,  /* brl */
  -1,  /* cmp.eq.orcm */
  -1,  /* cmp.eq.andcm */
  -1,  /* cmp.eq.and.orcm */
  -1,  /* cmp.ne */
  -1,  /* cmp.ne.unc */
  -1,  /* cmp.ne.orcm */
  -1,  /* cmp.ne.andcm */
  -1,  /* cmp.ne.and.orcm */
  -1,  /* cmp.le */
  -1,  /* cmp.le.unc */
  -1,  /* cmp.gt */
  -1,  /* cmp.gt.unc */
  -1,  /* cmp.ge */
  -1,  /* cmp.ge.unc */
  -1,  /* cmp.leu */
  -1,  /* cmp.leu.unc */
  -1,  /* cmp.gtu */
  -1,  /* cmp.gtu.unc */
  -1,  /* cmp.geu */
  -1,  /* cmp.geu.unc */
  -1,  /* cmp_z1.lt.orcm */
  -1,  /* cmp_z1.lt.andcm */
  -1,  /* cmp_z1.lt.and.orcm */
  -1,  /* cmp_z1.le.orcm */
  -1,  /* cmp_z1.le.andcm */
  -1,  /* cmp_z1.le.and.orcm */
  -1,  /* cmp_z1.gt.orcm */
  -1,  /* cmp_z1.gt.andcm */
  -1,  /* cmp_z1.gt.and.orcm */
  -1,  /* cmp_z1.ge.orcm */
  -1,  /* cmp_z1.ge.andcm */
  -1,  /* cmp_z1.ge.and.orcm */
  -1,  /* cmp_z2.lt.orcm */
  -1,  /* cmp_z2.lt.andcm */
  -1,  /* cmp_z2.lt.and.orcm */
  -1,  /* cmp_z2.le.orcm */
  -1,  /* cmp_z2.le.andcm */
  -1,  /* cmp_z2.le.and.orcm */
  -1,  /* cmp_z2.gt.orcm */
  -1,  /* cmp_z2.gt.andcm */
  -1,  /* cmp_z2.gt.and.orcm */
  -1,  /* cmp_z2.ge.orcm */
  -1,  /* cmp_z2.ge.andcm */
  -1,  /* cmp_z2.ge.and.orcm */
  -1,  /* cmp_z2.lt.and */
  -1,  /* cmp_z2.lt.or */
  -1,  /* cmp_z2.lt.or.andcm */
  -1,  /* cmp_z2.le.and */
  -1,  /* cmp_z2.le.or */
  -1,  /* cmp_z2.le.or.andcm */
  -1,  /* cmp_z2.gt.and */
  -1,  /* cmp_z2.gt.or */
  -1,  /* cmp_z2.gt.or.andcm */
  -1,  /* cmp_z2.ge.and */
  -1,  /* cmp_z2.ge.or */
  -1,  /* cmp_z2.ge.or.andcm */
  -1,  /* cmp_i.eq.orcm */
  -1,  /* cmp_i.eq.andcm */
  -1,  /* cmp_i.eq.and.orcm */
  -1,  /* cmp_i.ne */
  -1,  /* cmp_i.ne.unc */
  -1,  /* cmp_i.ne.orcm */
  -1,  /* cmp_i.ne.andcm */
  -1,  /* cmp_i.ne.and.orcm */
  -1,  /* cmp_i.le */
  -1,  /* cmp_i.le.unc */
  -1,  /* cmp_i.gt */
  -1,  /* cmp_i.gt.unc */
  -1,  /* cmp_i.ge */
  -1,  /* cmp_i.ge.unc */
  -1,  /* cmp_i.leu */
  -1,  /* cmp_i.leu.unc */
  -1,  /* cmp_i.gtu */
  -1,  /* cmp_i.gtu.unc */
  -1,  /* cmp_i.geu */
  -1,  /* cmp_i.geu.unc */
  -1,  /* cmp4.eq.orcm */
  -1,  /* cmp4.eq.andcm */
  -1,  /* cmp4.eq.and.orcm */
  -1,  /* cmp4.ne */
  -1,  /* cmp4.ne.unc */
  -1,  /* cmp4.ne.orcm */
  -1,  /* cmp4.ne.andcm */
  -1,  /* cmp4.ne.and.orcm */
  -1,  /* cmp4.le */
  -1,  /* cmp4.le.unc */
  -1,  /* cmp4.gt */
  -1,  /* cmp4.gt.unc */
  -1,  /* cmp4.ge */
  -1,  /* cmp4.ge.unc */
  -1,  /* cmp4.leu */
  -1,  /* cmp4.leu.unc */
  -1,  /* cmp4.gtu */
  -1,  /* cmp4.gtu.unc */
  -1,  /* cmp4.geu */
  -1,  /* cmp4.geu.unc */
  -1,  /* cmp4_z1.lt.orcm */
  -1,  /* cmp4_z1.lt.andcm */
  -1,  /* cmp4_z1.lt.and.orcm */
  -1,  /* cmp4_z1.le.orcm */
  -1,  /* cmp4_z1.le.andcm */
  -1,  /* cmp4_z1.le.and.orcm */
  -1,  /* cmp4_z1.gt.orcm */
  -1,  /* cmp4_z1.gt.andcm */
  -1,  /* cmp4_z1.gt.and.orcm */
  -1,  /* cmp4_z1.ge.orcm */
  -1,  /* cmp4_z1.ge.andcm */
  -1,  /* cmp4_z1.ge.and.orcm */
  -1,  /* cmp4_z2.lt.orcm */
  -1,  /* cmp4_z2.lt.andcm */
  -1,  /* cmp4_z2.lt.and.orcm */
  -1,  /* cmp4_z2.le.orcm */
  -1,  /* cmp4_z2.le.andcm */
  -1,  /* cmp4_z2.le.and.orcm */
  -1,  /* cmp4_z2.gt.orcm */
  -1,  /* cmp4_z2.gt.andcm */
  -1,  /* cmp4_z2.gt.and.orcm */
  -1,  /* cmp4_z2.ge.orcm */
  -1,  /* cmp4_z2.ge.andcm */
  -1,  /* cmp4_z2.ge.and.orcm */
  -1,  /* cmp4_z2.lt.and */
  -1,  /* cmp4_z2.lt.or */
  -1,  /* cmp4_z2.lt.or.andcm */
  -1,  /* cmp4_z2.le.and */
  -1,  /* cmp4_z2.le.or */
  -1,  /* cmp4_z2.le.or.andcm */
  -1,  /* cmp4_z2.gt.and */
  -1,  /* cmp4_z2.gt.or */
  -1,  /* cmp4_z2.gt.or.andcm */
  -1,  /* cmp4_z2.ge.and */
  -1,  /* cmp4_z2.ge.or */
  -1,  /* cmp4_z2.ge.or.andcm */
  -1,  /* cmp4_i.eq.orcm */
  -1,  /* cmp4_i.eq.andcm */
  -1,  /* cmp4_i.eq.and.orcm */
  -1,  /* cmp4_i.ne */
  -1,  /* cmp4_i.ne.unc */
  -1,  /* cmp4_i.ne.orcm */
  -1,  /* cmp4_i.ne.andcm */
  -1,  /* cmp4_i.ne.and.orcm */
  -1,  /* cmp4_i.le */
  -1,  /* cmp4_i.le.unc */
  -1,  /* cmp4_i.gt */
  -1,  /* cmp4_i.gt.unc */
  -1,  /* cmp4_i.ge */
  -1,  /* cmp4_i.ge.unc */
  -1,  /* cmp4_i.leu */
  -1,  /* cmp4_i.leu.unc */
  -1,  /* cmp4_i.gtu */
  -1,  /* cmp4_i.gtu.unc */
  -1,  /* cmp4_i.geu */
  -1,  /* cmp4_i.geu.unc */
  -1,  /* fabs */
  -1,  /* fadd */
  -1,  /* fadd.s */
  -1,  /* fadd.d */
  -1,  /* fclass.nm */
  -1,  /* fclass.nm.unc */
  -1,  /* fcmp.gt */
  -1,  /* fcmp.gt.unc */
  -1,  /* fcmp.ge */
  -1,  /* fcmp.ge.unc */
  -1,  /* fcmp.neq */
  -1,  /* fcmp.neq.unc */
  -1,  /* fcmp.nlt */
  -1,  /* fcmp.nlt.unc */
  -1,  /* fcmp.nle */
  -1,  /* fcmp.nle.unc */
  -1,  /* fcmp.ngt */
  -1,  /* fcmp.ngt.unc */
  -1,  /* fcmp.nge */
  -1,  /* fcmp.nge.unc */
  -1,  /* fcmp.ord */
  -1,  /* fcmp.ord.unc */
  -1,  /* fcvt.xuf */
  -1,  /* fcvt.xuf.s */
  -1,  /* fcvt.xuf.d */
  -1,  /* fmpy */
  -1,  /* fmpy.s */
  -1,  /* fmpy.d */
  -1,  /* fneg */
  -1,  /* fnegabs */
  -1,  /* fnmpy */
  -1,  /* fnmpy.s */
  -1,  /* fnmpy.d */
  -1,  /* fnorm */
  -1,  /* fnorm.s */
  -1,  /* fnorm.d */
  -1,  /* fpabs */
  -1,  /* fpcmp.gt */
  -1,  /* fpcmp.ge */
  -1,  /* fpcmp.ngt */
  -1,  /* fpcmp.nge */
  -1,  /* fpmpy */
  -1,  /* fpneg */
  -1,  /* fpnegabs */
  -1,  /* fpnmpy */
  -1,  /* fsub */
  -1,  /* fsub.s */
  -1,  /* fsub.d */
  -1,  /* mov_t_br */
  -1,  /* mov_f */
  -1,  /* mov */
  -1,  /* mov_i */
  -1,  /* shl_i */
  -1,  /* shr_i */
  -1,  /* shr_i.u */
  -1,  /* tbit.nz */
  -1,  /* tbit.nz.unc */
  -1,  /* tnat.nz */
  -1,  /* tnat.nz.unc */
  -1,  /* xma.lu */
  -1,  /* xmpy.l */
  -1,  /* xmpy.lu */
  -1,  /* xmpy.h */
  -1,  /* xmpy.hu */
  -1,  /* break */
   2,  /* chk.s */
  -1,  /* cmp.lt.and */
  -1,  /* cmp.lt.or */
  -1,  /* cmp.lt.or.andcm */
  -1,  /* cmp.le.and */
  -1,  /* cmp.le.or */
  -1,  /* cmp.le.or.andcm */
  -1,  /* cmp.gt.and */
  -1,  /* cmp.gt.or */
  -1,  /* cmp.gt.or.andcm */
  -1,  /* cmp.ge.and */
  -1,  /* cmp.ge.or */
  -1,  /* cmp.ge.or.andcm */
  -1,  /* cmp.lt.orcm */
  -1,  /* cmp.lt.andcm */
  -1,  /* cmp.lt.and.orcm */
  -1,  /* cmp.le.orcm */
  -1,  /* cmp.le.andcm */
  -1,  /* cmp.le.and.orcm */
  -1,  /* cmp.gt.orcm */
  -1,  /* cmp.gt.andcm */
  -1,  /* cmp.gt.and.orcm */
  -1,  /* cmp.ge.orcm */
  -1,  /* cmp.ge.andcm */
  -1,  /* cmp.ge.and.orcm */
  -1,  /* cmp4.lt.and */
  -1,  /* cmp4.lt.or */
  -1,  /* cmp4.lt.or.andcm */
  -1,  /* cmp4.le.and */
  -1,  /* cmp4.le.or */
  -1,  /* cmp4.le.or.andcm */
  -1,  /* cmp4.gt.and */
  -1,  /* cmp4.gt.or */
  -1,  /* cmp4.gt.or.andcm */
  -1,  /* cmp4.ge.and */
  -1,  /* cmp4.ge.or */
  -1,  /* cmp4.ge.or.andcm */
  -1,  /* cmp4.lt.orcm */
  -1,  /* cmp4.lt.andcm */
  -1,  /* cmp4.lt.and.orcm */
  -1,  /* cmp4.le.orcm */
  -1,  /* cmp4.le.andcm */
  -1,  /* cmp4.le.and.orcm */
  -1,  /* cmp4.gt.orcm */
  -1,  /* cmp4.gt.andcm */
  -1,  /* cmp4.gt.and.orcm */
  -1,  /* cmp4.ge.orcm */
  -1,  /* cmp4.ge.andcm */
  -1,  /* cmp4.ge.and.orcm */
  -1,  /* mov_f_ar */
  -1,  /* mov_t_ar_r */
  -1,  /* mov_t_ar_i */
  -1,  /* nop */
  -1,  /* asm */
  -1,  /* intrncall */
  -1,  /* spadjust */
  -1,  /* copy.br */
  -1,  /* begin.pregtn */
  -1,  /* end.pregtn */
  -1,  /* bwd.bar */
  -1,  /* fwd.bar */
  -1,  /* dfixup */
  -1,  /* ffixup */
  -1,  /* ifixup */
   0,  /* label */
  -1,  /* noop */
};

INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass)
{
  INT iopnd;
  const ISA_OPERAND_INFO *opinfo = ISA_OPERAND_Info(topcode);
  INT opnds = ISA_OPERAND_INFO_Operands(opinfo);
  const INT first = 0;

  for (iopnd = first; iopnd < opnds; ++iopnd) {
    const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(opinfo, iopnd);
    ISA_LIT_CLASS lit_class = ISA_OPERAND_VALTYP_Literal_Class(vtype);
    if (lit_class != LC_UNDEFINED) {
      if (lclass) *lclass = lit_class;
      return iopnd;
    }
  }

  return -1;
}

INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass)
{
  extern const mINT8 ISA_OPERAND_relocatable_opnd[];
  INT iopnd = ISA_OPERAND_relocatable_opnd[(INT)topcode];
  if (lclass && iopnd >= 0) {
    const ISA_OPERAND_INFO *opinfo = ISA_OPERAND_Info(topcode);
    const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(opinfo,iopnd);
    *lclass = (ISA_LIT_CLASS)ISA_OPERAND_VALTYP_Literal_Class(vtype);
  }
  return iopnd;
}

BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode)
{
  ISA_LIT_CLASS lclass;
  if (TOP_Immediate_Operand(topcode, &lclass) < 0) return 0;
  return ISA_LC_Value_In_Class(value, lclass);
}

INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use)
{
  INT i;
  const ISA_OPERAND_INFO *oinfo = ISA_OPERAND_Info(topcode);
  INT opnds = ISA_OPERAND_INFO_Operands(oinfo);
  for (i = 0; i < opnds; ++i) {
    ISA_OPERAND_USE this_use = ISA_OPERAND_INFO_Use(oinfo, i);
    if (this_use == use) return i;
  }
  return -1;
}

void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses)
{
  INT i;
  const ISA_OPERAND_INFO *oinfo = ISA_OPERAND_Info(topcode);
  INT opnds = ISA_OPERAND_INFO_Operands(oinfo);
  for (i = 0; i < opnds; ++i) {
    ISA_OPERAND_USE this_use = ISA_OPERAND_INFO_Use(oinfo, i);
    uses[i] = this_use;
  }
}
