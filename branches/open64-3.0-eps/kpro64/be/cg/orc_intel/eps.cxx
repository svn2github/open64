#include "eps.h"
#include "eps_option.h"
#include "file_util.h"
#include "symtab.h"
#include "glob.h"
#include "gra_live.h"

#include "dominate.h"

#include "speculation.h"
#include "recovery.h"
#include "label_util.h"
#include "freq.h"

#include <map>

#include "dominate.h"

EPS* EPS::_current_eps_driver = NULL;
MEM_POOL* EPS::_current_eps_mempool = NULL;
int EPS::_eps_level;

EPS::EPS(REGION_TREE* region_tree)
{
    _current_eps_driver = this;
    _current_eps_mempool = &_m;

    _region_tree = region_tree;
    _fence_list = NULL;
    _node_attr_map = NULL;
    _region_map = REGION_MAP_Create(32);

    _region_tree->Root()->Regional_Cfg()->Node_Set()[0];
    _join_info = NULL;

    _ogv_map = NULL;

    _is_scheduling = TRUE;

//    prdb = NULL;
//    if (IPFEC_Enable_PRDB) prdb = PRDB_Init(region_tree);

    prtn_map.Create(get_first_bb());

#if EPS_DCM
    _dfence_list = NULL;
#endif

//    if(EPS_vcg) visualize_routine(get_first_bb(), "before_eps");
}

EPS::~EPS()
{
    if(_fence_list) CXX_DELETE(_fence_list, EPS::current_eps_mempool());
    if(_node_attr_map) CXX_DELETE(_node_attr_map, EPS::current_eps_mempool());
    if(_join_info) CXX_DELETE(_join_info, EPS::current_eps_mempool());

    _current_eps_driver = NULL;
    _current_eps_mempool = NULL;
    REGION_MAP_Delete(_region_map);

//    if(prdb) Delete_PRDB();
}

extern int function_count;

void restructure_routine(BB* first_bb)
{
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        OP* op;
        Reset_BB_scheduled(bb);
        for(op = BB_first_op(bb); op!=NULL; ) {
            OP* next_op = OP_next(op);
            if(OP_noop(op)) BB_Remove_Op(bb, op);
            op = next_op;
        }
    }
}

void finish_schedule(BB* first_bb)
{
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        OP* op;
        FOR_ALL_BB_OPs_FWD(bb,op) {
            if(OP_bb(op)==NULL) op->bb = bb;
        }
    }
}

void EPS::run(void)
{
    function_count++;

    if(!eps_option::enable()) {
        fprintf(EPSLOG, "*** EPS disabled ***\n");
        return;
    }

    if(!(eps_option::enable() && eps_option::enable_file() && eps_option::enable_function())) {
        fprintf(EPSLOG, "*** EPS disabled ***\n");
        return;
    }
 
    // 2007/07/31 jaemok reordere EPS to follow GIS.
    // so we have to restructure.
    restructure_routine(get_first_bb());

    // tune control flow
    // 1. make loops to have only 1 entry source, aka loop preheader
    if(eps_option::make_preheader()) make_preheader();
//    if(EPS_vcg) visualize_routine(get_first_bb(), "after_preheader");

    // 2. add region exit node 
    if(eps_option::add_region_exit_node()) add_region_exit_node();

    disallow_cicm(TRUE);

//    if(EPS_vcg) visualize_routine(get_first_bb(), "after_exit_node");

    // 3. split predecessors with more than 2 preds.
    BB* bb;
    for(bb=get_first_bb(); bb; bb=BB_next(bb)) {
        split_predecessors(bb);
    }
//    if(EPS_vcg) visualize_routine(get_first_bb(), "after_split");

    // 4. insert bb at Z point.
    //     A
    //  \ / \
    //   B
    //   a new basic block is required between A-->B
    //   2004.12.06
    std::list<BB*> bbs;
    for(bb=get_first_bb(); bb; bb=BB_next(bb)) {
        bbs.push_back(bb);
    }
    std::list<BB*>::iterator bbs_it;

    for(bbs_it=bbs.begin(); bbs_it!=bbs.end(); bbs_it++) {
        insert_bb_at_Z(*bbs_it);
    }

//    if(EPS_vcg) visualize_routine(get_first_bb(), "after_z");

    // 2004.07.02
    // check control flow.
    // disallow cicm for some regions, which has region predecessor.
    //disallow_cicm(TRUE);

    // set current_routine_name for debugging purpose.
    sprintf(current_routine_name, "%s", ST_name(Get_Current_PU_ST()));
    if(EPSDBG(1)) {
        fprintf(EPSLOG, "===================================\n");
        fprintf(EPSLOG, "EPS for \"%s\"\n", current_routine_name);
        fprintf(EPSLOG, "===================================\n");
    }

    // live in, out update!!
    GRA_LIVE_Init(NULL);

//========================================================================

    if(eps_option::enable() && eps_option::enable_file() && eps_option::enable_function()) {
        _join_info = (join_info*)CXX_NEW(join_info(get_first_bb()), _current_eps_mempool);

        REGION* rgn = this->_region_tree->Root();

        Calculate_Dominators(); // 2009/04/10

        PostDominator pd(get_first_bb());
        _pd = &pd;

        if(EPS_feedback) {
            fprintf(stderr, "EPS with feedback\n");
        } else {
            fprintf(stderr, "EPS without feedback\n");
        }

        schedule_region(rgn);

        Free_Dominators_Memory(); // 2009/04/10
    }

#if 1
    // 2007.10.04 lets count copies live through backedge.
    GRA_LIVE_Init(NULL);
    REGION_VECTOR rgns = this->_region_tree->Region_Set();
    for(REGION_VECTOR::iterator rgns_it=rgns.begin(); rgns_it!=rgns.end(); rgns_it++) {
        REGION* rgn = *rgns_it;
        REGIONAL_CFG* cfg = rgn->Regional_Cfg();

        if(rgn->Region_Type()!=LOOP) continue;
        if(rgn->N_Kids()>0) continue;

        REGIONAL_CFG_NODE* root = rgn->Entries().front();
        EPS_ASSERT((!root->Is_Region()), "Entry must be BB\n");

        BB* root_bb = root->BB_Node();
        GTN_SET* live_into_root = BB_live_in(root_bb);

        NODE_VECTOR nodes = cfg->Node_Set();
        if(nodes.size()<=1) continue;

        fprintf(stderr, "LOOP we consider\n");

        for(NODE_VECTOR::iterator it=nodes.begin(); it!=nodes.end(); it++) {
            REGIONAL_CFG_NODE* node = *it;
            BB* bb = node->BB_Node();
            OP* op;
            FOR_ALL_BB_OPs(bb, op) {
                int i;
                if(!OP_copy(op)) continue;
                if(BB_call(OP_bb(op))) continue;

                for(i=0; i<OP_results(op); i++) {
                    if(OP_result(op,i)==GP_TN) break;
                }
                if(i<OP_results(op)) continue;

                for(i=0; i<OP_results(op); i++) {
                    if(GTN_SET_MemberP(live_into_root, OP_result(op, i))) {
                        op->eps_flags |= OP_EPS_LIVE_COPY;
                    }
                }
                for(i=0; i<OP_opnds(op); i++) {
                    if(GTN_SET_MemberP(live_into_root, OP_opnd(op, i))) {
                        op->eps_flags |= OP_EPS_LIVE_COPY;
                    }
                }
                if((op->eps_flags & OP_EPS_LIVE_COPY)!=OP_EPS_LIVE_COPY) {
                    op->eps_flags |= OP_EPS_NORMAL_COPY;
                }
            }
        }
    }
#endif

#if EPS_DCM
//    down_schedule_region(rgn);
#endif

    // 3. remove empty basic blocks.
    if(eps_option::remove_empty_blocks()) remove_empty_blocks(get_first_bb());

//    if(EPS_vcg) visualize_routine(REGION_First_BB, "after_remove_block");

    // live in, out update!!
    GRA_LIVE_Init(NULL);

    _pd = NULL;


    // 2007/07/31 jaemok reordere EPS to follow GIS.
    // so we have to do something after schedule finished.
    finish_schedule(get_first_bb());
}

static void depth_first_number(REGION* rgn)
{
    int dfn = 0;
    std::stack<int> time_stack;
    std::stack<REGIONAL_CFG_NODE*> node_stack;

    node_stack.push(rgn->Entries().front());
    time_stack.push(0);

    while(!node_stack.empty()) {
        REGIONAL_CFG_NODE* node;
        int timei;

        node = node_stack.top(); node_stack.pop();
        timei = time_stack.top(); time_stack.pop();

        Node_attribute* attrib = EPS::current_eps_driver()->get_attrib(node);
        if(timei==1) {
            attrib->dfn(dfn++);
        } else {
            if(attrib->is_visited()) {
                continue;
            }

            attrib->set_visited(TRUE);
            node_stack.push(node);
            time_stack.push(1);

            vector<REGIONAL_CFG_EDGE*> edges;
            vector<REGIONAL_CFG_EDGE*>::iterator edges_iter;
            for(REGIONAL_CFG_EDGE* succ=node->First_Succ(); succ!=NULL; succ=succ->Next_Succ()) {
                // sort edges in probability order
                for(edges_iter=edges.begin(); edges_iter!=edges.end(); edges_iter++) {
                    if(succ->Prob()>(*edges_iter)->Prob()) break;
                }
                edges.insert(edges_iter, succ);
            }

            // push successor nodes into stack in probability order.
            for(edges_iter=edges.begin(); edges_iter!=edges.end(); edges_iter++) {
                REGIONAL_CFG_NODE* succ_node = (*edges_iter)->Dest();
                node_stack.push(succ_node);
                time_stack.push(0);
            }
        }
    }
}

inline bool schedule_order_of_nodes(REGIONAL_CFG_NODE* n1, REGIONAL_CFG_NODE* n2)
{
    Node_attribute* a1 = EPS::current_eps_driver()->get_attrib(n1);
    Node_attribute* a2 = EPS::current_eps_driver()->get_attrib(n2);

    return (a1->dfn()>a2->dfn());
}

void get_ordered_list(NODE_VECTOR& nodes, REGION* rgn)
{
    depth_first_number(rgn);

    nodes = rgn->Regional_Cfg()->Node_Set();

    sort(nodes.begin(), nodes.end(), schedule_order_of_nodes);
}

void EPS::add_backedges(void)
{
    NODE_VECTOR nodes = _current_region->Regional_Cfg()->Node_Set();
    int backedge_count = 0;

    NODE_VECTOR::iterator it;
    for(it=nodes.begin(); it!=nodes.end(); it++) {
        REGIONAL_CFG_NODE* node = *it;

        if(!node->Is_Region()) {
            // we treat Non-Region nodes only.
            // backedge emitted from Region node shall not be considered.

            BB* bnode = node->BB_Node();
            BBLIST* bsuccs = NULL; 
            FOR_ALL_BB_SUCCS(bnode, bsuccs) {
                BB* bsucc = BBLIST_item(bsuccs);
                REGIONAL_CFG_NODE* succ = Regional_Cfg_Node(bsucc);

                if(succ->Home_Region()==node->Home_Region()) {
                    // succ is in the same region.
                    // check if the edge from node to succ exist, otherwise add edge.
                    REGIONAL_CFG_EDGE* se;
                    for(se=node->First_Succ(); se!=NULL; se=se->Next_Succ()) {
                        if(se->Dest()==succ) {
                            break;
                        }
                    }
                    if(se==NULL) {
                        // there is no edge to "succ"
                        REGIONAL_CFG_EDGE* edge
                            = _current_region->Regional_Cfg()->Add_Edge(node, succ);
                        _saved_backedges.push_back(edge);
                        backedge_count++;
                    }
                } else if(succ->Home_Region()->Is_Contained_By(node->Home_Region())) {
                    REGIONAL_CFG_EDGE* edge = NULL;
                    NODE_VECTOR::iterator it;
                    for(it=nodes.begin(); it!=nodes.end(); it++) {
                        REGIONAL_CFG_NODE* s = *it;
                        if(s->Is_Region() && (succ->Home_Region()==s->Region_Node() || succ->Home_Region()->Is_Contained_By(s->Region_Node()))) {
                            REGION* tsucc;
                            for(tsucc=succ->Home_Region(); tsucc->Is_Contained_By(node->Home_Region()); tsucc=tsucc->Parent()) {
                                if(s->Region_Node()==tsucc) {
                                    REGIONAL_CFG_EDGE* se;
                                    for(se=node->First_Succ(); se!=NULL; se=se->Next_Succ()) {
                                        if(se->Dest()==s) {
                                            break;
                                        }
                                    }
                                    if(se==NULL) {
                                        edge = _current_region->Regional_Cfg()->Add_Edge(node, s);
                                        _saved_backedges.push_back(edge);
                                        backedge_count++;
                                        break;
                                    }
                                }
                            }
                            if(edge) break;
                        }
                    }

                    //  Case 1. if succ is in the inner region.
                    //  we do not consider backedge into the inner region.
                    //  if this is not backedge, the edge must have been already added.
                    //  if this is backedge, we do not consider it.
                    //
                    //  Case 2. if succ is in the outer region.
                    //  of course we do not consider the edge.
                    //
                    //  thus we don't have to anything.
                }
            }
        }
    }

    EPS_ASSERT(backedge_count<2, "backedge is more than 1\n");
}

void EPS::del_backedges(void)
{
    vector<REGIONAL_CFG_EDGE*>::iterator it;
    for(it=_saved_backedges.begin(); it!=_saved_backedges.end(); it++) {
        _current_region->Regional_Cfg()->Del_Edge(*it);
    }
}

// return TRUE for instructions you cannot schedule over it.
// for example, pseudo instruction, call and so on...
BOOL EPS::is_ineligible_succ(OP* op)
{
    //if(OP_call(op)) return TRUE;
    for(int i=0; i<OP_results(op); i++) {
        if(TN_is_save_reg(OP_result(op, i))) return TRUE;
    }
    if(OP_code(op)==TOP_spadjust) return TRUE;
    for(int i=0; i<OP_results(op); i++) {
        TN *tn = OP_result(op, i);
        if(TN_is_register(tn) && TN_number(tn)==13) return TRUE; // r13 is stack pointer
    }
    return FALSE;
}

// return TRUE for pseudo instruction, nop and so on...
BOOL EPS::is_not_schedulable(OP* op)
{
    int i;

    if(op==NULL) return FALSE;

    for(i=0; i<OP_results(op); i++) {
        TN *rtn = OP_result(op, i);
        if(TN_is_register(rtn)) {
            if(TN_is_save_reg(rtn) || TN_is_sp_reg(rtn) || TN_is_gp_reg(rtn)) return TRUE;
            if(BB_exit(OP_bb(op)) && TN_number(rtn)==9) return TRUE;
            if(BB_call(OP_bb(op)) && TN_register(rtn)!=REGISTER_UNDEFINED) return TRUE;
        }
    }
    for(i=0; i<OP_opnds(op); i++) {
        TN *otn = OP_opnd(op, i);
        if(TN_is_register(otn)) {
           if(TN_is_save_reg(otn) || TN_is_sp_reg(otn)) return TRUE;
        }
    }
//    if(OP_store(op)) return TRUE;
//    if(OP_load(op)) return TRUE;
    if(OP_code(op)==TOP_mov_t_pr) return TRUE;
    if(OP_code(op)==TOP_mov_f_pr) return TRUE;

//    if(OP_chk(op)) return TRUE;
//    if(OP_code(op)==TOP_chk_s_i) return TRUE;
//    if(OP_code(op)==TOP_chk_s_m) return TRUE;
//    if(OP_code(op)==TOP_chk_s) return TRUE;
//    if(OP_code(op)==TOP_chk_a) return TRUE;

    if(OP_call(op)) return TRUE;
            
    return FALSE;
}

extern BOOL EPS_vcg;

BOOL EPS::decide_region(REGION* rgn)
{
    if(rgn->Region_Type()!=LOOP && rgn->Region_Type()!=SEME) {
        return FALSE;
    }

    if((!eps_option::enable_region(rgn->Id())) || rgn->Is_No_Further_Opt()) {
        return FALSE;
    }

    if(rgn->Entries().size()>1) {
        return FALSE;
    }

    if((!eps_option::do_seme()) && rgn->Region_Type()!=LOOP) {
        return FALSE;
    }

    if(EPS_feedback && rgn->Entries().front()->Freq()>100.0) {
        return FALSE;
    }

    return TRUE;
}

BOOL EPS::mark_hot_load(DDG* ddg, REGION* rgn)
{
    char* functionname = ST_name(Get_Current_PU_ST());
    int region_id = rgn->Id();

//    if(region_id!=6) {
//        return FALSE;
//    }
//    if(strcmp(functionname, "price_out_impl")!=0) {
//        return FALSE;
//    }

    vector<pair<int,int> > hot_loads;
    if(eps_option::hot_load_region(functionname, region_id, hot_loads)) {
        REGIONAL_CFG* cfg = rgn->Regional_Cfg();
        NODE_VECTOR nodes = cfg->Node_Set();

        NODE_VECTOR::iterator it;
        for(it=nodes.begin(); it!=nodes.end(); it++) {
            REGIONAL_CFG_NODE* node = *it;
            if(node->Is_Region()) continue;
            BB* bb = node->BB_Node();
            OP* op;
            FOR_ALL_BB_OPs_FWD(bb,op) {
//                if(EPS::is_hot_load(op)) {
                if(eps_option::hot_load(hot_loads, op)) {
                    ddg->ClearVisited();
                    DDG_Node* ddg_node = ddg->Find(op);
                    op->eps_flags |= OP_EPS_HOT_LOAD;
                    ddg_node->relate_hot_loads();
                }
            }
        }
    }
}

BOOL EPS::is_hot_load(OP* op)
{
    if(!OP_load(op)) {
        return FALSE;
    }

    TN *tn = OP_result(op, 0);
    if (tn!= NULL && TN_is_register(tn) && !TN_is_const_reg(tn)){
        if (TN_number(tn)==946){
            if(EPSDBG(1)) {
                fprintf(EPSLOG, "found hot load: ");
                eps_print_asm(EPSLOG, op, NULL);
                fprintf(EPSLOG, "\n");
            }
            return TRUE;
        }
    }
    return FALSE;
}

void EPS::schedule_region(REGION* rgn)
{
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        // At first, schedule its childs.
        schedule_region(child_rgn);

        // I want to remove this T.T but...
        GRA_LIVE_Init(NULL);
    }

    rgn->_eps = FALSE;

/*
    if(rgn->Region_Type()!=LOOP && rgn->Region_Type()!=SEME) {
        char buf[256];
        sprintf(buf, "*** skip EPS. File : %s, Function : %s, Region Id : %d ***\n",
                Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), rgn->Id());
        fprintf(EPSLOG, buf);

        if(EPS_vcg) visualize_region(rgn, "skip");
        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);

        return;
    }

    if((!eps_option::enable_region(rgn->Id())) || rgn->Is_No_Further_Opt()) {
        char buf[256];
        sprintf(buf, "*** skip EPS. File : %s, Function : %s, Region Id : %d ***\n",
                Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), rgn->Id());
        fprintf(EPSLOG, buf);

        if(EPS_vcg) visualize_region(rgn, "skip");
        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);

        return;
    }

    EPS_ASSERT(rgn->Entries().size()>0,
            "number of entries of a region must be at least 1");
    if(rgn->Entries().size()>1) {
        if(EPSDBG(1)) fprintf(EPSLOG,
                "Cannot handle regions with more than 1 entries.\n");

        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);
        return;
    }

    // 2007.01.04
    if(rgn->Region_Type()==LOOP) {
        fprintf(stderr, "070104: try schedule loop region\n");
    } else {
        fprintf(stderr, "070104: try schedule seme region\n");
    }

    if((!eps_option::do_seme()) && rgn->Region_Type()!=LOOP) {
        fprintf(stderr, "EPS only loop\n");

        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);

        return;
    }

    if(EPS_feedback && rgn->Entries().front()->Freq()>100.0) {
        fprintf(stderr, "EPS only frequent region\n");

        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);

        return;
    }

    double freq = 0.0;
    if(!EPS_feedback) {
        REGIONAL_CFG_NODE* head = rgn->Entries().front();
        if(!head->Is_Region()) {
            BB* head_bb = head->BB_Node();

//          if(BB_freq(head_bb)<5.0) return;

            freq = BB_freq(head_bb);
        }
    }
*/

    if(!decide_region(rgn)) {
        fprintf(stderr, "no EPS for this region\n");

        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);

        return;
    }

    // 2004/11/04
    // mark if the current region contains call.
    // I want to discourage speculative load for loops with call.
    get_region_attrib(rgn)->pre_calculate_region_attribute(rgn);

    /*
    if(get_region_attrib(rgn)->contain_call()) {
        if(EPSDBG(1)) fprintf(EPSLOG, "EPS only regions without call\n");
        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);
        return;
    }
    */

    if(!get_region_attrib(rgn)->eps()) {
        if(EPSDBG(1)) fprintf(EPSLOG, "no EPS regions with too many inner regions\n");
        init_eps(rgn);
        get_region_attrib(rgn)->calculate_region_attribute(rgn);
        return;
    }

    {
        char buf[256];
        sprintf(buf, "*** do EPS. File : %s, Function : %s, Region Id : %d ***\n",
                Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), rgn->Id());
        fprintf(EPSLOG, buf);

        if(EPS_vcg) visualize_region(rgn, "before");
    }


    // 2004.11.12
    // I really did not want to do this...
    // this is bug fixing by "special" case.
    // I don't know where this bug came from...
    // I'm going to fix bugs which I don't know the reason by this way.
    eps_option::bug_no_cicm = 0;
    eps_option::bug_no_spld = 0;
    eps_option::bug_no_advld = 0;
    eps_option::bug_no_substitute = 0;

    // 175.vpr
    if((strcmp(Last_Pathname_Component(Src_File_Name), "rr_graph2.c")==0 &&
        strcmp(ST_name(Get_Current_PU_ST()), "alloc_and_load_rr_node_indices")==0)) {
        eps_option::bug_no_cicm = 1;
    }
    // 186.crafty
    if((rgn->Id()==21 &&
        strcmp(Last_Pathname_Component(Src_File_Name), "init.c")==0 &&
        strcmp(ST_name(Get_Current_PU_ST()), "InitializeAttackBoards")==0)) {
        eps_option::bug_no_cicm = 1;
    }

    // 2007.01.31
    rgn->_eps = TRUE;

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "===================================\n");
        fprintf(EPSLOG, "Begin scheduling region : REGION_ID %d\n", rgn->Id());
        fprintf(EPSLOG, "===================================\n");
    }

    fprintf(stderr, "WHICH_SCHEDULER: EPS %s, Function : %s, Region : %d\n", Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), rgn->Id());

    init_eps(rgn);
    init_fences();
    init_node_attr(rgn); // construct REGINAL_CFG_NODE --> Node_attribute map.
    _eps_level = 1;

    DDG ddg;
    _ddg = &ddg;
    _ddg->Construct(rgn, _pd);

    mark_hot_load(_ddg, rgn);  // 2009/02/15 jaemok

    // 2009/03/31 jaemok
    {
        REGIONAL_CFG* rgn_cfg = rgn->Regional_Cfg();
        TOPOLOGICAL_REGIONAL_CFG_ITER it(rgn_cfg);
        std::map<int, int> nodeImportanceMap;
        for(; it!=0; ++it) {
            REGIONAL_CFG_NODE* node = *it;
            if(node->Is_Loop_Head()) {
                nodeImportanceMap[node->Id()] = 10000;
                continue;
            }

            int importance = 0;
            REGIONAL_CFG_EDGE* predEdge;
            for(predEdge=node->First_Pred(); predEdge!=NULL; predEdge=predEdge->Next_Pred()) {
                REGIONAL_CFG_NODE* predNode = predEdge->Src();
                importance += (nodeImportanceMap[predNode->Id()]/predNode->Succ_Num());
            }
            nodeImportanceMap[node->Id()] = importance;
        }
        fprintf(EPSLOG, "RGN:%d\n", rgn->Id());
        for(std::map<int,int>::iterator it2=nodeImportanceMap.begin(); it2!=nodeImportanceMap.end(); it2++) {
            int nodeID = it2->first;
            int nodeImportance = it2->second;
            fprintf(EPSLOG, "rgnNode:%d importance:%d\n", nodeID, nodeImportance);
        }

        TOPOLOGICAL_REGIONAL_CFG_ITER it3(rgn_cfg);
        for(; it3!=0; ++it3) {
            REGIONAL_CFG_NODE* node = *it3;
            if(node->Is_Region()) continue;

            BB* bb = node->BB_Node();
            OP* op;
            FOR_ALL_BB_OPs(bb, op) {
                op->importance = nodeImportanceMap[node->Id()];
            }
        }
    }

//    if(eps_option::exploit_predicate2()>0) {
      resolve_control_dependent_predicates(rgn); // 2009/04/09
//    }

#if EPS_SPECLOAD
    SpecLDs spec_lds;
    _spec_lds = &spec_lds;
#endif

    // 2007/08/14
    GIS_SpecLDs gis_spec_lds;
    _gis_spec_lds = &gis_spec_lds;
    _gis_spec_lds->Construct(rgn);

    if(EPS_vcg) visualize_ddg(&ddg);

//    if(EPS_vcg) visualize_region(rgn, "before_backedge");

    add_backedges(); // add backedges into this REGION.

//    fprintf(stderr, "***Number of region : %d***\n", rgn->Id());
//    if(EPS_vcg) visualize_region(rgn, "before");
//    visualize_pdg(rgn, "jaemok");
//    return;

    if(_ogv_map!=NULL) CXX_DELETE(_ogv_map, EPS::current_eps_mempool());
    _ogv_map = CXX_NEW(OPS_Group_vector_map(rgn), EPS::current_eps_mempool());

#if SCHEDULE_NODE // schedule node by node
    // get sorted list of nodes(basic blocks).
    NODE_VECTOR ordered_nodes;
    NODE_VECTOR_ITER node_iter;

    get_ordered_list(ordered_nodes, rgn);
    for(node_iter=ordered_nodes.begin(); node_iter!=ordered_nodes.end(); node_iter++) {
        schedule_node(*node_iter);
        create_fences_at_successors(*node_iter);
    }
#elif SCHEDULE_FENCE_LIST
    {
//        int spec=0;
//        int max_spec = EPS_spec;
//        char buf[32];
//        for(spec=0; spec<=max_spec; spec++) {
//            EPS_spec = spec;

            init_eps(rgn);
            init_fences();
            init_node_attr(rgn); // construct REGINAL_CFG_NODE --> Node_attribute map.
            _eps_level = 1;

//            DDG ddg;
//            _ddg = &ddg;
//            _ddg->Construct(rgn, _pd);

            depth_first_number(rgn);

            fprintf(stderr, "schedule with spec=%d\n", EPS_spec);
            schedule_fences(rgn);
            if(EPS_vcg) {
                //sprintf(buf, "after");
                visualize_region(rgn, "after");
            }

            NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
            for(NODE_VECTOR::iterator it=nodes.begin(); it!=nodes.end(); it++) {
                REGIONAL_CFG_NODE* node = *it;
                if(!node->Is_Region()) {
                    BB* bb = node->BB_Node();
                    OP* op;
                    FOR_ALL_BB_OPs(bb, op) {
                        if(op->iteration_number>=1) op->iteration_number--;
                    }
                }
            }
//        }
    }
#else
#error
#endif


    if(_ogv_map!=NULL) CXX_DELETE(_ogv_map, EPS::current_eps_mempool());
    _ogv_map = CXX_NEW(OPS_Group_vector_map(rgn), EPS::current_eps_mempool());
#if EPS_SPECLOAD
    pushdown_chk_region(rgn);
#endif

#if EPS_DCM
    if(_dfence_list!=NULL) CXX_DELETE(_dfence_list, EPS::current_eps_mempool());
    _dfence_list = CXX_NEW(DFence_list(), EPS::current_eps_mempool());

    NODE_VECTOR::reverse_iterator  node_r_iter;
    for(node_r_iter=ordered_nodes.rbegin(); node_r_iter!=ordered_nodes.rend(); node_r_iter++) {
        down_schedule_node(*node_r_iter);
        create_dfences_at_predecessors(*node_r_iter);
    }
#endif

    get_region_attrib(rgn)->calculate_region_attribute(rgn);

    // delete node(basic block) -> attribute map.
    if(_node_attr_map) {
        CXX_DELETE(_node_attr_map, EPS::current_eps_mempool());
        _node_attr_map = NULL;
    }

    del_backedges(); // delete added backedges from this REGION.

    _ddg = NULL;

    if(EPS_vcg) visualize_region(rgn, "after");

    post_process_region(rgn);
    if(EPS_vcg) visualize_region(rgn, "after_pp");
}

#if EPS_DCM
/*
void EPS::down_schedule_region(REGION* rgn)
{
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        // At first, schedule its childs.
        down_schedule_region(child_rgn);
    }

    if(_dfence_list!=NULL) CXX_DELETE(_dfence_list, EPS::current_eps_mempool());
    _dfence_list = CXX_NEW(DFence_list(), EPS::current_eps_mempool());
    _ogv_map = CXX_NEW(OPS_Group_vector_map(rgn), EPS::current_eps_mempool());
}
*/
#endif

BOOL EPS::go_further_successor(REGIONAL_CFG_NODE* node)
{
    // do not go further than serialized basic block
    if(EPS::current_eps_driver()->is_fence(node, NULL)) {
	    return FALSE;
    }

    if(node->Pred_Num()>1) {
        REGIONAL_CFG_EDGE* pe;
        for(pe=node->First_Pred(); pe; pe=pe->Next_Pred()) {
            REGIONAL_CFG_NODE* pred = pe->Src();
            if(pred->Is_Region()) {
    		    // there is region node among predecessors...
                return FALSE;
            }
        }
    }

    if(node->Pred_Num()>2) {
        if(node->Is_Region()) {
    		return FALSE;
        }
    }

    // we do not move instruction above join point with more than 2 predecessors.
    // if(!(node->Is_Entry() || node->Pred_Num()<=2)) {
    if(node->Is_Region()) {
#if !EPS_CROSS_REGION
        // we don't go across region.
        return FALSE;
#endif
        if(node->Is_Entry()) {
    		// we do not go across region which is entry of loop.
            return FALSE;
        }
    } else {
        if(node->Pred_Num()==1 && node->First_Pred()->Src()->Is_Region()) {
            // this node is region exit node.
        } else {
            if(BB_preds_len(node->BB_Node())>2) return FALSE;
            if(BB_succs_len(node->BB_Node())>2) return FALSE;
        }
    }

    return TRUE;
}

#if SCHEDULE_NODE
void EPS::schedule_node(REGIONAL_CFG_NODE* node)
{
    if(!node->Is_Region() && !eps_option::enable_bb(BB_id(node->BB_Node()))) {
        char buf[256];
        sprintf(buf, "*** EPS skipping by option. File : %s, Function : %s, BB Id : %d ***\n",
                Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), BB_id(node->BB_Node()));
        fprintf(EPSLOG, buf);

        // 2007.02.09
        Fence* fence = is_fence(node, NULL);
        if(fence) remove_fence(fence);

        return;
    }
    
    REGIONAL_CFG_EDGE* succ_edge;

    if(EPSDBG(1)) {
        if(node->Is_Region()) {
            fprintf(EPSLOG, "Visit inner region : REGION_ID %d\n", node->Region_Node()->Id());
        } else {
            fprintf(EPSLOG, "===================================\n");
            fprintf(EPSLOG, "Begin scheduling node : BB_ID %d\n", BB_id(node->BB_Node()));
            fprintf(EPSLOG, "===================================\n");
            _fence_list->debug_print();
        }
    }

    // this loop is just for checking now.
    for(succ_edge=node->First_Succ(); succ_edge!=NULL; succ_edge=succ_edge->Next_Succ()) {
#if EPS_SPECLOAD
        if(recovery(succ_edge->Dest())) continue;
#endif
        if(succ_edge->Dest()->Is_Entry()) continue; // in order to enable software pipelining
        EPS_ASSERT(!get_attrib(succ_edge->Dest())->is_scheduled(), "Make sure that scheduling reverse post order.\n");
    }

    get_attrib(node)->set_scheduled(TRUE);

    if(node->Is_Region()) {
        // just skip the inner region.
        Fence* fence = is_fence(node, NULL);
        if(fence) remove_fence(fence);
        return;
    }

    do {
        // because of 186.crafty...
        // we do not schedule empty basic block between region node.

        // because I've fixed branch related schedule,
        // we have to prevent scheduling for empty basic block now.
        // (before fix, empty basic block was not scheduled automatically
/*
        REGIONAL_CFG_NODE* us = node->Unique_Succ();
        REGIONAL_CFG_NODE* up = node->Unique_Pred();

        if(us==NULL || up==NULL) break;
        if(!us->Is_Region()) break;
        if(!up->Is_Region()) break;
*/

        BB* bb = node->BB_Node();

//        if(new_bbs.find(BB_id(bb))==new_bbs.end()) break;

        if(BB_length(bb)>1) break;
        if((BB_length(bb)==1) &&
           (BB_succs_len(bb)>1 || (!OP_br(BB_first_op(bb))))) break;

        // 2007.01.19 try to schedule empty basic blocks too :)
        break;

        Fence* fence = is_fence(node, NULL);
        if(fence) remove_fence(fence);
        return;
    } while(0);

    BOOL stop = FALSE;
    Fence* fence = add_fence(node);
    OP* first_op = BB_first_op(node->BB_Node());
    if(first_op) {
        int fence_id=0;
        char buf[128];
        do {
            if(!eps_option::enable_fence(fence_id)) break;
            if(EPSDBG(1)) fprintf(EPSLOG, "Fence id:%d\n", fence_id);
            fence->fill_group();

            // 2004/05/20 update DDG.
            if(EPSDBG(1)) fprintf(EPSLOG, "start updating ddg %d\n", _eps_level);
            _ddg->Update(fence, _eps_level);
            if(EPSDBG(1)) fprintf(EPSLOG, "end updating ddg\n");


//            sprintf(buf, "BB_%d_fence_%d", BB_id(node->BB_Node()), fence_id);
//            if(EPS_vcg) visualize_ddg(_ddg, buf);
//            if(EPS_vcg)
//                visualize_region(EPS::current_eps_driver()->current_region(), buf);

            stop = fence->advance_fence_in_node();
            fence_id++;
        } while(!stop);
    }

    remove_fence(fence);

    if(!node->Is_Region()) get_ogv(node)->construct(node->BB_Node());
}
#elif SCHEDULE_FENCE_LIST
BOOL EPS::check_ready(REGIONAL_CFG_NODE* node)
{
    Node_attribute* attr = get_attrib(node);
    if(attr->is_ready()) return TRUE;

    REGIONAL_CFG_EDGE* pred_edge;
    for(pred_edge=node->First_Pred(); pred_edge!=NULL; pred_edge=pred_edge->Next_Pred()) {
        REGIONAL_CFG_NODE* pred = pred_edge->Src();
        if((!pred->Is_Region()) && (!get_attrib(pred)->is_scheduled())) {
            // predecessor is not scheduled.
            return FALSE;
        }
    }
    attr->set_ready(TRUE);
    return TRUE;
}

int fence_id = 0;

void EPS::schedule_fences(REGION* rgn)
{
    // 1. create the first fence at root.
    // 2. rotate fences in fence list.
    // 3. if the fence reaches at the end of the node it belongs,
    //    check if the successor is ready to schedule.
    //    ready schedule means, its predecessors are scheduled.
    //    if the successor is ready, advance the fence.
    //    unless, skip to next fence.

    // 1. initiate schedule : create fence at the root.
    REGIONAL_CFG_NODE* root = rgn->Entries().front();
    get_attrib(root)->set_ready(TRUE);

    add_fence(root);

    // 2. rotate fences.
    while(!_fence_list->empty()) {
        Fence_list::iterator it;
        for(it=_fence_list->begin(); it!=_fence_list->end(); it++) {
            Fence* fence = *it;
            REGIONAL_CFG_NODE* node = fence->fence_node();
            Node_attribute* attrib = get_attrib(node);

            if(EPSDBG(1)) {
                fprintf(EPSLOG, "FENCES \n");
                Fence_list::iterator it;
                for(it=_fence_list->begin(); it!=_fence_list->end(); it++) {
                    Fence* f = *it;
                    fprintf(EPSLOG, "FENCE: ");
                    f->print(EPSLOG);
                }
                fprintf(EPSLOG, "Start %s ",attrib->is_scheduled()?"scheduled":"not scheduled");
                fence->print(EPSLOG);
            }

            if(node->Is_Region()) {
                attrib->set_scheduled(TRUE);
            } else {
                if((!attrib->is_scheduled()) && check_ready(node)) {
                    // this fence is scheduling.
                    BB* bb = node->BB_Node();
                    BOOL stop;
                    if(BB_length(bb)==0 || (BB_length(bb)==1 && BB_succs_len(bb)==1 && OP_br(BB_first_op(bb)))) {
                        // this bb is empty or with 1 unconditional branch instruction
                        attrib->set_scheduled(TRUE);
                        continue;
                    }

                    if(eps_option::enable_fence(fence_id++)) {
                        char buf[256];

                        fence->fill_group();

                        if(EPSDBG(1)) fprintf(EPSLOG, "start updating ddg %d\n", _eps_level);
                        _ddg->Update(fence, _eps_level);
                        if(EPSDBG(1)) fprintf(EPSLOG, "end updating ddg\n");

                        sprintf(buf, "BB_%d_fence_%d", BB_id(node->BB_Node()), fence_id);
                        if(EPS_vcg) visualize_ddg(_ddg, buf);

                        stop = fence->advance_fence_in_node();
                    } else {
                        stop = TRUE;
                    }
                    if(stop) {
                        attrib->set_scheduled(TRUE);
                    }
                }
            }
            if(attrib->is_scheduled()) {
                // the node of this fence is scheduled.
                // check if successor is ready, and if it is ready, move fences
                REGIONAL_CFG_EDGE* succ_edge;
                BOOL succs_are_ready = TRUE;
                for(succ_edge=node->First_Succ(); succ_edge!=NULL; succ_edge=succ_edge->Next_Succ()) {
                    REGIONAL_CFG_NODE* succ = succ_edge->Dest();
                    Node_attribute* succ_attrib = get_attrib(succ);
                    if((!succ_attrib->is_ready()) && check_ready(succ)) {
                        // the successor became ready.
                        EPS_ASSERT(!succ_attrib->is_scheduled(), "successor cannot be scheduled already\n");
                        if(EPSDBG(1)) {
                            if(succ->Is_Region()) fprintf(EPSLOG, "FENCE:add fence at REGION %d\n", succ->Region_Node()->Id());
                            else fprintf(EPSLOG, "FENCE:add fence at BB %d\n", BB_id(succ->BB_Node()));
                        }
//                        add_fence(succ);
//sylee 08.09.08
                        _fence_list->add_fence2(succ, fence->_sim_state);				                        

                        it = _fence_list->end();    // 2007.03.13
                    } else if(succ_attrib->is_ready()) {
                        // the successor is ready.
                    } else {
                        // a successor is not ready.
                        succs_are_ready = FALSE;
                    }
                }
                if(succs_are_ready) {
                    if(EPSDBG(1)) {
                        if(node->Is_Region()) fprintf(EPSLOG, "FENCE:remove fence at REGION %d\n", node->Region_Node()->Id());
                        else fprintf(EPSLOG, "FENCE:remove fence at BB %d\n", BB_id(node->BB_Node()));
                    }
                    remove_fence(fence);
                }
            }
            if(EPS_vcg) {
//                char buf[64];
//                sprintf(buf, "fence_%d", fence_id);
//                visualize_ddg(_ddg, buf);
            }
        }
    }
}
#else
#error
#endif
#if EPS_DCM
void EPS::down_schedule_node(REGIONAL_CFG_NODE* node)
{
    if(!node->Is_Region() && !eps_option::enable_bb(BB_id(node->BB_Node()))) {
        char buf[256];
        sprintf(buf, "*** Down EPS skipping by option. File : %s, Function : %s, BB Id : %d ***\n",
                Last_Pathname_Component(Src_File_Name), ST_name(Get_Current_PU_ST()), BB_id(node->BB_Node()));
        fprintf(EPSLOG, buf);
        return;
    }

    REGIONAL_CFG_EDGE* pred_edge;

    if(EPSDBG(1)) {
        if(node->Is_Region()) {
            fprintf(EPSLOG, "Visit inner region : REGION_ID %d\n", node->Region_Node()->Id());
        } else {
            fprintf(EPSLOG, "===================================\n");
            fprintf(EPSLOG, "Begin down scheduling node : BB_ID %d\n", BB_id(node->BB_Node()));
            fprintf(EPSLOG, "===================================\n");
            get_ogv(node)->print(EPSLOG);
        }
    }

    // this loop is just for checking now.
    for(pred_edge=node->First_Pred(); pred_edge!=NULL; pred_edge=pred_edge->Next_Pred()) {
        if(pred_edge->Src()->Is_Exit()) continue; // in order to enable software pipelining
        EPS_ASSERT(!get_attrib(pred_edge->Src())->is_dscheduled(), "Make sure that down scheduling post order.\n");
    }

    get_attrib(node)->set_dscheduled(TRUE);

    DownFence* dfence;

    if(node->Is_Region()) {
        // just skip the inner region.
        dfence = this->is_dfence(node, NULL);
        if(dfence) remove_dfence(dfence);
        return;
    }

    BOOL stop = FALSE;
    dfence = add_dfence(node);
    OP* last_op = BB_last_op(node->BB_Node());
    if(last_op) {
        int dfence_id = 0;
        do {
            dfence->fill_group();
            stop = dfence->advance_fence_in_node();
            dfence_id++;
        } while(!stop);
    }

    remove_dfence(dfence);
}
#endif

void EPS::create_fences_at_successors(REGIONAL_CFG_NODE* node)
{
    for(REGIONAL_CFG_EDGE* succ = node->First_Succ(); succ!=NULL; succ=succ->Next_Succ()) {
#if EPS_SPECLOAD
        if(recovery(succ->Dest())) continue;
#endif
        if(get_attrib(succ->Dest())->is_scheduled()) continue;

        add_fence(succ->Dest());
    }
}

#if EPS_DCM
void EPS::create_dfences_at_predecessors(REGIONAL_CFG_NODE* node)
{
    for(REGIONAL_CFG_EDGE* pred = node->First_Pred(); pred!=NULL; pred=pred->Next_Pred()) {
        if(get_attrib(pred->Src())->is_dscheduled()) continue;
        add_dfence(pred->Src());
    }
}
#endif

void EPS::analysis_regions(REGION* rgn, int depth)
{
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        analysis_regions(child_rgn, depth+1);
    }
    if(rgn->Entries().size()>1) {
        return;
    }
    if(/*(!eps_option::do_seme()) &&*/ rgn->Region_Type()!=LOOP || rgn->Is_No_Further_Opt()) {
       if(rgn->Region_Type()==LOOP && rgn->Is_No_Further_Opt()) {
           fprintf(stderr, "NOFURTHER\n");
       }
       if(rgn->Region_Type()!=LOOP) return;
    }

    char buf[64];
    sprintf(buf, "AFTER_SCHEDULE:%s:%d:%s:", ST_name(Get_Current_PU_ST()), rgn->Id(), rgn->Is_No_Further_Opt()?"NOF":"");
    EPS::set_is_scheduling(FALSE);
    calculate_IPCs_region(rgn, buf, depth);
    EPS::set_is_scheduling(TRUE);
}

#if 0
double EPS::calculate_IPCs_region(REGION* rgn, const char* message)
{
    int cycle = 0;
    int insts = 0;

    REGIONAL_CFG *rgn_cfg = rgn->Regional_Cfg();
    REGIONAL_CFG_NODE *node;

    NODE_VECTOR node_set = rgn_cfg->Node_Set();
    NODE_VECTOR_ITER iter;
    
    for (iter = node_set.begin(); iter != node_set.end(); iter++) {
        node = *iter;
        if(node->Is_Region()) continue;

        int bb_cycle=0;
        int bb_inst=0;
        
        BB* bb = node->BB_Node();
        EPS_SIM_STATE debug_sim_state;

        if(BB_first_op(bb)==NULL) continue;
        if(EPS::current_eps_driver()->IsRecoveryBlock(BB_id(bb))) continue;

        for(OP* op = BB_first_op(bb); op; op=OP_next(op)) {
            while(!debug_sim_state.Issue_OP(op, FALSE)) {
                bb_cycle++;
                debug_sim_state.Advance_Cycle();
            }
            debug_sim_state.Issue_OP(op, TRUE);

            if(OP_noop(op)) continue;
            bb_inst++;
        }
        if(BB_first_op(bb)!=NULL) bb_cycle++;
        
        fprintf(stderr, "%s BB_INFO %d cycles: %d, insts: %d\n", message, BB_id(bb), bb_cycle, bb_inst);

        cycle += bb_cycle;
        insts += bb_inst;
    }

    fprintf(stderr, "%s cycles: %d insts: %d IPC: %f\n", message, cycle, insts, (double)insts/(double)cycle);

    return (double)insts/(double)cycle;
}
#else
void calculate_weight(Node_attr_map* map, REGIONAL_CFG_NODE* node, double weight)
{
    REGIONAL_CFG_EDGE* succ_e;

    if(!node->Is_Region() && BB_recovery(node->BB_Node())) return;

    Node_attribute* attr = map->get_attrib(node);

    if(attr->is_visited()) return;

    if(node->Is_Region()) {
        fprintf(stderr, "calculate weight for region %d:", node->Region_Node()->Id());
    } else {
        fprintf(stderr, "calculate weight for BB %d:", BB_id(node->BB_Node()));
    }

    attr->set_visited(TRUE);
    attr->weight(attr->weight()+weight);

    fprintf(stderr, "%f\n", attr->weight());

    double succ_weight = weight / ((double)node->Succ_Num());

    for(succ_e = node->First_Succ(); succ_e; succ_e=succ_e->Next_Succ()) {
        REGIONAL_CFG_NODE* succ = succ_e->Dest();
        Node_attribute* attr1 = EPS::current_eps_driver()->get_attrib(node);

        calculate_weight(map, succ, succ_weight);
    }
}

void traverse_region_calculating_IPC(Node_attr_map* map, REGIONAL_CFG_NODE* node, int cycles, int insts, const char* message)
{
    REGIONAL_CFG_EDGE* succ_e;

    Node_attribute* attr = map->get_attrib(node);

    cycles += attr->cycle();
    insts += attr->insts();


    if(!node->Is_Region() && BB_recovery(node->BB_Node())) return;

//fprintf(stderr, "%d ", node->Id());

    for(succ_e = node->First_Succ(); succ_e; succ_e=succ_e->Next_Succ()) {
        REGIONAL_CFG_NODE* succ = succ_e->Dest();
        Node_attribute* attr1 = EPS::current_eps_driver()->get_attrib(node);
        if(attr1->dfn()==0) continue;

        traverse_region_calculating_IPC(map, succ, cycles, insts, message);
    }

    if(node->First_Succ()==NULL) {
        // end of path.
        fprintf(stderr, "\n%s cycles: %f insts: %f\n", message, (float)cycles, (float)insts);
    }
}

double EPS::calculate_IPCs_region(REGION* rgn, const char* message, int depth)
{
    int cycle = 0;
    int insts = 0;

    double total_cycle = 0.0;
    double total_insts = 0.0;

    Node_attr_map map(rgn);

    EPS::current_eps_driver()->_node_attr_map = &map;

//    if(!CG_PU_Has_Feedback) {
//        depth_first_number(rgn);
//    }

//    if(EPS_vcg) visualize_region(rgn, "cals");

    REGIONAL_CFG *rgn_cfg = rgn->Regional_Cfg();
    REGIONAL_CFG_NODE *node;

    NODE_VECTOR node_set = rgn_cfg->Node_Set();
    NODE_VECTOR_ITER iter;

    if(!CG_PU_Has_Feedback) {
        calculate_weight(&map, rgn->Entries().front(), 1.0);
    }

    for (iter = node_set.begin(); iter != node_set.end(); iter++) {
        node = *iter;
        if(node->Is_Region()) continue;

        int bb_cycle=0;
        int bb_inst=0;
        
        BB* bb = node->BB_Node();
        EPS_SIM_STATE debug_sim_state;

        if(BB_first_op(bb)==NULL) continue;

        for(OP* op = BB_first_op(bb); op; op=OP_next(op)) {
            while(!debug_sim_state.Issue_OP(op, FALSE)) {
                bb_cycle++;
                debug_sim_state.Advance_Cycle();
            }
            debug_sim_state.Issue_OP(op, TRUE);

            if(OP_noop(op)) continue;
            bb_inst++;
        }
        if(BB_first_op(bb)!=NULL) bb_cycle++;

        Node_attribute* attr = map.get_attrib(node);
        double weight;
        if(CG_PU_Has_Feedback) {
            if(BB_freq_fb_based(bb)) weight = BB_freq(bb);
            else weight = 0.0;
        } else {
            weight = attr->weight();
        }
        attr->cycle(bb_cycle);
        attr->insts(bb_inst);

        total_cycle += weight*((double)bb_cycle);
        total_insts  += weight*((double)bb_inst);

        fprintf(stderr, "BB_INFO %d cycles: %d, insts: %d weight: %f\n", BB_id(bb), bb_cycle, bb_inst, weight);
    }

//    traverse_region_calculating_IPC(&map, *(node_set.begin()), 0, 0, message);

    fprintf(stderr, "%s\tcycles:\t%f\tinsts:\t%f\tdepth:\t%d\n", message, total_cycle, total_insts, depth);

    EPS::current_eps_driver()->_node_attr_map = NULL;

    return 0;
}
#endif

double EPS::calculate_IPCs(BB* first_bb, const char* message)
{
    int cycle = 0;
    int insts = 0;
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        EPS_SIM_STATE debug_sim_state;
        for(OP* op = BB_first_op(bb); op; op=OP_next(op)) {
            while(!debug_sim_state.Issue_OP(op, FALSE)) {
                cycle++;
                debug_sim_state.Advance_Cycle();
            }
            debug_sim_state.Issue_OP(op, TRUE);

            if(OP_noop(op)) continue;
            insts++;
        }
    }

    fprintf(stderr, "%s cycles: %d, insts: %d, IPC: %f\n", message, cycle, insts, (double)insts/(double)cycle);

    return (double)insts/(double)cycle;
}

// 2004.07.02
void EPS::disallow_cicm(BOOL check)
{
    REGION* rgn = this->_region_tree->Root();

    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        disallow_cicm(child_rgn, check);
    }

    Region_attribute* attr = CXX_NEW(Region_attribute(), EPS::current_eps_mempool());
    REGION_MAP_Set(_region_map, rgn, attr);
}

void EPS::disallow_cicm(REGION* rgn, BOOL check)
{
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        disallow_cicm(child_rgn, check);
    }

    Region_attribute* attr = CXX_NEW(Region_attribute(), EPS::current_eps_mempool());
    REGION_MAP_Set(_region_map, rgn, attr);

    REGIONAL_CFG_NODE* node = rgn->Regional_Cfg_Node();
    REGIONAL_CFG_EDGE* pred_e;
    for(pred_e = node->First_Pred(); pred_e; pred_e=pred_e->Next_Pred()) {
        REGIONAL_CFG_NODE* pred = pred_e->Src();
        if(pred->Is_Region()) {
            if(check) {
//                if(EPSDBG(1)) {
                  if(rgn->Region_Type()==LOOP) {
                    fprintf(EPSLOG, "disallow rgn:%d\n", rgn->Id());
                  }
//                }
                get_region_attrib(rgn)->cicm_disallow();
                break;
            } else {
//                if(EPSDBG(1)) {
                  if(rgn->Region_Type()==LOOP) {
                    fprintf(EPSLOG, "disallowable rgn:%d\n", rgn->Id());
                  }
//                }
                break;
            }
        }
    }
}

void EPS::make_preheader(void)
{
    REGION* rgn = this->_region_tree->Root();

    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        make_preheader(child_rgn);
    }
}

int xxxx_make_preheader=0;

void EPS::make_preheader(REGION* rgn)
{
    if(rgn->Region_Type()!=LOOP /*&& rgn->Region_Type()!=SEME*/) return;

    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        make_preheader(child_rgn);
    }

    //if(!eps_option::enable_region(rgn->Id())) return;
    //if(rgn->Is_No_Further_Opt()) return;
    if(rgn->Entries().size()>1) return;

    // we make preheader only for LOOP type region.
    //if(rgn->Region_Type()!=LOOP) return;
    EPS_ASSERT(rgn->Entries().size()==1, "# of entries must be 1\n");

    REGIONAL_CFG_NODE* entry = rgn->Entries()[0];
    if(entry->Is_Region()) return;

    BOOL is_entry_region = FALSE;
    if(rgn->Regional_Cfg_Node() && rgn->Regional_Cfg_Node()->Is_Entry()) {
        is_entry_region = TRUE;
//        return;
    }

    BB* entry_bb = entry->BB_Node();

    // 1. Make new bb in outer region
    // 2. For each pred_bb of entry_bb
    // 3. If the pred_bb is in outer region, insert the new bb into the edge

    std::list<BB*> preds_list;
    bblist* preds;
    FOR_ALL_BB_PREDS(entry_bb, preds) {
        BB* pred = BBLIST_item(preds);
        if(Region_Contains_BB(rgn, pred)) continue;

        preds_list.push_back(pred);
    }

    // if we have only 1 in-edge from outer region, we don't have to make preheader.
    if(preds_list.size()<2) {
        if(preds_list.size()==0) {
            return;
        }

        BB* uniq_pred = preds_list.front();
        REGIONAL_CFG_NODE* pred_node = Regional_Cfg_Node(uniq_pred);

        if(rgn->Is_Contained_By(pred_node->Home_Region())) {
            // 2004.12.06
            if(BB_succs_len(uniq_pred)==1) {
                return;
            }
        }
    }

//    xxxx_make_preheader++;
//    if(xxxx_make_preheader!=4) return;

    // create new bb;
    BB* newbb = Gen_BB();
    BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
    new_bbs.insert(BB_id(newbb));

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "make preheader RGN_id:%d BB_id: %d\n", rgn->Id(), BB_id(newbb));
    }

    // set new bb's rid.
    NODE_VECTOR outer_nodes =
        rgn->Regional_Cfg_Node()->Home_Region()->Regional_Cfg()->Node_Set();
    NODE_VECTOR_ITER node_it;
    for(node_it=outer_nodes.begin(); node_it!=outer_nodes.end(); node_it++) {
        if(!(*node_it)->Is_Region()) {
            BB_rid(newbb) = BB_rid((*node_it)->BB_Node());
            break;
        }
    }

    // new basic block's position
    // -1: not determined
    //  0: right before entry_bb, when BB_prev(entry_bb) is in preds_list.
    //  1: next to one of pred of entry_bb, which is not contained by rgn.
    //     but the pred should not fallthrough.
    //  2: I don't know yet...T.T

    int newbb_pos = -1;
    std::list<BB*>::iterator preds_it;
    EPS_ASSERT(BB_prev(entry_bb)!=NULL, "well...\n");
    for(preds_it=preds_list.begin(); preds_it!=preds_list.end(); preds_it++) {
        BB* pred = *preds_it;
        if(pred==BB_prev(entry_bb)) {
            newbb_pos = 0;
            BB_prev(newbb) = BB_prev(entry_bb);
            BB_next(BB_prev(entry_bb)) = newbb;
            BB_prev(entry_bb) = newbb;
            BB_next(newbb) = entry_bb;
            break;
        }
    }
    for(preds_it=preds_list.begin(); preds_it!=preds_list.end(); preds_it++) {
        BB* pred = *preds_it;
        BOOL retarget = FALSE;

        // 2004.12.23
        if(FREQ_Frequencies_Computed()) {
            BB_freq(newbb) +=
                BB_freq(pred)*BBLIST_prob(BB_Find_Succ(pred, entry_bb));
        }

        if(newbb_pos<0) {
            if(BB_succs_len(pred)==1) {
                newbb_pos = 1;
                if(BB_next(pred)) BB_prev(BB_next(pred)) = newbb;
                BB_next(newbb) = BB_next(pred);
                BB_next(pred) = newbb;
                BB_prev(newbb) = pred;

                OP* br = BB_branch_op(pred);
                BB_Move_Op_To_End(newbb, pred, br);
            } else {
                retarget = BB_Retarget_Branch(pred, entry_bb, newbb);
                EPS_ASSERT(retarget==TRUE, "retarget failed\n");
            }
        } else if(!(newbb_pos==0 && BB_next(pred)==newbb)) {
            retarget = BB_Retarget_Branch(pred, entry_bb, newbb);
            EPS_ASSERT(retarget==TRUE, "retarget failed\n");
        }
        if(!retarget) {
            float prob = BBLIST_prob(BB_Find_Succ(pred, entry_bb));
            BBlist_Delete_BB(&BB_succs(pred), entry_bb);
            Link_Pred_Succ_with_Prob(pred, newbb, prob, FALSE, TRUE);
            BBlist_Delete_BB(&BB_preds(entry_bb), pred);
        }
    }
    if(newbb_pos<0) {
        newbb_pos = 2;
        EPS_ASSERT(BB_prev(newbb)==NULL, "newbb is not positioned yet\n");
        EPS_ASSERT(BB_next(newbb)==NULL, "newbb is not positioned yet\n");

        EPS_ASSERT(BB_prev(entry_bb)!=NULL, "we do not make preheader for procedure entry\n");
        EPS_ASSERT(!BB_in_succs(BB_prev(entry_bb), newbb), "previous bb of entry_bb is not linked to newbb\n");

        if(!BB_in_succs(BB_prev(entry_bb), entry_bb)) {
            EPS_ASSERT(BB_succs_len(BB_prev(entry_bb))!=2, "should not fall-through\n");
            EPS_ASSERT(BB_branch_op(BB_prev(entry_bb))!=NULL, "should have unconditional branch.\n");

            BB_prev(newbb) = BB_prev(entry_bb);
            BB_next(newbb) = entry_bb;
            BB_next(BB_prev(entry_bb)) = newbb;
            BB_prev(entry_bb) = newbb;

            Add_Goto_Op(newbb, entry_bb);
        } else {
            EPS_ASSERT(Region_Contains_BB(rgn, BB_prev(entry_bb)), "prev bb of entry_bb is in the same region.");
            BB* candidate;
            for(candidate=entry_bb; candidate!=NULL && (BB_in_succs(candidate, BB_next(candidate)) || BB_succs_len(candidate)>1); candidate=BB_prev(candidate)) { }
            if(!Region_Contains_BB(rgn, candidate)) {
                for(candidate=entry_bb; candidate!=NULL && (BB_in_succs(candidate, BB_next(candidate)) || BB_succs_len(candidate)>1); candidate=BB_next(candidate)) { }
            }
            // EPS_ASSERT(Region_Contains_BB(rgn, candidate), "candidate should be in the same region.\n");
            EPS_ASSERT(candidate!=NULL, "failed to find candidate\n");
            EPS_ASSERT(BB_succs_len(candidate)<=1, "candidate should have 1 succesor\n");

            BB_prev(newbb) = candidate;
            BB_next(newbb) = BB_next(candidate);
            if(BB_next(candidate)) BB_prev(BB_next(candidate)) = newbb;
            BB_next(candidate) = newbb;

            Add_Goto_Op(newbb, entry_bb);
        }
    }

    EPS_ASSERT(newbb_pos>=0, "could not determine newbb_pos\n");

    Link_Pred_Succ_with_Prob(newbb, entry_bb, 1.0, FALSE, TRUE);

    REGIONAL_CFG_NODE* node_in_outer_rgn = rgn->Regional_Cfg_Node();
    REGION* outer_rgn = node_in_outer_rgn->Home_Region();
    REGIONAL_CFG_NODE* newnode;
    if(is_entry_region) {
        // now, we handle region stuffs.

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, outer_rgn->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);

        // this new node will be the new entry node of outer_rgn
        EPS_ASSERT(node_in_outer_rgn->Is_Entry(), "must be\n");
        EPS_ASSERT(node_in_outer_rgn->Is_Region(), "must be\n");

        EPS_ASSERT(node_in_outer_rgn->First_Pred()==NULL, "Entry node has no predecessor\n");

        outer_rgn->Regional_Cfg()->Add_To_Entries(newnode);
        outer_rgn->Regional_Cfg()->Remove_From_Entries(node_in_outer_rgn);

        if(outer_rgn->Region_Type()==LOOP) {
            EPS_ASSERT(((LOOP_REGION*)outer_rgn)->Loop_Head()==node_in_outer_rgn, "should be\n");
            ((LOOP_REGION*)outer_rgn)->Loop_Head(newnode);
        }

        Add_Regional_Cfg_Edge(newnode, node_in_outer_rgn, outer_rgn);

//        visualize_region(outer_rgn, "jaemok");

        if(rgn->Is_No_Further_Opt()) {
            rgn->_attribute = rgn->_attribute & (~NO_FURTHER_OPTIMIZATION);
        }
    } else {
        // now, we handle region stuffs.
        REGIONAL_CFG_EDGE* pred_edges;

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, outer_rgn->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);

        for(pred_edges=node_in_outer_rgn->First_Pred(); pred_edges; pred_edges=pred_edges->Next_Pred()) {
            Del_Regional_Cfg_Edge(pred_edges->Src(), node_in_outer_rgn, outer_rgn);
            Add_Regional_Cfg_Edge(pred_edges->Src(), newnode, outer_rgn);
        }
        Add_Regional_Cfg_Edge(newnode, node_in_outer_rgn, outer_rgn);
    }
}

void EPS::add_region_exit_node(void)
{
    REGION* rgn = this->_region_tree->Root();

    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        add_region_exit_node(child_rgn);
    }
}

void EPS::add_region_exit_node(REGION* rgn)
{
    // This is similar to make_preheader...
    // The difference is that "new basic block" is positioned
    // between region node and its successor.
    // And region may have multiple exits.
    // Because of multiple exits, this subroutine is
    // much more complicated than make_preheader
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        add_region_exit_node(child_rgn);
    }

    REGIONAL_CFG_NODE* rgn_node = rgn->Regional_Cfg_Node();
    if(rgn_node && rgn_node->Is_Exit()) {
        return;
    }

    std::list<REGIONAL_CFG_NODE*> succ_node_list;
    for(REGIONAL_CFG_EDGE* se=rgn_node->First_Succ(); se; se=se->Next_Succ()) {
        succ_node_list.push_back(se->Dest());
    }

    for(std::list<REGIONAL_CFG_NODE*>::iterator it=succ_node_list.begin(); it!=succ_node_list.end(); it++) {
        REGIONAL_CFG_NODE* succ_node = *it;
        if(succ_node->Is_Region()) {
//            EPS_ASSERT(succ_node->Pred_Num()==1, "I cannot handle this yet.\n");
            continue;
        }

        if(succ_node->Is_Entry()) continue;
        if(succ_node->Pred_Num()==1) continue;

        BB* succ = succ_node->BB_Node();
        BB* candidate = NULL;

        std::list<BB*> preds_list;
        bblist* preds;
        FOR_ALL_BB_PREDS(succ, preds) {
            preds_list.push_back(BBLIST_item(preds));
        }

        // first, find candidate of position of new bb.
        int pos = -1;
        for(std::list<BB*>::iterator it=preds_list.begin(); it!=preds_list.end(); it++) {
            BB* pred = *it;
            REGIONAL_CFG_NODE* pred_node = Regional_Cfg_Node(pred);

            EPS_ASSERT(pred_node->Home_Region()->Is_Contained_By(rgn_node->Home_Region()) || pred_node->Home_Region()==rgn_node->Home_Region(), "Ooops\n");

            //if(!pred_node->Home_Region()->Is_Contained_By(rgn_node->Home_Region())) {
            if(!(pred_node->Home_Region()==rgn || pred_node->Home_Region()->Is_Contained_By(rgn))) {
                // pred_node is contained by the different region to "rgn"
                continue;
            }

            // pred_node->Home_Region()->Is_Contained_By(rgn)
            EPS_ASSERT(pred_node->Is_Exit(), "must be exit node\n");
            //EPS_ASSERT(pred_node->Home_Region()->Is_Kid_Region_Of(rgn_node->Home_Region()), "I want it to be\n");
            EPS_ASSERT(pred_node->Home_Region()->Is_Contained_By(rgn_node->Home_Region()), "should be\n");

            if(pos<3 && BB_next(pred)==succ && (pred_node->Home_Region()==rgn || pred_node->Home_Region()->Is_Contained_By(rgn))) {
                // fall-through
                pos = 3;
                candidate = pred;
            } else if(pos<2 && BB_succs_len(pred)==1) {
                // 1 successor means there is unconditional branch.
                pos = 2;
                candidate = pred;
            }
        }
        if(pos<0) {
            // the position of new bb will be the bottom of the routine...
            BB* bottom = succ;
            for(bottom=succ; bottom; bottom = BB_next(bottom)) {
                if(BB_next(bottom)==NULL) {
                    candidate = bottom;
                }
            }
            pos = 1;
        }
        EPS_ASSERT(candidate!=NULL, "Hmmm...\n");

        // 2nd create new bb.
        BB* newbb = Gen_BB();
        BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
        BB_rid(newbb) = BB_rid(succ);
        new_bbs.insert(BB_id(newbb));

        // 3rd place new bb.
        if(candidate!=NULL) {
            // insert newbb after candidate
            BB_prev(newbb) = candidate;
            BB_next(newbb) = BB_next(candidate);
            if(BB_next(candidate)) BB_prev(BB_next(candidate)) = newbb;
            BB_next(candidate) = newbb;

            if(pos==1) {
                // we created new basic block at bottom of this subroutine...
                // we should insert unconditional branch code in this basic block.
                Add_Goto_Op(newbb, succ);
            }
        }

        // 4th connect new bb.
        for(std::list<BB*>::iterator it=preds_list.begin(); it!=preds_list.end(); it++) {
            BB* pred = *it;
            REGIONAL_CFG_NODE* pred_node = Regional_Cfg_Node(pred);

            EPS_ASSERT(pred_node->Home_Region()->Is_Contained_By(rgn_node->Home_Region()) || pred_node->Home_Region()==rgn_node->Home_Region(), "Ooops\n");

            if(!(pred_node->Home_Region()==rgn || pred_node->Home_Region()->Is_Contained_By(rgn))) {
                // pred_node is contained by the different region to "rgn"
                continue;
            }

            EPS_ASSERT(pred_node->Is_Exit(), "must be exit node\n");
            EPS_ASSERT(pred_node->Home_Region()->Is_Contained_By(rgn_node->Home_Region()), "should be\n");

            // 2004.12.23
            if(FREQ_Frequencies_Computed()) {
                BB_freq(newbb) +=
                    BB_freq(pred)*BBLIST_prob(BB_Find_Succ(pred, succ));
                if(BB_freq(succ)<0.0F) {
                    BB_freq(succ) = 0.0F;
                }
            }

            BOOL retarget = FALSE;
            if(candidate!=NULL) {
                if(BB_next(pred)==newbb && BB_next(newbb)==succ) {
                    // do nothing...
                } else if(BB_succs_len(pred)==1 && BB_next(pred)==newbb) {
                    OP* br = BB_branch_op(pred);
                    if(br) BB_Move_Op_To_End(newbb, pred, br);
                } else {
                    retarget = BB_Retarget_Branch(pred, succ, newbb);
                    if(!retarget) {
                        // we could not retarget...
                        // pred-->succ fall-through...
                        EPS_ASSERT(BB_next(pred)==succ, "should be\n");
                        Add_Goto_Op(pred, newbb);
                    }
                }
            }

            if(!retarget) {
                float prob = BBLIST_prob(BB_Find_Succ(pred, succ));
                BBlist_Delete_BB(&BB_succs(pred), succ);
                Link_Pred_Succ_with_Prob(pred, newbb, prob, FALSE, TRUE);
                BBlist_Delete_BB(&BB_preds(succ), pred);
            }
        }
        Link_Pred_Succ_with_Prob(newbb, succ, 1.0, FALSE, TRUE);

        // now, we handle region stuffs.
        REGION* home_r = rgn_node->Home_Region();
        REGIONAL_CFG_NODE* newnode;
        REGIONAL_CFG_EDGE* pred_edges;

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, home_r->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);
        Del_Regional_Cfg_Edge(rgn_node, succ_node, home_r);
        Add_Regional_Cfg_Edge(rgn_node, newnode, home_r);
        Add_Regional_Cfg_Edge(newnode, succ_node, home_r);
    }
}

BB* EPS::new_block_split_preds(BB* bbpred, BB* bbnode)
{
    REGIONAL_CFG_NODE* except_pred_node = Regional_Cfg_Node(bbpred);
    REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bbnode);

    /*
    REGION* home_region = node->Home_Region();
    EPS_ASSERT(home_region==except_pred_node->Home_Region() || except_pred_node->Home_Region()->Is_Contained_By(home_region), "baaaahhhh\n");
    while(except_pred_node->Home_Region()!=home_region) {
        except_pred_node = except_pred_node->Home_Region()->Regional_Cfg_Node();
    }
    */

    BB* newbb = Gen_BB();
    new_bbs.insert(BB_id(newbb));

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "%d is being generated as a new predecessor of %d replacing all predecessors except for %d among", BB_id(newbb), BB_id(bbnode), BB_id(bbpred));
        bblist* preds;
        FOR_ALL_BB_PREDS(bbnode, preds) {
            fprintf(EPSLOG, " %d", BB_id(BBLIST_item(preds)));
        }
        fprintf(EPSLOG, "\n");
    }

    // new basic block's position.
    // -1: not determined
    //  0: right before "bbnode", this is most favorable
    //  1: one of predecessors(except for bbpred), which do not
    //     falls through to anywhere.
    //  2: after any block which do not falls through to anywhere.
    int newbb_pos = -1;

    if(BB_next(bbpred)!=bbnode) {
        // create new basic block before bbnode.
        newbb_pos = 0;

        BB_prev(newbb) = BB_prev(bbnode);
        if(BB_prev(bbnode)) {
            BB_next(BB_prev(bbnode)) = newbb;
        }
        BB_prev(bbnode) = newbb;
        BB_next(newbb) = bbnode;

        if(EPSDBG(1)) fprintf(EPSLOG, "1placing the newbb between %d,%d\n", BB_prev(newbb)->id, BB_next(newbb)->id);
    }

    std::list<BB*> preds_list;
    bblist* preds;
    FOR_ALL_BB_PREDS(bbnode, preds) {
        preds_list.push_back(BBLIST_item(preds));
    }

    for(std::list<BB*>::iterator it=preds_list.begin(); it!=preds_list.end(); it++) {
        BB* pred = *it;
        if(pred==bbpred) continue;

        // 2004.12.23
        if(FREQ_Frequencies_Computed()) {
            BB_freq(newbb) +=
                BB_freq(pred)*BBLIST_prob(BB_Find_Succ(pred, bbnode));
        }

        BOOL retarget = FALSE;
        if(newbb_pos==-1) {
            // newbb_pos is not determined, check if this preds is candidate.
            if(BB_next(pred)==bbnode) {
                // preds falls through to bbnode
                // insert the newbb between preds and bbnode.
                newbb_pos = 1;
                BB_next(pred) = newbb;
                BB_prev(bbnode) = newbb;
                BB_next(newbb) = bbnode;
                BB_prev(newbb) = pred;
                if(EPSDBG(1)) fprintf(EPSLOG, "2placing the newbb between %d,%d\n", BB_prev(newbb)->id, BB_next(newbb)->id);
            } else if(BB_succs_len(pred)==1 ) {
                // or falls through to nowhere.
                // a branch op in preds targetting bbnode should be moved to tail of newbb.
                newbb_pos = 1;
                if(BB_next(pred)) BB_prev(BB_next(pred)) = newbb;
                BB_next(newbb) = BB_next(pred);
                BB_next(pred) = newbb;
                BB_prev(newbb) = pred;

                if(EPSDBG(1)) fprintf(EPSLOG, "3placing the newbb between %d,%d\n", BB_prev(newbb)->id, BB_next(newbb)->id);
                // move br in preds targetting bbnode to newbb.
                OP* br = BB_branch_op(pred);
                BB_Move_Op_To_End(newbb, pred, br);
            } else {
                // preds do not fall through to bbnode
                // a branch op in preds targetting bbnode should be changed to newbb.
                retarget = BB_Retarget_Branch(pred, bbnode, newbb);
                EPS_ASSERT(retarget==TRUE, "retarget failed\n");
            }
        } else if(BB_branch_op(pred)) {
            retarget = BB_Retarget_Branch(pred, bbnode, newbb);
            if(!retarget) EPS_ASSERT(BB_next(pred)==newbb && BB_next(newbb)==bbnode && newbb_pos==0, "");
        }

        if(!retarget) {
            float prob = BBLIST_prob(BB_Find_Succ(pred, bbnode));
            BBlist_Delete_BB(&BB_succs(pred), bbnode);
            Link_Pred_Succ_with_Prob(pred, newbb, prob, FALSE, TRUE);
            BBlist_Delete_BB(&BB_preds(bbnode), pred);
        }
    }

    Link_Pred_Succ_with_Prob(newbb, bbnode, 1.0, FALSE, TRUE);

    if(newbb_pos==-1) {
        EPS_ASSERT(0, "newbb_pos==2 is not implemented yet\n");
    }


    // now, we handle region stuffs.
    REGIONAL_CFG_NODE* newnode;
    if(node->Is_Entry()) {
        // newnode is in outer region.
        REGIONAL_CFG_EDGE* preds;
        REGIONAL_CFG_EDGE* succs;
        REGIONAL_CFG_NODE* temp_node = node->Home_Region()->Regional_Cfg_Node();

        EPS_ASSERT(!temp_node->Is_Entry(), "we do not handle this case\n");

        BB_rid(newbb) = NULL;
        for(preds = temp_node->First_Pred(); preds; preds = preds->Next_Pred()) {
            if(!preds->Src()->Is_Region()) {
                BB_rid(newbb) = BB_rid(preds->Src()->BB_Node());
                break;
            }
        }
        if(BB_rid(newbb)==NULL) {
            for(succs = temp_node->First_Succ(); succs; succs = succs->Next_Succ()) {
                if(!succs->Dest()->Is_Region()) {
                    BB_rid(newbb) = BB_rid(succs->Dest()->BB_Node());
                    break;
                }
            }
        }
        //EPS_ASSERT(BB_rid(newbb), "");

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, temp_node->Home_Region()->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);

        for(preds = temp_node->First_Pred(); preds; preds = preds->Next_Pred()) {
            // EPS_ASSERT(preds->Src()!=except_pred_node, "cannot be.\n");
            if(preds->Src()==except_pred_node) continue;
            Del_Regional_Cfg_Edge(preds->Src(), temp_node, temp_node->Home_Region());
            Add_Regional_Cfg_Edge(preds->Src(), newnode, temp_node->Home_Region());
        }
        Add_Regional_Cfg_Edge(newnode, temp_node, temp_node->Home_Region());

        // fill newnode with attributes
        BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
    } else {
        BB_rid(newbb) = BB_rid(bbnode);

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, node->Home_Region()->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);
        for(REGIONAL_CFG_EDGE* preds = node->First_Pred(); preds; preds = preds->Next_Pred()) {
            if(preds->Src()==except_pred_node) continue;

//            if(!preds->Src()->Is_Region()) {
                Del_Regional_Cfg_Edge(preds->Src(), node, node->Home_Region());
//            }
            Add_Regional_Cfg_Edge(preds->Src(), newnode, node->Home_Region());

            if(EPSDBG(1)) {
                BOOL ret;

                if(!(preds->Src()->Is_Region())) {
                    ret = BB_in_preds(newbb, preds->Src()->BB_Node());
                    EPS_ASSERT(ret, "");

                    ret = BB_in_succs(preds->Src()->BB_Node(), newbb);
                    EPS_ASSERT(ret, "");

                    ret = BB_in_succs(preds->Src()->BB_Node(), node->BB_Node());
                    EPS_ASSERT(!ret, "");

                    ret = BB_in_preds(node->BB_Node(), preds->Src()->BB_Node());
                    EPS_ASSERT(!ret, "");
                }
            }
        }
        Add_Regional_Cfg_Edge(newnode, node, node->Home_Region());
        if(EPSDBG(1)) {
            BOOL ret;

            ret = BB_in_succs(newnode->BB_Node(), node->BB_Node());
            EPS_ASSERT(ret, "");
            ret = BB_in_preds(node->BB_Node(), newnode->BB_Node());
            EPS_ASSERT(ret, "");
        }

        // fill newnode with attributes
        BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
    }

    return newbb;
}

void EPS::split_predecessors(BB* bb)
{
    if(BB_preds_len(bb)<=2) return;

    // this is added because of crafty bug...
    // but I could not found the fundamental source
    // of the bug yet.
    //
    // 2004.03.27 however this code can effect performance
    if(BB_preds_len(bb)>eps_option::split_preds()) return;

    bblist* preds;
    BB* pred;
    FOR_ALL_BB_PREDS(bb, preds) {
        pred = BBLIST_item(preds);
        if(BB_next(pred)==bb) continue; // this is just a temporary solution for selecting proper 1 predecessor.
        break;
    }

    REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bb);
    if(node->Is_Entry()) {
        // We've already handled entry node with many predecessors in make_preheader.
        return;

        /*
        REGIONAL_CFG_NODE* temp_node = node->Home_Region()->Regional_Cfg_Node();
        if(temp_node->Is_Entry()) {
            // We don't want to change entry while splitting predecessors.
            return;
        }
        */
    }

    if(!(eps_option::do_seme()) && (node->Home_Region()==NULL || node->Home_Region()->Region_Type()!=LOOP)) {
        return;
    }

    for(REGIONAL_CFG_EDGE* se = node->First_Pred(); se; se=se->Next_Pred()) {
        if(se->Src()->Is_Region()) {
            // We don't split predecessor if there is region node among them.
            return;
        }
    }

    split_predecessors(new_block_split_preds(pred, bb));
}

void EPS::insert_bb_at_Z(BB* bb, BB* bs)
{
    if(EPSDBG(1)) {
        fprintf(EPSLOG, "insert at Z point between %d, %d\n", BB_id(bb), BB_id(bs));
    }

    BB* newbb = Gen_BB();
    new_bbs.insert(BB_id(newbb));

    if(BB_next(bb)==bs) {
        EPS_ASSERT(BB_prev(bs)==bb, "bb and bs are in a row\n");
        BB_prev(newbb) = bb;
        BB_next(newbb) = bs;
        BB_next(bb) = newbb;
        BB_prev(bs) = newbb;
        if(EPSDBG(1)) fprintf(EPSLOG, "place new bb between %d, %d\n", BB_id(bb), BB_id(bs));
    } else {
        BB* cand1;
        BB* cand2;
        BOOL positioned = FALSE;
        for(cand1=bs,cand2=bs; BB_prev(cand1)!=NULL || BB_next(cand2)!=NULL;) {
            if(BB_prev(cand1)!=NULL && !BB_in_preds(cand1, BB_prev(cand1))) {
                BB_prev(newbb) = BB_prev(cand1);
                BB_next(newbb) = cand1;
                BB_next(BB_prev(cand1)) = newbb;
                BB_prev(cand1) = newbb;
                positioned = TRUE;
                if(EPSDBG(1)) fprintf(EPSLOG, "place new bb between %d, %d\n", BB_id(BB_prev(newbb)), BB_id(BB_next(newbb)));
                break;
            }
            if(BB_next(cand2)!=NULL && !BB_in_succs(cand2, BB_next(cand2))) {
                BB_prev(newbb) = cand2;
                BB_next(newbb) = BB_next(cand2);
                BB_prev(BB_next(cand2)) = newbb;
                BB_next(cand2) = newbb;
                positioned = TRUE;
                if(EPSDBG(1)) fprintf(EPSLOG, "place new bb between %d, %d\n", BB_id(BB_prev(newbb)), BB_id(BB_next(newbb)));
                break;
            }
            if(BB_prev(cand1)!=NULL) cand1=BB_prev(cand1);
            if(BB_next(cand2)!=NULL) cand2=BB_next(cand2);
        }
        if(!positioned) {
            EPS_ASSERT(BB_next(cand2)==NULL, "should be\n");
            BB_prev(newbb) = cand2;
            BB_next(newbb) = BB_next(cand2);
            BB_next(cand2) = newbb;
            positioned = TRUE;
            if(EPSDBG(1)) fprintf(EPSLOG, "place new bb between %d, end\n", BB_id(BB_prev(newbb)));
        }
        EPS_ASSERT(positioned, "could not position new bb\n");
    }

    BOOL retarget = FALSE;

    if(BB_next(bb)!=newbb) {
        retarget = BB_Retarget_Branch(bb, bs, newbb);
        EPS_ASSERT(retarget==TRUE, "retarget failed\n");
    }
    if(BB_next(newbb)!=bs) {
        Add_Goto_Op(newbb, bs);
    }

    if(!retarget) {
        float prob = BBLIST_prob(BB_Find_Succ(bb, bs));
        BBlist_Delete_BB(&BB_succs(bb), bs);
        Link_Pred_Succ_with_Prob(bb, newbb, prob, FALSE, TRUE);
        BBlist_Delete_BB(&BB_preds(bs), bb);
    }
    Link_Pred_Succ_with_Prob(newbb, bs, 1.0, FALSE, TRUE);

    // now, we handle region stuffs.
    REGIONAL_CFG_NODE* bbnode = Regional_Cfg_Node(bb);
    REGIONAL_CFG_NODE* bsnode = Regional_Cfg_Node(bs);
    if(bbnode->Home_Region()==bsnode->Home_Region()) {
      EPS_ASSERT(bbnode->Home_Region()==bsnode->Home_Region(), "should be\n");

      BB_rid(newbb) = BB_rid(bb);
      BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);

      RGN_Gen_And_Insert_Node(newbb, NULL, NULL, bbnode->Home_Region()->Regional_Cfg());

      REGIONAL_CFG_NODE* newnode = Regional_Cfg_Node(newbb);
      Del_Regional_Cfg_Edge(bbnode, bsnode, bbnode->Home_Region());
      Add_Regional_Cfg_Edge(bbnode, newnode, bbnode->Home_Region());
      Add_Regional_Cfg_Edge(newnode, bsnode, bbnode->Home_Region());
    } else {
      REGIONAL_CFG_EDGE* se;
      //bsnode = NULL;
      for(se=bbnode->First_Succ(); se!=NULL; se=se->Next_Succ()) {
         REGIONAL_CFG_NODE* succ = se->Dest();
         if(succ->Is_Region()) {
             bsnode = succ;
             break;
         }
      }

      if(bsnode==NULL) {
          fprintf(stderr, "cannot find successor node from %d to %d while breaking critical path\n", BB_id(bb), BB_id(bs));
          EPS_ASSERT(bsnode!=NULL, "cannot find successor node\n");
      }

      BB_rid(newbb) = BB_rid(bb);
      BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);

      RGN_Gen_And_Insert_Node(newbb, NULL, NULL, bbnode->Home_Region()->Regional_Cfg());

      REGIONAL_CFG_NODE* newnode = Regional_Cfg_Node(newbb);
      Del_Regional_Cfg_Edge(bbnode, bsnode, bbnode->Home_Region());
      Add_Regional_Cfg_Edge(bbnode, newnode, bbnode->Home_Region());
      Add_Regional_Cfg_Edge(newnode, bsnode, bbnode->Home_Region());
    }
}

void EPS::insert_bb_at_Z(BB* bb)
{
    if(BB_succs_len(bb)<2) return;

    REGION* rgn_bb = Regional_Cfg_Node(bb)->Home_Region();

    if(!(eps_option::do_seme()) && (rgn_bb==NULL || rgn_bb->Region_Type()!=LOOP)) {
        return;
    }

    BOOL bBBInSEME = FALSE;
    if(rgn_bb==NULL || rgn_bb->Region_Type()!=LOOP) {
        bBBInSEME = TRUE;
    }


    BBLIST* bsuccs = NULL; 
    FOR_ALL_BB_SUCCS(bb, bsuccs) {
        BB* bs = BBLIST_item(bsuccs);
        if(BB_preds_len(bs)!=2) continue;
        if(bb==bs) continue;

        REGION* rgn_bs = Regional_Cfg_Node(bs)->Home_Region();

        if(rgn_bb!=rgn_bs) {
            if(rgn_bs->Is_Contained_By(rgn_bb)) {
                if(Regional_Cfg_Node(bs)->Is_Entry()) {
                    m_setCriticalEdgeEntryRegions.insert(rgn_bs->Id());
                    fprintf(stderr, "critical_edge_entry_region %d\n", rgn_bs->Id());
                }
            }
        }

#if 1
        if(Regional_Cfg_Node(bs)->Is_Entry()) continue; // 2007.02.05
        if(rgn_bb!=Regional_Cfg_Node(bs)->Home_Region()) continue;
#else
        if(rgn_bb!=rgn_bs) {
            if(!rgn_bs->Is_Contained_By(rgn_bb)) continue;
            if(rgn_bb->Entries()[0]->Is_Region()) continue; // entry node is inner loop
            if(rgn_bs->Entries()[0]->Is_Region()) continue; // entry node is inner loop
        }
#endif

        if(bBBInSEME && (rgn_bs==NULL || rgn_bs->Region_Type()!=LOOP)) {
            if(!eps_option::do_seme()) {
                continue;
            }
        }

        insert_bb_at_Z(bb, bs);
    }
}

BOOL EPS::remove_basic_block(BB* bb)
{
    // bb is empty 
    REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bb);
    if(!node) return FALSE;
    if(node->Is_Entry()) return FALSE; //we don't want to delete the entry node
    if(node->Is_Exit()) return FALSE; //we don't want to delete the exit node
    EPS_ASSERT(!node->Is_Region(), "never happens...\n");

//    EPS_ASSERT(BB_length(bb)==0 || (BB_length(bb)==1 && BB_succs_len(bb)==1 && OP_br(BB_first_op(bb))), "");
    EPS_ASSERT(BB_succs_len(bb)==0 || BB_succs_len(bb)==1, "");

    fprintf(EPSLOG, "BB_id: %d is being removed\n", bb->id);

    BB* succ = NULL;
    if(BB_succs_len(bb)==1) succ = BB_Unique_Successor(bb);

    BOOL do_not_remove = FALSE;
    BBLIST* preds = NULL; 
    std::list<BB*> pred_list;
    FOR_ALL_BB_PREDS(bb, preds) {
        BB* pred = BBLIST_item(preds);
        pred_list.push_back(pred);

        if(BB_next(pred)==bb && BB_next(bb)==succ) {
            // pred->bb->succ fall-through... what a co-incidence!!!
            // we don't have to do anything...
//        } else if(BB_next(pred)==bb && BB_succs_len(bb)==1 && BB_succs_len(pred)==2 && BB_Other_Successor(pred,bb)==BB_Unique_Successor(bb)) {
        } else if(BB_next(pred)==bb) {
            // pred->bb fall-through, but... bb->succ jump...
            // the jump instruction in "bb" should be moved to "pred".
            OP* br = BB_branch_op(pred);
            if(BB_call(pred) || br) {
                // however, the pred already has a branch op.
                // we cannot remove this bb...
                do_not_remove = TRUE;
                break;
            }
        }
    }
    if(do_not_remove) return FALSE;

    for(std::list<BB*>::iterator pred_it=pred_list.begin(); pred_it!=pred_list.end(); pred_it++) {
        BB* pred = *pred_it;
        BOOL retarget = FALSE;

        if(BB_next(pred)==bb && BB_next(bb)==succ) {
            // pred->bb->succ fall-through... what a co-incidence!!!
            OP* br = BB_branch_op(pred);
            if(br) {
                INT tfirst, tcount;
                CGTARG_Branch_Info(br, &tfirst, &tcount);
                if(tcount!=0) {
                    // direct jump

                    TN* dest = OP_opnd(br, tfirst);
	                EPS_ASSERT(tcount == 1, ("number of branch targets, should be 1\n"));
	                EPS_ASSERT(TN_is_label(dest), "label is expected\n");
                    if(Is_Label_For_BB(TN_label(dest), bb)) {
                        // pred->bb fall-through, and pred ends with a uncond branch to bb.
                        // we need to redirect it.
                        retarget = BB_Retarget_Branch(pred, bb, succ);
                        EPS_ASSERT(retarget==TRUE, "retarget failed\n");
                    } else {
                        EPS_ASSERT(OP_cond(br) || OP_chk(br), "must be conditional branch\n");
                    }
                } else {
                    // indirect jump
                    retarget = BB_Retarget_Branch(pred, bb, succ);
                    EPS_ASSERT(retarget==TRUE, "retarget failed\n");
                }
            }
        } else if(BB_next(pred)==bb) {
            // pred->bb fall-through, but... bb->succ jump...
            // the jump instruction in "bb" should be moved to "pred".
            OP* br = BB_branch_op(bb);
            BB_Move_Op_To_End(pred, bb, br);
        } else if(BB_next(bb)==succ) {
            // bb->succ fall-through, but... pred->bb jump...
            // the jump instruction in "pred" should be re-targetted.
            retarget = BB_Retarget_Branch(pred, bb, succ);
            EPS_ASSERT(retarget==TRUE, "retarget failed\n");
        } else {
            // 3 basic blocks are all apart...
            // pred->bb jump... bb->succ jump...
            // the jump instruction in "pred" should be re-targetted.
            if(succ!=NULL) {
                retarget = BB_Retarget_Branch(pred, bb, succ);
                EPS_ASSERT(retarget==TRUE, "retarget failed\n");
            } else {
                retarget = TRUE;
            }
        }

        if(!retarget) {
            float prob = BBLIST_prob(BB_Find_Succ(pred, bb));
            BBlist_Delete_BB(&BB_succs(pred), bb);
            Link_Pred_Succ_with_Prob(pred, succ, prob, FALSE, TRUE);
        }
    }
    BBlist_Delete_BB(&BB_preds(succ), bb);

    if(BB_next(bb)) BB_prev(BB_next(bb)) = BB_prev(bb);
    if(BB_prev(bb)) BB_next(BB_prev(bb)) = BB_next(bb);

    // now, we handle region stuffs.
    //REGIONAL_CFG_NODE* succ_node = Regional_Cfg_Node(succ);
    REGIONAL_CFG_NODE* succ_node = node->Unique_Succ();

    REGIONAL_CFG_EDGE* pred_nodes;
    for(pred_nodes = node->First_Pred(); pred_nodes; pred_nodes = pred_nodes->Next_Pred()) {
        REGIONAL_CFG_NODE* pred_node = pred_nodes->Src();
        Del_Regional_Cfg_Edge(pred_node, node, node->Home_Region());
        if(succ_node) {
            Add_Regional_Cfg_Edge(pred_node, succ_node, node->Home_Region());
        }
    }
    if(succ_node) {
        Del_Regional_Cfg_Edge(node, succ_node, node->Home_Region());
    }

    // following is REGIONAL_CFG's private function.
    // however EPS class is friend to it I can use it...

    if(node->Is_Entry()) {
        REGIONAL_CFG* cfg = node->Home_Region()->Regional_Cfg();
        cfg->Del_Node(node);
        cfg->Add_To_Entries(succ_node);
    } else {
        node->Home_Region()->Regional_Cfg()->Del_Node(node);
    }

    return TRUE;
}

void EPS::remove_empty_blocks(BB* first_bb)
{
    int _n_deleted_bbs = 0;

    BB* bb;
    std::list<BB*> bbs;
    std::list<BB*>::iterator bbs_it;
    for(int iterate=0; iterate<1; iterate++){
        bbs.clear();
        for(bb=first_bb; bb; bb=BB_next(bb)) bbs.push_back(bb);

        for(bbs_it=bbs.begin(); bbs_it!=bbs.end(); bbs_it++) {
            BB* bb = *bbs_it;

            if(BB_succs_len(bb)!=1) continue;

            if(BB_length(bb)==1) {
                if(!OP_br(BB_first_op(bb))) continue;
            } else if(BB_length(bb)==3) {
                //if(!OP_br(BB_first_op(bb))) continue;
                OP* op1 = BB_first_op(bb);
                OP* op2 = OP_next(op1);
                OP* op3 = OP_next(op2);
                if(!(OP_noop(op1) && OP_noop(op2) && OP_br(op3))) continue;
            } else if(BB_length(bb)>0) {
                continue;
            }

            // 2006.12.29
            //if(new_bbs.find(BB_id(bb))==new_bbs.end()/* && BB_length(bb)==0 */) continue;

            BOOL result;
            result = remove_basic_block(bb);

            if(result) _n_deleted_bbs++;
        }
    }

    // 2007.03.27
    // delete unnecessary conditional branches
    bbs.clear();
    for(bb=first_bb; bb; bb=BB_next(bb)) bbs.push_back(bb);

    for(bbs_it=bbs.begin(); bbs_it!=bbs.end(); bbs_it++) {
        BB* bb = *bbs_it;
        OP* op = BB_branch_op(bb);
        int id = BB_id(bb);
        REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bb);

        if(BB_succs_len(bb)==2 && op!=NULL && OP_br(op)) {
            bblist* succs;
            BB* old_succ = NULL;
            FOR_ALL_BB_SUCCS(bb, succs) {
                BB* succ = BBLIST_item(succs);
                if(old_succ==succ) {
                    // same successor.
                    REGIONAL_CFG_NODE* succ_node = Regional_Cfg_Node(succ);
                    if(1 || node->Home_Region()==succ_node->Home_Region()) {
                        // same successor, same region
                        // remove the conditional branch operation
                        fprintf(stderr, "remove conditional branch at BB:%d\n", BB_id(bb));
                        BB_Remove_Op(bb, op);
                        BBlist_Delete_BB (&BB_succs(bb), succ);
                        //Del_Regional_Cfg_Edge(node, succ_node, node->Home_Region());

                        if(BB_Has_One_Pred(succ)) {
                            fprintf(stderr, "merge with successor\n");
                            BB_Prepend_All(succ, bb);
                            BOOL result = remove_basic_block(bb);
                            //EPS_ASSERT(result, "must remove the block\n");
                        }
                    }
                    {
//                        char buf[256];
//                        sprintf(buf, "after_remove_cond_%d", id);
//                        if(EPS_vcg) visualize_routine(first_bb, buf);
                    }
                }
                old_succ = succ;
            }
//        } else if(BB_succs_len(bb)==1 && op!=NULL && OP_br(op) && OP_cond(op) && OP_opnd(op,OP_PREDICATE_OPND)!=True_TN) {
//            if(BB_next(bb)==BB_Unique_Successor(bb)) {
//                BB_Remove_Op(bb, op);
//            }
        }
    }

    //if(_n_deleted_bbs<_n_new_bbs) fprintf(stderr, "JAEMOK: %d / %d basic blocks are deleted\n", _n_deleted_bbs, _n_new_bbs);
}

BB* EPS::get_first_bb(void)
{
    REGIONAL_CFG_NODE* root = _region_tree->Root()->Entries()[0];

    while(root->Is_Region()) {
        root = root->Region_Node()->Entries()[0];
    }

    BB* bb = root->BB_Node();
    while(BB_prev(bb)!=NULL) {
        bb = BB_prev(bb);
    }

    return bb;
}

void debug_ops_group_print(OPS_GROUP* ops)
{
    OPS_GROUP::iterator it;
    for(it=ops->begin(); it!=ops->end(); it++) {
        OP* op = *it;
        eps_print_asm(stderr, op, NULL);
    }
}

BOOL EPS::bad_join(REGIONAL_CFG_NODE* join_node, OPS_GROUP* avop)
{
    if(!EPS_control_bad_join) {
        return FALSE;
    }

    if(join_node->Is_Region()) return TRUE;
    if(join_node->Home_Region()!=_current_region) return TRUE;
//    if(get_attrib(join_node)->is_scheduled()) return TRUE;

    BB* join_bb = join_node->BB_Node();
    BOOL go_pred = FALSE;

    if(BB_succs_len(join_bb)>1) return TRUE;
    if(BB_length(join_bb)<=1) go_pred = TRUE;
    if(BB_length(join_bb)==1 && (BB_succs_len(join_bb)>1 || (!OP_br(BB_first_op(join_bb))))) go_pred = TRUE;
 
#ifndef OPTIMIZE_EPS
    return FALSE;
#endif


    // 2004.11.25
    //if(BB_succs_len(join_bb)>1) return TRUE;

    OP* op;
    OPS_GROUP avop_clone;
    OPS_GROUP::iterator it;
    for(it=avop->begin(); it!=avop->end(); it++) {
        avop_clone.push_back(*it);
    }

//    go_pred = TRUE;
    FOR_ALL_BB_OPs(join_bb, op) {
        if((op->eps_flags & (OP_EPS_JOIN | OP_EPS_BOOKKEEPING))==(OP_EPS_JOIN | OP_EPS_BOOKKEEPING)) {
            avop_clone.insert(avop_clone.begin(), 1, op);
        } else if(!OP_br(op)) {
            go_pred = FALSE;
        }
    }

    if(go_pred) {
        // this node is empty node...
        // look up preds.
        REGIONAL_CFG_EDGE* pe;
        for(pe=join_node->First_Pred(); pe; pe=pe->Next_Pred()) {
            if(bad_join(pe->Src(), &avop_clone)) {
                return TRUE;
            }
        }
        return FALSE;
    } else {
        OPS_Group_vector* ogv = get_ogv(join_node);
        EPS_ASSERT(ogv, "ogv should not be null\n");

        ogv->construct(join_bb);

//        EPS_ASSERT(!ogv->empty(), "ogv should not be empty()\n");
//        fprintf(stderr, "%p\n", ogv);
        OPS_Group* og = ogv->back();
//og->debug_print();
        if(og->try_add_ops(avop)) return FALSE;
        return TRUE;
    }
}

BOOL EPS::bad_join(join_set& joins, OP* avop)
{
    join_set::iterator i;

//eps_print_asm(stderr, avop, NULL);
    for(i=joins.begin(); i!=joins.end(); i++) {
        BB* join_bb = (*i).second;
        REGIONAL_CFG_NODE* join_node = Regional_Cfg_Node(join_bb);
        if(join_node->Home_Region()!=_current_region) {
//fprintf(stderr, "badjoin1\n");
            return TRUE;
        }

        OPS_GROUP avops;
        avops.push_back(avop);
        if(bad_join(join_node, &avops)) {
//fprintf(stderr, "badjoin2 %d\n", joins.size());
            return TRUE;
        }
//fprintf(stderr, "possibly good join\n");
    }
//fprintf(stderr, "no good join\n");
    return FALSE;
}

#if EPS_SPECLOAD
BOOL EPS::recovery(REGIONAL_CFG_NODE* node)
{
    if(node->Is_Region()) return FALSE;
    return (BB_recovery(node->BB_Node()));
}

void EPS::pushdown_chk_region(REGION* rgn)
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
    NODE_VECTOR_ITER node_iter;

    for(node_iter=nodes.begin(); node_iter!=nodes.end(); node_iter++) {
        pushdown_chk_node(*node_iter);
    }
}
void EPS::pushdown_chk_node(REGIONAL_CFG_NODE* node)
{
    if(node->Is_Region()) return;

    // we are going to push down the chk instruction
    BB* bb = node->BB_Node();
    for(OP* op=BB_first_op(bb); op; op=OP_next(op)) {
        if(!OP_chk(op)) continue;

        OPS_Group_vector* ogv = _ogv_map->get_ogv(node);
        OPS_Group* og = ogv->find_op(op);
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "=================================\n");
            fprintf(EPSLOG, "instruction group chk is included\n");
            og->print(EPSLOG);
        }

        for(OPS_Group::iterator it=og->begin(); it!=og->end(); it++) {
            OP* op2 = *it;
            if(op!=op2 && OP_chk(op2)) {
                // we have 2 chk operation in a group.
                // I'm not taking care of this situation now.
                return;
            }
        }

        int state = 0;
        OP* last = NULL;
        for(OPS_Group::iterator it=og->begin(); it!=og->end(); it++) {
            OP* op2 = *it;
            if(state==0) {
                if(op==op2) state = 1;
                continue;
            }
            if(OP_br(op2)) {
                break;
            }
            if(state==1) {
                if(get_spec_lds()->pushdown(op2, op)==NULL) return;
                last = op2;
            }
        }
        if(op!=last && last!=NULL) {
            BB_Move_Op_After(bb, last, bb, op);
        }
    }
}
#endif


void EPS::post_process_region(REGION* rgn)
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
    NODE_VECTOR_ITER node_iter;

    for(node_iter=nodes.begin(); node_iter!=nodes.end(); node_iter++) {
        post_process_node(*node_iter);
    }
}

void EPS::post_process_node(REGIONAL_CFG_NODE* node)
{
    if(node->Is_Region()) return;

#if EPS_SPECLOAD
    BB* bb = node->BB_Node();
    BB* recovery_bb = NULL;
    BB* bottom_bb = NULL;
    for(OP* op=BB_first_op(bb); op; op=OP_next(op)) {
        if(OP_chk(op)) {
            recovery_bb = get_spec_lds()->generate_recovery_block(op);
            if(recovery_bb==NULL) continue;

            bottom_bb = get_spec_lds()->update_cfg(op);
            break;
        }
    }
    while(bottom_bb) {
        for(OP* op=BB_first_op(bottom_bb); op; op=OP_next(op)) {
            if(OP_chk(op)) {
                recovery_bb = get_spec_lds()->generate_recovery_block(op);
                if(recovery_bb==NULL) continue;

                bottom_bb = get_spec_lds()->update_cfg(op);
                break;
            }
            bottom_bb = NULL;
        }
    }
#endif
}

void EPS::post_post_process(BB* bb)
{
    BB* head_bb;
    BB* bottom_bb;

    head_bb = bb;
    for(; bb; bb=BB_next(bb)) {
        OP* op;
        for(op=BB_first_op(bb); op; op=OP_next(op)) {
            if(!OP_chk(op)) continue;

            TN* target_tn = Get_chk_tgt(op);
            BB* recovery_bb = Get_Label_BB(TN_label(target_tn));
            if((op->eps_flags&OP_EPS_CHK)==0 || recovery_bb==head_bb) {
                // this chk is made by GIS.
                if(head_bb!=bb) {
                    Set_chk_tgt(op, Gen_Label_TN(Gen_Label_For_BB(bb), 0));
                }
                continue;
            }

            if(!OP_next(op)) continue;
            if(OP_noop(OP_next(op)) && OP_next(OP_next(op))==NULL) continue;

            bottom_bb = RGN_Divide_BB(bb, op);
            if(bottom_bb==NULL) continue;
            EPS_ASSERT(bottom_bb==BB_Unique_Successor(bb),
                    "bottom_bb must have unique successor.\n");
            EPS_ASSERT(bottom_bb==BB_Fall_Thru_Successor(bb),
                    "bottom_bb must fall thru.\n");

            // Build corresponding edges.
            RGN_Unlink_Pred_Succ(bb, bottom_bb);
            RGN_Link_Pred_Succ_With_Prob(bb, bottom_bb, BTM_PROB);

            BB* old_bottom_bb = BB_Unique_Successor(recovery_bb);
            RGN_Unlink_Pred_Succ(bottom_bb, recovery_bb);
            RGN_Unlink_Pred_Succ(recovery_bb, old_bottom_bb);
            RGN_Link_Pred_Succ_With_Prob(bb, recovery_bb, REC_PROB);
//            RGN_Unlink_Pred_Succ(recovery_bb, old_bottom_bb);
//            RGN_Link_Pred_Succ_With_Prob(recovery_bb, bottom_bb, 1.0);

            EPS_ASSERT(OP_br(BB_last_op(recovery_bb)),
                    "recovery bb should have br at last of it");
            BB_Remove_Op(recovery_bb, BB_last_op(recovery_bb));
            Add_Goto_Op(recovery_bb, bottom_bb);
            RGN_Link_Pred_Succ_With_Prob(recovery_bb, bottom_bb, 1.0F);

            BB_freq(recovery_bb) = BB_freq(bb) * rec_prob;
            BB_freq(bottom_bb) = BB_freq(bb);

            Reset_BB_scheduled(bb);
            Reset_BB_scheduled(bottom_bb);
            break;
        }
        if(op) continue;

        head_bb = BB_next(bb);
    }
}

TN* EPS::FindComplement(TN* tn)
{
    return _current_eps_driver->prtn_map.Find(tn);
}

void EPS::resolve_control_dependent_predicates(REGION* rgn)
{
    REGIONAL_CFG* rgn_cfg = rgn->Regional_Cfg();
    TOPOLOGICAL_REGIONAL_CFG_ITER it(rgn_cfg);
    for(; it!=0; ++it) {
        REGIONAL_CFG_NODE* node = *it;
        if(node->Is_Region()) {
            continue;
        }
        BB* bb = node->BB_Node();
        if(BB_succs_len(bb)==2) {
            OP* last_op = BB_last_op(bb);
            if(last_op==NULL || OP_code(last_op)!=TOP_br_cond) {
                continue;
            }

            TN* br_tpred = OP_opnd(last_op, OP_PREDICATE_OPND);
            TN* br_fpred = EPS::FindComplement(br_tpred);

            BB* fbb = BB_Fall_Thru_Successor(bb);
            BB* tbb = BB_Other_Successor(bb, fbb);

            TN* br_f_tpred = NULL;
            TN* br_f_fpred = NULL;
            if(br_fpred) {
                while(TRUE) {
                    if(BB_preds_len(fbb)>1) break;
                    if(BB_succs_len(fbb)>2) break;
                    if(Regional_Cfg_Node(fbb)->Home_Region()!=rgn) break;
                    if(BB_succs_len(fbb)==1) {
                        if(fbb==bb) break;
                        fbb=BB_Unique_Successor(fbb);
                        continue;
                    }

                    OP* f_last_op = BB_last_op(fbb);
                    if(last_op==NULL || OP_code(last_op)!=TOP_br_cond) break;

                    fprintf(EPSLOG, "Found consequence of conditional branches\n");
                    eps_print_asm(EPSLOG, last_op, NULL);
                    eps_print_asm(EPSLOG, f_last_op, NULL);

                    br_f_tpred = OP_opnd(f_last_op, OP_PREDICATE_OPND);
                    br_f_fpred = EPS::FindComplement(br_f_tpred);
                    break;
                }
            }

            TN* br_t_tpred = NULL;
            TN* br_t_fpred = NULL;
            if(br_tpred) {
                while(TRUE) {
                    if(BB_preds_len(tbb)>1) break;
                    if(BB_succs_len(tbb)>2) break;
                    if(Regional_Cfg_Node(tbb)->Home_Region()!=rgn) break;
                    if(BB_succs_len(tbb)==1) {
                        if(tbb==bb) break;
                        tbb=BB_Unique_Successor(tbb);
                        continue;
                    }
                    OP* t_last_op = BB_last_op(tbb);
                    if(last_op==NULL || OP_code(last_op)!=TOP_br_cond) break;

                    fprintf(EPSLOG, "Found consequence of conditional branches\n");
                    eps_print_asm(EPSLOG, last_op, NULL);
                    eps_print_asm(EPSLOG, t_last_op, NULL);

                    br_t_tpred = OP_opnd(t_last_op, OP_PREDICATE_OPND);
                    br_t_fpred = EPS::FindComplement(br_t_tpred);
                    break;
                }
            }

            // results of a cmp can be used in multiple branches.
            // and both branches dependent to the same branch in different way.
            // cmp p1,p2 = ...  <-cmp1
            // (p3) br A,B      <-br2
            // A:
            // (p1) br ...      <-br1
            // br.few ...
            // B:
            // (p2) br ...      <=br1
            // ...
            // this code try to change cmp p1,p2= into (p3)cmp p1,p2=... then (!p3)cmp p1,p2=...
            // this make correctness failure.
            // should not change.

            bool ok = TRUE;
            if(br_f_tpred==br_t_fpred || br_f_tpred==EPS::FindComplement(br_t_fpred)) {
                ok = FALSE;
            }
            if(br_f_fpred==br_t_fpred || br_f_fpred==EPS::FindComplement(br_t_fpred)) {
                ok = FALSE;
            }

            if(ok) {
                if(br_fpred && br_f_tpred) {
                    if(resolve_control_dependent_predicates(rgn, br_f_tpred, br_fpred)) {
                        control_dependent_predicate_map[TN_number(br_f_tpred)] = TN_number(br_fpred);
                    }
                }
                if(br_fpred && br_f_fpred) {
                    if(resolve_control_dependent_predicates(rgn, br_f_fpred, br_fpred)) {
                        control_dependent_predicate_map[TN_number(br_f_fpred)] = TN_number(br_fpred);
                    }
                }
                if(br_tpred && br_t_tpred) {
                    if(resolve_control_dependent_predicates(rgn, br_t_tpred, br_tpred)) {
                        control_dependent_predicate_map[TN_number(br_t_tpred)] = TN_number(br_tpred);
                    }
                }
                if(br_tpred && br_t_fpred) {
                    if(resolve_control_dependent_predicates(rgn, br_t_fpred, br_tpred)) {
                        control_dependent_predicate_map[TN_number(br_t_fpred)] = TN_number(br_tpred);
                    }
                }
            }
        }
    }
}

int resolve_counter = 0;

BOOL EPS::resolve_control_dependent_predicates(REGION* rgn, TN* tn1, TN* tn2)
{
    // cmp1 is control-dependent to cmp2
    OP* cmp1 = prtn_map.FindCMP(tn1);
    OP* cmp2 = prtn_map.FindCMP(tn2);
    OP* br1 = prtn_map.FindBR(tn1);
    OP* br2 = prtn_map.FindBR(tn2);
    if(cmp1==NULL || cmp2==NULL) {
        return FALSE;
    }
    if(((long long int)br1)==1 || ((long long int)br2)==1) {
        return FALSE;
    }

    // results of a cmp can be used in multiple branches.
    // and both branches dependent to the same branch in different way.
    // cmp p1,p2 = ...  <-cmp1
    // (p3) br A,B      <-br2
    // A:
    // (p1) br ...      <-br1
    // br.few ...
    // B:
    // (p2) br ...      <=br1
    // ...
    // this code try to change cmp p1,p2= into (p3)cmp p1,p2=... then (!p3)cmp p1,p2=...
    // this make correctness failure.
    // should not change.


    BB* bb1 = OP_bb(cmp1);
    BB* bb2 = OP_bb(cmp2);

    REGIONAL_CFG_NODE* node1 = Regional_Cfg_Node(bb1);
    REGIONAL_CFG_NODE* node2 = Regional_Cfg_Node(bb2);
    if(bb1==bb2) {
        // cmp1 has to be later positioned.
        BB* bb = bb1;
        OP* op;
        FOR_ALL_BB_OPs(bb,op) {
            if(op==cmp2) {
                break;
            }
            if(op==cmp1) {
                return FALSE;
            }
       }
    } else {
        // bb2 has to dominate bb1
        if(!BS_MemberP(BB_dom_set(bb1), BB_id(bb2))) {
            return FALSE;
        }
    }

//    if((++resolve_counter)>5) return FALSE;

    fprintf(EPSLOG, "CMP is changed from: ");
    eps_print_asm(EPSLOG, cmp1, NULL);

    if(bb1!=bb2) {
        Set_TN_is_global_reg(tn2);
    }
    Set_OP_opnd(cmp1,OP_PREDICATE_OPND, tn2);

    fprintf(EPSLOG, "CMP is changed to: ");
    eps_print_asm(EPSLOG, cmp1, NULL);

    return TRUE;
}



