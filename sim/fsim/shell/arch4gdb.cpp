/*
 *  File: arch4gdb.cpp
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
#include "arch4gdb.h"

static char *sl_b32_reg_names[] = 
 {
  /* General registers. */
  "zero", "r1", "r2", "r3", "r4", "r5", "r6", "r7",            /*  0~7  */
  "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15",        /*  8~15 */
  "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23",      /* 16~23 */
  "r24", "r25", "r26", "r27", "gp", "sp", "r30", "r31",        /* 24~31 */
  /* Control registers. */
  "ja", "ra", "lcnt0", "lcnt1", "lcnt2", "lcnt3",              /* 32~37 */
  "ar0", "ar1", "ar2", "ar3", "ar4", "ar5", "ar6", "ar7",      /* 38~45 */
  "ar_usize0", "ar_usize1", "ar_usize2", "ar_usize3",          /* 46~49 */
  "ar_usize4", "ar_usize5", "ar_usize6", "ar_usize7",          /* 50~53 */                   
  "acc0", "acc1", "acc2", "acc3", "hi", "pc",                  /* 54~59 */
 };

static char *sl_v32_reg_names[] = 
 {
  /* General registers. */
  "zero", "r1", "r2", "r3", "r4", "r5", "r6", "r7",            /*  0~7  */
  "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15",        /*  8~15 */
  "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23",      /* 16~23 */
  "r24", "r25", "r26", "r27", "gp", "sp", "r30", "r31",        /* 24~31 */
  /* Control registers. */
  "hi", "pc", "ja", "ra", "lcnt0", "lcnt1", "lcnt2", "lcnt3",  /* 32~39 */
  "simd_shft", "vmacs", "mad_ctrl", "mad_mvsel",               /* 40~43 */
  "sum_ctrl", "ls_sw", "ls_ctrl",                              /* 44~46 */
  "cond", "mov_pat", "start", "bits",                          /* 47~50 */
  "best_mv", "best_sad", "best_cost", "byte_coll",             /* 51~54 */
  "mv_cost", "sum_acc",                                        /* 55~56 */
  /* SIMD registers, C2. */
  "rf00", "rf01", "rf02", "rf03", "rf04", "rf05", "rf06", "rf07", /* 57~64 */
  "rf08", "rf09", "rf10", "rf11", "rf12", "rf13", "rf14", "rf15", /* 65~72 */
  "rf16", "rf17", "rf18", "rf19", "rf20", "rf21", "rf22", "rf23", /* 73~80 */
  "rf24", "rf25", "rf26", "rf27", "rf28", "rf29", "rf30", "rf31", /* 81~87 */
  "pc",                                                           /* 88 */
 };

SLArch::SLArch(void) { setAbi(SL_ABI_B32); }
SLArch::SLArch(enum sl_abi abi) { setAbi(abi); }
	
enum sl_abi SLArch::getAbi(void) { return _abi; }
INT		SLArch::getNumRegs(void) { return _numRegs; }
INT		SLArch::getNumGPRs(void) { return _numGPRs; }
INT		SLArch::getNumCRs(void) { return _numCRs; }
INT		SLArch::getNumSRs(void) { return _numSRs; }
INT		SLArch::getNumSIMDRs(void) { return _numSIMDRs; }
INT		SLArch::getCR0Idx(void) { return _cr0Idx; }
INT		SLArch::getSR0Idx(void) { return _sr0Idx; }
INT		SLArch::getRF0Idx(void) { return _rf0Idx; }
INT		SLArch::getPCIdx(void) { return _pcIdx; }
INT		SLArch::getSPIdx(void) { return _spIdx; }
INT		SLArch::getJAIdx(void) { return _jaIdx; }
INT		SLArch::getRAIdx(void) { return _raIdx; }
char **	SLArch::getRegNames(void) { return _regNames; }

void SLArch::setAbi(enum sl_abi abi)
{
	_abi = abi;
	_numGPRs = 32;
	switch (_abi) {
		case SL_ABI_V32: {
			_numCRs = 13;
			_numSRs = 11;
			_numSIMDRs = 32;
			_regNames = sl_v32_reg_names;
		}
		break;
	
		case SL_ABI_B32:
		default: {
			_numCRs = 6;
			_numSRs = 21;
			_numSIMDRs = 0;
			_regNames = sl_b32_reg_names;
		}
		break;
	}
	_numRegs = _numGPRs + _numCRs + _numSRs + _numSIMDRs + 1; //1 more for pc
	_cr0Idx = _numGPRs;
	_sr0Idx = _cr0Idx + _numCRs;
	_rf0Idx = _sr0Idx + _numSRs;
	_pcIdx = _numRegs - 1;
	_spIdx = 29;
	_jaIdx = 32;
	_raIdx = 33;
}

INT SLArch::getRegSize (INT regNum) 
{
	if (regNum < 0 || regNum >= _numRegs) return -1;
	if (regNum >=0 && regNum < _numGPRs) {
		return 4;
	} else if (regNum >= _rf0Idx
			&& regNum < _pcIdx) {
		return 32;
	} else {
		return 4;
	}
}

char * SLArch::getRegName (INT regNum)
{
	if (regNum >=0 && regNum < _numRegs)
		return _regNames[regNum];
	return NULL;
}
