/*
 *  File: btree.h
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
#ifndef BTREE_H_
#define BTREE_H_

#include "defs.h"

template <class StoreItem, class Comparable> 
class BinTreeItem {
	protected:
	StoreItem* _object;
	Comparable _start;
	Comparable _end;
	BinTreeItem<StoreItem, Comparable>* _right;
	BinTreeItem<StoreItem, Comparable>* _left;
	
	public:
	StoreItem* object(void) { return _object;}
	Comparable start(void) { return _start;}
	Comparable end(void) { return _end;}
	BinTreeItem<StoreItem, Comparable>* right(void) { return _right;}
	BinTreeItem<StoreItem, Comparable>* left(void) { return _left;}
	void object(StoreItem* o) { _object = o;}
	void start(Comparable s) { _start = s;}
	void end(Comparable e) { _end = e;}
	void right(BinTreeItem<StoreItem, Comparable>* r) { _right = r;}
	void left(BinTreeItem<StoreItem, Comparable>* l) { _left = l;}	
	BOOL isLeafNode(void) { return (_right==NULL&&_left==NULL); }
};

template <class StoreItem, class Comparable> 
class BinaryTree {
			
	protected:
	BinTreeItem<StoreItem, Comparable>* _root;
	
	protected:
	BinTreeItem<StoreItem, Comparable>* _newNode(StoreItem* object, Comparable start, Comparable end);
	void _removeAllNode(BinTreeItem<StoreItem, Comparable>* node);
	void _addNode(BinTreeItem<StoreItem, Comparable>* node, StoreItem* object, Comparable start, Comparable end);
	
	public:
	BinaryTree(void);
	StoreItem* searchFirstItem(Comparable com);
	BinTreeItem<StoreItem, Comparable>* rootItem(void) { return _root; }
	BinTreeItem<StoreItem, Comparable>* searchNode(Comparable com, BinTreeItem<StoreItem, Comparable>* startNode);
	void addNode(StoreItem* object, Comparable start, Comparable end);
	void insertNode(StoreItem* object, Comparable start, Comparable end);
	void removeNode(StoreItem* object, Comparable start, Comparable end);
	void clear(void);
};

template <class StoreItem, class Comparable> 
BinaryTree<StoreItem, Comparable>::BinaryTree() {
	_root = _newNode(NULL, 0, 0);
}

template <class StoreItem, class Comparable> 
BinTreeItem<StoreItem, Comparable>* BinaryTree<StoreItem, Comparable>::searchNode(Comparable com, BinTreeItem<StoreItem, Comparable>* startNode) {
	 BinTreeItem<StoreItem, Comparable>* node = startNode;
	 do {	
		if(com>=node->start()&&com<node->end()) {
			return node;
		}
		else {
			if(com<node->start()) {
				node = node->left();
			}
			else {
				node = node->right();
			}
		}
	} while(startNode->isLeafNode()!=TRUE);
	return NULL;		
}

template <class StoreItem, class Comparable> 
StoreItem* BinaryTree<StoreItem, Comparable>::searchFirstItem(Comparable com) {
	BinTreeItem<StoreItem, Comparable>* node = _root;
	while(node!=NULL) {	
		if(com>=node->start()&&com<node->end()) {
			return node->object();
		}
		else {
			if(com<node->start()) {
				node = node->left();
			}
			else {
				node = node->right();
			}
		}
	}
	return NULL;	
}

template <class StoreItem, class Comparable> 
BinTreeItem<StoreItem, Comparable>* 
BinaryTree<StoreItem, Comparable>::_newNode(StoreItem* object, Comparable start, Comparable end) {
	BinTreeItem<StoreItem, Comparable>* node = new BinTreeItem<StoreItem, Comparable>;
	if(start==end) end++;
	node->object(object);
	node->start(start);
	node->end(end);
	node->right(NULL);
	node->left(NULL);

	return node;
}

template <class StoreItem, class Comparable> 
void BinaryTree<StoreItem, Comparable>::_removeAllNode(BinTreeItem<StoreItem, Comparable>* node) {
	if(node->isLeafNode()==FALSE) {
		if(node->left()!=NULL) {
			_removeNode(node->left());
		}
		if(node->right()!=NULL) {
			_removeNode(node->right());
		}
	}
	delete node;
}

template <class StoreItem, class Comparable> 
void BinaryTree<StoreItem, Comparable>::clear() {
	BinTreeItem<StoreItem, Comparable>* node = _root;
	_removeAllNode(_root);
	_root = _newNode(NULL, 0, 0);
}

template <class StoreItem, class Comparable> 
void BinaryTree<StoreItem, Comparable>::addNode(StoreItem* object, Comparable start, Comparable end) {
	if(_root->object()!=NULL) {
		BinTreeItem<StoreItem, Comparable>* node = _root;
		if(search(start)==NULL) {
			BOOL done = FALSE;
			while(done==FALSE) {
				if(start<node->start()) {
					if(node->left()==NULL) {
						node->left() = _newNode(object, start, end);
						done = TRUE;
					}
					else {
						node = node->left();
					}
				}
				else {
					if(node->right()==NULL) {
						node->right() = _newNode(object, start, end);
						done = TRUE;
					}
					else {
						node = node->right();
					}
				}
			}
		}
		else {
			AppFatal((0), ("The address range has been registered"));
		}
	}
	else {
		_root->object(object);
		_root->start(start);
		_root->end(end);		
	}
}

#endif /*BTREE_H_*/
