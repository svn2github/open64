#include "targ_isa_subset.h"
#include "targ_isa_registers.h"

const ISA_REGISTER_CLASS_INFO ISA_REGISTER_CLASS_info[] = {
  { 0x00,   0,  -1,  0, 0, 0, "UNDEFINED", { 0 } },
  { 0x01,   0, 127, 64, 1, 0, "integer",
    { "r0", "gp", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", 
      "r11", "sp", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", 
      "r21", "r22", "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", 
      "r31", "r32", "r33", "r34", "r35", "r36", "r37", "r38", "r39", "r40", 
      "r41", "r42", "r43", "r44", "r45", "r46", "r47", "r48", "r49", "r50", 
      "r51", "r52", "r53", "r54", "r55", "r56", "r57", "r58", "r59", "r60", 
      "r61", "r62", "r63", "r64", "r65", "r66", "r67", "r68", "r69", "r70", 
      "r71", "r72", "r73", "r74", "r75", "r76", "r77", "r78", "r79", "r80", 
      "r81", "r82", "r83", "r84", "r85", "r86", "r87", "r88", "r89", "r90", 
      "r91", "r92", "r93", "r94", "r95", "r96", "r97", "r98", "r99", "r100", 
      "r101", "r102", "r103", "r104", "r105", "r106", "r107", "r108", 
      "r109", "r110", "r111", "r112", "r113", "r114", "r115", "r116", 
      "r117", "r118", "r119", "r120", "r121", "r122", "r123", "r124", 
      "r125", "r126", "r127" } },
  { 0x01,   0, 127, 82, 1, 0, "float",
    { "f0", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", 
      "f11", "f12", "f13", "f14", "f15", "f16", "f17", "f18", "f19", "f20", 
      "f21", "f22", "f23", "f24", "f25", "f26", "f27", "f28", "f29", "f30", 
      "f31", "f32", "f33", "f34", "f35", "f36", "f37", "f38", "f39", "f40", 
      "f41", "f42", "f43", "f44", "f45", "f46", "f47", "f48", "f49", "f50", 
      "f51", "f52", "f53", "f54", "f55", "f56", "f57", "f58", "f59", "f60", 
      "f61", "f62", "f63", "f64", "f65", "f66", "f67", "f68", "f69", "f70", 
      "f71", "f72", "f73", "f74", "f75", "f76", "f77", "f78", "f79", "f80", 
      "f81", "f82", "f83", "f84", "f85", "f86", "f87", "f88", "f89", "f90", 
      "f91", "f92", "f93", "f94", "f95", "f96", "f97", "f98", "f99", "f100", 
      "f101", "f102", "f103", "f104", "f105", "f106", "f107", "f108", 
      "f109", "f110", "f111", "f112", "f113", "f114", "f115", "f116", 
      "f117", "f118", "f119", "f120", "f121", "f122", "f123", "f124", 
      "f125", "f126", "f127" } },
  { 0x01,   0,  63,  1, 0, 1, "predicate",
    { "p0", "p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "p10", 
      "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", 
      "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", 
      "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", 
      "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", 
      "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", 
      "p61", "p62", "p63" } },
  { 0x01,   0,   7, 64, 0, 0, "branch",
    { "b0", "b1", "b2", "b3", "b4", "b5", "b6", "b7" } },
  { 0x01,   0, 127, 64, 0, 0, "application",
    { "ar.k0", "ar.k1", "ar.k2", "ar.k3", "ar.k4", "ar.k5", "ar.k6", "ar.k7", 
      "ar8", "ar9", "ar10", "ar11", "ar12", "ar13", "ar14", "ar15", "ar.rsc", 
      "ar.bsp", "ar.bspstore", "ar.rnat", "ar20", "ar.fcr", "ar22", "ar23", 
      "ar.eflag", "ar.csd", "ar.ssd", "ar.cflg", "ar.fsr", "ar.fir", "ar.fdr", 
      "ar31", "ar.ccv", "ar33", "ar34", "ar35", "ar.unat", "ar37", "ar38", 
      "ar39", "ar.fpsr", "ar41", "ar42", "ar43", "ar.itc", "ar45", "ar46", 
      "ar47", "ar48", "ar49", "ar50", "ar51", "ar52", "ar53", "ar54", 
      "ar55", "ar56", "ar57", "ar58", "ar59", "ar60", "ar61", "ar62", 
      "ar63", "ar.pfs", "ar.lc", "ar.ec", "ar67", "ar68", "ar69", "ar70", 
      "ar71", "ar72", "ar73", "ar74", "ar75", "ar76", "ar77", "ar78", 
      "ar79", "ar80", "ar81", "ar82", "ar83", "ar84", "ar85", "ar86", 
      "ar87", "ar88", "ar89", "ar90", "ar91", "ar92", "ar93", "ar94", 
      "ar95", "ar96", "ar97", "ar98", "ar99", "ar100", "ar101", "ar102", 
      "ar103", "ar104", "ar105", "ar106", "ar107", "ar108", "ar109", "ar110", 
      "ar111", "ar112", "ar113", "ar114", "ar115", "ar116", "ar117", "ar118", 
      "ar119", "ar120", "ar121", "ar122", "ar123", "ar124", "ar125", "ar126", 
      "ar127" } },
  { 0x01,   0, 127, 64, 0, 0, "control",
    { "cr.dcr", "cr.itm", "cr.iva", "cr3", "cr4", "cr5", "cr6", "cr7", 
      "cr.pta", "cr9", "cr10", "cr11", "cr12", "cr13", "cr14", "cr15", 
      "cr.ipsr", "cr.isr", "cr18", "cr.iip", "cr.ifa", "cr.itir", "cr.iipa", 
      "cr.ifs", "cr.iim", "cr.iha", "cr26", "cr27", "cr28", "cr29", "cr30", 
      "cr31", "cr32", "cr33", "cr34", "cr35", "cr36", "cr37", "cr38", 
      "cr39", "cr40", "cr41", "cr42", "cr43", "cr44", "cr45", "cr46", 
      "cr47", "cr48", "cr49", "cr50", "cr51", "cr52", "cr53", "cr54", 
      "cr55", "cr56", "cr57", "cr58", "cr59", "cr60", "cr61", "cr62", 
      "cr63", "cr.lid", "cr.ivr", "cr.tpr", "cr.eoi", "cr.irr0", "cr.irr1", 
      "cr.irr2", "cr.irr3", "cr.itv", "cr.pmv", "cr.cmcv", "cr75", "cr76", 
      "cr77", "cr78", "cr79", "cr.lrr0", "cr.lrr1", "cr82", "cr83", "cr84", 
      "cr85", "cr86", "cr87", "cr88", "cr89", "cr90", "cr91", "cr92", 
      "cr93", "cr94", "cr95", "cr96", "cr97", "cr98", "cr99", "cr100", 
      "cr101", "cr102", "cr103", "cr104", "cr105", "cr106", "cr107", "cr108", 
      "cr109", "cr110", "cr111", "cr112", "cr113", "cr114", "cr115", "cr116", 
      "cr117", "cr118", "cr119", "cr120", "cr121", "cr122", "cr123", "cr124", 
      "cr125", "cr126", "cr127" } },
};

mUINT8 ISA_REGISTER_CLASS_info_index[] = {
  0,  /* ISA_REGISTER_CLASS_UNDEFINED */
  1,  /* ISA_REGISTER_CLASS_integer */
  2,  /* ISA_REGISTER_CLASS_float */
  3,  /* ISA_REGISTER_CLASS_predicate */
  4,  /* ISA_REGISTER_CLASS_branch */
  5,  /* ISA_REGISTER_CLASS_application */
  6,  /* ISA_REGISTER_CLASS_control */
};

const ISA_REGISTER_SUBCLASS_INFO ISA_REGISTER_SUBCLASS_info[] = {
  { "UNDEFINED", ISA_REGISTER_CLASS_UNDEFINED, 0, { 0 }, { 0 } },
  { "addl", ISA_REGISTER_CLASS_integer, 4,
    { 0, 1, 2, 3 },
    { 0 } },
  { "ar_i", ISA_REGISTER_CLASS_application, 80,
    { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
      64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 
      80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 
      96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 
      110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
      123, 124, 125, 126, 127 },
    { 0 } },
  { "ar_m", ISA_REGISTER_CLASS_application, 80,
    { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 
      19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 
      35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 
      51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 112, 113, 114, 
      115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127 },
    { 0 } },
  { "ec", ISA_REGISTER_CLASS_application, 1,
    { 66 },
    { 0 } },
  { "lc", ISA_REGISTER_CLASS_application, 1,
    { 65 },
    { 0 } },
};

void ISA_REGISTER_Initialize(void)
{
  INT rc;
  INT mask = 1 << (INT)ISA_SUBSET_Value;
  for (rc = ISA_REGISTER_CLASS_MIN; rc <= ISA_REGISTER_CLASS_MAX; ++rc) {
    INT i = ISA_REGISTER_CLASS_info_index[rc];
    const ISA_REGISTER_CLASS_INFO *info = &ISA_REGISTER_CLASS_info[i];
    while ((info->isa_mask & mask) == 0) ++info, ++i;
    ISA_REGISTER_CLASS_info_index[rc] = i;
  }
}
