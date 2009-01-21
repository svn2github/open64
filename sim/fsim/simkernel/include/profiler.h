/*
 *  File: profiler.h
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
#ifndef PROFILER_H_
#define PROFILER_H_

#include "status.h"
#include "simerror.h"
#include "symtable.h"
#include "bmmu.h"
#include "breg.h"
#ifdef __SL1ARCH__
#include "sl1instrid.h"
#endif
#ifdef __CYGWIN__
#include "syswin32.h"
#endif

#if _PROFILER_BUILD		
#define PROFILER_LOG(out) profiler()->log(out);
#define PROFILER_DUMP_INSTRCNT(out) profiler()->printInstrCnt(out);
#else
#define PROFILER_LOG(out)
#define PROFILER_DUMP_INSTRCNT(out)
#endif

extern STRING Instr_Group_Name[];

template<class INSTRClass, class MACHINEClass>
class Profiler {
	private:
	ProcessStatus<INSTRClass>& _status;
	MACHINEClass& _machine;
	ADDR _taskIDAddr;
	BOOL _redirect;
	BOOL _activated;
	BOOL _logTrace;
	BOOL _logRegMem;
	BOOL _logQuickTrace;
	BOOL _logIgnoreTrace;
	BOOL _logFocusTrace;
	BOOL _logTask;
	BOOL _logDisasm;
	BOOL _logCbus;
	BOOL _logRegWrite;
	BOOL _logCall;
	BOOL _logInstrCnt;
	BOOL _logStackMark;
	
	FILE* _fileTrace;	
	FILE* _fileRegMem;
	FILE* _fileDisasm;
	FILE* _fileCbus;
	FILE* _fileRegWrite;
	FILE* _fileCall;
	FILE* _fileTask;
	
	char _nameTrace[MAX_LOG_FILE_NAME_SIZE];
	char _nameTask[MAX_LOG_FILE_NAME_SIZE];
	char _nameDisasm[MAX_LOG_FILE_NAME_SIZE];
	char _nameCbus[MAX_LOG_FILE_NAME_SIZE];
	char _nameRegWrite[MAX_LOG_FILE_NAME_SIZE];
	char _traceBuf[0xC800000];
	char _nameBuf[100];
	
	INT  _nameLen;
	INT  _tracePos;
	INT  _nameCount;
	INT _maxInstrGr;
	UINT* _instrGrCnt;
	UINT _nop16[MAX_THREAD];
	UINT _nop[MAX_THREAD];
	UINT _totalCnt[MAX_THREAD];
	BOOL _needDisplayDetailInstrInfo;

	private:
	BOOL activated(void) { return _activated; }	
	void activated(BOOL t) { _activated = t; }	
					
	public:
	Profiler(ProcessStatus<INSTRClass>& s, MACHINEClass& mach, INT maxInstrCnt) : _status(s), _machine(mach) {
		INT i;
		_activated = TRUE;
		_logTrace = FALSE;
		_logRegMem = FALSE;
		_logQuickTrace = FALSE;
		_logIgnoreTrace = FALSE;
		_logFocusTrace = FALSE;
		_logDisasm = FALSE;
		_logCbus = FALSE;
		_logRegWrite = FALSE;
		_logTask = FALSE;
		_logCall = FALSE;
		_logInstrCnt = FALSE;
		_logStackMark = FALSE;
		_fileTrace = NULL;
		_fileRegMem = NULL;
		_fileDisasm = NULL;
		_fileCbus = NULL;
		_fileRegWrite = NULL;	
		_fileCall = NULL;
		_fileTask = NULL;
		_tracePos = 0;
		memset(_nameBuf,0,sizeof(_nameBuf));		
		_nameLen = 0;
		_nameCount = 0;
		_redirect = FALSE;
		_taskIDAddr = 0;
		_maxInstrGr = maxInstrCnt;
		_instrGrCnt = new UINT[maxInstrCnt];
		resetCnt();
	}
	ProcessStatus<INSTRClass>& status(void) { return _status; }
	MACHINEClass& machine(void) { return _machine; }
	void logStackMark(BOOL t);
	BOOL logStackMark(void) { return _logStackMark; }	
	void logTrace(BOOL t, STRING name);
	BOOL logTrace(void) { return _logTrace; }
	void logRegMem(BOOL t, STRING name);
	BOOL logRegMem(void) { return _logRegMem; }
	void logQuickTrace(BOOL t);
	BOOL logQuickTrace(void) { return _logQuickTrace;}
	void logPerfTrace (BOOL t,UINT threadId);	 
	void logIgnoreTrace(BOOL t,STRING name);
	BOOL logIgnoreTrace(void) { return _logIgnoreTrace;}
	void logFocusTrace(BOOL t,STRING name);
	BOOL logFocusTrace(void) { return _logFocusTrace;}
	void logTask(BOOL t, STRING name);
	BOOL logTask(void) { return _logTask; }	
	void logDisasm(BOOL t, STRING name);
	BOOL logDisasm(void) { return _logDisasm; }
	void logCbus(BOOL t, STRING name);
	BOOL logCbus(void) { return _logCbus; }
	void logRegWrite(BOOL t, STRING name);
	BOOL logRegWrite(void) { return _logRegWrite; }
	void logCall(BOOL t, STRING name);
	BOOL logCall(void) { return _logCall; }
	void logInstrCnt(BOOL t);
	BOOL logInstrCnt(void) { return _logInstrCnt; }	
	void logInstrCntDetail(BOOL t);
	BOOL logInstrCntDetail(void) { return _needDisplayDetailInstrInfo; }	
	void redirect(BOOL t) { _redirect = t; }
	BOOL redirect(void) { return _redirect; }
	ADDR taskIDAddr(void) { return _taskIDAddr; }
	void taskIDAddr(ADDR a) { _taskIDAddr = a; }
	SymTable* symtable(void) {return machine().getDisasm()->symtable();}
	void printInstrCnt(FILE* out);
		
	void suspense(void);
	void resume(void);	
	void log(FILE*);
	void end(void);
	void endPerfTrace(void);
	void getPsimRes(void);
	void resetCnt(void) {
		for(INT i = 0; i<_maxInstrGr; i++) {
			_instrGrCnt[i] = 0;
		}
		for(INT i=0; i< MAX_THREAD; i++){
			_nop16[i] = 0;
			_nop[i] = 0;
			_totalCnt[i] = 0;			
		}
	}
	
};


template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logStackMark(BOOL t) { 	
	if(_logStackMark!=t) {
		_logStackMark = t;
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logInstrCnt(BOOL t) { 	
	if(_logInstrCnt!=t) {
		_logInstrCnt = t;
		if(t==FALSE) {
			resetCnt();
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logInstrCntDetail(BOOL t) { 	
	if(_needDisplayDetailInstrInfo!=t) {
		_needDisplayDetailInstrInfo = t;
		//if(t==FALSE) {
		//	resetCnt();
		//}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logTrace(BOOL t, STRING name) { 	
	if(_logTrace!=t) {
		_logTrace = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileTrace = fopen64(name, "w");
				if(_fileTrace==NULL) {
					throw ProfilerException("cannot start.", "cannot open trace file.");
				}
				_nameLen = strlen(name);
				strncpy(_nameBuf,name,_nameLen);		
			}
			else{	
				_fileTrace = stdout;	
//				throw ProfilerException("cannot enable this mode.", "filename missing.");
			}
		}
		else {
			if(_fileTrace!=stdout&&_fileTrace!=NULL) {
				fclose(_fileTrace);
			}
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logRegMem(BOOL t, STRING name) { 	
	if(_logRegMem!=t) {		
		// machine().clearWriteFlag();
		
		_logRegMem = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileRegMem = fopen64(name, "w");
				if(_fileRegMem==NULL) {
					throw ProfilerException("cannot start.", "cannot open trace file.");
				}
			}
			else{	
				_fileRegMem = stdout;	
			}
		}
		else {
			if(_fileRegMem!=stdout&&_fileRegMem!=NULL) {
				fclose(_fileRegMem);
			}
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}


template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logQuickTrace(BOOL t) { 	
	if(_logQuickTrace!=t) {
		_logQuickTrace = t;
	}
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logIgnoreTrace(BOOL t,STRING name) { 
	if(t==TRUE)
	{
		if(_logFocusTrace==TRUE)
			throw ProfilerException("cannot enable this mode.", "FocusTrace mode is enable now.");
	}	
	if(_logIgnoreTrace!=t) {
		_logIgnoreTrace = t;
		if(t==TRUE)
			symtable()->setIgnoreFocusAddr(name);
	}
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logFocusTrace(BOOL t,STRING name) { 
	if(t==TRUE)
	{
		if(_logIgnoreTrace==TRUE)
			throw ProfilerException("cannot enable this mode.", "IgnoreTrace mode is enable now.");
	}	
	if(_logFocusTrace!=t) {
		_logFocusTrace = t;
		if(t==TRUE)
			symtable()->setIgnoreFocusAddr(name);
	}
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}


template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logTask(BOOL t, STRING name) { 	
	if(_logTask!=t) {
		_logTask = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileTrace = fopen64(name, "w");
				if(_fileTrace==NULL) {
					throw ProfilerException("cannot start.", "cannot open trace file.");
				}		
			}
			else{	
				_fileTask = stdout;	
//				throw ProfilerException("cannot enable this mode.", "filename missing.");
			}
		}
		else {
			if(_fileTask!=stdout&&_fileTask!=NULL) {
				fclose(_fileTask);
			}
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logDisasm(BOOL t, STRING name) { 	
	if(_logDisasm!=t) {
		_logDisasm = t;
		if(t==TRUE) {
			
			if(name!=NULL) {
				_fileDisasm = fopen64(name, "w");
				if(_fileDisasm==NULL) {
					throw ProfilerException("cannot start.", "cannot open disasm log file.");
				}		
			}
			else{	
				_fileDisasm = stdout;	
			}
		}
		else {
			if(_fileDisasm!=stdout&&_fileDisasm!=NULL) {
				fclose(_fileDisasm);
			}
		}			
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}	
	}	
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logCbus(BOOL t, STRING name) { 	
	if(_logCbus!=t) {
		_logCbus = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileCbus = fopen64(name, "w");
				if(_fileCbus==NULL) {
					throw ProfilerException("cannot start.", "cannot open log file for cbus.");
				}		
			}
			else{	
				_fileCbus = stdout;	
			}
		}
		else {
			if(_fileCbus!=stdout&&_fileCbus!=NULL) {
				fclose(_fileCbus);
			}
		}		
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}
	}	
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logRegWrite(BOOL t, STRING name) { 	
	if(_logRegWrite!=t) {
		_logRegWrite = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileRegWrite = fopen64(name, "w");
				if(_fileRegWrite==NULL) {
					throw ProfilerException("cannot start.", "cannot open log file for reg.");
				}		
			}
			else{	
				_fileRegWrite = stdout;	
			}
		}
		else {
			if(_fileRegWrite!=stdout&&_fileRegWrite!=NULL) {
				fclose(_fileRegWrite);
			}
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}
	}	
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::logCall(BOOL t, STRING name) { 	
	if(_logCall!=t) {
		_logCall = t;
		if(t==TRUE) {
			if(name!=NULL) {
				_fileCall = fopen64(name, "w");
				if(_fileCall==NULL) {
					throw ProfilerException("cannot start.", "output file cannot open.");
				}		
			}
			else{	
				_fileCall = stdout;	
			}
		}
		else {
			if(_fileCall!=stdout&&_fileCall!=NULL) {
				fclose(_fileCall);
			}
		}
	} 
	else {
		if(t==TRUE) {
			throw ProfilerException("cannot enable this mode.", "this has been enable already.");
		}
		else {
			throw ProfilerException("cannot disable this mode.", "this has been disable already.");
		}
	}	
}


template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::suspense()	{ 
	if(activated()==TRUE) {
		activated(FALSE);
		if(logTrace()) {
			fflush(_fileTrace);
		}
		if(logTask()) {
			fflush(_fileTask);
		}		
		if(logDisasm()) {
			fflush(_fileDisasm);		
		}
		if(logCbus()) {
			throw ProfilerException("cannot resume.", "profiler cbus is not implemented.");
		}
		if(logRegWrite()) {
			throw ProfilerException("cannot resume.", "profiler reg write is not implemented.");	
		}	
		if(logCall()) {
			fflush(_fileCall);			
		}				
	}
	else {
		throw ProfilerException("cannot resume.", "profiler is not running.");
	}		
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::resume() { 
	if(activated()==FALSE) {
		activated(TRUE);
	}
	else {
		throw ProfilerException("cannot resume.", "profiler has not been suspensed.");
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::log(FILE* out){
	if(activated()==TRUE) {		
		if(logStackMark()) {
			if(status().spWrite()==TRUE) {
				status().extMeta("stack", status().spValue());
			}
		}
			
		if(logTrace()) {
			ADDR pc = status().pre_pc();
			WORD raw = status().instr()->rawbits();
			UINT meta = status().meta();
			UINT tid = status().thread_id();
			STRING extMeta = status().extMeta();
			if(logQuickTrace()==true)
			{
				char bufcontent[100];
				char *temp,*buf;
				INT temp_int[3];
				INT i,j,extmeta0=-1,extmeta1=-1;
				UINT size;
				BOOL writeflag=TRUE;
				buf = &bufcontent[1];
				
				if(_logIgnoreTrace==TRUE)
				{
					AppFatal((_logFocusTrace==FALSE), ("ignore and focus mode is on at the same time!!!!"));
					size = symtable()->getIFAddrNum();
					for(j=0;j<size;j++)
					{
			    		if(pc>=symtable()->getIFaddrBegin(j) && pc<symtable()->getIFaddrEnd(j))
						{
							writeflag=FALSE;
							break;
						}
					}
				}
				else if(_logFocusTrace==TRUE)
				{
					writeflag=FALSE;
					size = symtable()->getIFAddrNum();
					for(j=0;j<size;j++)
					{
			    		if(pc>=symtable()->getIFaddrBegin(j) && pc<symtable()->getIFaddrEnd(j))
						{
							writeflag=TRUE;
							break;
						}
					}						
				}
				if(writeflag==TRUE)
				{
	        		temp_int[0] = pc;
	        		temp_int[1] = raw;
					temp = (char *)&temp_int[0];
					for(i=0;i<8;i++)
						buf[i] = temp[i];
					buf[8] = meta;
					buf[9] = tid;
					INT len = strlen(extMeta);
					if(len)
					{
						sscanf(extMeta, "offset=%x", &extmeta0);
						if(extmeta0!=-1)
						{
							temp = (char *)&extmeta0;
							for(i=0;i<4;i++)
							buf[10+i] = temp[i];
							len=4;
						}
						else
						{
							sscanf(extMeta, "ar1=%x ar2=%x", &extmeta0, &extmeta1);
							temp = (char *)&extmeta0;
							for(i=0;i<4;i++)
								buf[10+i] = temp[i];
							temp = (char *)&extmeta1;
							for(i=0;i<4;i++)
								buf[14+i] = temp[i];
							len = 8;
						}	
					}
					bufcontent[0] = 10+len;
					if((_tracePos+10+len+1)<=sizeof(_traceBuf))
					{
						memcpy(&_traceBuf[0]+_tracePos,bufcontent,10+len+1);
						_tracePos += 10+len+1;
					}
					else{
						if(_fileTrace!=NULL)
						{
							if(fwrite(_traceBuf,_tracePos,1,_fileTrace)!=-1)
							{
								fclose(_fileTrace);
								sprintf(_nameBuf+_nameLen,"%d",_nameCount);
								_nameCount++;
								_fileTrace = fopen64(_nameBuf,"w+");
								memcpy(_traceBuf,bufcontent,10+len+1);
							}
							else
							{
								_fileTrace=NULL;
								DevWarn("write file error\n");	
							}
						}		
						_tracePos = 10+len+1;	
					}
				}
			}
			else
			{	
				BOOL writeflag=TRUE;
				UINT size;
				INT j;
				if(_logIgnoreTrace==TRUE)
				{
					AppFatal((_logFocusTrace==FALSE), ("ignore and focus mode is on at the same time!!!!"));
					size = symtable()->getIFAddrNum();
					for(j=0;j<size;j++)
					{
			    		if(pc>=symtable()->getIFaddrBegin(j) && pc<symtable()->getIFaddrEnd(j))
						{
							writeflag=FALSE;
							break;
						}
					}
				}
				else if(_logFocusTrace==TRUE)
				{
					writeflag=FALSE;
					size = symtable()->getIFAddrNum();
					for(j=0;j<size;j++)
					{
			    		if(pc>=symtable()->getIFaddrBegin(j) && pc<symtable()->getIFaddrEnd(j))
						{
							writeflag=TRUE;
							break;
						}
					}						
				}
				if(writeflag==TRUE)
					fprintf(_fileTrace, "%08x %08x %x %d %s\n", pc, raw, meta, tid, extMeta);
			}
			if(redirect()==TRUE&&_fileTrace!=stdout) {
				fprintf(stdout, "%08x %08x %08x %d %s\n", pc, raw, meta, tid, extMeta);
			}
		}	
		if(logInstrCnt()) {
			UINT tid = status().thread_id();
			_totalCnt[tid]++;
			#ifdef __SL1ARCH__			
			if(status().instr()->id()==nop16_id) {
				_nop16[tid]++;
			}
			else if(status().instr()->id()==nop_id) {
				_nop[tid]++;
			}	
			else 
			#endif
				_instrGrCnt[status().instr()->group()]++;		
		}	
		if(logTask()) {
			WORD taskid = machine().mmu().getWord(taskIDAddr());
			ADDR pc = status().pre_pc();
			WORD raw = status().instr()->rawbits();
			UINT meta = status().meta();
			UINT tid = status().thread_id();
			STRING extMeta = status().extMeta();
			fprintf(_fileTrace, "%x %x %x %x %d %s\n", taskid, pc, raw, meta, tid, extMeta);
			if(redirect()==TRUE&&_fileTrace!=stdout) {
				fprintf(stdout, "%08x %08x %08x %08x %d %s\n", taskid, pc, raw, meta, tid, extMeta);
			}
		}		
		if(logDisasm()) {
			ADDR pc = status().pre_pc();
			INSTRClass* instr = status().instr();
			UINT meta = status().meta();	
			UINT tid = status().thread_id();
			fprintf(_fileDisasm, "%d: %s", tid, machine().getDisasm()->disasm(pc, instr, meta));	
			if(redirect()==TRUE&&_fileDisasm!=stdout) {
				fprintf(stdout, "%d: %s", tid, machine().getDisasm()->disasm(pc, instr, meta));	
			}				
		}
		if(logCbus()) {
			fprintf(out, "Profiler: cbus logging not implemented\n");	
		}
		if(logRegWrite()) {
			fprintf(out, "Profiler: regwrite logging not implemented\n");	
		}	
		if(logCall()) {
			INSTRClass* instr = status().instr();
			if((UINT)instr->group()==GROUP_ID_EIG_J||(UINT)instr->group()==GROUP_ID_EIG_J16) {
				SymTable* sym = machine().getDisasm()->symtable();
				if(sym!=NULL) {
					ADDR target_pc = status().post_pc();
					STRING name = sym->getFuncName(target_pc);
					UINT tid = status().thread_id();
					if(name!=NULL) {
						ADDR pc = status().pre_pc();
						fprintf(_fileCall, "%d: 0x%08x 0x%08x %s\n", tid, pc, target_pc, name);
						if(redirect()==TRUE&&_fileCall!=stdout) {
							fprintf(stdout, "%d: 0x%08x 0x%08x %s\n", tid, pc, target_pc, name);	
						}							
					}
				}
			}		
		}							
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::end()	{ 
	if(logTrace()) {
		if(_fileTrace!=stdout&&_fileTrace!=NULL) {
			if(_logQuickTrace==true)
				if(_tracePos!=0)
					fwrite(_traceBuf,_tracePos,1,_fileTrace);
			fclose(_fileTrace);
			_fileTrace=NULL;
		}		
	}
	if(logTask()) {
		if(_fileTask!=stdout&&_fileTask!=NULL) {
			fclose(_fileTask);
		}		
	}	
	if(logDisasm()) {
		if(_fileDisasm!=stdout&&_fileDisasm!=NULL) {
			fclose(_fileDisasm);
		}			
	}
	if(logCbus()) {
		throw ProfilerException("cannot close file.", "profiler cbus is not implemented.");
	}
	if(logRegWrite()) {
		throw ProfilerException("cannot close file.", "profiler reg write is not implemented.");	
	}	
	if(logCall()) {
		if(_fileCall!=stdout&&_fileCall!=NULL) {
			fclose(_fileCall);
		}				
	}
}

template<class INSTRClass, class DISASMClass>
void Profiler<INSTRClass, DISASMClass>::printInstrCnt(FILE* out) {
	if(logInstrCnt()) {
		for(INT i=0; i<MAX_THREAD; i++)
			if(_totalCnt[i] != 0) {
				fprintf(out, "Thread [%d]: Real Instr [%012u]", i, _totalCnt[i]-_nop16[i]-_nop[i]);
				fprintf(out, "\t\tnop16 [%010u] (%0.2f)\n", _nop16[i], (float)_nop16[i]/_totalCnt[i]);
			}
		if(logInstrCntDetail()) {
		UINT totalCnt = 0;
		UINT nops = 0;
		for(INT i=0; i<MAX_THREAD; i++) {
			totalCnt += _totalCnt[i];
			nops = _nop[i];
		}
		fprintf(out, "====Instruction Count====\n");
		
		for(INT i = 1; i<_maxInstrGr; i++) {
			fprintf(out, "%s: \t%010u (%0.2f)\t\t", Instr_Group_Name[i], _instrGrCnt[i], (float)_instrGrCnt[i]/totalCnt);
			if(i%2 == 0)
				fprintf(out,"\n");
		}
		fprintf(out, "\nnop: \t%010u (%0.2f)", nops, (float)nops/totalCnt);	
		
		}
		resetCnt();
	}
}

#endif /*PROFILER_H_*/
