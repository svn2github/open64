/*
 *  File: shellbase.h
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

#ifndef SHELLBASE_H_
#define SHELLBASE_H_

#define MAX_FILE_NAME_LEN 256

#include "defs.h"

typedef struct {
	INT index;
	STRING cmdName;
	STRING cmdAlias;
	STRING cmdUsage;
	STRING cmdUsageDetails;
} FsimCommandIndexItem;

extern STRING PrintCmd_Usage;
extern STRING PrintMemCmd_Usage;
extern FsimCommandIndexItem FsimCmdIdxTbl[];

class ShellBase {

	public:
	virtual INT init(void) = 0;
	virtual void printUsage(void) = 0;
	virtual void printCmdUsage(STRING name) = 0;

	//cmd		
	virtual INT   cmdBackTrace(void) = 0;
	virtual INT   cmdClearAllBreak(void)  = 0;
	virtual INT   cmdClearBreakByIndex(UINT brknum) = 0;
	virtual INT   cmdClearInstrBreak(ADDR pc)  = 0;
	virtual INT   cmdClearReadBreak(ADDR pc)  = 0;
	virtual INT   cmdClearRegs(void) = 0;
	virtual INT   cmdClearMem(void) = 0;
	virtual INT   cmdClearWriteBreak(ADDR pc)  = 0;
	virtual INT   cmdDisassembly(ADDR startpc, UINT range)   = 0;
	virtual INT   cmdDumpFunc(FILE* funcFp) = 0;
	virtual INT   cmdDumpMem(FILE *out, ADDR addr, UINT length) = 0;
	virtual void  cmdDumpRegs(FILE *out, INT mode, const char* regSetName) = 0;
	virtual INT   cmdEnableBreak(UINT, BOOL) = 0;
	virtual INT   cmdEnableRedirect(BOOL flag) = 0;
	virtual INT   cmdExit(void)  = 0;
	virtual char *cmdGetBatchCmdFile(void) = 0;
	virtual const char *cmdGetBatchCmdLine(void) = 0;
	virtual void *cmdGetElf(void) = 0;
	virtual ADDR  cmdGetPC() = 0;
	virtual char* cmdGetPrompt(void) = 0;
	virtual DWORD cmdGetReg(STRING name) = 0;
	virtual INT   cmdGetRegisterNames(char *buf, int len) = 0;
	virtual WORD  cmdGetExecStatus(void) = 0;
	virtual ADDR  cmdGetSymbolAddr(const char *symName, INT threadId=-1) = 0; 
	virtual INT   cmdGetThread(void) = 0;
	virtual INT   cmdHelp(STRING cmd)  = 0;
	virtual INT   cmdInitMem(FILE *in, ADDR addr) = 0;
	virtual INT   cmdInitRegs(FILE *inRegs, const char* regSetName) = 0;
	virtual INT   cmdInitSRAM(FILE *inRegs, ADDR offset) = 0;
	virtual INT   cmdInterruptCtrlC(void)=0;
	virtual INT   cmdLcdSwitch(BOOL on) = 0;
	virtual INT   cmdSetLcdWidth(INT width) = 0;
	virtual INT	  cmdSetLcdHeight(INT height) = 0;
	virtual void  cmdLinkRegisters(void) = 0;
	virtual INT   cmdLoadElf(STRING elfName)  = 0;
	virtual INT   cmdLoadElf(struct symbol_t *symbolList)  = 0;
	virtual INT   cmdLogStack(BOOL enable) = 0;
	virtual INT   cmdLogInstrCnt(BOOL enable, BOOL enabledetail) = 0;
	virtual INT   cmdLogCall(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogCbus(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogDisasm(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogEnableSwitch(BOOL enable) = 0;
	virtual INT   cmdLogRegWrite(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogResumeSwitch(BOOL enable) = 0;
	virtual INT   cmdLogTaskTrace(BOOL enable, STRING filename=NULL) = 0;
	virtual INT   cmdLogTrace(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogRegMem(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogQuickTrace(BOOL enable) = 0;
	virtual INT   cmdLogIgnoreTrace(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogFocusTrace(BOOL enable, STRING name=NULL) = 0;
	virtual INT   cmdLogUserThreadIdSymbol(STRING userThreadIdSymbol) = 0;
	virtual INT   cmdPutArgsInStack( void ) = 0;
	virtual INT   cmdReadRange(ADDR addr, UINT cnt) = 0;
	virtual WORD  cmdReadInstr(ADDR addr) = 0;
	virtual BYTE  cmdReadDataByte(ADDR addr) = 0;
	virtual HWORD cmdReadDataHword(ADDR addr) = 0;
	virtual WORD  cmdReadDataWord(ADDR addr) = 0;	
	virtual INT   cmdRerunSingleElf(BOOL isDisasm) = 0;
	virtual INT   cmdRunMem(ADDR addr, INT steps, BOOL isDisasm) = 0;
	virtual INT   cmdRunMultiElf(BOOL isDisasm) = 0;
	virtual INT   cmdRunSingleElf(BOOL isDisasm) = 0;
	virtual INT   cmdRunTrace(STRING name, BOOL verify = TRUE) = 0;	
	virtual INT   cmdSetArgument( int argc, const char *argv[] ) = 0;
	virtual void  cmdSetExecMode(INT modeID, WORD value) = 0;
	virtual INT   cmdSetInstrBreak(ADDR pc)  = 0;
	virtual void  cmdSetPC(ADDR pc) = 0;
	virtual INT   cmdSetReadBreak(ADDR pc)  = 0;
	virtual INT   cmdSetReg(STRING name, DWORD data) = 0;
	virtual INT   cmdSetThread(UINT threadid) = 0;
	virtual INT   cmdSetWriteBreak(ADDR pc)  = 0;
	virtual void  cmdShowBreakPoints(void) = 0;
	virtual void  cmdShowDmaTraffic(UINT mask) = 0;
	virtual void  cmdResetDmaTraffic(void) = 0;
	virtual INT   cmdStepElf(INT steps, BOOL isDisasm, INT thread_mode) = 0;
	virtual INT   cmdWriteBlock(ADDR addr, BYTE data, INT size) = 0;
	virtual INT   cmdWriteInstr(ADDR addr, WORD data) = 0;
	virtual INT   cmdWriteDataByte(ADDR addr, BYTE data) = 0;
	virtual INT   cmdWriteDataHword(ADDR addr, HWORD data) = 0;
	virtual INT   cmdWriteDataWord(ADDR addr, WORD data) = 0;	
	virtual INT   cmdSetShareMemHigh(ADDR addr) = 0;
	virtual INT   cmdSetShareMemLow(ADDR addr) = 0;
	virtual bool  isValidRegName(const STRING regName) = 0;
	virtual void  showStatus(void) = 0;
	virtual void  VerboseLevel(UINT) = 0;
};

#endif /*SHELL_H_*/
