#include <sys/time.h>

#include "eps.h"
#include "bbregs.h"
#include "gra_live.h"
#include "speculation.h"    // we borrow some utility functions of GIS module


extern int compute_time;
extern int select_time;
extern int move_time;



AV_list* Fence::compute_av_set(REGION* start_rgn, REGIONAL_CFG_NODE* start_node, OP* start_op, reg_tn_set* live, BOOL at_fence, int ws)
{
    EPS_ASSERT(start_node->Home_Region()==start_rgn, "wrong node\n");

    if(!at_fence) {
        if(EPSDBG(1)) {
            if(start_node->Is_Region()) {
                fprintf(EPSLOG, "Compute AV set of Successor Region : %d", start_node->Region_Node()->Id());
            } else {
                fprintf(EPSLOG, "Compute AV set of Successor BB : %d", BB_id(start_node->BB_Node()));
            }
        }

        if(!EPS::go_further_successor(start_node)) {
            if(EPSDBG(1)) fprintf(EPSLOG, " don't compute\n");

            AV_list* empty_avs = CXX_NEW(AV_list(), EPS::current_eps_mempool());
            return empty_avs;
        }

        Node_attribute* attrib = EPS::current_eps_driver()->get_attrib(start_node);
        // reuse avs_at_header, if available.
        if(attrib->get_avs_at_header()) {
            if(EPSDBG(1)) fprintf(EPSLOG, " found from header\n");
            return attrib->get_avs_at_header();
        }
        if(EPSDBG(1)) fprintf(EPSLOG, " start searching\n");
    }

    OP* op;
    OP* last_op;
    BOOL go_successors = TRUE;
    if(!start_node->Is_Region()) {
        OP* sop;
        if(!at_fence) sop = BB_first_op(start_node->BB_Node());
        else sop = start_op;

        if(start_op==NULL && at_fence) {
            last_op = NULL;
        } else {
            last_op = BB_last_op(start_node->BB_Node());
        }

        // check if ws exceeds in this node or there is fence in this node.
        if(EPS::current_eps_driver()->fence_in_node(start_node)) {
#if 0 // 2007.02.25
            if((!at_fence) /*&& EPS::current_eps_driver()->is_fence(start_node, sop)*/) {
                last_op = NULL;
                go_successors = FALSE;
            } else {
#endif
                for (op = sop; op ; op = OP_next(op)) {
                    ws++;
                    if(ws>eps_option::ws()
                    || (OP_next(op) && (EPS::current_eps_driver()->is_fence(start_node, OP_next(op)) || EPS::is_ineligible_succ(OP_next(op))))) {
                        last_op = op;
                        go_successors = FALSE;
                        break;
                    }
                }
#if 0 // 2007.02.25
            }
#endif
        } else {
            for (op = sop; op ; op = OP_next(op)) {
                ws++;
                if(ws>eps_option::ws() || (OP_next(op) && EPS::is_ineligible_succ(OP_next(op)))) {
                    last_op = op;
                    go_successors = FALSE;
                    break;
                }
            }
        }

        // do not find av below call
//        if(BB_call(start_node->BB_Node())) {
//            go_successors = FALSE;
//        }
    } else {
        if(EPS::current_eps_driver()->fence_in_node(start_node)) {
            // we do not move instructions across region yet...
            // ^-- is this comment valid?
            // I think this comment is not valid.
            // instead "we do not move instructions accross fence"
            go_successors = FALSE;
        }
    }


    AV_list* avs;
    avs = CXX_NEW(AV_list(), EPS::current_eps_mempool());

    if(go_successors==TRUE) {
        int num_succs = start_node->Is_Region()?start_node->Succ_Num():BB_succs_len(start_node->BB_Node());
        //int num_succs = start_node->Succ_Num();

        for(REGIONAL_CFG_EDGE* se = start_node->First_Succ(); se; se=se->Next_Succ()) {
            REGIONAL_CFG_NODE* succ_node = se->Dest();

#if EPS_SPECLOAD
            if(EPS::recovery(succ_node)) continue;
#endif

            if(start_node->Home_Region()->Is_Contained_By(succ_node->Home_Region())) {
                // successor is in outer region.
                EPS_ASSERT(0, "I think this case never happen\n");
                continue;
            } else {
                // successor is in the same region.
                AV_list succ_avs = *compute_av_set(start_rgn, succ_node, NULL, live, FALSE, ws);
                if(succ_node->Is_Region()) {
                    succ_avs.update_av_attribute(num_succs, succ_node->Pred_Num(), se);
                } else {
                    succ_avs.update_av_attribute(num_succs, BBlist_Len(BB_preds(succ_node->BB_Node())), se);
                }

                EPS::current_eps_driver()->get_join_info()->add_dup_join_block(succ_avs, start_node, succ_node);

                if(EPSDBG(2)) {
                    if(succ_node->Is_Region()) {
                        fprintf(EPSLOG, "AV set from Successor Region : %d\n", succ_node->Region_Node()->Id());
                    } else {
                        fprintf(EPSLOG, "AV set from Successor BB : %d\n", BB_id(succ_node->BB_Node()));
                    }
                    succ_avs.print(EPSLOG);

/*
                    if(succ_node->Is_Region()) {
                        fprintf(EPSLOG, "merge region node %d ", succ_node->Region_Node()->Id());
                    } else {
                        fprintf(EPSLOG, "merge BB %d ", BB_id(succ_node->BB_Node()));
                    }
                    if(start_node->Is_Region()) {
                        fprintf(EPSLOG, "at region node%d\n", start_node->Region_Node()->Id());
                    } else {
                        fprintf(EPSLOG, "at BB %d\n", BB_id(start_node->BB_Node()));
                    }
*/
                }

                // 2006.12.15
                if(num_succs==2 && (!start_node->Is_Region()) && (!succ_node->Is_Region()))
                {
                    BB* bb = start_node->BB_Node();
                    OP* last_op = BB_last_op(bb);
                    if(OP_code(last_op)==TOP_br_cond) {
                        // start_node ends with conditional branch.
                        TN* pred = OP_opnd(last_op, OP_PREDICATE_OPND);
                        if(succ_node->BB_Node()==BB_Other_Successor(bb, BB_Fall_Thru_Successor(bb))) {
                            succ_avs.add_predicate(pred, TRUE);
                        } else {
                            succ_avs.add_predicate(EPS::FindComplement(pred), TRUE);
                        }
                    }
                }
                if(EPSDBG(3) && num_succs>1) {
                    fprintf(EPSLOG, "before merge:\n");
                    avs->print(EPSLOG);
                    fprintf(EPSLOG, "merging...\n");
                }

                avs->merge_av_set(succ_avs, num_succs);

                if(EPSDBG(3) && num_succs>1) {
                    fprintf(EPSLOG, "after merge:\n");
                    avs->print(EPSLOG);
                    fprintf(EPSLOG, "merge finish\n");
                }
            }

            /*
            if(num_succs==2 && (!start_node->Is_Region()))
            {
                BB* bb = start_node->BB_Node();
                OP* last_op = BB_last_op(bb);
                if(OP_code(last_op)==TOP_br_cond) {
                    // start_node ends with conditional branch.
                    TN* pred = OP_opnd(last_op, 0);
                    if(se==start_node->First_Succ()) {
                        avs->add_predicate(pred, TRUE);
                    }
                }
            }
            */
        }
    }



    if(start_node->Is_Region()) {
        // we need to filtering for region here.
        avs->filter_by_region(start_node);
    } else {
        if(last_op) {
            if(start_op!=NULL || at_fence==FALSE) {
                for (op = last_op; op != start_op; op = OP_prev(op)) {
                    // 2005.06.21 live calculation
                    int i;
                    for(i=0; i<OP_results(op); i++) {
                        TN* tn = OP_result(op,i);
                        if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
                            live->erase(tn);
                        }
                    }
                    for(i=0; i<OP_opnds(op); i++) {
                        TN* tn = OP_opnd(op,i);
                        if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
                            live->insert(tn);
                        }
                    }

                    avs->filter(*live, op);
                    avs->inc_distance();

                    if(EPS::is_not_schedulable(op)) {
                        if(EPSDBG(10)) {
                            fprintf(EPSLOG, "After filter by op :");
                            eps_print_asm(EPSLOG, op, NULL);

                            avs->print(EPSLOG);
                        }
                        continue;
                    }
                    avs->filter_branch();

                    // 2005.06.22 register pressure
                    avs->update_reg_pressure(op);

                    avs->insert_av(*live, CXX_NEW(AV(op), EPS::current_eps_mempool()));

                    if(EPSDBG(10)) {
                        fprintf(EPSLOG, "After filter by op 1 :");
                        eps_print_asm(EPSLOG, op, NULL);

                        avs->print(EPSLOG);
                    }
                }
            }
            if(start_op) {
                // 2005.06.21 live calculation
                int i;
                for(i=0; i<OP_results(op); i++) {
                    TN* tn = OP_result(op,i);
                    if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
                        live->erase(tn);
                    }
                }
                for(i=0; i<OP_opnds(op); i++) {
                    TN* tn = OP_opnd(op,i);
                    if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
                        live->insert(tn);
                    }
                }

                avs->filter(*live, start_op);
                avs->filter_branch();
                avs->inc_distance();

                // 2005.06.22 register pressure
                avs->update_reg_pressure(op);

                if(EPSDBG(10)) {
                    fprintf(EPSLOG, "After filter by op 2 :");
                    eps_print_asm(EPSLOG, start_op, NULL);

                    avs->print(EPSLOG);
                }

                if(!EPS::is_not_schedulable(start_op))
                    avs->insert_av(*live, CXX_NEW(AV(start_op), EPS::current_eps_mempool()));
            }
        }
    }

    if(!at_fence) {
        if(EPS::current_eps_driver()->is_fence(start_node, start_op)) avs->make_null();

        // computation at bb heaer, we log avs.
        EPS::current_eps_driver()->get_attrib(start_node)->set_avs_at_header(avs);
    }

    return avs;
}

AV* Fence::select_best_av(AV_list* avs)
{
    vector<AV*> avs_vector;

    // copy av list into vector.
    avs_vector.insert(avs_vector.begin(),avs->begin(), avs->end());

//    if(!EPS_feedback) {
        switch(eps_option::heur()) {
        case 0:
            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_DOS);
            break;
        case 1:
            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_DOS_DDG);
            break;
        case 2:
            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_DDG_DOS);
            break;
        case 3:
            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_DDG_by_DOS);
            break;
        case 4:
            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_SHP);
            break;
        default:
            EPS_ASSERT(0, "no heuristic\n");
        }
//    } else {
//            stable_sort(avs_vector.begin(), avs_vector.end(), AV::compare_SHP);
//    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "Sorted AV set:\n");
        for(vector<AV*>::iterator it=avs_vector.begin(); it!=avs_vector.end(); it++) {
            (*it)->print(EPSLOG);
        }
    }

    for(vector<AV*>::iterator it=avs_vector.begin(); it!=avs_vector.end(); it++) {
        if(!(_fence_boundary!=NULL && (*it)->is_equal(_fence_boundary))) {
            AV* av = *it;

            select_definition_TN(av, _fence_node, _fence_boundary);

            OP* op = av->op();
            if(_chosen_TNs.size()!=OP_results(op)) {
                // failed to select definition registers
                continue;
            }
            // we do not rename copy instructions
            // we do not rename predicate
            // we do not rename if destination register is more than 1
            // we do not rename if av crossed regionq
            // we do not rename local code motion. 2004/11/07
            // we do not rename ddg length is equal to or less than 1. 2004/11/08
            // we do not rename spec_join
            if(OP_copy(op) || OP_code(op)==TOP_mov || OP_code(op)==TOP_mov_i ||
              (OP_results(op)!=0 && TN_is_register(OP_result(op,0)) &&
               TN_register_class(OP_result(op,0))==ISA_REGISTER_CLASS_predicate) ||
              (OP_results(op)!=0 && TN_is_register(OP_result(op,0)) &&
               TN_register_class(OP_result(op,0))==ISA_REGISTER_CLASS_branch) ||
              (OP_results(op)!=0 && TN_is_register(OP_result(op,0)) &&
               (TN_is_save_reg(OP_result(op,0)) || (TN_is_sp_reg(OP_result(op,0))) || (TN_is_gp_reg(OP_result(op,0))))) ||
              /*(OP_load(op) && (av->attrib()->spec()>0 || av->attrib()->over_store()))l ||*/
              (OP_results(op)!=1) ||
               av->attrib()->is_local() ||
               av->attrib()->ddg_node()==NULL ||
               av->attrib()->ddg_node()->Length()<=1.0 /*||
              (av->attrib()->cross_region())*/) {
                TN_LIST::iterator i;
                int n;
                BOOL need_rename = FALSE;
                for(i=_chosen_TNs.begin(),n=0; i!=_chosen_TNs.end(); i++,n++) {
                    //if((*i)!=OP_result(op, 0)) {  // no cmp code motion
                    if((*i)!=OP_result(op, n)) { // do cmp code motion
                        need_rename = TRUE;
                        if(EPSDBG(1)) fprintf(EPSLOG, "no rename\n");
                        break;
                    }
                }
                if(need_rename) continue;
            }
        } else {
            // don't need to choose definition register.
            // the av itself is boundary.
            _chosen_TNs.clear();
            for(int i=0; i<OP_results((*it)->op()); i++) {
                _chosen_TNs.push_back(OP_result((*it)->op(), i));
            }
        }

        if(EPSDBG(1)) {
            fprintf(EPSLOG, "Selected AV: ");
            (*it)->print(EPSLOG);

            fprintf(EPSLOG, "Selected TNs : ");
            TN_LIST::iterator itt;
            for(itt=_chosen_TNs.begin(); itt!=_chosen_TNs.end(); itt++) {
                char buf[256];
                eps_print_TN(*itt, NULL, buf, 0, 0);
                fprintf(EPSLOG, "%s ", buf);
            }
            fprintf(EPSLOG, "\n");
        }
        return *it;
    }

    return NULL;
}

OP* Fence::search_in_node(RHS_set* rhs_down, REGIONAL_CFG_NODE* node, OP* boundary, BOOL from_fence, BOOL check_dest, BOOL* after_store)
{
    if(node->Is_Region()) {
        rhs_down->kill(node->Region_Node());
        return NULL;
    }

    BB* bb = node->BB_Node();
    OP* op;
    OP* end_op;

    if(from_fence) {
        op = boundary;
        end_op = NULL;
    } else {
        op = BB_first_op(bb);
        if(node==_fence_node) {
            end_op = _fence_op;
        } else {
            end_op = NULL;
        }
    }
    for(; op!=end_op; op=OP_next(op)) {
        if(EPSDBG(15)) {
            fprintf(EPSLOG, "visiting : "); eps_print_asm(EPSLOG, op, NULL);
        }

        // When searching for "this fence node", if fence is empty(fence_op==fence_boundary),
        // and given boundary is same to the fence_boundary,
        // ---------  fence
        // ---------  boundary
        // op1
        // we should be able to find op1.
        // if we use SERIALIZE pseudo operation, this dirty job won't need, but we do not.
        Fence* temp_fence;
        if((!(node==_fence_node && _fence_boundary==_fence_op && _fence_boundary==boundary))
        && (temp_fence=EPS::current_eps_driver()->is_fence(node, op))
        || EPS::is_ineligible_succ(op)) {
            rhs_down->make_null();
            if(EPSDBG(15)) {
                fprintf(EPSLOG, "ineligible\n");
            }
            return NULL;
        }

        if(rhs_down->has_same_rhs(op)) {
            // found the matching operation.
            if(EPSDBG(15)) {
                fprintf(EPSLOG, "returning same rhs"); eps_print_asm(EPSLOG, op, NULL);
            }
            return op;
        }

        if(after_store!=NULL) {
            if(OP_store(op)) {
                *after_store = TRUE;
            }
        }

        rhs_down->kill(op);

        // following code?? return NULL; it's all they do.
        if(check_dest) {
            // check the destination of this op kills the chosen_TN, break.
            // this phase should occur only when "move_instruction"
            // should not check_dest when "select_dest"
            int i;
            TN_LIST::iterator it;
            for(i=0,it=_chosen_TNs.begin(); i<OP_results(op) && it!=_chosen_TNs.end(); i++,it++) {
                if(OP_result(op, i)==(*it)) {
                    if(EPSDBG(15)) {
                        fprintf(EPSLOG, "check_dest\n");
                    }
                    rhs_down->make_null();
                    return NULL;
                }
            }
        }

        // here, check and undo_forward_substitution.
        {
            rhs_down->undo_forward_substitution(op);
        }
    }

    return NULL;
}

typedef mempool_allocator<OP*> OP_ALLOC;
typedef std::list<OP*, OP_ALLOC> OP_list;

OP* Fence::move_instruction(AV* av)
{
    RHS_set rhs_down;
    rhs_down.insert(av->op());
    _need_av_invalidate = TRUE; //2008.08.08 this might make EPS slower but correctly
    _bk_bb_set.clear();    // 2004.11.25

    if(_fence_boundary!=NULL && av->is_equal(_fence_boundary)) {
        OP* ret = _fence_boundary;

        ret->iteration_number++;

        // the selected av is the boundary instruction...
        // we don't have to do anything...
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "Selected AV: ");
            av->print(EPSLOG);
            fprintf(EPSLOG, " is the boundary do nothing.\n");
        }
        // 2005.01.24
        OP_list ops;
        for(OP* issued_op = _fence_op; issued_op!=_fence_boundary; issued_op=OP_next(issued_op)) {
            ops.push_front(issued_op);
        }
        OP_list::iterator it;
        for(it=ops.begin(); it!=ops.end(); it++) {
            OP* issued_op = *it;
            //if((issued_op->eps_flags & OP_EPS_MOVED)==0) continue;

            if(OP_copy(issued_op) && EPS::Is_OP_Dependent(ret, issued_op)) {
                TN *result = OP_result(issued_op, 0);
                TN *opnd = OP_opnd(issued_op, 1);

                if(TN_is_save_reg(result)) continue;
                if(TN_is_gp_reg(result)) continue;
                if(TN_is_sp_reg(result)) continue;
                if(TN_is_fp_reg(result)) continue;
                if(TN_is_ep_reg(result)) continue;
                if(TN_is_ra_reg(result)) continue;

                for(int i=0; i<OP_opnds(_fence_boundary); i++) {
                    if(OP_opnd(_fence_boundary, i)==result) {
                        Set_OP_opnd(_fence_boundary, i, opnd);
                    }
                }
            }
        }

        // if boundary OP is NULL, it means the boundary is at the bottom of the BB.
        _fence_boundary = OP_next(_fence_boundary);

        return ret;
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "Begin move instruction :");
        av->print(EPSLOG);
    }

    // schedule the av before boundary.
    OP* newOP = Dup_OP(av->op());
    newOP->iteration_number++;
    newOP->eps_flags |= OP_EPS_MOVED;
    if(av->attrib()->spec()-av->attrib()->iteration()>0) newOP->eps_flags |= OP_EPS_SPEC;
    if(av->attrib()->join()>0) newOP->eps_flags |= OP_EPS_JOIN;
    if(av->attrib()->is_unified()) newOP->eps_flags |= OP_EPS_UNIFIED;
    if(av->attrib()->iteration()>0) newOP->eps_flags |= OP_EPS_CICM;
    if(OP_load(newOP)) {
        if(av->attrib()->over_store()) newOP->eps_flags |= OP_EPS_ADVLOAD;
        if(av->attrib()->spec()>0) newOP->eps_flags |= OP_EPS_SPECLOAD;
    }

    if(OP_load(newOP)) {
        if(((newOP->eps_flags&OP_EPS_ADVLOAD)!=0) && ((newOP->eps_flags&OP_EPS_SPECLOAD)!=0)) {
            if(OP_Is_Float_Mem(newOP)) Change_ld_Form(newOP, ECV_fldtype_sa);
            else Change_ld_Form(newOP, ECV_ldtype_sa);
        } else if((newOP->eps_flags&OP_EPS_ADVLOAD)!=0) {
            if(OP_Is_Float_Mem(newOP)) Change_ld_Form(newOP, ECV_fldtype_a);
            else Change_ld_Form(newOP, ECV_ldtype_a);
        } else if((newOP->eps_flags&OP_EPS_SPECLOAD)!=0) {
            if(OP_Is_Float_Mem(newOP)) Change_ld_Form(newOP, ECV_fldtype_s);
            else Change_ld_Form(newOP, ECV_ldtype_s);
        }
    }

    int i;
    TN_LIST::iterator it;
    EPS_ASSERT(OP_results(newOP)==_chosen_TNs.size(), "number of result opnds and chosen TNs must be the same\n");
    for(i=0,it=_chosen_TNs.begin(); i<OP_results(newOP) && it!=_chosen_TNs.end(); i++,it++) {
        // EPS_ASSERT(OP_result(newOP,i)==*it, "renaming is not implemented yet.\n");
        if(OP_result(newOP,i)!=*it) {
            TN* res_tn = OP_result(newOP, i);
            Set_OP_result(newOP, i, *it);
        }
    }

    if(av->attrib()->spec() > 0) {
        Set_OP_cntl_spec(newOP);
    }

    // 2005.01.24
    OP_list ops;
    for(OP* issued_op = _fence_op; issued_op!=_fence_boundary; issued_op=OP_next(issued_op)) {
        ops.push_front(issued_op);
    }
    OP_list::iterator opit;
    for(opit=ops.begin(); opit!=ops.end(); opit++) {
        OP* issued_op = *opit;

        if(OP_copy(issued_op) && EPS::Is_OP_Dependent(newOP, issued_op)) {
            TN *result = OP_result(issued_op, 0);
            TN *opnd = OP_opnd(issued_op, 1);

            if(TN_is_save_reg(result)) continue;
            if(TN_is_gp_reg(result)) continue;
            if(TN_is_sp_reg(result)) continue;
            if(TN_is_fp_reg(result)) continue;
            if(TN_is_ep_reg(result)) continue;
            if(TN_is_ra_reg(result)) continue;

            for(int i=0; i<OP_opnds(newOP); i++) {
                if(OP_opnd(newOP, i)==result) {
                    Set_OP_opnd(newOP, i, opnd);
                }
            }
        }
    }

    // 2006.12.13
    if(av->attrib()->pred()!=NULL) {
        fprintf(stderr, "set pred\n");
        Set_OP_opnd(newOP, OP_PREDICATE_OPND, av->attrib()->pred());
        if(OP_load(newOP)) newOP->eps_flags |= OP_EPS_PRED_LOAD;
        newOP->eps_flags |= OP_EPS_PRED;
    }

    _new_op = newOP; // for live update
    EPS::current_eps_driver()->get_ddg()->Insert(_new_op);  // updating ddg.

    if(_fence_boundary!=NULL) {
        BB_Insert_Op_Before(_fence_node->BB_Node(), _fence_boundary, newOP);
    } else {
        BB_Append_Op(_fence_node->BB_Node(), newOP);
    }
    if(_fence_op==_fence_boundary) {
        _fence_op = OP_prev(_fence_boundary);
        EPS_ASSERT(_fence_op!=NULL, "cannot be NULL.\n");
    }

    if(av->attrib()->_b_hoist_without_speculation) {
        fprintf(EPSLOG, "hoist without speculation : ");
        eps_print_asm(EPSLOG, newOP, NULL);
    }

    // find matching operations from fence_boundary and delete the matching operation.
    // update dataflow and make bookkeepings if required.

    BOOL pred_bk = FALSE;
    RHS_set* rhs = move_instruction(&rhs_down, NULL, _fence_node, _fence_boundary, TRUE, FALSE, &pred_bk);

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "move_instruction returned RHS_set : \n");
        rhs->print(EPSLOG);
    }
    
    /***************************************/
    extern int aa;
    char buf[128];
    sprintf(buf, "%d", aa);
    if(EPS_vcg) visualize_region(EPS::current_eps_driver()->current_region(), buf);
    aa++;
    /***************************************/
    if(_need_av_invalidate) {
        EPS::inc_level();
    }

    return newOP;
}

int aa = 1;

RHS_set* Fence::move_instruction(RHS_set* rhs_down, REGIONAL_CFG_NODE* pred, REGIONAL_CFG_NODE* node, OP* boundary, BOOL at_fence, BOOL after_store, BOOL* pred_bk)
{
    // 1. find the matching instruction from successors recursivecly
    // 2. update cached avs, other attributes
    // 3. make bookkeeping if required.

    RHS_set* returning_rhs = CXX_NEW(RHS_set(), EPS::current_eps_mempool());
    Node_attribute* attrib = NULL;

    if(!at_fence && !EPS::go_further_successor(node)) {
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "stop here\n");
        }
        return returning_rhs;
    }

    if(EPSDBG(1)) {
        if(node->Is_Region()) {
            fprintf(EPSLOG, "search rhs at Region : %d\n", node->Region_Node()->Id());
        } else {
            fprintf(EPSLOG, "search rhs at BB : %d\n", BB_id(node->BB_Node()));
        }
        rhs_down->print(EPSLOG);
    }

    // here the stop condition for this traversal
    // 1. header of node do not contain any av which matches our rhs looking for.
    // 2. outer loop.(I think node of outer loop does not appear in the REGIONAL_CFG).
    // 3. met fence of ineligible succ. this condition will be checked in "search_in_node"
    if(!at_fence) {    // not middle of a node.
        attrib=EPS::current_eps_driver()->get_attrib(node);
        if(attrib->get_avs_at_header()) {
            rhs_down->intersect(attrib->get_avs_at_header());
            if(rhs_down->empty()) {  // this is the 1st condition to stop traversing
                if(EPSDBG(1)) {
                    attrib->get_avs_at_header()->print(EPSLOG);
                    fprintf(EPSLOG, "no rhs is found in this path\n");
                }
                return returning_rhs; // which is empty
            }
        }
    }

    // at first, find the matching instruction from this node.
    OP* matching_op = NULL;

//    if(!(boundary==NULL && at_fence)) {
        // this comment is added on 2004.11.15
        // if at_fence==TRUE && boundary == NULL,
        // it means that the fence is located at the end of a basic block
        //
        // if at_fence==TRUE && boundary !=NULL,
        // this is the first step of move_instruction.
        // we search from the boundary.
        matching_op = search_in_node(rhs_down, node, boundary, at_fence, TRUE, &after_store);
//    }
    if(matching_op!=NULL) {
        // we found the matching operation from this node
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "found matching op : %p ", matching_op);
            eps_print_asm(EPSLOG, matching_op, node->BB_Node());
        }

        // if the destination register chosen at selection phase
        // is different to this matching_op's destination register,
        // leave copy.
        EPS_ASSERT(OP_results(matching_op)==_chosen_TNs.size(), "number of result opnds and chosen TNs must be the same\n");
        int i;
        int n_rename_copy=0;
        TN_LIST::iterator it;
        for(i=0,it=_chosen_TNs.begin(); i<OP_results(matching_op) && it!=_chosen_TNs.end(); i++,it++) {
            TN* res_tn = OP_result(matching_op, i);
            if(res_tn!=(*it)) {
                if(TN_is_float(res_tn)) {
                    matching_op = NULL;
                    break;
                }
                EPS_ASSERT( !TN_is_constant(res_tn), "cannot rename constant\n" );
                EPS_ASSERT( !TN_is_float(res_tn), "cannot rename floating point\n" );
                EPS_ASSERT( n_rename_copy==0, "cannot rename\n" );
                EPS_ASSERT( TN_register_class(OP_opnd(matching_op, 0))==ISA_REGISTER_CLASS_predicate,  "The first operand must be pr.\n" );

                n_rename_copy++;
                OP *copy_op = Mk_OP(TOP_mov, res_tn, OP_opnd(matching_op, 0), (*it));
                Set_OP_copy(copy_op);
                copy_op->eps_flags |= OP_EPS_RENAME_COPY;
                //BB_Insert_Op_Before(node->BB_Node(), matching_op, copy_op);
                //2004.11.15
                BB_Insert_Op_After(node->BB_Node(), matching_op, copy_op);

                // Should we insert this new copy op into DDG?
                // No I don't think so...
                // Withtout inserting this new op, we can get the same result
                // Except for DDG length of "this new op".
                // Furthermore, inserting this new op... is very difficut...

                if(EPSDBG(1)) {
                    fprintf(EPSLOG, "renaming copy is generated.\n");
                }
            }
        }

        // Connect DDG_Node of _new_op to other
        // Remove matching_op from DDG.
        DDG* ddg = EPS::current_eps_driver()->get_ddg();
        DDG_Node* newnode = ddg->Find(_new_op);
        DDG_Node* oldnode = ddg->Find(matching_op);
        EPS_ASSERT(newnode!=NULL, "newnode must exist\n");
        if(oldnode!=NULL) {
            newnode->Unify(oldnode);
            ddg->Remove(matching_op);
        }

        // insert the matching_op into the returning rhs_set and
        // delete the matching_op from this node.
        if(matching_op) {
            // make chk op
#if EPS_SPECLOAD
            if(OP_load(_new_op) /*&& (!CGTARG_Is_OP_Speculative_Load(matching_op))*/ && (_new_op->eps_flags&(OP_EPS_SPECLOAD|OP_EPS_ADVLOAD)) && (matching_op->eps_flags&OP_EPS_BOOKKEEPING)==0) {
                OP* chk;
                TN* pr_tn = OP_opnd(_new_op, OP_PREDICATE_OPND);
                TN* reg_tn    = OP_result(_new_op, 0);
                TN *aclr_tn   = Gen_Enum_TN(ECV_aclr_clr);
                TN* target_tn = Gen_Label_TN(Gen_Label_For_BB(node->BB_Node()), 0);

                if((_new_op->eps_flags&OP_EPS_SPECLOAD)!=0 && (_new_op->eps_flags&OP_EPS_ADVLOAD)!=0) {
//                    if(after_store) {
                        if(TN_is_float(reg_tn)) chk = Mk_OP(TOP_chk_f_a, pr_tn, aclr_tn, reg_tn, target_tn);    
                        else chk = Mk_OP(TOP_chk_a, pr_tn, aclr_tn, reg_tn, target_tn);    
                        chk->eps_flags |= OP_EPS_CHK;
                        BB_Insert_Op_After(node->BB_Node(), matching_op, chk);
                        SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
                        spec_lds->new_spec_load(_new_op, matching_op, chk);
//                    } else if (!CGTARG_Is_OP_Speculative_Load(matching_op)) {
//                        if(TN_is_float(reg_tn)) chk = Mk_OP(TOP_chk_f_s, pr_tn, reg_tn, target_tn);    
//                        else chk = Mk_OP(TOP_chk_s_i, pr_tn, reg_tn, target_tn);    
//                        chk->eps_flags |= OP_EPS_CHK;
//                        BB_Insert_Op_After(node->BB_Node(), matching_op, chk);
//                        SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
//                        spec_lds->new_spec_load(_new_op, chk);
//                    }
                } else {
                    if((!CGTARG_Is_OP_Speculative_Load(matching_op)) && (_new_op->eps_flags&OP_EPS_SPECLOAD)!=0) {
                        if(TN_is_float(reg_tn))chk = Mk_OP(TOP_chk_f_s, pr_tn, reg_tn, target_tn);    
                        else chk = Mk_OP(TOP_chk_s_i, pr_tn, reg_tn, target_tn);    

                        chk->eps_flags |= OP_EPS_CHK;
                        BB_Insert_Op_After(node->BB_Node(), matching_op, chk);

                        SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
                        spec_lds->new_spec_load(_new_op, matching_op, chk);
                    } else if((_new_op->eps_flags&OP_EPS_ADVLOAD)!=0/* && after_store*/) {
                        if(TN_is_float(reg_tn))chk = Mk_OP(TOP_chk_f_a, pr_tn, aclr_tn, reg_tn, target_tn);    
                        else chk = Mk_OP(TOP_chk_a, pr_tn, aclr_tn, reg_tn, target_tn);    

                        chk->eps_flags |= OP_EPS_CHK;
                        BB_Insert_Op_After(node->BB_Node(), matching_op, chk);

                        SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
                        spec_lds->new_spec_load(_new_op, matching_op, chk);
                    }
                }
            }

            if(OP_chk(_new_op)) {
                EPS::current_eps_driver()->get_spec_lds()->change(matching_op, _new_op);
            }
#endif

            EPS_ASSERT(!EPS::current_eps_driver()->is_fence(node, matching_op),
                    "cannot be\n");
            returning_rhs->insert(matching_op);
//            BB_Remove_Op(node->BB_Node(), matching_op);

            if(OP_cntl_spec(_new_op)) {
                if(OP_orig_bb_id(_new_op)==0) {
                    Set_OP_orig_bb_id(_new_op, BB_id(node->BB_Node()));
                } else {
                    if(EPSDBG(1)) fprintf(EPSLOG, "***Warning(BSH) : spec motion of spec motioned op!!!\n");
                }
            }
        }
    } else {
        // we could not find the matching operation from this node.
        // we go further to the successor.
        if((at_fence) || (!EPS::current_eps_driver()->fence_in_node(node))) {  // 2007.03.14 we do not go down if this node has fence.
            if(!rhs_down->empty()) {
                BOOL* pred_bk_succ = pred_bk;

                for(REGIONAL_CFG_EDGE* se = node->First_Succ(); se; se=se->Next_Succ()) {
                    REGIONAL_CFG_NODE* succ = se->Dest();

#if EPS_SPECLOAD
                    if(EPS::recovery(succ)) continue;
#endif

                    // 2007.03.21
                    if(pred_bk!=NULL && (_new_op->eps_flags & OP_EPS_PRED)!=0 && !node->Is_Region()) {
                        BB* bb = node->BB_Node();
                        OP* last_op = BB_last_op(bb);
                        BB* succ_bb = NULL;
                        REGIONAL_CFG_NODE* succ_node = succ;
                        if(last_op!=NULL && OP_code(last_op)==TOP_br_cond) {
                            TN* pred = OP_opnd(last_op, OP_PREDICATE_OPND);
                            if(pred==OP_opnd(_new_op, OP_PREDICATE_OPND) || EPS::FindComplement(pred)==OP_opnd(_new_op, OP_PREDICATE_OPND)) {
                                while(succ_node->Is_Region()) {
                                    succ_node = succ_node->Region_Node()->Entries().front();
                                }
                                EPS_ASSERT(succ_node!=NULL && !succ_node->Is_Region(), "cannot happen\n");
                                succ_bb = succ_node->BB_Node();

                                pred_bk_succ = NULL;

                                /*
                                if(succ_bb!=BB_Other_Successor(bb, BB_Fall_Thru_Successor(bb))) {
                                    if(EPSDBG(1)) fprintf(EPSLOG, "do not go to BB:%d\n", BB_id(succ_bb));
                                    continue;
                                }
                                */
                            }
                        }
                    }
                    RHS_set rhs_copy(*rhs_down);
                    RHS_set* returned_rhs = move_instruction(&rhs_copy, node, succ, NULL, FALSE, after_store, pred_bk_succ);
                    returning_rhs->merge(returned_rhs);
                }
            } else {
                EPS_ASSERT(returning_rhs->empty(), "non-empty cur_rhs after ineligible succ\n");
            }
        }
    }

    if(returning_rhs->empty()) {
        // no matching operation, below this node.
        return returning_rhs;
    }

    // UPWARD TRIP:
    // just like "compute_av_set" phase, forward_substitution.
    if(!node->Is_Region()) {
        BB* bb = node->BB_Node();
        if(boundary!=NULL || at_fence==FALSE) {
            OP* op = (matching_op) ? matching_op : BB_last_op(bb);
#if EPS_SPECLOAD
            SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
#endif

            if(EPSDBG(1)) fprintf(EPSLOG, "upward trip of BB : %d\n", BB_id(bb));

#if EPS_SPECLOAD
            if(matching_op!=NULL) spec_lds->update(matching_op, _new_op);
#endif

            for( ; op; op=OP_prev(op)) {
#if EPS_SPECLOAD
                if(OP_chk(op) && !OP_chk(_new_op)) {
                    spec_lds->move_instruction(_new_op, op);
                }
#endif

                // 2007.03.16
                if(OP_br(op) && (_new_op->eps_flags & OP_EPS_PRED)!=0) {
                    if(OP_opnd(op, OP_PREDICATE_OPND)==OP_opnd(_new_op, OP_PREDICATE_OPND) || EPS::FindComplement(OP_opnd(op, OP_PREDICATE_OPND))==OP_opnd(_new_op, OP_PREDICATE_OPND)) {
                        if(EPSDBG(1)) {
                            fprintf(EPSLOG, "predicated bookkeeping\n");
                        }
                        if(pred_bk!=NULL) *pred_bk = TRUE;
                    }
                }

                // here check and do forward_substitution for returning_rhs.
                returning_rhs->forward_substitution(op);
                if(op==boundary) break;
            }
        }
    }

    if(matching_op) {
        BB_Remove_Op(node->BB_Node(), matching_op);

        // 2007/08/02
        // jaemok check if the removed operation is in the load_chk_pairs.
        if(OP_load(matching_op)) {
            std::vector< std::pair<OP*,OP*> >::iterator  iter;
            for(iter = load_chk_pairs.begin(); iter != load_chk_pairs.end(); ++iter){
                OP* first = iter->first;
                if(matching_op==first) {
                    fprintf(stderr, "found %p load operation in load_chk_pairs update it to %p\n", matching_op, _new_op);
                    iter->first = _new_op;
                }
            }
        }
    }

    // BOOKKEEPING & UPDATE DATAFLOW
    if(!at_fence) {
        if(node->Is_Region()) {
            EPS_ASSERT(node->Region_Node()->Entries().size()==1, "we do not move across region with more than 1 entry\n");
        } else {
            BB* bb = node->BB_Node();
            if(node->Pred_Num()==1 && node->First_Pred()->Src()->Is_Region()) {
                // this node is region exit node.
            } else if(BBlist_Len(BB_preds(bb))>1) {
                if(EPSDBG(1)) {
                    fprintf(EPSLOG, "Just check. above this BB : %d, bookkeeping!!\n", BB_id(bb));
                    //rhs_down->print(EPSLOG);
                    returning_rhs->print(EPSLOG);
                }
                // this node, bb is join point. make bookkeeping.
                make_bookkeeping(returning_rhs, pred, node, (pred_bk!=NULL)?(*pred_bk):FALSE);
                pred = NULL;    // we've already done updating live info.
            }
        }
    }

    // update live info
    if(pred != NULL) {
        update_live_info(node, pred);
    }

    // update av_set at this node.
    attrib = EPS::current_eps_driver()->get_attrib(node);
    if(attrib->get_avs_at_header()) {
//        CXX_DELETE(attrib->get_avs_at_header(), EPS::current_eps_mempool());
//        attrib->set_avs_at_header(NULL);
        // 2006.11.15
        attrib->get_avs_at_header()->remove(returning_rhs);

//        compute_av_set(_fence_node->Home_Region(), node, NULL, NULL, FALSE, 0);
    }

    return returning_rhs;
}

#if 0
// rhsset is returning rhs set...(it must be single set, otherwise we cannot handle)
// pred is predecessor on the moving path.
// node is the successor of pred where rhs came from.
// we make bookkeeping to the predecessors of "node" except for "pred".
void Fence::make_bookkeeping(RHS_set* rhsset, REGIONAL_CFG_NODE* pred_node, REGIONAL_CFG_NODE* node)
{
    BB* bbnode = node->BB_Node();
    BB* bbpred = pred_node->BB_Node();
    bblist* preds;

    RHS* rhs = rhsset->single_rhs();
    FOR_ALL_BB_PREDS(bbnode, preds) {
        BB* pred = BBLIST_item(preds);
        if(bbpred==pred) continue;

        if(EPSDBG(1)) fprintf(EPSLOG, "%d,", BB_id(pred));

        // make bookkeeping code in the basic block "pred"
        //OP* op = Dup_OP(rhs->op());
        OP* op = Dup_OP(_new_op);
        OP* last_op = BB_last_op (pred) ;
        if (last_op && TOP_is_xfer (OP_code(last_op))) {
            BB_Insert_Op_Before (pred, last_op, op) ;
        } else {
                /* empty bb or the last op is not branch, append <op>
                 * at the end of <bb>
                 */
            BB_Append_Op (pred, op) ;
        }
        update_live_info(node, pred);
    }
    if(EPSDBG(1)) fprintf(EPSLOG, "\n");
}

#else

#if 0
BB* make_bookkeeping_block(REGIONAL_CFG_NODE* except_pred_node, REGIONAL_CFG_NODE* node)
{
    BB* bbnode = node->BB_Node();
    BB* bbpred = except_pred_node->BB_Node();

    BB* newbb = Gen_BB();


    if(EPSDBG(1)) fprintf(EPSLOG, "%d is being generated as a new predecessor of %d replacing all predecessors except for %d\n", newbb->id, bbnode->id, bbpred->id);

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

    list<BB*> preds_list;
    bblist* preds;
    FOR_ALL_BB_PREDS(bbnode, preds) {
        preds_list.push_back(BBLIST_item(preds));
    }

    for(list<BB*>::iterator it=preds_list.begin(); it!=preds_list.end(); it++) {
        BB* pred = *it;
        if(pred==bbpred) continue;

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
            EPS_ASSERT(preds->Src()!=except_pred_node, "cannot be.\n");
            Del_Regional_Cfg_Edge(preds->Src(), temp_node, temp_node->Home_Region());
            Add_Regional_Cfg_Edge(preds->Src(), newnode, temp_node->Home_Region());
        }
        Add_Regional_Cfg_Edge(newnode, temp_node, temp_node->Home_Region());

        // fill newnode with attributes
        EPS::current_eps_driver()->add_attrib(newnode);
        BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
        GRA_LIVE_Compute_Liveness_For_BB(newbb);
    } else {
        BB_rid(newbb) = BB_rid(bbnode);

        RGN_Gen_And_Insert_Node(newbb, NULL, NULL, node->Home_Region()->Regional_Cfg());
        newnode = Regional_Cfg_Node(newbb);
        for(REGIONAL_CFG_EDGE* preds = node->First_Pred(); preds; preds = preds->Next_Pred()) {
            if(preds->Src()==except_pred_node) continue;

            Del_Regional_Cfg_Edge(preds->Src(), node, node->Home_Region());
            Add_Regional_Cfg_Edge(preds->Src(), newnode, node->Home_Region());

            if(EPSDBG(1)) {
                BOOL ret;

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
        Add_Regional_Cfg_Edge(newnode, node, node->Home_Region());
        if(EPSDBG(1)) {
            BOOL ret;

            ret = BB_in_succs(newnode->BB_Node(), node->BB_Node());
            EPS_ASSERT(ret, "");
            ret = BB_in_preds(node->BB_Node(), newnode->BB_Node());
            EPS_ASSERT(ret, "");
        }

        // fill newnode with attributes
        EPS::current_eps_driver()->add_attrib(newnode);
        BB_bbregs(newbb) = TYPE_MEM_POOL_ALLOC(BBREGS,&MEM_pu_pool);
        GRA_LIVE_Compute_Liveness_For_BB(newbb);
    }

    return newbb;
}
#endif

void Fence::make_bookkeeping(RHS_set* rhsset, REGIONAL_CFG_NODE* pred_node, REGIONAL_CFG_NODE* node, BOOL pred_bk)
{
    BB* newbb = NULL;
   
    if(BB_preds_len(node->BB_Node())<=2) {
        bblist* preds;
        FOR_ALL_BB_PREDS(node->BB_Node(), preds) {
            if(BBLIST_item(preds)==pred_node->BB_Node()) continue;
            newbb = BBLIST_item(preds);
        }
    } else {
        EPS_ASSERT(0, "every bb's # of preds must be less than or equal to 2");
        // newbb = make_bookkeeping_block(pred_node, node);
    }

    // 2004.11.25
//    if(_bk_bb_set.find(BB_id(newbb))!=_bk_bb_set.end()) return;
//    _bk_bb_set.insert(BB_id(newbb));

    REGIONAL_CFG_NODE* bk_node = Regional_Cfg_Node(newbb);
    EPS_ASSERT(node->Home_Region()==bk_node->Home_Region() ||
            node->Home_Region()->Is_Kid_Region_Of(bk_node->Home_Region()),
            "bookkeeping block should be in the same region or parent region\n");

    // OP* op = Dup_OP(_new_op);
    OP* op = Dup_OP(rhsset->single_rhs()->op());

    if(pred_bk) {
        /*if(OP_load(op))*/ Set_OP_opnd(op, OP_PREDICATE_OPND, OP_opnd(_new_op, OP_PREDICATE_OPND));
        if(OP_load(op)) op->eps_flags |= OP_EPS_PRED_LOAD;
        op->eps_flags |= OP_EPS_PRED;
    }

    // 2004.11.27
    // try set prologue load shall not be promoted.
    if(node->Home_Region()!=bk_node->Home_Region()) {
        if(OP_load(op)) Set_OP_Scheduled(op);
    }

    if(OP_load(_new_op)) {
        if((_new_op->eps_flags&OP_EPS_SPECLOAD)!=0 && (_new_op->eps_flags&OP_EPS_ADVLOAD)!=0) {
            if(OP_Is_Float_Mem(op)) Change_ld_Form(op, ECV_fldtype_sa);
            else Change_ld_Form(op, ECV_ldtype_sa);
            op->eps_flags |= OP_EPS_SPECLOAD;
            op->eps_flags |= OP_EPS_ADVLOAD;
        } else if((_new_op->eps_flags&OP_EPS_ADVLOAD)!=0) {
            if(OP_Is_Float_Mem(op)) Change_ld_Form(op, ECV_fldtype_a);
            else Change_ld_Form(op, ECV_ldtype_a);
            op->eps_flags |= OP_EPS_ADVLOAD;
        } else if((_new_op->eps_flags&OP_EPS_SPECLOAD)!=0) {
            if(OP_Is_Float_Mem(op)) Change_ld_Form(op, ECV_fldtype_s);
            else Change_ld_Form(op, ECV_ldtype_s);
            op->eps_flags |= OP_EPS_SPECLOAD;
        }
    }

    int i;
    TN_LIST::iterator it;
    EPS_ASSERT(OP_results(op)==_chosen_TNs.size(), "number of result opnds and chosen TNs must be the same\n");
    for(i=0,it=_chosen_TNs.begin(); i<OP_results(op) && it!=_chosen_TNs.end(); i++,it++) {
        // EPS_ASSERT(OP_result(newOP,i)==*it, "renaming is not implemented yet.\n");
        if(OP_result(op,i)!=*it) {
            TN* res_tn = OP_result(op, i);
            Set_OP_result(op, i, *it);
        }
    }

    if(node->Home_Region()==bk_node->Home_Region()) op->iteration_number = 0;
    op->eps_flags |= OP_EPS_BOOKKEEPING;

    // 2007.02.26
    op->iteration_number = 0;

    // well, I still have to update this new ddg node... but... I don't know...
    DDG* ddg = EPS::current_eps_driver()->get_ddg();
    DDG_Node* ddg_node = ddg->Find(_new_op);
    ddg->Insert(op);
    ddg->Find(op)->Unify_Succ(ddg->Find(_new_op));
    ddg->Find(op)->Unify_Pred(ddg->Find(_new_op));

#if EPS_SPECLOAD
    // bookkeeping can be new recovery_candidate.
    // 2005.02.18
    EPS::current_eps_driver()->get_spec_lds()->add_recovery_cand(_new_op, op);
#endif

    OP* last_op = BB_last_op (newbb);
    if (last_op && TOP_is_xfer (OP_code(last_op))) {
        BB_Insert_Op_Before (newbb, last_op, op) ;
    } else {
            /* empty bb or the last op is not branch, append <op>
             * at the end of <bb>
             */
        BB_Append_Op (newbb, op) ;
    }

#if SCHEDULE_FENCE_LIST
    // 2007.03.05
    Node_attribute* bk_node_attrib = EPS::current_eps_driver()->get_attrib(bk_node);
    if(node->Home_Region()==bk_node->Home_Region()) {
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "Leave Compensation code at BB:%d is %s and %s\n", BB_id(bk_node->BB_Node()), bk_node_attrib->is_scheduled()?"scheduled":"not scheduled", bk_node_attrib->is_ready()?"ready":"not ready");
        }

        if(bk_node_attrib->is_scheduled()) {
            bk_node_attrib->set_scheduled(FALSE);

            Fence* fence = EPS::current_eps_driver()->fence_in_node(bk_node);
            if(fence!=NULL) {
                // The fence is not removed yet.
                fence->_fence_op = op;
                fence->_fence_boundary = op;
                if(!fence->_sim_state.Issue_OP(op, FALSE)) {
                    fence->_sim_state.Advance_Cycle();
                }
            }
        } else {
            // this bk node is not scheduled.
            Fence* fence = EPS::current_eps_driver()->fence_in_node(bk_node);
            if(fence!=NULL && fence->_fence_op==NULL && fence->_fence_boundary==NULL) {
                fence->_fence_op = op;
                fence->_fence_boundary = op;
                if(!fence->_sim_state.Issue_OP(op, FALSE)) {
                    fence->_sim_state.Advance_Cycle();
                }
            } else if(fence!=NULL && BB_length(bk_node->BB_Node())==2 && OP_br(fence->_fence_op)) {
                // this was an empty block with 1 br operation.
                // its length became 2 by this compensation code is appended.
                fence->_fence_op = op;
                fence->_fence_boundary = op;
                if(!fence->_sim_state.Issue_OP(op, FALSE)) {
                    fence->_sim_state.Advance_Cycle();
                }
            }
        }
    }


/*
    if(node->Home_Region()==bk_node->Home_Region()) {
        // 2007.02.13
        Fence* fence = EPS::current_eps_driver()->fence_in_node(bk_node);
        if(fence!=NULL) {
            // the compensated node contains fence.
            // we might have to update this fence, because some instructions are added to the node.
            if(fence->fence_op()==NULL || fence->fence_boundary()==NULL) {
                EPS_ASSERT(!bk_node->Is_Region(), "bk node should be bb\n");
                if(EPSDBG(1)) fprintf(EPSLOG, "FENCE:updating fence at BB:%d\n", BB_id(bk_node->BB_Node()));
                fence->_fence_op = op;
                fence->_fence_boundary = op;
            }
        }
    }
*/
#endif

    update_live_info(node, newbb);
    update_live_info(newbb, pred_node->BB_Node());
}

#endif

void Fence::fill_group(void)
{
    AV_list* avs;

    struct timeval old_tv;
    struct timeval new_tv;

    EPS::inc_level();

#if 1
    if(EPS::is_not_schedulable(_fence_op)) {
//        force_schedule();
//        _fence_boundary = OP_next(_fence_op);
//        _sim_state.Issue_OP(_fence_op, TRUE);
#if EPS_SPECLOAD
/*
        if(OP_chk(_fence_op)) {
            SpecLDs* spec_lds = EPS::current_eps_driver()->get_spec_lds();
            spec_lds->generate_recovery_block(_fence_op);
            spec_lds->update_cfg(_fence_op);
        }
*/
#endif
//        return;
    }
#endif

    // 2006/11/17
//    reg_tn_set live;
//    avs = compute_av_set(_fence_node->Home_Region(), _fence_node, _fence_boundary, &live, TRUE, 0);
    while(1) {
        ///////////////////////////////////////////////////////////////////////////
        // the 1st phase: Compute Available set.

        if(EPS::is_not_schedulable(_fence_boundary)) {
            _sim_state.Issue_OP(_fence_boundary, TRUE);
            _fence_boundary = OP_next(_fence_boundary);
            if(_fence_boundary==NULL) {	// 2008.11.21 jaemok
                break;
            }
            continue;
        }

        if(EPSDBG(1)) {
            fprintf(EPSLOG, "Compute AV set (1st phase) at :\n");
            for(OP* op=_fence_op; op!=NULL ; op=OP_next(op)) {
                eps_print_asm(EPSLOG, op, NULL);
                if(op==_fence_boundary) break;
            }
            fprintf(EPSLOG, "===============================\n");
        }
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "AV set at fence : ");
            eps_print_asm(EPSLOG, _fence_op, NULL);
        }

//        gettimeofday(&old_tv, NULL);

        // 2006/11/17
        reg_tn_set live;
        avs = compute_av_set(_fence_node->Home_Region(), _fence_node, _fence_boundary, &live, TRUE, 0);

//        gettimeofday(&new_tv, NULL);
//        compute_time += ((new_tv.tv_sec - old_tv.tv_sec)*1000 + (new_tv.tv_usec - old_tv.tv_usec));

        // 2005/06/21
        reg_tn_set::iterator it;
        int_pressure = 0;
        float_pressure = 0;
        for(it=live.begin(); it!=live.end(); it++) {
            TN* tn = *it;
            if(!TN_is_float(tn)) {
                int_pressure++;
            } else {
                float_pressure++;
            }
        }


        if(EPSDBG(1)) {
            fprintf(EPSLOG, "===================\n");
            avs->print(EPSLOG);
        }

//        gettimeofday(&old_tv, NULL);

        // 2009.04
        // apply resolved control dependent predicates mapping
        // to the av list.
        // if there is p1->p2 consequence (p2 depeends on p1), and av has p1 and p2 in its production, remove p1.
        avs->apply_resolved_control_dependent_predicate_map();



        ///////////////////////////////////////////////////////////////////////////
        // the 2nd phase: Filter Available set.
        // Filter AVs which cannot be scheduled immediately using micro scheduler
#if BR_LOW_PRIOR
        if(fence_boundary() && OP_br(fence_boundary())) {
            if(_sim_state.Issue_OP(fence_boundary(), FALSE)) {
                avs->filter_by_issue_cycle_at_bb_bottom(&_sim_state, fence_boundary());
            } else {
                // the boundary op, "BR" cannot be scheduled.
                // so we do not try issue with the branch
                // 2009.03.12 jaemok
                avs->filter_by_issue_cycle(&_sim_state);
            }
        } else {
            avs->filter_by_issue_cycle(&_sim_state);
        }
#else
        avs->filter_by_issue_cycle(&_sim_state);
#endif
        // 2005.06.22 calculate register pressure
        avs->calculate_reg_pressure();

        // Filter AVs by heuristics.
        avs->filter_by_heuristics(int_pressure, float_pressure);

        // Filter globals ( for temporal use )
        avs->filter_global();

        if(eps_option::only_hot_load()) {
            avs->filter_by_hot_load();  // sylee
        }

        if(avs->empty()) break;

        ///////////////////////////////////////////////////////////////////////////
        // the 3rd phase: Select the Best Available RHS.
        AV* best_av = select_best_av(avs);


//        gettimeofday(&new_tv, NULL);
//        select_time += ((new_tv.tv_sec - old_tv.tv_sec)*1000 + (new_tv.tv_usec - old_tv.tv_usec));


        ///////////////////////////////////////////////////////////////////////////
        // the 4th phase: Move the best av.
        if(best_av) {
//            gettimeofday(&old_tv, NULL);

            OP* op = move_instruction(best_av);
            BOOL issue_state = _sim_state.Issue_OP(op, TRUE);

//            gettimeofday(&new_tv, NULL);
//            move_time += ((new_tv.tv_sec - old_tv.tv_sec)*1000 + (new_tv.tv_usec - old_tv.tv_usec));

            avs->remove(op);

            EPS_ASSERT(issue_state, "should be true\n");
        } else {
            break;
        }
    }
    //_sim_state.Advance_Cycle();
}

BOOL Fence::advance_fence_in_node(void)
{
    if(_fence_boundary==NULL) {
        // 2009.03.13
        _sim_state.Advance_Cycle();
        return TRUE;
    }

    if(_fence_op==_fence_boundary) {
        _fence_op = OP_next(_fence_boundary);
    } else {
        _fence_op = _fence_boundary;
    }
    _fence_boundary = _fence_op;

    // 2004.04.20
    _sim_state.Advance_Cycle();

    if(_fence_op==NULL) return TRUE;

    return FALSE;
}

void Fence::force_schedule(void)
{
}

#if 0
void Fence::mark_TNs(RHS* best_rhs, BS** visited, BB* bb, OP* boundary,
        TN_SET* preferred_TNs[], TN_SET **ineligible_TNs,
        MEM_POOL* pool)
{
    OP *best_op = best_rhs->op();
    REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bb);
    Node_attribute* attrib = EPS::current_eps_driver()->get_attrib(node);
    OP *rit;
    TN *x;

    // already visited
    if(node!=_fence_node && BS_MemberP(*visited, BB_id(bb)))
        return;

    *visited = BS_Union1D(*visited, BB_id(bb), pool);

    BOOL is_in = FALSE;
    if(node==_fence_node) {
        is_in = TRUE;
    } else if(attrib && attrib->get_avs_at_header()) {
        is_in = (attrib->get_avs_at_header())->has_same_rhs(best_op);
    }

    // no avs or outer region
    if( !is_in || _fence_node->Home_Region()->Is_Contained_By(node->Home_Region())) {
        FOR_ALL_GTN_SET_members(BB_live_in(bb), x) {
            *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, x, pool);
        }
        return;
    }

    // inner region
    if(node->Home_Region()->Is_Contained_By(_fence_node->Home_Region())) {
        Region_attribute* attr = EPS::current_eps_driver()->get_region_attrib(node->Region_Node());
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, attr->get_def_set(), pool);
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, attr->get_use_set(), pool);
        return;
    }
    
    // DOWNWARD TRIP
    RHS_set *rhs_set = CXX_NEW(RHS_set(), EPS::current_eps_mempool());
    rhs_set->insert(best_op);
    OP *op = search_in_node(rhs_set, node, boundary, FALSE);
    CXX_DELETE(rhs_set, EPS::current_eps_mempool());
    
    if(op) {
        TN_SET *live_out = TN_SET_Create_Empty(64, pool);
        FOR_ALL_GTN_SET_members(BB_live_out(bb), x) {
            live_out = TN_SET_Union1D(live_out, x, pool);
        }
        
        for(int i=0; i<OP_results(op); i++) {
            x = OP_result(op,i);
            live_out = TN_SET_Difference1D(live_out, x);
            preferred_TNs[i] = TN_SET_Union1D(preferred_TNs[i], x, pool);
        }
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, live_out, pool);

        if(op == boundary) {
            return;
        } else {
            rit = OP_prev(op);
        }
        live_out = TN_SET_ClearD(live_out);
    } else {
        bblist* succs;
        FOR_ALL_BB_SUCCS(bb, succs) {
            mark_TNs(best_rhs, visited, BBLIST_item(succs), NULL,
                    preferred_TNs, ineligible_TNs, pool);
        }
        if(node==_fence_node && boundary==NULL)
            rit = NULL;
        else
            rit = BB_last_op(node->BB_Node());
    }

    // UPWARD TRIP
    while(rit) {
        for(int i=0; i<OP_results(rit); i++) {
            x = OP_result(rit,i);
            *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, x, pool);
        }

        for (int i=0; i<OP_opnds(rit); i++) {
            TN *opnd = OP_opnd(rit,i);
            if(TN_is_register(opnd))
                *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, opnd, pool);
        }

        if( rit == boundary )
            break;
        rit = OP_prev(rit);
    }

    return;
}
#else
void EPS::add_exit_targets(REGION* rgn, std::list<BB*>* list)
{
    NODE_VECTOR exit_nodes = rgn->Exits();
    NODE_VECTOR::iterator it;
    for(it=exit_nodes.begin(); it!=exit_nodes.end(); it++) {
        REGIONAL_CFG_NODE* exit_node = *it;

        if(exit_node->Is_Region()) {
            add_exit_targets(exit_node->Region_Node(), list);
            continue;
        }

        bblist* succs;
        FOR_ALL_BB_SUCCS(exit_node->BB_Node(), succs) {
            list->push_back(BBLIST_item(succs));
        }
    }
}

//void Fence::mark_TNs(RHS_set* best_rhs, BS** visited, BB* bb, OP* boundary, BOOL at_fence,
//        TN_SET* preferred_TNs[], TN_SET **ineligible_TNs, BOOL* pred_bk, TN* pred,
//        MEM_POOL* pool)
void Fence::mark_TNs(RHS_set* best_rhs, std::map<int, int>& visited, BB* bb, OP* boundary, BOOL at_fence,
        TN_SET* preferred_TNs[], TN_SET **ineligible_TNs, BOOL* pred_bk, TN* pred,
        MEM_POOL* pool)
{
    //OP *best_op = best_rhs->op();
    REGIONAL_CFG_NODE* node = Regional_Cfg_Node(bb);
    Node_attribute* attrib = EPS::current_eps_driver()->get_attrib(node);
    OP *rit = NULL;
    TN *x;

    // check outer region first...
    if(node->Home_Region()->Find_Common_Parent(_fence_node->Home_Region())!=_fence_node->Home_Region()) {
        // node is in outer region
        FOR_ALL_GTN_SET_members(BB_live_in(bb), x) {
            *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, x, pool);
        }
        return;
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "mark_TNs visiting BB %d\n", BB_id(bb));
    }

    // already visited
    //if(node!=_fence_node && BS_MemberP(*visited, BB_id(bb))) return;
    if(node!=_fence_node) {
        if(visited.find(BB_id(bb))!=visited.end()) return;
        visited[BB_id(bb)] = 1;
    } else {
        if(visited.find(BB_id(bb))!=visited.end()) {
            if(visited[BB_id(bb)]==1) {
                visited[BB_id(bb)] = 2;
            } else {
                return;
            }
        } else {
            visited[BB_id(bb)] = 1;
        }
    }

    //*visited = BS_Union1D(*visited, BB_id(bb), pool);

    std::list<BB*> succ_list;
    if(node->Home_Region()->Is_Contained_By(_fence_node->Home_Region())) {
        // inner region
        REGION* rgn = node->Home_Region();
        while(!rgn->Is_Kid_Region_Of(_fence_node->Home_Region())) {
            rgn = rgn->Regional_Cfg_Node()->Home_Region();
        }
        node = rgn->Regional_Cfg_Node();

        EPS_ASSERT(node->Home_Region()==_fence_node->Home_Region(), "should be...\n");

        Region_attribute* attr = EPS::current_eps_driver()->get_region_attrib(node->Region_Node());
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, attr->get_def_set(), pool);
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, attr->get_use_set(), pool);

        best_rhs->kill(node->Region_Node());

        NODE_VECTOR exit_nodes = node->Region_Node()->Exits();
        NODE_VECTOR::iterator it;
        for(it=exit_nodes.begin(); it!=exit_nodes.end(); it++) {
            REGIONAL_CFG_NODE* exit_node = *it;
            if(exit_node->Is_Region()) {
                EPS::add_exit_targets(exit_node->Region_Node(), &succ_list);
                continue;
            }

            bblist* succs;
            FOR_ALL_BB_SUCCS(exit_node->BB_Node(), succs) {
                succ_list.push_back(BBLIST_item(succs));
            }
        }
    } else {
        // in the same region
        bblist* succs;
        FOR_ALL_BB_SUCCS(bb, succs) {
            succ_list.push_back(BBLIST_item(succs));
        }

        BOOL is_in = FALSE;
        if(node==_fence_node) {
            is_in = TRUE;
        } else if(attrib && attrib->get_avs_at_header()) {
            is_in = (attrib->get_avs_at_header())->has_same_rhs(best_rhs);
        }

        // no avs
        if(!is_in) {
            FOR_ALL_GTN_SET_members(BB_live_in(bb), x) {
                *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, x, pool);
            }
            return;
        }
    }
    
    // DOWNWARD TRIP
    //RHS_set rhs_set;
    //rhs_set.insert(best_op);
    OP *op = search_in_node(best_rhs, node, boundary, at_fence, FALSE, NULL);

    if(op) {
        TN_SET *live_out = TN_SET_Create_Empty(64, pool);
        FOR_ALL_GTN_SET_members(BB_live_out(bb), x) {
            live_out = TN_SET_Union1D(live_out, x, pool);
        }
        
        for(int i=0; i<OP_results(op); i++) {
            x = OP_result(op,i);
            live_out = TN_SET_Difference1D(live_out, x);
            preferred_TNs[i] = TN_SET_Union1D(preferred_TNs[i], x, pool);
        }
        *ineligible_TNs = TN_SET_UnionD(*ineligible_TNs, live_out, pool);

        if(op == boundary) {
            return;
        } else {
            rit = OP_prev(op);
        }
        live_out = TN_SET_ClearD(live_out);
    } else {
        for(std::list<BB*>::iterator it=succ_list.begin(); it!=succ_list.end(); it++) {
            BB* succ_bb = *it;
            BOOL* pred_bk_succ = pred_bk;

            if(pred_bk!=NULL && pred!=NULL) {
                OP* last_op = BB_last_op(bb);
                if(last_op!=NULL && OP_code(last_op)==TOP_br_cond) {
                    TN* br_pred = OP_opnd(last_op, OP_PREDICATE_OPND);
                    if(br_pred==pred) {
                        pred_bk_succ = NULL;
                        if(succ_bb==BB_Fall_Thru_Successor(bb)) {
                            continue;
                        }
                    } else if(br_pred == EPS::FindComplement(pred)) {
                        pred_bk_succ = NULL;
                        if(succ_bb==BB_Other_Successor(bb, BB_Fall_Thru_Successor(bb))) {
                            continue;
                        }
                    }
                }
            }

            mark_TNs(best_rhs, visited, succ_bb, NULL, FALSE,
                    preferred_TNs, ineligible_TNs, pred_bk_succ, pred, pool);
        }
        if(node==_fence_node && boundary==NULL) {
            rit = NULL;
        } else if(!node->Is_Region()) {
            rit = BB_last_op(node->BB_Node());
        }
    }

    // UPWARD TRIP
    while(rit) {
        for(int i=0; i<OP_results(rit); i++) {
            x = OP_result(rit,i);
            *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, x, pool);
        }

        for (int i=0; i<OP_opnds(rit); i++) {
            TN *opnd = OP_opnd(rit,i);
            if(TN_is_register(opnd))
                *ineligible_TNs = TN_SET_Union1D(*ineligible_TNs, opnd, pool);
        }

        if( rit == boundary )
            break;
        rit = OP_prev(rit);
    }

    return;
}
#endif

#define MAX_RESULT  3
BOOL Fence::select_definition_TN(AV* av,
        REGIONAL_CFG_NODE* node, OP* boundary)
{
    int results = OP_results(av->op());
    EPS_ASSERT(results<=MAX_RESULT, "Too many result registers!!");

    CXX_MEM_POOL pool("select_definition_TN_pool", FALSE);

    TN_SET *ineligible_TNs = TN_SET_Create_Empty(64, pool());
    TN_SET *preferred_TNs[MAX_RESULT];
    for(int i=0; i<results; i++) {
        preferred_TNs[i] = TN_SET_Create_Empty(4, pool());
    }
    //BS *visited = BS_Create_Empty(32, pool());
    std::map<int,int> visited;

    EPS_ASSERT(node->Is_Region()==FALSE, "scheduling region av!!!!");

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "start marking\n");
    }

    
    RHS_set rhs_set;
    rhs_set.insert(av->op());

    TN* pred = av->attrib()->pred();
    BOOL pred_bk = FALSE;
    mark_TNs(&rhs_set, visited, node->BB_Node(), boundary, TRUE,
            preferred_TNs, &ineligible_TNs, &pred_bk, pred, pool());

    if(EPSDBG(1)) {
        for(int i=0; i<results; i++) {
            fprintf(EPSLOG, "preferred TNs for %dth result: ", i);
            BS_Print(preferred_TNs[i], EPSLOG);
            fprintf(EPSLOG, "\n");
        }
        fprintf(EPSLOG, "ineligible TNs: ");
        BS_Print(ineligible_TNs, EPSLOG);
        fprintf(EPSLOG, "\n");
    }

    _chosen_TNs.clear();
    for(int i=0; i<results; i++) {
        preferred_TNs[i] = TN_SET_DifferenceD(preferred_TNs[i], ineligible_TNs);
        // Here, I consider renaming fp registers.
        OP *cur_op = av->op();
        TN *cur_tn = OP_result(cur_op, i);
        if(TN_is_dedicated(cur_tn) || TN_is_float(cur_tn) ||
            ISA_OPERAND_INFO_Result(ISA_OPERAND_Info(OP_code(cur_op)), i)->rclass==ISA_REGISTER_CLASS_predicate) {
            if(TN_SET_Size(preferred_TNs[i])!=1) { // 0 : must rename all, 2- : some must rename
                _chosen_TNs.clear();
                return FALSE;
            }
        }
        if(!TN_SET_EmptyP(preferred_TNs[i])) {
            _chosen_TNs.push_back(TN_SET_Choose(preferred_TNs[i]));
        } else {
            TN *new_tn = Dup_TN(OP_result(av->op(), i));
            _chosen_TNs.push_back(new_tn);
        }
    }
    return TRUE;
}

void Fence::update_live_info(REGIONAL_CFG_NODE* src, REGIONAL_CFG_NODE* dest)
{
    if(!OP_results(_new_op)) {
        return;
    }

    for(int i=OP_results(_new_op)-1; i>=0; --i) {
        TN *result_tn = OP_result(_new_op, i);
        GTN_UNIVERSE_Add_TN (result_tn);
        if(!dest->Is_Region()) {
            GRA_LIVE_Add_Live_Out_GTN(dest->BB_Node(), result_tn);
        }
        if(!src->Is_Region()) {
            GRA_LIVE_Add_Live_In_GTN(src->BB_Node(), result_tn);
        }
    }
}

void Fence::update_live_info(REGIONAL_CFG_NODE* src, BB* dest)
{
    if(!OP_results(_new_op)) {
        return;
    }

    for(int i=OP_results(_new_op)-1; i>=0; --i) {
        TN *result_tn = OP_result(_new_op, i);
        GTN_UNIVERSE_Add_TN (result_tn);
        // following assert doesn't work.. while moving, avs is recomputed. and live out is added also.
        //EPS_ASSERT(!GTN_SET_MemberP(BB_live_out(dest), result_tn), "bookkeeping_live_out_assert!!\n");
        GRA_LIVE_Add_Live_Out_GTN(dest, result_tn);
        if(!src->Is_Region()) {
            GRA_LIVE_Add_Live_In_GTN(src->BB_Node(), result_tn);
        }
    }
}

void Fence::update_live_info(BB* src, BB* dest)
{
    if(!OP_results(_new_op)) {
        return;
    }

    for(int i=OP_results(_new_op)-1; i>=0; --i) {
        TN *result_tn = OP_result(_new_op, i);
        GTN_UNIVERSE_Add_TN (result_tn);
        // following assert doesn't work.. while moving, avs is recomputed. and live out is added also.
        //EPS_ASSERT(!GTN_SET_MemberP(BB_live_out(dest), result_tn), "bookkeeping_live_out_assert!!\n");
        GRA_LIVE_Add_Live_Out_GTN(dest, result_tn);
        GRA_LIVE_Add_Live_In_GTN(src, result_tn);
    }
}

void Fence::print(FILE* fp)
{
    if(_fence_node->Is_Region()) {
        fprintf(fp, "Fence at REGION: %d\n", _fence_node->Region_Node()->Id());
    } else {
        fprintf(fp, "Fence at BB: %d\n", _fence_node->BB_Node()->id);
    }
    if(_fence_op) {
        EPS_ASSERT(!_fence_node->Is_Region(), "cannot be region.\n");
        eps_print_asm(fp, _fence_op, _fence_node->BB_Node());
    } else {
        fprintf(fp, "NULL\n");
    }
}

void Fence_list::destruct(void)
{
    for(FENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
    }
}

Fence* Fence_list::fence_in_node(REGIONAL_CFG_NODE* node)
{
    for(FENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        Fence* f = *i;
        if(f->fence_node()==node) {
            return f;
        }
    }
    return NULL;
}

Fence* Fence_list::is_fence(REGIONAL_CFG_NODE* node, OP* op)
{
    for(FENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        Fence* f = *i;

        // 2004.11.25
        if(f->fence_node()==node && (f->fence_op()==op || f->fence_op()==NULL /*|| op==NULL*/)) {
        //if(f->fence_node()==node && (f->fence_op()==op && f->fence_op()!=NULL || op==NULL)) {
            return f;
        }
    }
    return NULL;
}


//sylee 08.09.08
Fence* Fence_list::add_fence2(REGIONAL_CFG_NODE* node,EPS_SIM_STATE _sim_stat) {
    if(EPSDBG(1)){
        fprintf(EPSLOG, "copy sim_state 1-3\n");
    }


    if(node->Is_Region()) return add_fence(node, NULL);

    OP* first_op = BB_first_op(node->BB_Node());

    if(EPSDBG(1)){
        fprintf(EPSLOG, "copy sim_state 1-1\n");
    }


    return add_fence2(node, first_op , _sim_stat);
}

                
Fence* Fence_list::add_fence2(REGIONAL_CFG_NODE* node, OP* op, EPS_SIM_STATE _sim_stat)
{
	Fence* fence;
	     
    if(EPSDBG(1)){
        fprintf(EPSLOG, "copy sim_state 1-2\n");
    }       

	fence = is_fence(node, op);
	if(fence!=NULL){
	// 2004.04.12 sometimes, fence can have additional instructions
	// than when the fence is created.
		if(fence->fence_op()==NULL && op!=NULL) {
			fence->_fence_op = op;
			fence->_fence_boundary = op;
		}
//sylee ???
        _sim_stat.Copy_Issue_Ops(&(fence->_sim_state));
/*        for(ISSUED_OPS::iterator it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
 
                fence->_sim_state._issued_ops.push_back(it);
        }		*/
	
//sylee ???		

        return fence;
    }
	fence = CXX_NEW(Fence(node, op), EPS::current_eps_mempool());

	_sim_stat.Copy_Issue_Ops(&(fence->_sim_state));
	
	/*
	for(ISSUED_OPS::iterator it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {

		fence->_sim_state._issued_ops.push_back(it);
	}*/
		
	_fences.push_back(fence);
	return fence;
}



//sylee 08.09.08

Fence* Fence_list::add_fence(REGIONAL_CFG_NODE* node)
{
    if(node->Is_Region()) return add_fence(node, NULL);

    OP* first_op = BB_first_op(node->BB_Node());
//    if(first_op==NULL) return NULL; // empty node.

    return add_fence(node, first_op);
}



Fence* Fence_list::add_fence(REGIONAL_CFG_NODE* node, OP* op)
{
    Fence* fence;

    fence = is_fence(node, op);
    if(fence!=NULL) {
        // 2004.04.12 sometimes, fence can have additional instructions
        // than when the fence is created.
        if(fence->fence_op()==NULL && op!=NULL) {
            fence->_fence_op = op;
            fence->_fence_boundary = op;
        }
        return fence;
    }

    fence = CXX_NEW(Fence(node, op), EPS::current_eps_mempool());
    _fences.push_back(fence);
    return fence;
}

void Fence_list::remove_fence(Fence* fence)
{
    for(FENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        if((*i)==fence) {
            _fences.erase(i);
            CXX_DELETE(fence, EPS::current_eps_mempool());
            return;
        }
    }
}

void Fence_list::debug_print(void)
{
    fprintf(stderr, "fences...\n");
    for(FENCE_LIST::iterator i=_fences.begin();  i!=_fences.end(); i++) {
        (*i)->print(stderr);
    }
}
