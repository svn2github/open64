#ifndef _EPS_OPTION_H_
#define _EPS_OPTION_H_

#include "flags.h"

extern BOOL EPS_enable;
extern BOOL EPS_gis_enable;
extern OPTION_LIST *EPS_file_include;
extern OPTION_LIST *EPS_file_exclude;
extern OPTION_LIST *EPS_function_include;
extern OPTION_LIST *EPS_function_exclude;
extern int EPS_function;
extern OPTION_LIST *EPS_region_include;
extern OPTION_LIST *EPS_region_exclude;
extern int EPS_region;
extern OPTION_LIST *EPS_bb_include;
extern OPTION_LIST *EPS_bb_exclude;
extern OPTION_LIST *EPS_hot_loads;
extern int EPS_bb;
extern OPTION_LIST *EPS_bb_ms_include;
extern OPTION_LIST *EPS_bb_ms_exclude;
extern int EPS_fence;
extern int EPS_inst;

extern int EPS_debug;
extern int EPS_vcg;
extern int EPS_analysis;

extern BOOL EPS_remove_empty_blocks;
extern BOOL EPS_preheader;
extern BOOL EPS_region_exit_node;
extern int EPS_split;
extern int EPS_spec;
extern int EPS_shp;
extern int EPS_join;
extern int EPS_cicm;
extern int EPS_heur;
extern int EPS_specload;
extern int EPS_ws;
extern int EPS_latency;
extern BOOL EPS_advanced_load;
extern BOOL EPS_forward_substitute;
extern BOOL EPS_SEME;
extern BOOL EPS_exploit_predicate;
extern BOOL EPS_exploit_predicate2;
extern BOOL EPS_feedback;

extern BOOL EPS_only_hot_load;
extern int EPS_hl_spec;
extern int EPS_hl_join;
extern int EPS_hl_cicm;
extern int EPS_hl_spld;
extern int EPS_hl_latency;

extern BOOL EPS_gis_cspec;

extern BOOL EPS_ms_level;
extern BOOL EPS_control_bad_join;
extern BOOL EPS_use_ddg_control;

class eps_option {
private:
//    static int _debug_level;
//    static int _ws;
public:
//    static int debug_level(void) { return _debug_level; }
//    static void debug_level(int level) { _debug_level = level; }

    static int bug_no_cicm;
    static int bug_no_spld;
    static int bug_no_advld;
    static int bug_no_substitute;

    static int ws(void) { return EPS_ws; }
//    static void ws(int n) { _ws = n; }

    static BOOL enable(void) { return EPS_enable; }
    static BOOL enable_gis(void) { return EPS_gis_enable; }
    static BOOL enable_file(void);
    static BOOL enable_function(void);
    static BOOL enable_region(int id);
    static BOOL enable_bb(int id);
    static BOOL enable_bb_ms(int id);
    static BOOL enable_fence(int id);

    static BOOL hot_load_region(const char* functionname, int id, vector<pair<int,int> >& hot_loads);
    static BOOL hot_load(vector<pair<int,int> >& hot_loads, OP* op);
    static BOOL only_hot_load(void) { return EPS_only_hot_load; }
    static int hl_spec(void) {return EPS_hl_spec; }
    static int hl_join(void) {return EPS_hl_join; }
    static int hl_cicm(void) {return EPS_hl_cicm; }
    static int hl_spld(void) {return EPS_hl_spld; }
    static int hl_latency(void) {return EPS_hl_latency; }

    static BOOL remove_empty_blocks(void) { return EPS_remove_empty_blocks; }
    static BOOL make_preheader(void) { return EPS_preheader; }
    static BOOL add_region_exit_node(void) { return EPS_region_exit_node; }
    static int split_preds(void) { return EPS_split; }
    static int spec(void) { return EPS_spec; }
    static float shp(void) { return (EPS_shp/10.0F); }
    static int join(void) { return EPS_join; }
    static int cicm(void) { return EPS_cicm; }
    static int heur(void) { return EPS_heur; }

    static int latency(void) {return EPS_latency; }

    static int specload(void) { return EPS_specload; }
    static BOOL advanced_load(void) { return EPS_advanced_load; }

    static BOOL forward_substitute(void) { return EPS_forward_substitute; }
    static BOOL do_seme(void) { return EPS_SEME; }

    static BOOL exploit_predicate(void) { return EPS_exploit_predicate; }
    static int exploit_predicate2(void) { return EPS_exploit_predicate2; }

    static BOOL gis_cspec(void) { return EPS_gis_cspec; }
};

#endif // _EPS_OPTION_H_
