#ifndef _EPS_DEBUG_H_
#define _EPS_DEBUG_H_

#define EPS_ASSERT(x, s) (x?(void)1:(fprintf(stderr, "%s :%d %s\n", __FILE__, __LINE__, s),abort()))

extern FILE* EPSLOG;
extern char current_routine_name[256];
extern int EPS_debug;
//#define EPSDBG(x) (eps_option::debug_level()>=x) 
#define EPSDBG(x) (EPS_debug>=x) 

/* ====================================================================
 *
 * visualize_region:
 *
 * This function is intended for drawing the vcg of a region.
 * Currently, the level has no effect.
 *
 * By BSH
 *
 * ====================================================================
 */
void eps_debug_print_BS(BS* bs);

void visualize_pdg(REGION *rgn, const char *suffix, unsigned int level = 0);
void visualize_region(REGION *rgn, const char *suffix, unsigned int level = 0);
void visualize_routine(BB* bb, const char *suffix);

class DDG;
void visualize_ddg(FILE* vcg, DDG* ddg);
void visualize_ddg(DDG* ddg, char* str);
void visualize_ddg(DDG* ddg);

int eps_print_TN(TN *tn, const OP *op, char *buf, int result_num, int opnd_num);
void eps_print_asm(FILE *vcg, const OP *op, BB *bb);
void print_routine(void);

#endif // _EPS_DEBUG_H_
