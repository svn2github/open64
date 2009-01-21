/*
 *  File: symtable.cpp
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
#include "symtable.h"
#include "elf_reader.h"
#include <sys/file.h>
#include <sys/stat.h>
#include <unistd.h>

BOOL SymTable::nameToIgnore(STRING s)
{
	STRING gcc_compiled = "gcc2_compiled";
	if (strncmp(s, gcc_compiled, 13) == 0) {
		return TRUE;
	}
	return FALSE;
}

BOOL SymTable::checkIgnoreFocusName(STRING name,STRING buf)
{
	INT i;
	char buf1[100];
	UINT len;	
	for(i=0;i<strlen(buf);)
	{
		sscanf(buf+i,"%s\n",&buf1);
		i+=strlen(buf1)+strlen("\n");
		if(strcmp(buf1,name)==0)
		{
			return true;
		}			
	}
	return false;
}


void SymTable::setIgnoreFocusAddr(STRING name)
{
	NameMapIter itername;
	Sym* s;
	INT fd;
	_IFAddrNum=0;
	_Imap.clear();
	fd=open(name,O_RDWR);
	if(fd==-1)
	{
		_IFFuncbuf=NULL;
	}
	else
	{
		struct stat stat;
		fstat(fd,&stat);
		_IFFuncbuf=new char[stat.st_size];
		read(fd,_IFFuncbuf,stat.st_size);
		close(fd);	
	}
	if(_IFFuncbuf!=NULL)
	{
		for(itername=_nmap.begin();itername!=_nmap.end();itername++)
		{
			s = itername->second;
		    {
		    	INT j=0;
		    	UINT size;
		    	IFMapIter iter;
				if(checkIgnoreFocusName(s->name(),_IFFuncbuf)==true)
				{
				
					if((s->size()%16)!=0)
				   		size = ((s->size()>>4)+1)*16;
					else
				   		size = s->size();  
					for(iter=_Imap.begin();iter!=_Imap.end();iter++)
					{
						if((s->value()+size)==iter->first)
						{
							_Imap[s->value()] = iter->second;
							_Imap.erase(iter);
							j=1;
							break;
						}
					}
				
					for(iter=_Imap.begin();iter!=_Imap.end();iter++)
					{
						if(s->value()==iter->second)
						{	
							iter->second += size;
							j=1;
							if(_Imap.find(s->value())!=_Imap.end())
							{
								iter->second = _Imap.find(s->value())->second;
								_Imap.erase(s->value());
							}
							break;
						}
					}
					if(j==0)
					{
				   		_Imap[s->value()]=s->value()+size; 
					}			
				}
		    }			
		}
	}
  	if(_IFFuncbuf!=NULL)
  	{
  		IFMapIter iter;
  		_IFAddrNum=_Imap.size();
  		_IFAddrBegin=new ADDR[_IFAddrNum];
  		_IFAddrEnd=new ADDR[_IFAddrNum];
  		INT k=0;
  		for(iter=_Imap.begin();iter!=_Imap.end();iter++)
  		{
  	   		_IFAddrBegin[k]=iter->first;
  	   		_IFAddrEnd[k]=iter->second;
  	   		k++;
  		}
  		delete _IFFuncbuf;
  	}
}

void SymTable::initTable(ELF_object* obj) {
	SYM_TYPE ty;
	clearTable();
	for (INT i=0; i < obj->Table()->Size(); i++) {
    	ElfSymbol* sym = obj->Table()->Entry(i);
    	// special symbols are really section names and 
    	// 1st entry in elf symtab (name is null)
	    STRING p = sym->symNameIsSpecial(obj->Table());
    	if (sym->symNameIsSpecial()==FALSE && nameToIgnore(sym->symName())==FALSE) {
		    Sym* s = new Sym;
	    	if (p) {
	      		s->type(SYM_SECTION);
	      		s->name(p);
	    	}
	    	else {
	      		if (sym->st_is_code()) {
					ty = SYM_FUNC;
			    }
	      		else if (sym->st_is_data()) {
				// we can further refined this to be small etc
					ty = SYM_DATA;
	      		}
			    else if (sym->st_is_bss()) {
				// we can further refined this to be small etc
					ty = SYM_BSS;
		        }
	      		else {
					ty = SYM_ABS; // any other symbols are considered absolute
			    }
			    s->type(ty);
				s->name(sym->symName()); // string still pionts into the elf_reader memory
	   		}
	
			SimFatal((s->name()), ("symbol name is null"));
		    s->value(sym->st_value());
	    	s->size(sym->st_size());
		    addSym(s, sym->st_info());		    
    	}
  	}
}

void SymTable::addSym(Sym* sym, unsigned elf_symbol_info) {
	STRING name = sym->name();

    _table.push_back(sym);
    //set up map by name
    _nmap[name] = sym; 
    // set up map by value

    if(sym->type()==SYM_FUNC) {
		if (_funcmap.find(sym->value())!=_funcmap.end() && sym->value()!=0) {
			ValueMapIter iter = _funcmap.find(sym->value());
			
			if (ELF32_ST_BIND(elf_symbol_info) == STB_WEAK) {		
//				vmsg(VERBOSE_0, "Warning:SymTable: duplicated function symbol (%s) is of type WEAK\n", name);
				return;
			} else if (ELF32_ST_BIND(elf_symbol_info) == STB_GLOBAL) {
//				printf("\tOverwrite:%s by %s\n", iter->second->name(), name);
			} else {
				vmsg(VERBOSE_0, "Warning:SymTable: duplicated function symbol (%s) is of non GLOBAL type\n", name);
				printf("\tPrevious symbol:\t");
				iter->second->dump(stdout);
				return;
			}
		}
    	_funcmap[sym->value()] = sym;
    }
}

Sym* SymTable::getSym(STRING name) {
	NameMapIter p = _nmap.find(name);
	NameMapIter enditer = _nmap.end();
	if (p == enditer) {
		return NULL;
	}
	return p->second;
}

ADDR SymTable::getValue(const STRING name) {
	Sym* s = getSym(name);
	return (s?s->value():SYM_UNDEF);
}

Sym* SymTable::getSym(ADDR val) {
	SymEntryIter p = _table.begin();
	SymEntryIter enditer = _table.end();
	while (p != enditer) {
		if((*p)->value()==val){
			return *p;
		}
    	p++;
	}
	return NULL;		
}

STRING SymTable::getName(ADDR val) {
	Sym* s = getSym(val);
	return (s?s->name():NULL);		
}

Sym* SymTable::getSym(ADDR val, SYM_TYPE type) {
	SymEntryIter p = _table.begin();
	SymEntryIter enditer = _table.end();
	while (p != enditer) {
		if(((*p)->value()==val)&&((*p)->type()==type)){
			return *p;
		}
    	p++;
	}
	return NULL;		
}

STRING SymTable::getName(ADDR val, SYM_TYPE type) {
	Sym* s = getSym(val, type);
	return (s?s->name():NULL);		
}

STRING SymTable::getFuncName(ADDR val) {
	Sym* s = getSym(val, SYM_FUNC);
	return (s?s->name():NULL);		
}

pair<STRING, INT> SymTable::getFuncOffset(ADDR val) {
	std::pair<STRING, INT> ret(NULL, 0);
	SymEntryIter p = _table.begin();
	SymEntryIter enditer = _table.end();
	while (p != enditer) {
		if((*p)->type()==SYM_FUNC) {
			ADDR start = (*p)->value();
			ADDR end = start + (*p)->size();	
			if(val>=start&&val<end){
				ret.first = (*p)->name();
				ret.second = val - start;
				return ret;
			}	
		}
		p++;		
	}
	return ret;
}

pair<STRING, ADDR> SymTable::getFuncStart(ADDR val) {
	std::pair<STRING, INT> ret(NULL, 0);
	SymEntryIter p = _table.begin();
	SymEntryIter enditer = _table.end();
	while (p != enditer) {
		if((*p)->type()==SYM_FUNC) {
			ADDR start = (*p)->value();
			ADDR end = start + (*p)->size();	
			if(val>=start&&val<end){
				ret.first = (*p)->name();
				ret.second = start;
				return ret;
			}	
		}
		p++;		
	}
	return ret;
}
