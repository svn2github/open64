
/*

  Copyright (C) 2008 .  All Rights Reserved.

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

using namespace std;

typedef unsigned char * BITS;

typedef enum {
  RTA_SCN_DATA = 0,
  RTA_SCN_INDEX = 1,
  RTA_SCN_UNKNOWN = 2,
  WHIRL_SCN_PU = 3,
  WHIRL_SCN_LOW_BOUND = WHIRL_SCN_PU-1,
  WHIRL_SCN_GBL = 4,
  WHIRL_SCN_DST = 5,
  WHIRL_SCN_STRTAB = 6,
  WHIRL_SCN_SUMMARY = 7,
  WHIRL_SCN_FLAGS = 8,
  WHIRL_SCN_HI_BOUND = WHIRL_SCN_FLAGS+1
} ANNOT_SCN_TYPE;


// the prefix are really defined in linux/include/elf_stuff.h of open64 compiler
#define WHIRL_SCN_NAME_PREFIX ".WHIRL"
#define WHIRL_SCN_NAME_PREFIX_LEN 6
#define WHIRL_PUSECT_SCN_NAME ".WHIRL.pu_section"
#define WHIRL_SUMMARY_SCN_NAME ".WHIRL.summary"
#define WHIRL_FLAGS_SCN_NAME ".WHIRL.flags"


typedef class {
 private:
  uint64_t     pc;
  unsigned int sz;
  BITS         bits;
 public:
  void Size(unsigned int s) { sz = s; }
  void Bits(BITS b)         { bits = b; }
  void Pc(uint64_t p)       { pc = p; }
  uint64_t Pc(void)         { return pc; }
  unsigned int Size(void)   { return sz; }
  BITS Bits(void)           { return bits; }
} RTABuf;

class PU_SectBin {
 private:
  SecHdr*         sect;
  SecHdr64*       sect64;
  bool            is32bit;
  int             num_sect;
  STRING          name;
  vector<RTABuf>  pu_sects;
  uint64_t        start_pc;
  unsigned int    sz;        // size of pu range
  
 public:
  void Name(const STRING s)     { name = s; }
  void NumSect(const int n)     { num_sect = n; }
  void Sect(SecHdr* s)          { sect = s; }
  void Sect(SecHdr64* s)        { sect64 = s; }
  void PuSects(vector<RTABuf> p){ pu_sects = p; }
  void Is32bit(bool b)          { is32bit = b; }
  void StartPc(uint64_t p)      { start_pc = p; }
  void SzPus(unsigned int s)    { sz = s; }
  STRING Name(void)             { return name; }
  int Numsect(void)             { return num_sect; }
  SecHdr* Sect(void)            { return sect; }
  SecHdr64* Sect64(void)        { return sect64; }
  vector<RTABuf> PuSects(void)  { return pu_sects; }
  bool NumsectNone(void)        { return (Numsect() == 0); }
  bool Is32bit(void)            { return is32bit; }
  uint64_t StartPc(void)        { return start_pc; }
  unsigned int SzPus(void)      { return sz; }
  void PrintBits(FILE* fp, int i);
  void PrintBits(FILE* fp);
  bool QuickChk(FILE* fp, int i);
  bool QuickChk(FILE* fp = stdout);
  bool VerifyHdr(const Rta_Hdr *prta);
  PU_SectBin(int n = 0)         { Name('\0'), NumSect(n), Sect((SecHdr*)0); Sect((SecHdr64*)0); }
  ~PU_SectBin() {}
};



class SecHdrTable;

#define FILTER_SECT_NAME_PREFIX    ".rta."
#define FILTER_SECT_NAME_LEN       5

typedef class {
  ELF_object*   _obj;
  bool          _is32bit;
  ELF_object64* _obj64;
 public:
  ELF_object*    Obj(void)            { return _is32bit ? _obj :(ELF_object*)0;}
  SecHdr*        Sects(void)          { return Obj()->SecHdrTab()->SecTab(); }  
  ELF_object64*  Obj64(void)          { return _obj64; }
  SecHdr64*      Sects64(void)        { return Obj64()->SecHdrTab()->SecTab(); }
  bool           Is32bit(void)        { return _is32bit; }
  int            Sectnum(void)        { return _is32bit ? Obj()->SecHdrTab()->SecNum() : Obj64()->SecHdrTab()->SecNum(); }
 public:
  ANNOT_SCN_TYPE FilterByName(STRING);
  void createELFObj(char* elfFile);  // sets up all members, like a constructor
  STRING         Sectname(int i);
  void           dumpBin(FILE *fp = stdout);
} ELFBin;


ANNOT_SCN_TYPE ELFBin::FilterByName(STRING s)
{
  if (strncmp(RTA_SCN_NAME_PREFIX, s, RTA_SCN_NAME_PREFIX_LEN) == 0) {
    if (strcmp(RTA_DATA_SCN_NAME, s) == 0) 
      return RTA_SCN_DATA;
    if (strcmp(RTA_INDEX_SCN_NAME, s) == 0) 
      return RTA_SCN_INDEX;
    return RTA_SCN_UNKNOWN;
  }

  if (strncmp(WHIRL_SCN_NAME_PREFIX, s, WHIRL_SCN_NAME_PREFIX_LEN) == 0) {
    if (strcmp(WHIRL_PUSECT_SCN_NAME, s) == 0) 
      return WHIRL_SCN_PU;

    if (strcmp(WHIRL_SUMMARY_SCN_NAME, s) == 0) 
      return WHIRL_SCN_SUMMARY;

    if (strcmp(WHIRL_FLAGS_SCN_NAME, s) == 0) 
      return WHIRL_SCN_FLAGS;
  }

  return RTA_SCN_UNKNOWN;
}

void ELFBin::createELFObj(char* elfFile) 
{
  try {
    _obj = new ELF_object(elfFile);
    _is32bit = _obj->Is32Bit();

    if (_obj == NULL)
      throw(STRING("Cannot create obj"));

    if (_is32bit) {
      SecHdrTable* _secHdrTab = Obj()->SecHdrTab();
      if (_secHdrTab == 0)
	throw(STRING("Empty section header"));
      
      if (_obj->_elfHeader->e_shnum() == 0)
	throw(STRING("number of sections is zero"));
    }
    else {
      _obj64 = new ELF_object64(elfFile);
      SecHdrTable64* _secHdrTab = Obj64()->SecHdrTab();
      if (_secHdrTab == 0)
	throw(STRING("Empty section header"));
      
      if (Obj64()->_elfHeader->e_shnum() == 0)
	throw(STRING("number of sections is zero"));
    }
    return ;
  }
  catch (STRING s) {
    throw s;
  }
}


STRING ELFBin::Sectname(int i) 
{
  if (Sectnum() == 0 )
    throw(STRING("sectHdr num null"));

  if (Is32bit()) {
    if (Sects() == 0)
      throw(STRING("sectHdr Table null"));

    return (STRING)Obj()->SecHdrTab()->getSHdrByIndex(i)->secName();
  }
  else {
    if (Sects64() == 0)
      throw(STRING("sectHdr Table null"));
    return (STRING)Obj64()->SecHdrTab()->getSHdrByIndex(i)->secName();
  }
}

void ELFBin::dumpBin(FILE *fp)
{
  int sect_num = 0;
  PU_SectBin pusbin_rta = PU_SectBin(0);
  int p_ofs;
  unsigned char* p_tmp;
  unsigned int p_shsz;
  BITS p_annot_scn;
  vector<RTABuf> rta_buf;
  ANNOT_SCN_TYPE scntype, stype;

  for (int k = 0; k < Sectnum(); k++) {
    if ((stype = FilterByName(Sectname(k))) != RTA_SCN_UNKNOWN) {

      if (Is32bit()) {
	p_tmp = (unsigned char *)Obj()->_elfHeader->_startAddr;
	SecHdr* SecHdr = Sects();
	p_ofs = SecHdr[k].sh_offset();
	p_shsz = SecHdr[k].sh_size();
      }
      else {
	  p_tmp = (unsigned char *)Obj64()->_elfHeader->_startAddr;
	  SecHdr64* SecHdr64 = Sects64();
	  p_ofs = SecHdr64[k].sh_offset();
	  p_shsz = SecHdr64[k].sh_size();
      }

      switch (stype) {
      case RTA_SCN_INDEX:
	// RTA index section that has start, offset and size to data part
	if (Is32bit()) {
	  pusbin_rta.Sect(Sects());
	}
	else {
	  pusbin_rta.Sect(Sects64());
	}
	scntype = stype;
	sect_num = p_shsz/sizeof(Rta_Idx_Ent);
	FmtAssert((p_shsz%sizeof(Rta_Idx_Ent) == 0), ("index sect not multplier of index class size"));
	break;

      case RTA_SCN_DATA:
	scntype = stype;
	p_annot_scn = (BITS)malloc(p_shsz);	
	memcpy(p_annot_scn, p_tmp+p_ofs, p_shsz);
	break;

      case WHIRL_SCN_PU:
	p_annot_scn = (BITS)malloc(p_shsz);	
	memcpy(p_annot_scn, p_tmp+p_ofs, p_shsz);
	Print_whirl_pu_from_bits(fp, p_annot_scn, p_shsz);
	break;

      case WHIRL_SCN_GBL:
	p_annot_scn = (BITS)malloc(p_shsz);	
	memcpy(p_annot_scn, p_tmp+p_ofs, p_shsz);
	Print_whirl_global_from_bits(fp, p_annot_scn, p_shsz);
	break;

      case WHIRL_SCN_SUMMARY:
	p_annot_scn = (BITS)malloc(p_shsz);	
	memcpy(p_annot_scn, p_tmp+p_ofs, p_shsz);
	Print_whirl_summary_from_bits(fp, p_annot_scn, p_shsz);
	break;

      case WHIRL_SCN_FLAGS:
	p_annot_scn = (BITS)malloc(p_shsz);	
	memcpy(p_annot_scn, p_tmp+p_ofs, p_shsz);
	Print_whirl_flags_from_bits(fp, p_annot_scn, p_shsz);
	break;

      case WHIRL_SCN_STRTAB:
      default:
	FmtAssert(0, ("RTA/WHIRL scn type %d not handled", stype));
	break;
      }
    }      
  }
   
  if (scntype == RTA_SCN_DATA || scntype == RTA_SCN_INDEX) {
    // we assume these 2 scns will appear (if at all) 
    // but not necessary in order
    Rta_Idx_Ent* rta_idx_array;
    rta_idx_array = (Rta_Idx_Ent*)((unsigned char *)p_tmp+p_ofs);
    for (int j=0; j<sect_num; j++, rta_idx_array++) {
      RTABuf rta_tmp;
      
      rta_tmp.Pc(Rta_idx_ent_start(rta_idx_array));
      rta_tmp.Size(p_shsz);
      rta_tmp.Bits(p_annot_scn+Rta_idx_ent_data_off(rta_idx_array));
      rta_buf.push_back(rta_tmp);
    }

    pusbin_rta.NumSect(sect_num);
    pusbin_rta.PuSects(rta_buf);
#ifdef DEBUG
    pusbin_rta.PrintBits(fp);	
    pusbin_rta.QuickChk(fp);
#endif // DEBUG
  }
  
  if (scntype > WHIRL_SCN_LOW_BOUND && scntype < WHIRL_SCN_HI_BOUND) {
  }
}




