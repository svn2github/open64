/*
 *  File: arch4gdb.h
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
#ifndef SLARCH_H_
#define SLARCH_H_

#include "defs.h"

/* All the possible SL ABIs. */
enum sl_abi {
	SL_ABI_AUTO = 0,
	SL_ABI_B32 = 1,
	SL_ABI_V32 = 2,
};

class SLArch {
	private:
	
	enum sl_abi _abi;
	INT _numGPRs;
	INT _numCRs;
	INT _numSRs;
	INT _numSIMDRs;
	INT _numRegs;
	INT _cr0Idx;
	INT _sr0Idx;
	INT _rf0Idx;
	INT _pcIdx;
	INT _spIdx;
	INT _jaIdx;
	INT _raIdx;
	char ** _regNames;
	
	public:
	
	SLArch(void);
	SLArch(enum sl_abi abi);
		
	enum sl_abi getAbi(void);
	INT		getNumRegs(void);
	INT		getNumGPRs(void);
	INT		getNumCRs(void);
	INT		getNumSRs(void);
	INT		getNumSIMDRs(void);
	INT		getCR0Idx(void);
	INT		getSR0Idx(void);
	INT		getRF0Idx(void);
	INT		getPCIdx(void);
	INT		getSPIdx(void);
	INT		getJAIdx(void);
	INT		getRAIdx(void);
	char **	getRegNames(void);
	INT		getRegSize (INT regNum);
	char *	getRegName (INT regNum);
	
	void	setAbi(enum sl_abi abi);
};

#endif /*SLARCH_H_*/
