/*
 *  File: sl1instr.h
 * 
 *  Copyright (c) 2006 Beijing SimpLight Nanoelectornics, Ltd.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without modification, 
 *  are permitted provided that the following conditions are met:
 *
 *  1.Redistributions of source code must retain the above copyright notice, 
 *    this list of conditions and the following disclaimer. 
 *  2.Redistributions in binary form must reproduce the above copyright notice, 
 *    this list of conditions and the following disclaimer in the documentation 
 *    and/or other materials provided with the distribution. 
 *
 *  THIS SOFTWARE IS PROVIDED BY THE FREEBSD PROJECT ``AS IS'' AND ANY EXPRESS 
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
 *  IN NO EVENT SHALL THE FREEBSD PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 *  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
 *  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 *  OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef SL1INSTR_H_
#define SL1INSTR_H_

#include "defs.h"
#include "sl1instrtable.h"
#include "sl1regdefs.h"
#include "binstr.h"

#define CORE_ID(id) ((_id&0xffffff00)==0)
#define C2_ID(id) ((_id&0xffffff00)==0x200)
#define C3_ID(id) ((_id&0xffffff00)==0x300)

typedef std::list<UINT16> RegList;
typedef std::list<UINT16>::iterator RegListIter;

extern STRING Instr_Group_Name[];

enum EGROUP_ID {
	EGROUP_G0 = 0,
	EGROUP_G1 = 1,
	EGROUP_G2 = 2,
	EGROUP_C3 = 4,
	EGROUP_C4 = 5,
	EGROUP_C2 = 0x38,
	EGROUP_TOP = 0x10,
	EGROUP_TOP_16 = 0x20,
	EGROUP_INVALID = 0xff
};


class SL1Instr : public BaseInstr {

	private:
	//bit field
	struct Reg _ctrl1;
	struct Reg _ctrl2;
	struct Reg _ctrlcore;
	struct Reg _reg0;
	struct Reg _reg1;
	struct Reg _reg2;
	
	WORD _imm_b16;  //>=16bits, imm16, offset, instr_index
	WORD _imm_s16;  //<16bits, imm10, imm5, imm4
	UBYTE _modf15_11;  // pos
	UBYTE _modf10_6;  // width
	UBYTE _modf6_6; //unsigned_flag
	UBYTE _modf20_17; //loop_index

	SL1ExecPtr _exec;
	SL1DisasmPtr _print;
	SL1EINSTR_GR _group;
	
	//bit field
	struct Reg _sreg0;
	struct Reg _sreg0p;//pair acc
	struct Reg _sreg1;
	struct Reg _sreg2;
	//ADDR       _ea;    // for fftld/fftst ea is hidden

	UBYTE _modf10_7;    // b_mode
	UBYTE _modf23_21;  //acm 
	UBYTE _modf17_15;  // am1
	UBYTE _modf11_9;   // am2, dtype
	UBYTE _modf10_9;    // mode_hi_lo,mac_mode
	UBYTE _modf8_8;    // N
	UBYTE _modf22_22;  //c_flag

	public:
	SL1Instr() : BaseInstr(){
		init();
	}
	
	BOOL isCore(void) { return CORE_ID(_id); }
	BOOL isC3(void) { return C3_ID(_id); }
	
	UINT32 rd(void) { return _reg0.index; }
	void rd(UINT32 r) {  //write only
		_reg0.index = r; 
	}
	void rd_rs(UINT32 r) {  //read and write (16bit instruction)
		_reg0.index = r; 
	}
		
	UINT32 cd(void) { return _ctrl1.index; }
	void cd(UINT32 r) { 
		_ctrl1.index = r; 
	}
	//rs0
	UINT32 rs0(void) { return _reg0.index; }
	void rs0(UINT32 r) { 
		_reg0.index = r; 
	}
	//rs1
	UINT32 rs1(void) { return _reg1.index; }
	void rs1(UINT32 r) { 
		_reg1.index = r; 
	}
	
	UINT32 rs2(void) { return _reg2.index; }
	void rs2(UINT32 r)   { 
		_reg2.index = r; 
	}	
	UINT32 cs1(void) { return _ctrl1.index; }
	void cs1(UINT32 r) { 
		_ctrl1.index = r; 
	}
	
	UINT32 cscore(void) { return _ctrlcore.index; }
	void cscore(UINT32 r) { 
		_ctrlcore.index = r; 
	}

	WORD imm16(void) { return _imm_b16; }
	void imm16(WORD imm) { _imm_b16 = imm; }
	WORD offset(void) { return _imm_b16; }
	void offset(WORD off) { _imm_b16 = off; }
	WORD instr_index(void) { return _imm_b16; }
	void instr_index(WORD index) { _imm_b16 = index; }
	UINT sysc_id(void) { return _imm_b16; }
	void sysc_id(UINT id) { _imm_b16 = id; }
	UINT instr_offset(void) { return _imm_b16; }
	void instr_offset(UINT cnt) { _imm_b16 = cnt; }
		
	WORD imm10(void) { return _imm_s16; }
	void imm10(WORD imm) { _imm_s16 = imm; }
	WORD imm4(void) { return _imm_s16; }
	void imm4(WORD imm) { _imm_s16 = imm; }
	WORD imm5(void) { return _imm_s16; }
	void imm5(WORD imm) { _imm_s16 = imm; }	
	WORD imm9(void) { return _imm_s16; }
	void imm9(WORD imm) { _imm_s16 = imm; }
		
	UBYTE pos(void) { return _modf15_11; }
	void pos(UBYTE p) { _modf15_11 = p; }

	
	UBYTE width(void) { return _modf10_6; }
	void width(UBYTE w) { _modf10_6 = w; }	

	UBYTE unsigned_flag(void) { return _modf6_6;}
	void unsigned_flag(UBYTE f){ _modf6_6 = f;}		

	UBYTE loop_index(void) { return _modf20_17;}
	void loop_index(UBYTE i) { _modf20_17 = i;}
	
	void getRegList(RegList* destList, RegList* srcList);
	
	void init(SL1InstrTableEntry* entry, WORD raw) {
		_mn = entry->mn();
		_id = entry->id();
		_group = entry->group();
		_exec = entry->exec();
		_print =  entry->print();
		_rawbits = raw;
	}
	void init() {
		BaseInstr::init();		
	}
	
	SL1ExecPtr exec(void) { return _exec; }
	SL1DisasmPtr print(void) { return _print; }
	SL1EINSTR_GR group(void) { return _group; }	

	UINT32 acc(void) { return _sreg0.index; }
	void acc(UINT32 r) {  //read acc only
		_sreg0.index = r; 
	}

	UINT32 acc_pair(void) { return _sreg0.index; }
	void acc_pair(UINT32 r) {  //read acc only
		_sreg0.index = r; 
		_sreg0p.index = r+1; 		
	}	

	UINT32 sd(void) { return _sreg0.index; }
	void sd(UINT32 r) { 
		_sreg0.index = r; 
	}

	UINT32 as1(void) { return _sreg1.index; }
	void as1(UINT32 r)  { 
		_sreg1.index = r; 
	}
	
	UINT32 ss1(void) { return _sreg1.index; }
	void ss1(UINT32 r) { 
		_sreg1.index = r; 
	}
	
	UINT32 accs1(void) { return _sreg1.index; }
	void accs1(UINT32 r) { 
		_sreg1.index = r; 
	}
	
	UINT32 as2(void) { return _sreg2.index; }
	void as2(UINT32 r)  { 
		_sreg2.index = r; 
	}

	UBYTE mode(void) { return _modf10_9; }
	void mode(UBYTE m) { _modf10_9 = m; }	
	UBYTE bsel(void) { return _modf10_9; }
	void bsel(UBYTE b) { _modf10_9 = b; }
	
	UBYTE acm(void) { return _modf23_21; }
	void acm(UBYTE a) { _modf23_21 = a; }
	
	UBYTE c_flag(void) { return _modf22_22; }
	void c_flag(UBYTE c) { _modf22_22 = c; }
	
	UBYTE am1(void) { return _modf17_15; }
	void am1(UBYTE a) { _modf17_15 = a; }

	UBYTE am2(void) { return _modf11_9; }
	void am2(UBYTE a) { _modf11_9 = a; }
	UBYTE dtype(void) { return _modf11_9; }
	void dtype(UBYTE d) { _modf11_9 = d; }
	
	UBYTE N(void) { return _modf8_8; }
	void N(UBYTE n) { _modf8_8 = n; }
	
	UBYTE M(void) { return _modf6_6; }
	void M(UBYTE n) { _modf6_6 = n; }
	
	UBYTE ffe_mode(void) { return _modf10_6; }
	void ffe_mode(UBYTE n) { _modf10_6 = n; }
	
	INT imm_hi(void) { return _modf15_11; }
	void imm_hi(INT m) { _modf15_11 = m; }		

	INT imm_lo(void) { return _modf10_6; }
	void imm_lo(INT m) { _modf10_6 = m; }	
	
	UBYTE b_mode(void) { return _modf10_7; }
	void b_mode(UBYTE m) { _modf10_7 = m; }	
	
	UBYTE mac_mode(void) { return _modf10_9; }
	void mac_mode(UBYTE m) { _modf10_9 = m; }
	
	pair<INT, INT> gprRegPort();
	pair<INT, INT> ctrlRegPort();
	pair<INT, INT> addrRegPort();
	pair<INT, INT> addrUpdateRegPort();
	pair<INT, INT> accPort();

	
};

#endif /*SL1INSTR_H_*/


