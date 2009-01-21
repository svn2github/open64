/*
 *  File: pic.h
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

#ifndef PIC_H_
#define PIC_H_

#include <bitset>

#include "sl1device.h"
#include "sl1system.h"

class PIC : public SL1Device
{
	/* Friend class for cmodel */
	friend class SL1System;

private:
	/*
	 * Addresses of visible registers
	 */
	enum PIC_REGS {
		PIC_INT_SW		= 0x0,
		PIC_INT_SW2		= 0x4,
		PIC_INT_PEND		= 0x8,
		PIC_INT_MASK		= 0xc,
		PIC_INT_CAUSE		= 0x10,
		PIC_INT_EN		= 0x14,
		PIC_INT_CURRENT 	= 0x18,
		PIC_INT_PREV		= 0x1c,
		PIC_INT_VECT0		= 0x20,	/* reset addres */
		PIC_INT_VECT1		= 0x24,	/* break/exception address */
		PIC_INT_VECT2		= 0x28,	/* inter-thread interrupt address */
		PIC_INT_VECT3		= 0x2c,
		PIC_INT_VECT4		= 0x30,
		PIC_INT_VECT5		= 0x34,
		PIC_INT_VECT6		= 0x38,
		PIC_INT_VECT7		= 0x3c,
		PIC_SAVE_PC		= 0x40,
		PIC_SAVE_LOOP_CNT0	= 0x44,
		PIC_SAVE_LOOP_CNT1	= 0x48,
		PIC_SAVE_LOOP_CNT2	= 0x4c,
		PIC_SAVE_LOOP_CNT3	= 0x50,
		PIC_SAVE_LOOP_PC0	= 0x54,
		PIC_SAVE_LOOP_PC1	= 0x58,
		PIC_SAVE_LOOP_PC2	= 0x5c,
		PIC_SAVE_LOOP_PC3	= 0x60,
		PIC_SAVE_LOOP_END0	= 0x64,
		PIC_SAVE_LOOP_END1	= 0x68,
		PIC_SAVE_LOOP_END2	= 0x6c,
		PIC_SAVE_LOOP_END3	= 0x70,
		PIC_INT_PRI0		= 0x80,
		PIC_INT_PRI1		= 0x84,
		PIC_INT_PRI2		= 0x88,
		PIC_INT_PRI3		= 0x8c,
		PIC_INT_PRI4		= 0x90,
		PIC_INT_PRI5		= 0x94,
		PIC_INT_PRI6		= 0x98,
		PIC_INT_PRI7		= 0x9c,
		PIC_INT_PRI8		= 0xa0,
		PIC_INT_PRI9		= 0xa4,
		PIC_INT_PRI10		= 0xa8,
		PIC_INT_PRI11		= 0xac,
		PIC_INT_PRI12		= 0xb0,
		PIC_INT_PRI13		= 0xb4,
		PIC_INT_PRI14		= 0xb8,
		PIC_INT_PRI15		= 0xbc,
		PIC_INT_PRI16		= 0xc0,
		PIC_INT_PRI17		= 0xc4,
		PIC_INT_PRI18		= 0xc8,
		PIC_INT_PRI19		= 0xcc,
		PIC_INT_PRI20		= 0xd0,
		PIC_INT_PRI21		= 0xd4,
		PIC_INT_PRI22		= 0xd8,
		PIC_INT_PRI23		= 0xdc,
		PIC_INT_PRI24		= 0xe0,
		PIC_INT_PRI25		= 0xe4,
		PIC_INT_PRI26		= 0xe8,
		PIC_INT_PRI27		= 0xec,
		PIC_INT_PRI28		= 0xf0,
		PIC_INT_PRI29		= 0xf4,
		PIC_INT_PRI30		= 0xf8,
		PIC_INT_PRI31		= 0xfc,
		BRK_PC_OFFSET       = 0x100,
		BRK_LOOP_CNT0       = 0x104,
		BRK_LOOP_CNT1       = 0x108,
		BRK_LOOP_CNT2       = 0x10c,
		BRK_LOOP_CNT3       = 0x110,
		PIC_VECT_SIZE = (PIC_INT_VECT7 - PIC_INT_VECT0 + 4)/4,
		PIC_PRI_SIZE = (PIC_INT_PRI31 - PIC_INT_PRI0 + 4)/4,
	};

	/* Control and status registers */
	dev_u32 _INTSW;
	dev_u32 _INTSW2;
	dev_u32 _PEND;
	dev_u32 _IRQ;			/* interrupt request register */
	dev_u32 _ENINT;			/* global enable */
	dev_u32 _CLEVEL;		/* Current interrupt level */
	dev_u32 _PLEVEL;		/* Previous interrupt Level */
	dev_u32 _CAUSE;
	dev_u32 _MASK;
	ADDR _INTR_VEC_TAB[PIC_VECT_SIZE];	/* Interrupt vectors */
	dev_u32 _INTR_LVL_LUT[PIC_PRI_SIZE];	/* Interrupt level config. */

	/* Internal states variable */
	dev_u32 _inService;		/* Indicate which irq is in service */
	dev_u32 _nonMask;

	// Check whether the irq enable
	bool checkEnable(SL1System::CORE_TRAP_ID irq);
	bool checkPriority(int line);

	/* Wrapper for accessing and synchronize registers */
	dev_u32 regintsw();
	dev_u32 regintsw2();
	dev_u32 regcur();
	dev_u32 regprev();
	dev_u32 regpend();
	dev_u32 regcause();
	dev_u32 regmask();
	dev_u32 regenint();
	dev_u32 regvect(PIC_REGS n);
	dev_u8 regpri(PIC_REGS n);
	void regintsw(dev_u32 val);
	void regintsw2(dev_u32 val);
	void regcur(dev_u32 val);
	void regprev(dev_u32 val);
	void regpend(dev_u32 val);
	void regcause(dev_u32 val);
	void regmask(dev_u32 val);
	void regenint(dev_u32 val);
	void regvect(PIC_REGS n, dev_u32 val);
	void regpri(PIC_REGS n, dev_u8 val);

	/* Forward the value of register to memory */
	void syncReg(PIC_REGS reg, dev_u32 val);
	dev_u32 checkLeadingBit(dev_u32 val);
	void triggerPend();

public:
	PIC(SL1System *sys,ADDR base);

	virtual void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();
	
	void clearInterrupt();
	bool reportInterrupt(SL1System::CORE_TRAP_ID irq, ADDR* targetPC);
	bool reportSpecInterrupt(SL1System::CORE_TRAP_ID irq, ADDR* targetPC);
};

#endif /* PIC_H_ */
