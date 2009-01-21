/*
 *  File: sl1address.h
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
#ifndef SL1ADDRESS_H_
#define SL1ADDRESS_H_

#include "sl1defs.h"
//define all memory access related define

//address range index
#define RANGE_IDX_MEMORY 0 //all undefined space = memory
#define RANGE_IDX_SRAM 1
#define RANGE_IDX_OCR 2
#define RANGE_IDX_FB 3
#define RANGE_IDX_ROM 4
#define RANGE_IDX_BUF 5
#define RANGE_IDX_FLASH 6
#define RANGE_IDX_MAX 7

//Memory related
#define MAX_CBUF (2)
#define SRAM_SIZE (64*1024)
#define DRAM_SIZE (64*1024*1024)
#define DRAM_CORE_START 0
#define DRAM_BB_START (DRAM_CORE_START+DRAM_SIZE)

#define SL1_CPU_REGS_SIZE		1024
#define SL1_CPU_BUF_SIZE		(2*1024)
#define SL1_CPU_DARAM_SIZE		(64*1024)
#define SL1_CPU_PERI_SIZE		(4*1024)
#define SL1_CPU_ROM_SIZE		(2*1024*1024)

#define SL1_BB_REGS_SIZE		1024
#define SL1_BB_BUF_SIZE			(2*1024)
#define SL1_BB_DARAM_SIZE		(64*1024)
#define SL1_BB_PERI_SIZE		(4*1024)

#define	SL1_BB_REGS_BASE		0x400
#define	SL1_BB_BUF_BASE			(SL1_BB_REGS_BASE + SL1_BB_REGS_SIZE)
#define	SL1_BB_DARAM_BASE		(SL1_BB_BUF_BASE + SL1_BB_BUF_SIZE)
#define	SL1_BB_PERI_BASE		(SL1_BB_DARAM_BASE + SL1_BB_DARAM_SIZE)
#define	SL1_BB_DRAM_BASE		(SL1_BB_PERI_BASE + SL1_BB_PERI_SIZE)

#define	SL1_CPU_REGS_BASE		0x400
#define	SL1_CPU_BUF_BASE		(SL1_CPU_REGS_BASE + SL1_CPU_REGS_SIZE)
#define	SL1_CPU_DARAM_BASE		(SL1_CPU_BUF_BASE + SL1_CPU_BUF_SIZE)
#define	SL1_CPU_PERI_BASE		(SL1_CPU_DARAM_BASE + SL1_CPU_DARAM_SIZE)
#define	SL1_CPU_ROM_BASE		(SL1_CPU_PERI_BASE + SL1_CPU_PERI_SIZE)
#define	SL1_CPU_DRAM_BASE		(SL1_CPU_ROM_BASE + SL1_CPU_ROM_SIZE)

#define	SL1_CPU_REGS_INTRC_BASE		SL1_CPU_REGS_BASE
#define	SL1_CPU_REGS_DMA_BASE		(SL1_CPU_REGS_BASE+128)
#define	SL1_CPU_REGS_SYSC_BASE		(SL1_CPU_REGS_BASE+256)

#endif /*SL1ADDRESS_H_*/
