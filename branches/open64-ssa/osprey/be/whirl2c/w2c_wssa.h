#ifndef _W2C_WSSA_H_
#define _W2C_WSSA_H_

#include <stdio.h>
#include <vector>
#include <map>
#include <string>

typedef std::vector<const WN*> WN_LIST;

namespace WSSA {

struct LABEL_INFO {
  WN_LIST sources;		/* goto WN nodes */
  const WN* target;			/* label WN node */
};

typedef std::map<INT32, LABEL_INFO> LABEL_MAP;
typedef std::map<const WN*, const WN*> PARENT_MAP;

extern const WN* get_parent(const WN* wn);
extern void parentize(const WN*);
extern void setup_label_map(const WN* wn);
extern const WN* get_target(const INT32 label);
extern const WN* get_target(const WN* wn);
extern INT32 get_jmp_order(const WN* wn);
extern void emit_chi_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_chi_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_mu_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_mu_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_phi_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_phi_assignment_block(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context);
extern void emit_phi_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context, 
			      INT32 phi_vn, const char separator);
} // end namespace WSSA
#endif
