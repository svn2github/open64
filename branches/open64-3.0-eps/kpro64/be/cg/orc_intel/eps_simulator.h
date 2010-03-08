#ifndef _EPS_SIMULATOR_H_
#define _EPS_SIMULATOR_H_

#include "ti_si.h"

/*
 * There is 2 issues in simulating EPIC's resource usage and issue cycle
 *
 * 1. resource usage vector: M0,M1,M2,M3,I0,I1,F0,F1,B1,B2,B3
 *    a table describing what FU is being used in "current" cycle is required.
 *    and it is already implememnted in ti_si.h, itanium_mck.c. use SI_RRW
 * 2. latency of instruction: floating point load, add, multiply, and etc has multiple
 *    latencies. the result of an instruction is only available after latency.
 *    this has to be considered, but there seems to be no convenient tool.
 *    I shall make it. but the convenient tool to calculate the latency exists
 *    (TSI_Result_Available_Time).
 */

class EPS_SIM_STATE {
private:
    SI_RRW _cur_resource;

    typedef struct {
        OP* op;
        INT remain_latency;
    } issued_op;
    typedef mempool_allocator<issued_op> ISSUED_OP_ALLOC;
    typedef std::list<issued_op, ISSUED_OP_ALLOC> ISSUED_OPS;

    ISSUED_OPS _issued_ops;
    BOOL _xfer_issued;

    // 2005.02.02
    BOOL _can_overcome_copy;
public:
    EPS_SIM_STATE() : _issued_ops(ISSUED_OP_ALLOC(EPS::current_eps_mempool())) {
        _cur_resource = SI_RRW_Initial();
        _xfer_issued = FALSE;
        _can_overcome_copy = TRUE;
    }
    EPS_SIM_STATE(EPS_SIM_STATE& state) : _issued_ops(ISSUED_OP_ALLOC(EPS::current_eps_mempool())) {
        _cur_resource = state._cur_resource;
        _issued_ops = state._issued_ops;
        _xfer_issued = state._xfer_issued;
        _can_overcome_copy = state._can_overcome_copy;
    }
    BOOL EPS_SIM_STATE::Copy_Issue_Ops(EPS_SIM_STATE* _sim_stat);
    BOOL Issue_OP(OP* op, BOOL commit = FALSE);
    BOOL Issue_OP_Stack(OP* op);    // stack this op to simulator, but no commit
    void Advance_Cycle(void);
};

#endif
