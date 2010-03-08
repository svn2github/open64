#include "eps.h"

#include "tag.h"
#include "glob.h"
#include "gtn_tn_set.h"
#include "file_util.h"
#include "symtab.h"
#include "ti_si.h"
#include "targ_isa_registers.h"
#include "targ_isa_operands.h"

//int DDG_Node::_id_count;   // initialize in DDG constructor.

DDG_Node::~DDG_Node()
{
    DDG_EDGE_LIST::iterator it;
    DDG_EDGE_LIST::iterator it2;

    // remove its all adjacent edges...
    for(it=_preds.begin(); it!=_preds.end(); it++) {
        DDG_Edge* edge = *it;
        DDG_Node* pred = edge->Src();
        for(it2=pred->_succs.begin(); it2!=pred->_succs.end(); ) {
            DDG_Edge* edge2 = *it2;
            DDG_Node* succ = edge2->Dst();
            if(succ==this) {
                pred->_succs.erase(it2++);
                CXX_DELETE(edge2, EPS::current_eps_mempool());
            } else {
                it2++;
            }
        }
    }

    for(it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* edge = *it;
        DDG_Node* succ = edge->Dst();
        for(it2=succ->_preds.begin(); it2!=succ->_preds.end(); ) {
            DDG_Edge* edge2 = *it2;
            DDG_Node* pred = edge2->Src();
            if(pred==this) {
                succ->_preds.erase(it2++);
                CXX_DELETE(edge2, EPS::current_eps_mempool());
            } else {
                it2++;
            }
        }
    }
}

DDG_Edge* DDG_Node::Find_In_Succs(DDG_Node* n)
{
    DDG_EDGE_LIST::iterator it;
    for(it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* e = (*it);
        if(e->Dst()==n) return e;
    }

    return NULL;
}

DDG_Edge* DDG_Node::Find_In_Preds(DDG_Node* n)
{
    DDG_EDGE_LIST::iterator it;
    for(it=_preds.begin(); it!=_preds.end(); it++) {
        DDG_Edge* e = (*it);
        if(e->Src()==n) return e;
    }

    return NULL;
}

void DDG_Node::Connect(DDG_Node* n, int iter)
{
    if(this->Find_In_Succs(n)!=NULL) {
        return;
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "Connect ");
        eps_print_asm(EPSLOG, n->_op, NULL);
        fprintf(EPSLOG, "To ");
        eps_print_asm(EPSLOG, _op, NULL);
    }

    DDG_Edge* newedge = CXX_NEW(DDG_Edge(this, n, TSI_Result_Available_Time(OP_code(_op), 0), iter), EPS::current_eps_mempool());
    _succs.push_back(newedge);
    n->_preds.push_back(newedge);
}

void DDG_Node::Unify_Succ(DDG_Node* n)
{
    _eps_id = n->_eps_id;
    _last_eps_id = n->_last_eps_id;
    _length = n->_length;

    DDG_EDGE_LIST::iterator it;
    for(it=n->_succs.begin(); it!=n->_succs.end(); it++) {
        DDG_Node* ns = (*it)->Dst();
        int iter = (*it)->Iter();
        DDG_Edge* e = this->Find_In_Succs(ns);
        if(!e) {
            this->Connect(ns, iter);
        }
    }
}

void DDG_Node::Unify_Pred(DDG_Node* n)
{
    DDG_EDGE_LIST::iterator it;
    for(it=n->_preds.begin(); it!=n->_preds.end(); it++) {
        DDG_Node* np = (*it)->Src();
        int iter = (*it)->Iter();
        DDG_Edge* e = this->Find_In_Preds(np);
        if(!e) {
            np->Connect(this, iter);
        }
    }
}

void DDG_Node::Unify(DDG_Node* n)
{
    _eps_id = n->_eps_id;
    _last_eps_id = n->_last_eps_id;
    _spec_ld_id = n->_spec_ld_id;

    Unify_Succ(n);
    Unify_Pred(n);
}

double DDG_Node::MaxLength(void)
{
//    if(OP_copy(_op) || OP_code(_op)==TOP_mov || OP_code(_op)==TOP_mov_i) return 0.0;
    return _max_length;
//    return _length;
}

double DDG_Node::Length(void)
{
//    if(OP_copy(_op) || OP_code(_op)==TOP_mov || OP_code(_op)==TOP_mov_i) return 0.0;
    return _length;
}

DDG_BB_attribute::DDG_BB_attribute(REGIONAL_CFG_NODE* node)
{
    _node = node;
}

DDG_BB_attribute::~DDG_BB_attribute()
{
}

DDG_BB_attr_map::DDG_BB_attr_map(REGION* rgn):_map(10, hash_rgn(), equal_rgn(), DDG_ATTR_ALLOC(EPS::current_eps_mempool()))
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
    for(NODE_VECTOR_ITER it=nodes.begin(); it!=nodes.end(); it++) {
        _map[*it] = CXX_NEW(DDG_BB_attribute((*it)), EPS::current_eps_mempool());
    }
}

DDG_BB_attr_map::~DDG_BB_attr_map()
{
    for(DDG_ATTR_MAP::iterator it=_map.begin(); it!=_map.end(); it++) {
        CXX_DELETE((*it).second, EPS::current_eps_mempool());
    }
}

DDG_Map::DDG_Map(REGION* rgn):_map(10, hash_op(), equal_op(), DDG_MAP_NODE_ALLOC(EPS::current_eps_mempool()))
{
    _rgn = rgn;

    for(TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_rgn->Regional_Cfg());
            cfg_iter != 0;
            ++cfg_iter) {
        REGIONAL_CFG_NODE* node = *cfg_iter;
        if(!node->Is_Region()) {
            BB* bb = node->BB_Node();
            OP* op;

            FOR_ALL_BB_OPs(bb, op) {
                Insert(op);
            }
        }
    }
}

DDG_Map::~DDG_Map()
{
    for(DDG_MAP::iterator it=_map.begin(); it!=_map.end(); it++) {
        DDG_Node* node = (*it).second;
        CXX_DELETE(node, EPS::current_eps_mempool());
    }
}

BOOL DDG_Map::Insert(OP* o)
{
    EPS_ASSERT(_map.find(o)==_map.end(), "op is already in the map.\n");
    _map[o] = CXX_NEW(DDG_Node(o), EPS::current_eps_mempool());

    return TRUE;
}

BOOL DDG_Map::Remove(OP* o)
{
    EPS_ASSERT(_map.find(o)!=_map.end(), "op is not in the map\n");
    CXX_DELETE(_map[o], EPS::current_eps_mempool());
    _map.erase(o);

    return TRUE;
}

DDG_Node* DDG_Map::Find(OP* o)
{
    DDG_MAP::iterator it = _map.find(o);
    if(it==_map.end()) return NULL;

    return (*it).second;
}

void DDG_Map::ClearVisited(void)
{
    for(DDG_MAP::iterator it = _map.begin(); it!=_map.end(); it++) {
        (*it).second->_visited = false;
    }

}

BOOL DDG::Construct(REGION* rgn, PostDominator* pd)
{
    _rgn = rgn;
    _pd = pd;
    _map = CXX_NEW(DDG_Map(_rgn), EPS::current_eps_mempool());
    _bb_map = CXX_NEW(DDG_BB_attr_map(_rgn), EPS::current_eps_mempool());

    vector<DDG_Node*> ddg_heads;

//    if(EPSDBG(1)) fprintf(EPSLOG, "Start construct ddg for region %d\n", rgn->Id());

    BOOL bSingleNodeRegion = _rgn->Regional_Cfg()->Node_Set().size()==1;
for(int xxx=0; xxx<2; xxx++) {
    for(TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_rgn->Regional_Cfg());
            cfg_iter != 0;
            ++cfg_iter) {
        REGIONAL_CFG_NODE* node = *cfg_iter;
        DDG_BB_attribute* attr = _bb_map->get_attrib(node);

        OP_set* live = attr->Live_Out();
        if(!bSingleNodeRegion) {
            live->clear();  // initialize "this node"'s live out
        }

        // calculate live in
        if(_rgn->Region_Type()!=LOOP || !node->Is_Entry()) {
            for(REGIONAL_CFG_EDGE* pred=node->First_Pred(); pred; pred=pred->Next_Pred()) {
                REGIONAL_CFG_NODE* pred_node = pred->Src();
                DDG_BB_attribute* pred_attr = _bb_map->get_attrib(pred_node);
                OP_set* live_out = pred_attr->Live_Out();

                set_union(live->begin(), live->end(), live_out->begin(), live_out->end(), std::inserter<OP_set>(*live, live->begin()));
            }
        } else {
            BBLIST* bpreds = NULL; 
            if(!node->Is_Region()) {
                BB* bnode = node->BB_Node();
                FOR_ALL_BB_PREDS(bnode, bpreds) {
                    BB* bpred = BBLIST_item(bpreds);
                    REGIONAL_CFG_NODE* pred_node = Regional_Cfg_Node(bpred);
                    if(pred_node->Home_Region()==node->Home_Region()) {
                        DDG_BB_attribute* pred_attr = _bb_map->get_attrib(pred_node);
                        OP_set* live_out = pred_attr->Live_Out();

                        set_union(live->begin(), live->end(), live_out->begin(), live_out->end(), std::inserter<OP_set>(*live, live->begin()));
                    }
                }

                if(EPSDBG(1)) {
                    if(xxx!=0) {
                        fprintf(EPSLOG, "Live ops from loop backedge:\n");
                        for(OP_set::iterator it=live->begin(); it!=live->end(); it++) {
                            OP* live_op = *it;
                            eps_print_asm(EPSLOG, live_op, NULL);
                        }
                    }
                }
            }
        }

        if(!node->Is_Region()) {
            BB* bb = node->BB_Node();
            OP* op;
            FOR_ALL_BB_OPs(bb, op) {
                DDG_Node* ddg_node = _map->Find(op);

                // 1. connect op to its dependent element from live set
                BOOL connected = FALSE;
                for(OP_set::iterator it=live->begin(); it!=live->end(); it++) {
                    OP* live_op = *it;
                    if(is_dependent(op, live_op)) {
                        DDG_Node* live_node = _map->Find(live_op);
                        live_node->Connect(ddg_node, xxx);
                        connected = TRUE;
                    }
                }
                if(/*xxx==0 && */!connected) {  // 2009.02.06 jaemok commented out xxx==0 part
                    ddg_heads.push_back(ddg_node);
                }

                // 2. erase killed op from live
                for(OP_set::iterator it=live->begin(); it!=live->end();) {
                    OP* live_op = *it;
                    if(kill(op, live_op)) {
                        if(EPSDBG(1)) {
                            fprintf(EPSLOG, "kill ");
                            eps_print_asm(EPSLOG, live_op, NULL);
                            fprintf(EPSLOG, "by ");
                            eps_print_asm(EPSLOG, op, NULL);
                        }
                        live->erase(it++);
                    } else {
                        it++;
                    }
                }

                // 3. add op to live op set
                live->insert(op);
            }
        }
    }
}

    vector<DDG_Node*>::iterator it;
    for(it=ddg_heads.begin(); it!=ddg_heads.end(); it++) {
        DDG_Node* head = *it;
        head->Initiate();
    }
    _map->ClearVisited();
    for(it=ddg_heads.begin(); it!=ddg_heads.end(); it++) {
        DDG_Node* head = *it;
        head->Initiate2(head->Length());
    }

    double max_length = 0.0;
    DDG_Node* max_length_head = NULL;
    for(it=ddg_heads.begin(); it!=ddg_heads.end(); it++) {
        DDG_Node* head = *it;
        if(head->MaxLength()>max_length) {
            max_length = head->MaxLength();
            max_length_head = head;
        }
    }
    _map->ClearVisited();
    if(max_length_head!=NULL) {
        if(!max_length_head->LoadLength(max_length_head)) {
            fprintf(EPSLOG, "No Load in Critical Path %p\n", max_length_head);
        }
    }

    max_length = 0.0;
    vector<DDG_Node*> max_length_heads;
    for(it=ddg_heads.begin(); it!=ddg_heads.end(); it++) {
        DDG_Node* head = *it;
        if(head->MaxLength()<max_length) {
            continue;
        }
        if(head->MaxLength()==max_length) {
            max_length_heads.push_back(head);
        }
        if(head->MaxLength()>max_length) {
            max_length = head->MaxLength();
            max_length_heads.clear();
            max_length_heads.push_back(head);
        }
    }

    if(max_length>=3.0) {
        _map->ClearVisited();
        vector<DDG_Node*>::iterator it;
        for(it=max_length_heads.begin(); it!=max_length_heads.end(); it++) {
            (*it)->MaxLength(*it);
        }
    }
 

/*
    for(it=ddg_heads.begin(); it!=ddg_heads.end(); it++) {
        DDG_Node* head = *it;
        head->FindCopyCycle(head, 0);
    }
*/


    if(EPSDBG(1)) fprintf(EPSLOG, "End construct ddg for region %d\n", rgn->Id());
    if(EPSDBG(1)) {
        for(TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_rgn->Regional_Cfg());
                cfg_iter != 0;
                ++cfg_iter) {
            REGIONAL_CFG_NODE* node = *cfg_iter;
            if(!node->Is_Region()) {
                BB* bb = node->BB_Node();
                OP* op;
                FOR_ALL_BB_OPs(bb, op) {
                    DDG_Node* node = _map->Find(op);
                    eps_print_asm(EPSLOG, op, bb);
                    fprintf(EPSLOG, "ddg-length :%f\n", node->Length());
                }
            }
        }
    }

    return TRUE;
}

BOOL DDG::Destruct(void)
{
    CXX_DELETE(_map, EPS::current_eps_mempool());
    CXX_DELETE(_bb_map, EPS::current_eps_mempool());

    return TRUE;
}

void DDG::Update(Fence* fence, int eps_level)
{
    OP* op = fence->fence_boundary();
//    if(/*op==NULL || */op==fence->fence_op()) return;
    if(op==NULL && fence->fence_node()->Is_Region()) return;
    if(op==NULL) op = BB_last_op(fence->fence_node()->BB_Node());
    else if(op!=fence->fence_op()) op = OP_prev(op);
    // else fence_boundary==fence_op, means no instruction was scheduled.
    // but still fence advances.

    BOOL pass_fence=FALSE;
    OP* start_op = op;
    for(; op!=NULL && !pass_fence/*&& op!=fence->fence_op()*/; op=OP_prev(op)) {
        DDG_Node* node = Find(op);
        if(op==fence->fence_op()) pass_fence = TRUE;
        if(node==NULL) continue;
//        node->_last_eps_id = eps_level;
//        node->_eps_id = eps_level;
        node->_length = 0.0;
    }

    pass_fence=FALSE;
    op = start_op;
    for(; op!=NULL && !pass_fence/*&& op!=fence->fence_op()*/; op=OP_prev(op)) {
        DDG_Node* node = Find(op);
        if(op==fence->fence_op()) pass_fence = TRUE;
        if(node==NULL) continue;

        if(EPSDBG(2)) {
            fprintf(EPSLOG, "ddg update for : ");
            eps_print_asm(EPSLOG, op, NULL);
        }

        node->_last_eps_id = eps_level;
        node->_eps_id = eps_level;
        node->Update(TRUE, eps_level);
    }
    //mark_hot_nodes(fence);              //sylee
}
//sylee   081001
//mark all linked ddg node with hot load 
void DDG_Node::mark_linked_node(){
	
//	fprintf(EPSLOG, "ddg node id : %d", this->Id() );
	if (this->is_visited()){
//		fprintf(EPSLOG, "is visited\n");
		return;
	}
//	 fprintf(EPSLOG, "is not visited\n");		 
	DDG_EDGE_LIST::iterator it;
	DDG_EDGE_LIST::iterator it2;
					 
	this->mark_visited(TRUE);
	this->mark_hot_node(TRUE);
	
	for(it=_succs.begin(); it!=_succs.end(); it++) {
		DDG_Edge* edge = *it;
		DDG_Node* succ = edge->Dst();
		succ->mark_linked_node();
	}
//	fprintf(EPSLOG, "all succ of %d are visited\n", this->Id());
	for(it2=_preds.begin(); it2!=_preds.end();it2++ ) {
		DDG_Edge* edge2 = *it2;
		DDG_Node* pred = edge2->Src();
		pred->mark_linked_node();
	}
//	   fprintf(EPSLOG, "all pred of %d are visited\n", this->Id());
   	   return;
}
//

#if 0
void DDG::mark_hot_nodes(Fence* fence){
    OP* op = fence->fence_boundary();
    //	OP* op;
    char buf[256];
    DDG_Map::iterator it; 
    if (op==NULL){return;}

    for(it=this->_map->begin(); it!=this->_map->end(); it++){
        DDG_Node* node = (*it).second;          
        node->mark_visited(FALSE);
    }

    fprintf(EPSLOG, "all ddg\n");
    for(it=this->_map->begin(); it!=this->_map->end(); it++){
        DDG_Node* node = (*it).second;
        op = node->Op();
        if (op !=NULL&&OP_load(op)){

            fprintf(EPSLOG, "1");

            TN *tn = OP_result(op, 0);
            fprintf(EPSLOG, " 2 ");

            eps_print_asm(EPSLOG, op, NULL);
            //	                fprintf(vcg, "%p ", op);
            if (tn!= NULL && TN_is_register(tn) && !TN_is_const_reg(tn)){
                fprintf(EPSLOG, " 3 ");
                if (TN_number(tn)==946){
                    fprintf(EPSLOG, "hot load!!\n"); 
                    node->mark_linked_node();
                }
            }
            else {fprintf(EPSLOG, " 3 ");}
        }
    }
    fprintf(EPSLOG, "\n");	       

/*	if(op!=NULL && op == fence->fence_op() ){
                if(OP_load(op)) {

			TN *tn = OP_result(op, 0);
                        if (tn!= NULL && !TN_is_constant(tn) && TN_number(tn)==946){
//			eps_print_TN(OP_result(op, 0), op, buf, 0, -1);	
//			if(!strcmp(buf ,"GTN946(r_)")|| !strcmp(buf,"TN946(r_)")){
				fprintf(EPSLOG, "hot load!!\n");
				for(it=this->_map->begin(); it!=this->_map->end(); it++) {
					DDG_Node* node = (*it).second;
					node->mark_visited(FALSE);
				}
				DDG_Node* hot_node = _map->Find(op);
				if (hot_node !=NULL){
					fprintf(EPSLOG, "start marking hot load\n");
					hot_node->mark_linked_node();
				}
			}
		}
				
	}
	for(;op!=NULL && op!=fence->fence_op(); op=OP_prev(op)) {
		fprintf(EPSLOG, "find hot load\n");
		if(OP_load(op)) {
                        TN *tn = OP_result(op, 0);       
	                if (tn!= NULL && !TN_is_constant(tn) && TN_number(tn)==946){
			
//			eps_print_TN(OP_result(op, 0), op, buf, 0, -1);
//			if(!strcmp(buf ,"GTN946(r_)")|| !strcmp(buf,"TN946(r_)")){

				fprintf(EPSLOG, "hot load!!\n");
				for(it=this->_map->begin(); it!=this->_map->end(); it++) {
					 DDG_Node* node = (*it).second;		 
					 node->mark_visited(FALSE);
				}
				DDG_Node* hot_node = _map->Find(op);
				if (hot_node !=NULL){
					fprintf(EPSLOG, "start marking hot load\n");
					hot_node->mark_linked_node();
				}
			}
		}
	}*/
		
}
#endif
//
//

// return TRUE is o1 is dependent to o2
BOOL DDG::is_dependent(OP* o1, OP* o2)
{
    int i, j;

    // At first, check register dependencies.
    for(i=0; i<OP_opnds(o1); i++) {
        TN* opnd1 = OP_opnd(o1, i);

        if(TN_is_register(opnd1) && (!TN_is_true_pred(opnd1)) && OP_Defs_TN(o2, opnd1)) return TRUE; // true depedent.
    }

    // Second, check memory dependencies.
    BOOL op_is_store = OP_store(o2);

//    if(OP_store(o1) && (op_is_store || OP_load(o2) || OP_call(o2))) {
//        return TRUE;
//    }
//    if(OP_load(o1) && (op_is_store || OP_call(o2))) {
//        return TRUE;
//    }

    // I hate this stuff...-_-;;;
    // But I cannot help doing this now...
    // Isn't there any way to avoid this?
//    OP op1, op2;
//    memcpy(&op1, o2, sizeof(op1));
//    memcpy(&op2, o1, sizeof(op2));
    // Third, misc dependencies.
//    if(CGTARG_Dependence_Required(&op1, &op2)) {
//        return TRUE;
//    }

    return FALSE;
}

// return TRUE if o1 kills o2
BOOL DDG::kill(OP* o1, OP* o2)
{
    // 2009/02/27 jaemok modified.
    // store does not kill register op.
    // I think call does not kill any register neither.
    //if(OP_call(o1)) return TRUE;    // call kills every ops.
    if(OP_call(o1)) return FALSE;    // call kills nothing.
    if(OP_store(o1)) return FALSE;    // store kills nothing.

    for(int i=0; i<OP_results(o2); i++) {
        TN* opnd2 = OP_result(o2, i);
        if(OP_Defs_TN(o1, opnd2)) return TRUE; // o1 defines o2's result
    }
    return FALSE;
}

PostDominator::PostDominator(BB* first_bb)
{
    iset N;
    iset exits;
    BB* bb;

    for(bb=first_bb; bb; bb=BB_next(bb)) {
        if(BB_succs_len(bb)==0) exits.insert(BB_id(bb));

        N.insert(BB_id(bb));
    }

    for(bb=first_bb; bb; bb=BB_next(bb)) {
        _map[bb] = N;
    }

    BOOL changed = TRUE;
    while(changed) {
        changed = FALSE;
        for(bb=first_bb; bb; bb=BB_next(bb)) {
            iset T = N;
            iset T2;

            bblist* preds;
            FOR_ALL_BB_PREDS(bb, preds) {
                iset T2;
                BB* pred = BBLIST_item(preds);
                iset& dom_p = _map[pred];
                set_intersection(T.begin(), T.end(), dom_p.begin(), dom_p.end(), std::inserter<iset>(T2,T2.begin()));
                T = T2;
            }
            T.insert(BB_id(bb));
            if(_map[bb] != T) {
                changed = TRUE;
                _map[bb] = T;
            }
        }
    }

#if 0
    char buf[256];
    sprintf(buf, "%s_%s_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()), "pdg");
    FILE *vcg = fopen(buf, "w");

    // print heading
    fprintf(vcg, "graph: {\n");
    fprintf(vcg, "\tlayout_algorithm:minbackward\n\tdisplay_edge_labels:yes\n");

    for(bb=first_bb; bb; bb=BB_next(bb)) {
        // print node
        fprintf(vcg, "\tnode: {title:\"BB_id:%d\"\n", BB_id(bb));
        fprintf(vcg, "\tlabel: \"BB_id:%d\n", BB_id(bb));
        fprintf(vcg, "\"}\n");

        // print edge
        iset& dom_p = _map[bb];
        for(iset::iterator it=dom_p.begin(); it!=dom_p.end(); it++) {
            fprintf(vcg, "\nedge: {thickness: 3 sourcename: \"BB_id:%d\" targetname: \"BB_id:%d\"}\n", BB_id(bb), *it);
        }
    }

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
#endif
}

BOOL PostDominator::inspect(BB* a, BB* b)
{
    iset& is = _map[a];
    if(is.find(BB_id(b))!=is.end()) return TRUE;

    return FALSE;
}

double DDG_Node::Initiate(void)
{
    if(_visited) return _length;
    _visited = TRUE;

    double max_succ_length = 0.0;
    double total_speculative_succ_length = 0.0;
    int num_speculative_succ = 0;
    for(edge_iterator it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* se = *it;
        if(se->_iter>0) continue;   // we do not go accross backedge at initiation.

        DDG_Node* succ = se->Dst();
        double succ_length = succ->Initiate();

        BB* this_bb = OP_bb(this->_op);
        BB* succ_bb = OP_bb(succ->_op);

        if(this_bb==succ_bb) {
            if(max_succ_length<succ_length) {
                max_succ_length = succ_length;
            }
        } else if(EPS::current_eps_driver()->get_pd()->inspect(this_bb, succ_bb)) {
            // successor is non-speculative
            if(max_succ_length<succ_length) {
                max_succ_length = succ_length;
            }
        } else {
            // successor is speculative
            total_speculative_succ_length += succ_length;
            num_speculative_succ++;
        }
    }
    double average;
    if(num_speculative_succ>0) {
        average = total_speculative_succ_length / ((double)num_speculative_succ);
        average = average * SPEC_PENALTY;
    } else {
        average = 0.0;
    }

    if(max_succ_length<average) {
        max_succ_length = average;
    }

    if(!OP_copy(_op)) {
        _length = max_succ_length + TSI_Result_Available_Time(OP_code(_op), 0);
//        _length = max_succ_length + 1;
    } else {
        _length = max_succ_length;
    }
    return _length;
}

void DDG_Node::Initiate2(double length)
{
    if(_visited) return;
    _visited = TRUE;
    _max_length = length;

   for(edge_iterator it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* se = *it;
        if(se->_iter>0) continue;   // we do not go accross backedge at initiation.

        DDG_Node* succ = se->Dst();
        succ->Initiate2(length);
   }
}

BOOL DDG_Node::LoadLength(DDG_Node* head)
{
    if(_visited) return FALSE;
    _visited = TRUE;

    BOOL bRet = FALSE;

    if(OP_load(_op)) {
        bRet = TRUE;
        fprintf(EPSLOG, "Load in Critical Path( %p ) has Length %f:%f\n", head, _length, _max_length);
    }

   for(edge_iterator it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* se = *it;
        DDG_Node* succ = se->Dst();
        bRet |= succ->LoadLength(head);
    }

   return bRet;
}

void DDG_Node::MaxLength(DDG_Node* head)
{
    if(_visited) return;
    _visited = TRUE;

    _op->eps_flags |= OP_EPS_IN_CRITICAL;

   for(edge_iterator it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* se = *it;
        DDG_Node* succ = se->Dst();
        succ->MaxLength(head);
    }

   for(edge_iterator it=_preds.begin(); it!=_preds.end(); it++) {
        DDG_Edge* pe = *it;
        DDG_Node* pred = pe->Src();
        pred->MaxLength(head);
    }

   return;
}

int DDG_Node::FindCopyCycle(DDG_Node* head, int copies)
{
    if(_head == head) return copies;
    if(OP_copy(this->_op)) copies++;
    _head = head;

    for(edge_iterator it=_preds.begin(); it!=_preds.end(); it++) {
        DDG_Edge* pe = *it;
        DDG_Node* pred = pe->Src();

        int pred_copies = pred->FindCopyCycle(head, copies);
    }
}

void DDG_Node::Update(BOOL at_fence, int eps_id)
{
    _last_eps_id = eps_id;

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "updating ddg for(%f):", _length);
        eps_print_asm(EPSLOG, _op, NULL);
    }

    double max_succ_length = 0.0;
    double total_speculative_succ_length = 0.0;
    double succ_length = 0.0;
    int num_speculative_succ = 0;

    if(at_fence) {
//        EPS_ASSERT(_eps_id==-1, "eps_id should be initialized to -1");

        _eps_id = eps_id;
//        _length = 0.0;
    } else {
        for(edge_iterator it=_succs.begin(); it!=_succs.end(); it++) {
            DDG_Edge* se = *it;
            //if(se->_iter>0) continue;   // we do not go accross backedge at initiation.

            DDG_Node* succ = se->Dst();
            succ_length = succ->Length();

            BB* this_bb = OP_bb(this->_op);
            BB* succ_bb = OP_bb(succ->_op);
            if(this_bb==succ_bb) {
                if(max_succ_length<succ_length) {
                    max_succ_length = succ_length;
                }
            } else if(EPS::current_eps_driver()->get_pd()->inspect(this_bb, succ_bb)) {
                // successor is non-speculative
                if(max_succ_length<succ_length) {
                    max_succ_length = succ_length;
                }
            } else {
                // successor is speculative
                total_speculative_succ_length += succ_length;
                num_speculative_succ++;
            }
        }
        double average;
        if(num_speculative_succ>0) {
            average = total_speculative_succ_length / ((double)num_speculative_succ);
            average = average * SPEC_PENALTY;
        } else {
            average = 0.0;
        }

        if(max_succ_length<average) {
            max_succ_length = average;
        }
        if(!OP_copy(_op)) {
            _length = max_succ_length + 1.0;
        } else {
            _length = max_succ_length;
        }
    }
    if(EPSDBG(1)) {
        fprintf(EPSLOG, "to %f %d %d %f\n", _length, _preds.size(), num_speculative_succ, max_succ_length);
    }

    for(edge_iterator it=pred_begin(); it!=pred_end(); it++) {
        DDG_Edge* pred_e = *it;
        DDG_Node* pred = pred_e->Src();

        if(pred->_eps_id!=-1 && this->_eps_id<pred->_eps_id) {
            // there is fence between pred and this.
            // we don't go further.
            if(EPSDBG(2)) fprintf(EPSLOG, "dont go pred 1\n");
            continue;
        }
        if(pred->_last_eps_id==eps_id) {
            if(EPSDBG(2)) fprintf(EPSLOG, "dont go pred 2\n");
            /*if(!(OP_copy(pred->Op()) || OP_copy(this->Op())))*/ continue;
        }
        pred->Update(FALSE, eps_id);
    }
}

void DDG::Find_LD_Recovery_Cand(DDG_Node* n, int id, std::list<OP*>& candidates)
{
    if(n->_spec_ld_id==id) return;
    n->_spec_ld_id = id;

    candidates.push_back(n->Op());

    DDG_Node::edge_iterator it;
    for(it=n->succ_begin(); it!=n->succ_end(); it++) {
        DDG_Edge* e = *it;
        DDG_Node* succ = e->Dst();
        Find_LD_Recovery_Cand(succ, id, candidates);
    }
}

void DDG::Find_LD_Recovery_Cand(OP* ld, int id, std::list<OP*>& candidates)
{
    DDG_Node* node = this->Find(ld);
    Find_LD_Recovery_Cand(node, id, candidates);
}

DDG_Node* DDG_Find_Defining_Op(OP* op, int opnd)
{
    DDG* ddg = EPS::current_eps_driver()->get_ddg();
    DDG_Node* node = ddg->Find(op);
    if(node==NULL) {
        fprintf(stderr, "Warining, no ddg node found\n");
        return NULL;
    }

    return DDG_Find_Defining_Op(op, node, opnd);
}

DDG_Node* DDG_Find_Defining_Op(OP* op, DDG_Node* node, int opnd)
{
    TN* tn = OP_opnd(op, opnd);

    DDG_Node::edge_iterator it;
    for(it=node->pred_begin(); it!=node->pred_end(); it++) {
        DDG_Edge* e = *it;
        DDG_Node* pred = e->Src();
        if(OP_Defs_TN(pred->Op(), tn)) return pred;
    }
    return NULL;
}

// 2009/02/15 jaemok
void DDG_Node::relate_hot_loads(void)
{

    if (_visited){
        return;
    }
    _visited = TRUE;
    _op->eps_flags |= OP_EPS_HOT_LOAD_RELATED;

    DDG_EDGE_LIST::iterator it;
    DDG_EDGE_LIST::iterator it2;
    for(it=_succs.begin(); it!=_succs.end(); it++) {
        DDG_Edge* edge = *it;
        DDG_Node* succ = edge->Dst();
//        succ->relate_hot_loads();
    }
    for(it2=_preds.begin(); it2!=_preds.end();it2++ ) {
        DDG_Edge* edge2 = *it2;
        DDG_Node* pred = edge2->Src();
        pred->relate_hot_loads();
    }
    return;
}
