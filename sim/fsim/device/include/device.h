/*
 *  File: device.h
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
/*
 * Memory mapped device base class
 */
#ifndef DEVICE_H_
#define DEVICE_H_

#include "defs.h"
#include "ifhandler.h"

typedef unsigned int dev_addr;
typedef signed long long dev_s64;
typedef unsigned long long dev_u64;
typedef unsigned int dev_u32;
typedef unsigned short dev_u16;
typedef unsigned char dev_u8;


template<class SystemClass>
class BaseDevice : public InterfaceHandler
{
private:
	SystemClass* const _system;
public:
	BaseDevice(SystemClass* const sys, ADDR base);
	/* Wrapper function to get System object address */
	SystemClass* const system() {return _system;}
	ADDR baddr() {return _start;}

	/* Reset all states */
	virtual void reset() = 0;

	/* Call in every scheduled tick */
	virtual void tick() = 0;
};

template<class SystemClass>
BaseDevice<SystemClass>::BaseDevice(SystemClass* const sys, ADDR base) :
	InterfaceHandler::InterfaceHandler(sys->mmu().memory(), base),
	_system(sys)
{
}

#endif /* DEVICE_H_ */
