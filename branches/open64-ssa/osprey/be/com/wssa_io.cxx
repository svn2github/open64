#include "wssa_io.h"

#ifndef __GNUC__
#define __ALIGNOF(x) __builtin_alignof(x)
#else
#define __ALIGNOF(x) __alignof__(x)
#endif

namespace WSSA {

// wrap the input buffer
struct Input_Buffer {
  char* _base;
  char* _current;
  Input_Buffer(char* ptr) : _base(ptr), _current(ptr) {}
};

// generic ir_b_read_buf, no implementation
template<typename _Tp, typename _AlignTp>
void ir_b_read_buf(Input_Buffer *ib, _Tp& data);

// partial specialized ir_b_read_buf for INT32 alignment
template<typename _Tp>
void ir_b_read_buf(Input_Buffer *ib, _Tp& data) {
  data = * (_Tp*) ib->_current;
  if (sizeof(_Tp) % __ALIGNOF(INT32) == 0)
    ib->_current += sizeof(_Tp);
  else
    ib->_current += (sizeof(_Tp)/__ALIGNOF(INT32) + 1) * __ALIGNOF(INT32);
}

// generic write_to_file
// in general, we assume the object has its own method to write to file
template<typename _Tp>
void write_to_file(Output_File *fl, const _Tp& data) {
  data.Write_to_file(fl);
}

// generic read_from_buffer
// in general, we assume the object has its own method to read from buffer
template<typename _Tp>
void read_from_buffer(Input_Buffer *ib, _Tp& data) {
  data.Read_from_buffer(ib);
}

/*=============================================================================
 *
 * write/read builtin data types 
 *
 *===========================================================================*/

// specialized write_to_file for writing INT32
template<>
void write_to_file(Output_File *fl, const INT32& data)
{
  ir_b_save_buf(&data, sizeof(INT32), __ALIGNOF(INT32), 0, fl);
}

// specialized read_from_buffer for reading INT32
template<>
void read_from_buffer(Input_Buffer *ib, INT32& data)
{
  ir_b_read_buf(ib, data);
}

// specialized write_to_file for writing UINT32
template<>
void write_to_file(Output_File *fl, const UINT32& data)
{
  ir_b_save_buf(&data, sizeof(UINT32), __ALIGNOF(INT32), 0, fl);
}

// specialized read_from_buffer for reading UINT32
template<>
void read_from_buffer(Input_Buffer *ib, UINT32& data)
{
  ir_b_read_buf(ib, data);
}

/*=============================================================================
 *
 * write/read generic lists/maps
 *
 *===========================================================================*/

// specialized write_to_file for writing std::vector
template<typename _Tp, typename _Alloc>
void write_to_file(Output_File *fl, const std::vector<_Tp, _Alloc>& data)
{
  INT32 vec_size = data.size();
  write_to_file(fl, vec_size);
  typename std::vector<_Tp, _Alloc>::const_iterator it;
  for (it = data.begin(); it != data.end(); it++) {
    write_to_file(fl, *it);
  }
}

// specialized read_from_buffer for reading std::vector
template<typename _Tp, typename _Alloc>
void read_from_buffer(Input_Buffer *ib, std::vector<_Tp, _Alloc>& data)
{
  INT32 vec_size;
  read_from_buffer(ib, vec_size);
  data.reserve(vec_size);
  for (int i=0; i<vec_size; i++) {
    _Tp element;
    read_from_buffer(ib, element);
    data.push_back(element);
  }
  Is_True(data.size() == vec_size, ("size mismatch"));
}

// specialized write_to_file for writing __gnu_cxx::hash_map
template<typename _Val, typename _Tp, 
         typename _HashFcn, typename _HashEq, typename _Alloc>
void write_to_file(Output_File *fl, const hash_map<_Val, _Tp, _HashFcn, _HashEq, _Alloc>& data)
{
  INT32 map_size = data.size();
  write_to_file(fl, map_size);
  typename hash_map<_Val, _Tp, _HashFcn, _HashEq, _Alloc>::const_iterator it;
  for (it = data.begin(); it != data.end(); it++) {
    write_to_file(fl, it->first);
    write_to_file(fl, it->second);
  }
}

// specialized read_from_buffer for reading __gnu_cxx::hash_map
template<typename _Val, typename _Tp, 
         typename _HashFcn, typename _HashEq, typename _Alloc>
void read_from_buffer(Input_Buffer *ib, hash_map<_Val, _Tp, _HashFcn, _HashEq, _Alloc>& data)
{
  INT32 map_size;
  read_from_buffer(ib, map_size);
  for (int i=0; i < map_size; i++) {
    _Val key;
    _Tp val;
    read_from_buffer(ib, key);
    read_from_buffer(ib, val);
    data[key] = val;
  }
  Is_True(data.size() == map_size, ("size mismatch"));
}

/*=============================================================================
 *
 * write/read WSSA basic data types
 *
 *===========================================================================*/

// specialized write_to_file for writing WSSA::WST_Field_Info
template<>
void write_to_file(Output_File *fl, const WST_Field_Info& field)
{
  ir_b_save_buf(&field, sizeof(WST_Field_Info), __ALIGNOF(INT32), 0, fl);
}

// specialized read_from_buffer for reading WSSA::WST_Field_Info
template<>
void read_from_buffer(Input_Buffer *ib, WST_Field_Info& field)
{
  ir_b_read_buf(ib, field);
}

// specialized write_to_file for writing WSSA::WST_Vsym_Info
template<>
void write_to_file(Output_File *fl, const WST_Vsym_Info& vsym)
{
  ir_b_save_buf(&vsym, sizeof(WST_Vsym_Info), __ALIGNOF(INT32), 0, fl);
}

// specialized read_from_buffer for reading WSSA::WST_Vsym_Info
template<>
void read_from_buffer(Input_Buffer *ib, WST_Vsym_Info& vsym)
{
  ir_b_read_buf(ib, vsym);
}

// specialized write_to_file for writing WSSA::WSSA_Symbol_Entry
template<>
void write_to_file(Output_File *fl, const WSSA_Symbol_Entry& sym)
{
  ir_b_save_buf(&sym, sizeof(WSSA_Symbol_Entry), __ALIGNOF(INT32), 0, fl);
}

// specialized read_from_buffer for reading WSSA::WSSA_Symbol_Entry
template<>
void read_from_buffer(Input_Buffer *ib, WSSA_Symbol_Entry& sym)
{
  ir_b_read_buf(ib, sym);
}

/*=============================================================================
 *
 * I/O routines for WSSA_GENERIC_LIST and WSSA_GENERIC_NODE
 *
 *===========================================================================*/

template<typename TRAITS>
void SSA_GENERIC_NODE<TRAITS>::Write_to_file(Output_File *fl) const
{
  // _wst_idx
  write_to_file(fl, (INT32)this->WST_idx());
  // results
  if( TRAITS::LHS_COUNT == -1 ) {
    // variable length, write length at first
    write_to_file(fl, (INT32)this->Res_count());
  }
  for( int i=0; i<this->Res_count(); i++ ) {
    write_to_file(fl, this->Get_res(i));
  }
  // operands
  if( TRAITS::RHS_COUNT == -1 ) {
    // variable length, write length at first
    write_to_file(fl, (INT32)this->Opnd_count());
  }
  for( int i=0; i<this->Opnd_count(); i++) {
    write_to_file(fl, this->Get_opnd(i));
  }
}

template<typename TRAITS>
void SSA_GENERIC_NODE<TRAITS>::Read_from_buffer(Input_Buffer *ib)
{
  // _wst_idx
  INT32 wst_idx;
  read_from_buffer(ib, wst_idx);
  this->Set_WST_idx((WSSA::WSSA_ST_IDX)wst_idx);
  // results
  INT32 res_count = TRAITS::LHS_COUNT;
  if( res_count == -1 ) {
    // variable length, read length at first
    read_from_buffer(ib, res_count);
    this->Set_res_count(res_count);
  }
  for( int i=0; i<res_count; i++ ) {
    typename TRAITS::ELEM_TYPE elem;
    read_from_buffer(ib, elem);
    this->Set_res(i, elem);
  }
  // operands
  INT32 opnd_count = TRAITS::RHS_COUNT;
  if( opnd_count == -1 ) {
    // variable length, read length at first
    read_from_buffer(ib, opnd_count);
    this->Set_opnd_count(opnd_count);
  }
  for( int i=0; i<opnd_count; i++ ) {
    typename TRAITS::ELEM_TYPE elem;
    read_from_buffer(ib, elem);
    this->Set_opnd(i, elem);
  }
}

template<typename _Tp>
void SSA_GENERIC_LIST<_Tp>::Write_to_file(Output_File *fl) const
{
  write_to_file(fl, (INT32)this->WN_map_idx());
  write_to_file(fl, this->Get_list());
}

template<typename _Tp>
void SSA_GENERIC_LIST<_Tp>::Read_from_buffer(Input_Buffer *ib)
{
  INT32 map_idx;
  read_from_buffer(ib, map_idx);
  this->Set_WN_map_idx(map_idx);
  read_from_buffer(ib, this->Get_list());
}


/*=============================================================================
 *
 * rebuild internal MAP
 *
 *===========================================================================*/

// re-build the mapping from wn_idx to the elements in the table
template<typename TAB, typename MAP>
void build_map_from_table(const TAB& tab, MAP& map)
{
  for (INT32 i=0; i<tab.size(); i++) {
    map[tab[i].WN_map_idx()] = i;
  }
}

/*=============================================================================
 *
 * write/read driver
 *
 *===========================================================================*/

void
WHIRL_SSA_IO::Write_To_Output_File(Output_File *fl)
{
  write_to_file(fl, PHI_table());
  write_to_file(fl, CHI_table());
  write_to_file(fl, MU_table());
  write_to_file(fl, Field_table());
  write_to_file(fl, Vsym_table());
  write_to_file(fl, Sym_table());
  write_to_file(fl, WN_ver_map());
  write_to_file(fl, Label_PHI_map());

  write_to_file(fl, (INT32)Default_vsym());
  write_to_file(fl, (INT32)Return_vsym());
}

void 
WHIRL_SSA_IO::Get_SSA_From_File(char *base)
{
  Input_Buffer ib(base);
  read_from_buffer(&ib, PHI_table());
  read_from_buffer(&ib, CHI_table());
  read_from_buffer(&ib, MU_table());
  read_from_buffer(&ib, Field_table());
  read_from_buffer(&ib, Vsym_table());
  read_from_buffer(&ib, Sym_table());
  read_from_buffer(&ib, WN_ver_map());
  read_from_buffer(&ib, Label_PHI_map());

  INT32 data;
  read_from_buffer(&ib, data);
  Set_default_vsym((WSSA_ST_IDX)data);
  read_from_buffer(&ib, data);
  Set_return_vsym((WSSA_ST_IDX)data);

  // rebuild up the map
  build_map_from_table(PHI_table(), WN_PHI_map());
  build_map_from_table(CHI_table(), WN_CHI_map());
  build_map_from_table(MU_table(), WN_MU_map());

  // Set the SSA manager state
  Set_stat(STAT_OK);
}

} //end of namespace

