/*
 *  File: sl1decoder.h
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
#ifndef SL1DECODER_H_
#define SL1DECODER_H_

#include "bdecoder.h"
#include "sl1defs.h"
#include "sl1instr.h"

#define DECODER_UNDEF_INSTR 0
#define DECODER_CORE_INSTR 0x1
#define DECODER_C1_INSTR 0x2
#define DECODER_C2_INSTR 0x4
#define DECODER_C3_INSTR 0x8

#define CORE_INSTR16_GR(op) ((op&0x20)>0)
#define CORE_TOP_GR(op) (op>(UBYTE)EGROUP_C4)
#define C2_INSTR_GR(op) (op>=(UBYTE)EGROUP_C2)
#define IS_CORE_INSTR16(gr) (gr==EGROUP_TOP_16||gr==EGROUP_G2)

class SL1Instr;

class SL1Decoder : public BaseDecoder<SL1Instr>{
	
	public:
	SL1Decoder(void); 
	SL1Decoder(BOOL b);
	UINT32 decode (SL1Instr* instr,  ADDR pc, WORD raw);
	
	class SL1InstrTableEntry* choose_entry(WORD raw);
	UBYTE getGroupID(UBYTE op) {
		if(CORE_TOP_GR(op)) {
			if(C2_INSTR_GR(op)) {
				return EGROUP_C2;
			}
			else if(CORE_INSTR16_GR(op)) {
				return EGROUP_TOP_16;
			}
			return EGROUP_TOP;
		}
		return op;
	}
	
	UINT32 decodeInvalid (SL1Instr* instr, UINT meta);
	
	/*sl1 core instr decoder*/
	
	UINT32 decodeCore01_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_04 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_05 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_06 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore01_07 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_05 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_06 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_07 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_08 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_09 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_10 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore02_11 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore03_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore03_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore03_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore03_04 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_04 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_05 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_06 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_08 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore04_10 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_04 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_05 (SL1Instr* instr, UINT meta); 
	UINT32 decodeCore05_06 (SL1Instr* instr, UINT meta); 
	UINT32 decodeUndefined (SL1Instr* instr, UINT meta); 

	/*sl1 bb instr decoder*/
	
	UINT32 decodeBb_01 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_02 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_03 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_04 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_05 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_06 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_07 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_08 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_09 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_10 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_11 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_12 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_13 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_14 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_15 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_16 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_17 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_18 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_19 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_20 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_21 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_22 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_23 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_24 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_25 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_26 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_27 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_28 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_29 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_30 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_31 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_32 (SL1Instr* instr, UINT meta);
	UINT32 decodeBb_33 (SL1Instr* instr, UINT meta);
	UINT32 decodeBb_34 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_35 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_36 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_37 (SL1Instr* instr, UINT meta); 
	UINT32 decodeBb_38 (SL1Instr* instr, UINT meta); 
};

#endif /*SL1DECODER_H_*/
