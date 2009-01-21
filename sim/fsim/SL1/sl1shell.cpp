/*
 *  File: sl1shell.cpp
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
#include "sl1shell.h"
#include "regdefs.h"
#include "sl1defs.h"

SL1Shell::SL1Shell() : Shell<SL1_CLASS_LIST>() {
	_profiler = new Profiler<SL1Instr, SL1Machine> (_status, _machine, EIG_max);
	_gdbServer = new GDBServer<SL1MMU, SL1Machine> (_mmu, _machine);
	machine().profiler(_profiler);
	machine().eHandler(new SL1EventHandler(_mmu,&_machine));

	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		SL1Register* reg = new SL1Register(status(), i);
		SL1Exec* exec = new SL1Exec((SL1MMU&)mmu(), *reg, status());
		SL1Disasm* dis = new SL1Disasm((SL1MMU&)mmu(), *reg, i);
		machine().setThread(exec, dis, (SL1THREAD)i);
	}
	mmu().curthread(THREAD_ID_CORE);	
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF0_BEGIN, REGS_ADDR_CIRBUF0_END, 0);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF1_BEGIN, REGS_ADDR_CIRBUF1_END, 1);
	mmu().registerMemoryRange(RANGE_IDX_SRAM, CORE_DARAM_BASE, CORE_DARAM_SPACE, FALSE);

	mmu().curthread(THREAD_ID_BB);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF0_BEGIN, REGS_ADDR_CIRBUF0_END, 0);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF1_BEGIN, REGS_ADDR_CIRBUF1_END, 1);
	mmu().registerMemoryRange(RANGE_IDX_SRAM, DSP_DARAM_BASE, DSP_DARAM_SPACE, FALSE);

	machine().curthread(THREAD_ID_CORE);
	mmu().curthread(THREAD_ID_CORE);	
}

