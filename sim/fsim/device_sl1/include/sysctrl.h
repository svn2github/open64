/*
 *  File: sysctrl.h
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
#ifndef SYSCTRL_H_
#define SYSCTRL_H_

#include "sl1device.h"
#include "regdefs.h"
#include "status.h"


class SL1Instr;
class SL1System;

class SysCtrl : public SL1Device {
	/* Friend class for cmodel */
	friend class SL1SocCmodel;

	/* Constant variables */
	enum {
		RSTC_CPU_MASK = 0x1,
		RSTC_DSP_MASK = 0x2,
		CFIG_CPU_ACTIVE_MASK = 0x100,
		CFIG_DSP_ACTIVE_MASK = 0x300,
	};

	/*
	 * Addresses of visible registers
	 */
	enum SYSCTRL_REGS {
		SYSCTRL_CFIG = 0,
		SYSCTRL_STAT = 4,
		SYSCTRL_PWRC = 8,
		SYSCTRL_LPMC = 12,
		SYSCTRL_RSTC = 16,
	};

	void syncReg(SYSCTRL_REGS reg, dev_u32 val);
	dev_u32 regreset();
	dev_u32 regconfig();
	void regreset(dev_u32 val);
	void regconfig(dev_u32 val);

private:


	dev_u32 _RESET;
	dev_u32 _CONFIG;

public:
	SysCtrl(SL1System *sys,ADDR base);

	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void reset();
	virtual void tick();
};

#endif /*SYSCTRL_H_*/
