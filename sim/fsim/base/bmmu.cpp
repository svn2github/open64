/*
 *  File: bmmu.cpp
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
#include "bmmu.h"

BaseMMU::BaseMMU(Address& addr) : _address(addr) {
	
}

void BaseMMU::init(void){
	
}

void BaseMMU::initFile(FILE* fp, const ADDR start) { 
	WORD data;
	ADDR addr = start;
	AppFatal((fp!=NULL), ("MMU: initFile with a NULL file pointer."));
	AppFatal(((start&WORD_ALIGN_MASK)==0), ("MMU error: unaligned word address %x.\n", start));
	char str[128];
	INT i = 0;
	BYTE inByte;
	BOOL isBin = FALSE;
	while(fread(&inByte, sizeof(BYTE), 1, fp)>0&&i<200) {
		if(inByte==0) {
			isBin = TRUE;
			break;
		}
		i++;
	}
	if(isBin==FALSE) {
		UINT len = 0;
		char tmp[512];
		i = 0;
		rewind(fp);
		while(fscanf(fp, "%s%[^\n]", str, tmp)!=EOF&&i<50) {
			if(len!=0&&len!=strlen(str)) {
				isBin = TRUE;
				break;
			}
			else {
				len = strlen(str);
			}
			i++;
		}	
	}
	rewind(fp);
	if(isBin==FALSE) {
		while(fscanf(fp, "%x%[^\n]", &data, str)!=EOF) {
			setWord(addr, data);
			addr+=INT32_BYTE;
		}
	}
	else {
		while(fread(&inByte, sizeof(BYTE), 1, fp)>0) {
			setByte(addr, inByte);
			addr+=INT8_BYTE;
		}		
	}
}

void BaseMMU::dumpFile(FILE* fp, const ADDR start, INT size) { 
	ADDR addr = start;
	AppFatal((fp!=NULL), ("MMU: dumpFile with a NULL file pointer."));
	AppFatal(((start&WORD_ALIGN_MASK)==0), ("MMU error: unaligned word address %x.\n", start));
	char tmp_str[1];
	while(size>0) {
		///*** Just work for test use current, should be deleted
		///*** Here size is BYTE
		tmp_str[0] = getByte(addr);
		fwrite(tmp_str, 1, 1, fp);
		addr+=INT8_BYTE;
		size--;		
	}
}


INT BaseMMU::getStrlen(const ADDR addr) { 
	ADDR a = addr;
	INT len = 0;
	while(getByte(a)!='\0') {
		len++;
		a++;
	}	
	return len; 
}

STRING BaseMMU::getString(const ADDR addr) {
	INT len = getStrlen(addr);
	STRING buf = new char[len+1];
	readBlock(addr, (BYTE*) buf, len);
	buf[len]=0;
	return buf; 
}

void BaseMMU::setString(const ADDR addr, const STRING str) { 
	INT len = strlen(str);
	writeBlock(addr, (BYTE*) str, len);	
}

	
void BaseMMU::readBlock(const ADDR start_addr, BYTE* block, int size) {
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {	
		*block = getByte(addr);
		addr++;
		block++;
	}
}

	
void BaseMMU::writeBlock(const ADDR start_addr, const BYTE* block, int size) {
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {	
		setByte(addr, *block);
		addr++;
		block++;
	}
}

	
void BaseMMU::initBlock(const ADDR start_addr, BYTE value, int size) {
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {	
		setByte(addr, value);
		addr++;
	}
}


	
BOOL BaseMMU::setBreak(const ADDR addr, UINT tag) {
	memory()->setBreak(addr, tag);
	return TRUE;
}

	
BOOL BaseMMU::clearBreak(const ADDR addr, UINT tag) {
	memory()->clearBreak(addr, tag);
	return TRUE;
}

	
BOOL BaseMMU::initMem(void) {
	memory()->init();
	return TRUE;
}

BOOL BaseMMU::clearMem(void) {
	memory()->clear();
	return TRUE;
}

