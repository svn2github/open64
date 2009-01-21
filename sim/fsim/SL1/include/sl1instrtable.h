/*
 *  File: sl1instrtable.h
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

#ifndef SL1INSTRTABLE_H_
#define SL1INSTRTABLE_H_

#include "defs.h"
#include "execunitdefs.h"

class SL1Instr;
class SL1Exec;
class SL1Decoder;
class SL1Disasm;

typedef ADDR (SL1Exec::*SL1ExecPtr) (SL1Instr*);
typedef UINT32 (SL1Decoder::*SL1DecodePtr) (SL1Instr*, UINT);
typedef STRING (SL1Disasm::*SL1DisasmPtr) (ADDR, SL1Instr*, UINT);

enum SL1EINSTR_GR {
	EIG_gr = GROUP_ID_EIG_GR, //0
	EIG_alu = GROUP_ID_EIG_ALU, //1
	EIG_alu16 = GROUP_ID_EIG_ALU16, //2
	EIG_ls = GROUP_ID_EIG_LS, //3
	EIG_ls16 = GROUP_ID_EIG_LS16, //4
	EIG_br = GROUP_ID_EIG_BR, //5
	EIG_br16 = GROUP_ID_EIG_BR16, //6
	EIG_j = GROUP_ID_EIG_J, //7
	EIG_j16 = GROUP_ID_EIG_J16,	 //8
	EIG_c3_mac = 9,
	EIG_c3_ffe = 10,
	EIG_c3_viterbi=11,
	EIG_c3_traceback = 12,
	EIG_misc = 13,
	EIG_max = 14,
	EIG_invalid = 0xff,
};

class SL1InstrTableEntry 
{
	public:
	STRING _mn;
	UINT16 _id;
	UINT16 _enable;
	SL1EINSTR_GR _group;
	SL1DecodePtr _decode;
	SL1ExecPtr _exec;
	SL1DisasmPtr _print;
	
	public:
	char *mn(void) 			{ return _mn; }
	UINT16 id(void)			{ return _id; }
	BOOL enable(UINT16 mode) { return mode&_enable; }
	SL1EINSTR_GR group(void) { return _group; }
	SL1DecodePtr decode(void) { return _decode;}
	SL1ExecPtr exec(void) { return _exec;}
	SL1DisasmPtr print(void) { return _print;}
};

extern class SL1InstrTableEntry Top_Table[];
extern class SL1InstrTableEntry G0_Table[];
extern class SL1InstrTableEntry G1_Table[];
extern class SL1InstrTableEntry G2_Table[];
extern class SL1InstrTableEntry C2_Table[];
extern class SL1InstrTableEntry C3_Table[];
extern class SL1InstrTableEntry Invalid_Table[];

#endif /*INSTRTABLE_H_*/
