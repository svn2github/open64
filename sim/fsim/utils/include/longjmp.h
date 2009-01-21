/*
 *  File: longjmp.h
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
#ifndef LONGJMP_H_
#define LONGJMP_H_

// Uncomment below line if long jmp is needed or define it in Makefile
//#define NEED_LONG_JMP

#ifdef NEED_LONG_JMP
#include <setjmp.h>

class ShellBase;
extern ShellBase* sim_shell_ptr;

extern void setJmpBuf(jmp_buf *jmpbuf_);
extern void checkLongJmp(void);
extern jmp_buf *getJmpBuf(void);

class AutoClearJmpBuf
{
public:
	~AutoClearJmpBuf() { setJmpBuf( (jmp_buf *)NULL ); }
};

#define RETURN_TO_SHELL \
AutoClearJmpBuf clearJmpBuf;\
{ \
	setJmpBuf(getJmpBuf());  \
	if (setjmp(*getJmpBuf()) != 0) {  \
		printf("Application error happened. You're put back into fsim shell!!!\n"); \
		return TCL_OK;            \
	}                             \
}

#else

#define RETURN_TO_SHELL ;
#define checkLongJmp() NULL

#endif

#endif /*LONGJMP_H_*/
