/*
 *  File: tclapi.h
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

#ifndef TCLAPI_H_
#define TCLAPI_H_

#include "tcl.h"
class ShellBase;

#define SHELL_ERROR TCL_ERROR
#define SHELL_OK TCL_OK

#define ADDR_NOT_SPECIFIED ((ADDR)0xffffffff)

extern ShellBase* tcl_shell_ptr;
enum {
	EXEC_SINGLE = 0,
	EXEC_PARALLEL = 1
};

int Tcl_AppInit(Tcl_Interp *interp);
void *Fsim_Daemon(void*);

//do command
int doHelp(ClientData clientData, Tcl_Interp *interp, int argc, Tcl_Obj *CONST objv[]);
int doLoad(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doClearBreakCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doDisassembly(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doNextiCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int DoDumpFuncCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doDumpCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doDumpRange(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doExitCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doRunCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doRunTraceCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doExecSteps(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doExecAndAsm(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doSetCommand(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doSetMemByte(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doSetMemWord(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doSetRegister(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doStepiCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doUse(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);
int doPrintMemCmd(ClientData clientData, Tcl_Interp *interp, int argc, const char* argv[]);	

// helper functions
int fsim_link_int(char *name, int *wordAddr, int mode=1); // mode=0:READ_ONLY; mode!=0:R/W
int fsim_link_dword(char *name, DWORD *dwordAddr);
int fsim_link_short(char *name, short *varAddr, int mode);
bool		fsim_is_reg_readonly(const char *name);

#endif /*SHELLTCL_H_*/
