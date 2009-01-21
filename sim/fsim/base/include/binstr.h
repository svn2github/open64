/*
 *  File: binstr.h
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

#ifndef BINSTR_H_
#define BINSTR_H_

#include <list>

#include "defs.h"

enum EREG_STATUS {
	ERS_UNDEF= 0,
	ERS_READ = 0x1,
	ERS_WRITE= 0x2,
	ERS_RW 	 = 0x3,
	ERS_NO_HAZARD = 0x4,
};

class BaseInstr {

protected:
	//instruction info from instr table
	STRING _mn;
	UINT16 _id;
		
	//runtime info
	WORD _rawbits;
	WORD _meta;	
	UINT _instrsize;
	ADDR _pc;
	
public:	
	struct Reg {
		EREG_STATUS status;
		UINT32 regbase;
		UINT32 index;
	};
	
	BaseInstr() {
		init();
	}
		
	void init() {
		_mn = NULL;
		_id = 0;
		_rawbits = 0xffffffff;
		_pc = 0;
	}

	ADDR pc(void) { return _pc; }
	void pc(ADDR pc) { _pc = pc; }
	WORD rawbits(void) { return _rawbits; }
	STRING mn(void) { return _mn; }
	UINT16 id(void) { return _id; }
	WORD meta(void) { return _meta; }
	void meta(WORD m) { _meta = m; }
	WORD instrsize(void) { return _instrsize; }
	void instrsize(UINT s) { _instrsize = s; }

};

#endif /*BINSTR_H_*/

