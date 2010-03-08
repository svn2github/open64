#include "eps.h"

// convert simulated op by given UNIT property. If m_unit , set flags.
void eps_Convert_Simulated(OP *op, ISA_EXEC_UNIT_PROPERTY prop)
{       
    TOP adjust_top = CGTARG_Simulated_Top(op, prop);
    OP_Change_Opcode(op, adjust_top);
    if (prop == ISA_EXEC_PROPERTY_M_Unit) {
        Set_OP_m_unit(op);
    } else {
        Reset_OP_m_unit(op);
    }   
}

BOOL EPS::Is_OP_Dependent(OP *op, OP *prev_op)
{
  INT j;

  if (CGTARG_Dependence_Required(prev_op, op)) {
      //fprintf(EPSLOG, "iod-1\n");
      return TRUE;
  }

//#if EPS_ADVLOAD
  if (current_eps_driver()->get_spec_lds()->chk_op_anti_dependent(op, prev_op)) {
      //fprintf(EPSLOG, "iod-2\n");
      return TRUE;
  }
//#endif

  for (j = 0; j < OP_results(prev_op); ++j) {
    TN *result_tn = OP_result(prev_op, j);
    ISA_REGISTER_CLASS cl = TN_register_class(result_tn);

    //fprintf(EPSLOG, "%d %d %d %d\n", OP_Refs_TN (op, result_tn), CGTARG_OP_Refs_TN (op, result_tn), OP_Defs_TN (op, result_tn), CGTARG_OP_Defs_TN (op, result_tn));

    BOOL read_dependence =
      OP_Refs_TN (op, result_tn) || CGTARG_OP_Refs_TN (op, result_tn);

    BOOL write_dependence =
      OP_Defs_TN (op, result_tn) || CGTARG_OP_Defs_TN (op, result_tn);

    if (read_dependence || write_dependence) {

      // Exclude specific cases here.
      // (1) Ignore dependence between an integer compare operation
      // which sets the predicate and the branch operation which uses
      // the same predicate.

      if (OP_icmp(prev_op) && TOP_is_xfer(OP_code(op))) {

	TN *tn1, *tn2;
	OP *cmp_op;
	
	CGTARG_Analyze_Compare(op, &tn1, &tn2, &cmp_op);
	if (prev_op == cmp_op) continue;

        // add one special case; 
        // if we caring for predicate compare. 
        // CGTARG_Analyze_Compare return cmp_op as null;
        // but when prev_op just condition op it always 
        // donot have any dependency between prev_op and op
        // Such as:
        // (p6) cmp P7,P8 = r3, r4
        // (p7) br.cond _Lt.1.8
        // always can be put into one bundle
        if (read_dependence && OP_cond_def(prev_op) && !cmp_op) continue;
	
	if (read_dependence) continue; //cmp-branch always can be same bundle
      }

      // (2) Ignore all dependences originating from p0 predicate.
      if (TN_is_true_pred(result_tn)) continue;

      // (3) Ignore dependences originating from exclusive predicates
      // if (OP_has_disjoint_predicate(prev_op, op)) continue;

      // (4) If a STOP bit already exists in the bundle for that specific
      // position, then the dependence can be relaxed.
      // if (TI_BUNDLE_stop_bit(bundle, i)) continue;

      // (5) A check load and a subsequent instruction that reads the
      // target of the check load may exist in the same instruction group.
      if (read_dependence && CGTARG_Is_OP_Check_Load(prev_op)) continue;

      // (6) mov TOBR, br B0
      if (read_dependence && OP_code(prev_op)==TOP_mov_t_br && OP_xfer(op)) continue;
      //fprintf(EPSLOG, "iod-3 ");
      //eps_print_asm(EPSLOG, op, 0);
      return TRUE;
    }
  }

  return FALSE;
}

BOOL EPS_SIM_STATE::Copy_Issue_Ops(EPS_SIM_STATE* _stat)
{
    if(EPSDBG(1)){
        fprintf(EPSLOG, "copy sim_state\n");
    }
	
    for(ISSUED_OPS::iterator it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
        issued_op io;
        io.op = (*it).op;
        io.remain_latency = (*it).remain_latency;//TSI_Result_Available_Time(OP_code((*it).op), 0);
        _stat->_issued_ops.push_back(io);
    }
    return TRUE;
}
 


BOOL EPS_SIM_STATE::Issue_OP(OP* op, BOOL commit)
{
    INT i, length;
    SI_RR rr;
    SI_RRW rrw_after_issue;

    //sylee 080903
	char buf [256];   
 
   /* 
    if(commit) {
        ISSUED_OPS::iterator it;
        fprintf(EPSLOG, "issued ops:\n");
        for(it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
            fprintf(EPSLOG, "remain_latency: %d", it->remain_latency);
            eps_print_asm(EPSLOG, it->op, NULL);
        }
        fprintf(EPSLOG, "issued ops ends:\n");
    }
    */
    
    // 1. check the status of resource usage
    rr = TSI_Resource_Requirement(OP_code(op));
    length = SI_RR_Length(rr);

    EPS_ASSERT(length<=1, "Semaphore instructions are not considered...-_-;\n");

    BOOL bHasOverUse = FALSE;
    if(length==1) {
        rrw_after_issue = SI_RRW_Reserve(_cur_resource, SI_RR_Cycle_RRW(rr,0));
        if(SI_RRW_Has_Overuse(rrw_after_issue)) {
            bHasOverUse = TRUE;
            return FALSE;
        }
    }

    ISSUED_OPS::iterator it;
    /*
    if(bHasOverUse) {
        fprintf(EPSLOG, "has overuse\n");
        BOOL bHasSameOp = FALSE;
        if(TSI_Result_Available_Time(OP_code(op), 0)>1) {
            RHS r1(op);
            for(it =_issued_ops.begin(); it!=_issued_ops.end(); it++) {
                //if(TSI_Result_Available_Time(OP_code(op), 0)>1) {
                    fprintf(EPSLOG, "long ops compare\n");
                    eps_print_asm(EPSLOG, op, 0);
                    eps_print_asm(EPSLOG, it->op, 0);
                    if(r1.is_equal(it->op)) {
                        bHasSameOp = TRUE;
                    }
                //}
            }
        }
        if(!bHasSameOp) {
            return FALSE;
        }
    }
    */

    // 2. check the dependency with previously issued instructions.
    RHS r1(op);
    for(it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
        OP* issued_op = (*it).op;
        if(_can_overcome_copy && OP_copy(issued_op)) {
            if(!TN_is_true_pred(OP_opnd(issued_op, 0))) {
                if(EPS::Is_OP_Dependent(op, issued_op)) {
                    //fprintf(EPSLOG, "id-1\n");
                    return FALSE;
                }
            }
        } else {
            if(!r1.is_equal(issued_op)) {
                if(EPS::Is_OP_Dependent(op, issued_op)) {
                    //fprintf(EPSLOG, "id-2: ");
                    //eps_print_asm(EPSLOG, issued_op, 0);
                    return FALSE;
                }
            }
        }
    }

    // 3. check for xfer(br, call, ret, etc) ops.
    //    if there is already xfer op, only xfer op can be issued.
    //    other ops, which is scheduled after xfer op, are considered as spec motion
    //    by ORC's micro scheduler.
    if(OP_xfer(op)) {
        if(commit) {
            _xfer_issued = TRUE;
        }
    } else {
        if(_xfer_issued) {
            //fprintf(EPSLOG, "id-3\n");
            return FALSE;
        }
    }
    
    if(commit) {
        _cur_resource = rrw_after_issue;
        issued_op io;
        // Now care for simulated op converstion
        if (OP_simulated(op)){
            eps_Convert_Simulated(op, ISA_EXEC_PROPERTY_I_Unit);
        }

        if(_can_overcome_copy) {
            ISSUED_OPS::iterator it;
            for(it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
                OP* issued_op = (*it).op;
                if(OP_copy(issued_op)) {
                    TN* copy_operand = OP_opnd(issued_op, 1);
                    if(OP_Defs_TN(op, copy_operand)) {
                        _can_overcome_copy = FALSE;
                        break;
                    }
                }
            }
        }

        io.op = op;
        io.remain_latency = TSI_Result_Available_Time(OP_code(op), 0);
//08.09.01
        if(OP_load(op)) {
/*
            eps_print_TN(OP_result(op, 0), op, buf, 0, -1);
            if(!strcmp(buf ,"GTN946(r_)")or !strcmp(buf,"TN946(r_)")){
                if(EPSDBG(1)){
                    fprintf(EPSLOG, "%s\n", buf);
                    fprintf(EPSLOG, "load latency %d\n", io.remain_latency);				
                }
                io.remain_latency += 4;
            }
            //io.remain_latency += 8;		
*/
            // 2009/02/15
            if((op->eps_flags & OP_EPS_HOT_LOAD) == OP_EPS_HOT_LOAD) {
                if(EPSDBG(1)) {
                    fprintf(EPSLOG, "long load latency: ");
                    eps_print_asm(EPSLOG, op, NULL);
                    fprintf(EPSLOG, "\n");
                }
                if(!OP_flop(op)) {
                    //io.remain_latency += 4;
                    io.remain_latency += eps_option::hl_latency();
                }
            } else if(eps_option::latency()>1) {
                if(!OP_flop(op)) {
                    io.remain_latency += eps_option::latency();
                }
            }
        }
        _issued_ops.push_back(io);
    }

    return TRUE;
}

BOOL EPS_SIM_STATE::Issue_OP_Stack(OP* op)
{
    INT i, length;
    SI_RR rr;
    SI_RRW rrw_after_issue;

    // 1. check the status of resource usage
    rr = TSI_Resource_Requirement(OP_code(op));
    length = SI_RR_Length(rr);

    EPS_ASSERT(length<=1, "Semaphore instructions are not considered...-_-;\n");

    if(length==1) {
        rrw_after_issue = SI_RRW_Reserve(_cur_resource, SI_RR_Cycle_RRW(rr,0));
        if(SI_RRW_Has_Overuse(rrw_after_issue)) {
            return FALSE;
        }
    }

    // 2. check the dependency with previously issued instructions.
    for(ISSUED_OPS::iterator it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
        if(EPS::Is_OP_Dependent(op, (*it).op)) {
            return FALSE;
        }
    }

    // 3. check for xfer(br, call, ret, etc) ops.
    //    if there is already xfer op, only xfer op can be issued.
    //    other ops, which is scheduled after xfer op, are considered as spec motion
    //    by ORC's micro scheduler.
    if(OP_xfer(op)) {
        _xfer_issued = TRUE;
    } else if(_xfer_issued) {
        return FALSE;
    }
    
    _cur_resource = rrw_after_issue;

    issued_op io;
    io.op = op;
    io.remain_latency = TSI_Result_Available_Time(OP_code(op), 0);
    _issued_ops.push_back(io);

    return TRUE;
}

void EPS_SIM_STATE::Advance_Cycle(void)
{
    if(EPSDBG(1)) fprintf(EPSLOG, "Advance_Cycle\n");
    _xfer_issued = FALSE;
    _cur_resource = SI_RRW_Initial();
    for(ISSUED_OPS::iterator it=_issued_ops.begin(); it!=_issued_ops.end(); it++) {
        INT latency = --((*it).remain_latency);
        if(latency<=0) {
            _issued_ops.erase(it);
        }
    }
}

