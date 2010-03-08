#include "eps.h"

#include "tag.h"
#include "glob.h"
#include "gtn_tn_set.h"
#include "file_util.h"
#include "symtab.h"
#include "ti_si.h"
#include "targ_isa_registers.h"
#include "targ_isa_operands.h"

FILE* EPSLOG = stderr;
char current_routine_name[256];

typedef vector<REGIONAL_CFG_NODE*,NODE_ALLOC>  NODE_VECTOR;
typedef NODE_VECTOR::iterator                  NODE_VECTOR_ITER;

/* ====================================================================
 *
 * visualize_region:
 *  Sub-function: eps_print_TN, eps_print_asm, visualize_node
 *
 * This function is intended for drawing the vcg of a region.
 * Currently, the level has no effect.
 *
 * By BSH
 *
 * ====================================================================
 */
#define NONE        0
#define PREDICATE   1
#define OPCODE      2
#define OPERAND     3
#define SAVE        4

void eps_debug_print_BS(BS* bs)
{
    BS_Print(bs, stderr);
}

int eps_print_TN(TN *tn, const OP *op, char *buf, int result_num, int opnd_num)
{
    int result = NONE;

    if (tn == NULL) {
        buf += sprintf ( buf, "--nil--");
        return result;
    }

    if (TN_is_constant(tn)) {
        if ( TN_has_value(tn)) {
            buf += sprintf ( buf, "#%lld", TN_value(tn) );
            result = OPERAND;
        }
        else if( TN_is_enum(tn) ) {
            buf += sprintf ( buf, "%s", ISA_ECV_Name(TN_enum(tn)) );
            result = OPCODE;
        }
        else if ( TN_is_label(tn) ) {
            LABEL_IDX lab = TN_label(tn);
            const char *name = LABEL_name(lab);
            INT64 offset = TN_offset(tn);
            if ( offset == 0 ) {
                buf += sprintf ( buf, "%s", name );
            }
            else {
                buf += sprintf ( buf, "%s+%lld", name, offset );
            }
            result = OPERAND;
        } 
        else if ( TN_is_tag(tn) ) {
            LABEL_IDX lab = TN_label(tn);
            const char *name = LABEL_name(lab);
            buf += sprintf ( buf, "%s", name );
            result = OPERAND;
        }
        else if ( TN_is_symbol(tn) ) {
            ST *var = TN_var(tn);
            buf += sprintf ( buf, "(sym" );
            switch (TN_relocs(tn)) {
                case TN_RELOC_NONE: break;
                case TN_RELOC_NEG: buf += sprintf ( buf, "-" ); break;
                case TN_RELOC_GPREL16: buf += sprintf (buf, "#gprel16"); break;
                case TN_RELOC_LOW16: buf += sprintf (buf, "#lo"); break;
                case TN_RELOC_HIGH16: buf += sprintf (buf, "#hi"); break;
                case TN_RELOC_HIGHER: buf += sprintf (buf, "#higher"); break;
                case TN_RELOC_HIGHEST: buf += sprintf (buf, "#highest"); break;
                case TN_RELOC_GOT_DISP: buf += sprintf (buf, "#got_disp"); break;
                case TN_RELOC_GOT_PAGE: buf += sprintf (buf, "#got_page"); break;
                case TN_RELOC_GOT_OFST: buf += sprintf (buf, "#got_ofst"); break;
                case TN_RELOC_CALL16: buf += sprintf (buf, "#call16"); break;
                case TN_RELOC_GOT_HI16: buf += sprintf (buf, "#got_hi16"); break;
                case TN_RELOC_GOT_LO16: buf += sprintf (buf, "#got_lo16"); break;
                case TN_RELOC_CALL_HI16: buf += sprintf (buf, "#call_hi16"); break;
                case TN_RELOC_CALL_LO16: buf += sprintf (buf, "#call_lo16"); break;
                case TN_RELOC_GPSUB: buf += sprintf (buf, "#gpsub"); break;
                case TN_RELOC_LO_GPSUB: buf += sprintf (buf, "#lo_gpsub"); break;
                case TN_RELOC_HI_GPSUB: buf += sprintf (buf, "#hi_gpsub"); break;
                case TN_RELOC_GPIDENT: buf += sprintf (buf, "#gpident"); break;
                case TN_RELOC_LO_GPIDENT: buf += sprintf (buf, "#lo_gpident"); break;
                case TN_RELOC_HI_GPIDENT: buf += sprintf (buf, "#hi_gpident"); break;
                case TN_RELOC_IA_GPREL22: buf += sprintf (buf, "#gprel22"); break;
                case TN_RELOC_IA_LTOFF22: buf += sprintf (buf, "#ltoff22"); break;
                case TN_RELOC_IA_LTOFF_FPTR: buf += sprintf (buf, "#ltoff_fptr"); break;
            }
            if (ST_class(var) == CLASS_CONST)
                buf += sprintf ( buf, ":%s)", Targ_Print(NULL, ST_tcon_val(var)));
            else
                buf += sprintf ( buf, ":%s%+lld)", ST_name(var), TN_offset(tn) );
            result = OPERAND;
        } 
    }
    else {  /* register TN */
        if (TN_is_global_reg(tn)) {
            buf += sprintf ( buf, "GTN%d", TN_number(tn) );
        }
        else {
            buf += sprintf ( buf, "TN%d", TN_number(tn) );
        }
        char *tt = buf;
        tt[1] = ' ';
        if (TN_register(tn) != REGISTER_UNDEFINED) {
            if (TN_register(tn) <= REGISTER_CLASS_last_register(TN_register_class(tn))) {
                buf += sprintf (buf, "(%s)", 
                        REGISTER_name(TN_register_class(tn), TN_register(tn)));
            } else {
                buf += sprintf (buf, "(%d,%d)", TN_register_class(tn), TN_register(tn));
            }
        } else if(op) {
            ISA_REGISTER_CLASS reg_class = ISA_REGISTER_CLASS_UNDEFINED;
            if(result_num>=0) {
                reg_class = ISA_OPERAND_VALTYP_Register_Class(
                        ISA_OPERAND_INFO_Result(ISA_OPERAND_Info(OP_code(op)), result_num));
            } else if(opnd_num>=0) {
                reg_class = ISA_OPERAND_VALTYP_Register_Class(
                        ISA_OPERAND_INFO_Operand(ISA_OPERAND_Info(OP_code(op)), opnd_num));
            }

            char *str = "Urfpbac---";
            buf += sprintf(buf, "(%c_)", str[reg_class]);
        }
        if (TN_is_save_reg(tn)) {
            buf += sprintf (buf, "(sv:%s)", 
                    REGISTER_name(TN_save_rclass(tn), TN_save_reg(tn)));
            result = SAVE;
        }
        if(result != SAVE) {
            if(tt[1]=='p') result = PREDICATE;
            else result = OPERAND;
        }
    }
    return result;
} /* eps_print_TN */

void eps_print_asm(FILE *vcg, const OP *op, BB *bb)
{
    char buf[512];
    char pred_buf[16], op_buf[128], result_buf[128], opnd_buf[256];
    pred_buf[0] = 0; op_buf[0] = 0; result_buf[0] = 0; opnd_buf[0] = 0;
    int  pred_len = 0, op_len, result_len = 0, opnd_len = 0;
    int  kind;

    const char *op_code = TOP_Name(OP_code(op));
//    if(strncmp(op_code, "nop", 3)==0)
//        return;
    op_len = sprintf(op_buf, "%s", TOP_Name(OP_code(op)));
    
    for(int i=0; i<OP_results(op); i++) {
        kind = eps_print_TN(OP_result(op, i), op, buf, i, -1);
        if(kind == SAVE) {
            fprintf(vcg, "op save\n");
            return;
        }
        if(kind != NONE) {
            if(result_len==0)
                result_len = sprintf(result_buf, "%s", buf);
            else
                result_len += sprintf(&result_buf[result_len], ",%s", buf);
        }
    }
    
    for (int i=0; i<OP_opnds(op); i++) {
        kind = eps_print_TN(OP_opnd(op, i), op, buf, -1, i);
        switch(kind) {
            case SAVE:
                fprintf(vcg, "opnd save\n");
                return;
            case PREDICATE:
                pred_len += sprintf(&pred_buf[pred_len], "%s", buf);
                break;
            case OPCODE:
                op_len += sprintf(&op_buf[op_len], "%s", buf);
                break;
            case OPERAND:
                if(opnd_len==0)
                    opnd_len = sprintf(opnd_buf, "%s", buf);
                else
                    opnd_len += sprintf(&opnd_buf[opnd_len], ",%s", buf);
                break;
            default:
                break;
        }
    }

/*
    if (OP_has_tag(op)) {
        LABEL_IDX tag = Get_OP_Tag(op);
        fprintf(vcg, "<tag %s>:\n", LABEL_name(tag));
    }
*/

    if(OP_scycle(op) >= 0 && bb) {
        if(BB_rotating_kernel(bb)) {
            ANNOTATION *annot = ANNOT_Get(BB_annotations(bb), ANNOT_ROTATING_KERNEL);
            ROTATING_KERNEL_INFO *info = ANNOT_rotating_kernel(annot);
            INT ii = info->ii;
            fprintf(vcg, "[%2d*II+%2d (%d)]",
                    OP_scycle(op)/ii, OP_scycle(op)%ii,
                    TSI_Result_Available_Time(OP_code(op),0));
        } else if(BB_scheduled(bb)) {
            fprintf(vcg, "[%2d:%2d]",
                    OP_scycle(op), OP_scycle(op)+TSI_Result_Available_Time(OP_code(op),0));
        } else {
            fprintf(vcg, "[--:--]");
        }
    }
    
    if(result_len && opnd_len)
        fprintf(vcg, "%13s %-14s %s = %s", pred_buf, op_buf, result_buf, opnd_buf);
    else
        fprintf(vcg, "%13s %-14s %s%s", pred_buf, op_buf, result_buf, opnd_buf);


    char eps_str[44] ;
    eps_str[0] = '\0';
    if(op->eps_flags & OP_EPS_SPEC) {
        sprintf(eps_str, ":spec");;
    }
    if(op->eps_flags & OP_EPS_JOIN) {
        strcat(eps_str, ":join");
    }
    if(op->eps_flags & OP_EPS_UNIFIED) {
        strcat(eps_str, ":unif");
    }
    if(op->eps_flags & OP_EPS_CICM) {
        strcat(eps_str, ":cicm");
    }
    if(op->eps_flags & OP_EPS_BOOKKEEPING) {
        strcat(eps_str, ":bk");
    }
    if(op->eps_flags & OP_EPS_RENAME_COPY) {
        strcat(eps_str, ":rename");
    }
    if(op->eps_flags & OP_EPS_SPECLOAD) {
        strcat(eps_str, ":spld");
    }
    if(op->eps_flags & OP_EPS_MOVED) {
        strcat(eps_str, ":moved");
    }
    if(op->eps_flags & OP_EPS_LIVE_COPY) {
        strcat(eps_str, ":livecopy");
    }
    if(op->eps_flags & OP_EPS_NORMAL_COPY) {
        strcat(eps_str, ":normalcopy");
    }
    if(op->eps_flags & OP_EPS_IN_CRITICAL) {
        strcat(eps_str, ":crit");
    }
    if(op->eps_flags & OP_EPS_IN_IMPORTANT_PATH) {
        strcat(eps_str, ":important");
    }
    if(op->eps_flags & OP_EPS_HOT_LOAD) {
        strcat(eps_str, ":hotload");
    }
    if(op->eps_flags & OP_EPS_HOT_LOAD_RELATED) {
        strcat(eps_str, ":hotload_rel");
    }
     if(eps_str[0]) fprintf(vcg, " EPS:%s", eps_str);
    if(OP_Scheduled(op)) fprintf(vcg, " scheduled");
    else fprintf(vcg, " not_scheduled");
    fprintf(vcg, "\n");

/*
    if(OP_cntl_spec(op))
        fprintf(vcg, "   ***Spec_motion [BB:%u]\n", OP_orig_bb_id(op));
    else
        fprintf(vcg, "\n");
*/
} /* eps_print_asm */

void eps_debug_print_asm(const OP *op, BB *bb)
{
    eps_print_asm(stderr, op, bb);
}

void visualize_node(REGION *rgn, REGIONAL_CFG_NODE *node, FILE *vcg)
{
    // print node
    if(node->Is_Region()) {
        fprintf(vcg, "\tnode: {title:\"");
        fprintf(vcg, "[REGION] RGN_id:%d\n", node->Region_Node()->Id());
        if(node->Is_Exit() && node->Is_Entry()) {
            fprintf(vcg,"\" color: green ");
        } else if(node->Is_Exit()) {
            fprintf(vcg,"\" color: orange ");
        } else if(node->Is_Entry()) {
            fprintf(vcg,"\" color: purple ");
        } else {
            fprintf(vcg,"\" color: red ");
        }
        fprintf(vcg,"label: \"");
        fprintf(vcg, "[REGION] Id:%d RGN_id:%d\n",
                node->Id(), node->Region_Node()->Id());
        fprintf(vcg, "\"}");
    } else {
        fprintf(vcg, "\tnode: {title:\"");
        fprintf(vcg, "[BB] BB_id:%d\n", BB_id(node->BB_Node()));
        if(node->Is_Exit() && node->Is_Entry()) {
            fprintf(vcg,"\" color: green ");
        } else if(node->Is_Exit()) {
            fprintf(vcg,"\" color: yellow ");
        } else if(node->Is_Entry()) {
            fprintf(vcg,"\" color: blue ");
        } else {
            fprintf(vcg,"\"");
        }
        fprintf(vcg, "label: \"");
        fprintf(vcg, "[BB] Id:%d BB_id:%d\n",
                node->Id(), BB_id(node->BB_Node()));
        fprintf(vcg, " (freq:%.1f dfs:none %.1f %s)\n", node->Freq(), BB_freq(node->BB_Node()), BB_freq_fb_based(node->BB_Node())?"feedback":"heuristic");

        fprintf(vcg, "%s\n", BB_scheduled(node->BB_Node())?"scheduled":"not scheduled");

        // for debug
        //fprintf(vcg, "  live_in  : ");
        //GTN_TN_SET_Print(BB_live_in(node->BB_Node()), vcg);
        //fprintf(vcg, "\n  live_out : ");
        //GTN_TN_SET_Print(BB_live_out(node->BB_Node()), vcg);
        //fprintf(vcg, "  live_def  : ");
        //GTN_TN_SET_Print(BB_live_def(node->BB_Node()), vcg);
        //fprintf(vcg, "\n  live_use : ");
        //GTN_TN_SET_Print(BB_live_use(node->BB_Node()), vcg);
        fprintf(vcg, "\n");
        // end debug

        if(BB_has_label(node->BB_Node())) {
            ANNOTATION *ant = ANNOT_First(BB_annotations(node->BB_Node()), ANNOT_LABEL);
            for( ; ant != NULL; ant = ANNOT_Next(ant, ANNOT_LABEL)) {
                fprintf(vcg, "%s ", LABEL_name(ANNOT_label(ant)));
            }
            fprintf(vcg, "\n");
        }

        if(BB_rotating_kernel(node->BB_Node())) {
            ANNOTATION *annot = ANNOT_Get(BB_annotations(node->BB_Node()), ANNOT_ROTATING_KERNEL);
            ROTATING_KERNEL_INFO *info = ANNOT_rotating_kernel(annot);
            fprintf(vcg, "Initiation Interval : %d cycles.\n", info->ii);
        }

        EPS_SIM_STATE debug_sim_state;

        for(OP *op = BB_first_op(node->BB_Node()); op; op = OP_next(op)) {
            OP* op_copy = Dup_OP(op);
            while(!debug_sim_state.Issue_OP(op_copy, FALSE)) {
                fprintf(vcg, "========\n");
                debug_sim_state.Advance_Cycle();
            }
            debug_sim_state.Issue_OP(op_copy, TRUE);

            fprintf(vcg, "%p ", op);
            eps_print_asm(vcg, op, node->BB_Node());
        }
        fprintf(vcg, "\"}");
    }

    // print edge
#if 1
    REGIONAL_CFG_EDGE *succ_e;
    REGIONAL_CFG_NODE *succ;
    for (CFG_SUCC_EDGE_ITER iter(node);iter != 0; ++iter) {
#else
    REGIONAL_CFG_NODE* succ=NULL;
    while(succ=EPS_Next_Succ(node, succ)) {
#endif
        succ_e = (*iter);
        succ = succ_e->Dest();
        if(succ->Home_Region()==rgn) {
            fprintf(vcg, "\nedge: {thickness: 3");
            fprintf(vcg, " sourcename: \"");
            if(node->Is_Region()) {
                fprintf(vcg, "[REGION] RGN_id:%d\n", node->Region_Node()->Id());
            } else {
                fprintf(vcg, "[BB] BB_id:%d\n", BB_id(node->BB_Node()));
            }
            fprintf(vcg, "\" targetname: \"");
            if(succ->Is_Region()) {
                fprintf(vcg, "[REGION] RGN_id:%d\n", succ->Region_Node()->Id());
            } else {
                fprintf(vcg, "[BB] BB_id:%d\n", BB_id(succ->BB_Node()));
            }
            if(CG_PU_Has_Feedback) fprintf(vcg, "label: \"%f,%f\"\n", rgn->Regional_Cfg()->Edge_Freq(succ_e), rgn->Regional_Cfg()->Edge_Prob(succ_e));
            fprintf(vcg, "\"}\n");
        }
    }
} /* visualize_node */

void visualize_pdg(REGION *rgn, const char *suffix, unsigned int level)
{
    char buf[256];
    sprintf(buf, "%s_%s_%d_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()),
            rgn->Id(), suffix);
    FILE *vcg = fopen(buf, "w");

    // print heading
    fprintf(vcg, "graph: {\n");
    fprintf(vcg, "\tlayout_algorithm:minbackward\n\tdisplay_edge_labels:yes\n");

    REGIONAL_CFG *rgn_cfg = rgn->Regional_Cfg();
    REGIONAL_CFG_NODE *node;
    NODE_VECTOR node_set = rgn_cfg->Node_Set();
    NODE_VECTOR_ITER iter;

    for (iter = node_set.begin(); iter != node_set.end(); iter++) {
        node = *iter;
        if(node->Is_Region()) {
            continue;
        }

        BB* bb = node->BB_Node();

        CG_DEP_Compute_Graph (
            bb,
            INCLUDE_ASSIGNED_REG_DEPS,
            NON_CYCLIC,
            INCLUDE_MEMREAD_ARCS,
            INCLUDE_MEMIN_ARCS,
            NO_CONTROL_ARCS,
            NULL);


        for(OP* op=BB_first_op(bb); op; op=OP_next(op)) {
            fprintf(vcg, "\tnode: {title:\"");
            fprintf(vcg, "\tBB:%d OP:%d\n", BB_id(bb), op->order);
            fprintf(vcg, "label: \"");
            eps_print_asm(vcg, op, bb);
            fprintf(vcg, "\"}");
            
            for(ARC_LIST* arcs=OP_preds(op); arcs; arcs=ARC_LIST_rest(arcs)) {
                ARC* arc = ARC_LIST_first(arcs);
                OP* pred = ARC_pred (arc);
                BB* pred_bb = OP_bb(pred);
                NODE_VECTOR_ITER iter_pred;
                for(iter_pred=node_set.begin(); iter_pred!=node_set.end();iter_pred++) {
                    REGIONAL_CFG_NODE* n = *iter_pred;
                    if(n->Is_Region()) continue;
                    if(n->BB_Node()==pred_bb) {
                        fprintf(vcg, "\nedge: {thickness: 3");
                        fprintf(vcg, " sourcename: \"");
                        fprintf(vcg, "BB:%d OP:%d\n", BB_id(pred_bb), pred->order);
                        fprintf(vcg, " targetname: \"");
                        fprintf(vcg, "BB:%d OP:%d\n", BB_id(bb), op->order);
                        fprintf(vcg, "\"}\n");
                    }
                }
            }
        }
    }

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
}

void visualize_region(REGION *rgn, const char *suffix, unsigned int level)
{
    char buf[256];
    sprintf(buf, "%s_%s_%d_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()),
            rgn->Id(), suffix);

    FILE *vcg = fopen(buf, "w");

    if(CG_PU_Has_Feedback) rgn->Regional_Cfg()->Compute_Edges_Freq();

    // print heading
    fprintf(vcg, "graph: {\n");
    fprintf(vcg, "\tlayout_algorithm:minbackward\n\tdisplay_edge_labels:yes\n");

    // print region type
    char* region_type = "ERROR";
    switch(rgn->Region_Type()){
        case UNKNOWN:
            region_type = "UNKNOWN";
            break;
        case ROOT:
            region_type = "ROOT";
            break;
        case MEME:
            region_type = "MEME";
            break;
        case SEME:
            region_type = "SEME";
            break;
        case IMPROPER:
            region_type = "IMPROPER";
            break;
        case LOOP:
            region_type = "LOOP";
    }
    fprintf(vcg, "\tnode: {title:\"%s\"}\n", region_type);

    // print body
    REGIONAL_CFG *rgn_cfg = rgn->Regional_Cfg();
    REGIONAL_CFG_NODE *node;

    NODE_VECTOR node_set = rgn_cfg->Node_Set();
    NODE_VECTOR_ITER iter;

    EPS::set_is_scheduling(FALSE);

    for (iter = node_set.begin(); iter != node_set.end(); iter++) {
        node = *iter;
        visualize_node(rgn, node, vcg);
    }

    EPS::set_is_scheduling(TRUE);

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
} /* visualize_region */

void print_routine()
{
    char buf[256];
//    sprintf(buf, "%s_%s.asm", Remove_Extension(Last_Pathname_Component(Src_File_Name)), ST_name(Get_Current_PU_ST()));
//    FILE* fp = fopen(buf, "w");
    Print_All_BBs();
//    fclose(fp);
}

void visualize_bb(BB* bb, FILE *vcg)
{
    // print node
    fprintf(vcg, "\tnode: {title:\"");
    fprintf(vcg, "[BB] BB_id:%d\n", BB_id(bb));
    fprintf(vcg, "\"label: \"");
    fprintf(vcg, "[BB] BB_id:%d %.1f %s\n", BB_id(bb), BB_freq(bb), BB_freq_fb_based(bb)?"feedback":"heuristic");
    fprintf(vcg, "%s\n", BB_scheduled(bb)?"scheduled":"not scheduled");

    if(BB_has_label(bb)) {
        ANNOTATION *ant = ANNOT_First(BB_annotations(bb), ANNOT_LABEL);
        for( ; ant != NULL; ant = ANNOT_Next(ant, ANNOT_LABEL)) {
            fprintf(vcg, "%s ", LABEL_name(ANNOT_label(ant)));
        }
        fprintf(vcg, "\n");
    }

    if(BB_rotating_kernel(bb)) {
        ANNOTATION *annot = ANNOT_Get(BB_annotations(bb), ANNOT_ROTATING_KERNEL);
        ROTATING_KERNEL_INFO *info = ANNOT_rotating_kernel(annot);
        fprintf(vcg, "Initiation Interval : %d cycles.\n", info->ii);
    }

    for(OP *op = BB_first_op(bb); op; op = OP_next(op)) {
        eps_print_asm(vcg, op, bb);
    }
    fprintf(vcg, "\"}");

    // print edge
    BBLIST *succ;
    FOR_ALL_BB_SUCCS(bb,succ) {
        fprintf(vcg, "\nedge: {thickness: 3");
        fprintf(vcg, " sourcename: \"");
        fprintf(vcg, "[BB] BB_id:%d\n", BB_id(bb));
        fprintf(vcg, "\" targetname: \"");
        fprintf(vcg, "[BB] BB_id:%d\n", BB_id(BBLIST_item(succ)));
        fprintf(vcg, "\"}\n");
    }
}

void visualize_routine_recur(REGION* rgn, const char *suffix)
{
    for(REGION* child_rgn=rgn->First_Kid(); child_rgn!=NULL; child_rgn=child_rgn->Next_Sibling()) {
        visualize_routine_recur(child_rgn, suffix);
    }
    visualize_region(rgn, suffix);

/*
    if(rgn->Id()==82 || rgn->Id()==83) {
        REGIONAL_CFG *rgn_cfg = rgn->Regional_Cfg();
        REGIONAL_CFG_NODE *node;

        NODE_VECTOR node_set = rgn_cfg->Node_Set();
        NODE_VECTOR_ITER iter;
        fprintf(stderr, "printing region %s %d\n", suffix, rgn->Id());
        for (iter = node_set.begin(); iter != node_set.end(); iter++) {
            node = *iter;
            if(node->Is_Region()) {
                fprintf(stderr, "Rgn %d\n", node->Region_Node()->Id());
            } else {
                fprintf(stderr, "BB %d\n", BB_id(node->BB_Node()));
            }
            if(node->First_Pred() == NULL) {
                fprintf(stderr, "the node is head\n");
            }
        }
        fprintf(stderr, "printing end\n", rgn->Id());
    }
*/

}

void visualize_routine(BB* bb, const char *suffix)
{
    char buf[256];
    sprintf(buf, "%s_%s_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()), suffix);

    FILE *vcg = fopen(buf, "w");

    // print heading
    fprintf(vcg, "graph: {\n");
    fprintf(vcg, "\tlayout_algorithm:minbackward\n\tdisplay_edge_labels:yes\n");

    // print body
    for( ; bb; bb = BB_next(bb)) {
        visualize_bb(bb, vcg);
    }

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
}

void visualize_routine2(REGION_TREE* tree, const char *suffix)
{
    visualize_routine_recur(tree->Root(), suffix);
}

void visualize_ddg(FILE* vcg, DDG* ddg)
{
    // print heading
    fprintf(vcg, "graph: {\n");
    fprintf(vcg, "\tlayout_algorithm:minbackward\n\tdisplay_edge_labels:yes\n");

    DDG_Map::iterator it;

    for(it=ddg->_map->begin(); it!=ddg->_map->end(); it++) {
        // print node
        DDG_Node* node = (*it).second;
        OP* op = node->Op();
        fprintf(vcg, "\tnode: {title:\"node_id:%d\"\n", node->Id());
        fprintf(vcg, "\tlabel: \"node_id:%d\n", node->Id());
        eps_print_asm(vcg, op, OP_bb(op));
        fprintf(vcg, "%d %d %f", node->EPS_Id(), node->Last_EPS_Id(), node->Length());
        fprintf(vcg, "\"}\n");

        // print edge
        DDG_Node::edge_iterator eit;
        for(eit=node->succ_begin(); eit!=node->succ_end(); eit++) {
            DDG_Edge* e = (*eit);
            fprintf(vcg, "\nedge: {thickness: 3 sourcename: \"node_id:%d\" targetname: \"node_id:%d\"}\n", e->Src()->Id(), e->Dst()->Id());
        }
    }
}

void visualize_ddg(DDG* ddg)
{
    char buf[256];
    sprintf(buf, "%s_%s_%d_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()),
            ddg->_rgn->Id(), "ddg");
    FILE *vcg = fopen(buf, "w");

    visualize_ddg(vcg, ddg);

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
}

void visualize_ddg(DDG* ddg, char* str)
{
    char buf[256];
    sprintf(buf, "%s_%s_%d_%s_%s.vcg",
            Remove_Extension(Last_Pathname_Component(Src_File_Name)),
            ST_name(Get_Current_PU_ST()),
            ddg->_rgn->Id(), "ddg", str);
    FILE *vcg = fopen(buf, "w");

    visualize_ddg(vcg, ddg);

    // print tail
    fprintf(vcg, "}\n");
    fclose(vcg);
}

