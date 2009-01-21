/*
 *  File: sl1main.cpp
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


#include "defs.h"
#include "sl1shell.h"
#include "tclapi.h"
#include "longjmp.h"
#include "properties.h"
#include "btree.h"
#include "sl1defs.h"
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

int main(int argc, char *argv[]) {
	Properties::getInstance().enablePseudoSerial(false);
	for (int i=1; i<argc; i++) {
 		if(strncmp(argv[i], "-pts", 4) == 0) {
 			/*
 			 * Use pseudo terminal for uart simulation
 			 */
 			 Properties::getInstance().enablePseudoSerial(true);
 		}
	}

	SL1Shell *shell = new SL1Shell();
	
	tcl_shell_ptr = shell;
#ifdef NEED_LONG_JMP
	sim_shell_ptr = shell;
#endif	
	shell->mainRunTCL(argc, argv);
}
