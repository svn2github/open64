/*
 *  File: machine.h
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
#ifndef MACHINE_H_
#define MACHINE_H_

#include "defs.h"
#include "status.h"
#include "memory.h"
#include "simdefs.h"
#include "symtable.h"
#include "regmapitem.h"
#include "profiler.h"
#include "fetch.h"
#include "tracer.h"
//#include "eventhandler.h"

#if _SYSTEM_SIMULATION	
	#define MACHINE_CLASS_LIST_DEF class MMUClass, class REGClass, class FETCHCLass, class EXECLass, class INSTRCLass, class DISASMClass, class MACHINEClass, class DECODERClass , class EVENTClass,class SystemClass 
	#define MACHINE_CLASS_LIST_INI MMUClass, REGClass, FETCHCLass, EXECLass, INSTRCLass, DISASMClass, MACHINEClass, DECODERClass, EVENTClass, SystemClass
	#define CYCLE_INC(thid) \
                system()->addCycle(thid);
	#define SYS_IS_NON_NORMAL (system()->getStatus()!=SystemClass::STATUS_NORMAL)
	#define DEVICE_TRIGGER \
                system()->clock(); \
                if(SYS_IS_NON_NORMAL) status().event(EVENT_INTERRUPT);
#else
class SystemClass;
	#define MACHINE_CLASS_LIST_DEF class MMUClass, class REGClass, class FETCHCLass, class EXECLass, class INSTRCLass, class DISASMClass, class MACHINEClass, class DECODERClass , class EVENTClass
	#define MACHINE_CLASS_LIST_INI MMUClass, REGClass, FETCHCLass, EXECLass, INSTRCLass, DISASMClass, MACHINEClass, DECODERClass, EVENTClass
	#define CYCLE_INC(thid)
	#define SYS_IS_NON_NORMAL (FALSE)
	#define DEVICE_TRIGGER
#endif

#define MACHINE_IS_BREAK(s) ((s&ESTATUS_INSTR_BREAK)||(s&ESTATUS_MEM_RBREAK)||(s&ESTATUS_MEM_WBREAK))

#ifdef __SL1ARCH__
#define ISNOP if(instr->id()!=nop_id && instr->id()!=nop16_id)
#else
#define ISNOP 0;
#endif

#define MACHINE_EXEC_CHECK() 	\
				s = status().state(); \
				if (s==ESTATUS_NORMAL) { \
					pc = getExec()->execute(pc, instr); \
					ISNOP \
						fetchinstrcnt++; \
					instrcnt++; \
					s = status().state(); \
					PROFILER_LOG(out()) \
					CYCLE_INC(curthread()) \
				} \
				DEVICE_TRIGGER \
				if(status().event()!=EVENT_NONE) { \
					pc = eventHandler(pc); \
					s = status().state(); \
				}
							
class SymTable;

template<MACHINE_CLASS_LIST_DEF>
class Machine {
protected:
	MMUClass& _mmu;
	FETCHCLass& _fetch;
	ProcessStatus<INSTRCLass>& _status;
	SystemClass* _system;
	
	Profiler<INSTRCLass, MACHINEClass>* _profiler;
	ADDR _pc[MAX_THREAD];
	BOOL _pcEnable[MAX_THREAD];
	BOOL _pcEnableDefault[MAX_THREAD];
	EXECLass* _exec[MAX_THREAD];
	ELF_object* _obj[MAX_THREAD];
	ADDR _startPC[MAX_THREAD];
	RegMap _regMap[MAX_THREAD];
	DISASMClass* _disasm[MAX_THREAD];
	UINT _threadObjId[MAX_THREAD];
	UINT _curthread;
	FILE *_out;
	BOOL _isMultiThreadMode;
	BOOL _isMultiObject;
	EVENTClass* _eHandler;
	
public:
	Machine(MMUClass& mmu, FETCHCLass& fetch, ProcessStatus<INSTRCLass>& status);
	MMUClass& mmu(void) { return _mmu; }
	SystemClass* system(void) { 	return _system; }
	void system(SystemClass* sys) { 
		_system = sys; 
		eHandler()->system(sys);
	}
	FETCHCLass& fetch(void) { return _fetch; }
	ProcessStatus<INSTRCLass>& status(void) { return _status; }
	EVENTClass* eHandler(void) { return _eHandler; }
	void eHandler(EVENTClass *e) { _eHandler = e;}
	
	DISASMClass* getDisasm(void) { return _disasm[curthread()]; }
	EXECLass* getExec(void) {return _exec[curthread()]; }	
	EXECLass* getExec(UINT thread_id) {	return _exec[thread_id]; }	
	void setThread(EXECLass* exec, DISASMClass* dis, UINT thread_id) { 
		SimFatal((thread_id<MAX_THREAD), ("Machine error: Invalid thread ID (%d, max = %d)", thread_id, MAX_THREAD));
		_regMap[thread_id].clear();
		SimFatal((_regMap[thread_id].size()==0),("Invalid map\n"));
		exec->reg().createNameMap(_regMap[thread_id]);
		(_regMap[thread_id])[pcName] = new RegMapItem(pcName, WORD_BYTE, (BYTE*) &_pc[thread_id]);
		_exec[thread_id] = exec;
		_disasm[thread_id] = dis;
	}
	void setThread(UINT thread_id) { 
		SimFatal((thread_id<MAX_THREAD), ("Machine error: Invalid thread ID (%d, max = %d)", thread_id, MAX_THREAD));
		_regMap[thread_id].clear();
		SimFatal((_regMap[thread_id].size()==0),("Machine error: Invalid map\n"));
		SimFatal((_exec[thread_id]!=NULL),("Machine error: NULL execution object\n"));
		SimFatal((_disasm[thread_id]!=NULL),("Machine error: NULL disassemble object\n"));
		_exec[thread_id]->reg().createNameMap(_regMap[thread_id]);
		(_regMap[thread_id])[pcName] = new RegMapItem(pcName, WORD_BYTE, (BYTE*) &_pc[thread_id]);
	}
		
	ADDR getStartPC(void) { return _startPC[curthread()]; }
	void setStartPC(ADDR start) { 
		_startPC[curthread()] = start;
		_pcEnable[curthread()] = _pcEnableDefault[curthread()];
	}
	
	ADDR getPC(UINT thr_id) { return _pc[thr_id]; }
	ADDR getPC(void) { return _pc[curthread()]; }
	void setPC(ADDR pc) { _pc[curthread()] = pc; }
	void setPC(UINT thr_id, ADDR pc) { _pc[thr_id] = pc; }

	BOOL pcEnableDefault(UINT thr_id) { return _pcEnableDefault[thr_id]; }
	void pcEnableDefault(UINT thr_id, BOOL t) { _pcEnableDefault[thr_id] = t; }	
	BOOL getPCEnable(UINT thr_id) { return _pcEnable[thr_id]; }
	BOOL getPCEnable(void) { return _pcEnable[curthread()]; }
	void enablePC(UINT thr_id) { _pcEnable[thr_id] = TRUE; }
	void enablePC(void) { _pcEnable[curthread()] = TRUE; }
	void disablePC(void) { _pcEnable[curthread()] = FALSE; }
	void disablePC(UINT thr_id) { _pcEnable[thr_id] = FALSE; }	
	
	void isMultiObject(BOOL t) { _isMultiObject = t; }
	BOOL isMultiObject(void) { return _isMultiObject; }
	STRING getSymName(ADDR addr) {
		return (getDisasm()->symtable()==NULL?NULL:getDisasm()->symtable()->getName(addr));
	}

	void reset(void) {
		for(UINT i = 0; i<MAX_THREAD; i++) {
			_exec[i] = NULL;
			_disasm[i] = NULL;
			_pc[i] = 0;
			_obj[i] = NULL;
			_startPC[i] = 0;
			_pcEnable[i] = FALSE;
			_pcEnableDefault[i] = TRUE;
			_threadObjId[i] = i;
		}	
		_isMultiThreadMode = FALSE;	
		curthread(0);
	}
	void out(FILE* o) { _out = o; }
	FILE* out(void) { return _out; }
	void isMultiThreadMode(BOOL t) { _isMultiThreadMode = t; }
	BOOL isMultiThreadMode(void) { return _isMultiThreadMode; }	
	void profiler(Profiler<INSTRCLass, MACHINEClass>* p) { _profiler = p; }
	Profiler<INSTRCLass, MACHINEClass>* profiler(void) {return _profiler; }
	RegMap& getRegMap(void) { return _regMap[curthread()]; }
	REGClass& getReg(void) { return getExec()->reg();}
	ADDR eventHandler(ADDR pc); 
	void statusHandler(ADDR pc, UINT cnt, UINT fetchcnt);
	UINT multiThreadStatusHandler(ADDR pc);	
	UINT curthread(void) { return _curthread; }
	void curthread(UINT c) {
		mmu().curthread(c); 
		_curthread = c; 
	}
	ELF_object* getObj(void) {
		if(isMultiObject()==TRUE) { 
			return _obj[_threadObjId[curthread()]];
		}
		else {
			return _obj[THREAD_ID_0];
		} 
	}
	BOOL checkObj(void) { return (_obj[curthread()]!=NULL); }
	INT setObj(ELF_object* o) { 
		INT ret = 0;
		if(_obj[curthread()]!=NULL) {
			delete _obj[curthread()];
			ret = 1;
		}
		_obj[curthread()] = o; 
		return ret;
	}
	BOOL threadSwitch(void) {
		UINT ct = curthread();
		for(INT i = 0; i<MAX_THREAD; i++) {
			ct = (++ct)%MAX_THREAD;
			if(getPCEnable(ct)==TRUE) {
				curthread(ct);
				break;
			}
		}
	}
	
	UINT runSingle(UINT cnt);
	UINT runMulti(UINT cnt);
	UINT runSingleDisasm(UINT cnt);
	UINT runMultiDisasm(UINT cnt);	
	UINT runMem(ADDR start, UINT cnt, BOOL isDisasm);
	UINT runTrace(FILE* in, BOOL verf);	
	ADDR runInstr(ADDR pc, INSTRCLass* instr, UINT threadid);	

};

template<MACHINE_CLASS_LIST_DEF>
Machine<MACHINE_CLASS_LIST_INI>::Machine(MMUClass& mmu, FETCHCLass& fetch, ProcessStatus<INSTRCLass>& status) 
						: _mmu(mmu), _fetch(fetch), _status(status){
	_out = stdout;	
	_profiler = NULL;
	_isMultiObject = TRUE;
	reset();
}

template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::multiThreadStatusHandler(ADDR pc) {
	UINT s = status().state();
	SimFatal((s!=ESTATUS_ERR), ("Machine error: unknown fatal error.\n"));
	status().last_state(s);
	if((s&ESTATUS_ALL_END)>0) {
		if((s&ESTATUS_END)>0) {
			fprintf(out(), "Machine(thd=%d): program ended at 0x%08x.\n", curthread(), pc);  
		}
		if((s&ESTATUS_EXIT_0)>0) {
			fprintf(out(), "Machine(thd=%d): program ended normally at 0x%08x\n", curthread(), pc);  
		}
		if((s&ESTATUS_EXIT_1)>0) {
			fprintf(out(), "Machine(thd=%d): program ended with error at 0x%08x\n", curthread(), pc);  
		}
		disablePC();
		for(INT i = 0; i<MAX_THREAD; i++) {
			if(getPCEnable(i)==TRUE) {
				s &= (~ESTATUS_ALL_END);
				status().state(s);
				return s;
			}
		}		
	}
	return s;
}

template<MACHINE_CLASS_LIST_DEF>
void Machine<MACHINE_CLASS_LIST_INI>::statusHandler(ADDR pc, UINT cnt, UINT fetchcnt) {
	UINT s = status().state();
	SimFatal((s!=ESTATUS_ERR), ("Machine error: unknown fatal error.\n"));
	status().last_state(s);
	if((s&ESTATUS_END)>0) {
		disablePC();
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): program ended at 0x%08x.\n", curthread(), pc);  
		}
		else {
			fprintf(out(), "Machine(all threads): program ended at 0x%08x.\n", curthread(), pc);  
			setThread(curthread());
		}		
	}
	if((s&ESTATUS_INSTR_BREAK)>0) {
		fprintf(out(), "Breakpoint: instruction (thd=%d) pre-break at 0x%08x(%s).\n", curthread(), pc,getSymName(pc));
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		}
		mmu().setBreak(pc, ET_INSTR_SKIP);
	}
	if((s&ESTATUS_MEM_RBREAK)>0) {
		fprintf(out(), "Breakpoint: memory read post-break at 0x%08x (trigger address = 0x%08x).\n", status().breakAddr(), status().pre_pc());
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		} 
	}	
	if((s&ESTATUS_MEM_WBREAK)>0) {
		fprintf(out(), "Breakpoint: memory write post-break at 0x%08x (trigger address = 0x%08x).\n", status().breakAddr(), status().pre_pc());
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		} 
	}
	if((s&ESTATUS_EXIT_0)>0) {
		disablePC();
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): program ended normally at 0x%08x\n", curthread(), pc); 
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			fprintf(out(), "Machine(all threads): program ended normally at 0x%08x\n", pc); 
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		}
	}
	if((s&ESTATUS_EXIT_1)>0) {
		disablePC();
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine(thd=%d): program ended with error at 0x%08x\n", curthread(), pc); 
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			fprintf(out(), "Machine(all threads): program ended with error at 0x%08x\n", pc); 
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		}		
	}
	if((s&ESTATUS_ALREADY_END)>0) {
		fprintf(out(), "Machine(thd=%d): program has ended already or pc has not been initialized\n", curthread());  
	}
	if((s&ESTATUS_USER_END)>0) {
		if(isMultiThreadMode()==FALSE) {
			fprintf(out(), "Machine: program has been terminated by user at 0x%08x\n", pc); 
			fprintf(out(), "Machine(thd=%d): %d instruction(s) executed.\n", curthread(), cnt);
			fprintf(out(), "Machine(thd=%d): %d instruction(s) fetched.\n", curthread(), fetchcnt);
		}
		else {
			
			fprintf(out(), "Machine: program has been terminated by user at 0x%08x\n", pc); 
			fprintf(out(), "Machine(all threads): %d instruction(s) executed.\n", cnt);
			fprintf(out(), "Machine(all threads): %d instruction(s) fetched.\n", fetchcnt);
			setThread(curthread());
		}			
	}
	
	PROFILER_DUMP_INSTRCNT(out())
	
}

template<MACHINE_CLASS_LIST_DEF>
ADDR Machine<MACHINE_CLASS_LIST_INI>::eventHandler(ADDR pc) {
	UINT inter = status().event();
	SimFatal((inter!=EVENT_ERR), ("Machine error: unknown fatal error.\n"));
	setPC(pc);
	//non-interrupt fsim event 

	if((inter&EVENT_START_THREAD)>0) {
		status().clearEvent(EVENT_START_THREAD);
		enablePC(status().start_thid());
	}	
	if((inter&EVENT_END_THREAD)>0) {
		status().clearEvent(EVENT_END_THREAD);
		disablePC();
	}	
	if((inter&EVENT_SWITCH_THREAD)>0) {
		status().clearEvent(EVENT_SWITCH_THREAD);
		curthread(status().switch_thid());
	}	
	if((inter&EVENT_CTRL_C)>0) {
 		status().state(ESTATUS_USER_END);
 		status().clearEvent(EVENT_CTRL_C);
	}	
/*	
	if((inter&EVENT_SWITCH_THREAD)>0) {
		status().clearEvent(EVENT_SWITCH_THREAD);
		curthread(status().switch_thid());
	}	
*/	
	//device interrupt or exceptions
	if((inter&EVENT_EXCEPTION)>0) {
		setPC(eHandler()->exceptionHandler(getExec()->reg(), pc, inter, curthread()));
		status().clearEvent(EVENT_EXCEPTION);
	}
	else if((inter&EVENT_ERETURN)>0) {
		setPC(eHandler()->returnHandler(getExec()->reg(), curthread()));
		status().clearEvent(EVENT_ERETURN);
	}	
	else if((inter&EVENT_INTERRUPT)>0) {
		setPC(eHandler()->interruptHandler(getExec()->reg(), pc, curthread()));
		status().clearEvent(EVENT_INTERRUPT);
	}	
		
	// black door for enable/disable system
	if((inter&EVENT_SYSTEM_BLACK_DOOR)>0) {
		eHandler()->sysBlackDoor((inter&EVENT_SYSTEM_BLACK_DOOR));
		status().clearEvent(EVENT_SYSTEM_BLACK_DOOR);
	}
	return getPC();
}


template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runSingle(UINT cnt){
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	if(getPCEnable()!=TRUE) {
		status().state(ESTATUS_ALREADY_END);
		statusHandler(0, 0, 0);
	}
	else {
		UINT s = ESTATUS_NORMAL;	
		ADDR pc = getPC();
		INSTRCLass* instr;
		if(cnt==0) {
			while(s==ESTATUS_NORMAL) {				
				status().enable(curthread());
				instr = fetch().getInstr(pc);				
				MACHINE_EXEC_CHECK()
			}
		}
		else {
			while(s==ESTATUS_NORMAL&&cnt>instrcnt) {
				status().enable(curthread());
				instr = fetch().getInstr(pc);
				MACHINE_EXEC_CHECK()					
			}			
		}
		status().disable();
		setPC(pc);
		statusHandler(pc, instrcnt, fetchinstrcnt);
	}
	return instrcnt;
}

template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runSingleDisasm(UINT cnt){
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	if(getPCEnable()!=TRUE) {
		status().state(ESTATUS_ALREADY_END);
		statusHandler(0, 0, 0);
	}
	else {
		UINT s = ESTATUS_ERR;	
		ADDR pc = getPC();
		INSTRCLass* instr;
		s = ESTATUS_NORMAL;		
		if(cnt==0) {
			while(s==ESTATUS_NORMAL) {
				status().enable(curthread());
				instr = fetch().getInstr(pc);
				fprintf(out(), "%s", getDisasm()->disasm(pc, instr, 0));
				MACHINE_EXEC_CHECK()					
			}
		}
		else {
			while(s==ESTATUS_NORMAL&&cnt>instrcnt) {
				status().enable(curthread());
				instr = fetch().getInstr(pc);
				fprintf(out(), "%s", getDisasm()->disasm(pc, instr, 0));
				MACHINE_EXEC_CHECK()					
			}			
		}
		status().disable();
		setPC(pc);
		statusHandler(pc, instrcnt, fetchinstrcnt);
	}
	return instrcnt;
}

template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runMultiDisasm(UINT cnt){
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	UINT s = ESTATUS_NORMAL;	
	INSTRCLass* instr;
	DISASMClass* disasm;
	ADDR pc;	
	isMultiThreadMode(TRUE);
	INT one_end=0;
	if(cnt==0) {
		while(s==ESTATUS_NORMAL) {
			threadSwitch();
			if(getPCEnable()!=TRUE) {
				status().state(ESTATUS_ALREADY_END);
				pc = 0;
				s = multiThreadStatusHandler(pc);
				one_end++;
				if(one_end>=MAX_THREAD)
					break;
				continue;
			}
			disasm = getDisasm();
			pc = getPC();
			status().enable(curthread());
			instr = fetch().getInstr(pc);
			fprintf(out(), "%d: %s", curthread(), getDisasm()->disasm(pc, instr, 0));
			MACHINE_EXEC_CHECK()
			setPC(pc);
			s = multiThreadStatusHandler(pc);
		}
	}
	else {
		while(s==ESTATUS_NORMAL&&cnt>instrcnt) {
			threadSwitch();
			if(getPCEnable()!=TRUE) {
				status().state(ESTATUS_ALREADY_END);
				pc = 0;
				s = multiThreadStatusHandler(pc);
				one_end++;
				if(one_end>=MAX_THREAD)
					break;
				continue;
			}
			disasm = getDisasm();
			pc = getPC();				
			status().enable(curthread());
			instr = fetch().getInstr(pc);
			fprintf(out(), "%d: %s", curthread(), getDisasm()->disasm(pc, instr, 0));
			MACHINE_EXEC_CHECK()				
			setPC(pc);
			s = multiThreadStatusHandler(pc);
		}			
	}
	status().disable();
	statusHandler(pc, instrcnt, fetchinstrcnt);
	isMultiThreadMode(FALSE);
	return instrcnt;
}

template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runMulti(UINT cnt){
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	BOOL hasErr = FALSE;
	
	isMultiThreadMode(TRUE);
	for(INT i = 0; i<MAX_THREAD; i++) {
		if(getExec(i)==NULL) {
			hasErr = TRUE;
		}
	}
	INT one_end=0;
	if(hasErr==FALSE) {
		UINT s = ESTATUS_NORMAL;	
		INSTRCLass* instr;
		ADDR pc;	
		if(cnt==0) {
			while(s==ESTATUS_NORMAL) {
				threadSwitch();
				if(getPCEnable()!=TRUE) {
					status().state(ESTATUS_ALREADY_END);
					pc = 0;
					s = multiThreadStatusHandler(pc);
					one_end++;
					if(one_end>=MAX_THREAD)
						break;
					continue;
				}
				pc = getPC();
				status().enable(curthread());
				instr = fetch().getInstr(pc);
				MACHINE_EXEC_CHECK()				
				setPC(pc);
				s = multiThreadStatusHandler(pc);
			}
			
		}
		else {
			while(s==ESTATUS_NORMAL&&cnt>instrcnt) {
				threadSwitch();
				if(getPCEnable()!=TRUE) {
					status().state(ESTATUS_ALREADY_END);
					pc = 0;
					s = multiThreadStatusHandler(pc);
					one_end++;
					if(one_end>=MAX_THREAD)
						break;
					continue;
				}
				pc = getPC();				
				status().enable(curthread());
				instr = fetch().getInstr(pc);
				MACHINE_EXEC_CHECK()				
				setPC(pc);
				s = multiThreadStatusHandler(pc);
			}			
		}
		status().disable();
		statusHandler(pc, instrcnt, fetchinstrcnt);
	}
	isMultiThreadMode(FALSE);
	return instrcnt;
}

template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runMem(ADDR start, UINT cnt, BOOL isDisasm){
	UINT s = ESTATUS_NORMAL;	
	ADDR pc = start;
	pair<WORD, UBYTE> raw;
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	INSTRCLass* instr = new INSTRCLass;
	while(s==ESTATUS_NORMAL&&cnt>instrcnt) {
		raw = mmu().memory()->readInstr(pc);
		status().enable(curthread());
		if((fetch().getSingleInstr(instr, pc, raw.first)==HWORD_BYTE)&&((pc&WORD_ALIGN_MASK)==0)) {
			raw.second = mmu().memory()->getHWordEntryTag(pc);
		}
		
		CHECK_INSTR_BREAK(pc, raw.second)

		if(isDisasm==TRUE) {
			fprintf(out(), "%s", getDisasm()->disasm(pc, instr, 0));
		}
		// skip the breakpoint if it's the 1st instruction to be executed			
		MACHINE_EXEC_CHECK()					
	}
	status().disable();
	setPC(pc);
	statusHandler(pc, instrcnt, fetchinstrcnt);
	delete instr;
	return instrcnt;	
}


template<MACHINE_CLASS_LIST_DEF>
UINT Machine<MACHINE_CLASS_LIST_INI>::runTrace(FILE* in, BOOL verf){
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;

	DECODERClass decoder(ASSERT_INVALID_INSTR);
	INSTRCLass * instr = NULL;

	UINT s = ESTATUS_NORMAL;	
	ADDR pc, pre_pc;
	WORD rawbits;
	
	instr = new INSTRCLass();

	Tracer tr;
	tr.init(in, verf);

	while (s != ESTATUS_ERR && !tr.error() && !tr.end()) {			
		curthread(tr.thid());
		pc = tr.pc();
		rawbits = tr.raw();
		status().enable(curthread());
		instr->init();
		decoder.decode(instr, pc, rawbits);
		MACHINE_EXEC_CHECK();
		#if 0
		if (verf) {
			if (instr->writereg()) {
				tr.regCheck(tr.line(), getExec()->reg().regWrites());
			}
			if (instr->writemem()) {				
				tr.memCheck(tr.line(), mmu().memWrites());
			}
		}
		#endif
		tr.next();
		s = multiThreadStatusHandler(pc);
	}

	status().disable();
	if (tr.error()) {
		fprintf(out(), tr.errMsg());
	}
	else {
		statusHandler(pc, instrcnt, fetchinstrcnt);
	}

	delete instr;

	return instrcnt;
#if 0
	struct line_info{
		ADDR pc;
		WORD rawbits;
		UINT thid;
		UINT loc;
		WORD data;
	};
	UINT instrcnt = 0;
	UINT fetchinstrcnt = 0;
	
	BOOL eof   = FALSE;
	char buf[MAX_LINE_LEN];
	char emsg[MAX_LINE_LEN*2];

	DECODERClass decoder(ASSERT_INVALID_INSTR);
	INSTRCLass * instr = NULL;

	UINT s = ESTATUS_NORMAL;	
	ADDR pc, pre_pc;
	WORD rawbits;
	UINT lines = 0;
	UINT cnt = 0;

	emsg[0] = 0;
	line_info * lis = new line_info[MAX_LINES_READ];
	if (lis == NULL) {
		strcpy(emsg, "Fsim out of memory !\n");
		goto TRACE_FAIL;
	}
	instr = new INSTRCLass();
	if (instr == NULL) {
		strcpy(emsg, "Fsim out of memory !\n");
		goto TRACE_FAIL;
	}

	while (1) {
		// read instructions
		lines = 0;
		while (lines < MAX_LINES_READ) {
			if (!fgets(buf, MAX_LINE_LEN, in)) {
				eof = TRUE;				
				break;
			}
			if (!sscanf(buf, "%08x %08x %02x", &lis[lines].pc, &lis[lines].rawbits, &lis[lines].thid)){
				sprintf(emsg, "Line %d : [%s] format error", instrcnt+lines, buf);
				goto TRACE_FAIL;
			}

			if (verf && strlen(buf) > LINE_BASIC_LEN) {
				char * p = buf + LINE_BASIC_LEN - REG_WRITE_TAG_LEN;
				if (*p == 'R') p += REG_WRITE_TAG_LEN;
				else p += MEM_WRITE_TAG_LEN;
				
				if (!sscanf(p, "%x:%08x", &lis[lines].loc, &lis[lines].data)) {
					sprintf(emsg, "Line %d : [%s] format error", instrcnt+lines, buf);
					goto TRACE_FAIL;
				}
			}
			lines++;
		}
		
		// execute		
		cnt = 0;
		while (s != ESTATUS_ERR && cnt < lines) {			
			curthread(lis[cnt].thid);
			pc = lis[cnt].pc;
			rawbits = lis[cnt].rawbits;
			status().enable(curthread());
			instr->init();
			decoder.decode(instr, pc, rawbits);
			MACHINE_EXEC_CHECK()							
			s = multiThreadStatusHandler(pc);
			
			if (verf) {
				pre_pc = lis[cnt].pc;
				if (instr->writereg()) {
					UINT32 ind; 
					WORD regdata;
					BOOL regwrite = getExec()->reg().getLastWrite(ind, regdata);
					AppFatal((regwrite == TRUE), ("Line %d encounter a write register instruction: pc %08x raw %08x, "
						"but register written not token!\n", instrcnt, pre_pc, rawbits));

					if ((ind != lis[cnt].loc) || (regdata != lis[cnt].data)) {
						sprintf(emsg, "Excute trace line %d, pc %08x, rawdata %08x \n"
							"register value [%02x, %08x] not expected [%02x, %08x]\n", instrcnt, pre_pc, rawbits, 
							ind, regdata, lis[cnt].loc, lis[cnt].data);
						goto TRACE_FAIL;
					}
				} 

				if (instr->writemem()) {
					ADDR mem; 
					WORD data; 
					INT  type;			
					BOOL memwrite = mmu().memory()->getLastWrite(mem, data, type);
					AppFatal((memwrite == TRUE), ("Encounter a write memory instruction, but memory written not token!\n"));

					if ((mem != lis[cnt].loc) || (data != lis[cnt].data)) {
						sprintf(emsg, "Excute trace line %d, pc %08x, rawdata %08x \n"
							"memory value [%08x, %08x] not expected [%08x, %08x]\n", instrcnt, pre_pc, rawbits, 
							mem, data, lis[cnt].loc, lis[cnt].data);
						goto TRACE_FAIL;			
					}
				}				
			}
			
		}
		cnt++;
		if (eof == TRUE) break;
	}
	
TRACE_FAIL:
	status().disable();
	if (emsg[0] != 0) {
		fprintf(out(), emsg);
	}
	else {
		statusHandler(pc, instrcnt, fetchinstrcnt);
	}
	delete []lis;
	delete instr;

	return instrcnt;
#endif					
}

template<MACHINE_CLASS_LIST_DEF>
ADDR Machine<MACHINE_CLASS_LIST_INI>::runInstr(ADDR pc, INSTRCLass* instr, UINT threadid){
	curthread(threadid);
	UINT s = ESTATUS_ERR;	
	ADDR next_pc;
	status().enable(curthread());
	next_pc = getExec()->execute(pc, instr);
	status().disable(curthread());
	return next_pc;
}

#endif /*MACHINE_H_*/
