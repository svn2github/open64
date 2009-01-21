/*
 *  File: sl1eventhandler.h
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

#ifndef SL1EVENTHANLDER_H_
#define SL1EVENTHANLDER_H_

#include "sl1mmu.h"
#include "sl1reg.h"
#include "sl1machine.h"
#include "eventhandler.h"

#if _SYSTEM_SIMULATION
	#include "sl1system.h"
	#include "simconfig.h"
	#define SL1_EVENT_CLASS_LIST_INI SL1MMU, SL1Register, SL1Machine, SL1System
	#define SYSGETPICPC(thid) (thid==0?SimConfig::PIC_CORE_SAVE_PC:SimConfig::PIC_DSP_SAVE_PC)
	#define SYSGETPICPCBRK(thid) (thid==0?SimConfig::PIC_CORE_SAVE_PC_BRK:SimConfig::PIC_DSP_SAVE_PC_BRK)
	#define SYS_ENABLE_CLOCK(enable) system()->enableClock(enable);
	#define SYSTRAP(id, thid) system()->trap(thid, id);
	#define SYSTRAPEND(thid) system()->clearTrap(thid);
	#define SYSGETHANDLER(thid) system()->getHandlerAddr(thid);
	#define SYSGETBREAKHANDLER(thid) system()->getHandlerBreakAddr(thid);
	#define SYSGETRESETPC(thid) system()->getStartPC(thid);
	#define SYS_ILLEGAL_INS SL1System::TRAP_EXCEPT
	#define SYS_INVALID_ADDR SL1System::TRAP_EXCEPT
	#define SYS_BREAK SL1System::TRAP_BREAK
	#define SYS_SYSCALL SL1System::TRAP_SYSCALL
	#define SYS_IS_THREAD_NON_NORMAL(thid)\
		(system()->getStatus(thid) != SL1System::STATUS_NORMAL)
	#define SYS_SET_NORMAL(thid) system()->setStatusNormal(thid)
	#define SYS_GET_RESET(thid) (system()->getReset(thid))
#else
	#define SL1_EVENT_CLASS_LIST_INI SL1MMU, SL1Register, SL1Machine
	#define SYSGETPICPC(thid) 0
	#define SYSGETPICPCBRK(thid) 0
	#define SYS_ENABLE_CLOCK(enable) 
	#define SYSTRAP(id, thid) 
	#define SYSTRAPEND(thid) 
	#define SYSGETHANDLER(thid) pc;
	#define SYSGETBREAKHANDLER(thid) pc;
	#define SYSGETRESETPC(thid) 0;	
	#define SYS_ILLEGAL_INS 0
	#define SYS_INVALID_ADDR 0
	#define SYS_BREAK 0
	#define SYS_SYSCALL 0
	#define SYS_IS_THREAD_NON_NORMAL(thid) 0
	#define SYS_SET_NORMAL
	#define SYS_GET_RESET(thid) 0
#endif
class SL1Machine;

class SL1EventHandler : public EventHandler<SL1_EVENT_CLASS_LIST_INI> {
public:
	SL1EventHandler(SL1MMU& mmu, SL1Machine* mach);
	void contentSave(SL1Register& reg, ADDR pc, ADDR picAddr);
	ADDR contentRestore(SL1Register& reg);
	ADDR interruptHandler(SL1Register& reg, ADDR pc, UINT thid);
	ADDR exceptionHandler(SL1Register& reg, ADDR pc, UINT flag, UINT thid);
	ADDR returnHandler(SL1Register& reg, UINT thid);
	void sysBlackDoor(UINT flag);
};

#endif /*SL1EVENTHANLDER_H_*/
