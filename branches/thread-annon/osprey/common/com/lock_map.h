/*
  This file define basic data structure for saving lock-related attribute in Open64. 

*/

#ifndef lock_map_INCLUDED
#define lock_map_INCLUDED

#ifndef mempool_allocator_INCLUDED
#include "mempool_allocator.h"
#endif

#ifndef mempool_INCLUDED
#include "mempool.h" //for MEM_POOL in LOCK_ATTRIBUTE_COLLECT
#endif


#ifndef CXX_MEMORY_INCLUDED
#include "cxx_memory.h" //CXX_DELETE()  for reorder
#endif


//#include <vector>

#include "segmented_array.h"
#include <map>
#include "tracing.h"
/*
#ifndef cxx_template_INCLUDED
#include "cxx_template.h"
#endif // cxx_template_INCLUDED

#ifndef cxx_hash_INCLUDED
#include "cxx_hash.h"
#endif	// cxx_hash_INCLUDED
*/

/*
  This Data Structure define a single variable/type/function annotation represetation in the 
  compiler. 

 */
#define ELEMENT_IS_PU            0x00000001
#define ELEMENT_IS_VARIABLE       0x00000002
#define ELEMENT_IS_TYPE          0x00000004



struct LOCK_ATTRIBUTE_HEADER
{
  mUINT64 offset;           // offset from beginning of section
  mUINT64 size;             // size in bytes
  mUINT32 entsize;          // size of each entry
};



class LOCK_ATTRIBUTE_ELEMENT{

 public:
  union {
    mINT32 _st_idx; // idx to a the ST table, both for global and local variable
    mINT32 _ty_idx; // ty 
  }_st_ty_idx;

  BOOL   _is_st;
  mINT32 _field_id; // field_id information for struct access and struct type declaration
  mINT32 _flags;
 public:
  LOCK_ATTRIBUTE_ELEMENT()                         {_is_st = 0; _field_id = 0; _flags = 0;}

  void Init()                                    { _st_ty_idx._st_idx = 0; _is_st = 0; _field_id = 0; _flags = 0;}
  mINT32 Get_st_idx() const                      { return _st_ty_idx._st_idx;}
  void   Set_st_idx(mINT32 st_idx)               { _st_ty_idx._st_idx = st_idx; }
  mINT32 Get_ty_idx() const                      { return _st_ty_idx._ty_idx;}
  void   Set_ty_idx(mINT32 ty_idx)               { _st_ty_idx._ty_idx = ty_idx; }
  BOOL   Is_st() const                           { return _is_st; }
  void   Set_is_st()                             { _is_st = 1;}
  mINT32 Get_field_id()                          { return _field_id;}
  void   Set_field_id(mINT32 field_id)           { _field_id = field_id;}
  void   Set_flags(mINT32 flags)		                 { _flags |= flags;}
  mINT32 Get_flags()                             {return _flags;}
  BOOL   Is_pu() const		                 { return (_flags & ELEMENT_IS_PU);}
};


struct compare_element
{
    bool operator()(LOCK_ATTRIBUTE_ELEMENT* el1, LOCK_ATTRIBUTE_ELEMENT* el2) const
    {
      int flag1 = el1->Get_flags();
      int flag2 = el2->Get_flags();
      if(flag1 == flag2)
	if(flag1 == ELEMENT_IS_VARIABLE)
	  return el1->Get_st_idx() < el2->Get_st_idx();
	else
	  return el1->Get_ty_idx() < el2->Get_ty_idx();
      else
	return flag1 < flag2;
    }
};

/* Different kinds of Annotation Attributes*/
#define ATTRIBUTE_IS_GUARDED_BY          0x00000001
#define ATTRIBUTE_IS_GUARDED             0x00000002
#define ATTRIBUTE_IS_LOCKABLE            0x00000004
#define ATTRIBUTE_IS_UNLOCK              0x00000008
#define ATTRIBUTE_IS_EXCLUSIVE_LOCK      0x00000010
#define ATTRIBUTE_IS_POINT_TO_GUARDED_BY 0x00000020
#define ATTRIBUTE_IS_POINT_TO_GUARDED_VAR 0x00000040
#define ATTRIBUTE_IS_ACQUIRED_AFTER       0x00000080
#define ATTRIBUTE_IS_ACQUIRED_BEFORE       0x00000100

/*
  Since we need to store the LOCK attribute between variable, lock in the ELF file, Intially, the format is:
  ST(for varialbe) -> ST (for lock)
  ST(for class variable, field_id for field access) -> ST (for a lock which may be a field of a class)
  TY(for a class declaration, field_id for varialbe member)-> TY(for the same class declaration, field_id for lock member)
  We  the lock map table as 
*/


class LOCK_ATTRIBUTE_ENTRY{
 public:
  LOCK_ATTRIBUTE_ELEMENT  _element1;
  LOCK_ATTRIBUTE_ELEMENT  _element2;
  mINT32  _flags;
 public:
  LOCK_ATTRIBUTE_ENTRY(){
  }
  LOCK_ATTRIBUTE_ENTRY(LOCK_ATTRIBUTE_ELEMENT element1, LOCK_ATTRIBUTE_ELEMENT element2,mINT32 flags=0)
    {_element1 = element1; _element2 = element2; _flags = flags;}
  void Init(){ _element1.Init(); _element2.Init(); _flags = 0;}
  LOCK_ATTRIBUTE_ELEMENT* Get_element1()               { return &_element1;}
  void Set_element1(LOCK_ATTRIBUTE_ELEMENT element1)    { 
    //FmtAssert(_entry1 != NULL,("entry1 shouldn't be NULL"));
    _element1 = element1; }
  LOCK_ATTRIBUTE_ELEMENT* Get_element2()               { return &_element2;}
  void Set_element2(LOCK_ATTRIBUTE_ELEMENT element2)    { _element2 = element2; }

  void Set_element1_st_idx (mINT32 st_idx)         { _element1.Set_st_idx(st_idx);}
  void Set_element1_ty_idx (mINT32 ty_idx)         { _element1.Set_ty_idx(ty_idx);}
  void Set_element1_is_st ()            { _element1.Set_is_st();}

  mINT32 Get_element1_field ()       { return _element1.Get_field_id();}
  

  void Set_element1_field (mINT32 field_id)       { _element1.Set_field_id(field_id);}
  void Set_element1_flags (mINT32 flags)          { _element1.Set_flags(flags);}

  void Set_element2_st_idx(mINT32 st_idx)         { _element2.Set_st_idx(st_idx);}
  void Set_element2_ty_idx(mINT32 ty_idx)         { _element2.Set_ty_idx(ty_idx);}
  void Set_element2_is_st ()            { _element2.Set_is_st();}
  void Set_element2_field (mINT32 field_id)       { _element2.Set_field_id(field_id);}
  void Set_element2_flags (mINT32 flags)          { _element2.Set_flags(flags);}

  mINT32 Get_element2_field ()       { return _element2.Get_field_id();}


  void Set_is_guarded_by()                        { _flags |= ATTRIBUTE_IS_GUARDED_BY;}
  BOOL Is_guarded_by()                            { return _flags & ATTRIBUTE_IS_GUARDED_BY;}
  void Set_is_guarded()                           { _flags |= ATTRIBUTE_IS_GUARDED;}
  BOOL Is_guarded()                               { return _flags & ATTRIBUTE_IS_GUARDED;}
  
  void Set_is_point_to_guarded_by()                           { _flags |= ATTRIBUTE_IS_POINT_TO_GUARDED_BY;}
  BOOL Is_point_to_guarded_by()                               { return _flags & ATTRIBUTE_IS_POINT_TO_GUARDED_BY;}


  void Set_is_point_to_guarded_var()                           { _flags |= ATTRIBUTE_IS_POINT_TO_GUARDED_VAR;}
  BOOL Is_point_to_guarded_var()                               { return _flags & ATTRIBUTE_IS_POINT_TO_GUARDED_VAR;}

  
  void Set_is_acquired_after()                           { _flags |= ATTRIBUTE_IS_ACQUIRED_AFTER;}
  BOOL Is_acquired_after()                               { return _flags & ATTRIBUTE_IS_ACQUIRED_AFTER;}

  
  void Set_is_acquired_before()                           { _flags |= ATTRIBUTE_IS_ACQUIRED_BEFORE;}
  BOOL Is_acquired_before()                               { return _flags & ATTRIBUTE_IS_ACQUIRED_BEFORE;}

  void Set_is_lockable()                          { _flags |= ATTRIBUTE_IS_LOCKABLE;}
  BOOL Is_lockable()                              { return _flags & ATTRIBUTE_IS_LOCKABLE;}
  void Set_is_unlock()                            { _flags |= ATTRIBUTE_IS_UNLOCK;}
  BOOL Is_unlock()                                { return _flags & ATTRIBUTE_IS_UNLOCK;}
  void Set_is_exclusive_lock()                    { _flags |= ATTRIBUTE_IS_EXCLUSIVE_LOCK;}
  BOOL Is_exclusive_lock()                        { return _flags & ATTRIBUTE_IS_EXCLUSIVE_LOCK;}

  BOOL Get_flags()                                { return _flags;}
};

//typedef HASH_TABLE<const LOCK_ATTRIBUTE_ENTRY *, const LOCK_ATTRIBUTE_ENTRY*> LOCK_HASH_TABLE;

class LOCK_ATTRIBUTE_COLLECT{
 public:
  //  MEM_POOL * _mem;
  BOOL     _tracing;
  //  typedef mempool_allocator<LOCK_ATTRIBUTE_ENTRY*> LOCK_ATTRIBUTE_ENTRY_ALLOC;
  // typedef std::vector<LOCK_ATTRIBUTE_ENTRY*,LOCK_ATTRIBUTE_ENTRY_ALLOC>  LOCK_ATTR_VECT;
  //LOCK_ATTR_VECT  _lock_attribute;//store all the lock attribute pair
  //typedef S
  typedef SEGMENTED_ARRAY<LOCK_ATTRIBUTE_ENTRY>LOCK_ATTRIBUTE_ENTRY_TAB;
  LOCK_ATTRIBUTE_ENTRY_TAB Lock_Attribute_Entry_Table;  
  typedef mempool_allocator <std::pair<LOCK_ATTRIBUTE_ELEMENT*,LOCK_ATTRIBUTE_ELEMENT*> >ELEMENT_ALLOC;
  typedef std::map<LOCK_ATTRIBUTE_ELEMENT*, LOCK_ATTRIBUTE_ELEMENT*,compare_element, ELEMENT_ALLOC> ELEMENT_MAP;
  typedef std::map<LOCK_ATTRIBUTE_ELEMENT*, LOCK_ATTRIBUTE_ELEMENT*,compare_element, ELEMENT_ALLOC>::iterator ELE_ITER;

  ELEMENT_MAP element_map;
public:
 LOCK_ATTRIBUTE_COLLECT()
  {
    if (Get_Trace(TKIND_IR, TP_WGEN))
      _tracing = true;
   }
  BOOL                Tracing(void) const { return _tracing; }
  //  MEM_POOL*            Pool()              { return _mem; }
  LOCK_ATTRIBUTE_ENTRY *New_attr_entry(UINT32&index); 
  void Print();
  void Print_entry(LOCK_ATTRIBUTE_ENTRY*);
  void Print_element(LOCK_ATTRIBUTE_ELEMENT*);
  mINT32 Find_lock_st_idx(mINT32 var, mINT32 field_id);
  LOCK_ATTRIBUTE_ELEMENT * Find_lock_ty_idx(mINT32 ty_idx, mINT32 field_id);
  void Init();
  
};

//typedef SEGMENTED_ARRAY<LOCK_ATTRIBUTE_ENTRY>LOCK_ATTRIBUTE_ENTRY_TAB;
//extern LOCK_ATTRIBUTE_ENTRY_TAB Lock_Attribute_Entry_Table;

//inline LOCK_ATTRIBUTE_ENTRY&
//New_Lock_Attribute_Entry (UINT32 &index)
//{
//  return Lock_Attribute_Entry_Table.New_entry (index);
//}

//inline UINT
//Lock_Attribute_Entry_Size (void)  { return Lock_Attribute_Entry_Table.Size(); }

extern LOCK_ATTRIBUTE_COLLECT * lock_attr_collect;

#ifdef __cplusplus
extern "C"  {
#endif


extern BOOL Enable_Thread_Safety;

#ifdef __cplusplus
}
#endif

#endif /*lock_map_INCLUDED */
/*
  This file define basic data structure for saving lock-related attribute in Open64. 

*/

#ifndef lock_map_INCLUDED
#define lock_map_INCLUDED

#ifndef mempool_allocator_INCLUDED
#include "mempool_allocator.h"
#endif

#ifndef mempool_INCLUDED
#include "mempool.h" //for MEM_POOL in LOCK_ATTRIBUTE_COLLECT
#endif


#ifndef CXX_MEMORY_INCLUDED
#include "cxx_memory.h" //CXX_DELETE()  for reorder
#endif


//#include <vector>

#include "segmented_array.h"
#include <map>
#include "tracing.h"
/*
#ifndef cxx_template_INCLUDED
#include "cxx_template.h"
#endif // cxx_template_INCLUDED

#ifndef cxx_hash_INCLUDED
#include "cxx_hash.h"
#endif	// cxx_hash_INCLUDED
*/

/*
  This Data Structure define a single variable/type/function annotation represetation in the 
  compiler. 

 */
#define ELEMENT_IS_PU            0x00000001
#define ELEMENT_IS_VARIABLE       0x00000002
#define ELEMENT_IS_TYPE          0x00000004



struct LOCK_ATTRIBUTE_HEADER
{
  mUINT64 offset;           // offset from beginning of section
  mUINT64 size;             // size in bytes
  mUINT32 entsize;          // size of each entry
};



class LOCK_ATTRIBUTE_ELEMENT{

 public:
  union {
    mINT32 _st_idx; // idx to a the ST table, both for global and local variable
    mINT32 _ty_idx; // ty 
  }_st_ty_idx;

  BOOL   _is_st;
  mINT32 _field_id; // field_id information for struct access and struct type declaration
  mINT32 _flags;
 public:
  LOCK_ATTRIBUTE_ELEMENT()                         {_is_st = 0; _field_id = 0; _flags = 0;}

  void Init()                                    { _st_ty_idx._st_idx = 0; _is_st = 0; _field_id = 0; _flags = 0;}
  mINT32 Get_st_idx() const                      { return _st_ty_idx._st_idx;}
  void   Set_st_idx(mINT32 st_idx)               { _st_ty_idx._st_idx = st_idx; }
  mINT32 Get_ty_idx() const                      { return _st_ty_idx._ty_idx;}
  void   Set_ty_idx(mINT32 ty_idx)               { _st_ty_idx._ty_idx = ty_idx; }
  BOOL   Is_st() const                           { return _is_st; }
  void   Set_is_st()                             { _is_st = 1;}
  mINT32 Get_field_id()                          { return _field_id;}
  void   Set_field_id(mINT32 field_id)           { _field_id = field_id;}
  void   Set_flags(mINT32 flags)		                 { _flags |= flags;}
  mINT32 Get_flags()                             {return _flags;}
  BOOL   Is_pu() const		                 { return (_flags & ELEMENT_IS_PU);}
};


struct compare_element
{
    bool operator()(LOCK_ATTRIBUTE_ELEMENT* el1, LOCK_ATTRIBUTE_ELEMENT* el2) const
    {
      int flag1 = el1->Get_flags();
      int flag2 = el2->Get_flags();
      if(flag1 == flag2)
	if(flag1 == ELEMENT_IS_VARIABLE)
	  return el1->Get_st_idx() < el2->Get_st_idx();
	else
	  return el1->Get_ty_idx() < el2->Get_ty_idx();
      else
	return flag1 < flag2;
    }
};

/* Different kinds of Annotation Attributes*/
#define ATTRIBUTE_IS_GUARDED_BY          0x00000001
#define ATTRIBUTE_IS_GUARDED             0x00000002
#define ATTRIBUTE_IS_LOCKABLE            0x00000004
#define ATTRIBUTE_IS_UNLOCK              0x00000008
#define ATTRIBUTE_IS_EXCLUSIVE_LOCK      0x00000010
#define ATTRIBUTE_IS_POINT_TO_GUARDED_BY 0x00000020
#define ATTRIBUTE_IS_POINT_TO_GUARDED_VAR 0x00000040
#define ATTRIBUTE_IS_ACQUIRED_AFTER       0x00000080
#define ATTRIBUTE_IS_ACQUIRED_BEFORE       0x00000100

/*
  Since we need to store the LOCK attribute between variable, lock in the ELF file, Intially, the format is:
  ST(for varialbe) -> ST (for lock)
  ST(for class variable, field_id for field access) -> ST (for a lock which may be a field of a class)
  TY(for a class declaration, field_id for varialbe member)-> TY(for the same class declaration, field_id for lock member)
  We  the lock map table as 
*/


class LOCK_ATTRIBUTE_ENTRY{
 public:
  LOCK_ATTRIBUTE_ELEMENT  _element1;
  LOCK_ATTRIBUTE_ELEMENT  _element2;
  mINT32  _flags;
 public:
  LOCK_ATTRIBUTE_ENTRY(){
  }
  LOCK_ATTRIBUTE_ENTRY(LOCK_ATTRIBUTE_ELEMENT element1, LOCK_ATTRIBUTE_ELEMENT element2,mINT32 flags=0)
    {_element1 = element1; _element2 = element2; _flags = flags;}
  void Init(){ _element1.Init(); _element2.Init(); _flags = 0;}
  LOCK_ATTRIBUTE_ELEMENT* Get_element1()               { return &_element1;}
  void Set_element1(LOCK_ATTRIBUTE_ELEMENT element1)    { 
    //FmtAssert(_entry1 != NULL,("entry1 shouldn't be NULL"));
    _element1 = element1; }
  LOCK_ATTRIBUTE_ELEMENT* Get_element2()               { return &_element2;}
  void Set_element2(LOCK_ATTRIBUTE_ELEMENT element2)    { _element2 = element2; }

  void Set_element1_st_idx (mINT32 st_idx)         { _element1.Set_st_idx(st_idx);}
  void Set_element1_ty_idx (mINT32 ty_idx)         { _element1.Set_ty_idx(ty_idx);}
  void Set_element1_is_st ()            { _element1.Set_is_st();}

  mINT32 Get_element1_field ()       { return _element1.Get_field_id();}
  

  void Set_element1_field (mINT32 field_id)       { _element1.Set_field_id(field_id);}
  void Set_element1_flags (mINT32 flags)          { _element1.Set_flags(flags);}

  void Set_element2_st_idx(mINT32 st_idx)         { _element2.Set_st_idx(st_idx);}
  void Set_element2_ty_idx(mINT32 ty_idx)         { _element2.Set_ty_idx(ty_idx);}
  void Set_element2_is_st ()            { _element2.Set_is_st();}
  void Set_element2_field (mINT32 field_id)       { _element2.Set_field_id(field_id);}
  void Set_element2_flags (mINT32 flags)          { _element2.Set_flags(flags);}

  mINT32 Get_element2_field ()       { return _element2.Get_field_id();}


  void Set_is_guarded_by()                        { _flags |= ATTRIBUTE_IS_GUARDED_BY;}
  BOOL Is_guarded_by()                            { return _flags & ATTRIBUTE_IS_GUARDED_BY;}
  void Set_is_guarded()                           { _flags |= ATTRIBUTE_IS_GUARDED;}
  BOOL Is_guarded()                               { return _flags & ATTRIBUTE_IS_GUARDED;}
  
  void Set_is_point_to_guarded_by()                           { _flags |= ATTRIBUTE_IS_POINT_TO_GUARDED_BY;}
  BOOL Is_point_to_guarded_by()                               { return _flags & ATTRIBUTE_IS_POINT_TO_GUARDED_BY;}


  void Set_is_point_to_guarded_var()                           { _flags |= ATTRIBUTE_IS_POINT_TO_GUARDED_VAR;}
  BOOL Is_point_to_guarded_var()                               { return _flags & ATTRIBUTE_IS_POINT_TO_GUARDED_VAR;}

  
  void Set_is_acquired_after()                           { _flags |= ATTRIBUTE_IS_ACQUIRED_AFTER;}
  BOOL Is_acquired_after()                               { return _flags & ATTRIBUTE_IS_ACQUIRED_AFTER;}

  
  void Set_is_acquired_before()                           { _flags |= ATTRIBUTE_IS_ACQUIRED_BEFORE;}
  BOOL Is_acquired_before()                               { return _flags & ATTRIBUTE_IS_ACQUIRED_BEFORE;}

  void Set_is_lockable()                          { _flags |= ATTRIBUTE_IS_LOCKABLE;}
  BOOL Is_lockable()                              { return _flags & ATTRIBUTE_IS_LOCKABLE;}
  void Set_is_unlock()                            { _flags |= ATTRIBUTE_IS_UNLOCK;}
  BOOL Is_unlock()                                { return _flags & ATTRIBUTE_IS_UNLOCK;}
  void Set_is_exclusive_lock()                    { _flags |= ATTRIBUTE_IS_EXCLUSIVE_LOCK;}
  BOOL Is_exclusive_lock()                        { return _flags & ATTRIBUTE_IS_EXCLUSIVE_LOCK;}

  BOOL Get_flags()                                { return _flags;}
};

//typedef HASH_TABLE<const LOCK_ATTRIBUTE_ENTRY *, const LOCK_ATTRIBUTE_ENTRY*> LOCK_HASH_TABLE;

class LOCK_ATTRIBUTE_COLLECT{
 public:
  //  MEM_POOL * _mem;
  BOOL     _tracing;
  //  typedef mempool_allocator<LOCK_ATTRIBUTE_ENTRY*> LOCK_ATTRIBUTE_ENTRY_ALLOC;
  // typedef std::vector<LOCK_ATTRIBUTE_ENTRY*,LOCK_ATTRIBUTE_ENTRY_ALLOC>  LOCK_ATTR_VECT;
  //LOCK_ATTR_VECT  _lock_attribute;//store all the lock attribute pair
  //typedef S
  typedef SEGMENTED_ARRAY<LOCK_ATTRIBUTE_ENTRY>LOCK_ATTRIBUTE_ENTRY_TAB;
  LOCK_ATTRIBUTE_ENTRY_TAB Lock_Attribute_Entry_Table;  
  typedef mempool_allocator <std::pair<LOCK_ATTRIBUTE_ELEMENT*,LOCK_ATTRIBUTE_ELEMENT*> >ELEMENT_ALLOC;
  typedef std::map<LOCK_ATTRIBUTE_ELEMENT*, LOCK_ATTRIBUTE_ELEMENT*,compare_element, ELEMENT_ALLOC> ELEMENT_MAP;
  typedef std::map<LOCK_ATTRIBUTE_ELEMENT*, LOCK_ATTRIBUTE_ELEMENT*,compare_element, ELEMENT_ALLOC>::iterator ELE_ITER;

  ELEMENT_MAP element_map;
public:
 LOCK_ATTRIBUTE_COLLECT()
  {
    if (Get_Trace(TKIND_IR, TP_WGEN))
      _tracing = true;
   }
  BOOL                Tracing(void) const { return _tracing; }
  //  MEM_POOL*            Pool()              { return _mem; }
  LOCK_ATTRIBUTE_ENTRY *New_attr_entry(UINT32&index); 
  void Print();
  void Print_entry(LOCK_ATTRIBUTE_ENTRY*);
  void Print_element(LOCK_ATTRIBUTE_ELEMENT*);
  mINT32 Find_lock_st_idx(mINT32 var, mINT32 field_id);
  LOCK_ATTRIBUTE_ELEMENT * Find_lock_ty_idx(mINT32 ty_idx, mINT32 field_id);
  void Init();
  
};

//typedef SEGMENTED_ARRAY<LOCK_ATTRIBUTE_ENTRY>LOCK_ATTRIBUTE_ENTRY_TAB;
//extern LOCK_ATTRIBUTE_ENTRY_TAB Lock_Attribute_Entry_Table;

//inline LOCK_ATTRIBUTE_ENTRY&
//New_Lock_Attribute_Entry (UINT32 &index)
//{
//  return Lock_Attribute_Entry_Table.New_entry (index);
//}

//inline UINT
//Lock_Attribute_Entry_Size (void)  { return Lock_Attribute_Entry_Table.Size(); }

extern LOCK_ATTRIBUTE_COLLECT * lock_attr_collect;

#ifdef __cplusplus
extern "C"  {
#endif


extern BOOL Enable_Thread_Safety;

#ifdef __cplusplus
}
#endif

#endif /*lock_map_INCLUDED */
