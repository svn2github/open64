/*
 *  File: accesslist.h
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
 
#ifndef ACCESSLIST_H_
#define ACCESSLIST_H_

#include "simdefs.h"
#include "ifhandler.h"

extern const STRING range_idx_name[];

class InterfaceHandler;

struct LayoutItem {
	UINT type;
	ADDR start;
	ADDR end;
	InterfaceHandler* object;
	struct LayoutItem* next;
};

class AccessList {
private:
	struct LayoutItem* _list;
	
	struct LayoutItem* _newItem(UINT type, ADDR start, ADDR end, InterfaceHandler* object);
		
public:
	AccessList(void);
	void insert(UINT type, ADDR start, ADDR end, InterfaceHandler* object);
	void remove(InterfaceHandler* object);
	
	pair<UINT, InterfaceHandler*> search(ADDR addr);
	
	ADDR getAddr(ADDR addr, UINT type);
	UINT getType(ADDR addr);
	void printList(void);
};

#endif /*ACCESSLIST_H_*/
