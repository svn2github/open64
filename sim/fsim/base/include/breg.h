
/*
 *  File: breg.h
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

#ifndef BREG_H_
#define BREG_H_

#include <string>
#include <list>

#include "defs.h"
#include "status.h"
#include "regmapitem.h"

template <class INSTRClass>
class BaseRegister {
protected:
	WORD _spBase;
	ProcessStatus<INSTRClass>& _status;
	

protected:
	ProcessStatus<INSTRClass>& status(void) { return _status; }
	
public:
	BaseRegister(ProcessStatus<INSTRClass>& status);
	INT createNameMap(RegMap& regmap);	// create register name map and return map size
	
	ADDR spBase(void) { return _spBase; }
	void spBase(ADDR s) { _spBase = s; }
	
	virtual void clear() = 0;	
	virtual WORD getSP(void) = 0;
	virtual void setSP(WORD data) = 0;
	virtual WORD getGPR(UINT32 index) = 0;
	virtual void setGPR(UINT32 index, WORD data) = 0;

	virtual INT setRegByName(const STRING regName, DWORD value) = 0;
	virtual INT getRegisterNames(char *buf, int len) = 0;
	virtual bool isValidRegName(const STRING regName) = 0;
	virtual void dumpRegs(FILE* out, const char* regSetName) = 0;	
	virtual void dumpRegs2File(FILE* out, const char* regSetName) = 0;	
	virtual INT initRegs(FILE* in,  const char* regSetName) = 0;

};

template<class INSTRClass>
BaseRegister<INSTRClass>::BaseRegister(ProcessStatus<INSTRClass>& status) : _status(status) {
	_spBase = 0xffffffff;
}

#endif/*BREG_H_*/

