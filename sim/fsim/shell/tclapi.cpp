/*
 *  File: tclapi.cpp
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
 * 
 * To add a command, you must do as following:
 *   1. Add command usage in shellbase.cpp. For complex command, you must add a 
 *      detailed usage guide too.
 *   2. Add a command proc here.
 *   3. Register that command in Tcl_AppInit.
 */
#include "defs.h"
#include "symtable.h"
#include "tclapi.h"
#include "shellbase.h"
#include "tclInt.h"
#include <signal.h>
#include "longjmp.h"
#include <string>

using std::string;

#define SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER "Error: Wrong # of arguments"


#define VAR_ACTIVE_THREAD_NAME "thread"
#define VAR_VERBOSE_NAME "verbose"
#define VAR_MULTI_THREAD_NAME "mt"
#define VAR_BB_THREAD_NAME "BB"
#define VAR_CORE_THREAD_NAME "Core"
#define OS_THREAD_ID_SYMBOL "os_task_id_sym"

#define VAR_SL2_TH0_THREAD_NAME "TH0"
#define VAR_SL2_TH1_THREAD_NAME "TH1"
#define VAR_SL2_TH2_THREAD_NAME "TH2"
#define VAR_SL2_TH3_THREAD_NAME "TH3"
#define VAR_SL2_TH4_THREAD_NAME "TH4"

ShellBase * tcl_shell_ptr;

Tcl_Interp *gInterp;

char *ActiveThreadName = NULL;
INT MultiThreadingMode = EXEC_SINGLE;// parallel mode

// static variables for print and x command
#define MAX_DUMP_CMD 256
static char _last_dump_cmd[256];
static ADDR _last_mem_dump_addr=0;	// used by print and x command
static bool _is_expr = false;	// indicates if the _last_dump_cmd contains a command or an expression 
static char _last_fmt_char='\0';	// format specification will be used by print and x command for repeating.
static int _last_unit_size = 4;
static int _last_repeat_count = 1; // used by print and x command

ShellBase* getActiveShell() { return tcl_shell_ptr; }

bool		fsim_is_reg_readonly(const char *name) { 
	if (strcmp(name, "zero") == 0)
		return true;
	else if (strcmp(name, "r0") == 0)
		return true;
	return false;
}

int fsim_link_short(char *name, short *varAddr, int mode)
{
	if (mode == 0)
		mode = TCL_LINK_READ_ONLY;
	else
		mode = 0;
		
	SimFatal(gInterp, ("Invalid TCL shell"));
	Tcl_UnlinkVar(gInterp, name);
//	printf("link %s at 0x%x\n", name, varAddr);
	return Tcl_LinkVar(gInterp, name, (char*)varAddr, TCL_LINK_SHORT | mode);
}

int fsim_link_int(char *name, int *varAddr, int mode)
{
	if (mode == 0)
		mode = TCL_LINK_READ_ONLY;
	else
		mode = 0;
		
	SimFatal(gInterp, ("Invalid TCL shell"));
	Tcl_UnlinkVar(gInterp, name);
//	printf("link %s at 0x%x\n", name, varAddr);
	return Tcl_LinkVar(gInterp, name, (char*)varAddr, TCL_LINK_INT | mode);
}

int fsim_link_dword(char *name, DWORD *varAddr)
{
	SimFatal(gInterp, ("Invalid TCL shell"));
	Tcl_UnlinkVar(gInterp, name);
//	printf("linkd %s at 0x%x\n", name, varAddr);
	return Tcl_LinkVar(gInterp, name, (char*)varAddr, TCL_LINK_WIDE_INT);
}

int fsim_link_str(char *name, const char *varAddr, int mode)
{
	if (mode == 0)
		mode = TCL_LINK_READ_ONLY;
	else
		mode = 0;
		
	SimFatal(gInterp, ("Invalid TCL shell"));
	Tcl_UnlinkVar(gInterp, name);
//	printf("link %s at 0x%x\n", name, varAddr);
	return Tcl_LinkVar(gInterp, name, (char*)varAddr, TCL_LINK_STRING | mode);
}

int fsim_set_prompt(void) {
	Tcl_SetVar(gInterp, "sl_prompt", getActiveShell()->cmdGetPrompt(), TCL_GLOBAL_ONLY);
	return TCL_OK;
}

static Tcl_Interp *tcl_interp_copy = NULL;

/*
 * mode: 0, dont disassemble after execution; assemble current instruction after execution;
 */
int ExecSteps(ADDR addr, int steps, int mode)
{
	// Use machine class
	if (addr == ADDR_NOT_SPECIFIED)
		addr = getActiveShell()->cmdGetPC();
	if (!getActiveShell()->cmdGetElf()) {
		// No elf object loaded. Run from memory.
		getActiveShell()->cmdRunMem(addr, steps, mode);
	} else {
		if (mode) {
			getActiveShell()->cmdStepElf((UINT)steps, true,MultiThreadingMode);
		} else {
			getActiveShell()->cmdStepElf((UINT)steps, false,MultiThreadingMode);
		}
	}
	return TCL_OK;
}

int GetAddrFromString(Tcl_Interp *interp, ADDR &addr, const char *symOrAddr) {
	addr = (ADDR)-1;
	// try to get a symbol address
	if ((addr = getActiveShell()->cmdGetSymbolAddr(symOrAddr)) == SYM_UNDEF) {
		if (Tcl_ExprLong(interp, symOrAddr, (long*)&addr) != TCL_OK ) {
			fprintf(stderr, "Invalid symbol or address:%s", symOrAddr);
			return TCL_ERROR;
		}
	}
	return TCL_OK;
}

int GetSymbolValue(Tcl_Interp *interp, ADDR &addr, const char *sym) {
	addr = (ADDR)-1;
	// try to get a symbol address
	if ((addr = getActiveShell()->cmdGetSymbolAddr(sym)) == SYM_UNDEF) {
		return TCL_ERROR;
	}
	return TCL_OK;
}

//Do command
int DoHelp(ClientData clientData, Tcl_Interp *interp, int argc, Tcl_Obj *CONST objv[]) { 
	char* cmd = NULL;
	if (argc == 2) {
		cmd =	Tcl_GetString(objv[1]);
	}
	return getActiveShell()->cmdHelp(cmd);
}

int DoLoad(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=2) {
		Tcl_AppendResult(interp, "Missing program file", NULL);
		return TCL_ERROR;
	}
	else {
		STRING elfFile = (STRING )argv[1];
		if (getActiveShell()->cmdLoadElf(elfFile) == TCL_OK) {
			_last_mem_dump_addr = getActiveShell()->cmdGetPC();
			return TCL_OK;
		}
		else
			return TCL_ERROR;
	}
}

/*
 * DoBackTraceCmd - list all previous function calls from the current address
 */
int DoBackTraceCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=1) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER);
		return TCL_ERROR;
	}
	getActiveShell()->cmdBackTrace();
	return TCL_OK; 
}

/*
 * DoSetWatchCmd - set watchpoint on instruction execution
 */
int DoSetWatchCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=2) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER);
		return TCL_ERROR;
	}
	ADDR addr;
	if (GetAddrFromString(interp, addr, argv[1]) != TCL_OK ) {
		return TCL_ERROR;
	}

	if (strcmp("rwatch", argv[0]) == 0)
		getActiveShell()->cmdSetReadBreak(addr);
	else if (strcmp("watch", argv[0]) == 0)
		getActiveShell()->cmdSetWriteBreak(addr);
	else if (strcmp("awatch", argv[0]) == 0) {
		getActiveShell()->cmdSetReadBreak(addr);
		getActiveShell()->cmdSetWriteBreak(addr);
	}
	return TCL_OK; 
}

/*
 * DoSetBreakCmd - break on instruction execution
 */
int DoSetBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=2) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	ADDR addr;
	if (GetAddrFromString(interp, addr, argv[1]) != TCL_OK)
		return TCL_ERROR;

	getActiveShell()->cmdSetInstrBreak(addr);
	return TCL_OK; 
}

int DoClearBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc > 2) {
		Tcl_AppendResult(interp,SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	
	// The 1st choice is current PC
	ADDR addr = getActiveShell()->cmdGetPC();
			
	if (2==argc && GetAddrFromString(interp, addr, argv[1]) != TCL_OK ) {
		return TCL_ERROR;
	}

	int ret = 0;
	if ( getActiveShell()->cmdClearReadBreak(addr)  == 0)
		ret ++;
	if ( getActiveShell()->cmdClearWriteBreak(addr) == 0)
		ret ++;
	if ( getActiveShell()->cmdClearInstrBreak(addr) == 0)
		ret ++;
	if (!ret) {
		char buf[128];
		sprintf(buf, "No breakpoints at address %#08x", addr);
		Tcl_AppendResult(interp, buf, NULL);
	}
	return TCL_OK; 
}

int DoDeleteBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc == 1) {
		getActiveShell()->cmdClearAllBreak();
		return TCL_OK;
	}
	 
	long brknumber;
	int i;
	for (i=1; i<argc; i++) {
		if (Tcl_ExprLong(interp, argv[i], &brknumber) != TCL_OK ) {
			Tcl_AppendResult(interp, "Invalid breakpoint number:", argv[1], NULL);
			continue;
		}
		if (getActiveShell()->cmdClearBreakByIndex(brknumber) != TCL_OK) {
			Tcl_AppendResult(interp, "No breakpoint #", argv[i], NULL);
			continue;
		}
	}
	return TCL_OK; 
}

int DoEnableBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc == 1) {
		getActiveShell()->cmdEnableBreak((UINT)-1, true);
		return TCL_OK;
	}
	 
	long brknumber;
	int i;
	for (i=1; i<argc; i++) {
		if (Tcl_ExprLong(interp, argv[i], &brknumber) != TCL_OK ) {
			Tcl_AppendResult(interp, "Invalid breakpoint number:", argv[1], NULL);
			continue;
		}
		getActiveShell()->cmdEnableBreak(brknumber, true);
	}
	return TCL_OK; 
}

int DoDisableBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc == 1) {
		getActiveShell()->cmdEnableBreak((UINT)-1, false);
		return TCL_OK;
	}
	 
	long brknumber;
	int i;
	for (i=1; i<argc; i++) {
		if (Tcl_ExprLong(interp, argv[i], &brknumber) != TCL_OK ) {
			Tcl_AppendResult(interp, "Invalid breakpoint number:", argv[1], NULL);
			continue;
		}
		getActiveShell()->cmdEnableBreak(brknumber, false);
	}
	return TCL_OK; 
}

int DoClearRegsCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc!=1) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		getActiveShell()->printCmdUsage("clreg");
		return TCL_ERROR;
	}
	getActiveShell()->cmdClearRegs();
	return TCL_OK;
}

int DoDisassembly(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	fprintf(stderr, "This command is deprecated. Please use x command.\n");
	return TCL_OK;
}

int DoNextiCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	fprintf(stderr, "Not implemented.\n");
	return TCL_OK;
}

/*
 * print(p) command now becomes expression dump command.
 * Usage: print(p) [/f] expression
 * 			format character: 
				x Regard the bits of the value as an integer, and print the integer in hexadecimal.
				d Print as integer in signed decimal.
				u Print as integer in unsigned decimal.
				o Print as integer in octal.
				t Print as integer in binary. The letter t stands for two. (not supported yet)
				a Print as an address, same as x.
				c Regard as an integer and print it as a character constant. This prints both the
				numerical value and its character representation. The character representation
				is replaced with the octal escape \nnn for characters outside the 7-bit ascii
				range.
				f Regard the bits of the value as a floating point number and print using typical
				floating point syntax.* Not implemented: symbol table, address, only 32bit integer
*/
int DoPrintCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
static const char *_fmtStr = "xduotacf";
	char fmtChar='\0';
	// check if format is specified and valid
	if (argc>=2 && argv[1][0] == '/') {
		// if the 2nd argument is started with '/', check it
		if ((strlen(argv[1]) != 2) ||(strchr(_fmtStr, argv[1][1])==NULL)) {
			fprintf(stderr, "Invalid format:%s must be one of 'xduota'", argv[1]);
			return TCL_ERROR;
		}
		// fmtChar will be used later	
		if (argv[1][0]=='/') {
			fmtChar = argv[1][1];
			if (fmtChar == 'a')
				fmtChar = 'x';
			if (fmtChar == 't') {
				fprintf(stderr, "binary representation not supported");
				return TCL_ERROR;
			}
			// save it to last format character
			_last_fmt_char = fmtChar;
		}
	}
	// use previous format char if it's legal for print command
	if (!fmtChar && _last_fmt_char && strchr(_fmtStr, _last_fmt_char))
		fmtChar = _last_fmt_char;

	if (argc==2 && strcmp(argv[1], "$") == 0) {
		getActiveShell()->cmdDumpRegs(stdout, 0, "all");
		strcpy(_last_dump_cmd, "$");
		_is_expr = true;
		return TCL_OK;
	}
	
	// build the expression
	char *exprStr = NULL;
	char expr_buf[MAX_DUMP_CMD];
	
	// check if repeat last command
	if ((argc == 1) || ((argc==2) && (argv[1][0] == '/'))) {
//		printf("repeat dump command:%s\n", _last_dump_cmd);
		if (!_last_dump_cmd[0]) {
			return TCL_OK;
		}
		
		// Retrieve the expression from last command buffer if needed
		if (!_is_expr) {
			int newc=0; 
			char **newArgv=NULL;
			/*
			 * Commands look like: p word1 word2 ...
			 *                 or: p /f word1 word2 ...
			 * The expression is "word1 word2 ..."
			 */
			if(Tcl_SplitList(interp, _last_dump_cmd, &newc,(const char***)&newArgv) == TCL_OK) {
				SimFatal((newc>=2), ("At least two parameters"));
//				char *newExpr;
				int newArgvIdx=-1;
				
				if (newArgv[1][0]=='/') {
					newc -= 2;
					newArgvIdx = 2;
				} else {
					newc -= 1;
					newArgvIdx = 1;
				}
//					newExpr = Tcl_Concat(newc-2, &newArgv[2]);	// skip both command and format
//				else 
//					newExpr = Tcl_Concat(newc-1, &newArgv[1]);	// skip only command
				int i;
				int cc = 0;
				char newExpr[MAX_DUMP_CMD];
				for (i=0; i<newc; i++) {
					ADDR val;
					if (GetSymbolValue(interp, val, newArgv[newArgvIdx+i]) == TCL_OK)
						cc += sprintf(newExpr+cc, " %#x", val);
					else
						cc += sprintf(newExpr+cc, " %s", newArgv[newArgvIdx+i]);  
				}
				Tcl_Free((char*)newArgv);
				
				SimFatal((cc<MAX_DUMP_CMD-1), ("Internal error:Too many arguments"));
				newExpr[cc] = '\0';
				
//				SimFatal((strlen(newExpr)<MAX_DUMP_CMD-1), ("Internal error:Too many arguments"));
				strcpy(_last_dump_cmd, newExpr);
//				Tcl_Free(newExpr);
				// now the command buffer contains only expression
				_is_expr = true;
			}
			else {
				fprintf(stderr, "can't get expression from history command:%s", _last_dump_cmd);
				return TCL_ERROR;
			}
		}
		
		exprStr = _last_dump_cmd;
	}
	else {
		int exprArgc = argc-1;
		int argvIdx = 1;
		if (argv[1][0] == '/') {
			exprArgc --;
			argvIdx ++;
		}
		int cc = 0;
		int i;
		for (i=0; i<exprArgc; i++) {
			ADDR val;
			if (GetSymbolValue(interp, val, argv[argvIdx+i]) == TCL_OK)
				cc += sprintf(expr_buf+cc, " %#x", val);
			else
				cc += sprintf(expr_buf+cc, " %s", argv[argvIdx+i]);  
		}
		SimFatal((cc<MAX_DUMP_CMD-1), ("Too many arguments\n"));
		expr_buf[cc] = '\0';
//		exprStr = Tcl_Concat(exprArgc, &argv[argvIdx]);

		// This is to avoid future mistake of forgetting free the buffer
//		strcpy(expr_buf, exprStr);
//		Tcl_Free(exprStr);
		
		exprStr = expr_buf;
		// TCL has done variable substitution on this expression, we can't use it again
	}
//	printf("expr string:%s\n", exprStr);
	if (strcmp(exprStr, "$") == 0) {
		if (fmtChar!='x') {
			fprintf(stderr, "Dump of all registers dump is always in hex");
			return TCL_ERROR;
		}
		getActiveShell()->cmdDumpRegs(stdout, 0, "all");
		return TCL_OK;
	}
	
	DWORD val;
	char fmtStr1[8]="%#ld\n";
	// replace the integer type
	if (fmtChar)
		fmtStr1[3] = fmtChar;
	Tcl_Obj *objPtr, *resultPtr;
	objPtr = Tcl_NewStringObj(exprStr, strlen(exprStr));
    int ret = Tcl_ExprObj(interp, objPtr, &resultPtr);
    if (ret == TCL_OK) {
    	int len=0;
        const char *resultStr = Tcl_GetStringFromObj(resultPtr, &len);
        char *endp = NULL;
        val = strtoll(resultStr, &endp, 0);
		if (*endp) {
			SimFatal(!endp||!(*endp), ("Invalid integer specified"));
			return TCL_ERROR;
		}
        Tcl_DecrRefCount(resultPtr);  /* done with the result object */
    }
    Tcl_DecrRefCount(objPtr);

//	int ret = Tcl_ExprLong(interp, exprStr, &val);
	if ( ret == TCL_OK) {
		if (fmtChar == 'c')
			fprintf(stdout, "%u \'%c\'\n", (unsigned)(val&0xff), (char)(val&0xff));
		else {
			fprintf(stdout, fmtStr1, val);
		}
	}
	else {
		fprintf(stderr, "Invalid expression:%s\n", exprStr);
	}

	// save the expression
	if (argc > 2 || (argc==2 && argv[1][0]!='/'))
	{
		// save it for repeat later
		strcpy(_last_dump_cmd, Tcl_GetLastCommand());
		_is_expr = false;
	}

	return TCL_OK;
}

int DoDumpFuncCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 2) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	
	FILE *funcFp = fopen(argv[1], "wb");
	if (funcFp == NULL) {
		fprintf(stderr, "Can't open file %s for dumping function list.", argv[1]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdDumpFunc(funcFp);
	fclose(funcFp);
	return TCL_OK;
}

int DoDumpMemCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 4) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	ADDR addr;
	UINT length;
	int ret;
	ret = Tcl_GetInt(interp, argv[1], (int*)&addr);
	if (ret != 0) {
		Tcl_AppendResult(interp, "Invalid address:", argv[1], NULL);
		return TCL_ERROR;
	}
	ret = Tcl_GetInt(interp, argv[2], (int*)&length);
	if (ret != 0) {
		Tcl_AppendResult(interp, "Invalid memory block length:", argv[2], NULL);
		return TCL_ERROR;
	}
	
	FILE *memFp = fopen(argv[3], "wb");
	if (memFp == NULL) {
		fprintf(stderr, "Can't open file %s for saving mem.", argv[3]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdDumpMem(memFp, addr, length);	// 1 for line mode, o for normal
	fclose(memFp);
	return TCL_OK;
}

int DoDumpRegCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 3) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	char *regSetList[4] = {"all", "core", "bb", "h264"};
	int i;
	bool bValidRegSet = false;
	for (i=0; i<4; i++) {
		if (strcasecmp(regSetList[i], argv[1]) == 0) {
			bValidRegSet = true;
			break;
		}
	}
	if (!bValidRegSet) {
		Tcl_AppendResult(interp, "Wrong register set specified", NULL);
		return TCL_ERROR;
	}
	FILE *regFp = fopen(argv[2], "wb");
	if (regFp == NULL) {
		fprintf(stderr, "Can't open file %s for saving registers.", argv[2]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdDumpRegs(regFp, 1, argv[1]);	// 1 for line mode, o for normal
	fclose(regFp);
	return TCL_OK;
}

int DoInitMemCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 3) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	ADDR addr;

	if (GetAddrFromString(interp, addr, argv[1]) != TCL_OK ) {
		Tcl_AppendResult(interp, "Invalid memory address:", argv[1], NULL);
		return TCL_ERROR;
	}
	FILE *memFp = fopen(argv[2], "rb");
	if (memFp == NULL) {
		fprintf(stderr, "Can't open file %s for init memory.", argv[2]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdInitMem(memFp, addr);
	fclose(memFp);
	return TCL_OK;
}

int DoInitSramCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 3) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	ADDR addr;
	if (GetAddrFromString(interp, addr, argv[1]) != TCL_OK ) {
		Tcl_AppendResult(interp, "Invalid sram address:", argv[1], NULL);
		return TCL_ERROR;
	}
	FILE *memFp = fopen(argv[2], "rb");
	if (memFp == NULL) {
		fprintf(stderr, "Can't open file %s for init sram.", argv[2]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdInitSRAM(memFp, addr);
	fclose(memFp);

	return TCL_OK;
}

int DoInitRegCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	if (argc != 3) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	char *regSetList[4] = {"all", "core", "bb", "h264"};
	int i;
	bool bValidRegSet = false;
	for (i=0; i<4; i++) {
		if (strcasecmp(regSetList[i], argv[1]) == 0) {
			bValidRegSet = true;
			break;
		}
	}
	if (!bValidRegSet) {
		Tcl_AppendResult(interp, "Wrong register set specified", NULL);
		return TCL_ERROR;
	}
	FILE *regFp = fopen(argv[2], "rb");
	if (regFp == NULL) {
		fprintf(stderr, "Can't open file %s for loading registers.", argv[2]);
		return TCL_ERROR;
	}
	getActiveShell()->cmdInitRegs(regFp, argv[1]);
	fclose(regFp);
	return TCL_OK;
}

int DoDumpRange(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	ADDR addr;
	UWORD range;
	if (argc!=3) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	int ret = Tcl_GetInt(interp,argv[1], (int*)&range);
	if (ret != TCL_OK)	{
		return TCL_ERROR;
	} 
	if (GetAddrFromString(interp, addr, argv[2]) != TCL_OK)	{
		return TCL_ERROR;
	}

	UWORD i;
	int val;
	char buf[1024];
	bool bLineStart = true;
	for (i=0; i<range; i+=4)
	{
		if (bLineStart)
		{
			if (i)
				Tcl_AppendResult(interp, "\n", NULL);
			sprintf(buf, "0x%08x: ", addr+i);
			Tcl_AppendResult(interp, buf, NULL);
			bLineStart = false;
		}
		val = getActiveShell()->cmdReadDataWord(addr+i);
		if (range-i<4)
		{
			if (range-i==1)
				sprintf(buf, "%02x", val&0xff);
			else if (range-i == 2)
				sprintf(buf, "%04x", val&0xffff);
			else if (range-i == 3)
				sprintf(buf, "%04x %02x", val&0xffff, (val>>16)&0xff);
		}
		else 
		{
			sprintf(buf, "%04x %04x ", val&0xffff, (val>>16)&0xffff);
		}
		Tcl_AppendResult(interp, buf, NULL);
		if ((i+4) % 16 == 0) 
		{
			bLineStart = true;
		}
	}
	return TCL_OK;
}

int DoExitCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	char buf[32]="exit";
	getActiveShell()->cmdExit();
	return Tcl_Eval(interp, buf); 
}

int DoContinueCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc>2) {
		fprintf(stderr, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER);
		return TCL_ERROR;
	}
	long ignoreCount = 1;
	if (argc == 2) {
		int ret = Tcl_ExprLong(interp, argv[1], &ignoreCount);
		if (ret != TCL_OK) {
			fprintf(stderr, "Invalid ignore count specified: %s\n", argv[1]);
			return TCL_ERROR;
		}
	}

	RETURN_TO_SHELL;
	
	if (!MultiThreadingMode)
		getActiveShell()->cmdRunSingleElf(FALSE);
	else
		getActiveShell()->cmdRunMultiElf(FALSE);

	fsim_set_prompt();

	return TCL_OK; 
}

int DoRunCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=1) {
		fprintf(stderr, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER);
		return TCL_ERROR;
	}
	
	RETURN_TO_SHELL;	
		
	if (strcasecmp(argv[0], "prun") == 0) {
		MultiThreadingMode = 1;
		getActiveShell()->cmdRunMultiElf(FALSE);	// should be false
	} else {
		MultiThreadingMode = 0;
		getActiveShell()->cmdRunSingleElf(FALSE);
	}

	fsim_set_prompt();

	return TCL_OK; 
}

int DoRunTraceCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc<2) {
		Tcl_AppendResult(interp, "Missing trace file", NULL);
		return TCL_ERROR;
	}

	STRING file = (STRING )argv[1];
	int retv = getActiveShell()->cmdRunTrace(file, argc >= 3);
	fsim_set_prompt();
	
	return retv; 
}

int DoRerunCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=1) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	
	RETURN_TO_SHELL;
	
	if (!MultiThreadingMode)
		getActiveShell()->cmdRerunSingleElf(FALSE);
	else
		SimFatal((0), ("Not implemented\n"));//getActiveShell()->cmdRerunMultiElf(FALSE);
	return TCL_OK; 
}

int DoInfoCmd(ClientData clientData, Tcl_Interp *interp, int objc, Tcl_Obj *CONST objv[]) { 
	if (objc < 2) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	
	int len;
	if (strcasecmp("dma", Tcl_GetStringFromObj(objv[1], &len)) == 0) {
		if (objc < 3) {
			Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
			return TCL_ERROR;
		}
		
		if (strcasecmp("counter", Tcl_GetStringFromObj(objv[2], &len)) == 0) {
			UINT df = 0;
			if (objc > 3 && (strcasecmp("hex", Tcl_GetStringFromObj(objv[3], &len)) == 0)) 
				df = 0x8000;
			getActiveShell()->cmdShowDmaTraffic(df);			
		} else {
			Tcl_AppendResult(interp, "Error: Invalid DMA info parameter", NULL);
			return TCL_ERROR;
		}

		return TCL_OK;
	}

	if (objc != 2) {
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	if (strstr("breakpoints b break watch watchpoints w", Tcl_GetStringFromObj(objv[1], &len))) {
		getActiveShell()->cmdShowBreakPoints();
	} else if (strcasecmp("fsimvars", Tcl_GetStringFromObj(objv[1], &len)) == 0 ) {
		Tcl_AppendResult(interp, "VAR:", VAR_ACTIVE_THREAD_NAME, "  TYPE: string.  Value: 'BB' or 'Core'.\n", NULL);
		Tcl_AppendResult(interp, "VAR:", VAR_VERBOSE_NAME, " TYPE: integer. Value: 0..4.\n", NULL);
		Tcl_AppendResult(interp, "VAR:", VAR_MULTI_THREAD_NAME, 
			"      TYPE: integer. Value: 0 - single thread mode; 1 multithreading mode.", NULL);
	} else if (strcasecmp("registers", Tcl_GetStringFromObj(objv[1], &len)) == 0) {
		char buf[1024];
		getActiveShell()->cmdGetRegisterNames(buf, 1024);
		char *p = strrchr(buf, '\n');
		if (p && (!*(p+1)))
			*p = '\0';
		Tcl_AppendResult(interp, buf, NULL);
	} else {
		return Tcl_InfoObjCmd(clientData, interp, objc, objv);
	}
	return TCL_OK; 
}

int DoExecSteps(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc>3)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	UWORD steps = 1;
	UWORD addr = ADDR_NOT_SPECIFIED;
	if (argc>=2) {
		int ret = Tcl_GetInt(interp, argv[1], (int*)&steps);
		if (ret != TCL_OK)
		{
			Tcl_AppendResult(interp, "Invalid step # specified:", argv[1], NULL);
			return TCL_ERROR;
		} 
	}
	if (argc==3) {
		if ( Tcl_GetInt(interp, argv[2], (int *)&addr) != TCL_OK)
		{
			Tcl_AppendResult(interp, "Invalid address specified:", argv[2], NULL);
			return TCL_ERROR;
		}
	}

	RETURN_TO_SHELL;
	if (strcasecmp(argv[0], "pstep") == 0||strcasecmp(argv[0], "ps") == 0) {
		MultiThreadingMode = EXEC_PARALLEL;
	}
	else {
		MultiThreadingMode = EXEC_SINGLE;
	}	
	if (getActiveShell()->cmdGetElf()) 
		getActiveShell()->cmdStepElf(steps, FALSE, MultiThreadingMode);
	else
		getActiveShell()->cmdRunMem(addr, steps, FALSE);

	fsim_set_prompt();

	return TCL_OK;
}

int DoExecAndAsm(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc>3)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	UWORD steps = 1;
	UWORD addr = ADDR_NOT_SPECIFIED;
	
	// # of steps are specified
	if (argc>=2) {
		int ret = Tcl_GetInt(interp, argv[1], (int*)&steps);
		if (ret != TCL_OK)
		{
			Tcl_AppendResult(interp, "Invalid step # specified:", argv[1], NULL);
			return TCL_ERROR;
		} 
	}

	// starting address is specified
	if (argc==3) {
		if ( GetAddrFromString(interp, addr, argv[2]) != TCL_OK) {
			return TCL_ERROR;
		}
	}

	RETURN_TO_SHELL;
	if (strcasecmp(argv[0], "psd") == 0) {
		MultiThreadingMode = EXEC_PARALLEL;
	}
	else {
		MultiThreadingMode = EXEC_SINGLE;
	}

	// Execute # of steps from specified address
	if (getActiveShell()->cmdGetElf()){
		getActiveShell()->cmdStepElf(steps, TRUE, MultiThreadingMode);
	}
	else
	{
		if(argc != 3)
			printf("No ELF object found, and no memory address specified by user\n");
		else
			getActiveShell()->cmdRunMem(addr, steps, true);
	}

	fsim_set_prompt();

	return TCL_OK;
}

int DoSetCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc<2)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	char *endp=NULL;
	if(argc==3 && strcasecmp(argv[1], "workpath")==0)
	{
		if(chdir(argv[2])<0)
		{
			fprintf(stderr, "Invaild work path.");
			return TCL_ERROR;
		}	
		return TCL_OK;	
	}
	if (argc >= 2 && (strcasecmp(argv[1], "verboselevel") == 0)) {
		UINT val = 0;

		if(argc == 2)
			val = 0;
		else if(argc == 3)
			val = atoi(argv[2]);
		else
		{
			fprintf(stderr, "Invalid Verbose Level.");
			return TCL_ERROR;
		}

		getActiveShell()->VerboseLevel(val);
	}
	else if (argc >= 2 && (strcasecmp(argv[1], "dma") == 0)) {
		if (argc > 3 && (strcasecmp(argv[2], "counter") == 0) && (strcasecmp(argv[3], "0") == 0)) {
			getActiveShell()->cmdResetDmaTraffic();
			return TCL_OK;
		}
		else {
			Tcl_AppendResult(interp, "Error: Invalid set dma parameter\n\tUse \"set dma counter 0\"", NULL);
			return TCL_OK;
		}
	}
	else if (argc==3 && (strcasecmp(argv[1], "sharehigh")==0))
	{
		UWORD val;
		val = strtoll(argv[2], &endp, 0);
		if (*endp) {
			Tcl_AppendResult(interp, "Invalid address specified:", argv[2], NULL);
			return TCL_ERROR;
		}
		getActiveShell()->cmdSetShareMemHigh(val);
	}
	else if (argc==3 && (strcasecmp(argv[1], "sharelow")==0))
	{
		UWORD val;
		val = strtoll(argv[2], &endp, 0);
		if (*endp) {
			Tcl_AppendResult(interp, "Invalid address specified:", argv[2], NULL);
			return TCL_ERROR;
		}
		getActiveShell()->cmdSetShareMemLow(val);
	}
	else if (argc==3 && getActiveShell()->isValidRegName((const STRING)argv[1])) {
	// Check if it's a register
		UDWORD val = 0;
		
		if (fsim_is_reg_readonly(argv[1])) {
			fprintf(stdout, "Failed to set readonly register:%s", argv[1]);
			return TCL_ERROR;
		}
		val = strtoll(argv[2], &endp, 0);
		if (*endp) {
			Tcl_AppendResult(interp, "Invalid integer specified:", argv[2], NULL);
			return TCL_ERROR;
		}
		
		char* p = (char*)argv[1];
		if (argv[1][0] == '$') p++;	// This seems not work. TCL will interpret $xxxx.
		if (!*p) {
			Tcl_AppendResult(interp, "Register name missing:", argv[1], NULL);
			return TCL_ERROR;
		} 
//		printf("set reg %s to 0x%08llx\n", p, val);
		if (getActiveShell()->cmdSetReg(p, val)==0) {
			return TCL_OK;
		}
		else {
			Tcl_AppendResult(interp, "Can't set register %s to %s", argv[1], argv[2], NULL);
			return TCL_ERROR;
		}
	} else if (argc==3 && (strcmp(argv[1], VAR_ACTIVE_THREAD_NAME) == 0)) {
		// activate thread
		if (strcasecmp(argv[2], VAR_CORE_THREAD_NAME) == 0) {
			// other processing follows
			getActiveShell()->cmdSetThread(THREAD_ID_0);
		} else if (strcasecmp(argv[2], VAR_BB_THREAD_NAME) == 0) {
			// other processing follows
			getActiveShell()->cmdSetThread(THREAD_ID_1);
		} else if (strcasecmp(argv[2], VAR_SL2_TH0_THREAD_NAME) == 0) {
			getActiveShell()->cmdSetThread(THREAD_ID_0);
		} else if (strcasecmp(argv[2], VAR_SL2_TH1_THREAD_NAME) == 0) {
			getActiveShell()->cmdSetThread(THREAD_ID_1);
		} else if (strcasecmp(argv[2], VAR_SL2_TH2_THREAD_NAME) == 0) {
			getActiveShell()->cmdSetThread(THREAD_ID_2);
		} else if (strcasecmp(argv[2], VAR_SL2_TH3_THREAD_NAME) == 0) {
			getActiveShell()->cmdSetThread(THREAD_ID_3);			
		} else if (strcasecmp(argv[2], VAR_SL2_TH4_THREAD_NAME) == 0) {
			getActiveShell()->cmdSetThread(THREAD_ID_4);
		} else {
			fprintf(stderr, "Invalid thread name");
			return TCL_ERROR;
		}
		strcpy(ActiveThreadName, argv[2]);
		fsim_set_prompt();
		getActiveShell()->cmdLinkRegisters();
	}else if (argc==3 && (strcasecmp(argv[1], "lcd") == 0)) {
		// activate thread
		if (strcasecmp(argv[2], "on") == 0) {
			getActiveShell()->cmdLcdSwitch(TRUE);
			
		} else if (strcasecmp(argv[2], "off") == 0) {
			getActiveShell()->cmdLcdSwitch(FALSE);
			
		} else {
			fprintf(stderr, "Invalid LCD state:%s", argv[2]);
			return TCL_ERROR;
		}
		return TCL_OK;
	}

	 else if (argc==3 && (strcmp(argv[1], VAR_MULTI_THREAD_NAME) == 0)) {
		int mode;
		if ((Tcl_GetInt(interp, argv[2], &mode) != TCL_OK) || (mode!=0 && mode!=1)) {
			Tcl_AppendResult(interp, "multithreading mode must be 0 or 1", NULL);
			return TCL_ERROR;
		}
		MultiThreadingMode = mode;
		return TCL_OK;
	} else if (argc==3 && (strcmp(argv[1],"quicktrace")==0)){
		if (strcasecmp(argv[2], "on") == 0)
		{
			getActiveShell()->cmdLogQuickTrace(true);
		}
		else if (strcasecmp(argv[2], "off") == 0)
		{
			getActiveShell()->cmdLogQuickTrace(false);
		}
		else{
			fprintf(stderr,"Invalid ignorelog state:%s",argv[2]);
			return TCL_ERROR;
		}
		return TCL_OK;
	}else if (argc>=3 && (strcmp(argv[1],"ignoretrace")==0)){
		char *p = NULL;
		if (argc==4) p = (char*)argv[3];
		if (strcasecmp(argv[2], "on") == 0)
		{
			getActiveShell()->cmdLogIgnoreTrace(true,p);
		}
		else if (strcasecmp(argv[2], "off") == 0)
		{
			getActiveShell()->cmdLogIgnoreTrace(false,NULL);
		}
		else{
			fprintf(stderr,"Invalid ignorelog state:%s",argv[2]);
			return TCL_ERROR;
		}
		return TCL_OK;
	} else if (argc>=3 && (strcmp(argv[1],"focustrace")==0)){
		char *p = NULL;
		if (argc==4) p = (char*)argv[3];
		if (strcasecmp(argv[2], "on") == 0)
		{
			getActiveShell()->cmdLogFocusTrace(true,p);
		}
		else if (strcasecmp(argv[2], "off") == 0)
		{
			getActiveShell()->cmdLogFocusTrace(false,NULL);
		}
		else{
			fprintf(stderr,"Invalid focuslog state:%s",argv[2]);
			return TCL_ERROR;
		}
		return TCL_OK;		
	} else if (argc==3 && (strcmp(argv[1], OS_THREAD_ID_SYMBOL) == 0)) {
		getActiveShell()->cmdLogUserThreadIdSymbol((STRING)argv[2]);
		return TCL_OK;
	} else if (argc>=3 && (strcmp(argv[1], "logging") == 0)) {
		if (argc==3 && (strcmp(argv[2], "on") == 0)) {
			// start all logging
			getActiveShell()->cmdLogEnableSwitch(true);
			return TCL_OK;
		} else if (argc==3 && (strcmp(argv[2], "off") == 0)) {
			// stop all logging
			getActiveShell()->cmdLogEnableSwitch(false);
			return TCL_OK;
		} else if (argc==3 && (strcmp(argv[2], "suspend") == 0)) {
			// suspend all logging
			getActiveShell()->cmdLogResumeSwitch(false);
			return TCL_OK;
		} else if (argc==3 && (strcmp(argv[2], "resume") == 0)) {
			// resume all logging
			getActiveShell()->cmdLogResumeSwitch(true);
			return TCL_OK;
		} else if (argc>=4 && (strcmp(argv[2], "cbus") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0) {
				// enable cbus logging
				getActiveShell()->cmdLogCbus(true, p);
				return TCL_OK;
			} else if ((argc==4) && strcmp(argv[3], "off")==0) {
				// disable cbus logging
				getActiveShell()->cmdLogCbus(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "reg") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0 && argc>=4) {
				// enable reg logging
				getActiveShell()->cmdLogRegWrite(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable reg logging
				getActiveShell()->cmdLogRegWrite(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "task") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0 && argc>=4) {
				// enable trace logging with task id
				getActiveShell()->cmdLogTaskTrace(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable trace logging with task id
				getActiveShell()->cmdLogTaskTrace(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "stack") == 0)) {
			if (strcmp(argv[3], "on")==0 && argc>=4) {
				// enable trace logging
				getActiveShell()->cmdLogStack(true);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable trace logging
				getActiveShell()->cmdLogStack(false);
				return TCL_OK;
			}
		}else if (argc>=3 && (strcmp(argv[2], "trace") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0 && argc>=4) {
				// enable trace logging
				getActiveShell()->cmdLogTrace(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable trace logging
				getActiveShell()->cmdLogTrace(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "result") == 0)) {
			char *p = NULL;
			if (argc >= 5) 
				p = (char*)argv[4];
			if (argc>=4 && strcmp(argv[3], "on")==0) {				
				getActiveShell()->cmdLogRegMem(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				getActiveShell()->cmdLogRegMem(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "disasm") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0 && argc>=4) {
				// enable disasm logging
				getActiveShell()->cmdLogDisasm(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable disasm logging
				getActiveShell()->cmdLogDisasm(false);
				return TCL_OK;
			}
		} else if (argc>=3 && (strcmp(argv[2], "instrcnt") == 0)) {
			if (argc>=4 && strcmp(argv[3], "on")==0) {
				// enable disasm logging
				if((argc == 5) && (strcmp(argv[4], "all") == 0))
					getActiveShell()->cmdLogInstrCnt(true, true);
				else
					getActiveShell()->cmdLogInstrCnt(true, false);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable disasm logging
				getActiveShell()->cmdLogInstrCnt(false, false);
				return TCL_OK;
			}
		}else if (argc>=3 && (strcmp(argv[2], "call") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (argc>=4 && strcmp(argv[3], "on")==0) {
				// enable disasm logging
				getActiveShell()->cmdLogCall(true, p);
				return TCL_OK;
			} else if (argc==4 && strcmp(argv[3], "off")==0) {
				// disable disasm logging
				getActiveShell()->cmdLogCall(false);
				return TCL_OK;
			}
		} else if ((argc == 4) && (strcmp(argv[2], "redirect") == 0)) {
			if (strcmp(argv[3], "on") == 0 ) {
				getActiveShell()->cmdEnableRedirect(true);
			} else if (strcmp(argv[3], "off") == 0) {
				getActiveShell()->cmdEnableRedirect(false);
			}
		}
		
		fprintf(stderr, "Invalid command syntax. Missing filename?", argc);
		return TCL_ERROR;
	}else if (argc>=3 && (strcasecmp(argv[1], "execmode") == 0)) {
		if (argc>=3 && (strcmp(argv[2], "skipfork") == 0)) {
			char *p = NULL;
			if (argc==5) p = (char*)argv[4];
			if (strcmp(argv[3], "on")==0) {
				// enable cbus logging
				getActiveShell()->cmdSetExecMode(0, TRUE);
				return TCL_OK;
			} else if ((argc==4) && strcmp(argv[3], "off")==0) {
				// disable cbus logging
				getActiveShell()->cmdSetExecMode(0, FALSE);
				return TCL_OK;
			}
		}
		//fprintf(stderr, "Invalid command syntax. Mode name (%s) not find.", argv[2]);
		//return TCL_ERROR;	
	}else if(argc>=2 && ( strcmp( argv[ 1 ], "args" )  == 0)) {
		getActiveShell()->cmdSetArgument( argc, argv );
		return TCL_OK;		
	}
	const char* retObj;
	if (argc == 2) {
		retObj = Tcl_SetVar(interp, argv[1], NULL, TCL_LEAVE_ERR_MSG);
	} else {
		// Not a register name, call normal TCL procedure
		char *newCmd;
		newCmd = Tcl_Concat(argc-2, &argv[2]);
		if (newCmd) {
			retObj = Tcl_SetVar(interp, argv[1], newCmd, TCL_LEAVE_ERR_MSG);
			Tcl_Free(newCmd);
		}
	}
	if (!retObj) {
		return TCL_ERROR;
	}
	return TCL_OK;
}

int DoSetMemByte(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=3)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	ADDR addr;
	UWORD val;
	int ret = GetAddrFromString(interp, addr, argv[1]);
	if (ret != TCL_OK) {
		return TCL_ERROR;
	} 
	ret = Tcl_GetInt(interp, argv[2], (int *)&val);
	if (ret != TCL_OK)
	{
		Tcl_AppendResult(interp, "Invalid value specified:", argv[2], NULL);
		return TCL_ERROR;
	}
	if (val & 0xffffff00)
	{
		Tcl_AppendResult(interp, "Value must be a byte value: 0..255", NULL);
		return TCL_ERROR;
	}
	val &= 0xff;

	UWORD range=1;
	if (argc==4) {
		ret = Tcl_GetInt(interp, argv[3], (int *)&range);
		if (ret != TCL_OK)
		{
			Tcl_AppendResult(interp, "Invalid range specified:", argv[3], NULL);
			return TCL_ERROR;
		}
	}

	UINT i;
	for (i=0; i<range; i++)
		getActiveShell()->cmdWriteDataByte(addr+i, val);

	return TCL_OK;
}

int DoSetMemWord(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc!=3 && argc!=4)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		return TCL_ERROR;
	}
	UWORD addr;
	UWORD val;
	int ret = GetAddrFromString(interp, addr, argv[1]);
	if (ret != TCL_OK) {
		return TCL_ERROR;
	} 
	ret = Tcl_GetInt(interp, argv[2], (int *)&val);
	if (ret != TCL_OK) {
		Tcl_AppendResult(interp, "Invalid value specified:", argv[2], NULL);
		return TCL_ERROR;
	}
	UWORD range=1;
	if (argc==4) {
		ret = Tcl_GetInt(interp, argv[3], (int *)&range);
		if (ret != TCL_OK)
		{
			Tcl_AppendResult(interp, "Invalid range specified:", argv[3], NULL);
			return TCL_ERROR;
		}
	}
	UINT i;
	for (i=0; i<range; i+=4) {
		getActiveShell()->cmdWriteDataWord(addr+i, val);
	}
	return TCL_OK;
}

int DoSetRegister(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	fprintf(stderr, "Not implemented. Please use set command.\n");
	return TCL_OK;
}

int DoStepiCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc>2) {
		fprintf(stderr, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER);
		return TCL_ERROR;
	}
	int steps = 1;
	if (argc == 2) {
		int ret = Tcl_GetInt(interp, argv[1], &steps);
		if (ret != TCL_OK) {
			fprintf(stderr, "Invalid steps specified:%s\n", argv[1]);
			return TCL_ERROR;
		}
	}
	ADDR addr = getActiveShell()->cmdGetPC();
	if (strcasecmp(argv[0], "pstepi") == 0||strcasecmp(argv[0], "psi") == 0) {
		MultiThreadingMode = EXEC_PARALLEL;
	}
	else {
		MultiThreadingMode = EXEC_SINGLE;
	}		
	ExecSteps(addr, steps, 1);
	return TCL_OK; 
}

int DoUse(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
	if (argc != 2)
	{
		Tcl_AppendResult(interp, SHELL_ERROR_MSG_WRONG_ARGUMENT_NUMBER, NULL);
		getActiveShell()->printCmdUsage("use");
		return TCL_ERROR;
	}
	if (strcmp(argv[1], "gpr16") == 0)
	{
		getActiveShell()->cmdSetThread(THREAD_ID_1);
	}
	else if (strcmp(argv[1], "gpr32") == 0)
	{
		getActiveShell()->cmdSetThread(THREAD_ID_0);
	}
	else
	{
		Tcl_AppendResult(interp, "Wrong gpr set!", NULL);
		return TCL_ERROR;
	}
	fsim_set_prompt();
	getActiveShell()->cmdLinkRegisters();
	return TCL_OK;
}

WORD comReadWord(ADDR addr, bool bPhysicalMem=false)
{
	if (bPhysicalMem) {
		return getActiveShell()->cmdReadDataWord(addr);
	} else {
		return getActiveShell()->cmdReadDataWord(addr);
	}
}

WORD comReadHword(ADDR addr, bool bPhysicalMem=false)
{
	if (bPhysicalMem) {
		return getActiveShell()->cmdReadDataHword(addr);
	} else {
		return getActiveShell()->cmdReadDataHword(addr);
	}
}

BYTE comReadByte(ADDR addr,  bool bPhysicalMem=false)
{
	if (bPhysicalMem) {
		return getActiveShell()->cmdReadDataByte(addr);
	} else {
		return getActiveShell()->cmdReadDataByte(addr);
	}
}

void DumpMemory(ADDR addr, int count, int unitSize, char fmtChar, bool bPhysicalMem=false)
{
//	printf("DumpMemory addr:%#08x count:%d size:%d fmt:%c\n",
//		addr, count, unitSize, fmtChar);
	int unitsPerLine = 16;
	int i;
	DWORD val;
	DWORD val2;
	if ('a' == fmtChar) {
		// address
		unitSize = 4;
		fmtChar = 'x';
		unitsPerLine = 8;
		for (i=0; i<count; i++) {
			if (i%unitsPerLine == 0)
				fprintf(stdout, "%#04x: ", addr+i*4);
			fprintf(stdout, "%#04x ", comReadWord(addr+i*4, bPhysicalMem));
			if (i%unitsPerLine == unitsPerLine-1)
				fprintf(stdout, "\n");
		}
	}
	else if ( 'u' == fmtChar || 'd' == fmtChar || 'x' == fmtChar) {
		// Integers
		unitsPerLine = 16/unitSize;
		if (unitsPerLine<8)
			unitsPerLine = 8;
		if (unitSize == 8)
			unitsPerLine = 4;
		for (i=0; i<count; i++) {
			if (i%unitsPerLine == 0)
				fprintf(stdout, "%#04x: ", addr+i*unitSize);
				
			if (unitSize == 1) {
				val = comReadByte(addr+i, bPhysicalMem);
				val &= 0xff;
				if ('x' == fmtChar)
					fprintf(stdout, "%0*x ", unitSize*2, val);
				else {
					char fmtStr[8] ="%d ";
					fmtStr[1] = fmtChar;
					fprintf(stdout, fmtStr, val);
				}
			}
			else if (unitSize == 2) {
				val = comReadHword(addr+i*unitSize, bPhysicalMem);
				val &= 0xffff;
				if ('x' == fmtChar)
					fprintf(stdout, "%0*x ", unitSize*2, val);
				else {
					char fmtStr[8] ="%d ";
					fmtStr[1] = fmtChar;
					fprintf(stdout, fmtStr, val);
				}
			}
			else if (unitSize == 4) {
				val = comReadWord(addr+i*unitSize, bPhysicalMem);
				val &= 0xffffffff;
				if ('x' == fmtChar)
					fprintf(stdout, "%0*x ", unitSize*2, val);
				else {
					char fmtStr[8] ="%d ";
					fmtStr[1] = fmtChar;
					fprintf(stdout, fmtStr, (WORD)val);
				}
			}
			else if (unitSize == 8) {
				val = comReadWord(addr+i*unitSize, bPhysicalMem);
				val2 = comReadWord(addr+ (i*unitSize) + 4, bPhysicalMem);
				if ('x' == fmtChar) {
					fprintf(stdout, "%08x%08x ", (WORD)val, (WORD)val2);
				}
				else {
					unsigned long long v = val2;
					v = (unsigned long long )val + (v<<32);
					char fmtStr[8] ="%lld ";
					fmtStr[3] = fmtChar;
					fprintf(stdout, fmtStr, v);
				}
			}
			
			if (i%unitsPerLine == unitsPerLine-1)
				fprintf(stdout, "\n");
		}
	}
	else if ('c' == fmtChar || 's' == fmtChar) {
		// chars
		unitSize = 1;
		fmtChar = 'c';
		unitsPerLine = 16;
		char valBuf[128];
		char charBuf[32];
		int cc = 0;
		for (i=0; i<count; i++) {
			if (i%unitsPerLine == 0) {
				fprintf(stdout, "%#04x: ", addr+i);
				cc=0;
			}
			char ch = comReadByte(addr+i, bPhysicalMem);
			sprintf(valBuf+cc*3, "%02x ", (unsigned)ch&0xff);
			if (isprint(ch))
				charBuf[cc++] = ch;
			else
				charBuf[cc++] = '.';
			
			if (i%unitsPerLine == unitsPerLine-1 || i>=count-1) {
				valBuf[cc*3] = '\0';
				charBuf[cc] = '\0';
				fprintf(stdout, "%s \t%s\n", valBuf, charBuf);
			}
		}
	}
	else if ('i' == fmtChar) {
		getActiveShell()->cmdDisassembly(addr, count);
	}
	else {
		fprintf(stderr, "Not implemented\n");
		return;
	}
	
	fprintf(stdout, "\n");
	_last_mem_dump_addr = addr + count * unitSize;
}

void SetMemory(ADDR addr, DWORD value, int count, int unitSize, bool bPhysicalMem=false)
{
	int i;
	if (unitSize == 1) {
		for (i=0; i<count; i++) {
			if (bPhysicalMem) 
				getActiveShell()->cmdWriteDataByte(addr+i, (BYTE)value);
			else
				getActiveShell()->cmdWriteDataByte(addr+i, (BYTE)value);
		}
	} else if (unitSize == 4) {
		for (i=0; i<count; i++) {
			if (bPhysicalMem) 
				getActiveShell()->cmdWriteDataWord(addr+i*unitSize, value);
			else
				getActiveShell()->cmdWriteDataWord(addr+i*unitSize, value);
		}
	} else {
		fprintf(stderr, "Unit size not supported\n");
	}
}

int DoPrintMemCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) { 
static const char *_print_mem_fmt_str="xudotacmsi";

	UINT repeatCount = 0;
	UINT unitSize = 0;
	long addr=0;
	long value=0;
	int nextArg=1;
	int ret;
	bool bPhysicalMem = false;
	
	if (strcmp(argv[0], "xp") == 0) bPhysicalMem = true;
//	if ( bPhysicalMem ) printf("Physical memory\n");
	
	// check format
	char fmtChar='\0';

	if ((argc>3 && argv[1][0]!='/') || (argc>4 && argv[1][0]=='/')) {
		fprintf(stderr, "Wront # of arguments\n");
		return TCL_ERROR;
	}
	
	// check if format is specified and valid
	if (argc>=2 && argv[1][0] == '/') {
		nextArg = 2;
		if (strlen(argv[1]) == 1) {
			fprintf(stderr, "Invalid format string:%s\n", argv[1]);
			return TCL_ERROR;
		}
		char *p = (char*)(argv[1]+strlen(argv[1])-1);
		// check if last char is unit size char
		// unit size only affect integer
		if (*p) {
			const char *sizeStr = "bhwg";
			char *q = strchr(sizeStr, *p);
			if (q) {
				unitSize = 1<<(q-sizeStr);
				*p-- = '\0';	// discard the unit size character
			}
		}
//		if (p!=argv[1]) printf("format char is %c\n", *p);
		// next parameter must be format if present
		if (p!=argv[1] && (strchr(_print_mem_fmt_str, *p)!=NULL)) {
			fmtChar = *p;
			if (fmtChar == 't') {
				fprintf(stderr, "binary representation not supported\n");
				return TCL_ERROR;
			}
			
			*p--='\0';
		}
		// check for repeat count
		p = (char *)(argv[1]+1);
		if (*p && isdigit(*p)) {
			char *q=NULL;
			repeatCount = strtoll(p, &q, 0);
			if (q == p) {
				// no repeat count specified
				fprintf(stderr, "No repeat count\n");
			} else if (*q) {
				fprintf(stderr, "Invalid format string specified:%s\n", argv[1]);
				return TCL_ERROR;
			}
		}
	}
	// save
	if (fmtChar) _last_fmt_char = fmtChar;
	if (unitSize) _last_unit_size = unitSize;
	if (repeatCount) _last_repeat_count = repeatCount;
			
	// use previous format char if it's legal for x command
	if (!fmtChar && _last_fmt_char && strchr(_print_mem_fmt_str, _last_fmt_char))
		fmtChar = _last_fmt_char;
	if (!fmtChar)
		fmtChar = 'u';
		
	if (!unitSize && _last_unit_size)
		unitSize = _last_unit_size;
	if (!addr) {
		if (fmtChar == 'i' && _last_mem_dump_addr==0)
			addr = getActiveShell()->cmdGetPC();
		else
			addr = _last_mem_dump_addr;
	}

	if (0 == repeatCount)
		repeatCount = _last_repeat_count;

	// check for address parameter
	if (nextArg>=argc) {
		// Dump after previous address
		DumpMemory(addr, repeatCount, unitSize, fmtChar, bPhysicalMem);
		return TCL_OK;
	}
	// get address
	if (GetAddrFromString(interp, (ADDR&)addr, argv[nextArg]) != TCL_OK) {
		return TCL_ERROR;
	}
	_last_mem_dump_addr = addr;
	nextArg++;
	
	// check for value parameter
	if (nextArg >= argc) {
		// dump memory
		DumpMemory(addr, repeatCount, unitSize, fmtChar, bPhysicalMem);
		return TCL_OK;
	}
	
	// value parameter is present
	ret = Tcl_ExprLong(interp, argv[nextArg], &value);
	if (ret != TCL_OK) {
		fprintf(stderr, "Invalid value specified: %s", argv[nextArg]);
		return TCL_ERROR;
	}
	// set memory
	SetMemory(addr, value, repeatCount, unitSize, bPhysicalMem);
	return TCL_OK;
}

int DoUnitTest(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]) {
	int v = getActiveShell()->cmdGetExecStatus();
	fprintf(stdout, "exec status:%x\n", v);
	return TCL_OK;
} 

static void
catch_signal (INT sig, INT error_num)
{
	fprintf(stdout, "CTRL-C\n");
	fprintf(stdout, "\n%s", Tcl_GetVar(gInterp, "sl_prompt", TCL_GLOBAL_ONLY));
	getActiveShell()->cmdInterruptCtrlC();
}

int Tcl_AppInit(Tcl_Interp *interp) {
	if (Tcl_CreateObjCommand(interp, "help", DoHelp, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "awatch", DoSetWatchCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "b", DoSetBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "break", DoSetBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "bt", DoBackTraceCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "c", DoContinueCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "cl", DoClearBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "clear", DoClearBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "clreg", DoClearRegsCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "cont", DoContinueCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "continue", DoContinueCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "d", DoDeleteBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "delete", DoDeleteBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "dis", DoDisassembly, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "disable", DoDisableBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "dumpfunc", DoDumpFuncCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "dumpmem", DoDumpMemCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "dumpreg", DoDumpRegCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "enable",  DoEnableBreakCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateObjCommand(interp, "info", DoInfoCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "initmem", DoInitMemCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "initreg", DoInitRegCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "initsram", DoInitSramCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "load", DoLoad, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "ni", DoNextiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "nexti", DoNextiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "p", DoPrintCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "pr", DoDumpRange, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "print", DoPrintCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "prun", DoRunCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "ps", DoExecSteps, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "psd", DoExecAndAsm, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "psi", DoStepiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "pstep", DoExecSteps, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "pstepi", DoStepiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "q", DoExitCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
//	if (Tcl_CreateCommand(interp, "exit", DoExitCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) 	return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "quit", DoExitCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) 	return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "r", DoRunCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) 	return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "rerun", DoRerunCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "rr", DoRerunCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "run", DoRunCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "rwatch", DoSetWatchCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "s", DoExecSteps, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "sd", DoExecAndAsm, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "set", DoSetCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "setmembyte", DoSetMemByte, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "setmemword", DoSetMemWord, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "setreg", DoSetRegister, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "si", DoStepiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "smb", DoSetMemByte, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "smw", DoSetMemWord, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "sr", DoSetRegister, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "step", DoExecSteps, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "stepi", DoStepiCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "rt", DoRunTraceCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "runtrace", DoRunTraceCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "use", DoUse, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "watch", DoSetWatchCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "x", DoPrintMemCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "xp", DoPrintMemCmd, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	if (Tcl_CreateCommand(interp, "utest", DoUnitTest, NULL, (Tcl_CmdDeleteProc *)NULL) == NULL) return TCL_ERROR;
	
	gInterp = interp;
	fsim_set_prompt();
	getActiveShell()->cmdLinkRegisters();

	// link shell variables
	ActiveThreadName = Tcl_Alloc(32);
	SimFatal((ActiveThreadName), ("Tcl allocation failure"));
	strcpy(ActiveThreadName, VAR_CORE_THREAD_NAME);
	Tcl_LinkVar(interp, VAR_ACTIVE_THREAD_NAME, (char *)&ActiveThreadName, TCL_LINK_STRING);
	
	//fsim_link_str(VAR_ACTIVE_THREAD_NAME, ActiveThreadName, 1);
	fsim_link_int(VAR_VERBOSE_NAME, get_verbose_level_ptr(), 1);
	fsim_link_int(VAR_MULTI_THREAD_NAME, &MultiThreadingMode, 1);

#define INIT_TCL_FILE ".init.tcl"
	// evaluate if a init tcl file exists in current directory
	FILE *fp = fopen (INIT_TCL_FILE, "rb");
	if (fp != NULL) {
		fclose (fp);
		Tcl_Eval(interp, "source "INIT_TCL_FILE);
	}
			
	const char *cmd =  getActiveShell()->cmdGetBatchCmdLine();
	if (cmd && cmd[0]) {
//		printf("commands:[%s]\n", cmd);
		Tcl_Eval(interp, cmd);
	}

	// execute batch file first if specified
	char *cmdFile = getActiveShell()->cmdGetBatchCmdFile();
	if (cmdFile && cmdFile[0]) {
//		printf("Execute batch cmd file:%s\n", cmdFile);
		char cmdBuf[256];
		sprintf(cmdBuf, "source %s", cmdFile);
		Tcl_Eval(interp, cmdBuf);
	}
	
	return getActiveShell()->init();
}
