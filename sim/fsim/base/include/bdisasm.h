/*
 *  File: bdisasm.h
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

#ifndef BDISASM_H_
#define BDISASM_H_

#include "defs.h"
#include "breg.h"
#include "messg.h"

#include "symtable.h"

template <class MMUClass, class REGClass, class INSTRClass>
class BaseDisasm {
private:
	MMUClass& _mmu;
	REGClass& _reg;
	SymTable* _symtable;
	UINT _thread_id;
	
protected:
	
	MMUClass& mmu(void) { return _mmu; }
	REGClass& reg(void) { return _reg; }
	STRING getSymName(ADDR addr) {
		return (_symtable==NULL?NULL:symtable()->getName(addr));
	}
	pair<STRING, INT> getSymOffset(ADDR addr) {
		pair<STRING, INT> ret(NULL, 0);
		if(_symtable!=NULL) {
			ret = symtable()->getFuncOffset(addr);
		}
		return ret;
	}
		
public:
	SymTable* symtable(void) { return _symtable; }
	BaseDisasm(MMUClass& mmu, REGClass& reg, UINT th_id);
	BaseDisasm(MMUClass& mmu, REGClass& reg, SymTable* symTbl, UINT th_id);
	void symtable(SymTable* s) { _symtable = s; }
	virtual STRING disasm(ADDR addr, INSTRClass* instr, UINT meta) = 0;

};

template <class MMUClass, class REGClass, class INSTRClass>
BaseDisasm< MMUClass, REGClass, INSTRClass>::BaseDisasm(MMUClass& mmu, REGClass& reg, UINT th_id) : _mmu(mmu), _reg(reg) {
	_symtable = new SymTable;
	_thread_id = th_id;
}

template <class MMUClass, class REGClass, class INSTRClass>
BaseDisasm< MMUClass, REGClass, INSTRClass>::BaseDisasm(MMUClass& mmu, REGClass& reg, SymTable* symTbl, UINT th_id) : _mmu(mmu), _reg(reg) {
	_symtable =  symTbl;
	_thread_id = th_id;
}
#endif /*BDISASM_H_*/

