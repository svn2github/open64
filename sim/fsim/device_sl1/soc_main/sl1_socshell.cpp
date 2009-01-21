/*
 *  File: sl1_socshell.cpp
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
#include <stdlib.h>
#include <cstdio>

#include "sl1_socshell.h"


/* Backward compatible init fucntion
 * TODO: remove this some day later
 */
void SL1SoCShell::backward_init()
{
	_profiler = new Profiler<SL1Instr, SL1Machine> (_status, _machine, EIG_max);
	machine().profiler(_profiler);
	machine().eHandler(new SL1EventHandler(_mmu,&_machine));
	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		SL1Register* reg = new SL1Register(status(), i);
		SL1Exec* exec = new SL1Exec((SL1MMU&)mmu(), *reg, status());
		SL1Disasm* dis = new SL1Disasm((SL1MMU&)mmu(), *reg, i);
		machine().setThread(exec, dis, (SL1THREAD)i);
	}
	for(INT i = 1; i<MAX_THREAD; i++) {
		// other than main thread, all other thread is inactivated by deafult
		machine().pcEnableDefault(i, FALSE);
	}
	mmu().curthread(THREAD_ID_CORE);	
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF0_BEGIN, REGS_ADDR_CIRBUF0_END, 0);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF1_BEGIN, REGS_ADDR_CIRBUF1_END, 1);
	mmu().registerMemoryRange(RANGE_IDX_SRAM, CORE_DARAM_BASE, CORE_DARAM_SPACE, FALSE);

	mmu().curthread(THREAD_ID_BB);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF0_BEGIN, REGS_ADDR_CIRBUF0_END, 0);
	mmu().cBufAddrReg(REGS_ADDR_CIRBUF1_BEGIN, REGS_ADDR_CIRBUF1_END, 1);
	mmu().registerMemoryRange(RANGE_IDX_SRAM, DSP_DARAM_BASE, DSP_DARAM_SPACE, FALSE);

	machine().curthread(THREAD_ID_CORE);
	mmu().curthread(THREAD_ID_CORE);
}


void SL1SoCShell::init(int argc, char* argv[])
{
	backward_init();
	switch (config().parseArgs(argc, argv)) {
	case SimConfig::CONFIG_ERR_EXENAME:
		show("Invalid executable name\n");
	case SimConfig::CONFIG_HELP:
		showUsage();
		end();
		break;
	}
	if (!config().tracename().empty())
		cmdLogDisasm(TRUE, (char*)config().tracename().c_str());
	if (!config().cmdfilename().empty())
		strncpy(_batchCmdFile,config().cmdfilename().c_str(),config().cmdfilename().size());
	else if (!config().cmdline().empty())
	{
		_batchCmdLine += config().cmdline().c_str();
		_batchCmdLine += ";";
	}
	else if (!config().xcname().empty())
	{
		_batchCmdLine += "set thread core; load ";
		_batchCmdLine += config().xcname().c_str();
		_batchCmdLine += ";";
		_batchCmdLine += "run;";
	}
	
	else if (!config().xbname().empty())
	{
		_batchCmdLine += "set thread bb; load ";
		_batchCmdLine += config().xbname().c_str();
		_batchCmdLine += ";";
		_batchCmdLine += "run;";
	}	
	if (config().gdbport() > 0)
		_gdbServer = new GDBServer<SL1MMU, SL1Machine> (mmu(), machine());
	_system = new SL1System(config(), mmu());
	_postproc = new PostProc(_system,mmu().memory(), REGS_OFFSET_LCD);
	_lcd = _postproc->lcd();
	mmu().registerDevice(_postproc, REGS_OFFSET_LCD, REGS_SPACE_LCD);
	machine().system(_system);
}

/* Retrieve instance function */
inline SimConfig& SL1SoCShell::config()
{
	return _config;
}


inline void SL1SoCShell::showVersion()
{
	show("-------------------------------------------------------------------\n");
	show("SimpLight system simulator built at %s %s\n", __DATE__, __TIME__);
	show("Copyright(C) 2006--2009 Beijing SimpLight Nanoelectronics, Ltd.\n");
	show("-------------------------------------------------------------------\n");
}

inline void SL1SoCShell::showUsage()
{
	config().showOptions();
}

int SL1SoCShell::show(const char *format, ...)
{
	va_list arg;
	int done;
	va_start(arg, format);
	done = std::vprintf(format, arg);
	va_end (arg);
	return done;
}


void SL1SoCShell::end()
{
	exit(0);
}

void SL1SoCShell::run()
{
	char a[] = "soc";
	char **b = (char**)&a;
	_system->reset();
	if (config().shell()) {
		mainRunTCL(1, (char**)&b);
	} else if (config().gdbport() > 0) {
		_gdbServer->reset(SL_ABI_B32, COMM_MODE_TCP, config().gdbport());
		GDBServer<SL1MMU, SL1Machine>::startThread(_gdbServer);
	} else {
		loadElf(config().exename());
		cmdRunMultiElf(FALSE);
	}
}

void SL1SoCShell::step()
{
}

/* Elf related interface */
int SL1SoCShell::loadElf(string elf)
{
	return cmdLoadElf((char*)elf.c_str());
}

/* Register interface */	
void SL1SoCShell::resetRegs()
{
	// TODO: random data should put in the register file
	cmdClearRegs();
}

DWORD SL1SoCShell::getReg(string& name)
{
	return cmdGetReg((char*)name.c_str());
}

void SL1SoCShell::setReg(string& name, DWORD data)
{
	cmdSetReg((char*)name.c_str(), data);
}

/* Memory interface */
void SL1SoCShell::resetMem()
{
	// TODO: random data should put in the memory when it reset
	cmdClearMem();
}

BYTE SL1SoCShell::readByte(ADDR addr)
{
	return cmdReadDataByte(addr);
}

HWORD SL1SoCShell::readHWord(ADDR addr)
{
	return cmdReadDataHword(addr);
}

WORD SL1SoCShell::readWord(ADDR addr)
{
	return cmdReadDataWord(addr);
}

void SL1SoCShell::writeByte(ADDR addr, BYTE data)
{
	cmdWriteDataByte(addr, data);
}

void SL1SoCShell::writeHWord(ADDR addr, HWORD data)
{
	cmdWriteDataHword(addr, data);
}

void SL1SoCShell::writeWord(ADDR addr, WORD data)
{
	cmdWriteDataWord(addr, data);
}


/* Debugging interface */
void SL1SoCShell::setBreak(ADDR addr, BREAK_TYPES type)
{
	switch(type) {
	case BREAK_RD:
		cmdSetReadBreak(addr);
		break;
	case BREAK_WR:
		cmdSetWriteBreak(addr);
		break;
	case BREAK_RDWR:
		cmdSetReadBreak(addr);
		cmdSetWriteBreak(addr);
		break;
	case BREAK_INSTR:
		cmdSetInstrBreak(addr);
		break;
	}
}

void SL1SoCShell::clearBreak()
{
	cmdClearAllBreak();
}

void SL1SoCShell::clearBreak(ADDR addr, BREAK_TYPES type)
{
	switch(type) {
	case BREAK_RD:
		cmdClearReadBreak(addr);
		break;
	case BREAK_WR:
		cmdClearWriteBreak(addr);
		break;
	case BREAK_RDWR:
		cmdClearReadBreak(addr);
		cmdClearWriteBreak(addr);
		break;
	case BREAK_INSTR:
		cmdClearInstrBreak(addr);
		break;
	}
}

void SL1SoCShell::clearBreak(int brknum)
{
	cmdClearBreakByIndex(brknum);
}

INT SL1SoCShell::cmdLcdSwitch(BOOL on) {

        if(on==TRUE) {
                if(_postproc->turnOn()==FALSE) {
                        fprintf(out(), "LCD/PP error: LCD/PP is already turned on.\n");
                }
                return SHELL_OK;
        }
        else {
                if(_postproc->turnOff()==FALSE) {
                        fprintf(out(), "LCD/PP error: LCD/PP is already turned off.\n");
                }
                return SHELL_OK;
        }

}

INT SL1SoCShell::cmdSetLcdWidth(int width)
{
        _postproc->setLcdWidth(width);
        if(_postproc->stop()==FALSE)
        {
                _postproc->end();
                _postproc->reset();
        }
        return SHELL_OK;
}

INT SL1SoCShell::cmdSetLcdHeight(int height)
{
        _postproc->setLcdHeight(height);
        if(_postproc->stop()==FALSE)
        {
                _postproc->end();
                _postproc->reset();
        }
        return SHELL_OK;
}

