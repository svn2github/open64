#include "eps.h"
#include "file_util.h"
#include "symtab.h"
#include "glob.h"
#include "eps_option.h"

//int eps_option::_debug_level = 1;
//int eps_option::_ws = 64;
int function_count = 0;

int eps_option::bug_no_cicm = 0;
int eps_option::bug_no_spld = 0;
int eps_option::bug_no_advld = 0;
int eps_option::bug_no_substitute = 0;

BOOL eps_option::enable_file()
{
    EPS_ASSERT(EPS_file_include==NULL || EPS_file_exclude==NULL,
            "Incorrect file include/exclude options\n");
    
    OPTION_LIST *ol;
    char *filename = Last_Pathname_Component(Src_File_Name);
    
    if(EPS_file_include) {
        ol = EPS_file_include;
        do {
            if(!strcasecmp(OLIST_val(ol), filename))
                return TRUE;
            ol = OLIST_next(ol);
        } while(ol);
        return FALSE;
    }
    if(EPS_file_exclude) {
        ol = EPS_file_exclude;
        do {
            if(!strcasecmp(OLIST_val(ol), filename))
                return FALSE;
            ol = OLIST_next(ol);
        } while(ol);
        return TRUE;
    }
    return TRUE;
}

BOOL eps_option::enable_function()
{
    if(EPS_function!=-1) {
        if(function_count<=EPS_function)
            return TRUE;
        else
            return FALSE;
    }
    
    EPS_ASSERT(EPS_function_include==NULL || EPS_function_exclude==NULL,
            "Incorrect function include/exclude options\n");

    OPTION_LIST *ol;
    char *functionname = ST_name(Get_Current_PU_ST());

    if(EPS_function_include) {
        ol = EPS_function_include;
        do {
            if(!strcasecmp(OLIST_val(ol), functionname))
                return TRUE;
            ol = OLIST_next(ol);
        } while(ol);
        return FALSE;
    }
    if(EPS_function_exclude) {
        ol = EPS_function_exclude;
        do {
            if(!strcasecmp(OLIST_val(ol), functionname))
                return FALSE;
            ol = OLIST_next(ol);
        } while(ol);
        return TRUE;
    }
    return TRUE;
}

BOOL eps_option::enable_region(int id)
{
    if(EPS_region!=-1) {
        if(id<=EPS_region)
            return TRUE;
        else
            return FALSE;
    }
    
    EPS_ASSERT(EPS_region_include==NULL || EPS_region_exclude==NULL,
            "Incorrect region include/exclude options\n");

    OPTION_LIST *ol;
    char regionname[32];
    sprintf(regionname, "%d", id);

    if(EPS_region_include) {
        ol = EPS_region_include;
        do {
            if(!strcasecmp(OLIST_val(ol), regionname))
                return TRUE;
            ol = OLIST_next(ol);
        } while(ol);
        return FALSE;
    }
    if(EPS_region_exclude) {
        ol = EPS_region_exclude;
        do {
            if(!strcasecmp(OLIST_val(ol), regionname))
                return FALSE;
            ol = OLIST_next(ol);
        } while(ol);
        return TRUE;
    }
    return TRUE;
}

BOOL eps_option::enable_bb(int id)
{
    if(EPS_bb!=-1) {
        if(id<=EPS_bb)
            return TRUE;
        else
            return FALSE;
    }
    
    EPS_ASSERT(EPS_bb_include==NULL || EPS_bb_exclude==NULL,
            "Incorrect basic block include/exclude options\n");

    OPTION_LIST *ol;
    char bbname[32];
    sprintf(bbname, "%d", id);

    if(EPS_bb_include) {
        ol = EPS_bb_include;
        do {
            if(!strcasecmp(OLIST_val(ol), bbname))
                return TRUE;
            ol = OLIST_next(ol);
        } while(ol);
        return FALSE;
    }
    if(EPS_bb_exclude) {
        ol = EPS_bb_exclude;
        do {
            if(!strcasecmp(OLIST_val(ol), bbname))
                return FALSE;
            ol = OLIST_next(ol);
        } while(ol);
        return TRUE;
    }
    return TRUE;
}

BOOL eps_option::enable_bb_ms(int id)
{   
    EPS_ASSERT(EPS_bb_ms_include==NULL || EPS_bb_ms_exclude==NULL,
            "Incorrect basic block include/exclude options\n");

    OPTION_LIST *ol;
    char bbname[32];
    sprintf(bbname, "%d", id);

    if(EPS_bb_ms_include) {
        ol = EPS_bb_ms_include;
        do {
            if(!strcasecmp(OLIST_val(ol), bbname))
                return TRUE;
            ol = OLIST_next(ol);
        } while(ol);
        return FALSE;
    }
    if(EPS_bb_ms_exclude) {
        ol = EPS_bb_ms_exclude;
        do {
            if(!strcasecmp(OLIST_val(ol), bbname))
                return FALSE;
            ol = OLIST_next(ol);
        } while(ol);
        return TRUE;
    }
    return TRUE;
}


BOOL eps_option::enable_fence(int id)
{
    if(EPS_fence!=-1) {
        if(id<=EPS_fence)
            return TRUE;
        else
            return FALSE;
    }

    return TRUE;
}

BOOL eps_option::hot_load_region(const char* functionname, int id, vector<pair<int,int> >& hot_loads)
{
    if(EPS_hot_loads==NULL) {
        return FALSE;
    }

    OPTION_LIST *ol;
    ol = EPS_hot_loads;
    do {
        char* hotload = strdup(OLIST_val(ol));

        char* hot_f = strtok(hotload, "/");
        char* hot_r = strtok(NULL, "/");
        char* hot_l1 = strtok(NULL, "/");
        char* hot_l2 = strtok(NULL, "/");

        if(hot_f!=NULL && hot_r!=NULL && hot_l1 !=NULL && hot_l2 !=NULL) {
            int hot_nr = atoi(hot_r);
            int hot_nl1 = atoi(hot_l1);
            int hot_nl2 = atoi(hot_l2);

            if(strcmp(hot_f, functionname)==0 && hot_nr==id && hot_nl1>0 && hot_nl2>0) {
                fprintf(EPSLOG, "hot load region: %d,%d\n", hot_nl1, hot_nl2);
                hot_loads.push_back(pair<int,int>(hot_nl1, hot_nl2));
            }
        }

        free(hotload);
        ol = OLIST_next(ol);
    } while(ol);

    return !hot_loads.empty();
}

BOOL eps_option::hot_load(vector<pair<int,int> >& hot_loads, OP* op)
{
    if(!OP_load(op)) {
        return FALSE;
    }
    TN *result_tn = OP_result(op, 0);

    if (result_tn== NULL || !TN_is_register(result_tn) || TN_is_const_reg(result_tn)){
        return FALSE;
    }
//    if (opnd_tn== NULL || !TN_is_register(opnd_tn) || TN_is_const_reg(opnd_tn)){
//        return FALSE;
//    }
    vector<pair<int,int> >::iterator it;
    for(it=hot_loads.begin(); it!=hot_loads.end(); it++) {
        if((*it).first==TN_number(result_tn)) {
            fprintf(EPSLOG, "found hot load %d,%d\n", (*it).first, TN_number(result_tn));
            return TRUE;
        }
    }
    return FALSE;
}

