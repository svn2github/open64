
//
// elf_reader64.cxx
// implementation of ELF object reader
// Author: Savio Tang
// The code is too messy to change to template style and 
// works for both 64 and 32 bits.
// I will simply take what I need for 64 bit and be done with it.
// it is just a testing dumper. No need to be perfect. - SC
//
//


//
// Constructor for ELF_object class
// 
// Open the elf file, mmaps it and then calls constructors
// for each of the following: ELFHdr,SecHdrs and
// ElfSymtab.  The file offset is passed to each of those constructors
// and they should set the address of each internal field correctly since
// the fields and sizes are defined in the ABI.
// 

#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#include "elf_reader64.h"

//
// Savio:
// temporarily stubs out the error reporting routines
// until I have time to fix them right
//
#if defined NO_MESSG /* temporarily disable err reporting module */
#define FmtAssert(A,B) ;
#define ErrMsg(A,B) ;
#define FatalMsg(A,B) ;
#endif /* if defined NO_MESSG */


/////////////////////////////////////////
//
// Implementation of the Elf_object class
// Elf object/executable file
//
/////////////////////////////////////////

ELF_object64::ELF_object64(char* elf_file) : _elfHeader(NULL),
										 _secHdrs(NULL),
										#if 0
 _symTable(NULL),
#endif
										 _progHdrs(NULL)
{
	size_t fd;  // file descriptor
//	FILE* out_stream = stdout;
	struct stat filestat;
	unsigned char* mmap_ptr;

	if(elf_file) {
#ifdef _SL1_VERSION_CHECK
    	if ( ((unsigned)-1 == (fd = open(elf_file, O_RDWR, 0664))) ||
#else
    	if ( ((unsigned)-1 == (fd = open(elf_file, O_RDONLY, 0664))) ||
#endif
	 									(-1 == fstat(fd,&filestat))) 
	 	{
	 		close(fd);
		    throw(STRING("Object file open error\n"));
    	}
  	}

  	if (MAP_FAILED == (mmap_ptr = (unsigned char*) mmap(0,
				      filestat.st_size,
#ifdef _SL1_VERSION_CHECK
                                      PROT_READ | PROT_WRITE,
#else
                                      PROT_READ,
#endif

				      MAP_SHARED,
				      fd,
				      0))) 
	  {
    	close(fd);
	    throw(STRING("Map error\n"));
	}

	// construct ELF header
	_elfHeader = new ELFHdr64((Elf64_Ehdr*)mmap_ptr);
	if(_elfHeader==NULL) 
	{
		close(fd);
		throw(STRING("Failure in construction of ELFHdr\n"));
	}

	if ((_elfHeader->e_machine() != EM_X86_64) && (_elfHeader->e_machine() != EM_IA_64))
	{
		close(fd);
		throw(STRING("Bad elf file"));
  		//FatalMsg(EM_Objfile, elf_file);
	  	//FmtAssert(0,("bad elf file"));
  	}
  	
 	if (_elfHeader->e_ident_EI_DATA() != ELFDATA2LSB )
 	{
 		close(fd);
 		throw(STRING("Incorrect endianness\n"));
 	}
 		  
	// construct Section headers
	_secHdrs = new SecHdrTable64(mmap_ptr,_elfHeader);
	
	if(_secHdrs==NULL)
	{
		close(fd);
		throw(STRING("Failure in construction of SecHdrTable\n"));
	}

	// construct Program Header Table only if it exist
	if (_elfHeader->e_phoff() != 0) {
	    _progHdrs = new ProgHdrTable64(mmap_ptr,_elfHeader);
	}

#if 0
 	// construct ElfSymbol Table
	_symTable = new ElfSymtab(mmap_ptr,_secHdrs);

	if(_symTable==NULL)
	{
		close(fd);
		throw(STRING("Failure in construction of ElfSymtab\n"));	
	}
#endif
	
	close(fd);
	//Everything is OK so I will put the file name   in  _elfFileName[ FILE_NAME_MAX ];
	strcpy( _elfFileName, elf_file );
}

#ifdef _SL1_VERSION_CHECK
void
ELF_object::setSymVersionNumber(void)
{
	if(_symTable == NULL)
	       throw(STRING("Illegal reference to ElfSymbol Table\n"));
	
	_symTable->setSymVersionNumber(_elfHeader->e_flags());
}
#endif

#if 0
Elf32_Off
ELF_object64::textSegPAddr (int i)
{
	return _progHdrs->textSegPAddr(i);
}

Elf64_Off ELF_object64::textSegVAddr(int i)
{
	return _progHdrs->textSegVAddr(i);
}

Elf64_Off ELF_object64::textSegFAddr(int i)
{
	return _progHdrs->textSegFAddr(i);
}

Elf64_Off
ELF_object64::dataSegPAddr (int i)
{
	return _progHdrs->dataSegPAddr(i);
}

Elf64_Off ELF_object64::dataSegVAddr(int i)
{
	return _progHdrs->dataSegVAddr(i);
}

Elf64_Off ELF_object64::dataSegFAddr(int i)
{
	return _progHdrs->dataSegFAddr(i);
}

Elf64_Off ELF_object64::rodataSegPAddr(int i)
{
	return _progHdrs->rodataSegPAddr(i);
}

Elf64_Off ELF_object64::rodataSegVAddr(int i)
{
	return _progHdrs->rodataSegVAddr(i);
}

Elf64_Off ELF_object64::rodataSegFAddr(int i)
{
	return _progHdrs->rodataSegFAddr(i);
}

Elf64_Off ELF_object64::bssSegVAddr(int i)
{
	return _progHdrs->bssSegVAddr(i);
}

Elf64_Off ELF_object64::bssSegFAddr(int i)
{
	if (_progHdrs)
		return _progHdrs->bssSegFAddr(i);
	else {
		SimFatal((0), ("Impossible: Invalid prog headers for bss segment\n"));
		return (unsigned)-1;
	}
}

Elf64_Word ELF_object64::textSegFSize(int i)
{
	if (_progHdrs)
		return _progHdrs->textSegFSize(i);
	else 
		return 0;
}

Elf64_Word ELF_object64::textSegMSize(int i)
{
	return _progHdrs->textSegMSize(i);
}

Elf64_Word ELF_object64::dataSegFSize(int i)
{
	if (_progHdrs)
		return _progHdrs->dataSegFSize(i);
	else
		return 0;
}

Elf64_Word ELF_object64::dataSegMSize(int i)
{
	if (_progHdrs)
		return _progHdrs->dataSegMSize(i);
	else
		return 0;
}

Elf64_Word ELF_object64::rodataSegFSize(int i)
{
	return _progHdrs->rodataSegFSize(i);
}

Elf64_Word ELF_object64::rodataSegMSize(int i)
{
	if(_progHdrs)
		return _progHdrs->rodataSegMSize(i);
	else
		return 0;
}

Elf64_Word ELF_object64::bssSegMSize(int i)
{
	if (_progHdrs)
		return _progHdrs->bssSegMSize(i);
	else
		return 0;
}

void ELF_object64::PrintEHdr(FILE* stream) 
{
	_elfHeader->Print(stream);
}

void ELF_object64::PrintSHdr(FILE* stream) 
{
	_secHdrs->Print(stream);
}

void ELF_object64::PrintPHdr(FILE* stream) 
{
	if(_progHdrs)
    	_progHdrs->Print(stream);
}

void ELF_object64::PrintSymtab(FILE* stream) 
{
	_symTable->Print(stream);
}

#endif

///////////////////////////////////////
//
// Implementation of the ProgHdr class
// Program Header
//
///////////////////////////////////////

ProgHdr64::ProgHdr64(unsigned char* address,ProgHdrTable64* pht) : 
  _startAddr((Elf64_Phdr*)address),_progHdrTable(pht) {} // ProgHdr::ProgHdr((Elf32_Phdr* address)

const unsigned char* ProgHdr64::decode_p_type(void)
{
	static const char* unknown= "*UNKNOWN*";

	static const char* ptypeLabels[] = {
	    "NULL",    // 0
	    "LOAD",    // 1
	    "DYNAMIC", // 2
	    "INTERP",  // 3
	    "NOTE",    // 4
	    "SHLIB",   // 5
	    "PHDR",    // 6
	    "*ILLEGAL*"
  	};

  	int pt = this->p_type();

	if(!(pt <= PT_PHDR||pt == PT_LOPROC||pt == PT_HIPROC))
	     throw(STRING("Illegal ST_TYPE value\n"));

	if (pt >= PT_NULL&&pt <= PT_PHDR) 
  	{
  		return (const unsigned char*)ptypeLabels[pt];
	} 
	else 
	{
	    return (const unsigned char*)unknown;
	}  
} // ProgHdr::decode_p_type(void)

const unsigned char* ProgHdr64::decode_p_flags(void)
{
	static const char* unknown= "*UNKNOWN*";

	static const char* pflagsLabels[] = {
	    "NONE",
	    "  E",    // 1
	    " W ",    // 2
	    " WE",    // 3
	    "R  ",    // 4
	    "R E",    // 5
	    "RW ",    // 6
	    "RWE",    // 7
	    "*ILLEGAL*"
  	};

	int pf = this->p_flags();

	if (pf > 0 && pf <= (PF_X|PF_W|PF_R)) 
	{
	    return (const unsigned char*)pflagsLabels[pf];
	} 
	else 
	{
	    return (const unsigned char*)unknown;
	}
} // ProgHdr::decode_p_flags(void)



ProgHdrTable64::ProgHdrTable64(unsigned char* address,ELFHdr64* eh)
  : _fileStartAddr(address),
    _progHdrs(NULL),
    _numEntries(eh->e_phnum()),
    _numExecSeg(0),
    _numBssSeg(0),
    _numRWSeg(0),
    _numRSeg(0),
    _ReginfoNdx(-1)
  
{

	if(!(_fileStartAddr == (unsigned char*)eh->_startAddr))
		throw(STRING("Illegal Section Header Table address\n"));

	_progHdrs = (ProgHdr64*)malloc((sizeof(ProgHdr64) * _numEntries));

	if(!(_progHdrs != NULL))
		throw(STRING("Failed to allocate memory for Program Headers\n"));

  	unsigned char* tmp_phdr_ptr = address + eh->e_phoff();

  	_execSegNdx.clear();
	_RWSegNdx.clear();
	_RSegNdx.clear();
	_BssSegNdx.clear();
  	for (int i=0; i < _numEntries; i++) {
	  _progHdrs[i] = ProgHdr64(tmp_phdr_ptr,this);
	  
	  if (_progHdrs[i].p_type() == PT_MIPS_REGINFO) {
	    _ReginfoNdx = i;
	  }
	  
	  if(!(&(_progHdrs[i]) != NULL))
	    throw(STRING("Failure in construction of ProgHdr\n"));
	  
	  tmp_phdr_ptr += sizeof(Elf32_Phdr);
	  
	  // see if this segment is loadable RW or Exec, keep accounting
	  if (_progHdrs[i].is_ldExec()) {
	    _execSegNdx.push_back(i);
	    _numExecSeg++;
	  }	
	  if (_progHdrs[i].is_ldReadWrite() && !(_progHdrs[i].is_ldExec())) {
	    // has read-write permissions
	    if (_progHdrs[i].p_filesz() == 0) {
	      _BssSegNdx.push_back(i);
	      ++_numBssSeg;
	    }
	    else {
	      _RWSegNdx.push_back(i);
	      ++_numRWSeg;
	    }
	  }
	  if (_progHdrs[i].is_ldReadOnly()) {
	    _RSegNdx.push_back(i);
	    ++_numRSeg;
	  }
  	} // for (int i=0; i < _numEntries; i++)
	
#if 0
  // Savio: for now assume we can handle only 1 segment of each type
 	if(!(_numRWSeg <= 1))
		throw(STRING("Unexpected number of loadable exec segments"));
#endif
} // ProgHdrTable::ProgHdrTable(unsigned char* address,ELFHdr* eh)

ProgHdr64* ProgHdrTable64::getPHdrByIndex(unsigned int phNum)
{

  	if(!(phNum < _numEntries))
		throw(STRING("Illegal Program Header number requested\n"));

  	return &_progHdrs[phNum];
} // ProgHdrTable::getPHdrByIndex(unsigned int phNum)


INT32 ProgHdrTable64::Reginfo_bias(void)
{
  if (_ReginfoNdx >= 0) {
    for (unsigned int i = 0; i < _numExecSeg; i++) {
      int ndx = _execSegNdx[i];
      if (_progHdrs[_ReginfoNdx].p_offset() > _progHdrs[ndx].p_offset()) {
	if ((_progHdrs[_ReginfoNdx].p_offset()+_progHdrs[ndx].p_filesz()) >
	    _progHdrs[_ReginfoNdx].p_offset()) {
	  // reginfo segment is part of textsegment, it is not part of executable code
	  return((_progHdrs[_ReginfoNdx].p_offset() + _progHdrs[_ReginfoNdx].p_filesz() + 0xf) & ~0xf);
	}
      }
    }
  }
  return 0;
}

#if 0
Elf64_Off ProgHdrTable64::textSegPAddr (int i)
{  
	if (_ReginfoNdx >= 0) {
		return (_progHdrs[_execSegNdx[i]].p_paddr() + Reginfo_bias());
	}
	return _progHdrs[_execSegNdx[i]].p_paddr();
} 

Elf64_Off ProgHdrTable64::textSegVAddr(int i)
{  
  if (_ReginfoNdx >= 0) {
    return(_progHdrs[_execSegNdx[i]].p_vaddr() + Reginfo_bias());
  }
  return _progHdrs[_execSegNdx[i]].p_vaddr();
} // ProgHdrTable::textSegVAddr(void)

Elf64_Off ProgHdrTable64::textSegFAddr(int i)
{
  if (_ReginfoNdx >= 0) {
    return( _progHdrs[_execSegNdx[i]].p_offset() + (Elf32_Off)_fileStartAddr + Reginfo_bias());
  }
  return _progHdrs[_execSegNdx[i]].p_offset() + (Elf32_Off)_fileStartAddr;
} // ProgHdrTable::textSegVAddr(void)

Elf64_Off ProgHdrTable64::textSegFSize(int i)
{
  if (_ReginfoNdx >= 0) {
    return _progHdrs[_execSegNdx[i]].p_filesz() + Reginfo_bias();
  }
  return _progHdrs[_execSegNdx[i]].p_filesz();
} // ProgHdrTable::textSegFSize(void)

Elf64_Off ProgHdrTable64::textSegMSize(int i)
{
  if (_ReginfoNdx >= 0) {
    return _progHdrs[_execSegNdx[i]].p_memsz() + Reginfo_bias();
  }
  return _progHdrs[_execSegNdx[i]].p_memsz();
} // ProgHdrTable::textSegMSize(void)

Elf64_Off ProgHdrTable64::dataSegPAddr(int i)
{
	return _progHdrs[_RWSegNdx[i]].p_paddr();
}

Elf64_Off ProgHdrTable64::dataSegVAddr(int i)
{
	return _progHdrs[_RWSegNdx[i]].p_vaddr();
} // ProgHdrTable::dataSegVAddr(void)

Elf64_Off ProgHdrTable64::dataSegFAddr(int i)
{
	return _progHdrs[_RWSegNdx[i]].p_offset() + (Elf32_Off)_fileStartAddr;
} // ProgHdrTable::dataSegFAddr(void)

Elf64_Off ProgHdrTable64::dataSegFSize(int i)
{
	if (_numRWSeg == 0) return 0;
	return _progHdrs[_RWSegNdx[i]].p_filesz();
} // ProgHdrTable::dataSegFSize(void)

Elf64_Off ProgHdrTable64::dataSegMSize(int i)
{
	if (_numRWSeg == 0) return 0;
	return _progHdrs[_RWSegNdx[i]].p_memsz();
} // ProgHdrTable::dataSegMSize(void)

Elf32_Off ProgHdrTable::rodataSegPAddr(int i)
{
	return _progHdrs[_RSegNdx[i]].p_paddr();
} // ProgHdrTable::rodataSegVAddr(void)


Elf64_Off ProgHdrTable64::rodataSegVAddr(int i)
{
	return _progHdrs[_RSegNdx[i]].p_vaddr();
} // ProgHdrTable::rodataSegVAddr(void)

Elf64_Off ProgHdrTable64::rodataSegFAddr(int i)
{
	return _progHdrs[_RSegNdx[i]].p_offset() + (Elf32_Off)_fileStartAddr;
} // ProgHdrTable::rodataSegFAddr(void)

Elf64_Off ProgHdrTable64::rodataSegFSize(int i)
{
	if (_numRSeg == 0) return 0;
	if (_progHdrs)
		return _progHdrs[_RSegNdx[i]].p_filesz();
	else
		return 0;
} // ProgHdrTable::rodataSegFSize(void)

Elf64_Off ProgHdrTable64::rodataSegMSize(int i)
{
	if (_numRSeg == 0) return 0;
	if (_progHdrs)
		return _progHdrs[_RSegNdx[i]].p_memsz();
	else
		return 0;
} // ProgHdrTable::rodataSegMSize(void)

Elf64_Off ProgHdrTable64::bssSegVAddr(int i)
{
	if (_numBssSeg == 0) return (unsigned)-1;
	return _progHdrs[_BssSegNdx[i]].p_vaddr();
} // ProgHdrTable::bssSegVAddr(void)

Elf64_Off ProgHdrTable64::bssSegFAddr(int i)
{
	if (_numBssSeg == 0) return (unsigned)-1;
	return _progHdrs[_BssSegNdx[i]].p_offset() + (Elf32_Off)_fileStartAddr;
} // ProgHdrTable::bssSegFAddr(void)

Elf64_Off ProgHdrTabl64e::bssSegMSize(int i)
{
	if (_numBssSeg == 0) return 0;
	return _progHdrs[_BssSegNdx[i]].p_memsz();
} // ProgHdrTable::bssSegFSize(void)
#endif // 0

void ProgHdrTable64::Print(FILE* stream, int phNum)
{
	// default argument of -1 means print everything
	// any other positive integers will be treated as
  	// an index, _secHdrs[secNum] will be printed out

  	ProgHdr64* phdr = NULL;

  // Print header row
	fprintf(stream,"\n== PROGRAM HEADERS ==\n");
	fprintf(stream,"Number of loadable exec segments: %i\n",_numExecSeg);
	fprintf(stream,"Number of loadable read-write segments: %i\n\n",_numRWSeg);
	
	fprintf(stream,"Num Type         Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align\n");
	
	if (phNum > -1) 
	{

    	if(!(phNum < _numEntries))
	    	throw(STRING("Program Header index requested is out of range\n"));

	    phdr = getPHdrByIndex(phNum);

    	if(phdr==NULL)
    		throw(STRING("Request program header cannot be found\n"));

	    _print_one(stream,phdr,phNum);

  	} 
  	else if (-1 == phNum) 
  	{
		for (phdr = begin(),phNum = 0; phdr != end(); phdr++,phNum++) 
	    {
			_print_one(stream,phdr,phNum);
	    }

  	}
  	else /* other values  */ 
  	{
    	throw(STRING("Unexpected Section Header index\n"));
  	}
} // ProgHdrTable::Print(FILE* stream,int phNum)

void ProgHdrTable64::_print_one(FILE* stream,ProgHdr64* phdr,unsigned int phNum)
{
	fprintf(stream,"%3u ",phNum);
	fprintf(stream,"%-12s ",phdr->decode_p_type());
	fprintf(stream,"%-8x ",phdr->p_offset());
	fprintf(stream,"%-10x ",phdr->p_vaddr());
	fprintf(stream,"%-10x ",phdr->p_paddr());
	fprintf(stream,"%-7x ",phdr->p_filesz());
	fprintf(stream,"%-7x ",phdr->p_memsz());
	fprintf(stream,"%-3s ",phdr->decode_p_flags());
	fprintf(stream,"%-5x\n",phdr->p_align());
} // ProgHdrTable::_print_one(FILE* stream,ProgHdr* phdr,unsigned int phNum)

///////////////////////////////////////
// Implementation of the ELFHdr class
// ELF Header
//
///////////////////////////////////////


ELFHdr64::ELFHdr64(Elf64_Ehdr* address) : _startAddr(address)
{
	// for compact code, combine assingment and assert
	if(!(((_eimag[0] = _startAddr->e_ident[EI_MAG0]) == ELFMAG0)))
		throw(STRING("Illegal ELF object, illegal ELFMAG0\n"));
	if(!((_eimag[1] = _startAddr->e_ident[EI_MAG1]) == ELFMAG1))
		throw(STRING("Illegal ELF object, illegal ELFMAG1\n"));
	if(!((_eimag[2] = _startAddr->e_ident[EI_MAG2]) == ELFMAG2))
		throw(STRING("Illegal ELF object, illegal ELFMAG2\n"));
	if(!((_eimag[3] = _startAddr->e_ident[EI_MAG3]) == ELFMAG3))
		throw(STRING("Illegal ELF object, illegal ELFMAG3\n"));
	_eimag[4] = '\0';
} // ELFHdr::ELFHdr(Elf32_Ehdr* address)


void ELFHdr64::Print(FILE* stream)
{
	fprintf(stream,"\n== ELF HEADER ==\n");
	fprintf(stream,"file starts at %p\n",_startAddr);
	fprintf(stream,"%-14s %-10s","Magic:",e_ident_EI_MAG());
	fprintf(stream,"%-14s %-10i","EI_CLASS:",e_ident_EI_CLASS());
	fprintf(stream,"%-14s %-10i","EI_DATA:",e_ident_EI_DATA());
	fprintf(stream,"%-14s %-10i\n","EI_VERSION:",e_ident_EI_VERSION());
	
	fprintf(stream,"%-14s %-10hi","e_type:",e_type());
	fprintf(stream,"%-14s %-10hi","e_machine:",e_machine());
	fprintf(stream,"%-14s %-10i","e_version:",e_version());
	fprintf(stream,"%-14s %-10p\n","e_entry:",e_entry());
	
	fprintf(stream,"%-14s %-10p","e_phoff:",e_phoff());
	fprintf(stream,"%-14s %-10p","e_shoff:",e_shoff());
	fprintf(stream,"%-14s %-10i","e_flags:",e_flags());
	fprintf(stream,"%-14s %-10i\n","e_ehsize:",e_ehsize());
	
	fprintf(stream,"%-14s %-10i","e_phentsize:",e_phentsize());
	fprintf(stream,"%-14s %-10i","e_phnum:",e_phnum());
	fprintf(stream,"%-14s %-10i","e_shentsize:",e_shentsize());
	fprintf(stream,"%-14s %-10i\n","e_shnum:",e_shnum());
	
	fprintf(stream,"%-14s %-10i\n","e_shstrndx:",e_shstrndx());

} // ELFHdr::Print(FILE* stream)


///////////////////////////////////////
// Implementation of the SecHdr class
// Section header
//
//////////////////////////////////////

SecHdr64::SecHdr64(unsigned char* address,SecHdrTable64* sht)
  											:_startAddr((Elf64_Shdr*)address),
											 _secHdrTable(sht)
{

	if(_startAddr==NULL)
		throw(STRING("Illegal Section Header address\n"));
	if(_secHdrTable==NULL)
		throw(STRING("Illegal Section Header Table pointer\n"));  
} // SecHdr::SecHdr(unsigned char* address,SecHdrTable* sht)

unsigned char* SecHdr64::secName(void)
{
	if(_secHdrTable==NULL)
		throw(STRING("Illegal reference to Section Header Table\n"));
	if(!((_secHdrTable->_shstrndx > 0) 
				&& (_secHdrTable->_shstrndx < _secHdrTable->_numEntries)))
		throw(STRING("Illegal value of shstrndx\n"));

	return ((_secHdrTable->_secHdrs[_secHdrTable->_shstrndx]).sh_offset() 
			 + _secHdrTable->_fileStartAddr 
			 + this->sh_name());
} // unsigned char* SecHdr::secName(void)

const unsigned char* SecHdr64::decode_sh_type(void)
{
	static const char* unknown= "*UNKNOWN*";

	static const char* shtypeLabels[] = {
	    "NULL",
	    "PROGBITS",
	    "SYMTAB",
	    "STRTAB",
	    "RELA",
	    "HASH",
	    "DYNAMIC",
	    "NOTE",
	    "NOBITS",
	    "REL",
	    "SHLIB",
	    "DYNSYM",    // 11
	    "*ILLEGAL*",  // 12
	    "*ILLEGAL*",  // 13
	    "INIT_ARR",  // 14
	    "FINI_ARR",  // 15
	    "PREINIT_ARR",  // 16
	    "SHT_GRP",
	    "SYMTAB_SNDX",
	    "NUM"    //19
	};

	if (this->sh_type() >= SHT_NULL && this->sh_type() <= SHT_NUM) 
	{
		return (const unsigned char*)shtypeLabels[this->sh_type()];
    } 
    else 
    {
	    return (const unsigned char*)unknown;

  	} 
} // const unsigned char* SecHdr::decode_sh_type(void)

//////////////////////////////////////////
// Implementation of the SecHdrTable class
// Section header table
//
//////////////////////////////////////////

SecHdrTable64::SecHdrTable64(unsigned char* address,ELFHdr64* eh)
											: _fileStartAddr(address),
											  _secHdrs(NULL),
											  _numEntries(eh->e_shnum()),
											  _shstrndx(eh->e_shstrndx())
{
	if(!(_fileStartAddr == (unsigned char*)eh->_startAddr))
		throw(STRING("Illegal Section Header Table address\n"));
	if(!((_shstrndx > 0 && _shstrndx < _numEntries) || _shstrndx == SHN_UNDEF))
	    throw(STRING("Illegal value of shstrndx\n"));

	_secHdrs = (SecHdr64*)malloc((sizeof(SecHdr64) * _numEntries));

	if(_secHdrs==NULL)
		throw(STRING("Failed to allocate memory for section headers\n"));

	unsigned char* tmp_shdr_ptr = address + eh->e_shoff();

	for (int i=0; i < _numEntries; i++) 
	{
    	_secHdrs[i] = SecHdr64(tmp_shdr_ptr,this);
    	if(!(&(_secHdrs[i]) != NULL))
    		throw(STRING("Failure in construction of SecHdr\n"));
	    tmp_shdr_ptr += sizeof(Elf64_Shdr);
  }

} // SecHdrTable::SecHdrTable(unsigned char* address,ELFHdr* eh)

SecHdr64* SecHdrTable64::getSHdrByIndex(unsigned int secNum)
{
	if(!(secNum < _numEntries))
		throw(STRING("Illegal Section Header number requested\n"));
	return &_secHdrs[secNum];

} //Elf32_Shdr* SecHdrTable::getSHdrByIndex(unsigned int secNum)


SecHdr64* SecHdrTable64::getSHdrByName(char* secName)
{
	// iterate through and lookup names
	for (SecHdr64* shdr = begin(); shdr != end(); shdr++)
    {
	    if (0 == strcmp(secName,(const char*)shdr->secName())) 
	    {
			return shdr;
    	}
    } // for (Elf32_Shdr* shdr = begin() ....
	// return NULL if nothing is found
	return NULL;
} // Elf32_Shdr* SecHdrTable::getSHdrByName(char* secName)


void SecHdrTable64::_print_one(FILE* stream,SecHdr64* shdr,unsigned int secNum)
{
	fprintf(stream," [%3u] ",secNum);
	fprintf(stream,"%-17s ",shdr->secName());
	fprintf(stream,"%-15s ",shdr->decode_sh_type());
	fprintf(stream,"%-8x ",shdr->sh_addr());
	fprintf(stream,"%-6x ",shdr->sh_offset());
	fprintf(stream,"%-6x ",shdr->sh_size());
	fprintf(stream,"%-2x ",shdr->sh_entsize()); 
	fprintf(stream,"%-3i ",shdr->sh_flags());
	fprintf(stream,"%-2i ",shdr->sh_link());
	fprintf(stream,"%-3i ",shdr->sh_info());
	fprintf(stream,"%-2i\n",shdr->sh_addralign());
} // SecHdrTable::_print_one(FILE* stream,SecHdr* shdr,unsigned int secNum)


void SecHdrTable64::Print(FILE* stream,int secNum)
{
  // default argument of -1 means print everything
  // any other positive integers will be treated as
  // an index, _secHdrs[secNum] will be printed out
	SecHdr64* shdr = NULL;

  // Print header row
	fprintf(stream,"\n== SECTION HEADERS ==\n");
	fprintf(stream," [ndx] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al\n");


	if (secNum > -1) 
	{

    	if(!(secNum < _numEntries))
	    	throw(STRING("Section Header index requested is out of range\n"));
		shdr = getSHdrByIndex(secNum);
	    if(shdr==NULL)
	    	throw(STRING("Request section cannot be found\n"));
	    _print_one(stream,shdr,secNum);
	} 
	else if (-1 == secNum) 
	{
	    for (shdr = begin(),secNum = 0; shdr != end(); shdr++,secNum++) 
	    {
			_print_one(stream,shdr,secNum);
	    }
	} 
	else /* other values  */ 
	{
    	throw(STRING("Unexpected Section Header index\n"));
	}
} // SecHdrTable::Print(FILE* stream,int secNum = -1)

#if 0

/////////////////////////////////////
//
// Implementation of the Symbol class
// ELF Symbol
//
/////////////////////////////////////

ElfSymbol::ElfSymbol(unsigned char* address, ElfSymtab* st)
											  :_startAddr((Elf32_Sym*)address),
											   _symtab(st)
{ } // ElfSymbol::ElfSymbol(unsigned char* address)

char* ElfSymbol::symNameIsSpecial(ElfSymtab* symtab)
{
	if ((this->st_shndx() > 0) && (this->st_shndx() < SHN_LORESERVE)) 
	{
    	if (ELF32_ST_TYPE(this->st_info()) == STT_SECTION) 
    	{
      		return (char *)symtab->_shdrs->getSHdrByIndex(this->st_shndx())->secName();
    	}
  	}
	return (char *)0;
} // ElfSymbol::symName(void)

char* ElfSymbol::symName(void)
{
	if(_symtab==NULL)
		throw(STRING("Illegal reference to ElfSymbol Table\n"));
	if(_symtab->_shdrs==NULL)
		throw(STRING("Illegal reference to Section Header Table\n"));
	if(_symtab->_shdrs->getSHdrByName(_STRTAB_SEC)==NULL)
		throw(STRING("Requested Section Header cannot be found\n"));

	return (char* )(_symtab->_shdrs->getSHdrByName(_STRTAB_SEC)->sh_offset()
					+ _symtab->_fileStartAddr
					+ this->st_name());
} // ElfSymbol::symName(ElfSymbol* )

const unsigned char* ElfSymbol::decode_sec_index(void)
{
	switch(this->st_shndx()) 
	{
	  	case SHN_UNDEF:
			return (const unsigned char*)"UNDEF";
		case SHN_LOPROC:
		    return (const unsigned char*)"LOPROC";
		case SHN_HIPROC:
		    return (const unsigned char*)"HIPROC";
		case SHN_ABS:
		    return (const unsigned char*)"ABS";
		case SHN_COMMON:
		    return (const unsigned char*)"COMMON";
		case SHN_HIRESERVE:
		    return (const unsigned char*)"HIRESERVE";
		default:
		    return (const unsigned char*)"*ILLEGAL*";
	}
} // ElfSymbol::decode_sec_index(void)

const unsigned char* ElfSymbol::decode_st_type(void)
{
	static const char* sttypeLabels[] = {
	    "NOTYPE",    // 0
	    "OBJECT",    // 1
	    "FUNC",      // 2
	    "SECTION",   // 3
	    "FILE",      // 4
	    "*ILLEGAL*",   // 5
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",   // 12
	    "LOPROC",    // 13
	    "*ILLEGAL*",   // 14
	    "HIPROC"     // 15
  	};
	int stt = ELF32_ST_TYPE(this->st_info());
	if(!(stt <= STT_HIPROC))
		throw(STRING("Illegal ST_TYPE value\n"));
	return (const unsigned char*)sttypeLabels[stt];
} // ElfSymbol::decode_st_type(void)

const unsigned char* ElfSymbol::decode_st_bind(void)
{
	static const char* stbindLabels[] = {
	    "LOCAL",     // 0
	    "GLOBAL",    // 1
	    "WEAK",      // 2
	    "*ILLEGAL*",   // 3
	    "*ILLEGAL*",   // 4
	    "*ILLEGAL*",   // 5
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",
	    "*ILLEGAL*",   // 12
	    "LOPROC",    // 13
	    "*ILLEGAL*",   // 14
	    "HIPROC"     // 15
	};
	int stb = ELF32_ST_BIND(this->st_info());
	if(!(stb <= STB_HIPROC))
		throw(STRING("Illegal ST_BIND value\n"));
	return (const unsigned char*)stbindLabels[stb];
} // ElfSymbol::decode_st_bind(void)


/////////////////////////////////////
//
// Implementation of the ElfSymtab class
// ElfSymbol table
//
/////////////////////////////////////


ElfSymtab::ElfSymtab(unsigned char* address,SecHdrTable* sh)
  					  	:_fileStartAddr(address),
					   	 _shdrs(sh),
						 _symbols(NULL),
					   	 _numEntries((sh->getSHdrByName(_SYMTAB_SEC)->sh_size())/
				         (sh->getSHdrByName(_SYMTAB_SEC)->sh_entsize())),
						 _sizeOfEntry(sh->getSHdrByName(_SYMTAB_SEC)->sh_entsize())
{
	if(!(_sizeOfEntry == sizeof(Elf32_Sym)))
		throw(STRING("Illegal Symbol Table Entry Size\n"));

  	_symbols = (ElfSymbol*)malloc((sizeof(ElfSymbol) * _numEntries));
  	if(_symbols==NULL)
  		throw(STRING("Failed to allocate memory for ElfSymbols\n"));

	unsigned char* tmp_sym_ptr = address + sh->getSHdrByName(_SYMTAB_SEC)->sh_offset();

	if(sh->getSHdrByName(_STRTAB_SEC)==NULL)
		throw(STRING("Requested Section Header cannot be found\n"));

	for (int i =0; i < _numEntries; i++) 
	{
	    _symbols[i] = ElfSymbol(tmp_sym_ptr,this);
    	tmp_sym_ptr += sizeof(Elf32_Sym);
	}
} // ElfSymtab::ElfSymtab(unsigned char* address,SecHdrTable* sh)

void ElfSymtab::_print_one(FILE* stream, ElfSymbol* sym,unsigned int symNum)
{
	fprintf(stream,"  %3u:",symNum);
	fprintf(stream," %8x",sym->st_value());
	fprintf(stream," %5u",sym->st_size());
	fprintf(stream," %7s",sym->decode_st_type());
	fprintf(stream," %6s",sym->decode_st_bind());
	(sym->st_shndx() > 0 && sym->st_shndx() < SHN_LORESERVE) ? 
							fprintf(stream," %10i",sym->st_shndx()) : 
							fprintf(stream," %10s",sym->decode_sec_index());

  // Savio: need assert
	(sym->st_shndx() > 0 && sym->st_shndx() < SHN_LORESERVE) ? 
    	fprintf(stream," %10s", _shdrs->getSHdrByIndex(sym->st_shndx())->secName()):
	    fprintf(stream," %10s","*special*");
  
    fprintf(stream," %s\n",sym->symName());

} // ElfSymtab::_print_one(FILE* stream, ElfSymbol* sym,unsigned int symNum)

void ElfSymtab::Print(FILE* stream,int symNum)
{

  // default argument of -1 means print everything
  // any other positive integers will be treated as
  // an index, _symbols[symNum] will be printed out

	ElfSymbol* sym = NULL;

  // Print header row
	fprintf(stream,"\n== SYMBOL TABLE ==\n");
	fprintf(stream,"  Num:    Value  Size    Type   Bind        Ndx    Section Name\n");

	if (symNum > -1) 
	{
	    if(!(symNum < _numEntries))
	    	throw(STRING("Section Header index requested is out of range\n"));
	    sym = getSymByIndex(symNum);
    	_print_one(stream,sym,symNum);
	} 
	else if (-1 == symNum) 
	{
	    for (sym = begin(),symNum = 0; sym != end(); sym++,symNum++) 
	    {
			_print_one(stream,sym,symNum);
      	}
	} 
	else /* other values  */ 
	{
    	throw(STRING("Unexpected ElfSymbol Table index\n"));
    }
} // ElfSymtab::Print(FILE* stream,int secNum))

ElfSymbol* ElfSymtab::getSymByIndex(unsigned int symNum)
{
	if(!(symNum < _numEntries))
		throw(STRING("Illegal ElfSymbol Table index requested\n"));
	return &_symbols[symNum];
} // ElfSymtab::getSymByIndex(unsigned int symNum)

ElfSymbol* ElfSymtab::getSymByName(char* symName)
{
	ElfSymbol* sym;
	for(sym = begin(); sym != end(); sym++)
	{
		if(strcmp(sym->symName(), symName)==0)
			return sym;
	}
	
	return (ElfSymbol *)NULL;
} //ElfSymbol* ElfSymtab::getSymByName(char* symName)

#ifdef _SL1_VERSION_CHECK
void ElfSymtab::setSymVersionNumber(unsigned version)
{
       ElfSymbol* symbol = getSymByName("__version_number");
       if(symbol == NULL)
               return;

       SecHdr * secHdr = _shdrs->getSHdrByIndex(symbol->st_shndx());
       unsigned fileoffset = symbol->st_value() - secHdr->sh_addr() + (unsigned)_fileStartAddr + secHdr->sh_offset();
       printf("fileoffset = %x %x %x\n", fileoffset, symbol->st_value(), secHdr->sh_addr());
       printf("e_flags = %x\n", version);
       *(unsigned *)fileoffset = version;
}
#endif

#endif // 0
