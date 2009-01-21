/*
 *  File: pic.cpp
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
#include "pic.h"

inline dev_u32 PIC::regintsw()
{
	syncReg(PIC_INT_SW, _INTSW);
	return _INTSW;
}

inline dev_u32 PIC::regintsw2()
{
	syncReg(PIC_INT_SW2, _INTSW2);
	return _INTSW2;
}

inline dev_u32 PIC::regcur()
{
	_CLEVEL &= 0x7;
	syncReg(PIC_INT_CURRENT, _CLEVEL);
	return _CLEVEL;
}

inline dev_u32 PIC::regprev()
{
	syncReg(PIC_INT_PREV, _PLEVEL);
	return _PLEVEL;
}


inline dev_u32 PIC::regpend()
{
	syncReg(PIC_INT_PEND, _PEND);
	return _PEND;
}

inline dev_u32 PIC::regcause()
{
	syncReg(PIC_INT_CAUSE, _CAUSE);
	return _CAUSE;
}

inline dev_u32 PIC::regmask()
{
	syncReg(PIC_INT_MASK, _MASK);
	return _MASK;
}

dev_u32 PIC::regenint()
{
	syncReg(PIC_INT_EN, _ENINT);
	return _ENINT;
}


inline dev_u32 PIC::regvect(PIC_REGS n)
{
	ADDR addr = _INTR_VEC_TAB[(n - PIC_INT_VECT0)/4];
	syncReg(n, addr);
	return addr;
}

inline dev_u8 PIC::regpri(PIC_REGS n)
{
	dev_u32 pri = _INTR_LVL_LUT[(n - PIC_INT_PRI0)/4];
	syncReg(n, pri);
	return pri;
}

inline void PIC::regintsw(dev_u32 val)
{
	_INTSW = val;
	regintsw();
	// Inter-thread interrupt triggering
	if (baddr() == SimConfig::PIC_CORE_BASE_ADDR)
		system()->trap(THREAD_ID_0, SL1System::TRAP_SIG);
	else
		system()->trap(THREAD_ID_1, SL1System::TRAP_SIG);
}

inline void PIC::regintsw2(dev_u32 val)
{
	_INTSW2 = val;
	regintsw2();
}

inline void PIC::regcur(dev_u32 val)
{
	_CLEVEL = val;
	regcur();
}

inline void PIC::regprev(dev_u32 val)
{
	_PLEVEL = val;
	regprev();
}


inline void PIC::regpend(dev_u32 val)
{
	_PEND = val;
	regpend();
}

inline void PIC::regcause(dev_u32 val)
{
	_CAUSE = val;
	regcause();
}

inline void PIC::regmask(dev_u32 val)
{
	_MASK = val & ~(_nonMask);
	regmask();
	triggerPend();
}

inline void PIC::regenint(dev_u32 val)
{
	_ENINT = val;
	regenint();
	if (_ENINT)
		triggerPend();
}

inline void PIC::regvect(PIC_REGS n, dev_u32 val)
{
	_INTR_VEC_TAB[(n - PIC_INT_VECT0)/4] = val;
	regvect(n);
}

inline void PIC::regpri(PIC_REGS n, dev_u8 val)
{
	_INTR_LVL_LUT[(n - PIC_INT_PRI0)/4] = val;
	regpri(n);
}


inline void PIC::syncReg(PIC_REGS reg, dev_u32 val) 
{
	system()->mmu().setWord(baddr()+reg, val);
}

inline dev_u32 PIC::checkLeadingBit(dev_u32 val)
{
	using namespace std;
	bitset<32> b(val);
	int i;
	for (i=31; i>=0; i--)
		if (b.test(i))
			return i;
	return (unsigned)-1;
}

PIC::PIC(SL1System* const sys,ADDR base) :  SL1Device(sys, base)
{
}

void PIC::reset()
{
	int i;
	regpend(0);
	regcause(0);
	regmask(0xfffffff8);
	regenint(0);
	regcur(0);
	regprev(0);
	for (i=PIC_SAVE_LOOP_CNT0; i<=PIC_SAVE_LOOP_END3; i=i+4) {
		syncReg((PIC_REGS)i, 0);
	}
	for (i=PIC_INT_VECT0; i<=PIC_INT_VECT7; i=i+4) {
		regvect((PIC_REGS)i, 0);
	}
	for (i=PIC_INT_PRI0; i<PIC_INT_PRI31; i=i+4) {
		regpri((PIC_REGS)i, 0);
	}
	for (i=BRK_PC_OFFSET;i<=BRK_LOOP_CNT3;i=i+4) {
		syncReg((PIC_REGS)i, 0);
	}
	_inService = 0;
	/* Wenbo/2007-11-02: CORE and DSP has same mask bits now. The last three 
	 * bits of mask register should be 1 all the time. */
	_nonMask = 0x7;
}

bool PIC::checkEnable(SL1System::CORE_TRAP_ID irq)
{
	if (_nonMask & irq)
		return true;
	if (regenint() && (~regmask() & irq))
		return true;
	else
		return false;
}

bool PIC::checkPriority(int line)
{
	/* While a break exception is in service, no interrupt can trap machine. */
	if(_inService == SL1System::TRAP_BREAK
	   || _inService == SL1System::TRAP_CPU_BREAK)
		return false;
	if (regcur() <= _INTR_LVL_LUT[line])
		return true;
	else
		return false;
}

void PIC::readHook(ADDR addr)
{
	dev_u32 ret;
	PIC_REGS offset = (PIC_REGS)(addr - baddr());
	switch (offset) {
	case PIC_INT_SW:
		regintsw();
		break;
	case PIC_INT_SW2:
		regintsw2();
		break;
	case PIC_INT_MASK:
		regmask();
		break;
	case PIC_INT_EN:
		//AppFatal((0), ("MMU: Read write-only memory at addr=0x%x.", addr));
		regenint();
		break;
	case PIC_INT_PREV:
		regprev();
		break;
	case PIC_INT_CURRENT:
		regcur();
		break;
	case PIC_INT_PEND:
		regpend();
		break;
	case PIC_INT_CAUSE:
		regcause();
		break;
	}
}

void PIC::writeHook(ADDR addr)
{
	dev_u32 val = system()->mmu().getWord(addr);
	PIC_REGS offset = (PIC_REGS)(addr - baddr());
	if ((PIC_INT_VECT0 <= offset) && (offset <= PIC_INT_VECT7)) {
		regvect(offset, val);
		return;
	}
	if ((PIC_INT_PRI0 <= offset) && (offset <= PIC_INT_PRI31)) {
		regpri(offset, (dev_u8)val & 0x7);
		return;
	}

	switch (offset) {
	case PIC_INT_SW:
		regintsw(val);
		break;
	case PIC_INT_SW2:
		regintsw2(val);
		break;
	case PIC_INT_MASK:
		regmask(val);
		break;
	case PIC_INT_EN:
		regenint(val);
		break;
	case PIC_INT_PREV:
		regprev(val);
		break;
	case PIC_INT_PEND:
		// retain PEND if user program overwrite it
		regpend();
		break;
	case PIC_INT_CAUSE:
		// retain CAUSE if user program overwrite it
		regcause();
		break;
	}
}

void PIC::tick()
{
	/* Nothing to do */
}

void PIC::triggerPend()
{
}

void PIC::clearInterrupt()
{
	/* If current interrupt is break exception, nothing should be 
	   changed here. */
	if(_inService == SL1System::TRAP_BREAK
	   || _inService == SL1System::TRAP_CPU_BREAK) {
		_inService = 0;
		return;
	}

	/* other interrupts or exception */
	_inService = 0;
	regenint((regprev() & 0x10)>>0x4);
	regcur(regprev()& 0x7);
}

bool PIC::reportInterrupt(SL1System::CORE_TRAP_ID irq, ADDR* targetPC)
{
	switch (irq) {
	case SL1System::TRAP_POWER_RESET:
		_inService = SL1System::TRAP_POWER_RESET;
		*targetPC = SimConfig::DARAM_CORE_BASE_ADDR;
		return true;
	// CPU and DSP share the same irq no.
	case SL1System::TRAP_INT_DSP_RESET:
		_inService = SL1System::TRAP_BREAK;
		regprev(regcur() & 0x7);
		regcur(7);
		regcause(irq);
		*targetPC = _INTR_VEC_TAB[7];
		return true;

	/* If CORE and DSP have different BREAK bit setting, case bellow
	   should be used. */
	case SL1System::TRAP_BREAK:
		_inService = irq;
		regcause(irq);
		*targetPC = _INTR_VEC_TAB[_INTR_LVL_LUT[checkLeadingBit(irq)]];
		return true;

	default:
		int i = checkLeadingBit(irq);
		if (checkEnable(irq) && checkPriority(i)) {
			int level = _INTR_LVL_LUT[i];
			regcause(irq);
			_inService = irq;
			regprev(((regenint()& 0x1)<<0x4) | (regcur() & 0x7));
			regcur(level);
			// Disable global interrupt
			regenint(0);
			*targetPC = _INTR_VEC_TAB[level];
			return true;
		} else {
			//regpend(regpend()|irq);
		}
	}
	return false;
}

bool PIC::reportSpecInterrupt(SL1System::CORE_TRAP_ID irq, ADDR * targetPC)
{
	int i = checkLeadingBit(irq);
	int level = _INTR_LVL_LUT[i];
	if(checkEnable(irq)){
		regcause(irq);
		_inService = irq;
		regprev(((regenint()& 0x1)<<0x4) | (regcur() & 0x7));
		regcur(level);
		// Disable global interrupt
		regenint(0);
		*targetPC = _INTR_VEC_TAB[level];

		return true;
	}

	return false;
}

