/*
 *  File: shellbase.cpp
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

#include "shellbase.h"

STRING PrintCmd_Usage="Usage: print(p) [/f] EXP\n\
Print value of expression EXP. If option /f is given, print in that format.\n\
/f:Specify a format character: 'x', 'u', 'o', 'd', 't', 'a', 'c'.\n\
\t'x'\thexidecimal.\n\
\t'u'\tunsigned decimal.\n\
\t'd'\tsigned decimal.\n\
\t'o'\toctal.\n\
\t't'\tbinary.\n\
\t'a'\taddress.\n\
\t'c'\tchar constant.\n\
Default format is decimal.\n\
EXP:Can be any expression including convenience variables.\n\
If used without expression, the previous expression is evaluated.\n\
p $: Dump all registers in hexidecimal format.\n\
p psim-res: Dump all thread psim res(this must be used after performance sim off).\n\
";

STRING PrintMemCmd_Usage = "Usage: x/nfu ADDR [VALUE]\n\
       x ADDR [VALUE]\n\
       x\n\
Examine and set memory contents.\n\
\tn: repeat count. Default is 1.\n\
\tf: format. If not present, use previous 'x' or print command setting.\n\
\tu: unit size-b/h/w/g. If not present, use previous setting.\n\
Format can be: 'x','d','u','o','t','a','c','m','s','i'.\n\
\t'x'\thexidecimal.\n\
\t'u'\tunsigned decimal.\n\
\t'd'\tsigned decimal.\n\
\t'o'\toctal.\n\
\t't'\tbinary.\n\
\t'a'\taddress.\n\
\t'c'\tchar constant.\n\
\t'm'\tfor symbol.\n\
\t's'\tfor null-terminated strings.\n\
\t'i'\tfor instructions.\n\
Default is decimal.\n\
If value parameters is present, the memory address is set to the value specified.\n\
ADDR can be any expression that can be evaluated to an integer.\n\
VALUE can be any expression that be evaluated to an integer.\n\
";

STRING PrintPhysicalMemCmd_Usage = "Usage: xp/nfu ADDR [VALUE]\n\
       xp ADDR [VALUE]\n\
       xp\n\
Examine and set physical memory contents.\n\
\tn: repeat count. Default is 1.\n\
\tf: format. If not present, use previous 'x' or print command setting.\n\
\tu: unit size-b/h/w/g. If not present, use previous setting.\n\
Format can be: 'x','d','u','o','t','a','c','m','s','i'.\n\
\t'x'\thexidecimal.\n\
\t'u'\tunsigned decimal.\n\
\t'd'\tsigned decimal.\n\
\t'o'\toctal.\n\
\t't'\tbinary.\n\
\t'a'\taddress.\n\
\t'c'\tchar constant.\n\
\t'm'\tfor symbol.\n\
\t's'\tfor null-terminated strings.\n\
\t'i'\tfor instructions.\n\
Default is decimal.\n\
If value parameters is present, the memory address is set to the value specified.\n\
ADDR can be any expression that can be evaluated to an integer.\n\
VALUE can be any expression that be evaluated to an integer.\n\
";

STRING SetCmd_Usage = "\
This command extends tcl command 'set'. You can still use 'set' to set other tcl variables.\n\
For 'trace', 'result', 'reg', 'disasm' and 'call' subcommand, output will go to screen if no log file is specified.\n\
Usage:\tset regname [regvalue]: set register to specified value.\n\
\tset thread (core|bb): change active threads.\n\
\tset lcd (on|off): enable/disable lcd display.\n\
\tset postprocess (on|off): enable/disable postprocess module.\n\
\tset regchecker (on|off): enable/disable register checker.\n\
\tset logging (on|off|resume|suspend): enable/disable/resume/suspend all logging.\n\
\tset logging cbus (on [logfile] | off): enable/disable cbus logging.\n\
\tset logging instrcnt (on | off): enable/disable instruction counting.\n\
\tset logging result (on [logfile] | off): enable/disable register&memory write logging.\n\
\tset logging trace (on [logfile] | off): enable/disable trace logging.\n\
\tset logging reg (on [logfile] | off): enable/disable register logging.\n\
\tset logging disasm (on [logfile] | off): enable/disable disassembly logging.\n\
\tset logging call (on [logfile] | off): enable/disable call logging.\n\
\tset logging stack (on | off): enable/disable stack logging in the trace file.\n\
\tset logging redirect (on | off): enable/disable screen output. \n\
\tset logging task (on [task_id_sym] | off): enable/disable logging trace with task id when running Nucleus OS.\n\
\tset os_task_id_sym symbol: You must set this variable when logging trace with task id(var:TCD_Current_Thread).\n\
\t\tIf redirect is off,  output will go only to the log file.\n\
\t\tIf redirect is on, output will go to both the screen and the log file.\n\
\tset mt (0|1): set threading mode. 0: single thread mode; 1: multithreading mode. Default:0.\n\
\tset verboselevel : set verbose level. Default: 0.\n\
\tset sharehigh (num) :set share mem region high address for thread core and thread bb. Default:0x10000000.\n\
\tset sharelow (num) :set share mem region low address for thread core and thread bb. Default:0x0.\n\
\tset performance-sim (on|off): enable/disable performance simulator(for sl1 only).\n\
\tset dma counter 0: reset DMA traffic counter to 0.\n\
";

STRING WatchCmd_Usage = \
"Usage:\twatch expr\n\
\trwatch expr\n\
\tawatch expr\n\
Set watch point for expr. Fsim will break when expr is read or written.\n\
'expr' can be either a memory address or a register.\n\
";

STRING InfoCmd_Usage = \
"This command extends tcl command 'info'. You can still use it to get other information for tcl shell.\n\
Usage:\t\n\
Show breakpoints and watchpoints:\n\
\tinfo breakpoints\n\
\tinfo watchpoints\n\
Show active thread:\n\
\tinfo thread\n\
Show fsim variables:\n\
\tinfo fsimvars\n\
Show all register variables:\n\
\tinfo registers\n\
Show DMA traffic counter:\n\
\tinfo dma counter\n\
";

STRING ClearCmd_Usage = \
"Usage:\tclear [address]\n\
Clear all breakpoints at specified address.\n\
With no argument, clears all breakpoints at the instruction to be executed next.\n\
Please see 'delete' for deleting breakpoints by breakpoint number.\n\
";

STRING DeleteCmd_Usage = \
"Usage:\tdelete [breakpoint [breakpoint...]]\n\
Delete breakpoints by number.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To delete all breakpoints, give no argument.\n\
Please see 'clear' for deleting breakpoints by address.\n\
";

// This table is to help search for the closest command match
FsimCommandIndexItem FsimCmdIdxTbl[] = 
{
{0,	"help", 	NULL, "help: Print this information"},
{0, "awatch",   NULL, "awatch expr: Set read/write watch point for expr.", WatchCmd_Usage},
{0, "b",        "break", "break(b) address: break execution at specified address."}, 
{0, "bt",        NULL, "bt: list all previous function calls from the current address."}, 
{0, "cl",       "clear", "clear(cl) [address]: clear all breakpoints at specified address.", ClearCmd_Usage}, 
{0, "clreg",    NULL, "clreg : clear all registers except pc."}, 
{0, "continue", "c", "continue(c) [ignore-count]: Continue execution from current address and ignore breakpoints."}, 
{0,	"dis",		NULL, "dis [range_in_word] [start_address] : Disassemble the given memory range."},
{0, "disable",  NULL, "disable [breakpoint [breakpoint]]: Disable specified breakpoints or all breakpoints without arguments."},
{0,	"delete",	"d", "delete(d) [breakpoint [breakpoint...]] : Delete breakpoints by number or all breakpoints without arguments.", DeleteCmd_Usage},
{0, "dumpfunc",  NULL, "dumpfunc filename: dump information of function symbol in elf file to a file."},
{0, "dumpmem",  NULL, "dumpmem addr bytes filename: Dump memory contents to a file."},
{0, "dumpreg",  NULL, "dumpreg [all|core|bb|h264] filename: Dump registers to a file."},
{0, "enable",   NULL, "enable [breakpoint [breakpoint]]: Enable specified breakpoints or all breakpoints without arguments."},
{0, "exit",     NULL, "quit | exit | q: exit shell."},
{0, "info",     NULL, "info: show program information such as registers, system variables, breakpoints or watchpoints, dma counter.", InfoCmd_Usage},
{0, "initmem",  NULL, "initmem addr filename: Initialize memory from a file."},
{0, "initreg",  NULL, "initreg [all|core|bb|h264] filename: Init registers from a file."},
{0, "initsram", NULL, "initsram addr filename: Initialize sram from a file."},
{0,	"load", 	NULL, "load <program-file>: load a program binary to memory"},
{0, "ni",       "nexti", "nexti(ni) [#instructions]: Execute and disassemble #steps. Treat function call as one instruction."},
{0, "p",        "print", "print(p) [/f] <address|register|symbol> : Print word value specified.", PrintCmd_Usage},
{0, "pr",       NULL, "pr <range_in_byte> <start_address>: Print value of memory range."},
{0, "prun",     NULL, "prun: Start execution of both threads in parallel."},
{0, "r",        "run", "run(r) : Execute from starting address."},
{0, "rerun",    "rr", "rerun(rr) : Restart execution from starting address."},
{0, "rt",       "runtrace", "runtrace(rt) tracefile [on | off(default)]: Execute trace instructions, enable[on] or disable[off] register&memory write checking."},
{0, "rwatch",   NULL, "rwatch expr: Set read watch point for expr.", WatchCmd_Usage},
{0, "s",        "step", "step(s) [#instructions|step] [start_address] : Execute #steps starting at address specified."},
{0, "sd",       NULL, "stepdis(sd) [#instructions|step] [start_address] : Execute and disassemble #steps."},
{0, "set",      NULL, "set: Set registers, enable LCD, change active threads, set logging control and other variables, reset dma counter .", SetCmd_Usage},
{0, "si",       "stepi", "stepi(si) [#instructions]: Execute and disassemble #steps."},
{0,	"smw", 		"setmemword", "setmemword(smw) <address|indirect> <value> [bytes]: Set word value specified"},
{0,	"smb", 		"setmembyte", "setmembyte(smb) <address|indirect> <value> [bytes]: Set byte value specified"},
{0, "watch",    NULL, "watch expr: Set write watch point for expr.", WatchCmd_Usage},
{0, "x",        NULL, "x [/nfu] [addr [value]]: Examine and set logical memory contents.", PrintMemCmd_Usage},
{0, "xp",       NULL, "xp [/nfu] [addr [value]]: Examine and set physical memory contents.", PrintPhysicalMemCmd_Usage},
{0, NULL}
};
