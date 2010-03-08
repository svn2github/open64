#include "eps.h"

REGIONAL_CFG_NODE* EPS_Next_Succ(REGIONAL_CFG_NODE* node, REGIONAL_CFG_NODE* next)
{
/*
    if(next==NULL) {
        return (node->First_Succ()!=NULL)?node->First_Succ()->Dest():NULL;
    }
    for(REGIONAL_CFG_EDGE* se = node->First_Succ(); se; se=se->Next_Succ()) {
        if(se->Dest()==next) {
            return (se->Next_Succ()==NULL)?NULL:se->Next_Succ()->Dest();
        }
    }
    return NULL;
*/

    if(node->Is_Region()) {
        if(next==NULL) {
            return (node->First_Succ()!=NULL)?node->First_Succ()->Dest():NULL;
        }
        for(REGIONAL_CFG_EDGE* se = node->First_Succ(); se; se=se->Next_Succ()) {
            if(se->Dest()==next) {
                return (se->Next_Succ()==NULL)?NULL:se->Next_Succ()->Dest();
            }
        }
        return NULL;
    } else {
        BB* bnode = node->BB_Node();
        BB* bnext = NULL;
        BBLIST* bsuccs = NULL;

        if(next==NULL) {
            bnext = BB_First_Succ(bnode);
        } else if(next->Is_Region()) {
            REGION* r = next->Region_Node();
            FOR_ALL_BB_SUCCS(bnode, bsuccs) {
                if(Region_Contains_BB(r, BBLIST_item(bsuccs))) {
                    if(BBLIST_next(bsuccs)!=NULL) {
                        bnext = BBLIST_item(BBLIST_next(bsuccs));
                    } else {
                        bnext = NULL;
                    }
                    break;
                }
            }
        } else {
            FOR_ALL_BB_SUCCS(bnode, bsuccs) {
                if(BBLIST_item(bsuccs)==next->BB_Node()) {
                    if(BBLIST_next(bsuccs)) {
                        bnext = BBLIST_item(BBLIST_next(bsuccs));
                    } else {
                        bnext = NULL;
                    }
                    break;
                }
            }
        }

        if(bnext==NULL) return NULL;
        next = Regional_Cfg_Node(bnext);
        EPS_ASSERT(next!=NULL, "...\n");

        if(next->Home_Region()==node->Home_Region()) {
            return next;
        } else if(next->Home_Region()->Is_Contained_By(node->Home_Region())) {
            for(REGIONAL_CFG_EDGE* se = node->First_Succ(); se; se=se->Next_Succ()) {
                if(se->Dest()->Is_Region()) {
                    REGION* tnext;
                    for(tnext=next->Home_Region(); tnext->Is_Contained_By(node->Home_Region()); tnext=tnext->Parent()) {
                        if(se->Dest()->Region_Node()==next->Home_Region()) {
                            return se->Dest();
                        }
                    }
                }
            }
        }
        return NULL;
    }
}

REGIONAL_CFG_NODE* EPS_Next_Pred(REGIONAL_CFG_NODE* node, REGIONAL_CFG_NODE* next)
{
    if(node->Is_Region()) {
        for(REGIONAL_CFG_EDGE* se = node->First_Pred(); se; se=se->Next_Pred()) {
            if(se->Dest()==next) {
                return (se->Next_Pred()==NULL)?NULL:se->Next_Pred()->Dest();
            }
        }
        return NULL;
    } else {
        BB* bnode = node->BB_Node();
        BB* bnext = NULL;
        BBLIST* bpreds = NULL;

        if(next==NULL) {
            bnext = BB_First_Pred(bnode);
        } else if(next->Is_Region()) {
            REGION* r = next->Region_Node();
            FOR_ALL_BB_PREDS(bnode, bpreds) {
                if(Region_Contains_BB(r, BBLIST_item(bpreds))) {
                    if(BBLIST_next(bpreds)!=NULL) {
                        bnext = BBLIST_item(BBLIST_next(bpreds));
                    } else {
                        bnext = NULL;
                    }
                    break;
                }
            }
        } else {
            FOR_ALL_BB_PREDS(bnode, bpreds) {
                if(BBLIST_item(bpreds)==node->BB_Node()) {
                    if(BBLIST_next(bpreds)) {
                        bnext = BBLIST_item(BBLIST_next(bpreds));
                    } else {
                        bnext = NULL;
                    }
                    break;
                }
            }
        }

        if(bnext==NULL) return NULL;
        next = Regional_Cfg_Node(bnext);
        EPS_ASSERT(next!=NULL, "...\n");
        return next;
    }
}
