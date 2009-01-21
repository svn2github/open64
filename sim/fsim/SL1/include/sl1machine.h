/*
 *  File: sl1machine.h
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
#ifndef SL1MACHINE_H_
#define SL1MACHINE_H_

#include "sl1defs.h"
#include "machine.h"
#include "sl1eventhandler.h"
#if _SYSTEM_SIMULATION
#include "sl1system.h"
class SL1System;
#endif

class SL1MMU;
class SL1Fetch;
class SL1Exec;
class SL1Instr;
class SL1Disasm;
class SL1Register;
class SL1Decoder;
class SL1EventHandler;


#define SL1_INTERRUPT_LIST_INI SL1MMU, SL1Exec, SL1Instr
#if _SYSTEM_SIMULATION
class SL1Machine : public Machine<SL1MMU, SL1Register, SL1Fetch, SL1Exec, SL1Instr, SL1Disasm, SL1Machine, SL1Decoder, SL1EventHandler,SL1System> {
	public:
	SL1Machine(SL1MMU& mmu, SL1Fetch& fetch, ProcessStatus<SL1Instr>& status) : 
	Machine<SL1MMU, SL1Register, SL1Fetch, SL1Exec, SL1Instr, SL1Disasm, SL1Machine, SL1Decoder, SL1EventHandler,SL1System>(mmu, fetch, status) {
		//_eHandler = new SL1EventHandler(*(&mmu), this);
	}
};
#else
class SL1Machine : public Machine<SL1MMU, SL1Register, SL1Fetch, SL1Exec, SL1Instr, SL1Disasm, SL1Machine, SL1Decoder, SL1EventHandler> {
	public:
	SL1Machine(SL1MMU& mmu, SL1Fetch& fetch, ProcessStatus<SL1Instr>& status) : 
	Machine<SL1MMU, SL1Register, SL1Fetch, SL1Exec, SL1Instr, SL1Disasm, SL1Machine, SL1Decoder, SL1EventHandler>(mmu, fetch, status) {
		//_eHandler = new SL1EventHandler(*(&mmu), this);
	}
};


#endif

#endif /*SL1MACHINE_H_*/
