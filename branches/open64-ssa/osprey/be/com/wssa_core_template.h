#ifndef WSSA_CORE_TEMPLATE_INCLUDED
#define WSSA_CORE_TEMPLATE_INCLUDED

#include <stdio.h>
#include <vector>
#include <list>
#include <iterator>
#include <ext/hash_map>
using __gnu_cxx::hash_map;
#include "mempool_allocator.h"
#include "wssa_defs.h"
#include "wssa_utils.h"
#include "errors.h"

typedef struct output_file Output_File;

namespace WSSA {
struct Input_Buffer;

// FIXED_ARRAY
// wrapper of array with similar interface as std::vector
template <typename _Tp, size_t elem_count>
struct FIXED_ARRAY {
private:
  _Tp _item[elem_count];

public:
  enum { ELEM_COUNT = elem_count };
  size_t size() const { return ELEM_COUNT; }
  void resize(size_t sz) {
    Is_True(sz == ELEM_COUNT, ("error resize"));
  }
  const _Tp& operator [] (size_t index) const {
    Is_True(index >=0 && index < ELEM_COUNT, ("out of bounds"));
    return _item[index];
  }
  _Tp& operator [] (size_t index) {
    Is_True(index >=0 && index < ELEM_COUNT, ("out of bounds"));
    return _item[index];
  }
  void push_back(const _Tp& v) {
    FmtAssert(FALSE, ("no push_back operation"));
  }
};

// specialized FIXED_ARRAY without element
// wrapper of array with similar interface as std::vector
template <typename _Tp>
struct FIXED_ARRAY <_Tp, 0> {
  // no elements
public:
  enum { ELEM_COUNT = 0 };
  size_t size() const { return ELEM_COUNT; }
  void resize(size_t sz) {
    Is_True(sz == ELEM_COUNT, ("error resize"));
  }
  const _Tp& operator [] (size_t index) const {
    FmtAssert(FALSE, ("no elements"));
    return *(_Tp*)NULL;
  }
  _Tp& operator [] (size_t index) {
    FmtAssert(FALSE, ("no elements"));
    return *(_Tp*)NULL;
  }
  void push_back(const _Tp& v) {
    FmtAssert(FALSE, ("no push_back operation"));
  }
};

// generic node for all kinds of ssa nodes
template <typename _TRAITS>
class SSA_GENERIC_NODE {
public:
  typedef _TRAITS  NODE_TRAITS;

private:
  /* properties */
  WSSA_ST_IDX _wst_idx;
  typename NODE_TRAITS::RES_TYPE  _res;
  typename NODE_TRAITS::OPND_TYPE _opnd;

protected:
  // only available for phi node
  void Add_opnd(VER_NUM opnd)          { _opnd.push_back(opnd); }

public:
  /* methods */
  WSSA_ST_IDX WST_idx() const          { return _wst_idx;       }
  void Set_WST_idx(WSSA_ST_IDX idx)    { _wst_idx = idx;        }

  INT32 Res_count() const              { return _res.size();    }
  void  Set_res_count(INT32 count)     { _res.resize(count);    }
  VER_NUM Get_res(int idx) const       { return _res[idx];      }
  void Set_res(int idx, VER_NUM res)   { 
    Is_True(idx >= 0 && idx < Res_count(), ("Invalid Res index"));
    _res[idx] = res;
  }

  INT32 Opnd_count() const             { return _opnd.size();   }
  void Set_opnd_count(INT32 count)     { _opnd.resize(count);   }
  VER_NUM Get_opnd(int idx) const      { return _opnd[idx];     }
  void Set_opnd(int idx, VER_NUM opnd) { 
    Is_True(idx >= 0 && idx < Opnd_count(), ("Invalid Opnd index"));
    _opnd[idx] = opnd;
  }

public:
  /* dump methods */
  void Print(FILE* fp, int indent) const {
    Put_indent(fp, indent);
    const char* name = Get_WST_name( WST_idx() );
    if (Res_count() > 0) {
      FmtAssert(Res_count() == 1, ("res count > 1"));
      fprintf(fp, "%sv%d = ", name, Get_res(0));
    }
    fprintf(fp, "%s(", WSSA_node_name(NODE_TRAITS::NODE_KIND));
    int i;
    for (i=0; i<Opnd_count() - 1; i++) {
      fprintf(fp, "%sv%d, ", name, Get_opnd(i));
    }
    if (i<Opnd_count()) {
      fprintf(fp, "%sv%d)\n", name, Get_opnd(i));
    }
    else {
      fprintf(fp, ")\n");
    }
  }
  void Print(FILE* fp = stdout) const {
    Print(fp, 0);
  }
  void Verify() const {
    VER_NUM max_ver = Get_WST_max_ver(WST_idx());
    const char* name = Get_WST_name(WST_idx());
    int i;
    for (i=0; i<Res_count(); i++) {
      FmtAssert(Get_res(i) >= 0 && Get_res(i) < max_ver,
                ("%s node, %s res(%d) > max_ver(%d)",
                 NODE_TRAITS::NODE_NAME, name, Get_res(i), max_ver));
    }
    for (i=0; i<Opnd_count(); i++) {
      FmtAssert(Get_opnd(i) >= 0 && Get_opnd(i) < max_ver,
                ("%s node, %s opnd_%d(%d) > max_ver(%d)",
                 NODE_TRAITS::NODE_NAME, name, i, Get_opnd(i), max_ver));
    }
  }

public:
  /* I/O routines */
  void Read_from_buffer(Input_Buffer *ib);
  void Write_to_file(Output_File *fl) const;
}; /* SSA_GENERIC_NODE */

template <typename _Tp>
class SSA_GENERIC_LIST {
public:
  typedef _Tp NODE_TYPE;
  typedef std::vector<NODE_TYPE> LIST_TYPE;
  typedef typename LIST_TYPE::iterator iterator;
  typedef typename LIST_TYPE::const_iterator const_iterator;

private:
  WSSA_WN_IDX _wn_map_idx;
  LIST_TYPE _list;

public:
  WSSA_WN_IDX& WN_map_idx()             { return _wn_map_idx;    }
  WSSA_WN_IDX WN_map_idx() const        { return _wn_map_idx;    }
  void Set_WN_map_idx(WSSA_WN_IDX idx)  { _wn_map_idx = idx;     }

  const LIST_TYPE& Get_list() const     { return _list;          }
  LIST_TYPE& Get_list()                 { return _list;          }
  void  Add_node(const NODE_TYPE& node) { _list.push_back(node); }

  iterator begin()                      { return _list.begin();  }
  iterator end()                        { return _list.end();    }
  const_iterator begin() const          { return _list.begin();  }
  const_iterator end() const            { return _list.end();    }
  size_t size() const                   { return _list.size();   }
  bool empty() const                    { return _list.empty();  }

public:
  void Print(FILE* fp, int indent) const {
    Put_indent(fp, indent);
    fprintf(fp, "WN[%d]: ", WN_map_idx());
    for (const_iterator it = begin(); it != end(); it++) {
      it->Print(fp, indent+1);
      it++;
    }
  }
  void Print(FILE* fp = stdout) const {
    Print(fp, 0);
  }
  void Verify() const {
    for (const_iterator it = begin(); it != end(); it++) {
      it->Verify();
    }
  }

public:
  /* I/O routines */
  void Read_from_buffer(Input_Buffer *ib);
  void Write_to_file(Output_File *fl) const;
}; /* SSA_GENERIC_LIST */

} /* namespace WSSA */


#endif /* WSSA_CORE_TEMPLATE_INCLUDED */
