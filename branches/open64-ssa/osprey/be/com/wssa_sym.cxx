#include "wssa_sym.h"

namespace WSSA {

WST_Field_Info::WST_Field_Info() 
  : _st_idx(0), _name_idx(0), _field_id(0), 
    _byte_size(0), _byte_offset(0),
    _bit_size(0), _bit_offset(0) {
}

WST_Field_Info::WST_Field_Info(INT32 st_idx, INT32 field_id, INT64 byte_size, INT64 byte_offset, UINT8 bit_size, UINT8 bit_offset)
  : _st_idx(st_idx), _field_id(field_id), 
    _byte_size(byte_size), _byte_offset(byte_offset),
    _bit_size(bit_size), _bit_offset(bit_offset) {
  _name_idx = Save_Str2i(ST_name(st_idx), "@", field_id);
}

WST_Vsym_Info::WST_Vsym_Info()
  : _vsym_type(WVT_UNKNOWN) {
}

WST_Vsym_Info::WST_Vsym_Info(WSSA_VSYM_TYPE type)
  : _vsym_type(type) {
}

WSSA_Symbol_Entry::WSSA_Symbol_Entry()
  : _sym_type(WST_UNKNOWN), _max_ver(ZERO_VER_NUM) { 
}

WSSA_Symbol_Entry::WSSA_Symbol_Entry(WSSA_SYM_TYPE type)
  : _sym_type(type), _max_ver(ZERO_VER_NUM) { 
}

}
