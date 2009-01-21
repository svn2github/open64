/*
 *  File: simconfig.h
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
#ifndef SIMCONFIG_H_
#define SIMCONFIG_H_

#include "defs.h"
#include "regdefs.h"

#include <string>

using namespace std;

class SimConfig
{
public:
enum {
	DARAM_CORE_BASE_ADDR = CORE_DARAM_BASE,
	DARAM_CORE_ADDR_SPACE = CORE_DARAM_SPACE,
	DARAM_DSP_BASE_ADDR = DSP_DARAM_BASE,
	DARAM_DSP_ADDR_SPACE = DSP_DARAM_SPACE,

	TIMER0_BASE_ADDR = REGS_OFFSET_TIMERS,
	TIMER1_BASE_ADDR = TIMER0_BASE_ADDR + 32,
	TIMER2_BASE_ADDR = TIMER0_BASE_ADDR + 64,
	TIMER3_BASE_ADDR = TIMER0_BASE_ADDR + 96,
	TIMER_ADDR_SPACE = 32,

	//UART1_BASE_ADDR = REGS_OFFSET_UART1,
	UART2_BASE_ADDR = REGS_OFFSET_UART2,
	UART3_BASE_ADDR = REGS_OFFSET_UART3,
	//UART1_ADDR_SPACE = REGS_SPACE_UART1,
	UART2_ADDR_SPACE = REGS_SPACE_UART2,
	UART3_ADDR_SPACE = REGS_SPACE_UART3,
	DMA_BASE_ADDR =  REGS_OFFSET_DMA,
	DMA_ADDR_SPACE = REGS_SPACE_DMA,
	PIC_CORE_BASE_ADDR = REGS_OFFSET_INTRC_T0,
	PIC_DSP_BASE_ADDR = REGS_OFFSET_INTRC_T1,
	PIC_CORE_ADDR_SPACE = REGS_SPACE_INTRC,
	PIC_DSP_ADDR_SPACE = REGS_SPACE_INTRC,

	GPIO0_BASE_ADDR = REGS_OFFSET_GPIO0,
	GPIO1_BASE_ADDR = REGS_OFFSET_GPIO1,
	GPIO2_BASE_ADDR = REGS_OFFSET_GPIO2,
	GPIO3_BASE_ADDR = REGS_OFFSET_GPIO3,
	GPIO4_BASE_ADDR = REGS_OFFSET_GPIO4,
	GPIO_ADDR_SPACE = REGS_SPACE_GPIO0,

	PIC_CORE_SAVE_PC = T0_REGS_CONTEXT_PC_OFFSET,
	PIC_CORE_SAVE_CNT0 = T0_REGS_CONTEXT_LOOP_CNT0_OFFSET,
	PIC_CORE_SAVE_CNT1 = T0_REGS_CONTEXT_LOOP_CNT1_OFFSET,
	PIC_CORE_SAVE_CNT2 = T0_REGS_CONTEXT_LOOP_CNT2_OFFSET,
	PIC_CORE_SAVE_CNT3 = T0_REGS_CONTEXT_LOOP_CNT3_OFFSET,
	PIC_CORE_SAVE_PC0 = T0_REGS_CONTEXT_LOOP_PC0_OFFSET,
	PIC_CORE_SAVE_PC1 = T0_REGS_CONTEXT_LOOP_PC1_OFFSET,
	PIC_CORE_SAVE_PC2 = T0_REGS_CONTEXT_LOOP_PC2_OFFSET,
	PIC_CORE_SAVE_PC3 = T0_REGS_CONTEXT_LOOP_PC3_OFFSET,
	PIC_CORE_SAVE_END0 = T0_REGS_CONTEXT_LOOP_END0_OFFSET,
	PIC_CORE_SAVE_END1 = T0_REGS_CONTEXT_LOOP_END1_OFFSET,
	PIC_CORE_SAVE_END2 = T0_REGS_CONTEXT_LOOP_END2_OFFSET,
	PIC_CORE_SAVE_END3 = T0_REGS_CONTEXT_LOOP_END3_OFFSET,
	PIC_CORE_SAVE_PC_BRK = T0_REGS_CONTEXT_BRK_PC_OFFSET,

	PIC_DSP_SAVE_PC = T1_REGS_CONTEXT_PC_OFFSET,
	PIC_DSP_SAVE_CNT0 = T1_REGS_CONTEXT_LOOP_CNT0_OFFSET,
	PIC_DSP_SAVE_CNT1 = T1_REGS_CONTEXT_LOOP_CNT1_OFFSET,
	PIC_DSP_SAVE_CNT2 = T1_REGS_CONTEXT_LOOP_CNT2_OFFSET,
	PIC_DSP_SAVE_CNT3 = T1_REGS_CONTEXT_LOOP_CNT3_OFFSET,
	PIC_DSP_SAVE_PC0 = T1_REGS_CONTEXT_LOOP_PC0_OFFSET,
	PIC_DSP_SAVE_PC1 = T1_REGS_CONTEXT_LOOP_PC1_OFFSET,
	PIC_DSP_SAVE_PC2 = T1_REGS_CONTEXT_LOOP_PC2_OFFSET,
	PIC_DSP_SAVE_PC3 = T1_REGS_CONTEXT_LOOP_PC3_OFFSET,
	PIC_DSP_SAVE_END0 = T1_REGS_CONTEXT_LOOP_END0_OFFSET,
	PIC_DSP_SAVE_END1 = T1_REGS_CONTEXT_LOOP_END1_OFFSET,
	PIC_DSP_SAVE_END2 = T1_REGS_CONTEXT_LOOP_END2_OFFSET,
	PIC_DSP_SAVE_END3 = T1_REGS_CONTEXT_LOOP_END3_OFFSET,
	PIC_DSP_SAVE_PC_BRK = T1_REGS_CONTEXT_BRK_PC_OFFSET,

	SYSCTRL_BASE_ADDR = REGS_OFFSET_SYSC,
	SYSCTRL_ADDR_SPACE = REGS_SPACE_SYSC,

	KEYPAD_BASE_ADDR = REGS_OFFSET_KEYP,
	KEYPAD_ADDR_SPACE = REGS_SPACE_KEYP,

	DARAM_BASE_ADDR = CORE_DARAM_BASE,
	BOOTROM_BASE_ADDR = CORE_BOOTROM_BASE,
	FLASH_BASE_ADDR = CORE_FLASH_BASE,
	DRAM_BASE_ADDR = CORE_DRAM_BASE,

	RTL8019_BASE_ADDR = 0x16000300,
	RTL8019_ADDR_SPACE = 0x100,
};

	enum CONFIG_STATUS
	{
		CONFIG_OK,
		CONFIG_HELP,
		CONFIG_VERSION,
		CONFIG_ERR_UNKNOWN,
		CONFIG_ERR_UART,
		CONFIG_ERR_EXENAME,
		CONFIG_ERR_GDB
	};
	struct MemConfig
	{
		size_t size;
		ADDR start;
	};

private:
	int _nuarts;
	int _ngpios;
	int _ntimers;
	int _netcard;
	string _exename;
	string _configname;
	string _trname;
	string _cmdfilename;
	string _cmdline;
	string _xcname;
	string _xbname;
	int _gdbport;
	bool _shell;
	MemConfig _sram;
	MemConfig _onchipregs;
	MemConfig _ram;
	MemConfig _rom;
	MemConfig _flash;

	void showRegAddr();
public:


	SimConfig();

	void showOptions();
	CONFIG_STATUS parseArgs(int argc, char *argv[]);

	/* read a config file specified */
	void readConfigFile(string& filename);

	/* memory config. */
	MemConfig* sram();
	MemConfig* onchipregs();
	MemConfig* ram();
	MemConfig* rom();

	/* Number of UART */
	int nuarts();
	void nuarts(int n);

        /* Number of timer */
	int ntimers();
	void ntimers(int n);

	/* Number of GPIO */
	int ngpios();
	void ngpios(int n);

	/* Whether to use netcard, 0 unuse, 1:use */
	bool netcard();
	void netcard(bool enable);	

	/* Executable file name */
	string exename();
	void exename(string name);

	/* Configuartion file name */
	string configname();
	void configname(string name);

	/* Trace file name */
	string tracename();
	void tracename(string name);
	
	string cmdfilename();
	void cmdfilename(string name);
	
	string cmdline();
	void cmdline(string name);
	
	string xcname();
	void xcname(string name);
	
	string xbname();
	void xbname(string name);
	
	/* gdb debugging */
	int gdbport();		/* return -1 if gdb debugging is disabled */
	void gdbport(int portn);

	/* prompt shell */
	bool shell();
	void shell(bool enable);
};

#endif /* SIMCONFIG_H_ */

