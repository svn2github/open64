/*
 *  File: sl1disasm.h
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

#ifndef SL1DISASM_H_
#define SL1DISASM_H_

#include "bdisasm.h"
#include "sl1instr.h"
#include "sl1reg.h"

#define DIASM_BUF_SIZE 512

#ifndef _LOG_LOOP
#define _LOG_LOOP 0
#endif 

#if _LOG_LOOP
#define RET_STRBUF(pc) strbuf(pc);
#else
#define RET_STRBUF(pc) strbuf();
#endif

class SymTable;
class SL1MMU;
class SL1Register;
class Decoder;

class SL1Disasm : public BaseDisasm<SL1MMU, SL1Register, SL1Instr> {

	private:
	char _strbuf[DIASM_BUF_SIZE];

	public:	
	SL1Disasm(SL1MMU& mmu, SL1Register& reg, UINT th_id);

	STRING disasm(ADDR addr, SL1Instr* instr, UINT meta) {
		return (this->*(instr->print()))(addr, instr, meta);
	}

	STRING strbuf(ADDR pc) {
		if(reg().loopExecCntLv0()) {
			if(pc==reg().loopStartPCLv0()){
				char tmp[DIASM_BUF_SIZE];
			    sprintf(tmp,"%s\nLoop Start @0x%08x (count = %d, End pc = 0x%08x)\n", 
			    strbuf(),
			    reg().loopStartPCLv0(),
			    reg().loopExecCntLv0(),
			    reg().loopEndPCLv0());
			    strcpy(_strbuf, tmp);
			}
		}
		return _strbuf;
	}

	STRING strbuf(void) {
		return _strbuf;
	}

	/*sl1 core instr disasm*/
	STRING disasmCore01_01 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_02 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_03 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_04 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_05 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_06 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore01_07 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_01 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_02 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_03 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_05 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_06 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_07 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_08 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_09 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore02_10 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmCore02_11 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore03_01 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore03_02 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore03_03 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore03_04 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_01 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_02 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_03 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_04 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_05 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_06 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_08 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore04_10 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_01 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_02 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_03 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_04 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_05 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmCore05_06 (ADDR pc, SL1Instr* instr, UINT meta); 
	STRING disasmUndefined (ADDR pc, SL1Instr* instr, UINT meta);

	/*sl1 bb instr disasm*/
	STRING disasmBb_01 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_02 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_03 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_04 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_05 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_06 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_07 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_08 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_09 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_10 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_11 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_12 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_13 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_14 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_15 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_16 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_17 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_18 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_19 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_20 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_21 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_22 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_23 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_24 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_25 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_26 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_27 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_28 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_29 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_30 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_31 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_32 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_33 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_34 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_35 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_36 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_37 (ADDR pc, SL1Instr* instr, UINT meta);
	STRING disasmBb_38 (ADDR pc, SL1Instr* instr, UINT meta);

};

const STRING ar_register_mode[8] = {
	"nc","+1", "+2", "+4", "$as", "-1","-2","-4"
	};
const STRING c3_ldst_type[5] = {
	"byte","ubyte","hword","uhword","word"
};	
const STRING c3_mem_mode[4] = {
	"MEM","MEM","CBU1","CBU2"
};	
const STRING c3_bit_mode[5] = {
	"nop","clear","set","invert"
};

const STRING c3_ffe_mod[3] = {
	"fft","viterbi","traceback"
};

#endif /*SL1DISASM_H_*/
