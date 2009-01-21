/*
 *  File: keypad.h
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
#ifndef _KEYPAD_H_
#define _KEYPAD_H_

#include "sl1device.h"
#include "sl1system.h"

class Keypad : public SL1Device{

	/* Friend class for cmodel */
	friend class SL1SocCmodel;

public:
	Keypad(SL1System *sys,ADDR base);
	~Keypad();

	virtual void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();

private:
	enum KEYPAD_REGS {
		KEYP_CTRL	= 0,
		KEYP_CONF	= 4,
		KEYP_STAT	= 8,
		KEYP_KCODE	= 12,
		KEYP_ICR	= 16,
		KEYP_FLGR	= 20,
	};

	void syncReg(KEYPAD_REGS reg, dev_u32 val);

};

#endif /* _KEYPAD_H_ */
