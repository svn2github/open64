/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/

#ifndef disp_instr_INCLUDED
#define disp_instr_INCLUDED

#include "bb.h"


     
class Repl_Size16_Instr {

private:
   OP* _cur_op;
   
public:
  Repl_Size16_Instr (OP* op) { _cur_op = op; }
  ~Repl_Size16_Instr () {};
  
  void Set_OP (OP *op) { _cur_op = op; }
  OP* Get_OP (void) { return _cur_op;}
  
  BOOL Replace_ResEqOper_OP (BOOL either);
  BOOL Replace_Restricted_Imm_OP (void);
  BOOL Replace_LdSt_OP (void);
  BOOL Replace_Direct_OP (void);
  BOOL Replace_NOP (void);
  BOOL Replace_ABS(void);
  BOOL Replace_ADDI (void);
  BOOL Replace_LDU(void);
  BOOL Replace_BR(void);

  inline void Replace_CurOP(OP *newop); 
  inline BOOL Replaceable_TOP_Imm( TOP top, INT32 imm);
  inline BOOL Tn_Is_Reloc_TN(TN *tn);
  void Replace_OP (void);
};

extern void Replace_Size16_Instr (void);
extern void Guarantee_Paired_instr16 (void);
extern void Replace_Size16_Instr(BB *bb) ;
extern void Check_QuadWord_Boundary(void);
extern void Check_QuadWord_Boundary_Absolute(void) ;
extern void Check_Br16(void);
extern void SL1_patch(void);

typedef struct MvtcInfor {
    UINT32 cr_idx;
    UINT32 pc;	
  } MVTCInfor;
#endif // disp_instr_INCLUDED

