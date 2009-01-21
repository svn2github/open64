/*
 *  File: instrpage.h
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
 
#ifndef INSTRPAGE_H_
#define INSTRPAGE_H_

#include "defs.h"

template<class INSTRClass>
class InstrPage {
private:
	INSTRClass* _entry;
	UBYTE* _tag;
	UINT _instrPageSize;
	
public:
	InstrPage(UINT size, UBYTE* tag) {
		_entry = new INSTRClass[size];
		_tag = tag;
		for (UINT i=0; i<size; i++) {
			_entry[i].init();
		}
		_instrPageSize = size;
	}

	pair<INSTRClass*, UBYTE> getInstrEntry(UINT index) { 
		pair<INSTRClass*, UBYTE> instr;
		UINT byte_index = index<<MIN_BITS_ADDR_SHIFT;
		instr.first = &_entry[index]; 
		instr.second = _tag[byte_index] | _tag[byte_index+1];
		return instr; 
	}

	INSTRClass* getInstr(UINT index) { 
		return &_entry[index];
	}
		
	void dump() {
		printf("-------Instruction page dump begin----------------------\n");
		for (UINT i=0; i<_instrPageSize; i++) {
			printf("index %#08x point %p: rawbits:%#08x\n", i, &_entry[i], _entry[i].rawbits());
		}
		printf("-------Instruction page dump end------------------------\n");
	}
};

#endif /*INSTRPAGE_H_*/

