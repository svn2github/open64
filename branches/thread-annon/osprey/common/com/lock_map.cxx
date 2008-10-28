/*



*/

#include "defs.h"
#include "lock_map.h"
#include "errors.h"


LOCK_ATTRIBUTE_ENTRY* LOCK_ATTRIBUTE_COLLECT::New_attr_entry(UINT32 &index)
{
  LOCK_ATTRIBUTE_ENTRY* new_entry = &(Lock_Attribute_Entry_Table.New_entry(index));
    return new_entry;
}

mINT32 LOCK_ATTRIBUTE_COLLECT::Find_lock_st_idx(mINT32 var,mINT32 field_id)
{
  

  // for (unsigned i = 0, e = Lock_Attribute_Entry_Table.size(); i != e; ++i)
  //  {
  //    LOCK_ATTRIBUTE_ENTRY * entry = &(Lock_Attribute_Entry_Table[i]);
  //    if(entry->Is_guarded_by() &&  entry->Get_element1()->Get_st_idx() == var )
  //	return entry->Get_element2()->Get_st_idx();
  // }

  LOCK_ATTRIBUTE_ELEMENT el;
  el.Set_st_idx(var);
  el.Set_field_id(field_id);
  el.Set_flags(ELEMENT_IS_VARIABLE);
  ELE_ITER iter;
  iter = element_map.find(&el);
  if(iter != element_map.end())
    return iter->second->Get_st_idx();
  return 0;
}

LOCK_ATTRIBUTE_ELEMENT * LOCK_ATTRIBUTE_COLLECT::Find_lock_ty_idx(mINT32 ty_idx, mINT32 field_id)
{
  LOCK_ATTRIBUTE_ELEMENT el;
  el.Set_ty_idx(ty_idx);
  el.Set_field_id(field_id);
  el.Set_flags(ELEMENT_IS_TYPE);
  ELE_ITER iter;
  iter = element_map.find(&el);
  if(iter != element_map.end())
    return iter->second;
  return 0;
  
}

void LOCK_ATTRIBUTE_COLLECT::Init()
{
  for (unsigned i = 0, e = Lock_Attribute_Entry_Table.size(); i != e; ++i)
    {
      LOCK_ATTRIBUTE_ENTRY * entry = &(Lock_Attribute_Entry_Table[i]);
      LOCK_ATTRIBUTE_ELEMENT *el1 = entry->Get_element1();
      LOCK_ATTRIBUTE_ELEMENT *el2 = entry->Get_element2();
      element_map.insert(std::pair<LOCK_ATTRIBUTE_ELEMENT*,LOCK_ATTRIBUTE_ELEMENT*>(el1,el2));
    }

}

void LOCK_ATTRIBUTE_COLLECT::Print()
{
  //FmtAssert(_tracing==true,("_tracing should be set already"));
  unsigned int i;
  unsigned int e;
  for (i = 0, e = Lock_Attribute_Entry_Table.size(); i != e; ++i)
    {
      fprintf(TFile,"Entry  %d begin:\n",i);
      Print_entry(&(Lock_Attribute_Entry_Table[i]));
      fprintf(TFile,"Entry %d end\n",i);
      fprintf(TFile,"\n");
    }

  ELE_ITER iter;

  for(iter = element_map.begin(), i = 0;iter != element_map.end(); iter++,i++)
    {
      fprintf(TFile,"Entry  %d begin:\n",i);
      Print_element(iter->first);
      Print_element(iter->second);
      fprintf(TFile,"Entry %d end\n",i);
      fprintf(TFile,"\n");
    }

}    
      
void LOCK_ATTRIBUTE_COLLECT::Print_element(LOCK_ATTRIBUTE_ELEMENT* el)
{
  mINT32 st_ty_idx;
  mINT32 field;
  st_ty_idx = el->Is_st()? el->Get_st_idx():el->Get_ty_idx();
  field = el->Get_field_id();

  if(el->Is_st())
    {
      fprintf(TFile,"Variable: ");
      fprintf(TFile,"the variable ST  %d ,field_id=%d\n",
	      st_ty_idx, field);
    }
  else
    {
      fprintf(TFile,"Type: ");
      fprintf(TFile,"the Type TY_IDX  %d ,field_id=%d\n",
	      st_ty_idx, field);
    }
  
}

void LOCK_ATTRIBUTE_COLLECT::Print_entry(LOCK_ATTRIBUTE_ENTRY * entry)
{
  mINT32 flags = entry->Get_flags();
  mINT32 st1_ty_idx = 0;
  mINT32 st2_ty_idx = 0;
  mINT32 field1 = 0;
  mINT32 field2 = 0;
  switch(flags){
  case  ATTRIBUTE_IS_GUARDED_BY: {
    st1_ty_idx = entry->Get_element1()->Is_st()? entry->Get_element1()->Get_st_idx():entry->Get_element1()->Get_ty_idx();
    st2_ty_idx = entry->Get_element2()->Is_st()? entry->Get_element2()->Get_st_idx():entry->Get_element2()->Get_ty_idx();
    field1 = entry->Get_element1_field();
    field2 = entry->Get_element2_field();
    if(entry->Get_element1()->Is_st())
      {
	fprintf(TFile,"Variable: ");
	fprintf(TFile,"the variable ST  %d ,field_id=%d, is guarded by variable ST %d ,field_id = %d\n",
		st1_ty_idx, field1,st2_ty_idx,field2);
      }
    else
      {
	fprintf(TFile,"Type: ");
	fprintf(TFile,"the Type TY_IDX  %d ,field_id=%d, is guarded by Type TY_IDX %d ,field_id = %d\n",
		st1_ty_idx, field1,st2_ty_idx,field2);
      }
    
  }
    break;
  case  ATTRIBUTE_IS_POINT_TO_GUARDED_VAR:{
    st1_ty_idx = entry->Get_element1()->Get_st_idx();
    fprintf(TFile,"the ST %d is annotated as point_to_guarded_var\n",st1_ty_idx);
    break;
 }
  default:
    FmtAssert(FALSE,("unknown flags"));
  }
}

