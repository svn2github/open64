/*
 *  File: timer.cpp
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
#include "timer.h"

Timer::Timer(SL1System *sys,ADDR base) :  SL1Device(sys, base)
{
}

inline void Timer::syncReg(TIMER_REGS reg, dev_u32 val) {
	system()->mmu().setWord(baddr()+reg, val);
}

inline dev_u32 Timer::regcompare()
{
	syncReg(TIMER_TLC, _TLC);
	return _TLC;
}

inline dev_u32 Timer::regcount()
{
	syncReg(TIMER_TCV, _TCV);
	return _TCV;
}

inline dev_u32 Timer::regcontrol()
{
	syncReg(TIMER_TCR, _TCR.value);
	return _TCR.value;
}

inline dev_u32 Timer::regclear()
{
	syncReg(TIMER_TIC, _TIS);
	if (_TCR.bit.TES && !_TCR.bit.TAC) {
		_cycle_start = system()->getCycles();
		if (_TCR.bit.TMS)
			system()->addTimeSchedule(this, regcompare()*_timer_prescale);
		else
			system()->addTimeSchedule(this, 0xffffffff);
	}
	return _TIS;
}

inline dev_u32 Timer::regstatus()
{
	syncReg(TIMER_TIS, _TIS);
	return _TIS;
}

inline void Timer::regcompare(dev_u32 val)
{
	_TLC = val;
	regcompare();
}

inline void Timer::regcount(dev_u32 val)
{
	_TCV = val;
	regcount();
}

inline void Timer::regcontrol(dev_u32 val)
{
	int active = _TCR.bit.TES;
	_TCR.value = val;
	// Users disabled timer
	if (active && (!_TCR.bit.TES)) {
		regcount(regcompare() - ((system()->getCycles() - _cycle_start)/_timer_prescale));
	}
	if (_TCR.bit.TES) {
		_cycle_start = system()->getCycles();
		system()->removeTimeSchedule(this);
		if (_TCR.bit.TMS)
			system()->addTimeSchedule(this, regcompare()*_timer_prescale);
		else
			system()->addTimeSchedule(this, 0xffffffff);
	}
	regcontrol();
}

inline void Timer::regstatus(dev_u32 val)
{
	_TIS = val;
	regstatus();
}


void Timer::reset()
{
	/* the times of system clock to timer clock*/
	_timer_prescale = 10;

	regcompare(0xffffffff);
	regcount(0xffffffff);
	regcontrol(0);
	regstatus(0);
}

void Timer::readHook(ADDR addr)
{
	ADDR offset = addr - baddr();
	switch (offset) {
	case TIMER_TLC:
		regcompare();
		break;
	case TIMER_TCV:
		if (_TCR.bit.TES)
			regcount(regcompare() - ((system()->getCycles() - _cycle_start)/_timer_prescale));
		break;
	case TIMER_TCR:
		regcontrol();
		break;
	case TIMER_TIC:
		regstatus(0);
		regclear();
		break;
	case TIMER_TIS:
		regstatus();
		break;
	}
}

void Timer::writeHook(ADDR addr)
{
	dev_u32 val = system()->mmu().getWord(addr);
	ADDR offset = addr - baddr();
	switch (offset) {
	case TIMER_TLC:
		regcompare(val);
		break;
	case TIMER_TCV:
		regcount();
		break;
	case TIMER_TCR:
		regcontrol(val & 0xf);
		break;
	case TIMER_TIC:
		regclear();
		break;
	case TIMER_TIS:
		regstatus();
		break;
	}
}

void Timer::tick()
{
	if (_TCR.bit.TAC) {
		//_cycle_start = system()->getCycles();
		_cycle_start = system()->getTimeCycles();
		if (_TCR.bit.TMS)
			system()->addTimeSchedule(this, regcompare()*_timer_prescale);
		else
			system()->addTimeSchedule(this, 0xffffffff);
	}
	if (!_TCR.bit.TIM) {
		switch(baddr()) {
		case SimConfig::TIMER0_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_TIMER0);
			break;
		case SimConfig::TIMER1_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_TIMER1);
			break;
		case SimConfig::TIMER2_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_TIMER2);
			break;
		case SimConfig::TIMER3_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_TIMER3);
			break;
		}
	}
	// reset CNT
	regcount(0);
}
