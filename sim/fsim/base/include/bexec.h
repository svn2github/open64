/*
 *  File: bexec.h
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

#ifndef BEXEC_H_
#define BEXEC_H_

#include "defs.h"
#include "messg.h"
#include "status.h"
#include "vrt.h"

#ifdef _SYSTEM_SIMULATION
#define _THROW_EXEC_EXCEPTION _SYSTEM_SIMULATION
#else
#define _THROW_EXEC_EXCEPTION 0
#endif

#if _THROW_EXEC_EXCEPTION
#define EXEC_EXCEPTION(ex_type, cond, arg) status().event(ex_type);
#else
#define EXEC_EXCEPTION(ex_type, cond, arg) AppFatal(cond, arg);
#endif

template <class MMUClass, class REGClass, class INSTRClass>
class BaseExec {

private:
	ADDR _pc;
	MMUClass& _mmu;
	REGClass& _reg;	
	ProcessStatus<INSTRClass>& _status;

public:
	BaseExec(MMUClass& mmu, REGClass& reg, ProcessStatus<INSTRClass>& status);	
	ProcessStatus<INSTRClass>& status(void) { return _status; }
	REGClass& reg(void) { return _reg; }
	MMUClass& mmu(void) { return _mmu; }
	void setExecMode(INT modeID, WORD value);
	ADDR pc(void) { return _pc; }	
	void pc(ADDR p) { _pc = p; }
	void *pcAddr(void) { return (void*)&_pc; }
	
	virtual ADDR execute(ADDR addr, INSTRClass* instr) = 0;
};

template <class MMUClass, class REGClass, class INSTRClass>
BaseExec<MMUClass, REGClass, INSTRClass>::BaseExec(MMUClass& mmu, REGClass& reg, ProcessStatus<INSTRClass>& status) 
									: _mmu(mmu), _reg(reg), _status(status) {
}

template <class MMUClass, class REGClass, class INSTRClass>
void BaseExec<MMUClass, REGClass, INSTRClass>::setExecMode(INT modeID, WORD value) {
	fprintf(stdout, "Exec: the execution unit doesn't support any configurable option.\n");
}

#endif /*BEXEC_H_*/
