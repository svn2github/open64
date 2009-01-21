/*
 *  File: accesslist.cpp
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
#include "accesslist.h"

AccessList::AccessList() {
	_list = NULL;
}

struct LayoutItem* AccessList::_newItem(UINT type, ADDR start, ADDR end, InterfaceHandler* object) {
	struct LayoutItem* item = new struct LayoutItem;
	item->type = type;
	item->start = start;
	item->end = end;
	item->object = object;
	item->next = NULL;
	return item;
}

void AccessList::insert(UINT type, ADDR start, ADDR end, InterfaceHandler* object) {
	struct LayoutItem* node = _list;
	struct LayoutItem* item = _newItem(type, start, end, object);
	if(node==NULL) {
		_list = item;
	}
	else{
		if(start<node->start) {
			SimFatal((end<node->start), ("AccessList: Address overlapped (end=%x, nextNode start=%x).", end, node->start));
			 item->next = node;
			_list = item;
			return;
		}
		else {
			struct LayoutItem* preNode = node;
			while(node!=NULL) {
				if(start<node->start) {
					SimFatal((preNode==node||start>preNode->end), ("AccessList: Address overlapped (start=%x, preNode end=%x).", start, preNode->end)); 
					SimFatal((end<node->start), ("AccessList: Address overlapped (end=%x, nextNode start=%x).", end, node->start)); 
					item->next = node;
					preNode->next = item;
					return;
				}
				preNode = node;
				node = node->next;
			}
			preNode->next = item;			
		}
	}
}

void AccessList::remove(InterfaceHandler* object) {
	struct LayoutItem* node = _list;
	struct LayoutItem* preNode = node;
	while(node!=NULL) {
		if(object==node->object) {
			preNode->next = node->next;
			delete node;
			return;
		}
		preNode = node;
		node = node->next;
	}	
}

/*
	Determine the type for specified address.
*/
UINT AccessList::getType(ADDR addr) {
	struct LayoutItem* node = _list;
	while(node!=NULL) {
		if(addr>=node->start&&addr<node->end) {
			return node->type;
		}
		node = node->next;
	}
	return 0;	
}

/*
	Get real address for one type of section: from offset in one section to real address.
*/
ADDR AccessList::getAddr(ADDR addr, UINT type) {
	struct LayoutItem* node = _list;
	while(node!=NULL) {
		if(type==node->type) {
			ADDR realAddr = node->start + addr;
//			SimFatal((realAddr<=node->end), ("AccessList: Address out of range (end=%x, realAddr=%x).", node->end, realAddr));
			return realAddr;
		}
		node = node->next;
	}
	SimFatal((0), ("AccessList: Address type not register (type=%d (%s)).", type, range_idx_name[type]));
	return 0;	
}

/*
	Return type and interface for specified address.
*/
pair<UINT, InterfaceHandler*> AccessList::search(ADDR addr) {
	struct LayoutItem* node = _list;
	pair<UINT, InterfaceHandler*> ret(0, NULL);
	while(node!=NULL) {
		if(addr>=node->start&&addr<node->end) {
			ret.first = node->type;
			ret.second = node->object;
			return ret;
		}
		node = node->next;
	}
	return ret;	
}

void AccessList::printList() {
	struct LayoutItem* node = _list;
	INT i = 0;
	while(node!=NULL) {
		fprintf(stdout, "%d: %s %08x-%08x, %x\n"
					, i
					, range_idx_name[node->type] /* This array should be redefine for each target */
					, node->start
					, node->end
					, node->object);
		i++;
		node = node->next;
	}

}

