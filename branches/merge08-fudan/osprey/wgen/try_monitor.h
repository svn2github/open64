extern "C"{
#include "gspin-wgen-interface.h"
}

#include "defs.h"
#include "glob.h"
#include "config.h"
#include "wn.h"
#include "wn_util.h"


#include <list>
#include <stack>
#include <vector>

typedef struct break_continue_info_t {
  gs_code_t       tree_code;
  LABEL_IDX break_label_idx;
  LABEL_IDX continue_label_idx;
  gs_t	    scope;
} BREAK_CONTINUE_INFO;

// cmp_idx: for a try_block, it is the label where the first compare
//          for the handlers of this try-block should start.
typedef struct scope_cleanup_info_t {
  gs_t		    stmt;
  LABEL_IDX	    label_idx;
  LABEL_IDX	    cmp_idx;
  bool		    cleanup_eh_only;
  struct vla_ {
    bool		    has_alloca;
    ST * 		    alloca_st;
    vector<ST*>	*	    alloca_sts_vector;
  } vla;
} SCOPE_CLEANUP_INFO;

typedef struct temp_cleanup_info_t {
  gs_t		    expr;
  LABEL_IDX	    label_idx;
#ifdef KEY
  bool		    cleanup_eh_only;
#endif
} TEMP_CLEANUP_INFO;

enum Try_Branch
{
	try_branch,
	catch_branch,
	finally_branch
};

struct Try_State
{
	int index;
	Try_Branch branch;
};

struct Try_Info
{
	gs_t stmt;
	int parent;

	std::list<LABEL_IDX>* catch_labels;
	LABEL_IDX finally_label;
	vector<gs_t>	    *cleanups;
	vector<SCOPE_CLEANUP_INFO> *scope;
	vector<TEMP_CLEANUP_INFO> *temp_cleanup;
	vector<BREAK_CONTINUE_INFO> *break_continue;
	vector<ST_IDX>    *handler_list; // list of handlers outside this try-catch block
	vector<ST_IDX>    *eh_spec; // eh_spec of the containing region to be used while inside its handler
	LABEL_IDX	    label_idx;
	// cmp_idx: 1st is the label where the first cmp for this handler set 
	// should start. If the 2nd label is non-zero it must be marked 
	// handler_begin
	LABEL_IDX	    cmp_idx[2];
	// label to jmp to after this set of handlers are done
	LABEL_IDX 	    goto_idx;
	LABEL_IDX 	    cleanups_idx;
	bool		    outermost; // handler for outermost try block in PU?
};

class Try_Monitor
{
	std::vector<Try_Info> try_vector;
	std::stack<Try_State> state_stack;

	int current_index;
public:
	int Get_Parent(int index);
	int Get_Parent(gs_t stmt);
	LABEL_IDX Get_Cmp_Label(int index);
	void Set_Cmp_Label(int index, LABEL_IDX cmp);
	int Find_Parent(int index);
	void Insert_Try(Try_Info ti, int index);
	int Insert_Try(gs_t stmt);
	void Push_State(int index, Try_Branch tb);
	void Pop_State();
	int Get_Current_Try();
	Try_State Get_Current_State();
	bool In_Catch_With_Finally();
	void Set_Index_First();
	void Set_Index_Next();
	void Set_Index_Last();
	void Set_Index_Prev();
	void PopBack();	
	bool Empty();
	bool LastIsCurrent();	
	bool Index_At_End();
	Try_Info Indexing_TI();
	int Current_Index();
	void Clean_Up();
	bool Current_Try_Info(Try_Info& ti);
	Try_Info Get_Indexed_Try(int index);
	bool State_Empty();
	int Find_Finally_Containing_This_Bind(gs_t bind);
};
