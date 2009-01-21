/*
 *  File: sl1shell.h
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
#ifndef SL1_SOCSHELL_H_
#define SL1_SOCSHELL_H_

#include "singleton.h"

#include "defs.h"
#include "tclapi.h"
#include "memory.h"
#include "sl1address.h"
#include "sl1mmu.h"
#include "sl1instr.h"
#include "sl1reg.h"
#include "sl1exec.h"
#include "sl1fetch.h"
#include "sl1decoder.h"
#include "sl1disasm.h"
#include "status.h"
#include "sl1machine.h"
#include "shell.h"
#include "longjmp.h"
#include "properties.h"
#include "postproc.h"

#include <string>

#include "simconfig.h"
#include "sl1system.h"
#include "gdbserver.h"

class SL1SoCShell : public Shell<SL1_CLASS_LIST>
{
private:
	void backward_init(); // TODO: remove this in later version

private:
	SimConfig _config;
	GDBServer<SL1MMU, SL1Machine>* _gdbServer;
	SL1System* _system;
	PostProc* _postproc;
    LCD* _lcd;

	void showVersion();
	void showUsage();

public:
	enum BREAK_TYPES
	{
		BREAK_RD,
		BREAK_WR,
		BREAK_RDWR,
		BREAK_INSTR
	};


	void init(int argc, char* argv[]);

	/* Retrieve instance function */
	SimConfig& config();

	/* Start and exit handler */
	void start();
	void end();

	/* Master reset */
	void resetAll();

	/* Elf related interface */
	int loadElf(string elf);

	/* Execute interface */
	void run();
	void step();
	int getExecStatus();

	/* Program counter control interface */
	ADDR getPC();
	void setPC(ADDR pc);

	/* Register interface */	
	void resetRegs();
	DWORD getReg(string& name);
	void setReg(string& name, DWORD data);

	
	/* Debugging interface */
	void setBreak(ADDR addr, BREAK_TYPES type);
	void clearBreak();		/* Clear all breaks */
	void clearBreak(ADDR addr, BREAK_TYPES type);
	void clearBreak(int brknum);

	/* Memory interface */
	void resetMem();		/* Delete all existing pages */
	BYTE readByte(ADDR addr);
	HWORD readHWord(ADDR addr);
	WORD readWord(ADDR addr);
	void writeByte(ADDR addr, BYTE data);
	void writeHWord(ADDR addr, HWORD data);
	void writeWord(ADDR addr, WORD data);

	/* Thread control interface */
	void setThread(int threadid);
	int getThread();

	/* Output interface */
	int show(const char *format, ...);
	INT cmdLcdSwitch(BOOL on) ;
	INT cmdSetLcdWidth(INT width);
	INT cmdSetLcdHeight(INT height);
};

typedef Singleton<SL1SoCShell> MainShell;

#endif /* SL1_SOCSHELL_H_ */
