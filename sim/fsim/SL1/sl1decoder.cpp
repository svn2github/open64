/*
 *  File: sl1decoder.cpp
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

#include "sl1decoder.h"
#include "sl1instr.h"
#include "sl1reg.h"
#include "sl1mmu.h"
#include "sl1instrtable.h"
#include "sl1instrid.h"

SL1Decoder::SL1Decoder() : BaseDecoder<SL1Instr>(TRUE) { 
	setMode(SL1_INSTR_MODE); 
}

SL1Decoder::SL1Decoder(BOOL b) : BaseDecoder<SL1Instr>(b) { 
	setMode(SL1_INSTR_MODE); 
}


/* sl1 core instr decoder*/

UINT32 SL1Decoder::decode(SL1Instr* instr,  ADDR pc, WORD raw) {
	SL1InstrTableEntry* entry;
	UINT size = 0;
	UBYTE gr = EGROUP_INVALID;
	union {
		WORD rawbits;
		struct {
			unsigned lv2 : 6;
			unsigned na : 10;
			unsigned lv2s : 5;
			unsigned lv2g1 : 5;
			unsigned top :6;
		} bits;
		struct {
			unsigned na : 23;
			unsigned lv2 : 6;
			unsigned top : 3;
		} c2bits;			
	} rb;	
	rb.rawbits = raw;
	gr = getGroupID(rb.bits.top);
	
	if(IS_CORE_INSTR16(gr)) {
		if((pc&WORD_ALIGN_MASK)==0) {
			raw <<= INT16_BIT;
			rb.rawbits = raw;
			gr = getGroupID(rb.bits.top);
			if(assertInvalidInstr() == TRUE) {
				AppFatal((IS_CORE_INSTR16(gr)), ("Decoder: Invalid 16 bits instruction (pc=%08x, raw=%08x)", pc, raw));
			} else {
				if (IS_CORE_INSTR16(gr) == 0) {
					entry = &Invalid_Table[0];
					instr->init(entry, raw);
					size = (this->*(entry->decode()))(instr, 1);
					instr->instrsize(size);
					instr->pc(pc);
					return size;
				}
			}
		} else {
			raw &= UPPER_HWORD_DATA_MASK;
		}
	}

	switch (gr) {
		case EGROUP_TOP:
		case EGROUP_TOP_16:
			entry = &Top_Table[rb.bits.top];
			break;
		case EGROUP_G0:
			entry = &G0_Table[rb.bits.lv2];
			break;
		case EGROUP_G1:
			entry = &G1_Table[rb.bits.lv2g1];
			break;		
		case EGROUP_G2:
			entry = &G2_Table[rb.bits.lv2s];
			break;	
		case EGROUP_C2:
			entry = &C2_Table[rb.c2bits.lv2];
			break;					
		case EGROUP_C3:
			entry = &C3_Table[rb.bits.lv2];
			break;		
		default:
			if(assertInvalidInstr()==TRUE) {
				AppFatal((0), ("Decoder: Invalid instruction group (pc=%08x, raw=%08x, gr=%d)", pc, raw, gr));
			} else {
				entry = &Invalid_Table[0];
			}
			break;
	}
	
	if(entry->enable(mode())) {
		instr->init(entry, raw);
		size = (this->*(entry->decode()))(instr, 0);
		instr->instrsize(size);
		instr->pc(pc);
	} else {
		if(assertInvalidInstr() == TRUE) {
			AppFatal((0), ("Decoder: Invalid instruction group (pc=%08x, raw=%08x, gr=%d)", pc, raw, gr));
		} else {
			instr->init(entry, raw);
			size = (this->*(entry->decode()))(instr, 0);
			instr->instrsize(size);
			instr->pc(pc);
		}
	}
	return size;
}


UINT32 SL1Decoder::decodeCore01_01 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed imm : 16;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.imm;
	instr->imm16(simm);
	return INT32_BYTE;	
}

//, stb, sth, stw
UINT32 SL1Decoder::decodeCore01_02 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed offset : 16;
			unsigned rs1 : 5;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rs0(rb.bits.rs0);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.offset;
	instr->offset(simm);
	return INT32_BYTE;	
}

//, ldb, ldh, ldub, lduh, ldw
UINT32 SL1Decoder::decodeCore01_03 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed offset : 16;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.offset;
	instr->offset(simm);
	return INT32_BYTE;
}

//, jp, jp.lnk
UINT32 SL1Decoder::decodeCore01_04 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned instr_index : 26;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.instr_index;
	instr->instr_index(uimm);
	return INT32_BYTE;	
}

//, mvup.i
UINT32 SL1Decoder::decodeCore01_05 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed imm16 : 16;
			unsigned na : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	simm = rb.bits.imm16;
	instr->imm16(simm);
	return INT32_BYTE;	
}

//, and.i, nor.i, or.i, xor.i
UINT32 SL1Decoder::decodeCore01_06 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned imm16 : 16;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.imm16;
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	instr->imm16(uimm);
	return INT32_BYTE;	
}

//, br.eq, br.ne
UINT32 SL1Decoder::decodeCore01_07 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed offset : 16;
			unsigned rs1 : 5;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rs0(rb.bits.rs0);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.offset;
	instr->offset(simm);
	return INT32_BYTE;	
}

//, add16, and16, mv16, or16, shll16, sub16, xor16
UINT32 SL1Decoder::decodeCore02_01 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rd_rs(rb.bits.rd); //rd will be read as well
	return INT16_BYTE;	
}

//, mv16.i
UINT32 SL1Decoder::decodeCore02_02 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned imm5 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd); 
	uimm = rb.bits.imm5;
	instr->imm5(rb.bits.imm5);	
	return INT16_BYTE;	
}

//, br16.eqz, br16.nez
UINT32 SL1Decoder::decodeCore02_03 (SL1Instr* instr, UINT meta) {
	 union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned offset : 5;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs0(rb.bits.rs0);
	instr->offset(rb.bits.offset);
	return INT16_BYTE;	
}

//, add16.i, and16.i, or16.i, shra16.i, shll16.i, shrl16.i, sub16.i, xor16.i
UINT32 SL1Decoder::decodeCore02_05 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned imm5 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.imm5;
	instr->rd_rs(rb.bits.rd); //rd will be read as well
	instr->imm5(uimm);	
	return INT16_BYTE;	
}

//, mvfc16
UINT32 SL1Decoder::decodeCore02_06 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned cs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->cs1(rb.bits.cs1);	
	return INT16_BYTE;	
}

//, mvtc16
UINT32 SL1Decoder::decodeCore02_07 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned rs1 : 5;
			unsigned cd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->cd(rb.bits.cd); 
	instr->rs1(rb.bits.rs1);
	return INT16_BYTE;	
}

//, ldw16
UINT32 SL1Decoder::decodeCore02_08 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd); 
	instr->rs1(rb.bits.rs1);
	return INT16_BYTE;	
}

//, stw16
UINT32 SL1Decoder::decodeCore02_09 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned rs1 : 5;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs0(rb.bits.rs0); 
	instr->rs1(rb.bits.rs1);	
	return INT16_BYTE;	
}

//, pop16
UINT32 SL1Decoder::decodeCore02_10 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned uimm : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.uimm;
	instr->rd(rb.bits.rd);
	instr->rs1(INDEX_REG_SP);	
	instr->imm5(uimm);	
	return INT16_BYTE;	
}

//, push16
UINT32 SL1Decoder::decodeCore02_11 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned uimm : 5;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rs1(INDEX_REG_SP);	
    instr->rs0(rb.bits.rs0);
	uimm = rb.bits.uimm;
	instr->imm5(rb.bits.uimm);	
	return INT16_BYTE;	
}

//, nop16, jr16, jr16.lnk
UINT32 SL1Decoder::decodeCore03_01 (SL1Instr* instr, UINT meta) {
	switch(instr->id()) {
		case jr16_id: 
			instr->cs1(ECR_JA);
			break;
		case jr16lnk_id: 
			instr->cscore(ECR_JA);
			instr->cd(ECR_RA);
			break;
		default:
			break;
	}		
	return INT16_BYTE;	
}

//, abs16, inv16, ldub16.rs, lduh16.rs
UINT32 SL1Decoder::decodeCore03_02 (SL1Instr* instr, UINT meta) {
    union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned op : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd_rs(rb.bits.rd); 
	return INT16_BYTE;		
}

//, add16.sp
UINT32 SL1Decoder::decodeCore03_03 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned na : 16;
			unsigned op : 5;
			signed imm5 : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	simm = rb.bits.imm5;
	instr->imm5(simm); //rd will be read as well
	instr->rd_rs(INDEX_REG_SP);
	return INT16_BYTE;	
}

//, rete16, ret16
UINT32 SL1Decoder::decodeCore03_04 (SL1Instr* instr, UINT meta) {
	switch(instr->id()) {
		case ret16_id:
			instr->cs1(ECR_RA);
			break;
		default:
			break;
	}		
	return INT16_BYTE;	
}

//, nop
UINT32 SL1Decoder::decodeCore04_01 (SL1Instr* instr, UINT meta) {
	return INT32_BYTE;
}

//, add, and, nor, or, setlt, setltu, shll, shra, shrl, sub, xor
UINT32 SL1Decoder::decodeCore04_02 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	return INT32_BYTE;	
}

//, depb, extrb, extrbu
UINT32 SL1Decoder::decodeCore04_03 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned width : 5;
			unsigned pos : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	instr->pos(rb.bits.pos);
	instr->width(rb.bits.width);
	return INT32_BYTE;		
}

//, mc.r.eq, mc.r.ne, mc.r.gt, mc.r.ge, mc.r.lt, mc.r.le, mc.zc.eq, mc.zc.ne, mc.zc.gt, mc.zc.ge, mc.zc.lt, mc.zc.le, mc.z.eq, mc.z.ne, mc.z.gt, mc.z.ge, mc.z.lt, mc.z.le, mc.zn.eq, mc.zn.ne, mc.zn.gt, mc.zn.ge, mc.zn.lt, mc.zn.le
UINT32 SL1Decoder::decodeCore04_04 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned unsigned_flag : 1;
			unsigned na : 4;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->unsigned_flag(rb.bits.unsigned_flag);
	instr->rs2(rb.bits.rs2);
	instr->rs1(rb.bits.rs1);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;	
}

//, mc.abs
UINT32 SL1Decoder::decodeCore04_05 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 10;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;	
}

//, mvfc
UINT32 SL1Decoder::decodeCore04_06 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 10;
			unsigned cs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->cs1(rb.bits.cs1);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;	
}

//, mvtc
UINT32 SL1Decoder::decodeCore04_08 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 10;
			unsigned rs1 : 5;
			unsigned cd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->cd(rb.bits.cd);
	return INT32_BYTE;	
}

//, shll.i, shra.i, shrl.i
UINT32 SL1Decoder::decodeCore04_10 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned imm5 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	uimm = rb.bits.imm5;
	instr->imm16(uimm);
	return INT32_BYTE;	
}

//, br.gez, br.gtz, br.lez, br.ltz, dcflush
UINT32 SL1Decoder::decodeCore05_01 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			signed offset : 16;
			unsigned rs1 : 5;
			unsigned op : 5;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.offset;
	instr->offset(simm);
	return INT32_BYTE;	
}

//, ret, rete
UINT32 SL1Decoder::decodeCore05_02 (SL1Instr* instr, UINT meta) {
	switch(instr->id()) {
		case ret_id:
			instr->cs1(ECR_RA);
			break;
		default:
			break;
	}
	return INT32_BYTE;	
}

//, syscall
UINT32 SL1Decoder::decodeCore05_03 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned sysc_id : 20;
			unsigned na : 1;
			unsigned op : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.sysc_id;
	instr->sysc_id(uimm);
	return INT32_BYTE;		
}

//, loop
UINT32 SL1Decoder::decodeCore05_04 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned instr_offset : 16;
			unsigned na : 1;
			unsigned loop_index : 4;
			unsigned lv2 : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.instr_offset;
	instr->instr_offset(uimm);
	instr->loop_index(rb.bits.loop_index);
	return INT32_BYTE;
}

//, jr, jr.lnk
UINT32 SL1Decoder::decodeCore05_05 (SL1Instr* instr, UINT meta) {
	switch(instr->id()) {
		case jr_id: 
			instr->cs1(ECR_JA);
			break;
		case jrlnk_id: 
			instr->cs1(ECR_JA);
			instr->cd(ECR_RA);
			break;
		default:
			break;
	}
	return INT32_BYTE;	
}

UINT32 SL1Decoder::decodeCore05_06 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned opcode : 6;
			unsigned uimm10 : 10;
			unsigned na : 5;
			unsigned cd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	UINT uimm = rb.bits.uimm10;
	instr->imm10(uimm);
	instr->cd(rb.bits.cd);
	return INT32_BYTE;
}

//, G0, G1, G2, C1, C3, C4, break
UINT32 SL1Decoder::decodeUndefined (SL1Instr* instr, UINT meta) {
	return (meta == 0) ? INT32_BYTE : INT16_BYTE;
}

/*sl1 BB instr decoder*/
//, c3.saadds, c3.saaddsh, c3.samulsh, c3.sasubs, c3.sasubsh
ADDR SL1Decoder::decodeBb_01 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned imm5 : 5;
			unsigned rs2 : 5;
			unsigned rs1: 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	uimm = rb.bits.imm5;
	instr->imm5(uimm);
    instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;
}

//, c3.mulh.a, c3.saadd.a, c3.saaddh.a, c3.samulh.a, c3.sasub.a, c3.sasubh.a
ADDR SL1Decoder::decodeBb_02 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 3;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);
	instr->as2(rb.bits.as2);
	instr->am2(rb.bits.am2);	
	return INT32_BYTE;	
}

ADDR SL1Decoder::decodeBb_03 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 2;
			unsigned na1 : 10;
			unsigned acc_s : 2;
			unsigned acm : 3;
			unsigned acc_d : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->M(rb.bits.M);
	instr->accs1(rb.bits.acc_s);
	instr->acc(rb.bits.acc_d);
	instr->acm(rb.bits.acm);
	return INT32_BYTE;	
}

ADDR SL1Decoder::decodeBb_04 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 9;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->M(rb.bits.M);
	instr->rs1(rb.bits.rs1);
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	return INT32_BYTE;	
}


//, c3.bitr
ADDR SL1Decoder::decodeBb_05 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na: 1;
			unsigned b_mode : 4;
			unsigned imm5 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	uimm = rb.bits.imm5;
	instr->imm5(uimm);
	instr->b_mode(rb.bits.b_mode);	
	return INT32_BYTE;	
}

//, c3.saddha
ADDR SL1Decoder::decodeBb_06 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 1;
			unsigned N : 1;
			unsigned mode : 2;
			unsigned imm4 : 4;
			unsigned na1 : 1;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	uimm = rb.bits.imm4;
	instr->imm4(uimm);	
	instr->N(rb.bits.N);
	instr->M(rb.bits.M);
	instr->mode(rb.bits.mode);
	return INT32_BYTE;
}

//, c3.saddha.a
ADDR SL1Decoder::decodeBb_07 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M: 1;
			unsigned na : 1;
			unsigned N : 1;
			unsigned mode : 2;
			unsigned imm4 : 4;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->M(rb.bits.M);
	instr->mode(rb.bits.mode);
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);
	uimm = rb.bits.imm4;
	instr->imm4(uimm);	
	instr->N(rb.bits.N);
	return INT32_BYTE;
}

//, c3.ld
ADDR SL1Decoder::decodeBb_08 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na2 : 3;
			unsigned dtype : 3;
			unsigned na1 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->dtype(rb.bits.dtype);
	instr->rd(rb.bits.rd);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);	
	return INT32_BYTE;
}

//, c3.mac, c3.macci, c3.maccr, c3.macd, c3.macdn, c3.macn, c3.mula, c3.mulaci, c3.mulacr, c3.mulad, c3.muladn, c3.mulan
ADDR SL1Decoder::decodeBb_09 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 4;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

//, c3.mac.a, c3.macn.a, c3.mula.a
ADDR SL1Decoder::decodeBb_10 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 2;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);
	instr->as2(rb.bits.as2);
	instr->am2(rb.bits.am2);
	instr->M(rb.bits.M);

	return INT32_BYTE;
}

//, c3.mac.ar, c3.macn.ar, c3.mula.ar
ADDR SL1Decoder::decodeBb_11 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na2 : 2;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned na1 : 1;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	instr->as2(rb.bits.as2);
	instr->am2(rb.bits.am2);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

//, c3.mac.i, c3.macn.i, c3.mula.i
ADDR SL1Decoder::decodeBb_12 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			signed imm9 : 9;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.imm9;
	instr->imm9(simm);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

//c3.shlaa
ADDR SL1Decoder::decodeBb_13 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 4;
			unsigned imm5 : 5;
			unsigned na1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	UINT uimm = rb.bits.imm5;
	instr->imm5(uimm);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_14 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned imm5 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->accs1(rb.bits.acc);
	instr->acm(rb.bits.acm);
	UINT uimm = rb.bits.imm5;
	instr->imm5(uimm);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;
}

//c3.mula
ADDR SL1Decoder::decodeBb_15 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_16 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 3;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);
	instr->as2(rb.bits.as2);
	instr->am2(rb.bits.am2);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_17 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na2 : 3;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned na1 : 1;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	instr->as2(rb.bits.as2);
	instr->am2(rb.bits.am2);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_18 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 1;
			signed imm9 : 9;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.imm9;
	instr->imm9(simm);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_19 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 4;
			unsigned imm5 : 5;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	INT simm;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->rs1(rb.bits.rs1);
	simm = rb.bits.imm5;
	instr->imm5(simm);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

//, c3.lead
ADDR SL1Decoder::decodeBb_20 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 13;
			unsigned acc : 2;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->accs1(rb.bits.acc);
	return INT32_BYTE;
}

//, c3.mvfs
ADDR SL1Decoder::decodeBb_21 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned imm5 : 5;
			unsigned ss1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->ss1(rb.bits.ss1);
	uimm = rb.bits.imm5;
	instr->imm5(uimm);
	return INT32_BYTE;
}

//, c3.mvts
ADDR SL1Decoder::decodeBb_22 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned imm5 : 5;
			unsigned rs1 : 5;
			unsigned sd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->sd(rb.bits.sd);
	instr->rs1(rb.bits.rs1);
	uimm = rb.bits.imm5;
	instr->imm5(uimm);
	return INT32_BYTE;
}

//c3.dmac c3.dmacn
ADDR SL1Decoder::decodeBb_23 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M: 1;
			unsigned na : 1;
			unsigned N : 1;
			unsigned mode: 2;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;			
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->M(rb.bits.M);
	instr->N(rb.bits.N);
	instr->mac_mode(rb.bits.mode);
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->acm(rb.bits.acm);
	instr->acc_pair(rb.bits.acc);
	return INT32_BYTE;
}

// c3.damc.a c3.damcn.a
ADDR SL1Decoder::decodeBb_24 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M: 1;
			unsigned na : 1;
			unsigned N : 1;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->M(rb.bits.M);
	instr->N(rb.bits.N);
	instr->am2(rb.bits.am2);
	instr->am1(rb.bits.am1);
	instr->as2(rb.bits.as2);
	instr->as1(rb.bits.as1);
	instr->acm(rb.bits.acm);
	instr->acc_pair(rb.bits.acc);
	return INT32_BYTE;	
}

//, c3.dadd,c3.dsub
ADDR SL1Decoder::decodeBb_25 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na5 : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;	
}


//, c3.revb
ADDR SL1Decoder::decodeBb_26 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned imm5 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	UINT uimm;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	uimm = rb.bits.imm5;
	instr->imm5(uimm);
	return INT32_BYTE;
}

//, c3.round
ADDR SL1Decoder::decodeBb_27 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M : 1;
			unsigned na : 2;
			unsigned mode : 2;
			unsigned na1 : 10;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->acc(rb.bits.acc);
	instr->acm(rb.bits.acm);
	instr->mode(rb.bits.mode);
	instr->M(rb.bits.M);
	return INT32_BYTE;
}

//, c3.dadda, c3.dmac, c3.dmacn, c3.dmula, c3.dmulan, c3.dsuba
ADDR SL1Decoder::decodeBb_28 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 2;
			unsigned N : 1;
			unsigned mode : 2;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned acm : 3;
			unsigned acc : 2;			
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->acm(rb.bits.acm);
	instr->acc_pair(rb.bits.acc);
	instr->N(rb.bits.N);
	instr->mac_mode(rb.bits.mode);
	return INT32_BYTE;
}

//, c3.dmac.a, c3.dmacn.a, c3.dmula.a, c3.dmulan.a
ADDR SL1Decoder::decodeBb_29 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 2;
			unsigned N : 1;
			unsigned am2 : 3;
			unsigned as2 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned acm : 3;
			unsigned acc : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->N(rb.bits.N);
	instr->am2(rb.bits.am2);
	instr->am1(rb.bits.am1);
	instr->as2(rb.bits.as2);
	instr->as1(rb.bits.as1);
	instr->acm(rb.bits.acm);
	instr->acc_pair(rb.bits.acc);
	return INT32_BYTE;	
}

//, c3.fftld
ADDR SL1Decoder::decodeBb_30 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na2 : 3;
			unsigned dtype : 3;
			unsigned na1 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->dtype(WORDS);
	instr->rd(rb.bits.rd);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);		
	return INT32_BYTE;
}

//, c3.fftst
ADDR SL1Decoder::decodeBb_31 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na2 : 3;
			unsigned dtype : 3;
			unsigned na1 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
   	instr->rs0(rb.bits.rs0);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);        // always 0
	instr->dtype(WORDS);  // always WORDS for sl1
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_32 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->rd(rb.bits.rd);
	return INT32_BYTE;
}

ADDR SL1Decoder::decodeBb_33 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na : 3;
			unsigned mode: 2;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->rd(rb.bits.rd);
	instr->mode(rb.bits.mode);
	return INT32_BYTE;
}

//, c3.dshll.i, c3.dshrl.i
ADDR SL1Decoder::decodeBb_34 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned imm_lo : 5;
			unsigned imm_hi : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->rd(rb.bits.rd);
	instr->rs1(rb.bits.rs1);
	instr->imm_lo(rb.bits.imm_lo);	
	instr->imm_hi(rb.bits.imm_hi);	
	
	return INT32_BYTE;	
}

//, c3.st
ADDR SL1Decoder::decodeBb_35 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned na2 : 3;
			unsigned dtype : 3;
			unsigned na1 : 3;
			unsigned am1 : 3;
			unsigned as1 : 3;
			unsigned rs0 : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
   	instr->rs0(rb.bits.rs0);
	instr->as1(rb.bits.as1);
	instr->am1(rb.bits.am1);
	instr->dtype(rb.bits.dtype);
	return INT32_BYTE;
}

//, c3.muls, c3.mulus
ADDR SL1Decoder::decodeBb_36 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned imm5 : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned rd : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->imm5(rb.bits.imm5);
	instr->sd(ESR_HI);
	instr->rd(rb.bits.rd);
	instr->rs2(rb.bits.rs2);
	instr->rs1(rb.bits.rs1);
	return INT32_BYTE;
}

//c3.ffe
UINT32 SL1Decoder::decodeBb_37 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned ffe : 5;
			unsigned rs2 : 5;
			unsigned rs1 : 5;
			unsigned na1 : 5;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	switch(rb.bits.ffe){
		case FFT_MOD:
			instr->sd(ESR_FFT);
			break;
		case VIT_MOD:
			instr->sd(ESR_VITERBI);
			break;
		case TRACE_MOD:
			instr->sd(ESR_TRBACK);
			break;
		default:
			AppFatal((0),("invalid opcode for fixed func engine.\n"));
	}
	instr->rs1(rb.bits.rs1);
	instr->rs2(rb.bits.rs2);
	instr->ffe_mode(rb.bits.ffe);
	return INT32_BYTE;		
}

UINT32 SL1Decoder::decodeBb_38 (SL1Instr* instr, UINT meta) {
	union {
		WORD rawbits;
		struct {
			unsigned op : 6;
			unsigned M: 1;
			unsigned na : 12;
			unsigned acc_s : 2;
			unsigned acm : 3;
			unsigned acc_d : 2;
			unsigned top :6;
		} bits;
	}rb;
	rb.rawbits = instr->rawbits();
	instr->accs1(rb.bits.acc_s);
	instr->acc(rb.bits.acc_d);
	instr->M(rb.bits.M);
	instr->acm(rb.bits.acm);
	return INT32_BYTE;
}


