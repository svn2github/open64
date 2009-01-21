/*
 *  File: sl1defs.h
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
#ifndef SL1DEFS_H_
#define SL1DEFS_H_

#include "defs.h"

#define SL1_CLASS_LIST SL1Register, SL1MMU, SL1Instr, SL1Decoder, SL1Fetch, SL1Exec, SL1Disasm, SL1Machine

#define SL1_INSTR_MODE 0x9

#define MAX_THREAD 2
#define MAX_MEM_VIEW MAX_THREAD
#define MAC_SRAM_BUS 2

//define for exec
#define NOR 0
#define DATA16 1
#define EXT16 3
#define SRC_SHF 02
#define ROUND_MODE 0x04
#define SATURATION_MODE 0x01
#define NORMAL_MODE 0
#define HALFLENGTH 2
#define WORDLENGTH 4
#define NON_SATURATION_MASK 06
#define CBUFFER(bsel) (bsel&0x2)
#define CBUFFER_ID(bsel) (bsel&0x1)
#define MEMORY 00
#define CNT_ZERO 00
#define CNT_ONE 01
#define GPR_SINGLE 0
#define GPR_PAIR 0x1
//define saturation value
#define MASK_LOW_40 (0xffffffffffLL)

#define SATURATION_MAX32 (2147483647LL)
#define SATURATION_MIN32 (-2147483648LL)

#define SATURATION_MAX40 (549755813887LL)
#define SATURATION_MIN40 (-549755813888LL)

#define SATURATION_MAX16 (32767L)
#define SATURATION_MIN16 (-32768L)

#define MAX64 0x7fffffffffffffffLL
#define MIN64 0x8000000000000000LL

//define ar_order
#define BUFFER_ID_ZERO 0
#define BUFFER_ID_ONE 1

#define FFTMODEMASK 0x78
#define VITERBIMODEMASK 0x0080
#define TRBACKMODEMASK 0x01
#define FFTMAXMODE 7

#define FFT_OPCODE 0x3e
#define VITERBI_OPCODE 0x31
#define TRBACK_OPCODE 0x32
#define AR_MODE_MASK 0x3
#define AR_MASK (~AR_MODE_MASK)
#define AR_HIGH_PART 0x1
#define AR_LOW_PART 0x2
#define AR_REVERSE  0x3
#define DMAC_GPR_MODE0 0
#define DMAC_GPR_MODE1 1
#define DMAC_GPR_MODE2 2
#define DMAC_GPR_MODE3 3

//fix engine
#define FFT_POS_MASK 0xfffffff0
#define FFT_OFFSET_MASK 0x7fff

//for share mem check
#define THREAD_ACCESS_MASK ((UBYTE)0x21)
#define THREAD_ID_NONE 0
#define NO_THREAD_MASK (UBYTE(0xde))

enum Armode{
	NOCHANGE = 0,
	ADD_1 = 1,
	ADD_2 = 2,
	ADD_4 = 3,
	SIZE_REGISTER = 4,
	SUB_1 = 5,
	SUB_2 = 6,
	SUB_4 = 7,	
};

enum Bitmode{
	NOP = 0,
	CLEAR = 1,
	SET = 2,
	INVERT = 3,
	BIT_MAX = 4,
};

enum Roundmode{
	NORMAL = 0,
	SET_LOW = 1,
	CLEAR_LOW = 2,
};
enum SLdtypes{
	BYTES = 0,
	UBYTES = 1,
	HALF = 2,
	UHALF = 3,
	WORDS =4,
};


enum SL1THREAD{
	THREAD_ID_CORE = THREAD_ID_0,
	THREAD_ID_BB = THREAD_ID_1,
	THREAD_ID_MAX = 8
};


const STRING prompt_str[] = {
	"SLCore>",
	"SLBB>"
};

enum FFE_MOD{
	FFT_MOD = 0,
	VIT_MOD = 1,
	TRACE_MOD = 2
};

#endif /*SL1DEFS_H_*/
