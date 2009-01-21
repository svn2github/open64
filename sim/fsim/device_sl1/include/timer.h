/*
 *  File: timer.h
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

#ifndef TIMER_H_
#define TIMER_H_

#include "sl1device.h"
#include "sl1system.h"

class Timer : public SL1Device
{
private:
	/*
	 * Addresses of visible registers
	 */
	enum TIMER_REGS {
		TIMER_TLC = 0,
		TIMER_TCV = 4,
		TIMER_TCR = 8,
		TIMER_TIC = 12,
		TIMER_TIS = 16,
	};

	union ControlRegister {
		struct {
			dev_u8 TES	: 1;
			dev_u8 TAC	: 1;
			dev_u8 TMS	: 1;
			dev_u8 TIM	: 1;
		} bit;
		dev_u8 value;
	} _TCR;

	/* Record when is the timer start counting */
	unsigned long long _cycle_start;
	unsigned _timer_prescale;

	dev_u32 counter;
	dev_u32 _TLC;
	dev_u32 _TCV;
	dev_u32 _TIS;

	void syncReg(TIMER_REGS reg, dev_u32 val);

	dev_u32 regcompare();
	dev_u32 regcount();
	dev_u32 regcontrol();
	dev_u32 regclear();
	dev_u32 regstatus();
	void regcompare(dev_u32 val);
	void regcount(dev_u32 val);
	void regcontrol(dev_u32 val);
	void regstatus(dev_u32 val);

public:
	Timer(SL1System *sys,ADDR base);

	virtual void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();
	
};


#endif /* TIMER_H_ */
