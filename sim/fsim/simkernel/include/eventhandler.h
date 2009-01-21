/*
 *  File: eventhandler.h
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
#ifndef EVENTHANLDER_H_
#define EVENTHANLDER_H_

#include "bmmu.h"
#ifndef _CONTENT_SWITCH_DEBUG
	#define _CONTENT_SWITCH_DEBUG 0
#endif

#if _CONTENT_SWITCH_DEBUG
#define CONTENT_SWITCH_DEBUG printf
#else
#define CONTENT_SWITCH_DEBUG(x,...) ((void)1)
#endif

#ifndef _SYSTEM_SIMULATION
	#define _SYSTEM_SIMULATION 0
#endif

#if _SYSTEM_SIMULATION
	#define EVENT_CLASS_LIST_DEF class MMUClass, class REGClass, class MACHINEClass, class SystemClass
	#define EVENT_CLASS_LIST_INI MMUClass, REGClass, MACHINEClass, SystemClass
#else
	class SystemClass;
	#define EVENT_CLASS_LIST_DEF class MMUClass, class REGClass, class MACHINEClass
	#define EVENT_CLASS_LIST_INI MMUClass, REGClass, MACHINEClass
#endif

template<EVENT_CLASS_LIST_DEF>
class EventHandler {
private:
	MMUClass& _mmu;
	SystemClass* _system;
	MACHINEClass* _machine;
	
public:
	EventHandler(MMUClass& m, MACHINEClass* mach);
	EventHandler(MMUClass& m);
	MMUClass& mmu (void) { return _mmu; }
	SystemClass* system (void) { return _system; }
	MACHINEClass* machine(void) { return _machine; }
	void system (SystemClass* s) { _system = s; }
	virtual void contentSave(REGClass& reg, ADDR pc, ADDR picAddr) = 0;
	virtual ADDR contentRestore(REGClass& reg) = 0;
	virtual ADDR interruptHandler(REGClass& reg, ADDR pc, UINT thid) = 0;
	virtual ADDR exceptionHandler(REGClass& reg, ADDR pc, UINT flag, UINT thid) = 0;
	virtual ADDR returnHandler(REGClass& reg, UINT thid) = 0;		
	virtual void sysBlackDoor(UINT flag) = 0;
};

template<EVENT_CLASS_LIST_DEF>
EventHandler<EVENT_CLASS_LIST_INI>::EventHandler(MMUClass& m, MACHINEClass* mach) : _mmu(m) {
	_machine = mach;
};

template<EVENT_CLASS_LIST_DEF>
EventHandler<EVENT_CLASS_LIST_INI>::EventHandler(MMUClass& m) : _mmu(m) {};

#endif /*EVENTHANLDER_H_*/

