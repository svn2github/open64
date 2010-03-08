#include "eps.h"
#include "speculation.h"

RHS::RHS(OP* op)
{
    int i;

    memcpy(&_op, op, OP_sizeof(OP_results(op), OP_opnds(op)));
    _op.next = _op.prev = NULL;
    _op.bb = op->bb;
    _op.flags = op->flags;
    _op.eps_flags = op->eps_flags;
    _op.importance = op->importance;
}

RHS::RHS(RHS& rhs)
{
    int i;

    memcpy(&_op, &rhs._op, OP_sizeof(OP_results(&rhs._op), OP_opnds(&rhs._op)));
    _op.next = _op.prev = NULL;
    _op.bb = rhs._op.bb;
    _op.flags = rhs._op.flags;
    _op.eps_flags = rhs._op.eps_flags;
    _op.importance = rhs._op.importance;
}

RHS::~RHS()
{
}

AV::AV(OP* op) : RHS(op)
{
    if(OP_has_predicate(&_op) && OP_opnd(&_op, OP_PREDICATE_OPND)!=True_TN && (!OP_br(&_op))) {
        _attrib._b_unifying_conditions = TRUE;
    }

    _attrib._n_iteration = op->iteration_number;
    _attrib._ddg_node = EPS::current_eps_driver()->get_ddg()->Find(op);

    _attrib._b_over_store = ((op->eps_flags&OP_EPS_ADVLOAD)!=0);
    _attrib._b_specload = ((op->eps_flags&OP_EPS_SPECLOAD)!=0);
}

AV::AV(AV& av) : RHS(av)
{
    _attrib = av._attrib;
}

AV::~AV()
{
}

/*
 * Returns TRUE if the operation AV is containing is true-dependent to op,
 * or for other reason, the operation cannot scheduled above op.
 */
BOOL RHS::is_dependent_on(OP* op)
{
    int i, j;
    OP* avop = &(this->_op);

    abort();

//#if EPS_ADVLOAD
//  if (EPS::current_eps_driver()->get_spec_lds()->chk_op_anti_dependent(avop, op)) return TRUE;
//#endif

    // At first, check register dependencies.
    for(i=0; i<OP_opnds(avop); i++) {
        TN* avopnd = OP_opnd(avop, i);

        if(OP_Defs_TN(op, avopnd)) return TRUE; // true depedent.
    }

    // Second, check memory dependencies.
    BOOL op_is_store = OP_store(op);

    if(OP_store(avop) && (op_is_store || OP_load(op) || OP_call(op) || OP_code(op)==TOP_chk_a || OP_code(op)==TOP_chk_f_a)) {
        return TRUE;
    }

    // 2007.01.16
    if(OP_call(op)) {
        if(OP_load(avop) || OP_store(avop) || OP_call(avop)) return TRUE;

        int i;
        for(i=0; i<OP_results(avop); i++) {
            TN* tn = OP_result(avop,i);
            if(TN_is_register(tn) && (TN_register(tn)<128 || (TN_is_dedicated(tn) && !TN_is_true_pred(tn)))) {
                return TRUE;
            }
        }
        for(i=0; i<OP_opnds(avop); i++) {
            TN* tn = OP_opnd(avop,i);
            if(TN_is_register(tn) && (TN_register(tn)<128 || (TN_is_dedicated(tn) && !TN_is_true_pred(tn)))) {
                return TRUE;
            }
        }
    }

    if(!eps_option::advanced_load()) {
//        if(OP_load(avop) && (op_is_store || OP_call(op))) {
//            return TRUE;
//        }
        if(OP_load(avop) && OP_call(op)) return TRUE;
        if(OP_load(avop) && op_is_store) {
            BOOL definite;
            BOOL get_mem_dep(OP *pred_op, OP *succ_op, BOOL *definite, UINT8 *omega);
            BOOL result = get_mem_dep(op, avop, &definite, NULL);

            if(result) return TRUE;
        }
    } else {
        if(OP_load(avop) && OP_call(op)) {
            return TRUE;
        }

        TN* ld_tn = OP_opnd(avop, 1);
        TN* st_tn = OP_opnd(op, 1);
        if(ld_tn==st_tn) {
            // really simple disambiguation
            return TRUE;
        }
    }
    if((OP_code(avop)==TOP_chk_a)||(OP_code(avop)==TOP_chk_f_a) && (op_is_store || OP_call(op))) {
        return TRUE;
    }

    // I hate this stuff...-_-;;;
    // But I cannot help doing this now...
    // Isn't there any way to avoid this?
    OP op1, op2;
    memcpy(&op1, op, sizeof(op1));
    memcpy(&op2, avop, sizeof(op2));
    // Third, misc dependencies.
    if(CGTARG_Dependence_Required(&op1, &op2)) {
        return TRUE;
    }

    return FALSE;
}

/*
 * Returns TRUE if the operation AV contains any dependence to the region.
 * anti,true,write dependency
 */
BOOL RHS::is_dependent_on(Region_attribute* rgn_attrib)
{
    int i, j;
    OP* avop = &(this->_op);

    // First, check memory dependencies.
    if(OP_store(avop)) return TRUE;
    if(rgn_attrib->contain_call()) {
        int i;
        for(i=0; i<OP_results(avop); i++) {
            TN* tn = OP_result(avop,i);
            if(TN_is_register(tn) && ((TN_is_save_reg(tn)) || (/*TN_register(tn)<128 || */ TN_is_gp_reg(tn) ||  (TN_is_dedicated(tn) && !TN_is_true_pred(tn))))) {
                return TRUE;
            }
        }
        for(i=0; i<OP_opnds(avop); i++) {
            TN* tn = OP_opnd(avop,i);
            if(TN_is_register(tn) && ((TN_is_save_reg(tn)) || (/*TN_register(tn)<128 || */ TN_is_gp_reg(tn) || (TN_is_dedicated(tn) && !TN_is_true_pred(tn))))) {
                return TRUE;
            }
        }
    }
    if(OP_load(avop) && rgn_attrib->contain_call()) return TRUE;
    // 2008.10.31
    if((!eps_option::advanced_load()) && (OP_load(avop) && rgn_attrib->contain_st())) return TRUE;

    // Second, check register dependencies.
    for(i=0; i<OP_opnds(avop); i++) {
        TN* avopnd = OP_opnd(avop, i);

        if(TN_is_register(avopnd) && !TN_is_const_reg(avopnd)) {
            if(TN_SET_MemberP(rgn_attrib->get_def_set(), avopnd)) return TRUE;
        }
    }
/*
    for(i=0; i<OP_results(avop); i++) {
        TN* avopnd = OP_result(avop, i);
        if(TN_is_register(avopnd) && !TN_is_const_reg(avopnd)) {
            if(TN_SET_MemberP(rgn_attrib->get_def_set(), avopnd)) return TRUE;
            if(TN_SET_MemberP(rgn_attrib->get_use_set(), avopnd)) return TRUE;
        }
    }
*/
    return FALSE;
}

BOOL RHS::is_equal(OP* op)
{
    OP* op1 = &(this->_op);
    OP* op2 = op;
    if(OP_code(op1)!=OP_code(op2)) return FALSE;
    if(OP_opnds(op1)!=OP_opnds(op2)) return FALSE;
    if(OP_results(op1) != OP_results(op2)) return FALSE;

//    if(OP_has_predicate(op1)) {
//        TN* pred1 = OP_opnd(op1, OP_PREDICATE_OPND);
//        TN* pred2 = OP_opnd(op2, OP_PREDICATE_OPND);
//        if(pred1 != pred2) {
//            /*if(pred1!=True_TN && pred2!=True_TN)*/ return FALSE;
//        }
//    }

    if(!OP_load(op1)) {
        for(int i=OP_has_predicate(op1)?1:0; i<OP_opnds(op1); i++) {
            TN* opnd1 = OP_opnd(op1, i);
            TN* opnd2 = OP_opnd(op2, i);

            if(TN_is_register(opnd1) && TN_is_register(opnd2)) {
                if(!TNs_Are_Equivalent(opnd1, opnd2)) return FALSE;
            }
            if(TN_is_register(opnd1) && TN_is_constant(opnd2)) return FALSE;
            if(TN_is_constant(opnd2) && TN_is_register(opnd1)) return FALSE;
            if(TN_is_constant(opnd1) && TN_is_constant(opnd2)) {
                if(TN_has_value(opnd1) && TN_has_value(opnd2)) {
                    if(TN_value(opnd1)==TN_value(opnd2)) continue;
                }
                if( (TN_is_enum(opnd1) && TN_is_enum(opnd2)) ||
                    (TN_is_label(opnd1) && TN_is_label(opnd2)) ||
                    (TN_is_tag(opnd1) && TN_is_tag(opnd2)) ) {
                    if(TN_var(opnd1)==TN_var(opnd2)) continue;
                }
                if(TN_is_symbol(opnd1) && TN_is_symbol(opnd2)) {
                    if(TN_var(opnd1)==TN_var(opnd2) &&
                       TN_offset(opnd1)==TN_offset(opnd2)) continue;
                }
                return FALSE;
            }
        }
    } else {
        for(int i=OP_has_predicate(op1)?1:0; i<OP_opnds(op1); i++) {
            TN* opnd1 = OP_opnd(op1, i);
            TN* opnd2 = OP_opnd(op2, i);

            if(i==enum_ldtype_pos) continue;

            if(TN_is_register(opnd1) && TN_is_register(opnd2)) {
                if(!TNs_Are_Equivalent(opnd1, opnd2)) return FALSE;
            }
            if(TN_is_register(opnd1) && TN_is_constant(opnd2)) return FALSE;
            if(TN_is_constant(opnd2) && TN_is_register(opnd1)) return FALSE;
            if(TN_is_constant(opnd1) && TN_is_constant(opnd2)) {
                if(TN_has_value(opnd1) && TN_has_value(opnd2)) {
                    if(TN_value(opnd1)==TN_value(opnd2)) continue;
                }
                if( (TN_is_enum(opnd1) && TN_is_enum(opnd2)) ||
                    (TN_is_label(opnd1) && TN_is_label(opnd2)) ||
                    (TN_is_tag(opnd1) && TN_is_tag(opnd2)) ) {
                    if(TN_var(opnd1)==TN_var(opnd2)) continue;
                }
                if(TN_is_symbol(opnd1) && TN_is_symbol(opnd2)) {
                    if(TN_var(opnd1)==TN_var(opnd2) &&
                       TN_offset(opnd1)==TN_offset(opnd2)) continue;
                }
                return FALSE;
            }
        }
    }

    return TRUE;
}

BOOL RHS::is_equal(RHS* r)
{
    return is_equal(&r->_op);
}

BOOL RHS::forward_substitution(OP* mov_op)
{
    if(!eps_option::forward_substitute()) return FALSE;

    if(!OP_copy(mov_op)) return FALSE;
    
    BOOL ret = FALSE;
    TN *result = OP_result(mov_op, 0);
    TN *opnd = OP_opnd(mov_op, 1);
    TN *predicate = OP_opnd(mov_op, 0);
    if(TN_is_save_reg(result) || TN_is_save_reg(opnd)) return FALSE;
    if(TN_is_gp_reg(result) || TN_is_gp_reg(opnd)) return FALSE;
    if(TN_is_sp_reg(result) || TN_is_sp_reg(opnd)) return FALSE;
    if(TN_is_fp_reg(result) || TN_is_fp_reg(opnd)) return FALSE;
    if(TN_is_ep_reg(result) || TN_is_ep_reg(opnd)) return FALSE;
    if(TN_is_ra_reg(result) || TN_is_ra_reg(opnd)) return FALSE;
    if(TN_is_dedicated(result) || TN_is_dedicated(opnd)) return FALSE;
    if(TN_is_static_link_reg(result) || TN_is_static_link_reg(opnd)) return FALSE;
    if(!TN_is_true_pred(predicate)) return FALSE;

    ISA_REGISTER_CLASS result_reg_class = ISA_OPERAND_VALTYP_Register_Class(
            ISA_OPERAND_INFO_Result(ISA_OPERAND_Info(OP_code(mov_op)), 0));
    ISA_REGISTER_CLASS opnd_reg_class = ISA_OPERAND_VALTYP_Register_Class(
            ISA_OPERAND_INFO_Operand(ISA_OPERAND_Info(OP_code(mov_op)), 1));
    if(result_reg_class != opnd_reg_class)
        return FALSE;

    for(int i=0; i<OP_opnds(&_op); i++) {
        if(result==OP_opnd(&_op, i)) {
            if(EPSDBG(15)) {
                fprintf(EPSLOG, "==Forward Substitution Start==\n");
                fprintf(EPSLOG, "Mov_op : "); eps_print_asm(EPSLOG, mov_op, NULL);
                fprintf(EPSLOG, "Before forward substitution : "); eps_print_asm(EPSLOG, &_op, NULL);
            }
            Set_OP_opnd(&_op, i, opnd);
            if(EPSDBG(15)) {
                fprintf(EPSLOG, "After forward substitution : "); eps_print_asm(EPSLOG, &_op, NULL);
                fprintf(EPSLOG, "==Forward Substitution End====\n");
            }
            ret = TRUE;
        }
    }
    
    return ret;
}

BOOL RHS::undo_forward_substitution(RHS_set* rs, OP* mov_op)
{
    EPS_ASSERT(OP_copy(mov_op), "should be copy\n");

    TN* dst = OP_result(mov_op, 0);
    TN* src = OP_opnd(mov_op, 1);

    for(int i=0; i<OP_opnds(&_op); i++) {
        if(src==OP_opnd(&_op,i)) {
            if(EPSDBG(15)) {
                fprintf(EPSLOG, "==Undo Forward Substitution Start==\n");
                fprintf(EPSLOG, "Mov_op : "); eps_print_asm(EPSLOG, mov_op, NULL);
                fprintf(EPSLOG, "Before undo forward substitution : "); eps_print_asm(EPSLOG, &_op, NULL);
            }

            OP o;
            memcpy(&o, &_op, OP_sizeof(OP_results(&_op), OP_opnds(&_op)));
            o.next = o.prev = NULL;
            o.bb = NULL;
            Set_OP_opnd(&o, i, dst);
            rs->insert(&o);

            if(EPSDBG(15)) {
                fprintf(EPSLOG, "After undo forward substitution : "); eps_print_asm(EPSLOG, &o, NULL);
                fprintf(EPSLOG, "==Undo Forward Substitution End====\n");
            }
        }
    }

    return TRUE;
}

void RHS::print(FILE* fp)
{
    if(fp==NULL) fp = stderr;
    eps_print_asm(fp, &_op, NULL);
}

void AV::debug_print(void)
{
    print(stderr);
}

void AV::print(FILE* fp)
{
    eps_print_asm(fp, &_op, NULL);
//    if(OP_load(&_op)) { fprintf(fp, "spld=%d", _attrib.spec()); }
    fprintf(fp, "        ");
    _attrib.print(fp);
}

BOOL AV::is_dependent_on(OP* op)
{
    int i, j;
    OP* avop = &(this->_op);

#if EPS_ADVLOAD
  if (EPS::current_eps_driver()->get_spec_lds()->chk_op_anti_dependent(avop, op)) return TRUE;
#endif

    // At first, check register dependencies.
    for(i=0; i<OP_opnds(avop); i++) {
        TN* avopnd = OP_opnd(avop, i);

        if(OP_Defs_TN(op, avopnd)) {
            if(EPSDBG(11)) fprintf(EPSLOG, "true dependence\n");
            return TRUE; // true depedent.
        }
    }

    // Second, check memory dependencies.
    BOOL op_is_store = OP_store(op);

    if(OP_store(avop) && (op_is_store || OP_load(op) || OP_call(op) || OP_code(op)==TOP_chk_a || OP_code(op)==TOP_chk_f_a)) {
        if(EPSDBG(11)) fprintf(EPSLOG, "avop is store\n");
        return TRUE;
    }

    // 2007/08/07 jaemok added about speculative load.
    if(OP_baneful(avop)) {
        if(OP_chk(op)) {
            if(EPSDBG(11)) fprintf(EPSLOG, "avop is baneful\n");
            return TRUE;
        }
    }

#ifdef OPTIMIZE_EPS
    // 2007.01.16
    if(OP_call(op)) {
	if(!eps_option::advanced_load() && OP_load(avop)) {
            if(EPSDBG(11)) fprintf(EPSLOG, "op is call 0\n");
            return TRUE;
	}
        if(OP_store(avop) || OP_call(avop)) {
            if(EPSDBG(11)) fprintf(EPSLOG, "op is call 0\n");
            return TRUE;
        }

        int i;
        for(i=0; i<OP_results(avop); i++) {
            TN* tn = OP_result(avop,i);
            if(TN_is_register(tn) && (TN_is_gp_reg(tn) /*|| TN_register(tn)<128*/ || (TN_is_dedicated(tn) && !TN_is_true_pred(tn)))) {
                if(EPSDBG(11)) fprintf(EPSLOG, "op is call 1\n");
                return TRUE;
            }
        }
        for(i=0; i<OP_opnds(avop); i++) {
            TN* tn = OP_opnd(avop,i);
            if(TN_is_register(tn) && (TN_is_gp_reg(tn) /*|| TN_register(tn)<128*/ || (TN_is_dedicated(tn) && !TN_is_true_pred(tn)))) {
                if(EPSDBG(11)) fprintf(EPSLOG, "op is call 2\n");
                return TRUE;
            }
        }
    }
#else
    if(OP_call(op)) {
        return TRUE;
    }
#endif
    if(!eps_option::advanced_load()) {
#if 0
        if(OP_load(avop) && (op_is_store || OP_call(op))) {
            return TRUE;
        }
#else
        if(OP_load(avop) && OP_call(op)) return TRUE;
        if(OP_load(avop) && op_is_store) {
            BOOL definite;

//            eps_print_asm(EPSLOG, op, NULL);
//            eps_print_asm(EPSLOG, avop, NULL);

            if(mem_dep(op, avop, &definite)) {
                return TRUE;
            } else {
                fprintf(stderr, "no alias2\n");
            }
        }
#endif
    } else {
        if(!eps_option::advanced_load() && OP_load(avop) && OP_call(op)) {
            if(EPSDBG(11)) fprintf(EPSLOG, "memory dependence 0\n");
            return TRUE;
        }
        if(OP_load(avop) && op_is_store) {  // 2008.08.08 jaemok fixed
            TN* ld_tn = OP_opnd(avop, 1);
            TN* st_tn = OP_opnd(op, 1);
            if(ld_tn==st_tn) {
                // really simple disambiguation
                if(EPSDBG(11)) fprintf(EPSLOG, "memory dependence 1\n");
                return TRUE;
            }
        }
    }
    if((OP_code(avop)==TOP_chk_a)||(OP_code(avop)==TOP_chk_f_a) && (op_is_store || OP_call(op))) {
        if(EPSDBG(11)) fprintf(EPSLOG, "memory dependence 2\n");
        return TRUE;
    }

    // 2008.11.28 jaemok added chk-load dependency
    // I guess ORC 3.0 cannot handle load-load speculation
    if(OP_code(op)==TOP_chk_a && OP_load(avop)) {
        return TRUE;
    }

    OP op1, op2;
    memcpy(&op1, op, sizeof(op1));
    memcpy(&op2, avop, sizeof(op2));
    // Third, misc dependencies.
    if(CGTARG_Dependence_Required(&op1, &op2)) {
        if(EPSDBG(11)) fprintf(EPSLOG, "misc dependence 3\n");
        return TRUE;
    }

    return FALSE;
}

BOOL AV::is_dependent_on(Region_attribute* rgn_attrib)
{
    return RHS::is_dependent_on(rgn_attrib);
}

BOOL AV::is_unifiable(OP* op)
{
    OP* op1 = &(this->_op);
    OP* op2 = op;
    if(OP_code(op1)!=OP_code(op2)) return FALSE;
    if(OP_opnds(op1)!=OP_opnds(op2)) return FALSE;
    if(OP_results(op1) != OP_results(op2)) return FALSE;

//    if(OP_has_predicate(op1)) {
//        TN* pred1 = OP_opnd(op1, OP_PREDICATE_OPND);
//        TN* pred2 = OP_opnd(op2, OP_PREDICATE_OPND);
//        if(pred1 != pred2) {
//            /*if(pred1!=True_TN && pred2!=True_TN)*/ return FALSE;
//        }
//    }

    if(!OP_load(op1)) {
        for(int i=OP_has_predicate(op1)?1:0; i<OP_opnds(op1); i++) {
            TN* opnd1 = OP_opnd(op1, i);
            TN* opnd2 = OP_opnd(op2, i);

            if(TN_is_register(opnd1) && TN_is_register(opnd2)) {
                if(!TNs_Are_Equivalent(opnd1, opnd2)) return FALSE;
            }
            if(TN_is_register(opnd1) && TN_is_constant(opnd2)) return FALSE;
            if(TN_is_constant(opnd2) && TN_is_register(opnd1)) return FALSE;
            if(TN_is_constant(opnd1) && TN_is_constant(opnd2)) {
                if(TN_has_value(opnd1) && TN_has_value(opnd2)) {
                    if(TN_value(opnd1)==TN_value(opnd2)) continue;
                }
                if( (TN_is_enum(opnd1) && TN_is_enum(opnd2)) ||
                    (TN_is_label(opnd1) && TN_is_label(opnd2)) ||
                    (TN_is_tag(opnd1) && TN_is_tag(opnd2)) ) {
                    if(TN_var(opnd1)==TN_var(opnd2)) continue;
                }
                if(TN_is_symbol(opnd1) && TN_is_symbol(opnd2)) {
                    if(TN_var(opnd1)==TN_var(opnd2) &&
                       TN_offset(opnd1)==TN_offset(opnd2)) continue;
                }
                return FALSE;
            }
        }
    } else {
        for(int i=OP_has_predicate(op1)?1:0; i<OP_opnds(op1); i++) {
            TN* opnd1 = OP_opnd(op1, i);
            TN* opnd2 = OP_opnd(op2, i);

            if(i==enum_ldtype_pos) continue;

            if(TN_is_register(opnd1) && TN_is_register(opnd2)) {
                if(!TNs_Are_Equivalent(opnd1, opnd2)) return FALSE;
            }
            if(TN_is_register(opnd1) && TN_is_constant(opnd2)) return FALSE;
            if(TN_is_constant(opnd2) && TN_is_register(opnd1)) return FALSE;
            if(TN_is_constant(opnd1) && TN_is_constant(opnd2)) {
                if(TN_has_value(opnd1) && TN_has_value(opnd2)) {
                    if(TN_value(opnd1)==TN_value(opnd2)) continue;
                }
                if( (TN_is_enum(opnd1) && TN_is_enum(opnd2)) ||
                    (TN_is_label(opnd1) && TN_is_label(opnd2)) ||
                    (TN_is_tag(opnd1) && TN_is_tag(opnd2)) ) {
                    if(TN_var(opnd1)==TN_var(opnd2)) continue;
                }
                if(TN_is_symbol(opnd1) && TN_is_symbol(opnd2)) {
                    if(TN_var(opnd1)==TN_var(opnd2) &&
                       TN_offset(opnd1)==TN_offset(opnd2)) continue;
                }
                return FALSE;
            }
        }
    }

    return TRUE;
}

// this merge, occurs when traversing BB reversely.
// because av1 seems to be local in current phase, init AV attributes of this.
void AV::merge(AV& av1)
{
    attrib()->init();
    if(OP_has_predicate(&_op)) {
        TN* tn1 = OP_opnd(&_op, OP_PREDICATE_OPND);
        TN* tn2 = OP_opnd(av1.op(), OP_PREDICATE_OPND);
        if(tn1!=True_TN && tn1!=tn2 && EPS::FindComplement(tn1)!=tn2) {
            attrib()->set_unifying_conditions();
        }
        if(tn1!=True_TN && tn1!=tn2 && EPS::FindComplement(tn1)==tn2) {
            Set_OP_opnd(&_op, OP_PREDICATE_OPND, True_TN);
        }
    }
}

void AV::merge_at_split(AV& av1)
{
    attrib()->merge(av1.attrib());

    // 2009.04
//    if(OP_has_predicate(&_op) && OP_opnd(&_op, OP_PREDICATE_OPND)!=OP_opnd(av1.op(), OP_PREDICATE_OPND)) {
//        attrib()->set_unifying_conditions();
//    }
    if(OP_has_predicate(&_op)) {
        TN* tn1 = OP_opnd(&_op, OP_PREDICATE_OPND);
        TN* tn2 = OP_opnd(av1.op(), OP_PREDICATE_OPND);
        if(tn1!=True_TN && tn1!=tn2 && EPS::FindComplement(tn1)!=tn2) {
            attrib()->set_unifying_conditions();
        }
        if(tn1!=True_TN && tn1!=tn2 && EPS::FindComplement(tn1)==tn2) {
            Set_OP_opnd(&_op, OP_PREDICATE_OPND, True_TN);
        }


        // 2009.04
        reg_tn_map& product1 = attrib()->product_of_predicates;
        reg_tn_map& product2 = av1.attrib()->product_of_predicates;
        if(product1.size()>1 || product2.size()>1) {
            attrib()->product_of_predicates.clear();
        } else if(product1.size()==1 && product2.size()==1) {
            TN* tn1 = product1.begin()->second;
            TN* tn2 = product2.begin()->second;
            if(EPS::FindComplement(tn1)==tn2) {
                attrib()->product_of_predicates.clear();
            } else {
                attrib()->product_of_predicates.clear();
            }
        } else {
            attrib()->product_of_predicates.clear();
        }
    }
}

bool AV::compare_SHP(AV* av1, AV* av2)
{
    AV_attribute* at1 = av1->attrib();
    AV_attribute* at2 = av2->attrib();

#if BR_LOW_PRIOR
    if(OP_br(av1->op()) && !OP_br(av2->op())) return false;
    if(!OP_br(av1->op()) && OP_br(av2->op())) return true;
#endif
#if CHK_LOW_PRIOR
    if(OP_chk(av1->op()) && !OP_chk(av2->op())) return false;
    if(!OP_chk(av1->op()) && OP_chk(av2->op())) return true;
#endif

    if(at1->join()<at2->join()) return true;
    if(at1->join()>at2->join()) return false;

    if(at1->shp()>at2->shp()) {
        return true;
    }

    return false;
}

bool AV::compare_DOS(AV* av1, AV* av2)
{
    AV_attribute* at1 = av1->attrib();
    AV_attribute* at2 = av2->attrib();

#if BR_LOW_PRIOR
    if(OP_br(av1->op()) && !OP_br(av2->op())) return false;
    if(!OP_br(av1->op()) && OP_br(av2->op())) return true;
#endif
#if CHK_LOW_PRIOR
    if(OP_chk(av1->op()) && !OP_chk(av2->op())) return false;
    if(!OP_chk(av1->op()) && OP_chk(av2->op())) return true;
#endif

    if(at1->is_local() && !at2->is_local()) return true;
    if(at2->is_local() && !at1->is_local()) return false;

    int dos1 = at1->spec()-at1->iteration();
    int dos2 = at2->spec()-at2->iteration();
    dos1 = dos1>0?dos1:0;
    dos2 = dos2>0?dos2:0;
    if(dos1<dos2 ) {
        return true;
    } else if(dos1>dos2) {
        return false;
    }

    double length1, length2;
    if(at1->ddg_node()) length1 = at1->ddg_node()->Length();
    else length1 = 0.0;
    if(at2->ddg_node()) length2 = at2->ddg_node()->Length();
    else length2 = 0.0;

    if(length1>length2) {
       return true;
    } else if(length1<length2) {
       return false;
    }

    if(at1->join()<at2->join()) {
        return true;
    } else if(at1->join()>at2->join()) {
        return false;
    }

/*
    if(at1->spec()>at2->spec()) {
        return false;
    }

    if(at1->distance()<at2->distance()) {
        return true;
    }
*/
    return false;
}

bool AV::compare_DOS_DDG(AV* av1, AV* av2)
{
    AV_attribute* at1 = av1->attrib();
    AV_attribute* at2 = av2->attrib();

#if BR_LOW_PRIOR
    if(OP_br(av1->op()) && !OP_br(av2->op())) return false;
    if(!OP_br(av1->op()) && OP_br(av2->op())) return true;
#endif
#if CHK_LOW_PRIOR
    if(OP_chk(av1->op()) && !OP_chk(av2->op())) return false;
    if(!OP_chk(av1->op()) && OP_chk(av2->op())) return true;
#endif

    if(at1->is_local() && !at2->is_local()) return true;
    if(at2->is_local() && !at1->is_local()) return false;

    double length1, length2;
    if(at1->ddg_node()) length1 = at1->ddg_node()->Length();
    else length1 = 0.0;
    if(at2->ddg_node()) length2 = at2->ddg_node()->Length();
    else length2 = 0.0;

    double spec1 = (double)(at1->spec()+1);
    double spec2 = (double)(at2->spec()+1);
    length1 = length1/spec1;
    length2 = length2/spec2;

    if(at1->join()<at2->join()) return true;
    if(at1->join()>at2->join()) return false;

    int dos1 = at1->spec()-at1->iteration();
    int dos2 = at2->spec()-at2->iteration();
    if( (dos1>0?dos1:0) < (dos2>0?dos2:0) ) {
        return true;
    }
    if(length1>=length2) {
       return true;
    }

    return false;
}

bool AV::compare_DDG_DOS(AV* av1, AV* av2)
{
    AV_attribute* at1 = av1->attrib();
    AV_attribute* at2 = av2->attrib();

#if BR_LOW_PRIOR
    if(OP_br(av1->op()) && !OP_br(av2->op())) return false;
    if(!OP_br(av1->op()) && OP_br(av2->op())) return true;
#endif
#if CHK_LOW_PRIOR
    if(OP_chk(av1->op()) && !OP_chk(av2->op())) return false;
    if(!OP_chk(av1->op()) && OP_chk(av2->op())) return true;
#endif

    if(at1->is_local() && !at2->is_local()) return true;
    if(at2->is_local() && !at1->is_local()) return false;

    if(at1->spec()==0 && at2->spec()>0) return true;
    else if(at1->spec()>0 && at2->spec()==0) return false;

    double length1, length2;
    if(at1->ddg_node()) length1 = at1->ddg_node()->Length();
    else length1 = 0.0;
    if(at2->ddg_node()) length2 = at2->ddg_node()->Length();
    else length2 = 0.0;

    if(length1>length2) {
       return true;
    } else if(length1<length2) {
        return false;
    }

    if(at1->join()<at2->join()) return true;
    if(at1->join()>at2->join()) return false;

    int dos1 = at1->spec()-at1->iteration();
    int dos2 = at2->spec()-at2->iteration();
    if( (dos1>0?dos1:0) < (dos2>0?dos2:0) ) {
        return true;
    }

    return false;
}

bool AV::compare_DDG_by_DOS(AV* av1, AV* av2)
{
    AV_attribute* at1 = av1->attrib();
    AV_attribute* at2 = av2->attrib();

#if BR_LOW_PRIOR
    if(OP_br(av1->op()) && !OP_br(av2->op())) return false;
    if(!OP_br(av1->op()) && OP_br(av2->op())) return true;
#endif
#if CHK_LOW_PRIOR
    if(OP_chk(av1->op()) && !OP_chk(av2->op())) return false;
    if(!OP_chk(av1->op()) && OP_chk(av2->op())) return true;
#endif

    if(at1->is_local() && !at2->is_local()) return true;
    if(at2->is_local() && !at1->is_local()) return false;

    double length1, length2;
    if(at1->ddg_node()) length1 = at1->ddg_node()->Length();
    else length1 = 0.0;
    if(at2->ddg_node()) length2 = at2->ddg_node()->Length();
    else length2 = 0.0;

    double spec1 = (double)(at1->spec()+1);
    double spec2 = (double)(at2->spec()+1);
    length1 = length1/spec1;
    length2 = length2/spec2;

    if(length1>=length2) {
       return true;
    }

    if(at1->join()<at2->join()) return true;
    if(at1->join()>at2->join()) return false;

    int dos1 = at1->spec()-at1->iteration();
    int dos2 = at2->spec()-at2->iteration();
    if( (dos1>0?dos1:0) < (dos2>0?dos2:0) ) {
        return true;
    }

    return false;
}

bool AV::mem_dep(OP* pred_op, OP* succ_op, BOOL *definite)
{
#if 1
    *definite = FALSE;

    if (OP_no_alias(pred_op) || OP_no_alias(succ_op)) {
        //fprintf(stderr, "no alias1\n");
        return FALSE;
    }

    if (OP_volatile(pred_op) && OP_volatile(succ_op)) {
        *definite = TRUE;
        return TRUE;
    }

    extern ST * CGSPILL_OP_Spill_Location (OP *op);
    if(CGSPILL_OP_Spill_Location(pred_op)!=NULL || CGSPILL_OP_Spill_Location(succ_op)!=NULL) {
        return FALSE;
    }

    return TRUE;
#else
    BOOL get_mem_dep(OP *pred_op, OP *succ_op, BOOL *definite, UINT8 *omega);

    BOOL result = get_mem_dep(pred_op, succ_op, definite, NULL);
    return result;
#endif
}


RHS_set::RHS_set(RHS_set &rhs) : _rhs (RHS_ALLOC(EPS::current_eps_mempool()))
{
    for (iterator i=rhs.begin(); i!=rhs.end(); i++) {
        _rhs.push_back(CXX_NEW(RHS(**i), EPS::current_eps_mempool()));
    }
}

void RHS_set::destruct(void)
{
    for (iterator i=begin(); i!=end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
    }
}

void RHS_set::merge(RHS_set* rhs)
{
    if(rhs==NULL) return;

    for(iterator i=rhs->begin(); i!=rhs->end(); i++) {
        insert((*i)->op());
    }
}

BOOL RHS_set::has_same_rhs(OP* op)
{
    for(RHS_SET::iterator i=_rhs.begin(); i!=_rhs.end(); i++) {
        if((*i)->is_equal(op)) {
            return TRUE;
        }
    }

    return FALSE;
}

void RHS_set::intersect(AV_list* avs)
{
    for(RHS_SET::iterator i=begin(); i!=end(); i++) {
        if(!avs->has_same_rhs((*i)->op())) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _rhs.erase(i);
        }
    }
}

void RHS_set::intersect(RHS_set* rhs)
{
    for(RHS_SET::iterator i=_rhs.begin(); i!=_rhs.end(); i++) {
        if(!rhs->has_same_rhs((*i)->op())) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _rhs.erase(i);
        }
    }
}

void RHS_set::insert(OP* op)
{
    if(this->has_same_rhs(op)) return;
    _rhs.push_back(CXX_NEW(RHS(op), EPS::current_eps_mempool()));
}

BOOL RHS_set::forward_substitution(OP* op)
{
    if(!OP_copy(op)) return FALSE;
    
    for(RHS_SET::iterator i=_rhs.begin(); i!=_rhs.end(); i++) {
        (*i)->forward_substitution(op);
    }
    return TRUE;
}

BOOL RHS_set::undo_forward_substitution(OP* op)
{
    if(!OP_copy(op)) return FALSE;
    for(iterator it=begin(); it!=end(); it++) {
        RHS* r = *it;
        RHS_set rs;
        r->undo_forward_substitution(&rs, op);
        merge(&rs);
    }
    return TRUE;
}

void RHS_set::kill(OP* op)
{
    BOOL killed = FALSE;
    for(iterator it=begin(); it!=end(); it++) {
        RHS* r = *it;
        int i;
        for(i=0; i<OP_opnds(r->op()); i++) {
            if(OP_Defs_TN(op, OP_opnd(r->op(),i))) {
                if(EPSDBG(15)) {
                    fprintf(EPSLOG, "killed : "); eps_print_asm(EPSLOG, r->op(), NULL);
                    killed = TRUE;
                }
                CXX_DELETE(r, EPS::current_eps_mempool());
                _rhs.erase(it);
                break;
            }
        }
    }
    if(killed && EPSDBG(15)) {
        fprintf(EPSLOG, "after killed\n");
        print(EPSLOG);
    }
}

void RHS_set::kill(REGION* rgn)
{
    Region_attribute* rgn_attrib = EPS::current_eps_driver()->get_region_attrib(rgn);
    for(iterator it=begin(); it!=end(); it++) {
        RHS* r = *it;
        int i;
        for(i=0; i<OP_opnds(r->op()); i++) {
            TN* opnd = OP_opnd(r->op(),i);
            if(TN_is_register(opnd) && !TN_is_const_reg(opnd)) {
                if(TN_SET_MemberP(rgn_attrib->get_def_set(),opnd)) {
                    CXX_DELETE(r, EPS::current_eps_mempool());
                    _rhs.erase(it);
                }
            }
        }
    }
}

RHS* RHS_set::single_rhs(void)
{
    iterator it = this->begin();
    RHS* rhs = *it;
    // 2007.04.07
    // Because unifying subtituted AV is filtered if it shall leave compensation code.
    // The compensation code here we leave shall be moved by next phase of code motion for another path.
    // So, we may leave any compensation code here.

//    if((++it)!=this->end()) {
//        abort();
//    }
    //EPS_ASSERT((++it)==this->end(), "not single rhs set.\n");
    return rhs;
}

AV_list::AV_list(AV_list &avs) : _avs (AV_ALLOC(EPS::current_eps_mempool()))
{
    for (iterator i=avs.begin(); i!=avs.end(); i++) {
        _avs.push_back(CXX_NEW(AV(**i), EPS::current_eps_mempool()));
    }
}

void AV_list::destruct(void)
{
    for (iterator i=begin(); i!=end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
    }
}

void AV_list::merge_av_set(AV_list& list1, int num_succs)
{
    AV_LIST::iterator i;
    AV_LIST::iterator j;

    for(i=list1._avs.begin(); i!=list1._avs.end(); i++) {
        for(j=_avs.begin(); j!=_avs.end(); j++) {
            AV* av1 = *j;
            AV* av2 = *i;
            if(av1->is_unifiable(av2->op())) {
                av1->merge_at_split(*av2);
                CXX_DELETE(*i, EPS::current_eps_mempool());
                list1._avs.erase(i);
                break;
            }
        }
    }

    for(i=list1._avs.begin(); i!=list1._avs.end(); i++) {
        _avs.push_back(CXX_NEW(AV(**i), EPS::current_eps_mempool()));
    }
}

BOOL AV_list::insert_av(reg_tn_set& lives, AV* av1)
{
    if ( !av1 ) return TRUE;

    av1->attrib()->create_reg_pressure(lives, av1->op());

    AV_LIST::iterator i;
    for (i=begin(); i!=end(); i++) {
        AV *av = *i;
        if (av->is_unifiable(av1->op())) {
            CXX_DELETE(av, EPS::current_eps_mempool());
            _avs.erase(i);

            _avs.push_front(av1);
            return FALSE;
        }
    }
    _avs.push_front(av1);
    return TRUE;
}

void AV_list::update_av_attribute(int num_succs, int num_preds, REGIONAL_CFG_EDGE* edge)
{
    AV_LIST::iterator i;

    if(EPSDBG(2)) {
        fprintf(EPSLOG, "update av attribute: succ(%d), pred(%d)\n", num_succs, num_preds);
    }

    if(num_succs > 1) {
        REGIONAL_CFG_NODE* src;
        float mult;

        src = edge->Src();
        if(src->Is_Region()) {
            mult = (1.0/(float)num_succs);
        } else {
            BB* srcbb = src->BB_Node();
            if(edge->Dest()->Is_Region()) {
                bblist* succs;
                FOR_ALL_BB_SUCCS(srcbb, succs) {
                    BB* succ = BBLIST_item(succs);
                    REGIONAL_CFG_NODE* succ_node = Regional_Cfg_Node(succ);
                    if(succ_node->Home_Region()->Is_Contained_By(edge->Dest()->Region_Node()) || succ_node->Home_Region()==edge->Dest()->Region_Node()) {
                        mult += BBLIST_prob(succs);
                    }
                }
            } else {
                bblist* succs;
                FOR_ALL_BB_SUCCS(srcbb, succs) {
                    BB* succ = BBLIST_item(succs);
                    REGIONAL_CFG_NODE* succ_node = Regional_Cfg_Node(succ);
                    if(succ_node==edge->Dest()) {
                        mult = BBLIST_prob(succs);
                        break;
                    }
                }
            }
        }

        for(i=_avs.begin(); i!=_avs.end(); i++) {
            AV *av = *i;
            av->attrib()->inc_spec(num_succs-1);
            av->attrib()->set_global();
            av->attrib()->mult_shp(mult);
        }
    }
    if(num_preds > 1) {
        for(i=_avs.begin(); i!=_avs.end(); i++) {
            AV *av = *i;
            av->attrib()->inc_join(num_preds-1);
            av->attrib()->set_global();
        }
    }
    for(i=_avs.begin(); i!=_avs.end(); i++) {
        AV *av = *i;
        av->attrib()->set_global();
    }
    if(edge->Dest()->Is_Region()) {
        for(i=_avs.begin(); i!=_avs.end(); i++) {
            AV *av = *i;
            av->attrib()->set_cross_region();
        }
    }
}

void AV_list::make_null(void)
{
    for(iterator i=begin(); i!=end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
        _avs.erase(i);
    }
}

void AV_list::filter(reg_tn_set& lives, OP* op)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        if(OP_store(op) && OP_load(av->op())) {
            BOOL definite;
            if(!AV::mem_dep(op, av->op(), &definite)) {
                av->attrib()->set_over_store();
            }
        }

        if(av->is_dependent_on(op)) {
            if(!av->forward_substitution(op)) {
                CXX_DELETE(av, EPS::current_eps_mempool());
                _avs.erase(i);
            } else {
                BOOL ret;
                _avs.erase(i);
                ret = insert_av(lives, av);
                av->attrib()->set_substitute();
                av->attrib()->set_unifying_substitute();
            }
        }
        // 2006.12.12 exploiting predicate
        if(av->attrib()->pred()!=NULL && OP_results(op)==2) {
            TN* pred = av->attrib()->pred();
            TN* r1 = OP_result(op,0);
            TN* r2 = OP_result(op,1);
            if(r1==pred || r2==pred) {
                if(EPSDBG(1) && pred!=NULL) {
                    fprintf(EPSLOG, "remove pred for ");
                    eps_print_asm(EPSLOG, av->op(), NULL);
                }
                av->attrib()->set_pred(NULL, TRUE);
            }
        }
        if(OP_results(op)==2) {
            // 2009.04
            TN* r1 = OP_result(op,0);
            TN* r2 = OP_result(op,1);
            if(r1) av->attrib()->not_live_predicates[TN_number(r1)] = r1;
            if(r2) av->attrib()->not_live_predicates[TN_number(r2)] = r2;
        }
    }
}

void AV_list::filter_by_region(REGIONAL_CFG_NODE* rgn_node)
{
    Region_attribute* rgn_attrib =
        EPS::current_eps_driver()->get_region_attrib(rgn_node->Region_Node());

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "filtering by region %d:\n", rgn_node->Id());
        fprintf(EPSLOG, "def set:");
        TN_SET_Print(rgn_attrib->get_def_set(), EPSLOG);
        fprintf(EPSLOG, "\nuse set:");
        TN_SET_Print(rgn_attrib->get_use_set(), EPSLOG);
        fprintf(EPSLOG, "\n");
        if(rgn_attrib->contain_st()) fprintf(EPSLOG, "contain st\n");
        if(rgn_attrib->contain_call()) fprintf(EPSLOG, "contain call\n");
        if(rgn_attrib->cross()) fprintf(EPSLOG, "cross\n");
        else fprintf(EPSLOG, "no cross\n");
    }

    REGION_TYPE type = rgn_node->Region_Node()->Region_Type();
    if((type==SEME || type==LOOP) && rgn_attrib->cross()) {
        for(iterator i=begin(); i!=end(); i++) {
            AV* av = *i;
            OP* op = av->op();
            if(av->is_dependent_on(rgn_attrib)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
//            } else if((OP_code(op)>=TOP_cmp_eq && OP_code(op)<=TOP_cmp4_i_ltu_unc) || (OP_code(op)>=TOP_cmp_eq_orcm && OP_code(op)<=TOP_cmp4_i_geu_unc) || (OP_code(op)>=TOP_cmp_lt_and && OP_code(op)<=TOP_cmp4_ge_and_orcm)) {
//                CXX_DELETE(*i, EPS::current_eps_mempool());
//                _avs.erase(i);
            } else {
                // 2008.11.07
                if(OP_load(op) && rgn_attrib->contain_st()) {
                    // Load op crosses a region with store op.
                    av->attrib()->set_over_store();
                }
            }
        }
    } else {
        for(iterator i=begin(); i!=end(); i++) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }
}

void AV_list::filter_branch()
{
    for(iterator i=begin(); i!=end(); i++) {
        if(OP_br((*i)->op())) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }
}

void AV_list::filter_by_issue_cycle(EPS_SIM_STATE* sim_state)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        OP avop = *(av->op());
        // 2006.12.14
        if(av->attrib()->pred()!=NULL) {
            Set_OP_opnd(&avop, OP_PREDICATE_OPND, av->attrib()->pred());
            if(!sim_state->Issue_OP(&avop, FALSE)) {
                av->attrib()->set_pred(NULL, TRUE);
                Set_OP_opnd(&avop, OP_PREDICATE_OPND, True_TN);
            } else {
                continue;
            }
        }

        if(!sim_state->Issue_OP(&avop, FALSE)) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "AV set after filter_by_issue_cycle :\n");
        print(EPSLOG);
    }
}
void AV_list::filter_by_issue_cycle_at_bb_bottom(EPS_SIM_STATE* sim_state, OP* br)
{
//*
    EPS_ASSERT(OP_br(br), "must be br instruction followed");

    for(iterator i=begin(); i!=end(); i++) {
        EPS_SIM_STATE local_sim_state = *sim_state;
        AV* av = *i;
        OP avop = *av->op();

        //fprintf(EPSLOG, "check av: ");
        eps_print_asm(EPSLOG, &avop, NULL);

        if(av->attrib()->pred()!=NULL) {
            Set_OP_opnd(&avop, OP_PREDICATE_OPND, av->attrib()->pred());
            if(!local_sim_state.Issue_OP(&avop, TRUE)) {
                av->attrib()->set_pred(NULL, TRUE);
                Set_OP_opnd(&avop, OP_PREDICATE_OPND, True_TN);
            }
            local_sim_state = *sim_state;
        }

        if(!OP_br(&avop) || !av->attrib()->is_local()) {
            if(!local_sim_state.Issue_OP(&avop, TRUE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
                //fprintf(EPSLOG, "del 0\n");
                continue;
            }
            if(!local_sim_state.Issue_OP(br, FALSE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
                //fprintf(EPSLOG, "del 1\n");
            }
        } else {
            if(!local_sim_state.Issue_OP(&avop, FALSE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
                //fprintf(EPSLOG, "del 2\n");
            }
        }
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "AV set after filter_by_issue_cycle with br:\n");
        print(EPSLOG);
    }
//*/
/*
    for(iterator i=begin(); i!=end(); i++) {
        EPS_SIM_STATE local_sim_state = *sim_state;
        AV* av = *i;

        if(!av->attrib()->is_local()) {
            if(!local_sim_state.Issue_OP(av->op(), TRUE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
                continue;
            }
            if(!local_sim_state.Issue_OP(br, FALSE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
            }
        } else {
            if(!local_sim_state.Issue_OP(av->op(), FALSE)) {
                CXX_DELETE(*i, EPS::current_eps_mempool());
                _avs.erase(i);
            }
        }
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "AV set after filter_by_issue_cycle with fence_boundary:\n");
        print(EPSLOG);
    }
*/
}

void AV_list::filter_by_heuristics(int int_reg_pressure, int float_reg_pressure)
{
    for(iterator i=begin(); i!=end(); i++) {
        BOOL del = FALSE;

        AV* av = *i;
        AV_attribute* attrib = av->attrib();

        if(attrib->is_local()) {
            // 2008.08.08 jaemok skip local
            // when bookkeepings make some instrs scheduled several times
            // even if it is local, they are considered to be cicm.
            continue;
        }

        bool critical = ((av->op()->eps_flags & (OP_EPS_IN_CRITICAL)) != 0);
        bool hotload =((av->op()->eps_flags & (OP_EPS_HOT_LOAD | OP_EPS_HOT_LOAD_RELATED)) != 0);
        bool important = ((av->op()->importance >8000));

        if(hotload) {
            if(attrib->join()>eps_option::hl_join()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "hhl-1\n");
            } else if(attrib->iteration()>eps_option::hl_cicm()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "hhl-3\n");
            } else if((!OP_load(av->op())) && (attrib->spec()-attrib->iteration())>eps_option::hl_spec()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "hhl-4\n");
            }
        } else {
            if(0 && attrib->join()>0) {
                del = TRUE;
            } else if(attrib->join()>0 && attrib->spec()>0 && (av->op()->eps_flags&OP_EPS_BOOKKEEPING)!=0) {
                // 2010.02.27
                // do not allow spec_join for already bookkeeped code
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "h-0\n");
#if !MORE_CODEMOTION
            } else if(attrib->join()>eps_option::join() || ((!critical) && EPS::current_eps_driver()->bad_join(attrib->get_joins(), av->op()))) {
#else
            } else if(attrib->join()>eps_option::join()) {
#endif
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "h-1\n");
            } else if((attrib->join()>0) && (attrib->ddg_node()==NULL || attrib->ddg_node()->Length()<=3)) {
                // 2008.09.30 jaemok
                //            del = TRUE;
                //            if(EPSDBG(1)) fprintf(stderr, "h-2\n");
            } else if(attrib->iteration()>eps_option::cicm()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "h-3\n");
            } else if((!OP_load(av->op())) && (attrib->spec()-attrib->iteration())>eps_option::spec()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "h-4\n");
            } else if(attrib->shp()<eps_option::shp()) {
                del = TRUE;
                if(EPSDBG(1)) fprintf(stderr, "h-5\n");
//            } else if(attrib->get_int_pressure()+int_reg_pressure > 32) {
//                del = TRUE;
//                fprintf(stderr, "int pressure overflow\n");
//            } else if(attrib->get_float_pressure()+float_reg_pressure > 16) {
//                fprintf(stderr, "float pressure overflow\n");
//                del = TRUE;
            }
        }

        if(del) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "AV set after filter_by_heuristic :\n");
        print(EPSLOG);
    }
}

//sylee 081005
void AV_list::filter_by_hot_load(void)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        AV_attribute* attrib = av->attrib();
        DDG_Node* node = attrib->ddg_node();

        if(attrib->is_local()) {
            continue;
        }

//      if(EPSDBG(1)) fprintf(EPSLOG, "hotnode check\n");
/*
        if(node == NULL || !node->is_hot_node()){
  //        if(EPSDBG(1)) fprintf(EPSLOG, "this node is not hot node\n");
            CXX_DELETE(*i, EPS::current_eps_mempool());                        
            _avs.erase(i); 
        }
*/
        if((av->op()->eps_flags & (OP_EPS_HOT_LOAD | OP_EPS_HOT_LOAD_RELATED)) == 0) {
            CXX_DELETE(*i, EPS::current_eps_mempool());                        
            _avs.erase(i); 
        }
    }


	/*        DDG* _ddg = EPS::current_eps_driver()->get_ddg();
	char buf[30];
	if (_ddg ==NULL){
		if(EPSDBG(1)) fprintf(stderr, "ddg is NULL\n");
	}
	else{
	for (iterator i = begin(); i !=end(); i ++){
		OP* op = (*i)->op();
                if(EPSDBG(1)) {
			
	                eps_print_TN(OP_result(op, 0), op, buf, 0, -1);	
			fprintf(stderr, "%s\n", buf);
		}
		       
		DDG_Node* _ddg_node = _ddg->Find(op);
		if (_ddg_node == NULL){
	              if(EPSDBG(1)) fprintf(stderr, "ddg node  is NULL\n");
		
		}
		else {
		if (!_ddg_node->is_hot_node()){
			CXX_DELETE(*i, EPS::current_eps_mempool());
			_avs.erase(i);
			
		}
		}
	
	}
	}*/	
	 if(EPSDBG(1)) {
	           fprintf(EPSLOG, "AV set after filter_by_hotload :\n");
	            print(EPSLOG);
	  }
}


void AV_list::filter_global(void)
{
    EPS* eps = EPS::current_eps_driver();
    REGION* rgn = eps->current_region();
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = (*i);
        AV_attribute* attrib = av->attrib();
        OP* op = av->op();

        BOOL del = FALSE;

        if(!attrib->is_local() && OP_br(op)) {
            if(EPSDBG(1)) fprintf(stderr, "7-5\n");
    		del = TRUE;
        }
//        if(attrib->cross_region()>1) {
//            if(EPSDBG(1)) fprintf(stderr, "1\n");
//            del = TRUE;
//        }

        // 2009.03.06 jaemok
//        if(!attrib->is_local() && OP_flop(op)) {
//            if(EPSDBG(1)) fprintf(stderr, "6-5\n");
//    		del = TRUE;
//        }
        if(!attrib->is_local() && (!OP_load(op)) && OP_flop(op)) {
            if(EPSDBG(1)) fprintf(stderr, "6-5\n");
    		del = TRUE;
        }


// 2007.07.28 jaemok
//        if(!attrib->is_local() && OP_store(op)) {
//            del = TRUE;
//        }
        if(attrib->spec()>0 && OP_store(op)) {
            if(EPSDBG(1)) fprintf(stderr, "7-4\n");
            del = TRUE;
        }

        // 2007/08/09
#if !(EPS_SPECLOAD || EPS_SPECLOAD2)
        if(!attrib->is_local() && OP_load(op) && (!CGTARG_Is_OP_Speculative_Load(op))) {
            if(EPSDBG(1)) fprintf(stderr, "g-1\n");
            del = TRUE;
        }
#endif

//        if(!attrib->is_local() && OP_load(op)) {
//            del = TRUE;
//        }
        if(!attrib->is_local()) {
            if(OP_chk(op)) del = TRUE;
            if(OP_code(op)==TOP_chk_s_i) del = TRUE;
            if(OP_code(op)==TOP_chk_s_m) del = TRUE;
            if(OP_code(op)==TOP_chk_s) del = TRUE;
            if(OP_code(op)==TOP_chk_a) del = TRUE;
//            if(OP_code(op)>=TOP_cmp_eq && OP_code(op)<=TOP_cmp4_i_ltu_unc) del = TRUE;
//            if(OP_code(op)>=TOP_cmp_eq_orcm && OP_code(op)<=TOP_cmp4_i_geu_unc) del = TRUE;
//            if(OP_code(op)>=TOP_cmp_lt_and && OP_code(op)<=TOP_cmp4_ge_and_orcm) del = TRUE;

/*
            int i;
            for(i=0; i<OP_results(op); i++) {
                TN *rtn = OP_result(op, i);
                if(TN_is_register(rtn)) {
                    if(TN_is_save_reg(rtn) || TN_is_sp_reg(rtn) || TN_is_gp_reg(rtn)) del = TRUE;
                }
            }
            for(i=0; i<OP_opnds(op); i++) {
                TN *otn = OP_opnd(op, i);
                if(TN_is_register(otn)) {
                   if(TN_is_save_reg(otn) || TN_is_sp_reg(otn)) del = TRUE;
                }
            }
*/
        }

#if (EPS_SPECLOAD || EPS_SPECLOAD2)
//        if(OP_load(op) && (!attrib->is_local()) && (eps->get_region_attrib(rgn)->contain_call() /* || attrib->join()>0 ||*/ /*(attrib->cross_region()>=1) || (attrib->distance()<=5)*/)) {
//            if(EPSDBG(1)) fprintf(stderr, "4-1\n");
//            del = TRUE;
//        }

/*
        // 2005.03.03
        if(OP_load(op) && (attrib->spec()>0 || attrib->over_store())) {
            int i;
            for(i=0; i<OP_results(op); i++) {
                TN* opnd = OP_result(op, i);
                if(OP_Refs_TN(op, opnd)) {
                    del = TRUE;
                }
            }
        }
*/


// 2009/02/15 jaemok
        bool critical = ((av->op()->eps_flags & (OP_EPS_IN_CRITICAL)) != 0);
        bool hotload =((op->eps_flags & (OP_EPS_HOT_LOAD | OP_EPS_HOT_LOAD_RELATED)) != 0);
        bool important = ((av->op()->importance >8000));
        if(hotload) {
            // op is related to the hot load.
            if(OP_load(op) && (attrib->spec() > eps_option::hl_spld())) {
                if(EPSDBG(1)) fprintf(stderr, "hl-2\n");
                del = TRUE;
            }
            if(OP_load(op) && attrib->over_store() && (!eps_option::advanced_load())) {
                if(EPSDBG(1)) fprintf(stderr, "hl-3\n");
                del = TRUE;
            }
//            if(OP_load(op) && OP_Is_Float_Mem(op) && (attrib->over_store() || (!attrib->is_local()))) {
//                if(EPSDBG(1)) fprintf(stderr, "hl-4-4\n");
//                del = TRUE;
//            }
        } else {
            // op is not related to the hot load.
            // op is not in critical path.
#ifdef OPTIMIZE_EPS
            if(EPS_use_ddg_control) {
              if(OP_load(op) && attrib->spec()>0 && (attrib->spec() > eps_option::specload() || (attrib->ddg_node()->Length() <= 1) )) {
                  if(!attrib->_b_hoist_without_speculation) {
                      if(EPSDBG(1)) fprintf(stderr, "4-2\n");
                      del = TRUE;
                  }
              }
            } else if(OP_load(op) && attrib->spec()>0 && (attrib->spec() > eps_option::specload())) {
                  if(!attrib->_b_hoist_without_speculation) {
                      if(EPSDBG(1)) fprintf(stderr, "4-2\n");
                      del = TRUE;
                  }
            }
            if(OP_load(op) && attrib->over_store()) {
                if(!attrib->_b_hoist_without_speculation) {
                    if(EPSDBG(1)) fprintf(stderr, "4-3\n");
                    del = TRUE;
                }
            }

            if(OP_load(op) && OP_Is_Float_Mem(op) && (attrib->over_store() || (!attrib->is_local()))) {
                if(EPSDBG(1)) fprintf(stderr, "4-4\n");
                del = TRUE;
            }
#else
            if(OP_load(op) && /*!CGTARG_Is_OP_Speculative_Load(op)) && */(attrib->spec()>0) && (attrib->spec() > eps_option::specload())) {
                if(EPSDBG(1)) fprintf(stderr, "4-5\n");
                del = TRUE;
            }
            if(OP_load(op) && /*!CGTARG_Is_OP_Speculative_Load(op)) && */attrib->over_store() && (!eps_option::advanced_load())) {
                if(EPSDBG(1)) fprintf(stderr, "4-6\n");
                del = TRUE;
            }

            if(OP_load(op) && OP_Is_Float_Mem(op) && (attrib->over_store() || (!attrib->is_local()))) {
                if(EPSDBG(1)) fprintf(stderr, "4-7\n");
                del = TRUE;
            }
#endif
        }
#else
        if(!attrib->is_local() && OP_load(op)) {
//        } else if(OP_load(op) && attrib->spec()>0) {
            if(EPSDBG(1)) fprintf(stderr, "4-8\n");
            del = TRUE;
        }
#endif

        // 2004.11.12
        // I really did not want to do this...
        // this is bug fixing by "special" case.
        // I don't know where this bug came from...
        // I'm going to fix bugs which I don't know the reason by this way.
        if(eps_option::bug_no_cicm && attrib->iteration()>0) {
            if(EPSDBG(1)) fprintf(stderr, "7-3\n");
    		del = TRUE;
        }
        if(eps_option::bug_no_spld && (!attrib->is_local()) && OP_load(op)) {
            if(EPSDBG(1)) fprintf(stderr, "6-3\n");
    		del = TRUE;
        }
        if(eps_option::bug_no_advld && (attrib->over_store()) && OP_load(op)) {
	       if(EPSDBG(1)) fprintf(stderr, "6-1\n");
    		del = TRUE;
        }
        if(eps_option::bug_no_substitute && attrib->substitute()) {
            if(EPSDBG(1)) fprintf(stderr, "6-2\n");
            del = TRUE;
        }


//        } else if(!attrib->cross_region() && (OP_copy(op) || OP_code(op)==TOP_mov || OP_code(op)==TOP_mov_i)) {
//            del = TRUE;
//        }

        // 2008.11.17
        if(attrib->join()>0 && (OP_copy(op) || OP_code(op)==TOP_mov || OP_code(op)==TOP_mov_i)) {
            del = TRUE;
        }

        if(attrib->iteration()>0) {
            // 2004.07.02
            // there are some region which are not allowed CICM
            // because of correctness problem...
            EPS* eps = EPS::current_eps_driver();
            if(!eps->get_region_attrib(eps->current_region())->cicm_allowed()) {
                if(EPSDBG(1)) fprintf(stderr, "5-1\n");
                del = TRUE;
            }

            // 2010.02.28
            // if loop entry and preheader is critical edge,
            // do not allow cicm for load operations.
            if(OP_load(op) && eps->IsCriticalEdgeEntryRegion(eps->current_region()->Id())) {
                if(EPSDBG(1)) fprintf(stderr, "5-critical-edge-load\n");
                del = TRUE;
            }

#ifdef OPTIMIZE_EPS
            // 2004/11/07
            // no cicm for copies.
            if(OP_copy(op) || OP_code(op)==TOP_mov || OP_code(op)==TOP_mov_i) {
                if(EPSDBG(1)) fprintf(stderr, "5-2\n");
                del = TRUE;
            }
#endif

            // 2004/11/08
            // no cicm for fetch
            if(OP_prefetch(op)) {
                if(EPSDBG(1)) fprintf(stderr, "5-3\n");
                del = TRUE;
            }

            int i;
//            for(i=0; i<OP_results(op); i++) {
//                if(TN_is_register(OP_result(op,i)) && (!TN_is_true_pred(OP_result(op,i))) && (!TN_is_zero_reg(OP_result(op,i))) && TN_is_dedicated(OP_result(op, i))) {
//                    del = TRUE;
//                    break;
//                }
//            }
//            for(i=0; i<OP_opnds(op); i++) {
//                if(TN_is_register(OP_opnd(op,i)) && (!TN_is_true_pred(OP_opnd(op,i))) && (!TN_is_zero_reg(OP_opnd(op,i))) && TN_is_dedicated(OP_opnd(op, i))) {
//                    del = TRUE;
//                    break;
//                }
//            }
        }

        // 2006/11/23 No speculative duplications. no spec_join
//        if(attrib->join()>0 && attrib->spec()-attrib->iteration()>0) {
//            del = TRUE;
//        }

#ifdef OPTIMIZE_EPS
if(EPS_use_ddg_control) {
        // 2007.06.05
//        if(attrib->ddg_node()==NULL || attrib->ddg_node()->MaxLength()<=1.0) {
//            if(EPSDBG(1)) fprintf(stderr, "6-6\n");
//    		if(attrib->join()>0) del = TRUE;
//        }
//        if(attrib->ddg_node()==NULL || attrib->ddg_node()->MaxLength()<1.0) {
//            if(EPSDBG(1)) fprintf(stderr, "6-7\n");
//            if(attrib->iteration()>0) del = TRUE;
//            if(!attrib->is_local()) del = TRUE;
//        }
}
#endif
        // 2007.03.14
	// 2008.08.22 We comment this filter out.
	// in order to make load in bzip2 compressStream region 5 be scheduled well.
	// But it may make other problem in other benchmark.
//        if(attrib->unifying_substitute() && attrib->join()>0) {
//		if(EPSDBG(1)) fprintf(stderr, "6-8\n");
//    		del = TRUE;
//        }

        // 2007.04.02
        if((!attrib->is_local()) && attrib->unifying_conditions()) {
		if(EPSDBG(1)) fprintf(stderr, "6-9\n");
    		del = TRUE;
        }

        // 2007.03.15
        // Damn I had to... it's because of Open64 bug.
        // crafty init.c InitializeAttackBoards RGN_id:54
        if(attrib->iteration()>0 && OP_code(op)==TOP_shr_u) {
		if(EPSDBG(1)) fprintf(stderr, "7-1\n");
    		del = TRUE;
        }


        // 2006/12/15
        if(attrib->join()>0 && OP_results(op)>1) {
            if(EPSDBG(1)) fprintf(stderr, "7-2\n");
    		del = TRUE;
        }

#if !MORE_CODEMOTION
        if((attrib->spec_join()-attrib->iteration())>0) {
            if(EPSDBG(1)) fprintf(stderr, "6\n");
            del = TRUE;
        }
        if(!attrib->is_local() && (op->eps_flags&OP_EPS_RENAME_COPY)) {
            if(EPSDBG(1)) fprintf(stderr, "7\n");
            del = TRUE;
        }
        if(attrib->join()>0) {
            join_set js = attrib->get_joins();

            join_set::iterator jit;
            for(jit=js.begin(); jit!=js.end(); jit++) {
                BB* b = (*jit).first;
                BBLIST* bps = NULL;
                FOR_ALL_BB_PREDS(b, bps) {
                    BB* bp = BBLIST_item(bps);
                    if(EPS::current_eps_driver()->is_new_bb(BB_id(bp))) {
//                        del = TRUE;
                        break;
                    }
                }
                if(del) break;
            }
        }
#endif

        if(del) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }

    if(EPSDBG(1)) {
        fprintf(EPSLOG, "AV set after filter_global :\n");
        print(EPSLOG);
    }
}

void AV_list::update_reg_pressure(OP* op)
{
    for(iterator i=begin(); i!=end(); i++) 
    {
        AV_attribute* attrib = (*i)->attrib();
        attrib->update_reg_pressure(op);
    }
}

void AV_list::calculate_reg_pressure(void)
{
    for(iterator i=begin(); i!=end(); i++) 
    {
        AV_attribute* attrib = (*i)->attrib();
        attrib->calculate_reg_pressure();
    }
}


void AV_list::add_predicate(TN* pred, BOOL taken)
{
    if(!eps_option::exploit_predicate()) return;

    if(pred==NULL) return;

    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        AV_attribute* attrib = av->attrib();
        if(!OP_has_predicate(av->op()))  continue;
        if(!OP_load(av->op())) continue;

        TN* previous_predicate = OP_opnd(av->op(), OP_PREDICATE_OPND);
        if(previous_predicate==True_TN) {
            if(EPSDBG(1)) {
                fprintf(EPSLOG, "add predicate");
                eps_print_asm(EPSLOG, av->op(), NULL);
            }

            attrib->set_pred(pred, taken);
        }

        attrib->product_of_predicates[TN_number(pred)] = pred;    // 2009.04
    }
}

void AV_list::inc_distance(void)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV_attribute* attrib = (*i)->attrib();
        attrib->inc_distance();
    }
}

BOOL AV_list::has_same_rhs(RHS_set* rhs)
{
    for(RHS_set::iterator rit=rhs->begin(); rit!=rhs->end(); rit++) {
        OP* op = (*rit)->op();
        for(iterator i=begin(); i!=end(); i++) {
            if((*i)->is_equal(op)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

BOOL AV_list::has_same_rhs(OP* op)
{
    for(iterator i=begin(); i!=end(); i++) {
        if((*i)->is_equal(op)) {
            return TRUE;
        }
    }
    return FALSE;
}

void AV_list::remove(RHS_set* rhs)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        if(rhs->has_same_rhs(av->op())) {
            CXX_DELETE(av, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }
}

void AV_list::remove(OP* op)
{
    for(iterator i=begin(); i!=end(); i++) {
        AV* av = *i;
        if(av->is_unifiable(op)) {
            CXX_DELETE(av, EPS::current_eps_mempool());
            _avs.erase(i);
        }
    }
}

void RHS_set::print(FILE* fp)
{
    RHS_SET::iterator it;
    if(fp==NULL) fp = stderr;
    for(it=_rhs.begin(); it!=_rhs.end(); it++) {
        (*it)->print(fp);
    }
}

void AV_list::print(FILE* fp)
{
    for(iterator it=begin(); it!=end(); it++) {
        AV* av = *it;
        av->print(fp);
    }
}

void AV_list::debug_print(void)
{
    print(stderr);
}

void AV_list::apply_resolved_control_dependent_predicate_map(void)
{
    std::map<int,int>& resolved_control_dependent_predicate_map = EPS::current_eps_driver()->control_dependent_predicate_map;
    for(iterator it=begin(); it!=end(); it++) {
        AV* av = *it;
        reg_tn_map& product = av->attrib()->product_of_predicates;
        int old_product_size = product.size();
        std::set<int> set_to_remove;
        for(reg_tn_map::iterator it = product.begin(); it!=product.end(); it++) {
            int nTN = it->first;
            std::map<int,int>::iterator it_rcdpm = resolved_control_dependent_predicate_map.find(nTN);
            if(it_rcdpm!=resolved_control_dependent_predicate_map.end()) {
                int consequence1 = it_rcdpm->first;
                int consequence2 = it_rcdpm->second;
                if(product.find(consequence2)!=product.end()) {
                    set_to_remove.insert(consequence2);
                }
            }
        }
        for(std::set<int>::iterator it2=set_to_remove.begin(); it2!=set_to_remove.end(); it2++) {
            product.erase(*it2);
        }
        int new_product_size = product.size();

        if(old_product_size>=2 && new_product_size<old_product_size) {
            av->print(EPSLOG);
            fprintf(EPSLOG, "predicate reduced from %d to %d where spec=%d", old_product_size, new_product_size, av->attrib()->spec()+(av->attrib()->pred()!=NULL?1:0));
            if(new_product_size==1) {
                TN* tn = product.begin()->second;
                reg_tn_map::iterator it = av->attrib()->not_live_predicates.find(TN_number(tn));
                if(it==av->attrib()->not_live_predicates.end()) {
                    fprintf(EPSLOG, " with live predicate %d", TN_number(tn));
                    if(old_product_size==av->attrib()->spec()+(av->attrib()->pred()!=NULL?1:0)) {
                        fprintf(EPSLOG, " can be hoisted without being speculated.");
                        if(eps_option::exploit_predicate2()>1) {
                            av->attrib()->_b_hoist_without_speculation = TRUE;
                            av->attrib()->set_pred(tn, TRUE);
                        }
                    }
                }
            }
            fprintf(EPSLOG, "\n");
        }
    }
}

