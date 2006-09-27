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
//=============================================================================
//
//  Module : operands_gen.cxx
//  $Date  : $
//  $Author: marcel $
//  $Source: /proj/osprey/CVS/open64/osprey1.0/common/ipfec_targ_info/gen/operands_gen.cxx,v $
//
//  Description:
//  ============
//  Generate operands function
//=============================================================================

#include "operands_gen.h"

static const char description[] =
"/* ====================================================================\n\
 * ====================================================================\n\
 *\n\
 * Description:\n\
 *\n\
 *   A description of the ISA instruction operands. The description\n\
 *   exports the following:\n\
 *\n\
 *   typedef (struct) ISA_OPERAND_VALTYP\n\
 *       Describes a particular operand/result type, including\n\
 *       the type of value it may contain and whether or not is\n\
 *       a register, literal or enum. The contents are private.\n\
 *\n\
 *   typedef (struct) ISA_OPERAND_INFO\n\
 *       Identifies the operand types of a particular instruction.\n\
 *       The contents are private.\n\
 *\n\
 *,  typedef (enum) ISA_OPERAND_USE\n\
 *       Identifies the useage of an operand of a particular instruction.\n\
 *       The names have the form OU_xxxx.\n\
 *\n\
 *   const INT OU_UNDEFINED\n\
 *       Identifies an undefined/unknown operand use.\n\
 *\n\
 *   const INT ISA_OPERAND_max_operands\n\
 *       The maximum number of operands of any instruction.\n\
 *\n\
 *   const INT ISA_OPERAND_max_results\n\
 *       The maximum number of results of any instruction.\n\
 *\n\
 *   const ISA_OPERAND_INFO *ISA_OPERAND_Info(TOP topcode)\n\
 *       Return a pointer to the operand info for the instruction\n\
 *       specified by 'topcode'.\n\
 *\n\
 *   INT ISA_OPERAND_INFO_Operands(const ISA_OPERAND_INFO *oinfo)\n\
 *       Return the number of operands specified by the operand\n\
 *       info 'oinfo'.\n\
 *\n\
 *   const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Operand(\n\
 *     const ISA_OPERAND_INFO *oinfo,\n\
 *     int opnd\n\
 *   )\n\
 *       Get the operand type of operand 'opnd' specified by the\n\
 *       operand info 'oinfo'.\n\
 *\n\
 *   INT ISA_OPERAND_INFO_Results(const ISA_OPERAND_INFO *oinfo)\n\
 *       Return the number of results specified by the operand\n\
 *       info 'oinfo'.\n\
 *\n\
 *   const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Result(\n\
 *     const ISA_OPERAND_INFO *oinfo,\n\
 *     int result\n\
 *   )\n\
 *       Get the operand type for the result 'result' specified by the\n\
 *       operand info 'oinfo'.\n\
 *\n\
 *   ISA_OPERAND_USE ISA_OPERAND_INFO_Use(\n\
 *     const ISA_OPERAND_INFO *oinfo,\n\
 *     INT opnd\n\
 *   )\n\
 *       Get the operand use type of operand 'opnd' specified by the\n\
 *       operand info 'oinfo'.\n\
 *\n\
 *   BOOL ISA_OPERAND_Any_Use(ISA_OPERAND_USE ouse)\n\
 *       Returns a boolean that indicates if any instruction in the\n\
 *       architecture has an an operand with usage 'use'. Useful\n\
 *       for omitting sections of code that aren't applicable to\n\
 *       some architectures.\n\
 *\n\
 *   ISA_REGISTER_CLASS ISA_OPERAND_VALTYP_Register_Class(\n\
 *     const ISA_OPERAND_VALTYP *otype\n\
 *   )\n\
 *       Get the register class for the operand specified by 'otype'.\n\
 *\n\
 *   ISA_REGISTER_SUBCLASS ISA_OPERAND_VALTYP_Register_Subclass(\n\
 *     const ISA_OPERAND_VALTYP *otype\n\
 *   )\n\
 *       Get the register subclass for the operand specified by 'otype'.\n\
 *\n\
 *   ISA_LIT_CLASS ISA_OPERAND_VALTYP_Literal_Class(const ISA_OPERAND_VALTYP *otype)\n\
 *       Get the literal class for the operand specified by 'otype'.\n\
 *\n\
 *   ISA_ENUM_CLASS ISA_OPERAND_VALTYP_Enum_Class(\n\
 *     const ISA_OPERAND_VALTYP *otype\n\
 *   )\n\
 *       Get the enum class for the operand specified by 'otype'.\n\
 *\n\
 *   INT ISA_OPERAND_VALTYP_Size(const ISA_OPERAND_VALTYP *otype)\n\
 *       Get the size for the operand specified by 'otype'.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_Register(const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is a register.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_Signed(const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is signed.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_FPU_Int(const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is an FPU integer.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_PCRel(const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is pc-relative.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_Literal (const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is a literal.\n\
 *\n\
 *   BOOL ISA_OPERAND_VALTYP_Is_Enum (const ISA_OPERAND_VALTYP *otype)\n\
 *       Return a boolean to specify if the operand specifed\n\
 *       by 'otype' is an enum.\n\
 *\n\
 *   BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode)\n\
 *       Return a boolean to specify if the 64-bit integer value can fit\n\
 *       in the literal field of an instruction with the given topcode.\n\
 *\n\
 *   INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass)\n\
 *       If 'topcode' has an immediate operand, return its operand\n\
 *       number by value and literal class by reference through 'lclass'\n\
 *       (a null pointer can be passed for 'lclass' if the literal\n\
 *       class is not needed). If there is no immediate operand, return -1.\n\
 *\n\
 *   INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass)\n\
 *       If 'topcode' has a relocatable operand, return its operand\n\
 *       number by value and literal class by reference through 'lclass'\n\
 *       (a null pointer can be passed for 'lclass' if the literal\n\
 *       class is not needed). If there is no relocatable operand, return -1.\n\
 *\n\
 *   INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use)\n\
 *       For the instruction specified by 'topcode', give the\n\
 *       operand number with the use 'use'. If there is no such\n\
 *       operand, return -1.\n\
 *\n\
 *   void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses)\n\
 *       For the instruction specified by 'topcode', return\n\
 *       the usage of all its operands in the array pointed to\n\
 *       by 'uses'. The use of operand n corresponds to 'uses'[n].\n\
 *\n\
 * ====================================================================\n\
 * ====================================================================\n\
 */";

static const char opnd_query[]="\
inline const ISA_OPERAND_INFO *ISA_OPERAND_Info(TOP topcode)\n\
{\n\
  extern const mUINT8 ISA_OPERAND_info_index[];\n\
  extern const ISA_OPERAND_INFO ISA_OPERAND_info[];\n\
  INT index = ISA_OPERAND_info_index[(INT)topcode];\n\
  return &ISA_OPERAND_info[index];\n\
}\n\
\n\
inline INT ISA_OPERAND_INFO_Operands(const ISA_OPERAND_INFO *oinfo)\n\
{\n\
  return oinfo->opnds;\n\
}\n\
\n\
inline const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Operand(\n\
  const ISA_OPERAND_INFO *oinfo,\n\
  INT opnd)\n\
{\n\
  extern const ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[];\n\
  INT index = oinfo->opnd[opnd];\n\
  return &ISA_OPERAND_operand_types[index];\n\
}\n\
\n\
inline INT ISA_OPERAND_INFO_Results(const ISA_OPERAND_INFO *oinfo)\n\
{\n\
  return oinfo->results;\n\
}\n\
\n\
inline const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Result(\n\
  const ISA_OPERAND_INFO *oinfo,\n\
  INT result)\n\
{\n\
  extern const ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[];\n\
  INT index = oinfo->result[result];\n\
  return &ISA_OPERAND_operand_types[index];\n\
}\n\
\n\
inline ISA_REGISTER_CLASS ISA_OPERAND_VALTYP_Register_Class(\n\
  const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (ISA_REGISTER_CLASS)otype->rclass;\n\
}\n\
\n\
inline ISA_REGISTER_SUBCLASS ISA_OPERAND_VALTYP_Register_Subclass(\n\
  const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (ISA_REGISTER_SUBCLASS)otype->rsubclass;\n\
}\n\
\n\
inline ISA_LIT_CLASS ISA_OPERAND_VALTYP_Literal_Class(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (ISA_LIT_CLASS)otype->lclass;\n\
}\n\
\n\
inline ISA_ENUM_CLASS ISA_OPERAND_VALTYP_Enum_Class(\n\
  const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (ISA_ENUM_CLASS)otype->eclass;\n\
}\n\
\n\
inline INT ISA_OPERAND_VALTYP_Size(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return otype->size;\n\
}\n\
\n\
inline BOOL ISA_OPERAND_VALTYP_Is_Register(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (otype->flags & 0x01) != 0;\n\
}\n\
\n\
inline BOOL ISA_OPERAND_VALTYP_Is_Literal(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (otype->lclass != LC_UNDEFINED);\n\
}\n\
\n\
inline BOOL ISA_OPERAND_VALTYP_Is_Enum(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (otype->eclass != EC_UNDEFINED);\n\
}\n\
\n\
inline BOOL ISA_OPERAND_VALTYP_Is_Signed(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (otype->flags & 0x02) != 0;\n\
}\n\
\n\
/*ARGSUSED*/\n\
inline BOOL ISA_OPERAND_VALTYP_Is_FPU_Int(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return FALSE;\n\
}\n\
\n\
inline BOOL ISA_OPERAND_VALTYP_Is_PCRel(const ISA_OPERAND_VALTYP *otype)\n\
{\n\
  return (otype->flags & 0x08) != 0;\n\
}\n\
\n\
inline ISA_OPERAND_USE ISA_OPERAND_INFO_Use(\n\
  const ISA_OPERAND_INFO *oinfo,\n\
  INT opnd)\n\
{\n\
  return (ISA_OPERAND_USE)oinfo->ouse[opnd];\n\
}\n\
\n\
inline BOOL ISA_OPERAND_Any_Use(ISA_OPERAND_USE ouse)\n\
{\n\
  return (0x00000000000003fbULL & (1ULL << ouse)) != 0;\n\
}\n\
\n\
extern INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass);\n\
\n\
extern INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass);\n\
\n\
extern BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode);\n\
\n\
extern INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use);\n\
\n\
extern void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses);\n";


static const char top_opnd_query_func[]="\
INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass)\n\
{\n\
  INT iopnd;\n\
  const ISA_OPERAND_INFO *opinfo = ISA_OPERAND_Info(topcode);\n\
  INT opnds = ISA_OPERAND_INFO_Operands(opinfo);\n\
  const INT first = 0;\n\
\n\
  for (iopnd = first; iopnd < opnds; ++iopnd) {\n\
    const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(opinfo, iopnd);\n\
    ISA_LIT_CLASS lit_class = ISA_OPERAND_VALTYP_Literal_Class(vtype);\n\
    if (lit_class != LC_UNDEFINED) {\n\
      if (lclass) *lclass = lit_class;\n\
      return iopnd;\n\
    }\n\
  }\n\
\n\
  return -1;\n\
}\n\
\n\
INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass)\n\
{\n\
  extern const mINT8 ISA_OPERAND_relocatable_opnd[];\n\
  INT iopnd = ISA_OPERAND_relocatable_opnd[(INT)topcode];\n\
  if (lclass && iopnd >= 0) {\n\
    const ISA_OPERAND_INFO *opinfo = ISA_OPERAND_Info(topcode);\n\
    const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(opinfo,iopnd);\n\
    *lclass = (ISA_LIT_CLASS)ISA_OPERAND_VALTYP_Literal_Class(vtype);\n\
  }\n\
  return iopnd;\n\
}\n\
\n\
BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode)\n\
{\n\
  ISA_LIT_CLASS lclass;\n\
  if (TOP_Immediate_Operand(topcode, &lclass) < 0) return 0;\n\
  return ISA_LC_Value_In_Class(value, lclass);\n\
}\n\
\n\
INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use)\n\
{\n\
  INT i;\n\
  const ISA_OPERAND_INFO *oinfo = ISA_OPERAND_Info(topcode);\n\
  INT opnds = ISA_OPERAND_INFO_Operands(oinfo);\n\
  for (i = 0; i < opnds; ++i) {\n\
    ISA_OPERAND_USE this_use = ISA_OPERAND_INFO_Use(oinfo, i);\n\
    if (this_use == use) return i;\n\
  }\n\
  return -1;\n\
}\n\
\n\
void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses)\n\
{\n\
  INT i;\n\
  const ISA_OPERAND_INFO *oinfo = ISA_OPERAND_Info(topcode);\n\
  INT opnds = ISA_OPERAND_INFO_Operands(oinfo);\n\
  for (i = 0; i < opnds; ++i) {\n\
    ISA_OPERAND_USE this_use = ISA_OPERAND_INFO_Use(oinfo, i);\n\
    uses[i] = this_use;\n\
  }\n\
}\n";



void Operands_Generator(void *pknobs, GEN_MODE mode)
{
    FILE *c_file, *h_file, *export_file;
    int max=0;
    int max_src, max_dest;

    // Prepare for the register information.
    int reg_class_count = EKAPI_RegClassCount(pknobs);
    int max_reg_count = 0;
    EKAPI_REGISTER_CLASS_INFO *reg_class_info = (EKAPI_REGISTER_CLASS_INFO*)
      malloc(reg_class_count*sizeof(EKAPI_REGISTER_CLASS_INFO));

    for (int reg_i=0; reg_i<reg_class_count; reg_i++){
        EKAPI_RegStruct4id(pknobs, &reg_class_info[reg_i], reg_i);
        if (EKAPI_GetRegMaxNum(&reg_class_info[reg_i]) > max_reg_count){
            max_reg_count = EKAPI_GetRegMaxNum(&reg_class_info[reg_i]);
        }
    }

    Init_Module_Files(mode, "targ_isa_operands",
                      &c_file, &h_file, &export_file);
    Emit_Header(h_file, "targ_isa_operands", description);
    fprintf(h_file, "#include \"topcode.h\"\n"
                    "#include \"targ_isa_registers.h\"\n"
                    "#include \"targ_isa_enums.h\"\n"
                    "#include \"targ_isa_lits.h\"\n\n" );
    fprintf(c_file, "#include \"targ_isa_operands.h\"\n"
                    "#include \"targ_isa_registers.h\"\n"
                    "#include \"targ_isa_properties.h\"\n"
                    "#include \"targ_isa_lits.h\"\n\n" );

    // Emit enum type of operand use
    int use_i;
    fprintf(h_file, "typedef enum {\n");
    for (use_i=0; use_i<EKAPI_OpndUseCount(pknobs); use_i++){
        fprintf(h_file, "  %s,\n", EKAPI_OpndUseName(pknobs, use_i));
    }
    fprintf(h_file, "  OU_MAX = %d\n} ISA_OPERAND_USE;\n\n", use_i-1);

    // Emit operand value data type;
    fprintf(h_file, "typedef struct {\n"
                    "  mUINT8 rclass;\n"
                    "  mUINT8 rsubclass;\n"
                    "  mUINT8 lclass;\n"
                    "  mUINT8 eclass;\n"
                    "  mUINT8 size;\n"
                    "  mUINT8 flags;\n"
                    "} ISA_OPERAND_VALTYP;\n\n");
    /////////////////////////////////////////////////////////////////
    // Emit init and declaration of operand types array
    fprintf(export_file, "ISA_OPERAND_operand_types\n");
    fprintf(c_file, "\nconst ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[] = {\n");
    for (int ty_i=0; ty_i<EKAPI_OpndTypeCount(pknobs); ty_i++){
        int reg_class_id = EKAPI_RegClass4otid(pknobs, ty_i);
        fprintf(c_file, "  { ISA_REGISTER_CLASS_%-10s,",
                (reg_class_id==-1) ? "UNDEFINED" :
                EKAPI_GetRegClassName(&reg_class_info[reg_class_id]));
        int reg_subc_id = EKAPI_RegSubclass4otid(pknobs, ty_i);
        fprintf(c_file, " ISA_REGISTER_SUBCLASS_%-10s,\n",
                (reg_subc_id==-1) ? "UNDEFINED" :
                EKAPI_RegSubclassName(pknobs, reg_subc_id));
        fprintf(c_file, "    %3d,",EKAPI_LitClass4otid(pknobs, ty_i)+1);
        int ec_id = EKAPI_EnumClass4otid(pknobs, ty_i);
        fprintf(c_file, " %s,",
                (ec_id==-1) ? "EC_UNDEFINED" :
                EKAPI_EnumClassName(pknobs, ec_id));
        fprintf(c_file, "%3d, 0x%02x }, /* %s */\n",
                EKAPI_Size4otid(pknobs, ty_i),
                EKAPI_Flag4otid(pknobs, ty_i),
                EKAPI_OpndTypeName(pknobs, ty_i)+strlen("OT_"));
    }
    fprintf(c_file, "};\n\n");

    max_src = EKAPI_GetSrcOpndsMax(pknobs);
    max_dest = EKAPI_GetDestOpndsMax(pknobs);

    // Emit operand number:
    fprintf(h_file, "enum {\n  ISA_OPERAND_max_operands=%d,\n"
                    "  ISA_OPERAND_max_results=%d\n};\n\n",
                    max_src,
                    max_dest);

    /////////////////////////////////////////////////////////////////
    // Emit operand info data type, and data init
    fprintf(h_file, "typedef struct {\n"
                    "  mUINT8 opnds;\n"
                    "  mUINT8 opnd[ISA_OPERAND_max_operands];\n"
                    "  mUINT8 ouse[ISA_OPERAND_max_operands];\n"
                    "  mUINT8 results;\n"
                    "  mUINT8 result[ISA_OPERAND_max_results];\n"
                    "} ISA_OPERAND_INFO;\n\n");

    fprintf(export_file, "ISA_OPERAND_info\n");

    EKAPI_OPNDGRP_INFO opnd_grp;
    opnd_grp.source = (int*)malloc(max_src*sizeof(int));
    opnd_grp.opnduse = (int*)malloc(max_src*sizeof(int));
    opnd_grp.result = (int*)malloc(max_dest*sizeof(int));
    FmtAssert( opnd_grp.source && opnd_grp.opnduse && opnd_grp.result,
               ("Memory Allocation Failure!\n"));

    fprintf(c_file, "const ISA_OPERAND_INFO ISA_OPERAND_info[] = {\n");

    for (int grp_i=0; grp_i<EKAPI_OpndGrpCount(pknobs); grp_i++){
        int opnd_i;

        EKAPI_GetOperandInfo4Grp(pknobs, grp_i, &opnd_grp);

        fprintf(c_file, "  {%2d, { ", opnd_grp.num_source);
        for (opnd_i=0; opnd_i<max_src; opnd_i++){
            fprintf(c_file, "%3d",
                    (opnd_i>=opnd_grp.num_source)?-1:opnd_grp.source[opnd_i]);
            fprintf(c_file, "%s", (opnd_i==(max_src-1))? " " : ", ");
        }
        fprintf(c_file, "},          /* O_%d */\n", grp_i);

        fprintf(c_file, "       { ");
        for (opnd_i=0; opnd_i<max_src; opnd_i++){
            fprintf(c_file, "%3d",
                    (opnd_i>=opnd_grp.num_source)?0:opnd_grp.opnduse[opnd_i]);
            fprintf(c_file, "%s", (opnd_i==(max_src-1))? " " : ", ");
        }
        fprintf(c_file, "},          /* O_%d */\n", grp_i);

        fprintf(c_file, "   %2d, { ", opnd_grp.num_result);
        for (opnd_i=0; opnd_i<max_dest; opnd_i++){
            fprintf(c_file, "%3d",
                    (opnd_i>=opnd_grp.num_result)?-1:opnd_grp.result[opnd_i]);
            fprintf(c_file, "%s", (opnd_i==(max_dest-1))? " " : ", ");
        }
        fprintf(c_file, "} },                       /* O_%d */\n", grp_i);
    }

    fprintf(c_file, "};\n\n");

    int op_i;
    /////////////////////////////////////////////////////////////////
    // Emit operand info index
    fprintf (export_file, "ISA_OPERAND_info_index\n");
    fprintf(c_file, "const mUINT8 ISA_OPERAND_info_index[] = {\n");

    for (op_i=0; op_i<EKAPI_OpCount(pknobs); op_i++){
        int opnd_grp = EKAPI_Op2Opndsgrp(pknobs, op_i);
        fprintf(c_file, "%5d,  /* %s: O_%d */\n",
                opnd_grp, EKAPI_OpName4id(pknobs, op_i), opnd_grp);
    }
    fprintf(c_file, "};\n\n");

    /////////////////////////////////////////////////////////////////
    // Emit rellocatable_opnd
    fprintf(export_file, "ISA_OPERAND_relocatable_opnd\n");
    fprintf(c_file, "const mINT8 ISA_OPERAND_relocatable_opnd[] = {\n");

    for (op_i=0; op_i<EKAPI_OpCount(pknobs); op_i++){
        int reloc = EKAPI_GetRelocatableOpnd(pknobs, op_i);
        fprintf(c_file, "%4d,  /* %s */\n",
                reloc, EKAPI_OpName4id(pknobs, op_i));
    }
    fprintf(c_file, "};\n\n");

    fprintf(h_file, "%s", opnd_query);
    fprintf(c_file, "%s", top_opnd_query_func);
    fprintf(export_file, "TOP_Immediate_Operand\n");
    fprintf(export_file, "TOP_Relocatable_Operand\n");
    fprintf(export_file, "TOP_Can_Have_Immediate\n");
    fprintf(export_file, "TOP_Find_Operand_Use\n");
    fprintf(export_file, "TOP_Operand_Uses\n");


    Emit_Tailer(h_file);
    Close_Module_Files(mode, &c_file, &h_file, &export_file);
}
