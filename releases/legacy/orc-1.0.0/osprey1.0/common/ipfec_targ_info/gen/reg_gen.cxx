/*
  Copyright (C) 2000-2002, Intel Corporation
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:
  
  Redistributions of source code must retain the above copyright notice, this list
  of conditions and the following disclaimer. 
  
  Redistributions in binary form must reproduce the above copyright notice, this list
  of conditions and the following disclaimer in the documentation and/or other materials
  provided with the distribution. 

  Neither the name of the owner nor the names of its contributors may be used to endorse or
  promote products derived from this software without specific prior written permission. 

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//-*-c++-*-

//*********************************************************************
//
// Module: reg_gen.cxx
// $Date: 2005/10/21 19:00:00 $
// $Author: marcel $
// $Source: /proj/osprey/CVS/open64/osprey1.0/common/ipfec_targ_info/gen/reg_gen.cxx,v $
//
// Description:
//   Generate the definition of registers.
//
//*********************************************************************

#include "reg_gen.h"

static const char reg_descript[]=
"/* ====================================================================\n\
 * ====================================================================\n\
 *\n\
 * Description:\n\
 *\n\
 *   A description of the ISA registers. The description exports\n\
 *   the following:\n\
 *\n\
 *   typedef (enum) ISA_REGISTER_CLASS\n\
 *       An enumeration of the register classes.\n\
 *\n\
 *   typedef mISA_REGISTER_CLASS\n\
 *       The most compact (integral) representation that can hold\n\
 *       all values of ISA_REGISTER_CLASS\n\
 *\n\
 *   typedef (struct) ISA_REGISTER_CLASS_INFO\n\
 *       Describes a particular register class. The contents are private.\n\
 *\n\
 *   const INT ISA_REGISTER_CLASS_UNDEFINED\n\
 *       A special register class that is out-of-range of valid\n\
 *       register clases.\n\
 *\n\
 *   const INT ISA_REGISTER_CLASS_MIN\n\
 *       The first register class. The range of register classes\n\
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX\n\
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * \n\
 *   const INT ISA_REGISTER_CLASS_MAX\n\
 *       The last register class. The range of register classes\n\
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX\n\
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * \n\
 *   const INT ISA_REGISTER_CLASS_COUNT\n\
 *       The number of register classes. The range of register classes\n\
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX\n\
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * \n\
 *   (macro) FOR_ALL_ISA_REGISTER_CLASS(cl)\n\
 *       Iterate over all the register class values using the\n\
 *       ISA_REGISTER_CLASS variable <cl>.\n\
 *\n\
 *   (macro) FOR_ALL_ISA_REGISTER_CLASS_IN_REVERSE(cl)\n\
 *       Iterate over all the register class values in reverse order using\n\
 *       the ISA_REGISTER_CLASS variable <cl>.\n\
 *\n\
 *   const INT ISA_REGISTER_MAX\n\
 *       The maximum (highest) register number of all classes.\n\
 *       NOTE: the lowest number register is implicitly 0.\n\
 *\n\
 *   typedef (enum) ISA_REGISTER_SUBCLASS\n\
 *       An enumeration of the register subclasses.\n\
 *\n\
 *   typedef mISA_REGISTER_SUBCLASS\n\
 *       The most compact (integral) representation that can hold\n\
 *       all values of ISA_REGISTER_SUBCLASS\n\
 *\n\
 *   typedef (struct) ISA_REGISTER_SUBCLASS_INFO\n\
 *       Describes a particular register subclass. The contents are private.\n\
 *\n\
 *   const INT ISA_REGISTER_SUBCLASS_UNDEFINED\n\
 *       A special register subclass that is out-of-range of valid\n\
 *       register subclases.\n\
 *\n\
 *   const INT ISA_REGISTER_SUBCLASS_MIN\n\
 *       The first register subclass. The range of register subclasses\n\
 *       is ISA_REGISTER_SUBCLASS_MIN..ISA_REGISTER_SUBCLASS_MAX\n\
 * \n\
 *   const INT ISA_REGISTER_SUBCLASS_MAX\n\
 *       The last register subclass. The range of register subclasses\n\
 *       is ISA_REGISTER_SUBCLASS_MIN..ISA_REGISTER_SUBCLASS_MAX\n\
 * \n\
 *   const INT ISA_REGISTER_SUBCLASS_COUNT\n\
 *       The number of register subclasses.\n\
 * \n\
 *   (macro) FOR_ALL_ISA_REGISTER_SUBCLASS(sc)\n\
 *       Iterate over all the register subclass values using the\n\
 *       the ISA_REGISTER_SUBCLASS variable <sc>.\n\
 *\n\
 *   const ISA_REGISTER_CLASS_INFO *ISA_REGISTER_CLASS_Info(\n\
 *     ISA_REGISTER_CLASS rc\n\
 *   )\n\
 *       Return a pointer to the register class info for class 'rc'.\n\
 *\n\
 *   INT ISA_REGISTER_CLASS_INFO_First_Reg(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Get the first (lowest numbered) register for the class\n\
 *       described by 'info'.\n\
 *\n\
 *   INT ISA_REGISTER_CLASS_INFO_Last_Reg(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Get the last (highest numbered) register for the class\n\
 *       described by 'info'.\n\
 *\n\
 *   INT ISA_REGISTER_CLASS_INFO_Bit_Size(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Get the size, in bits, of the register in the class\n\
 *       described by 'info'.\n\
 *\n\
 *   BOOL ISA_REGISTER_CLASS_INFO_Can_Store(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Return a flag that indicates if the registers in the class\n\
 *       described by 'info' can be stored to memory, i.e. there\n\
 *       is a store instruction for the registers in the class.\n\
 *\n\
 *   BOOL ISA_REGISTER_CLASS_INFO_Multiple_Save(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Return a flag that indicates if the registers in the class\n\
 *       described by 'info' can be saved and restore to memory in\n\
 *       multiples, i.e. as a group.\n\
 *\n\
 *   const char *ISA_REGISTER_CLASS_INFO_Name(\n\
 *     const ISA_REGISTER_CLASS_INFO *info\n\
 *   )\n\
 *       Return the name of the class described by 'info'.\n\
 *\n\
 *   const char *ISA_REGISTER_CLASS_INFO_Reg_Name(\n\
 *     const ISA_REGISTER_CLASS_INFO *info,\n\
 *     INT reg_index\n\
 *   )\n\
 *       Return the name of the 'reg_index'th register in the\n\
 *       class described by 'info'. NOTE: reg_index==0 corresponds\n\
 *       to the first register of the class.\n\
 *\n\
 *   const ISA_REGISTER_SUBCLASS_INFO *ISA_REGISTER_SUBCLASS_Info(\n\
 *     ISA_REGISTER_SUBCLASS sc\n\
 *   )\n\
 *\n\
 *       Return a pointer to the register subclass info for the\n\
 *       subclass 'sc'.\n\
 *\n\
 *   const char *ISA_REGISTER_SUBCLASS_INFO_Name(\n\
 *     const ISA_REGISTER_SUBCLASS_INFO *info\n\
 *   )\n\
 *\n\
 *       Return the name of the subclass described by 'info'.\n\
 *\n\
 *   ISA_REGISTER_CLASS ISA_REGISTER_SUBCLASS_INFO_Class(\n\
 *     const ISA_REGISTER_SUBCLASS_INFO *info\n\
 *   )\n\
 *\n\
 *       Return the base register class for the subclass described\n\
 *       by 'info'.\n\
 *\n\
 *   INT ISA_REGISTER_SUBCLASS_INFO_Count(\n\
 *     const ISA_REGISTER_SUBCLASS_INFO *info\n\
 *   )\n\
 *\n\
 *       Return the number of registers in the subclass described\n\
 *       by 'info'.\n\
 *\n\
 *   UINT ISA_REGISTER_SUBCLASS_INFO_Member(\n\
 *     const ISA_REGISTER_SUBCLASS_INFO *info,\n\
 *     INT n\n\
 *   )\n\
 *\n\
 *       Return the 'n'th member (register) of the subclass described\n\
 *       by 'info'. The order of the registers returned is arbitrary.\n\
 *\n\
 *   const char *ISA_REGISTER_SUBCLASS_INFO_Reg_Name(\n\
 *     const ISA_REGISTER_SUBCLASS_INFO *info,\n\
 *     INT index\n\
 *   )\n\
 *\n\
 *       Return the 'n'th member's register name of the subclass\n\
 *       described by 'info'. If the member does not have a subclass\n\
 *       specific name, NULL is returned.\n\
 *\n\
 *   void ISA_REGISTER_Initialize(void)\n\
 *       Initialize the register package for use with the ISA specified\n\
 *       by ISA_SUBSET_Value.\n\
 *\n\
 * ====================================================================\n\
 * ====================================================================\n\
 */";


static const char reg_class_iter[]= "\
typedef mUINT8 mISA_REGISTER_CLASS;\n\
\n\
#define FOR_ALL_ISA_REGISTER_CLASS(cl) \\\n\
	for (cl = ISA_REGISTER_CLASS_MIN; \\\n\
	     cl <= ISA_REGISTER_CLASS_MAX; \\\n\
	     cl = (ISA_REGISTER_CLASS)(cl + 1))\n\
\n\
#define FOR_ALL_ISA_REGISTER_CLASS_IN_REVERSE(cl) \\\n\
	for (cl = ISA_REGISTER_CLASS_MAX; \\\n\
	     cl >= ISA_REGISTER_CLASS_MIN; \\\n\
	     cl = (ISA_REGISTER_CLASS)(cl - 1))\n\
\n\
typedef struct {\n\
  mUINT8 isa_mask;\n\
  mUINT8 min_regnum;\n\
  mUINT8 max_regnum;\n\
  mUINT8 bit_size;\n\
  mBOOL can_store;\n\
  mBOOL multiple_save;\n\
  const char *name;\n\
  const char *reg_name[ISA_REGISTER_MAX+1];\n\
} ISA_REGISTER_CLASS_INFO;\n\n";
	
static const char reg_subclass_query[]="\
typedef mUINT8 mISA_REGISTER_SUBCLASS;\n\
\n\
#define FOR_ALL_ISA_REGISTER_SUBCLASS(sc) \\\n\
	for (sc = ISA_REGISTER_SUBCLASS_MIN; \\\n\
	     sc <= ISA_REGISTER_SUBCLASS_MAX; \\\n\
	     sc = (ISA_REGISTER_SUBCLASS)(sc + 1))\n\
\n\
typedef struct {\n\
  const char *name;\n\
  mISA_REGISTER_CLASS rclass;\n\
  mUINT8 count;\n\
  mUINT8 members[ISA_REGISTER_MAX+1];\n\
  const char *reg_name[ISA_REGISTER_MAX+1];\n\
} ISA_REGISTER_SUBCLASS_INFO;\n\
\n\
inline const ISA_REGISTER_CLASS_INFO *ISA_REGISTER_CLASS_Info(\n\
  ISA_REGISTER_CLASS rc\n\
)\n\
{\n\
  extern const ISA_REGISTER_CLASS_INFO ISA_REGISTER_CLASS_info[];\n\
  extern mUINT8 ISA_REGISTER_CLASS_info_index[];\n\
  INT index = ISA_REGISTER_CLASS_info_index[(INT)rc];\n\
  return &ISA_REGISTER_CLASS_info[index];\n\
}\n\
\n\
inline INT ISA_REGISTER_CLASS_INFO_First_Reg(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->min_regnum;\n\
}\n\
\n\
inline INT ISA_REGISTER_CLASS_INFO_Last_Reg(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->max_regnum;\n\
}\n\
\n\
inline INT ISA_REGISTER_CLASS_INFO_Bit_Size(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->bit_size;\n\
}\n\
\n\
inline BOOL ISA_REGISTER_CLASS_INFO_Can_Store(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->can_store;\n\
}\n\
\n\
inline BOOL ISA_REGISTER_CLASS_INFO_Multiple_Save(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->multiple_save;\n\
}\n\
\n\
inline const char *ISA_REGISTER_CLASS_INFO_Name(\n\
  const ISA_REGISTER_CLASS_INFO *info\n\
)\n\
{\n\
  return info->name;\n\
}\n\
\n\
inline const char *ISA_REGISTER_CLASS_INFO_Reg_Name(\n\
  const ISA_REGISTER_CLASS_INFO *info,\n\
  INT reg_index\n\
)\n\
{\n\
  return info->reg_name[reg_index];\n\
}\n\
\n\
inline const ISA_REGISTER_SUBCLASS_INFO *ISA_REGISTER_SUBCLASS_Info(\n\
  ISA_REGISTER_SUBCLASS sc\n\
)\n\
{\n\
  extern const ISA_REGISTER_SUBCLASS_INFO ISA_REGISTER_SUBCLASS_info[];\n\
  return &ISA_REGISTER_SUBCLASS_info[sc];\n\
}\n\
\n\
inline const char *ISA_REGISTER_SUBCLASS_INFO_Name(\n\
  const ISA_REGISTER_SUBCLASS_INFO *info\n\
)\n\
{\n\
  return info->name;\n\
}\n\
\n\
inline ISA_REGISTER_CLASS ISA_REGISTER_SUBCLASS_INFO_Class(\n\
  const ISA_REGISTER_SUBCLASS_INFO *info\n\
)\n\
{\n\
  return (ISA_REGISTER_CLASS)info->rclass;\n\
}\n\
\n\
inline INT ISA_REGISTER_SUBCLASS_INFO_Count(\n\
  const ISA_REGISTER_SUBCLASS_INFO *info\n\
)\n\
{\n\
  return info->count;\n\
}\n\
\n\
inline UINT ISA_REGISTER_SUBCLASS_INFO_Member(\n\
  const ISA_REGISTER_SUBCLASS_INFO *info,\n\
  INT n\n\
)\n\
{\n\
  return info->members[n];\n\
}\n\
\n\
inline const char *ISA_REGISTER_SUBCLASS_INFO_Reg_Name(\n\
  const ISA_REGISTER_SUBCLASS_INFO *info,\n\
  INT n\n\
)\n\
{\n\
  return info->reg_name[n];\n\
}\n\
\n\
extern void ISA_REGISTER_Initialize(void);\n";

static const char init_reg_func[]= "\
void ISA_REGISTER_Initialize(void)\n\
{\n\
  INT rc;\n\
  INT mask = 1 << (INT)ISA_SUBSET_Value;\n\
  for (rc = ISA_REGISTER_CLASS_MIN; rc <= ISA_REGISTER_CLASS_MAX; ++rc) {\n\
    INT i = ISA_REGISTER_CLASS_info_index[rc];\n\
    const ISA_REGISTER_CLASS_INFO *info = &ISA_REGISTER_CLASS_info[i];\n\
    while ((info->isa_mask & mask) == 0) ++info, ++i;\n\
    ISA_REGISTER_CLASS_info_index[rc] = i;\n\
  }\n\
}\n";


static const char abi_descript[]= "\
/* ====================================================================\n\
 * ====================================================================\n\
 *\n\
 * Description:\n\
 *\n\
 *   A description of the ABI properties. The description exports\n\
 *   the following:\n\
 *\n\
 *   typedef (enum) ABI_PROPERTIES_ABI\n\
 *\n\
 *       An enumeration of the ABIs described. The names have the form:\n\
 *\n\
 *          ABI_PROPERTIES_ABI_xxx\n\
 *\n\
 *       where 'xxx' is replaced with the ABI name.\n\
 *\n\
 *   const ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_UNDEFINED\n\
 *       Useful value guaranteed not to be a valid ABI_PROPERTIES_ABI.\n\
 *\n\
 *   ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value\n\
 *       A variable containing the current ABI value.\n\
 *\n\
 *   const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi)\n\
 *      Returns a name for the given 'abi'.\n\
 *\n\
 *   void ABI_PROPERTIES_Initialize(void)\n\
 *       Initialize for the target ABI specified by ABI_PROPERTIES_ABI_Value.\n\
 *\n\
 *   const char *ABI_PROPERTY_Reg_Name(\n\
 *     ISA_REGISTER_CLASS rc,\n\
 *     INT reg\n\
 *   )\n\
 *       Return the ABI specific name of register 'reg' in class 'rc'.\n\
 *\n\
 *   BOOL ABI_PROPERTY_Is_xxx(\n\
 *     ISA_REGISTER_CLASS rc,\n\
 *     INT reg\n\
 *   )\n\
 *       Return a boolean that indicates if register 'reg' in class\n\
 *       'rc' had the property 'xxx'.\n\
 *\n\
 * ====================================================================\n\
 * ====================================================================\n\
 */\n";

static const char abi_common[]="\
extern ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value;\n\
\n\
extern const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi);\n\
\n\
extern void ABI_PROPERTIES_Initialize(void);\n\
\n\
inline const char *ABI_PROPERTY_Reg_Name(\n\
  ISA_REGISTER_CLASS rc,\n\
  INT reg)\n\
{\n\
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;\n\
  return ABI_PROPERTIES_target_props->reg_names[rc][reg];\n\
}\n\n";

const char abi_com_func[]="\
ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value = ABI_PROPERTIES_ABI_UNDEFINED;\n\
\n\
const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi)\n\
{\n\
  return abi_names[(INT)abi];\n\
}\n\
\n\
const ABI_PROPERTIES *ABI_PROPERTIES_target_props = &abi_properties[ABI_PROPERTIES_ABI_UNDEFINED];\n\
\n\
void ABI_PROPERTIES_Initialize(void)\n\
{\n\
  ABI_PROPERTIES_target_props = &abi_properties[(INT)ABI_PROPERTIES_ABI_Value];\n\
}\n";


void Register_Generator(void *pknobs, GEN_MODE mode)
{


  FILE *c_file, *h_file, *export_file;
  int reg_class_count = EKAPI_RegClassCount(pknobs);
  int index;
  int max_reg_count = 0;
  EKAPI_REGISTER_CLASS_INFO *reg_class_info = (EKAPI_REGISTER_CLASS_INFO*)
      malloc(reg_class_count*sizeof(EKAPI_REGISTER_CLASS_INFO));

  for (index=0; index<reg_class_count; index++){
    EKAPI_RegStruct4id(pknobs, &reg_class_info[index], index);
    if (EKAPI_GetRegMaxNum(&reg_class_info[index]) > max_reg_count){
      max_reg_count = EKAPI_GetRegMaxNum(&reg_class_info[index]);
    }
  }

  // ===============================================================
  // Block Generating targ_isa_registers.*

  Init_Module_Files(mode, "targ_isa_registers", &c_file, &h_file,
                    &export_file);
  Emit_Header(h_file, "targ_isa_registers", reg_descript);
  fprintf(h_file, "#include \"targ_isa_subset.h\"\n\n");
  fprintf(c_file, "#include \"targ_isa_subset.h\"\n");
  fprintf(c_file, "#include \"targ_isa_registers.h\"\n\n");

  fprintf(h_file, "\n#define ISA_REGISTER_FIRST (%d)\n", 0);
  fprintf(h_file, "#define ISA_REGISTER_MAX (%d)\n\n", max_reg_count);

  ///////////////////////////////////////////////////////////////////
  // Emit enum of register class
  fprintf(h_file, "typedef enum {\n  ISA_REGISTER_CLASS_UNDEFINED,\n");
  for (index=0; index<reg_class_count; index++){
    fprintf(h_file, "  ISA_REGISTER_CLASS_%s,\n",
            EKAPI_GetRegClassName(&reg_class_info[index]));
  }
  fprintf(h_file, "  ISA_REGISTER_CLASS_MIN = ISA_REGISTER_CLASS_%s,\n",
          EKAPI_GetRegClassName(&reg_class_info[0]));
  fprintf(h_file, "  ISA_REGISTER_CLASS_MAX = ISA_REGISTER_CLASS_%s,\n",
          EKAPI_GetRegClassName(&reg_class_info[reg_class_count-1]));
  fprintf(h_file, "  ISA_REGISTER_CLASS_COUNT = ISA_REGISTER_CLASS_MAX - ISA_REGISTER_CLASS_MIN + 1\n");
  fprintf(h_file, "} ISA_REGISTER_CLASS;\n\n");

  fprintf(h_file, "%s", reg_class_iter);

  ///////////////////////////////////////////////////////////////////
  // Emit register class info init
  fprintf(export_file, "ISA_REGISTER_CLASS_info\n");
  fprintf(c_file, "const ISA_REGISTER_CLASS_INFO ISA_REGISTER_CLASS_info[] = {\n");
  fprintf(c_file, "  { 0x00,   0,  -1,  0, 0, 0, \"UNDEFINED\", { 0 } },\n");
  for (index=0; index<reg_class_count; index++){
    fprintf(c_file, "  { 0x%02x, %3d, %3d, %2d, %d, %d, \"%s\",",
            EKAPI_GetRegIsaMask(&reg_class_info[index]),
            EKAPI_GetRegMinNum(&reg_class_info[index]),
            EKAPI_GetRegMaxNum(&reg_class_info[index]),
            EKAPI_GetRegBitSize(&reg_class_info[index]),
            EKAPI_GetRegCanStore(&reg_class_info[index]),
            EKAPI_GetRegMultiSave(&reg_class_info[index]),
            EKAPI_GetRegClassName(&reg_class_info[index]));
    int len=fprintf(c_file, "\n    { ");
    for (int i=EKAPI_GetRegMinNum(&reg_class_info[index]);
         i<EKAPI_GetRegMaxNum(&reg_class_info[index]); i++){
      if (len > 70){ len = fprintf(c_file, "\n      ");}
      len += fprintf(c_file, "\"%s\", ",
                     EKAPI_GetRegName(pknobs,&reg_class_info[index],i));
    }
    if (len > 70){ len = fprintf(c_file, "\n      ");}
    fprintf(c_file, "\"%s\" } },\n",
            EKAPI_GetRegName(pknobs,&reg_class_info[index],
                          EKAPI_GetRegMaxNum(&reg_class_info[index])));
  }
  fprintf(c_file, "};\n\n");

  fprintf(export_file, "ISA_REGISTER_CLASS_info_index\n");
  fprintf(c_file, "mUINT8 ISA_REGISTER_CLASS_info_index[] = {\n");
  fprintf(c_file, "  0,  /* ISA_REGISTER_CLASS_UNDEFINED */\n");
  for (index=0; index<reg_class_count; index++){
    fprintf(c_file, "  %d,  /* ISA_REGISTER_CLASS_%s */\n",
            index+1, EKAPI_GetRegClassName(&reg_class_info[index]));
  }
  fprintf(c_file, "};\n\n");


  ///////////////////////////////////////////////////////////////////
  // Emit enum of register sub class
  int subclass_count = EKAPI_RegSubclassCount(pknobs);
  fprintf(h_file, "typedef enum {\n  ISA_REGISTER_SUBCLASS_UNDEFINED,\n");
  for (index=0; index<subclass_count; index++){
    fprintf(h_file, "  ISA_REGISTER_SUBCLASS_%s,\n",
            EKAPI_RegSubclassName(pknobs,index));
  }
  fprintf(h_file,"  ISA_REGISTER_SUBCLASS_MIN = ISA_REGISTER_SUBCLASS_%s,\n",
          EKAPI_RegSubclassName(pknobs, 0));
  fprintf(h_file,"  ISA_REGISTER_SUBCLASS_MAX = ISA_REGISTER_SUBCLASS_%s,\n",
          EKAPI_RegSubclassName(pknobs, subclass_count-1));
  fprintf(h_file,"  ISA_REGISTER_SUBCLASS_COUNT = ISA_REGISTER_SUBCLASS_MAX - ISA_REGISTER_SUBCLASS_MIN + 1\n");
  fprintf(h_file,"} ISA_REGISTER_SUBCLASS;\n\n");

  fprintf(h_file, "%s", reg_subclass_query);


  ///////////////////////////////////////////////////////////////////
  // Emit register sub class info init
  fprintf(export_file, "ISA_REGISTER_SUBCLASS_info\n");
  fprintf(c_file, "const ISA_REGISTER_SUBCLASS_INFO ISA_REGISTER_SUBCLASS_info[] = {\n");
  fprintf(c_file, "  { \"UNDEFINED\", ISA_REGISTER_CLASS_UNDEFINED, 0, { 0 }, { 0 } },\n");

  int * members = (int*)malloc(max_reg_count*sizeof(int));
  FmtAssert(members, ("Memory Allocation Failure!\n"));
  for (index=0; index<EKAPI_RegSubclassCount(pknobs); index++){
    int class_id;
    int num = EKAPI_RegSubclassMember(pknobs, index, &class_id, members);
    fprintf(c_file, "  { \"%s\", ISA_REGISTER_CLASS_%s, %d,\n",
            EKAPI_RegSubclassName(pknobs,index),
            EKAPI_GetRegClassName(&reg_class_info[class_id]), num);
    int len = fprintf(c_file, "    { ");
    for (int i=0; i<num; i++){
      if (len >= 70) { len = fprintf(c_file, "\n      "); }
      len += fprintf(c_file, "%d", members[i]);
      len += fprintf(c_file, "%s", i!=(num-1) ? ", " : " },\n");
    }
    fprintf(c_file, "    { 0 } },\n");
  }
  fprintf(c_file, "};\n\n");

  fprintf(c_file, init_reg_func); 
  fprintf(export_file, "ISA_REGISTER_Initialize\n");

  Emit_Tailer(h_file);
  Close_Module_Files(mode, &c_file, &h_file, &export_file);

  // End block Generating targ_isa_register.*
  // ==================================================================

  // ==================================================================
  // Block Generating targ_abi_properites.*
  Init_Module_Files(mode, "targ_abi_properties", &c_file, &h_file,
                    &export_file);
  Emit_Header(h_file, "targ_abi_properties", abi_descript);
  fprintf(h_file, "#include \"targ_isa_registers.h\"\n\n");
  fprintf(c_file, "#include \"targ_abi_properties.h\"\n\n");

  fprintf(h_file, "typedef struct {\n  mUINT32 reg_flags[%d][%d];\n",
          reg_class_count+1, max_reg_count+1);
  fprintf(h_file, "  const char *reg_names[%d][%d];\n} ABI_PROPERTIES;\n\n",
          reg_class_count+1, max_reg_count+1);

  // Emit abi properties bit mask define
  for (index=0; index<EKAPI_ABIPropCount(pknobs); index++){
    fprintf(h_file, "#define ABI_PROPERTY_%-20s 0x%08xU\n",
            EKAPI_ABIPropName(pknobs,index),
            (index==0)? 0 : 1ULL << index-1);
  }

  /////////////////////////////////////////////////////////////////////
  // Emit abi properties init
  fprintf(c_file, "\nstatic const ABI_PROPERTIES abi_properties[] = {\n");
  for (int abi_i=0; abi_i<EKAPI_ABICount(pknobs); abi_i++){
    fprintf(c_file, "  {\n    /* %s */\n    {\n",
            EKAPI_ABIName(pknobs,abi_i));

    // Emit bit vector values init
    bv32_t *reg_flags = (bv32_t*)malloc((max_reg_count+1) * sizeof(bv32_t));
    FmtAssert(reg_flags, ("Memeory Allocation Failure!\n"));

    // Add a dummy head first
    int reg_i;
    fprintf(c_file, "      /* ISA_REGISTER_CLASS_UNDEFINED */");
    int len=fprintf(c_file,"\n      {");
    for (reg_i=0; reg_i<=max_reg_count; reg_i++){
      if (len>=70) { len = fprintf(c_file, "\n       "); }
      len += fprintf(c_file, " 0x00000000U,");
    }
    fprintf(c_file, " },\n");


    int reg_class_i;
    for (reg_class_i=0; reg_class_i<reg_class_count; reg_class_i++){
      int reg_num = EKAPI_RegPropMask(pknobs, reg_class_i, reg_flags);

      fprintf(c_file, "      /* ISA_REGISTER_CLASS_%s */",
              EKAPI_GetRegClassName(&reg_class_info[reg_class_i]));

      len = fprintf(c_file,"\n      {");
      for (reg_i=0; reg_i<=max_reg_count; reg_i++){
        if (len>=70) { len = fprintf(c_file, "\n       "); }
        len += fprintf(c_file, " 0x");
        if (reg_i <= EKAPI_GetRegMaxNum(&reg_class_info[reg_class_i])){
          len += fprintf(c_file, "%08xU,", reg_flags[reg_i] );
        }
        else{
          len += fprintf(c_file, "00000000U,");
        }
      }
      fprintf(c_file, " },\n");

    }
    fprintf(c_file, "    },\n    {\n");

    // Emit register names array. still need a dummy head
    fprintf(c_file, "      /* ISA_REGISTER_CLASS_UNDEFINED */");
    len=fprintf(c_file,"\n      {");
    for (reg_i=0; reg_i<=max_reg_count; reg_i++){
      if (len>=80) { len = fprintf(c_file, "\n       "); }
      len += fprintf(c_file, " \"\",");
    }
    fprintf(c_file, " },\n");

    for (reg_class_i=0; reg_class_i<reg_class_count; reg_class_i++){
      fprintf(c_file, "      /* ISA_REGISTER_CLASS_%s */",
              EKAPI_GetRegClassName(&reg_class_info[reg_class_i]));

      len=fprintf(c_file,"\n      {");
      for (reg_i=0; reg_i<=max_reg_count; reg_i++){
        char * name = "";
        if (reg_i <= EKAPI_GetRegMaxNum(&reg_class_info[reg_class_i])){
          name= EKAPI_GetRegName(pknobs, &reg_class_info[reg_class_i], reg_i);
        }
        if ((len+strlen(name))>76) { len = fprintf(c_file, "\n       "); }
        len += fprintf(c_file, " \"%s\",", name);
      }

      fprintf(c_file, " },\n");
    }
    fprintf(c_file, "    },\n  },\n");
  }
  fprintf(c_file, "};\n\n");

  ///////////////////////////////////////////////////////////////
  // Emit abi name enum define
  fprintf(h_file, "\ntypedef enum {\n");
  for (index=0; index<EKAPI_ABICount(pknobs); index++){
    fprintf(h_file, "  ABI_PROPERTIES_ABI_%s,\n",
            EKAPI_ABIName(pknobs,index));
  }
  fprintf(h_file, "  ABI_PROPERTIES_ABI_UNDEFINED,\n");
  fprintf(h_file, "  ABI_PROPERTIES_ABI_MAX=%d\n} ABI_PROPERTIES_ABI;\n\n",
          index-1);

  //////////////////////////////////////////////////////////////
  // Emit abi name array init
  fprintf(c_file, "static const char * const abi_names[] = {\n");
  for (index=0; index<EKAPI_ABICount(pknobs); index++){
    fprintf(c_file, "  \"%s\",\n", EKAPI_ABIName(pknobs,index));
  }
  fprintf(c_file, "  \"UNDEFINED\"\n};\n\n");

  ///////////////////////////////////////////////////////////////
  // Emit common variables and functions, no difference when
  // knobs value changed
  fprintf(h_file, "%s", abi_common);
  fprintf(export_file, "ABI_PROPERTIES_ABI_Value\n");
  fprintf(export_file, "ABI_PROPERTIES_Initialize\n");

  fprintf(c_file, "%s", abi_com_func);
  fprintf(export_file, "ABI_PROPERTIES_target_props\n");
  fprintf(export_file, "ABI_PROPERTIES_Initialize\n");


  ///////////////////////////////////////////////////////////////
  // Emit abi properties query functions
  for (index=0; index<EKAPI_ABIPropCount(pknobs); index++){
    if (index==0){ fprintf(h_file, "/*ARGSUSED*/\n"); }
    fprintf(h_file, "inline BOOL ABI_PROPERTY_Is_%s(\n",
            EKAPI_ABIPropName(pknobs,index));
    fprintf(h_file, "  ISA_REGISTER_CLASS rc,\n  INT reg)\n{\n");
    if (index==0){ fprintf(h_file, "  return FALSE;\n"); }
    else{
      fprintf(h_file, "  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;\n");
      fprintf(h_file, "  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]\n");
      fprintf(h_file, "      & ABI_PROPERTY_%s) != 0;\n",
              EKAPI_ABIPropName(pknobs,index));
    }
    fprintf(h_file, "}\n\n");
  }




  Emit_Tailer(h_file);
  Close_Module_Files(mode, &c_file, &h_file, &export_file);
  // End block Generating targ_abi_properties.*
  // ==================================================================
}
