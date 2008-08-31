#include "Try_Monitor.h"

int Try_Monitor::Get_Parent(int index)
{
	return try_vector[index].parent;
}
int Try_Monitor::Get_Parent(gs_t stmt)
{
	for(int i = 0; i < try_vector.size(); i++)
	{
		if(try_vector[i].stmt == stmt)
			return try_vector[i].parent;
	}
}

/*bool Is_Ancestor_Or_Itself(gs_t tester, gs_t testee)
{
	if(testee == tester)
		return true;
	int parent;
	while((parent = Get_Parent(tester)) != -1)
	{
		if(testee == try_vector[parent].stmt)
			return true;
		tester = parent;
	}
	return false;
}*/

LABEL_IDX Try_Monitor::Get_Cmp_Label(int index)
{
	return try_vector[index].cmp_idx[0];
}

void Try_Monitor::Set_Cmp_Label(int index, LABEL_IDX cmp)
{
	try_vector[index].cmp_idx[0] = cmp;
}

int Try_Monitor::Find_Parent(int index)
{
	if(state_stack.empty())
		return -1;
	else
	{
		Try_State ts = state_stack.top();
		if(ts.branch == try_branch)
			return ts.index;
		else
			return Get_Parent(ts.index);
	}
}

void Try_Monitor::Insert_Try(Try_Info ti, int index)
{
	try_vector[index] = ti;
	try_vector[index].parent = Find_Parent(index);
}

int Try_Monitor::Insert_Try(gs_t stmt)
{
	Try_Info ti;
	ti.stmt = stmt;
	ti.parent = Find_Parent(try_vector.size());
	try_vector.push_back(ti);
	return try_vector.size() - 1;
}

void Try_Monitor::Push_State(int index, Try_Branch tb)
{
	Try_State ts;
	ts.index = index;
	ts.branch = tb;
	state_stack.push(ts);
}
void Try_Monitor::Pop_State()
{
	state_stack.pop();
}
int Try_Monitor::Get_Current_Try()
{
	if(state_stack.empty())
		return -1;
	else
	{
		if(state_stack.top().branch == try_branch)
			return state_stack.top().index;
		else
			return Get_Parent(state_stack.top().index);
	}
}
Try_State Try_Monitor::Get_Current_State()
{
	return state_stack.top();
}
bool Try_Monitor::In_Catch_With_Finally()
{
	if(state_stack.empty())
		return false;
	if(state_stack.top().branch == catch_branch && 
		gs_tree_code(Get_Indexed_Try(state_stack.top().index).stmt) == GS_TRY_FINALLY_EXPR)
		return true;
	return false;
}
void Try_Monitor::Set_Index_First()
{
	current_index = 0;
}
void Try_Monitor::Set_Index_Next()
{
	current_index++;
}
bool Try_Monitor::Index_At_End()
{
	return current_index == try_vector.size();
}
Try_Info Try_Monitor::Indexing_TI()
{
	return try_vector[current_index];
}
int Try_Monitor::Current_Index()
{
	return current_index;
}
void Try_Monitor::Clean_Up()
{
	try_vector.clear();
	while(!state_stack.empty())
		state_stack.pop();
}
bool Try_Monitor::Current_Try_Info(Try_Info& ti)
{
	int index = Get_Current_Try();
	if(index == -1)
		return false;
	else
	{
		ti = try_vector[index];
		return true;
	}
}
Try_Info Try_Monitor::Get_Indexed_Try(int index)
{
	return try_vector[index];
}
bool Try_Monitor::State_Empty()
{
	return state_stack.empty();
}
int Try_Monitor::Find_Finally_Containing_This_Bind(gs_t bind)
{
	for(int i = 0; i < try_vector.size(); i++)
	{
		gs_t stmt = try_vector[i].stmt;
		if(gs_tree_code(stmt) != GS_TRY_FINALLY_EXPR)
			continue;
		if(gs_tree_code(gs_tree_operand(stmt, 0)) == GS_TRY_CATCH_EXPR)
			stmt = gs_tree_operand(gs_tree_operand(stmt, 0), 0);
		else
			stmt = gs_tree_operand(stmt, 0);
		if(stmt == bind)
			return i;
	}
	return -1;
}