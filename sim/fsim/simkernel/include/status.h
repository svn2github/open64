/*
 *  File: status.h
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
#ifndef STATUS_H_
#define STATUS_H_

#include "defs.h"
#include "simdefs.h"

#define MAX_EXT_META 512
#define MAX_DEST_REG 5
#define MAX_MEM_BUS 2
#define BR_MISS 0xffffffff
#define BR_HIT	0

#define CHECK_MEM_BREAK(addr, tag) status().checkMemBreak(addr, tag);
#define CHECK_INSTR_BREAK(addr, tag) \
	if(tag!=ET_NORMAL) { \
		if((tag&ET_INSTR_SKIP)>0) { \
			mmu().clearBreak(addr, ET_INSTR_SKIP); \
		} \
		else { \
			status().checkInstrBreak(tag); \
		} \
	}

enum EEXT_META {
	EMETA_INVAILD = -1,
	EMETA_NONE = 0,
	EMETA_OFFSET = 1,
};

enum EMEM_TYPE {
	EMEM_INVAILD = -1,
	EMEM_CBUS_READ = 0,
	EMEM_CBUS_WRITE = 1,
	EMEM_SRAM0_READ = 2,
	EMEM_SRAM0_WRITE = 3,	
	EMEM_SRAM1_READ = 4,
	EMEM_SRAM1_WRITE = 5,
};


template <class INSTRClass>
class ProcessStatus {
private:
	//profiler logging
	BYTE _thread_id;
	UINT _meta;
	INT _extMetaIndex;
	char _extMeta[MAX_EXT_META];
	INSTRClass* _instr;
	BOOL _activate;
	UINT _event;
	UINT _switch_thid;
	
	//Status logging
	ADDR _pre_pc;
	ADDR _post_pc;
	UINT _state;
	UINT _last_state;
	ADDR _breakAddr;
	
	//sp write logging
	WORD _spValue;
	BOOL _spWrite;
	
public:
	ProcessStatus() { 
		_post_pc = 0;
		_switch_thid = 0;
		clear(0); 
		_state = ESTATUS_NORMAL;
		_last_state = ESTATUS_NORMAL;
		_activate = FALSE;
		_event = EVENT_NONE;
	}
	UINT state(void) { return _state; }
	void state(UINT16 s) { _state |= s; }
	UINT last_state(void) { return _last_state; }
	void last_state(UINT16 s) { _last_state = s; }
	
	UINT event(void) { return _event; }
	void event(UINT e) { 
		LOCK_STATUS
		_event |= e; 
		UNLOCK_STATUS
	}
	void startThread(UINT id) { 
		LOCK_STATUS
		_event |= EVENT_START_THREAD; 
		_switch_thid = id;
		UNLOCK_STATUS
	}		
	void switchThread(UINT id) { 
		LOCK_STATUS
		_event |= EVENT_SWITCH_THREAD; 
		_switch_thid = id;
		UNLOCK_STATUS
	}	
	void clearEvent(void) { 
		LOCK_STATUS
		_event = EVENT_NONE;
		UNLOCK_STATUS 
	}
	void clearEvent(UINT e) {
		LOCK_STATUS 
		_event &= (~e);
		UNLOCK_STATUS 
	}
	
	void setState(UINT s) { _state = s; }
	UINT meta(void) { return _meta; }
	void meta(UINT m) { _meta = m; }
	void extMeta(STRING str, UINT data) {
		_extMetaIndex += sprintf(_extMeta+_extMetaIndex,"%s=0x%x ", str, data);
	}		
	STRING extMeta(void) {
		return _extMeta;
	}	
	UINT breakAddr(void) { return _breakAddr; }
	void breakAddr(ADDR a) { _breakAddr = a; }		
	BYTE thread_id(void) { return _thread_id; }
	void thread_id(BYTE id) { _thread_id = id; }	
	
	void logExec(ADDR pre, ADDR post, INSTRClass* i) {
		pre_pc(pre);
		post_pc(post);	
		instr(i);
	}
	
	void checkInstrBreak(UBYTE tag) { 
		if(_activate==TRUE) {
			if((tag&ET_INSTR_SKIP)==0&&(tag&ET_INSTR)>0) {
				state(ESTATUS_INSTR_BREAK);
			}		
		}
	}
	void checkMemBreak(ADDR addr, UBYTE tag) { 
		if(_activate==TRUE) {
			if((tag&ET_RB)>0) {
				state(ESTATUS_MEM_RBREAK);
				_breakAddr = addr;
			}
			if((tag&ET_WB)>0) {
				state(ESTATUS_MEM_WBREAK);
				_breakAddr = addr;
			}
		}
	}	
	void resume(void) {
		_activate = TRUE;
	}
	void suspense(void) {
		_activate = FALSE;
	}	
	void enable(BYTE id) {
		clear(id);
		_activate = TRUE;
	}
	void disable() {
		_activate = FALSE;
	}	
	
	void clear(BYTE id) {
		_state = ESTATUS_NORMAL;
		_breakAddr = 0;
		_pre_pc = _post_pc;
		_post_pc = 0;
		_thread_id = id;
		_instr = NULL;
		//_event = EVENT_NONE;
#if _PROFILER_BUILD	
		_spValue = 0;
		_spWrite = FALSE;
		_meta = 0;
		_extMetaIndex = 0;
		_extMeta[0] = '\0';	
#endif		
	}
		
	ADDR pre_pc(void) { return _pre_pc; }
	void pre_pc(ADDR addr) { _pre_pc = addr; }
	ADDR post_pc(void) { return _post_pc; }
	ADDR* post_pc_ptr(void) { 
		return &_post_pc; 
	}
	void post_pc(ADDR addr) { _post_pc = addr; }
	UINT switch_thid(void) { return _switch_thid; }
	UINT start_thid(void) { return _switch_thid; }
	INSTRClass* instr(void) { return _instr; }
	void instr(INSTRClass* in) { _instr = in; }
	WORD spValue(void) { return _spValue; }
	BOOL spWrite(void) { return	_spWrite; }	
};

#endif /*STATUS_H_*/
