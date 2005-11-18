/* WFE == WHIRL Front End */
/* translate gnu decl trees to whirl */

#ifndef wfe_decl_INCLUDED
#define wfe_decl_INCLUDED

#ifndef __cplusplus
typedef int INT;
typedef long long INT64;
typedef int TY_IDX;
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* expand namespace scope declaration into symtab and whirl */
extern void WFE_Expand_Decl (tree decl);

/* expand gnu function decl tree into symtab & whirl */
extern WN * WFE_Start_Function (tree fndecl);

/* called after function body processed, to write out the PU */
extern void WFE_Finish_Function (void);

/* called for each initialized variable */
extern void WFE_Initialize_Decl (tree decl);

/* called for each aggregate initialization */
extern void WFE_Start_Aggregate_Init (tree decl);

/* add padding to aggregate initialization */
extern void WFE_Add_Aggregate_Init_Padding (INT size);

/* add integer to aggregate initialization */
extern void WFE_Add_Aggregate_Init_Integer (INT64 val, INT size);

/* add double to aggregate initialization */
extern void WFE_Add_Aggregate_Init_Double (double val, INT size);

/* add string to aggregate initialization */
extern void WFE_Add_Aggregate_Init_String (char *s, INT size);

/* add address to aggregate initialization */
extern void WFE_Add_Aggregate_Init_Address (tree t);

/* finish aggregate init, and set size if not previously known */
extern void WFE_Finish_Aggregate_Init (void);

/* generate a temp with extension 'name' having the initialization as specified
   by 'init' */
extern ST *WFE_Generate_Temp_For_Initialized_Aggregate (tree init, char *name);

/* handle __attribute__ ((alias)) */
extern void WFE_Assemble_Alias (tree decl, tree target);

/* handle __attribute__ ((constructor)) */
extern void WFE_Assemble_Constructor (char *name);

/* handle __attribute__ ((destructor)) */
extern void WFE_Assemble_Destructor (char *name);

/* call this routine when have a decl that doesn't have an initialization */
extern void WFE_Decl (tree decl);

/* call this routine to determine the return address ST at specified level */
extern ST *WFE_Get_Return_Address_ST (int level);

/* call this routine to save the SP for first alloca in a scope */
extern ST *WFE_Alloca_0 (void);

/* call this routine to assign ST for VLA as well as allocate space for it */
extern ST *WFE_Alloca_ST (tree decl);

/* call this routine to deallocate STs for VLA */
extern void WFE_Dealloca (ST *alloca0_st, tree vars);

/* call this routine to record variables assigned to registers using asm */
extern void WFE_Record_Asmspec_For_ST (tree decl, char *asmspec, int reg);

/* call this routine to resolve conflicts between duplicate declarations */
extern void WFE_Resolve_Duplicate_Decls (tree olddecl, tree newdecl);

/* call this routine to process pragma weak on encountering pragma */
extern void WFE_Add_Weak();

/* call this routine to process pragma weak declarations at end */
extern void WFE_Weak_Finish();

/* get the current function declaration.  This just comes from a static
 * global variable in the absence of nested function declarations.
 */

extern tree Current_Function_Decl(void);

#ifdef __cplusplus
}
#endif

#endif
