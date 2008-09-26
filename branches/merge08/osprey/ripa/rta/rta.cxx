/*! \file rta.cxx
 * \brief Implementation of Print_xxx functions.
 */
#include "messg.h"
#include "rta.h"
#include <cstdio>


void Print_rta_hdr(FILE *f, const Rta_Hdr *hdr, const char *indent) {
  if (!f) f = stdout;
  if (!indent) indent = "";

  fprintf(f, "%s", indent);
  fprintf(f, "Magic:0x%016llx ", Rta_hdr_magic(hdr));
  char *type, *target;
  switch (Rta_hdr_type(hdr)) {
  case RTA_DYNAMIC:
    type = "Dynamic"; break;
  case RTA_STATIC:
    type = "Static"; break;
  default:
    type = "Unknown";
  }
  switch (Rta_hdr_target(hdr)) {
  case RTA_X8664:
    target = "X86_64"; break;
  case RTA_X8632:
    target = "X86_32"; break;
  case RTA_IA64:
    target = "IA64"; break;
  case RTA_MIPS:
    target = "MIPS"; break;
  default:
    target = "Unknown";
  }
  fprintf(f, "%s, ", type);
  fprintf(f, "%s, ", target);
  fprintf(f, "Offset 0x%x, ", Rta_hdr_pu_off(hdr));
  fprintf(f, "NumPUs %d, ", Rta_hdr_pu_num(hdr));
  fprintf(f, "flags 0x%4x\n", Rta_hdr_flags(hdr));
}

/*!
 * \brief Dump an Rta_Pu to the given file descriptor.
 *
 * \param f       File in which the data is printed. Pass NULL for stdout.
 * \param pu      Pointer to the Rta_Pu structure.
 * \param indent  String that will be inserted at the beginning of each line.
 *                Pass NULL for empty string.
 * \relatesalso   Rta_Pu
 */

void Print_rta_pu_title(FILE *f, const char *indent)
{
  if (!f) f = stdout;
  if (!indent) indent = "";

  fprintf(f, "%s%16s", indent, "Address");  
  fprintf(f, "%7s", " Size");
  fprintf(f, "%7s", "Flags");
  fprintf(f, "%6s", "MRegs");
  fprintf(f, "%6s", "Link");
  fprintf(f, " BB(%5s", "base");
  fprintf(f, "%6s", "Num");
  fprintf(f, "%6s", "Entry");
  fprintf(f, "%6s", "Exits");
  fprintf(f, "%11s","BbOff");
  fprintf(f, "%11s","CfgOff");
  fprintf(f, "%8s", " Name )\n");
}

void Print_rta_pu(FILE *f, const Rta_Pu *pu, const char *indent) {
  if (!f) f = stdout;
  if (!indent) indent = "";

  FmtAssert(Rta_pu_maxregs(pu) < 200, ("max regs too big %d\n", Rta_pu_maxregs(pu)));

  fprintf(f, "%s%016llx ", indent, Rta_pu_start(pu));
  fprintf(f, "0x%04x 0x%04x   ", Rta_pu_size(pu), Rta_pu_flags(pu));
  fprintf(f, "%3d %5d    ", Rta_pu_maxregs(pu),  Rta_pu_link(pu));
  fprintf(f, "%5d ", Rta_pu_bb_begin(pu));
  fprintf(f, "%5d %5d %5d", Rta_pu_bb_num(pu), Rta_pu_entry(pu), Rta_pu_exit(pu));
  fprintf(f, " 0x%08x", Rta_pu_bb_off(pu));
  fprintf(f, " 0x%08x", Rta_pu_cfg_off(pu));
  fprintf(f, " %4x\n",  Rta_pu_name(pu));
}

void Print_rta_bb_title(FILE *f, const char *indent) {
  if (!f) f = stdout;
  if (!indent) indent = "";
  fprintf(f, "%s%s", "              Start", indent);
  fprintf(f, "%10s","Offset");
  fprintf(f, "%11s","Size");
  fprintf(f, "%6s", "#Ops");
  fprintf(f, "%6s", "Preds");
  fprintf(f, "%6s", "Succs");
  fprintf(f, "%7s\n", "Flags");
}

/*!
 * \brief Dump an Rta_Bb to the given file descriptor.
 *
 * \param f       File in which the data is printed. Pass NULL for stdout.
 * \param bb      Pointer to the Rta_Bb structure.
 * \param indent  String that will be inserted at the beginning of each line.
 *                Pass NULL for empty string.
 * \relatesalso   Rta_Bb
 */
void Print_rta_bb(FILE *f, uint64_t pc, const Rta_Bb *bb, int i, const char *indent) {
  if (!f) f = stdout;
  if (!indent) indent = "";

  fprintf(f, "%s[%5d] ", indent, i);
  fprintf(f, "0x%08x ", Rta_bb_start(bb)+pc);
  fprintf(f, "0x%08x ", Rta_bb_op_off(bb));
  fprintf(f, "0x%08x ", Rta_bb_size(bb));
  fprintf(f, "%5d ", Rta_bb_op_num(bb));
  fprintf(f, "%5d ", Rta_bb_plink(bb));
  fprintf(f, "%5d ", Rta_bb_slink(bb));
  fprintf(f, "0x%04x\n", Rta_bb_flags(bb));
}

/*!
 * \brief Dump an Rta_Idx_Ent to the given file descriptor.
 *
 * \param f       File in which the data is printed. Pass NULL for stdout.
 * \param ent     Pointer to the Rta_Idx_Ent structure.
 * \param indent  String that will be inserted at the beginning of each line.
 *                Pass NULL for empty string.
 * \relatesalso   Rta_Bb
 */
void Print_rta_idx_ent(FILE *f, const Rta_Idx_Ent *ent, const char *indent) {
  if (!f) f = stdout;
  if (!indent) indent = "";

  fprintf(f, "%s", indent);
  fprintf(f, "PC range [0x%016llx, 0x%016llx), ", Rta_idx_ent_start(ent)
      , Rta_idx_ent_start(ent) + Rta_idx_ent_size(ent));
  fprintf(f, "Data Offset %u\n", Rta_idx_ent_data_off(ent));
}

#ifdef RTA_TEST

int main() {
  // useful only on 32-bit machine
  printf("sizeof(Rta_Hdr) = %d\n", sizeof(Rta_Hdr));
  printf("sizeof(Rta_Pu) = %d\n", sizeof(Rta_Pu));
  printf("sizeof(Rta_Bb) = %d\n", sizeof(Rta_Bb));
  FmtAssert((sizeof(Rta_Hdr) % 8 == 0), ("Size of Rta_Hdr should align to 8 bytes."));
  FmtAssert((sizeof(Rta_Pu) % 8 == 0), ("Size of Rta_Pu should align to 8 bytes."));
  FmtAssert((sizeof(Rta_Bb) % 8 == 0), ("Size of Rta_Bb should align to 8 bytes."));

  Rta_Hdr hdr = {V_1_0, RTA_STATIC, RTA_MIPS, 4, 99, 97};
//  Print_rta_hdr(NULL, NULL, NULL);
  Print_rta_hdr(NULL, &hdr, "++ ");
  Rta_hdr_set_magic(&hdr, V_1_0);
  Rta_hdr_set_target(&hdr, (RTA_TARGET)100);
  Print_rta_hdr(NULL, &hdr, NULL);
  printf("\n");

  Rta_Pu pu = {1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233};
  Print_rta_pu(NULL, &pu, "Fibonacci: ");
  Rta_pu_set_exit(&pu, -Rta_pu_exit(&pu));
  Rta_pu_set_flags(&pu, -Rta_pu_flags(&pu));
  Rta_pu_set_link(&pu, -Rta_pu_link(&pu));
//  Rta_pu_set_maxregs(&pu, -Rta_pu_maxregs(pu));
  Print_rta_pu(NULL, &pu, "Neg: ");
  printf("\n");

  Rta_Bb bb = {429, 132, 42, 14, 5, 2, 1};
  Print_rta_bb(NULL, 0xfedc000000000000LL, &bb, 0, "Catalan: ");
  printf("\n");

  Rta_Idx_Ent ent = {0x8765432112345678LL, 0x100, 5};
  Print_rta_idx_ent(NULL, &ent, NULL);

  printf("An assertion failure of null pointer should follow.\n");
  Rta_Hdr *c = NULL;
  Rta_hdr_set_magic(c, V_1_0);
}

#endif // RTA_TEST
