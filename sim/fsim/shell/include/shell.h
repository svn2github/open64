/*
 *  File: shell.h
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

#ifndef SHELL_H_
#define SHELL_H_

#include "shellbase.h"
#include <tcl.h>
#include "loader.h"
#include "tclapi.h"
#include "memory.h"
#include "breakpoint.h"
#include "profiler.h"
#include "symtable.h"
#include "tclReadline.h"
#include "gdbserver.h"
#include "bmmu.h"

#include <string>
#include <pthread.h>

#ifndef _WARN_SHELL
#define _WARN_SHELL 0
#endif

#if _WARN_SHELL
#define WARN_SHELL printf
#else
#define WARN_SHELL(x,...) ((void)1)
#endif



#define SHELL_CLASS_LIST_DEF class REGClass, class MMUClass, class INSTRClass, class DECODERClass, class FETCHClass, class EXEClass, class DISASMClass, class MACHINEClass
#define SHELL_CLASS_LIST_INI REGClass, MMUClass, INSTRClass, DECODERClass, FETCHClass, EXEClass, DISASMClass, MACHINEClass


template<SHELL_CLASS_LIST_DEF>
class Shell : public ShellBase {
	protected:
	FILE* _out;
	char _batchCmdFile[MAX_FILE_NAME_LEN];
	std::string _batchCmdLine;
	Address& _addr;
	ProcessStatus<INSTRClass>& _status;
	MMUClass& _mmu;
	FETCHClass& _fetch;
	MACHINEClass& _machine;
	Profiler<INSTRClass, MACHINEClass>* _profiler;
	BreakPoint<MMUClass>* _breakpoint[MAX_MEM_VIEW];
	struct args {
		STRING pArgs;
		UINT sizeOfArgs;
	}sArgs;
	GDBServer<GDBSERVER_CLASS_LIST_INI>* _gdbServer;
	UINT _verboselevel;	/*Used for dump some debug information for user when it is set*/	
	public:
	Shell(FILE* o, MMUClass& mu, ProcessStatus<INSTRClass>& s, FETCHClass& f, MACHINEClass& mach, Profiler<INSTRClass, MACHINEClass>* p);
	Shell(void);
	virtual ~Shell(void) {
		profiler()->end();
	}
	//shell lib dependent main
	INT mainRunTCL(INT argc, STRING argv[]);

	//get/set
	struct args& getArgs( void ) { return sArgs; }
	FILE* out(void) { return _out; }
 	virtual MMUClass& mmu(void) { return _mmu; }
	ProcessStatus<INSTRClass>& status(void) { return _status; }
	FETCHClass& fetch(void) { return _fetch; }
	MACHINEClass& machine(void) { return _machine; }
	Profiler<INSTRClass, MACHINEClass>* profiler(void) { 
		SimFatal((_profiler!=NULL), ("Shell error: Profiler is NULL"));
		return _profiler; 
	}
	SymTable* symtable(void) { return machine().getDisasm()->symtable(); }
	// FIXME
	#ifndef _SL2_MACHINE_
	BreakPoint<MMUClass>* breakpoint(void) { return _breakpoint[machine().curthread()];}
	#else
	BreakPoint<MMUClass>* breakpoint(void) { return _breakpoint[0];}
	#endif
	GDBServer<GDBSERVER_CLASS_LIST_INI>* gdbServer(void) { return _gdbServer; }
	void VerboseLevel(UINT verboselevel) {		
		_verboselevel = verboselevel;
		for(UINT i=0; i<MAX_THREAD; i++)
			machine().getExec(i)->VerboseLevel(verboselevel);
	}
	UINT VerboseLevel(void) { return _verboselevel;}
	
	// elf
	INT initFromElf(struct symbol_t *symbolList = NULL);
		
		
	//Virtual Functions	
	virtual INT init(void);
	virtual void printUsage(void);
	virtual void printCmdUsage(STRING name);

	//cmd
	virtual INT   cmdBackTrace(void) ;
	virtual INT   cmdClearAllBreak() ;
	virtual INT   cmdClearBreakByIndex(UINT brknum);
	virtual INT   cmdClearInstrBreak(ADDR pc) ;
	virtual INT   cmdClearReadBreak(ADDR pc) ;
	virtual INT   cmdClearRegs(void) ;
	virtual INT   cmdClearMem(void) ;
	virtual INT   cmdClearWriteBreak(ADDR pc) ;
	virtual INT   cmdDisassembly(ADDR startpc, UINT range)  ;
	virtual INT   cmdDumpFunc(FILE* funcFp);
	virtual INT   cmdDumpMem(FILE *out, ADDR addr, UINT length);
	virtual void  cmdDumpRegs(FILE *out, INT mode, const char* regSetName); //mode 0:normal; 1:one value per line
	virtual INT   cmdExit(void);
	virtual INT   cmdEnableBreak(UINT, BOOL);
	virtual INT   cmdEnableRedirect(BOOL flag);
	virtual char *cmdGetBatchCmdFile(void) { return _batchCmdFile; }
	virtual const char *cmdGetBatchCmdLine(void) { return _batchCmdLine.c_str(); }
	virtual void *cmdGetElf(void);
	virtual ADDR  cmdGetPC() { return machine().getPC(); }
	virtual char* cmdGetPrompt(void);
	virtual DWORD cmdGetReg(STRING name);
	virtual INT   cmdGetRegisterNames(char *buf, int len);
	virtual WORD  cmdGetExecStatus(void);
	virtual ADDR  cmdGetSymbolAddr(const char *name, INT threadId=-1);
	virtual INT   cmdGetThread(void);
	virtual INT   cmdHelp(STRING cmd) ;
	virtual INT   cmdInitMem(FILE *in, ADDR addr);
	virtual INT   cmdInitRegs(FILE *inRegs, const char* regSetName);
	virtual INT   cmdInitSRAM(FILE *inRegs, ADDR offset);
	virtual INT   cmdInterruptCtrlC(void);
	virtual INT   cmdLcdSwitch(BOOL on);
	virtual INT   cmdSetLcdWidth(INT width);
	virtual INT   cmdSetLcdHeight(INT height);
	virtual void  cmdLinkRegisters(void);
	virtual INT   cmdLoadElf(STRING elfName);
	virtual INT   cmdLoadElf(struct symbol_t *symbolList);
	virtual INT   cmdLogStack(BOOL enable);
	virtual INT   cmdLogInstrCnt(BOOL enable, BOOL enabledetail);
	virtual INT   cmdLogCall(BOOL enable, STRING name);
	virtual INT   cmdLogCbus(BOOL enable, STRING name);
	virtual INT   cmdLogDisasm(BOOL enable, STRING name);
	virtual INT   cmdLogEnableSwitch(BOOL enable);
	virtual INT   cmdLogRegWrite(BOOL enable, STRING name);
	virtual INT   cmdLogResumeSwitch(BOOL enable);
	virtual INT   cmdLogTaskTrace(BOOL enable, STRING filename);
	virtual INT   cmdLogTrace(BOOL enable, STRING name);
	virtual INT   cmdLogRegMem(BOOL enable, STRING name);	
	virtual INT   cmdLogQuickTrace(BOOL enable);
	virtual INT   cmdLogIgnoreTrace(BOOL enable, STRING name);
	virtual INT   cmdLogFocusTrace(BOOL enable, STRING name);
	virtual INT   cmdLogUserThreadIdSymbol(STRING userThreadIdSymbol);
	virtual INT   cmdPutArgsInStack( void );
	virtual INT   cmdReadRange(ADDR addr, UINT cnt);
	virtual WORD  cmdReadInstr(ADDR addr);
	virtual BYTE  cmdReadDataByte(ADDR addr);
	virtual HWORD cmdReadDataHword(ADDR addr);
	virtual WORD  cmdReadDataWord(ADDR addr);	
	virtual INT   cmdRerunSingleElf(BOOL isDisasm);
	virtual INT   cmdRunMem(ADDR addr, INT steps, BOOL isDisasm);
	virtual INT   cmdRunSingleElf(BOOL isDisasm);
	virtual INT   cmdRunTrace(STRING name, BOOL verify = TRUE) ;	
	virtual INT   cmdRunMultiElf(BOOL isDisasm);
	virtual INT   cmdSetArgument( int argc, const char *argv[] );
	virtual void  cmdSetExecMode(INT modeID, WORD value);
	virtual INT   cmdSetInstrBreak(ADDR pc) ;
	virtual void  cmdSetPC(ADDR pc) { machine().setPC(pc); }
	virtual INT   cmdSetReadBreak(ADDR pc) ;
	virtual INT   cmdSetReg(STRING name, DWORD data);
	virtual INT   cmdSetThread(UINT threadid);
	virtual INT   cmdSetWriteBreak(ADDR pc) ;
	virtual void  cmdShowBreakPoints(void);
	virtual void  cmdShowDmaTraffic(UINT mask);
	virtual void  cmdResetDmaTraffic(void);
	virtual INT   cmdStepElf(INT steps, BOOL isDisasm,INT thread_mode);
	virtual INT   cmdWriteBlock(ADDR addr, BYTE data, INT size);
	virtual INT   cmdWriteInstr(ADDR addr, WORD data);
	virtual INT   cmdWriteDataByte(ADDR addr, BYTE data);
	virtual INT   cmdWriteDataHword(ADDR addr, HWORD data);
	virtual INT   cmdWriteDataWord(ADDR addr, WORD data);	
	virtual INT   cmdSetShareMemHigh(ADDR addr);
	virtual INT   cmdSetShareMemLow(ADDR addr);
	virtual bool  isValidRegName(const STRING regName);
	virtual void  showStatus(void);
};

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::printCmdUsage(STRING name) {
	for (INT i=0; FsimCmdIdxTbl[i].cmdName; i++)
	{
		if (strcmp(name, FsimCmdIdxTbl[i].cmdName) == 0) {
			fprintf(out(), "\t%s.\n", FsimCmdIdxTbl[i].cmdUsage);	
			return;
		}
	}
	fprintf(out(), "Shell error: command (%s) not found.\n", name);	
}

template <SHELL_CLASS_LIST_DEF>
Shell<SHELL_CLASS_LIST_INI>::Shell() :
	_addr(*(new Address)),
	_status(*(new ProcessStatus<INSTRClass>)),
	_mmu(*(new MMUClass(_addr, _status))),
	_fetch(*(new FETCHClass((MMUClass&)_mmu, _addr, _status))),
	_machine(*(new MACHINEClass((MMUClass&)_mmu, _fetch, _status)))
{
	_out = stdout;
	_batchCmdFile[0] = 0;
	_batchCmdLine.clear();
	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		_breakpoint[i] = new BreakPoint<MMUClass>((MMUClass&)_mmu);
	}
	sArgs.pArgs = NULL;
	sArgs.sizeOfArgs = 0;
}

template <SHELL_CLASS_LIST_DEF>
Shell<SHELL_CLASS_LIST_INI>::Shell(FILE* o, MMUClass& mu, 
	ProcessStatus<INSTRClass>& s, FETCHClass& f, MACHINEClass& mach, Profiler<INSTRClass, MACHINEClass>* p) :
	_mmu(mu), _status(s), _fetch(f), _machine(mach)
{
	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		_breakpoint[i] = new BreakPoint<MMUClass>(mu);
	}
	_out = o;
	_profiler = p;
	_batchCmdFile[0] = 0;
	_batchCmdLine.clear();
}

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::printUsage() {
	fprintf(out(), "--help(-h): Print this help.\n");
	fprintf(out(), "--batch(-b) cmd-file: Execute command file.\n");
	fprintf(out(), "--cmd commands: Execute commands.\n");
	fprintf(out(), "-xc core-binary:Load file for core thread.If no commands specified, execute it and return.\n");
	fprintf(out(), "-xb bb-binary.If no commands specified, execute it and return.\n");
	fprintf(out(), "-d Run as a GDB target.\n");
	fprintf(out(), "-pts Open a pseudo serial device.\n");	
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::mainRunTCL(INT argc, STRING argv[]) {
	INT nargc = 1;
	STRING nargv[2];
	fprintf(out(), "-------------------------------------------------------------------\n");
	fprintf(out(), "SimpLight SLx simulator version 0.3 built at  %s %s\n", __DATE__, __TIME__);
	fprintf(out(), "Copyright(C) 2006 Beijing SimpLight Nanoelectronics, Ltd.\n");
	fprintf(out(), "-------------------------------------------------------------------\n");
	/*
	* Initialize your application here.
	*
	* Then initialize and run Tcl.
	*/
	// Add command name to completion list, use function interface in tcl.h
	#ifdef _USE_READLINE_
	for(INT i=0; FsimCmdIdxTbl[i].cmdName; i++) {
	    SL_addToCmdCompletionList(FsimCmdIdxTbl[i].cmdName);
	    if (FsimCmdIdxTbl[i].cmdAlias)
	    	SL_addToCmdCompletionList(FsimCmdIdxTbl[i].cmdAlias);
	}
	#endif
	// parse command line options here
	// check help	
	char *coreThreadFile=NULL;
	char *bbThreadFile=NULL;
	bool bHasCmd = false;
	for (INT i=1; i<argc;) {
		if (strncmp(argv[i], "-h", 2)==0 || strncmp(argv[i], "--help", 6)==0) {
			printUsage();
			exit(0);
		} else if (strcmp(argv[i], "-b")==0|| strcmp(argv[i], "--batch")==0) {
			IsTrue((strlen(argv[i+1])<MAX_FILE_NAME_LEN-4), ("Filename %s is too long\n", argv[i+1]));
			strncpy(_batchCmdFile, argv[i+1], MAX_FILE_NAME_LEN-4);
			_batchCmdFile[MAX_FILE_NAME_LEN-4] = '\0';
			i+=2;
		}  else if (strcmp(argv[i], "--cmd") == 0) {
			_batchCmdLine += argv[i+1];
			_batchCmdLine += ";";
			i+=2;
			bHasCmd = true;
		} else if (strcmp(argv[i], "-xc") == 0) {
			coreThreadFile = argv[i+1];
			_batchCmdLine[0] = 0;
			_batchCmdLine += "set thread core; load ";
			_batchCmdLine += coreThreadFile;
			_batchCmdLine += ";";
			i+=2;
		} else if (strcmp(argv[i], "-xb") == 0) {
			bbThreadFile = argv[i+1];
			_batchCmdLine[0] = 0;
			_batchCmdLine += "set thread bb; load ";
			_batchCmdLine += bbThreadFile;
			_batchCmdLine += ";";
			i+=2;
 		} else if(strncmp(argv[i], "-pts", 4) == 0) {
			i+=1;
		} else if (strncmp(argv[i], "-d:",3)==0) {
			/* If given `-d:xxxxx' argument to main. Set communication mode 
			 * to tcp, get the number `xxxxx' after `-d:' as tcp port number, 
			 * set daemon mode to DAEMON_MODE_D_COLON, set daemon function 
			 * to RunFsimDaemon. */
			char *port_str;
			int port = 10086;
			port_str = strchr (argv[i], ':');
			if( port_str ) {
				port = atoi (port_str + 1);
				if( port < 1024 || port > 65535) {
					fprintf(stderr, 
					"'%d' is not a validate tcp port number, using default port:10086.\n", 
					port);
					port = 10086;
					
				}
			}
			if (isValidRegName("cond"))
				gdbServer()->reset(SL_ABI_V32, COMM_MODE_TCP, port);
			else
				gdbServer()->reset(SL_ABI_B32, COMM_MODE_TCP, port);
			pthread_t thread_gdbsrv;
			if (pthread_create(&thread_gdbsrv, NULL, GDBServer<GDBSERVER_CLASS_LIST_INI>::startThread, gdbServer()) ==0 ) {
				fprintf(stdout, "GDB server is running in background.\n");fflush(NULL);
			} else {
				fprintf(stderr, "GDB server thread start failed.\n");fflush(NULL);
			}
			i+=1;
		} else if (strcmp(argv[i], "-d")==0) {
			/* If given only `-d' argument to main. Set communication mode 
			 * to pipe, set daemon mode to DAEMON_MODE_D, set daemon function
			 * to RunFsimDaemon. */
			if (isValidRegName("cond"))
				gdbServer()->reset(SL_ABI_V32, COMM_MODE_PIPE, 0);
			else
				gdbServer()->reset(SL_ABI_B32, COMM_MODE_PIPE, 0);
			GDBServer<GDBSERVER_CLASS_LIST_INI>::startThread(gdbServer());
			return 0;
			i+=1;
		} else {
			fprintf(out(), "Shell error: Unknown option (%s).\n\n", argv[i]);	
			printUsage();
			exit(0);
		} 
	}

	// if no cmd, we'll add run or prun to execute the files and return
	if (!bHasCmd && (bbThreadFile || coreThreadFile)) {
		if (bbThreadFile&&coreThreadFile) {
			_batchCmdLine += "prun;q";
		} else {
			_batchCmdLine += "run;q";
		}
	}
		
	// start tcl shell
fflush(NULL);
	nargv[0] = argv[0];
	nargv[1] = NULL;
	Tcl_Main(nargc, nargv, Tcl_AppInit);
	return 0;
}


template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::init() {
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdEnableBreak(UINT index, BOOL enabled) {
	if (enabled)
		return breakpoint()->enableBreakByIndex(index);
	else
		return breakpoint()->disableBreakByIndex(index);
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdEnableRedirect(BOOL enabled) {
	// Kevin: please come here
	profiler()->redirect(enabled);
	return 0;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdExit() {
	//stop profiler and release memorys
	profiler()->end();
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdHelp(STRING cmdName) {
	std::string s="Ambiguous: ";
	
	if (cmdName != NULL) {
		INT m = 0;
		INT n = 0;
		for (INT i=0; FsimCmdIdxTbl[i].cmdName; i++) {
			if (strncmp(FsimCmdIdxTbl[i].cmdName, cmdName, strlen(cmdName)) == 0) {
				n = i;
				s+=" "; s += FsimCmdIdxTbl[i].cmdName;
				if(strlen(cmdName) == strlen(FsimCmdIdxTbl[i].cmdName)) {
					m = 1;
					break;
				}
				m++;
			}
			
			// check alias too
			if (FsimCmdIdxTbl[i].cmdAlias && 
				(strncmp(FsimCmdIdxTbl[i].cmdAlias, cmdName, strlen(cmdName)) == 0)) {
				n = i;
				s+=" "; s += FsimCmdIdxTbl[i].cmdAlias;
				if(strlen(cmdName) == strlen(FsimCmdIdxTbl[i].cmdAlias)) {
					m = 1;
					break;
				}
				m++;
			}
		}
		if (m == 1) {
//			fprintf(out(),"\n");
			if (FsimCmdIdxTbl[n].cmdUsageDetails) {
				fprintf(out(), FsimCmdIdxTbl[n].cmdUsageDetails);
			}
			else {
				fprintf(out(), "%s\n", FsimCmdIdxTbl[n].cmdUsage); 
			}
			return SHELL_OK;
		} else if(m > 1) {
			fprintf(out(),"%s\n", s.c_str());
			return SHELL_OK;
		} else {
			fprintf(out(), "Command (%s)  not found.\n", cmdName);
			return SHELL_ERROR;
		}
	}
	else {
		fprintf(out(), "List of commands: \n");
		for (INT i=0; FsimCmdIdxTbl[i].cmdName; i++)
			fprintf(out(), "\t%s\n", FsimCmdIdxTbl[i].cmdUsage); 
	}
	return SHELL_OK;	
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdInterruptCtrlC(void) {
	status().event(EVENT_CTRL_C);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetInstrBreak(ADDR pc) {
	try {
		breakpoint()->setInstrBreak(pc);
	} catch (BreakPointInvalidAddrException ex) {
		//ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetReadBreak(ADDR pc) {
	try {
		breakpoint()->setReadBreak(pc);
	} catch (BreakPointInvalidAddrException ex) {
		//ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetWriteBreak(ADDR pc) {
	try {
		breakpoint()->setWriteBreak(pc);
	} catch (BreakPointInvalidAddrException ex) {
		//ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearBreakByIndex(UINT brknum) {
	return breakpoint()->clearBreakByIndex(brknum);
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearInstrBreak(ADDR pc) {
	return breakpoint()->clearInstrBreak(pc);
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearReadBreak(ADDR pc) {
	return breakpoint()->clearReadBreak(pc);
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearRegs(void) {
	machine().getReg().clear();
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearMem(void) {
	/* This function is added for FSIM gdbserver use. */	
	mmu().clearMem();
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearWriteBreak(ADDR pc) {
	return breakpoint()->clearWriteBreak(pc);
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdClearAllBreak(void) {
	try {
		breakpoint()->clearAllBreak();
	} catch (BreakPointInvalidAddrException ex) {
		//ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
void *Shell<SHELL_CLASS_LIST_INI>::cmdGetElf(void){
	return machine().getObj();
}

template <SHELL_CLASS_LIST_DEF>
char *Shell<SHELL_CLASS_LIST_INI>::cmdGetPrompt(void){
	SimFatal((machine().curthread()<MAX_THREAD), ("Invalid thread id\n"));
	return prompt_str[machine().curthread()];
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::initFromElf(struct symbol_t *symbolList) {
	mmu().init();
	
	ADDR ucLibcInit  = SYM_UNDEF;
	ADDR groundAddr = SYM_UNDEF;
	ADDR startAddr = SYM_UNDEF;
	ADDR mainAddr = SYM_UNDEF;
	ADDR sp = SYM_UNDEF;
	ADDR textEnd = SYM_UNDEF;
	ADDR dataEnd = SYM_UNDEF;
	ADDR allocStart = SYM_UNDEF;
	ADDR exceptionHandler = SYM_UNDEF;
	ADDR interruptHandler = SYM_UNDEF;
	ADDR bssStart = SYM_UNDEF;
	
	ADDR pc = SYM_UNDEF;
	ADDR textStart = SYM_UNDEF;
	ADDR dataStart = 0;	
	
	if (symbolList != NULL) {
		/* If symbolList is given by GDB. */
		struct symbol_t *p = symbolList;
		while (p->sym_name != NULL) {
			if (strcmp(p->sym_name, "_init") == 0) {
				ucLibcInit = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__ground_zero") == 0) {
				groundAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__start") == 0) {
				startAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "main") == 0) {
				mainAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__stack") == 0) {
				sp = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__etext") == 0) {
				textEnd = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_end") == 0) {
				dataEnd = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_allocStart") == 0) {
				allocStart = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__exception_handler") == 0) {
				exceptionHandler = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__interrupt_handler") == 0) {
				interruptHandler = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_fbss") == 0) {
				bssStart = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			}
			p++;
		}
		/* Initiate .bss section manually, because GDB doesn't initiate it and we
		   have no OS now. */
		if (bssStart != SYM_UNDEF && dataEnd != SYM_UNDEF && dataEnd > bssStart) {
			mmu().initBlock(bssStart, 0, dataEnd - bssStart);
		} else {
			WARN_SHELL("Shell warning: .bss section start addr not found.\n");
		}
	} else {
		SimFatal((machine().getObj()), ("Invalid object specified\n"));
		Loader<MMUClass> loader;
		ELF_object* obj = (ELF_object*)(machine().getObj());
		try{
			loader.loadELFObj((MMUClass&)mmu(), obj);
		} catch (STRING s) {
			fprintf(out(), "Failed to load elf object\n");
			return SHELL_ERROR;		
		}
		STRING symName;
		symName = "_init";
		ucLibcInit = symtable()->getValue((const STRING)symName);
		symName = "__start";
		startAddr = symtable()->getValue((const STRING)symName);
		symName = "__ground_zero";
		groundAddr = symtable()->getValue((const STRING)symName);		
		symName = "main";
		mainAddr = symtable()->getValue((const STRING)symName);
		symName = "__stack";
		sp = symtable()->getValue((const STRING)symName);	
		symName = "__etext";
		textEnd = symtable()->getValue((const STRING)symName);	
		symName = "_end"; //symName = "_edata";
		dataEnd = symtable()->getValue((const STRING)symName);
		symName = "_allocStart";
		allocStart = symtable()->getValue((const STRING)symName);
	}
	
	// set start pc
	if (groundAddr != SYM_UNDEF)
		pc = groundAddr;
	else if (startAddr != SYM_UNDEF)
		pc = startAddr;		
	else
		pc = mainAddr;
	if(pc != SYM_UNDEF) {
		machine().setPC(pc);
		machine().setStartPC(pc);
	} else {
		fprintf(out(), "Loading ELF error: can't find symbol '_init', '__start' and 'main'\n");
		return SHELL_ERROR;
	}
	
	// set stack pointer
	if(sp != SYM_UNDEF) {
		machine().getReg().setSP(sp);		
		machine().getReg().spBase(sp);
		vmsg(VERBOSE_0, "SP (thread %d) = %#08x\n", machine().curthread(), sp);
	} else {
		vmsg(VERBOSE_0, "SP (thread %d) = 0x00000000.Can't find symbol '__stack' to set stack frame.\n",
			machine().curthread());
	}
	
	// set text section range	
	if (ucLibcInit != SYM_UNDEF)
		textStart = ucLibcInit;
	else
		textStart = pc;
	if(textEnd == SYM_UNDEF) {
		fprintf(out(), "Loading ELF error: can't find symbol '__etext'\n");
		return SHELL_ERROR;
	}	
	vmsg(VERBOSE_1, "PC (thread %d) = 0x%08x (end = 0x%08x)\n", machine().curthread(), pc, textEnd);	
	mmu().setTextRange(textStart, textEnd);
	
	// set data section range
	if(dataEnd == SYM_UNDEF) {
		fprintf(out(), "Loading ELF error: can't find symbol '_edata'\n");
		return SHELL_ERROR;
	}	
	/*symName = "__data_start";
	dataStart = symtable()->getValue(symName);
	if(dataStart==SYM_UNDEF) {
		fprintf(out(), "Loading ELF error: can't find symbol '__data_start'\n");
		return SHELL_ERROR;
	}	*/
	mmu().setDataRange(dataStart,dataEnd);
	
	// set allocate range
	UINT allocLimit = (UINT) - 1;
	if (allocStart != SYM_UNDEF) {
		allocLimit = dataEnd - allocStart;
	} else {
		allocStart = dataEnd;
	}
	mmu().allocMap()->setAllocRange(allocStart, allocLimit);
	vmsg(VERBOSE_1, "thread %d: Free memory: start 0x%08x - size:0x%08x\n", machine().curthread(), allocStart, allocLimit);

	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLoadElf(STRING elfName) {
	machine().getReg().clear();
	status().clear(machine().curthread());
	fetch().init();
	ELF_object* obj;
	Loader<MMUClass> loader;
	try{
		obj = loader.createELFObj(elfName);

		symtable()->initTable(obj);	

	} catch (STRING s) {
		fprintf(out(), "Failed to load elf file %s:Reason %s\n", elfName, s);
		return SHELL_ERROR;		
	}
	machine().setObj(obj);
	
	return initFromElf();
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLoadElf(struct symbol_t *symbolList) {
	machine().getReg().clear();
	machine().fetch().init();
	/* This function is added for FSIM gdbserver use. */
	return initFromElf(symbolList);
}

template <SHELL_CLASS_LIST_DEF>
ADDR   Shell<SHELL_CLASS_LIST_INI>::cmdGetSymbolAddr(const char *symName, INT threadId) {
	SimFatal((threadId == -1), ("cmdGetSymbolAddr for non-active thread: not implemented yet!"));
	ADDR addr = symtable()->getValue((const STRING)symName);
	return addr;
} 

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>:: cmdDisassembly(ADDR startpc, UINT range)  {
	INSTRClass instr;
	DECODERClass decoder;	
	ADDR curAddr = startpc;
	INT size = 1;
	DISASMClass* disasm = machine().getDisasm();
	for(UINT i = 0; i<range&&size!=0; i++) {
		WORD rawbits;
		if((curAddr&WORD_ALIGN_MASK)==0) {
			rawbits = mmu().getWord(curAddr);
		}
		else if((curAddr&HWORD_ALIGN_MASK)==0) {
			rawbits = mmu().getHword(curAddr);
			rawbits = (rawbits << HWORD_BIT);
		}
		else {
			fprintf(out(), "Address error: address is not aligned (0x%08x)\n", curAddr);
		}		
		size = decoder.decode(&instr, curAddr, rawbits);
		if(size>0) {
			STRING p = disasm->disasm(curAddr, &instr, 0);
			fprintf(out(), p);
			curAddr +=size;
		}
		else {
			fprintf(out(), "Shell error: unknown instruction (0x%08x) @pc=0x%08x\n", rawbits, curAddr);
		}
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdRunMem(ADDR addr, INT steps, BOOL isDisasm){
	machine().runMem(addr, steps, isDisasm);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdStepElf(INT steps, BOOL isDisasm, INT thread_mode){
	if(isDisasm==FALSE) {
		if(thread_mode == EXEC_PARALLEL)
	    	machine().runMulti(steps);
	    else if(thread_mode == EXEC_SINGLE)
	        machine().runSingle(steps);
	    else 
	        SimFatal((0), ("Thread error: not support other thread mode(%d) except 0 and 1", thread_mode));   
	}
	else {
		if(thread_mode == EXEC_PARALLEL)
    		machine().runMultiDisasm(steps);
		else if(thread_mode == EXEC_SINGLE)
		    machine().runSingleDisasm(steps);
		else
		    SimFatal((0), ("Thread error: not support other thread mode(%d) except 0 and 1", thread_mode));    
		//machine().runSingleDisasm(steps);
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdRunSingleElf(BOOL isDisasm){
	if(machine().getObj()!=NULL) {
		if(isDisasm==FALSE) {
			cmdPutArgsInStack();
			machine().runSingle(0);
		}
		else {
			machine().runSingleDisasm(0);
		}
	}
	else {
		fprintf(out(), "Shell error:: elf object not found for thread %d\n", machine().curthread());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdRunTrace(STRING name, BOOL verf){
	FILE * in = fopen(name, "r");
	if (in == NULL) {
		fprintf(out(), "Can not open trace file : %s\n", name);
		return SHELL_ERROR;
	}

	machine().runTrace(in, verf);
	fclose(in);
	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdRunMultiElf(BOOL isDisasm){
	if(machine().getObj()!=NULL) {
		if(isDisasm==FALSE) {
			cmdPutArgsInStack();
			machine().runMulti(0);
		}
		else {
			machine().runMultiDisasm(0);
		}
	}
	else {
		fprintf(out(), "Shell error:: elf object not found for thread %d\n", machine().curthread());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdRerunSingleElf(BOOL isDisasm){
	machine().status().clear(machine().curthread());
	if(machine().getObj()!=NULL) {
		initFromElf();		
		machine().status().clear(machine().curthread());
		cmdPutArgsInStack();
		if(isDisasm==FALSE) {
			machine().runSingle(0);
		}
		else {
			machine().runSingleDisasm(0);
		}
	}
	else {
		fprintf(out(), "Shell error:: elf object not found for thread %d\n", machine().curthread());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdReadInstr(ADDR addr){
	if((addr&HWORD_ALIGN_MASK)>0) {
		fprintf(out(), "Shell: invalid instruction address (0x%08x).", addr);
	} 
	else if((addr&WORD_ALIGN_MASK)>0) {
		if(mmu().checkTextRange(addr)==ET_NORMAL) {
			return (INT)mmu().getHword(addr);
		}
		else {
			fprintf(out(), "Shell: non-instruction area address (0x%08x).", addr);
		}
	} 
	else {
		if(mmu().checkTextRange(addr)==ET_NORMAL) {
			return (INT)mmu().getWord(addr);
		}
		else {
			fprintf(out(), "Shell: non-instruction area address (0x%08x).", addr);
		}
	}	
	return SHELL_ERROR;
}
template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdWriteBlock(ADDR addr, BYTE data, INT size){
	mmu().initBlock(addr, data, size);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdWriteDataWord(ADDR addr, WORD data){
	mmu().setWord(addr, data);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdWriteDataHword(ADDR addr, HWORD data){
	mmu().setHword(addr, data);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdWriteDataByte(ADDR addr, BYTE data){
	mmu().setByte(addr, data);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdWriteInstr(ADDR addr, WORD data){
	if((addr&HWORD_ALIGN_MASK)>0) {
		fprintf(out(), "Shell: invalid instruction address (0x%08x).", addr);
	} 
	else if((addr&WORD_ALIGN_MASK)>0&&data!=(UHWORD)data) {
		fprintf(out(), "Shell: invalid 16 bit instruction address (addr=0x%08x, instr=0x%08x).", addr, data);
	} 
	else {
		if(mmu().checkTextRange(addr)==ET_NORMAL) {
			if(data==(UHWORD)data) {
				mmu().setHword(addr, data);
			}
			else {
				mmu().setWord(addr, data);
			}
		}
		else {
			fprintf(out(), "Shell: non-instruction area address (0x%08x).", addr);
		}
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
BYTE Shell<SHELL_CLASS_LIST_INI>::cmdReadDataByte(ADDR addr) { 
	return mmu().getByte(addr);
}

template <SHELL_CLASS_LIST_DEF>
HWORD Shell<SHELL_CLASS_LIST_INI>::cmdReadDataHword(ADDR addr) { 
	return mmu().getHword(addr);
}

template <SHELL_CLASS_LIST_DEF>
WORD Shell<SHELL_CLASS_LIST_INI>::cmdReadDataWord(ADDR addr) { 
	return mmu().getWord(addr);
}	

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdReadRange(ADDR start, UINT range){
	ADDR curAddress;
	ADDR end = start + range;
	INT lineSize = 8; //multiple of word size
	char ascii[lineSize];
	INT initialByte = start%lineSize;
	for(int i = 0; i<lineSize; i++)
		ascii[i] = 0;
	//1st line
	if(initialByte>0)
	{
		INT i;
		fprintf(out(), "0x%08x: ", start-initialByte);
		for(i = 0; i<initialByte; i++)
		{
			fprintf(out(), "   ");
		}
	}
	//middle lines
	for(curAddress = start; curAddress<end; curAddress++)
	{
		if((curAddress)%lineSize==0)
		{
			if(curAddress>start)
			{
				INT i;
				for(i = 0; i<lineSize; i++)
				{
					initialByte>i?fprintf(out(), " "):fprintf(out(), ".");
				}
				for(i = initialByte>0?initialByte:0; i<lineSize; i++)
				{
					if(ascii[i]>=32&&ascii[i]<=126)
						fprintf(out(), "%c", ascii[i]);
					else
						fprintf(out(), " ");
				}
				fprintf(out(), "\n");
				initialByte = 0;
			}
			fprintf(out(), "0x%08x: ", curAddress);
		}
		UINT8 data = mmu().getByte(curAddress);
		ascii[(curAddress)%lineSize] = (char) data;
		fprintf(out(), "%02x ", data); 
	}
	//last line
	initialByte = end%lineSize;
	if(initialByte>0)
	{
		for(INT i = 0; i<lineSize-initialByte; i++)
		{
			fprintf(out(), "   "); 
		}
	}
	initialByte = lineSize-end%lineSize;	
	if(initialByte>0)
	{
		INT i;
		initialByte = lineSize-initialByte;
		for(i = 0; i<lineSize; i++)
		{
			initialByte>i?fprintf(out(), "."):fprintf(out(), " ");
		}
		for(i = 0; i<initialByte; i++)
		{
			if(ascii[i]>=32&&ascii[i]<=126)
				fprintf(out(), "%c", ascii[i]);
			else
				fprintf(out(), " ");
		}
	}
	fprintf(out(), "\n");
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetReg(STRING name, DWORD data){
	if (strcmp(name, "pc") == 0)
		machine().setPC(data);
	else
		machine().getReg().setRegByName(name, data);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
DWORD Shell<SHELL_CLASS_LIST_INI>::cmdGetReg(STRING name){
		
	RegMap& regmap = machine().getRegMap();
	RegMapIter regmapiter = regmap.find(name);
	if(regmapiter!=regmap.end()){
		pair<DWORD, UINT> data = regmapiter->second->getValue();
		switch(data.second) {
			case HWORD_BYTE:
				return ((HWORD) data.first);
			case WORD_BYTE:
				return ((WORD) data.first);
			case DWORD_BYTE:
				return ((DWORD)data.first);
			default:
				SimFatal((0), ("RegMapItem error: unknown data size (%d).", data.second));			
		}
	}
	SimFatal((0), ("cmdGetReg error:%s\n", name));
	return 0;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdGetRegisterNames(char *buf, int len){
	buf[0] = '\0';
	return machine().getReg().getRegisterNames(buf, len);
}

template <SHELL_CLASS_LIST_DEF>
WORD Shell<SHELL_CLASS_LIST_INI>::cmdGetExecStatus(void){
	return machine().status().last_state();
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogTaskTrace(BOOL enable, STRING name=NULL){
	try {
		if (!profiler()->taskIDAddr()) {
			fprintf(stderr, "You must set task id address first. Default: set os_task_id_sym TCD_Current_Thread\n");
			return SHELL_ERROR;
		}
		profiler()->logTask(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogQuickTrace(BOOL enable)
{
	try{
		profiler()->logQuickTrace(enable);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogIgnoreTrace(BOOL enable,STRING name=NULL)
{
	try{
		profiler()->logIgnoreTrace(enable,name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogFocusTrace(BOOL enable,STRING name=NULL)
{
	try{
		profiler()->logFocusTrace(enable,name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogTrace(BOOL enable, STRING name=NULL){
	try {
		profiler()->logTrace(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogRegMem(BOOL enable, STRING name=NULL){
	try {
		profiler()->logRegMem(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogUserThreadIdSymbol(STRING symbolName=NULL) {
	try {
		ADDR userThreadIdAddr = symtable()->getValue((const STRING)symbolName);
		if (userThreadIdAddr != SYM_UNDEF) {
			profiler()->taskIDAddr(userThreadIdAddr);
			printf("User thread id address set to:%#08x for %s\n", userThreadIdAddr, symbolName);
		} else {
			fprintf(stderr, "Can't find symbol %s\n", symbolName);
			return SHELL_ERROR;
		}
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogCall(BOOL enable, STRING name=NULL){
	try {
		profiler()->logCall(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogDisasm(BOOL enable, STRING name=NULL){
	try {
		profiler()->logDisasm(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogCbus(BOOL enable, STRING name=NULL){
	try {
		profiler()->logCbus(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogRegWrite(BOOL enable, STRING name=NULL){
	try {
		profiler()->logRegWrite(enable, name);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogStack(BOOL enable){
	try {
		profiler()->logStackMark(enable);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogInstrCnt(BOOL enable, BOOL enabledetail){
	try {
		profiler()->logInstrCnt(enable);
		profiler()->logInstrCntDetail(enabledetail);
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogEnableSwitch(BOOL enable){
	/*
	try {
		//if(enable==TRUE) {
			//profiler()->start();
		//}
		//else {
			//profiler()->stop();
		//}
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	*/
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdLogResumeSwitch(BOOL enable){
	try {
		if(enable==TRUE) {
			profiler()->resume();
		}
		else {
			profiler()->suspense();
		}
	}
	catch (ProfilerException ex) {
		ex.toString(out());
		return SHELL_ERROR;
	}	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetThread(UINT threadid){
	machine().curthread(threadid);	
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdGetThread(void){
	/* This function is added for FSIM gdbserver use. */
	return machine().curthread();
}

/*
 * Link register name and its address to be accessed as a tcl variable.
 * Only registers for current active thread in machine object is linked.
 */
template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::cmdLinkRegisters(void){
	RegMap& regmap = machine().getRegMap();
	RegMapIter regmapiter = regmap.begin();
	int i=0;
	for (;regmapiter!=regmap.end(); regmapiter++) {
		RegMapItem *regitem = (*regmapiter).second;
//		printf("reg %d name:%s size:%d ptr:%p\n", i++, 
//			regitem->getName(), regitem->getSize(), regitem->getPtr());
		switch(regitem->getSize()) {
			case HWORD_BYTE:
//				SimFatal((0), ("Shell doesn't support halfword register\n"));
				if (fsim_is_reg_readonly(regitem->getName()))
					fsim_link_short(regitem->getName(), (short *)regitem->getPtr(), 0);
				else
					fsim_link_short(regitem->getName(), (short *)regitem->getPtr(), 1);
				break;
			case WORD_BYTE:
				if (fsim_is_reg_readonly(regitem->getName()))
					fsim_link_int(regitem->getName(), (int *)regitem->getPtr(), 0);
				else
					fsim_link_int(regitem->getName(), (int *)regitem->getPtr(), 1);
				break;		
			case DWORD_BYTE:
				fsim_link_dword(regitem->getName(), (DWORD *)regitem->getPtr());
				break;
			default:
				SimFatal((0), ("RegMapItem error: unknown data size (%d).", regitem->getSize()));			
		}
	}
	// create alias registers for r0 for zero, r28 for gp, r29 for sp
	char *aliasRegs[3][2]={{"zero","r0"}, {"gp", "r28"}, {"sp", "r29"}};
	for (i=0; i<3; i++) {
		regmapiter = regmap.find(aliasRegs[i][0]);
		SimFatal((regmapiter != regmap.end()), ("can't find register zero\n"));
		RegMapItem *regitem = (*regmapiter).second;
//		printf("reg %d name:%s size:%d ptr:%p\n", i, 
//			regitem->getName(), regitem->getSize(), regitem->getPtr());
		switch(regitem->getSize()) {
			case HWORD_BYTE:
//				SimFatal((0), ("Shell doesn't support halfword register\n"));
				if (fsim_is_reg_readonly(regitem->getName()))
					fsim_link_short(aliasRegs[i][1], (short *)regitem->getPtr(), 0);
				else
					fsim_link_short(aliasRegs[i][1], (short *)regitem->getPtr(), 1);
				break;
			case WORD_BYTE:
				if (fsim_is_reg_readonly(regitem->getName()))
					fsim_link_int(aliasRegs[i][1], (int *)regitem->getPtr(), 0);
				else
					fsim_link_int(aliasRegs[i][1], (int *)regitem->getPtr(), 1);
				break;		
			case DWORD_BYTE:
				fsim_link_dword(aliasRegs[i][1], (DWORD *)regitem->getPtr());
				break;
			default:
				SimFatal((0), ("RegMapItem error: unknown data size (%d).", regitem->getSize()));			
		}
	}
	
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdDumpMem(FILE *o, ADDR addr, UINT length){
	if((addr&WORD_ALIGN_MASK)!=0) {
		fprintf(out(), "Address error: unaligned word address 0x%x.\n", addr);
	}
	else {
		mmu().dumpFile(o, addr, length);
	}
	return 0;
}

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::cmdDumpRegs(FILE *out, INT mode, const char* regSetName){
	if(mode==0) {
		if(strcasecmp(regSetName, "all")==0||strcasecmp(regSetName, "core")==0) {
			for(UINT i = 0; i<MAX_THREAD; i++) {
				fprintf(out, "\tThread-%d PC = 0x%08x", i, machine().getPC(i));
				if(machine().curthread()==i) {
					fprintf(out, " (active)");
				}
				fprintf(out, "\n");
			}
		}
		machine().getReg().dumpRegs(out, regSetName);
	}
	else {
		if(strcasecmp(regSetName, "all")==0||strcasecmp(regSetName, "core")==0) {
			for(UINT i = 0; i<MAX_THREAD; i++) {
				fprintf(out, "%08x \\\\ thread-%d PC", machine().getPC(i), i);
				if(machine().curthread()==i) {
					fprintf(out, " (active)");
				}	
				fprintf(out, "\n");		
			}	
		}	
		machine().getReg().dumpRegs2File(out, regSetName);
	}
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdInitMem(FILE *in, ADDR addr){
	if((addr&WORD_ALIGN_MASK)!=0) {
		fprintf(out(), "Address error: unaligned word address 0x%x.\n", addr);
	}
	else {
		mmu().initFile(in, addr);
	}	
	return 0;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdInitRegs(FILE *inRegs, const char* regSetName){
	INT line = 0;
	INT initial = 0;
	WORD data = 0;
	char str[50];	
	if(strcasecmp(regSetName, "all")==0||strcasecmp(regSetName, "core")==0) {
		for(INT i = 0; i<MAX_THREAD; i++) {
			line++;
			if(fscanf(inRegs, "%x%[^\n]", &data, str)!=EOF) {
				machine().setPC(i, data);
			}
			else {
				return (-line);
			}
		}
		initial = 1;	
	}
	if(line>=initial) {
		INT thisLine = machine().getReg().initRegs(inRegs, regSetName);
		if(thisLine>=0) {
			line += thisLine;
		} 
		else {
			line = (-line) + thisLine;
		}
	}
	if(line==0) {
		fprintf(out(), "Register error: nothing has been initialized.\n");
		return SHELL_ERROR;		
	}
	if(line<0) {
		fprintf(out(), "Register error: invalid initialization file format at line %d.\n", (-line));
		return SHELL_ERROR; 
	}
	return SHELL_OK; 
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdInitSRAM(FILE *fp, ADDR offset) {
	WORD data;
	char str[50];
	ADDR index = offset;
	INT i = 0;
	BYTE inByte;
	BOOL isBin = FALSE;
	while(fread(&inByte, sizeof(BYTE), 1, fp)>0&&i<200) {
		if(inByte==0) {
			isBin = TRUE;
			break;
		}
		i++;
	}
	rewind(fp);
	if(isBin==FALSE) {
		while(fscanf(fp, "%x%[^\n]", &data, str)!=EOF) {
			if(index>=SRAM_SIZE) {
				fprintf(out(), "SRAM error: out of SRAM range (%d, %d).\n", offset, index);
				return SHELL_ERROR;
			}
			mmu().setSRAMBaseWord(index, data);
			index += WORD_BYTE;
		}
	}
	else {
		while(fread(&inByte, sizeof(BYTE), 1, fp)>0) {
			if(index>=SRAM_SIZE) {
				fprintf(out(), "SRAM error: out of SRAM range (%d, %d).\n", offset, index);
				return SHELL_ERROR;
			}
			mmu().setSRAMBaseByte(index, inByte);
			index += INT8_BYTE;			
		}		
	}		


	return SHELL_OK; 
}

template <SHELL_CLASS_LIST_DEF>
bool Shell<SHELL_CLASS_LIST_INI>::isValidRegName(const STRING regName){
	RegMap& regmap = machine().getRegMap();
	RegMapIter regmapiter = regmap.find(regName);
	if(regmapiter!=regmap.end())
		return true;
	else if (strstr("r0 r28 r29", regName))
		return true;
	else
		return false;
}

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::cmdShowBreakPoints(void){
	breakpoint()->showBreak(out());
}

template <SHELL_CLASS_LIST_DEF>
void  Shell<SHELL_CLASS_LIST_INI>::cmdShowDmaTraffic(UINT mask) {
	char msg[1024];
	machine().mmu().dmaTrafficDesc(msg, 1024, mask);
	fprintf(out(), msg);
}

template <SHELL_CLASS_LIST_DEF>
void  Shell<SHELL_CLASS_LIST_INI>::cmdResetDmaTraffic(void) {
	machine().mmu().clearDmaCounter();
}

template <SHELL_CLASS_LIST_DEF>
INT  Shell<SHELL_CLASS_LIST_INI>::cmdLcdSwitch(BOOL on) {
	fprintf(out(), "Temporary not support.\n");
	/*
	if(on==TRUE){
		if(lcd->trunOn()==FALSE) {
			fprintf(out(), "LCD error: LCD is already turned on.\n");
		}
		return SHELL_OK;
	}else{
		if(lcd->trunoff()==FALSE) {
			fprintf(out(), "LCD error: LCD is already turned off.\n");
		}
		return SHELL_OK;
	}
	*/
	/*
	if(on==TRUE) {
		if(mmu().gui()->trunOn()==FALSE) {
			fprintf(out(), "LCD error: LCD is already turned on.\n");
		}
		return SHELL_OK;
	}
	else {
		if(mmu().gui()->trunOff()==FALSE) {
			fprintf(out(), "LCD error: LCD is already turned off.\n");
		}	
		return SHELL_OK;	
	}
	*/
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT  Shell<SHELL_CLASS_LIST_INI>::cmdSetLcdWidth(int width) {
        return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT  Shell<SHELL_CLASS_LIST_INI>::cmdSetLcdHeight(int height) {
        return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT  Shell<SHELL_CLASS_LIST_INI>::cmdDumpFunc(FILE* fp) {
	if(machine().getObj()!=NULL) {
		SymTable::SymEntry* table = machine().getDisasm()->symtable()->getTable();
		SymTable::SymEntryIter iter = table->begin();
		while(iter != table->end()) {
			if((*iter)->type()==SYM_FUNC) {
				fprintf(fp, "%08x %s %u\n", (*iter)->value(), (*iter)->name(), (*iter)->size());
			}
			iter++;
		}
	}
	else {
		fprintf(out(), "Symbol Table: No elf file has been loaded.\n");
	}
	return SHELL_OK;	
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdBackTrace(){
	if(machine().getObj()!=NULL) {
		SymTable* table = machine().getDisasm()->symtable();
		ADDR spMax =  machine().getReg().spBase();
		ADDR sp =  machine().getReg().getSP();
		ADDR spInit = sp;
		UINT noFuncCntMax = 2000;
		fprintf(out(), "Back trace list:\n");
		while(sp<spMax&&sp>=spInit&&noFuncCntMax>0) {
			ADDR addr = mmu().getWord(sp);
			std::pair<STRING, ADDR> ret = table->getFuncStart(addr);
//			fprintf(out(), "sp=%x, spMax%x\n", sp, spMax);
			if(ret.first!=NULL&&ret.second>0) {
				fprintf(out(), "0x%08x: %s (0x%08x)\n", addr, ret.first, ret.second);
				noFuncCntMax = 2000;
			}
			else {
				noFuncCntMax--;
			}
			sp += WORD_BYTE;
		}
	}
	else {
		fprintf(out(), "Symbol Table: No elf file has been loaded.\n");
	}
	return SHELL_OK;		
}

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::showStatus() {
	if(status().instr()!=NULL) {
		fprintf(out(), "Last executed instruction:\n");
		fprintf(out(), "%d: %s", status().thread_id(), machine().getDisasm()->disasm(status().pre_pc(), status().instr(), 0));
	}
	else {
		fprintf(out(), "Last executed instruction @ pc=0x%08x of th=%d\n", status().pre_pc(), status().thread_id());
	}
	machine().getReg().dumpRegs(out(), "all");
}

template <SHELL_CLASS_LIST_DEF>
void Shell<SHELL_CLASS_LIST_INI>::cmdSetExecMode(INT modeID, WORD value) {
	for(INT i = 0; i<MAX_THREAD; i++) {
		machine().getExec(i)->setExecMode(modeID, value);
	}
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetArgument( int argc, const char *argv[] ) {
	if(machine().getObj()!=NULL){
		INT nTemp = 0;
		INT i = 0;
		for( i = 2; i < argc; i++ ) {
			nTemp += strlen( argv[ i ] ) + 1;
		}		
		if( NULL != getArgs().pArgs ) {
			delete [] getArgs().pArgs;
			getArgs().pArgs = NULL;
			getArgs().sizeOfArgs = 0;
		}
		if( 0 == nTemp ) {
			return SHELL_OK;
		}
		STRING cTemp = new char[ nTemp ];
		if( NULL == cTemp ) {
			fprintf(out(), "No enough memory.\n");
			return SHELL_ERROR;
		}
		else {
			getArgs().pArgs = cTemp;
			getArgs().sizeOfArgs = nTemp;
		}
		for( i = 2; i < argc; i++ ) {
			strcpy( cTemp, argv[ i ] );
			cTemp += strlen( argv[ i] ) + 1;
		}
	}
	else {
		fprintf(out(), "Shell error:: elf object not found for thread %d\n", machine().curthread());
		return SHELL_ERROR;
	}
	return SHELL_OK;	
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdPutArgsInStack( void ) {
	return  SHELL_OK;	   
	UINT stackSize = 0;
	INT argc = 0;
	if( NULL != getArgs().pArgs ) {
		STRING pChar = getArgs().pArgs;
		UINT i = getArgs().sizeOfArgs;	
		while( i > 0 ) {
			i -= strlen( pChar );
			i--;
			pChar += strlen( pChar );
			pChar++;			
			stackSize += sizeof( INT );
			argc++;
		}
	}
	stackSize += 4 * sizeof( INT );
	argc++;
	
	STRING symName= "__stack";
	UINT valueSP = symtable()->getValue((const STRING)symName);
	if( valueSP == SYM_UNDEF ) {
		fprintf( out(), "Symbol name %s not found.\n", symName );
		return SHELL_ERROR;
	}
	valueSP -= stackSize;
	valueSP &= ( ~(sizeof( WORD ) - 1));
	UINT sp = valueSP;
	mmu().setWord( valueSP, ( WORD )argc ); 
	valueSP += sizeof( INT );
	symName = "__main_arg";
	UINT argAddr = symtable()->getValue((const STRING)symName);
	if( argAddr == SYM_UNDEF ) {
		fprintf( out(), "Symbol name %s not found.\n", symName );
		return SHELL_ERROR;
	}
	char *pFileName = machine().getObj()->getFileName();
	unsigned int FileNameLen = strlen( pFileName ) + 1;
	mmu().writeBlock( argAddr, ( BYTE* )pFileName, FileNameLen );
	mmu().setWord( valueSP, ( WORD )argAddr );
	argAddr += FileNameLen;
	valueSP += sizeof( INT );
	if( NULL != getArgs().pArgs ) {
		STRING pChar = getArgs().pArgs;
		UINT i = getArgs().sizeOfArgs;	
		while( i > 0 ) {
			mmu().writeBlock( argAddr, ( BYTE* )pChar, strlen( pChar ) + 1 );		
			mmu().setWord( valueSP, ( WORD )argAddr );  
			valueSP += sizeof( INT );		
			argAddr += strlen( pChar ) + 1;
			i -= strlen( pChar );
			i--;
			pChar += strlen( pChar ) + 1;
		}
	}
	mmu().setWord( valueSP, ( WORD )0 );  
	valueSP += sizeof( NULL );		
	mmu().setWord( valueSP, ( WORD )0 );  
	valueSP += sizeof( NULL );		
	machine().getReg().setSP(sp);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetShareMemHigh(ADDR addr){
	mmu().shareMemHigh(addr);
	return SHELL_OK;
}

template <SHELL_CLASS_LIST_DEF>
INT Shell<SHELL_CLASS_LIST_INI>::cmdSetShareMemLow(ADDR addr){
	mmu().shareMemLow(addr);
	return SHELL_OK;
}

#endif /*SHELL_H_*/





