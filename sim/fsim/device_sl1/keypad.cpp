/*
 *  File: keypad.cpp
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
#include "keypad.h"

Keypad::Keypad(SL1System *sys,ADDR base) :  SL1Device(sys, base)
{
}

inline void Keypad::syncReg(KEYPAD_REGS reg, dev_u32 val) {
	system()->mmu().setWord(baddr()+reg, val);
}

void Keypad::reset()
{
	syncReg(KEYP_CTRL, 0x8040);
	syncReg(KEYP_CONF, 0x400002);
	syncReg(KEYP_STAT, 0);
	syncReg(KEYP_ICR, 0);
	syncReg(KEYP_FLGR, 0);
}

void Keypad::readHook(ADDR addr)
{
	ADDR offset = addr - baddr();
	switch (offset) {
	case KEYP_CTRL:
		break;
	case KEYP_CONF:
		break;
	case KEYP_STAT:
		break;
	case KEYP_KCODE:
		break;
	case KEYP_ICR:
		break;
	case KEYP_FLGR:
		break;
	}
}

void Keypad::writeHook(ADDR addr)
{
	ADDR offset = addr - baddr();
	switch (offset) {
	case KEYP_CTRL:
		break;
	case KEYP_CONF:
		break;
	case KEYP_ICR:
		break;
	case KEYP_FLGR:
		break;
	default:
		printf("write operation don't support\n");
	}
}

void Keypad::tick()
{
}
