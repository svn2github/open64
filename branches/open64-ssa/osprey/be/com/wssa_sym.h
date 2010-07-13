#ifndef WSSA_SYM_INCLUDED
#define WSSA_SYM_INCLUDED

#include "wssa_defs.h"
#include "symtab.h"
#include <vector>

namespace WSSA {

class WST_Field_Info {
private:

  ST_IDX _st_idx;       // the struct variable in WHIRL SYMTAB
  STR_IDX _name_idx;    // variable.field
  INT32 _field_id;
  INT64 _byte_size;
  INT64 _byte_offset;
  UINT8 _bit_size;
  UINT8 _bit_offset;

public:

  WST_Field_Info();
  WST_Field_Info(INT32 st_idx, INT32 field_id, INT64 byte_size, INT64 byte_offset, UINT8 bit_size, UINT8 bit_offset);

  ST_IDX St_idx() const                { return _st_idx;        }
  void   Set_st_idx(ST_IDX st_idx)     { _st_idx = st_idx;      }
  STR_IDX Name_idx() const             { return _name_idx;      }
  void   Set_name_idx(STR_IDX idx)     { _name_idx = idx;       }
  INT32  Field_id() const              { return _field_id;      }
  void   Set_field_id(INT32 field_id)  { _field_id = field_id;  }
  INT64  Byte_size() const             { return _byte_size;     }
  void   Set_byte_size(INT64 size)     { _byte_size = size;     }
  INT64  Byte_offset() const           { return _byte_offset;   }
  void   Set_byte_offset(INT64 offset) { _byte_offset = offset; }
  UINT8  Bit_size() const              { return _bit_size;      }
  void   Set_bit_size(UINT8 size)      { _bit_size = size;      }
  UINT8  Bit_offset() const            { return _bit_offset;    }
  void   Set_bit_offset(UINT8 offset)  { _bit_offset = offset;  }
};

class WST_Vsym_Info {
private:

  WSSA_VSYM_TYPE  _vsym_type;
  union {
    ST_IDX  _st_idx;    // st_idx for lda_based vsym
    STR_IDX _name_idx;  // name of the vsym
    /* TODO, alias information */
  } _vsym;

public:

  WST_Vsym_Info();
  WST_Vsym_Info(WSSA_VSYM_TYPE type);

  WSSA_VSYM_TYPE Vsym_type() const    { return _vsym_type;     }
  void Set_vsym_type(WSSA_VSYM_TYPE type)
                                      { _vsym_type = type;     }
  ST_IDX St_idx() const {
    Is_True( Vsym_type() == WVT_LDA_SCALAR || Vsym_type() == WVT_LDA_VSYM,
             ("bad vsym type to set st_idx") );
    return _vsym._st_idx;
  }
  void Set_st_idx(ST_IDX idx) {
    Is_True( Vsym_type() == WVT_LDA_SCALAR || Vsym_type() == WVT_LDA_VSYM,
             ("bad vsym type, no st_idx") );
    _vsym._st_idx = idx;
  }
  INT32 Name_idx() const {
    if ( Vsym_type() == WVT_LDA_SCALAR || Vsym_type() == WVT_LDA_VSYM ) 
      return ST_name_idx( St_Table[_vsym._st_idx] );
    else
      return _vsym._name_idx;
  }
  void Set_name_idx(STR_IDX idx) {
    Is_True( Vsym_type() == WVT_UNIQUE_VSYM || Vsym_type() == WVT_SPECIAL_VSYM,
             ("bad vsym type to set name_idx") );
    _vsym._name_idx = idx;
  }

};

class WSSA_Symbol_Entry {
private:

  WSSA_SYM_TYPE _sym_type;
  union {
    ST_IDX _st_idx;              // WHIRL ST
    FIELD_INFO_IDX  _field_idx;  // WHIRL Field
    VSYM_INFO_IDX   _vsym_idx;   // virtual symbol
  } _sym;
  VER_NUM _max_ver;              // max version


  friend class WHIRL_SSA_MANAGER;

public:

  /* Only WHIRL_SSA_MANAGER can create the instances */
  WSSA_Symbol_Entry();
  WSSA_Symbol_Entry(WSSA_SYM_TYPE type);

public:

  WSSA_SYM_TYPE Sym_type() const        { return _sym_type; }
  void Set_sym_type(WSSA_SYM_TYPE type) { _sym_type = type; }

  ST_IDX St_idx() const {
    Is_True(Sym_type() == WST_WHIRL, ("Bad sym type"));
    return _sym._st_idx;
  }
  void Set_st_idx(ST_IDX idx) {
    Is_True(Sym_type() == WST_WHIRL, ("Bad sym type"));
    _sym._st_idx = idx;
  }
  FIELD_INFO_IDX Field_idx() const {
    Is_True(Sym_type() == WST_FIELD, ("Bad sym type"));
    return _sym._field_idx;
  }
  void Set_field_idx(FIELD_INFO_IDX idx) {
    Is_True(Sym_type() == WST_FIELD, ("Bad sym type"));
    _sym._field_idx = idx;
  }
  VSYM_INFO_IDX Vsym_idx() const {
    Is_True(Sym_type() == WST_VSYM, ("Bad sym type"));
    return _sym._vsym_idx;
  }
  void Set_vsym_idx(VSYM_INFO_IDX idx) {
    Is_True(Sym_type() == WST_VSYM, ("Bad sym type"));
    _sym._vsym_idx = idx;
  }
  VER_NUM Max_ver() const       { return _max_ver; }
  void Set_max_ver(VER_NUM ver) { _max_ver = ver;  }
  VER_NUM Inc_max_ver() {
    VER_NUM ret = _max_ver++; 
    return ret; 
  }
};

typedef std::vector<WST_Field_Info>    WST_FIELD_TABLE;
typedef std::vector<WST_Vsym_Info>     WST_VSYM_TABLE;
typedef std::vector<WSSA_Symbol_Entry> WST_SYM_TABLE;

}; /* namespace WSSA */

#endif /* WSSA_SYM_INCLUDED */
