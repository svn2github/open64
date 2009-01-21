/*
 *  File: simdefs.h
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
#ifndef SIMDEFS_H_
#define SIMDEFS_H_

#include "defs.h"

#if _SIMULATE_LCD || _SIMULATE_INTERRUPT
#define _MULTI_THREAD_BUILD 1
#endif

#if _MULTI_THREAD_BUILD
	#include <pthread.h>
	
	#define _MEM_LOCK 1
	#define _STATUS_LOCK 1
	#define _INTERRUPT_LOCK 1
	#define _SERIAL_FIFO_LOCK 1

	#if _SERIAL_FIFO_LOCK 
		#define LOCK_FIFO pthread_mutex_lock(&mutex_fifo);
		#define UNLOCK_FIFO pthread_mutex_unlock(&mutex_fifo);
		extern pthread_mutex_t mutex_fifo;
	#else
		#define LOCK_FIFO
		#define UNLOCK_FIFO
	#endif
	
	#if _STATUS_LOCK 
		#define LOCK_STATUS pthread_mutex_lock(&mutex_status);
		#define UNLOCK_STATUS pthread_mutex_unlock(&mutex_status);
		extern pthread_mutex_t mutex_status;
	#else
		#define LOCK_STATUS
		#define UNLOCK_STATUS
	#endif
		
	#if _INTERRUPT_LOCK 
		#define LOCK_INTERRUPT pthread_mutex_lock(&mutex_interrupt);
		#define UNLOCK_INTERRUPT pthread_mutex_unlock(&mutex_interrupt);
		extern pthread_mutex_t mutex_interrupt;
	#else
		#define LOCK_INTERRUPT
		#define UNLOCK_INTERRUPT
	#endif
	
	#if _MEM_LOCK 
		#define LOCK_MEM pthread_mutex_lock(&mutex_memory);
		#define UNLOCK_MEM pthread_mutex_unlock(&mutex_memory);
		extern pthread_mutex_t mutex_memory;
	#else
		#define LOCK_MEM
		#define UNLOCK_MEM
	#endif
#else
	#define LOCK_MEM
	#define UNLOCK_MEM
	#define LOCK_STATUS
	#define UNLOCK_STATUS
	#define LOCK_INTERRUPT
	#define UNLOCK_INTERRUPT		
	#define LOCK_FIFO
	#define UNLOCK_FIFO
#endif

#ifndef _PROFILER_BUILD
#define _PROFILER_BUILD 1
#endif

//exception
#define MAX_MESSAGE_LENGTH 128
#define MAX_EXCEPTION_PREFIX 32 

//page tag
#define ET_NORMAL 0x0
#define ET_PROTECTED 0x1
#define ET_READONLY 0x2
#define ET_RB 0x4
#define ET_WB 0x8
//page tag for mem thread access
#define ET_CORE 0x01
#define ET_BB 0x20
#define ET_BREAK (ET_RB|ET_WB)
#define ET_INSTR 0x10
#define ET_BREAK_DISABLE 0x20
#define ET_INSTR_SKIP 0x40
#define ET_HANDLE 0x80
#define ET_ERR 0xFF

//ProcessStatus enum
#define ESTATUS_ERR 0xffffffff
#define ESTATUS_NORMAL 0
#define ESTATUS_END 0x1
#define ESTATUS_MEM_RBREAK 0x2
#define ESTATUS_MEM_WBREAK 0x4
#define ESTATUS_INSTR_BREAK 0x8
#define ESTATUS_EXIT_0 0x10
#define ESTATUS_EXIT_1 0x20
#define ESTATUS_ALREADY_END 0x40
#define ESTATUS_USER_END 0x80
#define ESTATUS_ALL_END (ESTATUS_END|ESTATUS_EXIT_0|ESTATUS_EXIT_1|ESTATUS_ALREADY_END)

//ProcessStatus event
#define EVENT_ERR 0xffffffff
#define EVENT_NONE 0
#define EVENT_CTRL_C 0x1
#define EVENT_END_THREAD 0x2
#define EVENT_SWITCH_THREAD 0x4
#define EVENT_SWITCH_AND_END_THREAD 0x8
#define EVENT_INTERRUPT 0x10
#define EVENT_ERETURN 0x20

#define EVENT_ILLEGAL_INS 0x40
#define EVENT_INVALID_ADDR 0x80
#define EVENT_BREAK 0x100
#define EVENT_SYSCALL 0x200

#define EVENT_START_THREAD 0x400

#define EVENT_SUSPENSE_SYS 0x800
#define EVENT_RESUME_SYS 0x1000

#define EVENT_SYSTEM_BLACK_DOOR ( EVENT_SUSPENSE_SYS | EVENT_RESUME_SYS)
#define EVENT_EXCEPTION (EVENT_ILLEGAL_INS|EVENT_INVALID_ADDR|EVENT_BREAK|EVENT_SYSCALL)

//vrt
#define CALL_RETURN_REG_INDEX   2	// used for checking program exit code
#define CALL_ARG_START_INDEX	4
#define CALL_MAX_ARG_IN_REG		4
#define UCLIBC_SYSCALL_REG 		2

//breakpoint
#define BREAKPOINT_DISABLED 0
#define BREAKPOINT_ENABLED 1

//profiler
#define C3_PAIR_REG	1
#define MAX_LOG_FILE_NAME_SIZE 32

//sym
#define SYM_UNDEF 0xffffffff

enum SYM_TYPE { 
	SYM_ABS = 0, // symbols declared in command mode have this type
	SYM_FUNC = 1, 
	SYM_SDATA = 2, 
	SYM_DATA = 3, 
	SYM_SBSS = 4, 
	SYM_BSS = 5, 
	SYM_SECTION = 6, 
	SYM_ILLEGAL = 7,
	SYM_USER = 8  
};

enum EPACK_TYPE { //Peripherals ack type
	EPACK_NONE = 0,
	EPACK_RETE = 1,
	EPACK_UNDEF = -1,
};

const STRING pcName = "pc";

#endif /*SIMDEFS_H_*/
