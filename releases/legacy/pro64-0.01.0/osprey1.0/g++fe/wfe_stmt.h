/* WFE == WHIRL Front End */
/* translate gnu stmt trees to whirl */

#ifndef wn_stmt_INCLUDED
#define wn_stmt_INCLUDED

extern void WFE_Stmt_Init (void);
extern LABEL_IDX WFE_Get_LABEL (tree label, int def);
extern void WFE_Check_Undefined_Labels(void);
extern void Mark_Scopes_And_Labels (tree);
extern void Push_Temp_Cleanup (tree, bool);
extern void Do_Temp_Cleanups (tree);
extern void Do_Handlers (void);
extern void Do_EH_Cleanups (void);
extern void Call_Throw();
extern INT Current_Handler_Count();
extern void Add_Handler_Info (WN * call_wn, INT i, INT num_handlers);

extern
#ifdef __cplusplus
"C"
#endif
void WFE_Expand_Stmt (tree stmt);

#endif
