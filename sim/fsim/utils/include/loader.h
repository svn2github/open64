/*
 * 	Copyright (c) 2006 Beijing SimpLight Nanoelectornics, Ltd.
 * 	All rights reserved.
 */

/*
	Copyright (C) 2005, 2006.  Free Software Foundation, Inc.

	This program is free software; you can redistribute it and/or modify it
	under the terms of version 2 of the GNU General Public License as
	published by the Free Software Foundation.

	This program is distributed in the hope that it would be useful, but
	WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

	Further, this software is distributed without any warranty that it is
	free of the rightful claim of any third person regarding infringement
	or the like.  Any license provided herein, whether implied or
	otherwise, applies only to this software file.  Patent licenses, if
	any, provided herein do not apply to combinations of this program with
	other software, or any other product whatsoever.

	You should have received a copy of the GNU General Public License along
	with this program; if not, write the Free Software Foundation, Inc., 59
	Temple Place - Suite 330, Boston MA 02111-1307, USA.
*/


#ifndef _LOADER_H_
#define _LOADER_H_

//#include "ELFIO/ELFIO.h"
#include <fcntl.h>
#include <unistd.h>
#include <elf.h>
#include "elf_reader.h"
#include "defs.h"

#define DISPLAY_ERR 1
#define _DEBUG_LOADER 0
#if _DEBUG_LOADER
#define DEBUG_LOADER printf
#else
#define DEBUG_LOADER(x,...) ((void)1)
#endif

template<class MMUClass>
class Loader {
	public:
	Loader();
	virtual ~Loader();
	ELF_object* createELFObj(STRING elfFile);
	INT loadELFObj(MMUClass& mmu, ELF_object *elfobj);
	
	private:
};

template<class MMUClass>
Loader<MMUClass>::Loader(){
}

template<class MMUClass>
Loader<MMUClass>::~Loader(){
}

/* Wrapper function for loading elf */
template<class MMUClass>
ELF_object* Loader<MMUClass>::createELFObj(STRING elfFile) {
	try{
		
		ELF_object* elfobj = new ELF_object(elfFile);
		return elfobj;
	} catch (STRING s) {
		throw s;
	}
}

template<class MMUClass>
INT Loader<MMUClass>::loadELFObj(MMUClass& mmu, ELF_object *elfobj) {
	try{
		INT32 i;
		
		// Write text segment to memory
		// write to virtual memory
		for (i=0; i<elfobj->progHdrs()->numExecSeg(); i++) {
			if (elfobj->textSegFSize(i) > 0) {
				mmu.writeBlock((ADDR)elfobj->textSegPAddr(i), (BYTE*)elfobj->textSegFAddr(i), 
				  (UINT)elfobj->textSegFSize(i));
				
				vmsg(VERBOSE_1, "Loading text segment %d: target addr=%#08x size=%#08x\n", 
					i, elfobj->textSegPAddr(i),	elfobj->textSegFSize(i));
			}
			if (elfobj->textSegMSize(i)-elfobj->textSegFSize(i) > 0) {
				mmu.initBlock((WORD)(elfobj->textSegVAddr(i) + elfobj->textSegFSize(i)),
			  		0, elfobj->textSegMSize(i) - elfobj->textSegFSize(i));
				vmsg(VERBOSE_1, "Clear bss in text segment: target addr=%#08x size=%#08x\n", 
					elfobj->textSegVAddr(i) + elfobj->textSegFSize(i), 
					elfobj->textSegMSize(i) - elfobj->textSegFSize(i));
			}
		}

		// Write rodata segment to memory
		// write to virtual memory
		for (i=0; i<elfobj->progHdrs()->numRSeg(); i++) {
			if ((UINT)elfobj->rodataSegFSize(i) > 0) {
				mmu.writeBlock((ADDR)elfobj->rodataSegPAddr(i), (BYTE*)elfobj->rodataSegFAddr(i), 
			  		(UINT)elfobj->rodataSegMSize(i));
				vmsg(VERBOSE_1, "Loading rodata segment %d: target addr=%#08x size=%#08x\n", 
					i, elfobj->rodataSegPAddr(i),	elfobj->rodataSegMSize(i));
			}
		}
		  
		for (i=0; i<elfobj->progHdrs()->numRWSeg(); i++) {
			// Write data segment to memory
			// write to virtual memory
			if ((UINT)elfobj->dataSegFSize(i) > 0) {
				mmu.writeBlock((ADDR)elfobj->dataSegPAddr(i), (BYTE*)elfobj->dataSegFAddr(i), 
			  		(UINT)elfobj->dataSegFSize(i));
				vmsg(VERBOSE_1, "Loading data segment %d: target addr=%#08x size=%#08x\n", 
					i, elfobj->dataSegPAddr(i),	elfobj->dataSegFSize(i));
			}
		
			// BSS section inside data segment
			// write to virtual memory
			if (elfobj->dataSegMSize(i)-elfobj->dataSegFSize(i) > 0) {
				mmu.initBlock((WORD)(elfobj->dataSegVAddr(i) + elfobj->dataSegFSize(i)),
			  		0, elfobj->dataSegMSize(i) - elfobj->dataSegFSize(i));
				vmsg(VERBOSE_1, "Clear bss in data segment: target addr=%#08x size=%#08x\n", 
					elfobj->dataSegVAddr(i) + elfobj->dataSegFSize(i), 
					elfobj->dataSegMSize(i) - elfobj->dataSegFSize(i));
			}
		}
		
		// Clear BSS in virtual memory
		for (i=0; i<elfobj->progHdrs()->numBssSeg(); i++) {
			if (elfobj->bssSegMSize(i) > 0) {
				mmu.initBlock((WORD)elfobj->bssSegVAddr(i), 0, elfobj->bssSegMSize(i));
				vmsg(VERBOSE_1, "Clear bss segment %d: target addr=%#08x size=%#08x\n", 
					i, elfobj->bssSegVAddr(i),	elfobj->bssSegMSize(i));
			}
		}
		  
		return 0;
	} catch (STRING s) {
		throw s;
	}
	return -1;
}

#endif //_LOADER_H_
