/*
 *  File: sysctrl.cpp
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
#include "sysctrl.h"
#include "bmmu.h"
#include "defs.h"
#include "sl1system.h"


SysCtrl::SysCtrl(SL1System *sys,ADDR base) : SL1Device(sys, base)
{
	_CONFIG = 0x100;
}

inline void SysCtrl::syncReg(SYSCTRL_REGS reg, dev_u32 val) 
{
	system()->mmu().setWord(baddr()+reg, val);
}

inline dev_u32 SysCtrl::regreset()
{
	syncReg(SYSCTRL_RSTC, _RESET);
	return _RESET;
}

inline dev_u32 SysCtrl::regconfig()
{
	syncReg(SYSCTRL_CFIG, _CONFIG);
	return _CONFIG;	
}

inline void SysCtrl::regreset(dev_u32 val)
{
	_RESET = val;
	regreset();
}

inline void SysCtrl::regconfig(dev_u32 val)
{
	_CONFIG = val;
	regconfig();
}


void SysCtrl::reset()
{
	_RESET = 0;
	_CONFIG = 0x100;
}

void SysCtrl::tick()
{
}

void SysCtrl::readHook(ADDR addr) {
	dev_u32 ret;
	SYSCTRL_REGS offset = (SYSCTRL_REGS)(addr - baddr());
	switch (offset) {
	case SYSCTRL_CFIG:
		regconfig();
		break;
	case SYSCTRL_RSTC:
		regreset();
		break;
	}
}

void SysCtrl::writeHook(ADDR addr) {
	dev_u32 val = system()->mmu().getWord(addr);
	SYSCTRL_REGS offset = (SYSCTRL_REGS)(addr - baddr());
	switch (offset) {
	case SYSCTRL_CFIG:
		regconfig(val);
		if ((_CONFIG & CFIG_CPU_ACTIVE_MASK) > 0 && 
			(_RESET & RSTC_CPU_MASK) > 0) {
			system()->setReset(THREAD_ID_0, SL1System::RESET_ENABLE);
		} else if ((_CONFIG & CFIG_CPU_ACTIVE_MASK) == 0 && 
				   (_RESET & RSTC_CPU_MASK) > 0) {
			system()->setReset(THREAD_ID_0, SL1System::RESET_DISABLE);
		}	
		if ((_CONFIG & CFIG_DSP_ACTIVE_MASK) > 0 && 
			(_RESET & RSTC_DSP_MASK) > 0) {
			system()->setReset(THREAD_ID_1, SL1System::RESET_ENABLE);
		} else if ((_CONFIG & CFIG_DSP_ACTIVE_MASK) == 0 && 
				   (_RESET & RSTC_DSP_MASK) > 0) {
			system()->setReset(THREAD_ID_1, SL1System::RESET_DISABLE);
		}		
		break;
	case SYSCTRL_RSTC:
		regreset(val);
		break;
	}
}
