/*
 *  File: ifhandler.h
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
#ifndef IFHANDLER_H_
#define IFHANDLER_H_

#include "memory.h"
#include "simdefs.h"

#ifndef _WARN_LAYOUT
#define _WARN_LAYOUT 0
#endif

#if _WARN_LAYOUT
#define WARN_LAYOUT printf
#else
#define WARN_LAYOUT(x,...) ((void)1)
#endif

class InterfaceHandler {
protected:
	Memory* _memory;
	ADDR _start;
	ADDR _end;
	UINT _size;
	UINT _type;

public:
	InterfaceHandler(Memory* mem, ADDR start) {
		_memory = mem;
		_start = start;
		_size = 0;
		_end = 0xffffffff;
	}

	InterfaceHandler(Memory* mem, ADDR start, UINT size) {
		_memory = mem;
		_start = start;
		_size = size;
		_end = start + size - 1;
	}
	~InterfaceHandler(void) {};
	Memory* memory(void) { return _memory; }
	ADDR realAddr(ADDR addr) { return (addr + _start); }
	ADDR offsetAddr(ADDR addr) { return (addr - _start); }
	BOOL checkRange(ADDR addr) {
		return (addr>=_start&&addr<=addr);
	}
	
	UINT size(void) { return _size; }
	void setByte(const ADDR, const BYTE);
	void setHword(const ADDR, const HWORD);
	void setWord(const ADDR, const WORD);
	BYTE getByte(const ADDR);
	HWORD getHword(const ADDR);
	WORD getWord(const ADDR);	
	
	virtual void readHook(ADDR addr) = 0;
	virtual void writeHook(ADDR addr) = 0;	
};


INLINE void InterfaceHandler::setByte(const ADDR addr, const BYTE byte) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	memory()->writeByte(realAddr(addr), byte);
}

INLINE void InterfaceHandler::setHword(const ADDR addr, const HWORD hword) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	memory()->writeHword(realAddr(addr), hword);
}

INLINE void InterfaceHandler::setWord(const ADDR addr, const WORD word) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	memory()->writeWord(realAddr(addr), word);
}

INLINE BYTE InterfaceHandler::getByte(const ADDR addr) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	return memory()->readByte(realAddr(addr)).first;
}

INLINE HWORD InterfaceHandler::getHword(const ADDR addr) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	return memory()->readHword(realAddr(addr)).first;
}

INLINE WORD InterfaceHandler::getWord(const ADDR addr) {
	SimFatal((addr<size()), ("InterfaceHandler: invalid address, address out of range (0x%08x).", realAddr(addr)));
	return memory()->readWord(realAddr(addr)).first;
}

#endif /*IFHANDLER_H_*/

