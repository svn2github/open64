/*
 * Copyright (C) 2000-2002, Dept. of Computing Science, University of Alberta, 
 * Canada.
 *
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this 
 * list of conditions and the following disclaimer. 
 *
 * Redistributions in binary form must reproduce the above copyright notice, 
 * this list of conditions and the following disclaimer in the documentation 
 * and/or other materials provided with the distribution. 
 *
 * Neither the name of the owner nor the names of its contributors may be used 
 * to endorse or promote products derived from this software without specific 
 * prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
 * ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (
 * INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF 
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

// This is just an initial version of outlininer. Intensive debugging is still
// needed

#ifndef BE_OUTLINING_INCLUDED
#define BE_OUTLINING_INCLUDED

#include "wn.h"
#include "pu_info.h"
#include "DaVinci.h"
#include "cxx_template.h"
#include "symtab.h"
#include "wn_map.h"
#include "mempool.h"		//it includes "defs.h"
#include "wn_util.h"
#include "fb_whirl.h"		//Cur_PU_Feedback
//#include "ipo_parent.h"
#include "symtab_utils.h"
#include "lwn_util.h"		//WN_Parentize()
#include "ir_reader.h"
#include "tracing.h"
#include "data_layout.h"	//Allocate_Object()

//opt_fb.cxx & opt_splitter.h
//Author: Peng Zhao,	pengzhao@cs.ualberta.ca
//Mar 19, 2002

#if 1 // all
#define NUM_GOTO_SAME_LABEL 	5
#define NUM_LABEL_IN_FUNCTION 	10
#define NUM_COLD_WHIRL_TREE		10
#define SPLITTING_THRESHOLD		0.0

#define Outliner_max_name_len	64
#define SPLITTER_RETURN_TYPE	MTYPE_I1
#define CWT_NATURAL_FLOW		0
#define CWT_RETURN  			1
#define CWT_NON_LOCAL_GOTO		2		// >=2

#define Splitter_Get_Parent(wn)	((WN*)WN_MAP_Get(_parent_map, (WN*)wn))
#define Splitter_Set_Parent(wn, p) (WN_MAP_Set(_parent_map, wn, (void *)p))

#define SWITCH_TO_CLONED_SCOPE (OUTL_SCOPE_CONTEXT switch_scope(_splitter->Cloned_Scope_Tab()));
#define SWITCH_TO_OLD_SCOPE (OUTL_SCOPE_CONTEXT switch_scope(_orig_scope_tab));


// DUMP flags for outliner
#define	TP_OUTLINING_ACTION	0x0001 // the splitter dumping
#define	TP_OUTLINING_CWT	0x0002 // the splitter dumping
#define	TP_OUTLINING_RESULT	0x0004 // the splitter dumping
#define	TP_OUTLINING_FREQ	0x0008 // the splitter dumping
#define	TP_OUTLINING_TMP	0x0010 // the splitter dumping
#define	TP_OUTLINING_VOBOSE	0x0020 // the splitter dumping
#define	TP_OUTLINING_EXTRA	0x0040 // the splitter dumping

#ifdef __cplusplus
extern "C" {
#endif

extern void Outliner_Initialize(void);
extern void Outliner_Finalize(void);
extern MEM_POOL *Splitter_mem_pool;
extern BOOL	   dump_cwt;
extern BOOL	   dump_result;
extern BOOL    dump_action ;
extern BOOL    dump_tmp ;
extern BOOL    dump_vobose ;

extern BOOL	outlining_detail_dumping;
extern void	count_wn(WN *wn, int *count);

//extern float   PU_max_freq;


#ifdef __cplusplus
}
#endif

typedef __gnu_cxx::hash_map<INTPTR, float> BLOCK_FREQ_MAP;

typedef enum 	
{
		SCALAR_USED,
		SCALAR_DEFED,
		LDA_USED			//Array access
}SPLITTER_ACCESS_FLAG;

typedef enum 	
{
	INTERNAL,  	// for label, it means NO external goto come here
				// for goto, it means this goto goto an internal label
	EXTERNAL	// for label, it means there are some external goto come here
				// for goto, it means this goto goto an external label
}SPLITTER_LBL_FLAG;

typedef enum
{
	IN_COLD_AREA,
	IN_NORMAL_AREA
}SPLITTER_STATE;

typedef enum
{
	OUT_OF_CWT,
	IN_CWT
}GOTO_WHERE;

struct ACCESS_LIST_ELMT
{
	SPLITTER_ACCESS_FLAG flag; 		// flag indicates SCALAR_USED(DEFED)
	ST_IDX 				 st_idx;   	// the st_idx of the symbol
	ST*					 st;		// the symbol in the CARRIER
	
	// cxx_template.cxx Newidx(), =, Initidx,AddElement,Elements()
	DYN_ARRAY<WN*>*	 wn_list; 	
	void Print(FILE *fp);
};

struct GOTO_LIST_ELMT
{
	WN 			*wn;

	//1. idx to CWT-LIST (in -global-label-list), in Add_Goto_List()
	//    i.e. which CWT is this GOTO in?
	//2. when used to handle outside GOTOs, it is the idx to -outside-label-list
	mINT32			flag;	
	void Print(FILE *fp);
};

struct LABEL_LIST_ELMT
{
	DYN_ARRAY<GOTO_LIST_ELMT>*	label_goto_list; // the WN node list which goto this label
	WN*				wn;			// the WN node which defines this label
	INT32			label_ID;   // WN_label_number(wn);
//	mINT32			flag;
	void Print(FILE *fp);
};

// OPR_RETURN_VALUE whirl nodes, we will modify this to parameter passing
struct RV_LIST_ELMT
{
	WN 			*wn;
	void Print(FILE *fp);
};

typedef DYN_ARRAY<ACCESS_LIST_ELMT> ACCESS_LIST;
typedef DYN_ARRAY<LABEL_LIST_ELMT> 	LABEL_LIST;
typedef DYN_ARRAY<GOTO_LIST_ELMT> 	GOTO_LIST;
typedef DYN_ARRAY<RV_LIST_ELMT> 	RV_LIST;

typedef enum 	
{
		MULTI_ENTRY,
		SINGLE_ENTRY
}CWT_LIST_FLAG;


INT		Appear_in_Label_List(LABEL_LIST *label_list, WN *wn);
//void 	Add_Label_List(LABEL_LIST *label_list ,WN* wn);
void	Add_Label_List(LABEL_LIST *label_list ,WN* wn, mINT32 CWT_ID);
void 	Add_Goto_List(GOTO_LIST *goto_list ,WN* wn);
void 	Add_Goto_List(GOTO_LIST *goto_list ,WN* wn, mINT32 label_id);

class CWT_LIST_ELMT;
typedef DYN_ARRAY<CWT_LIST_ELMT> 		CWT_LIST;
class SPLITTER
{

	private:

//^the info about the carrier
	PU_Info			*_orig_pu_info;	//Orig_Pu_Info()
	WN				*_orig_pu_tree; //Orig_Pu_Tree()
	SYMBOL_TABLE	*_old_St_Table; //Old_St_Table() -> St_Table

	SYMTAB_IDX		_orig_level;	//Orig_Level()
	ST				*_carrier_st;	//Carrier_St()
	WN_MAP			_parent_map;	//Parent_Map()
	WN_MAP			_freq_map;		//Propagated frequency map
	SCOPE			*_orig_scope_tab;	//	Orig_Scope_Tab() ->old Scope_tab
	SCOPE			*_cloned_scope_tab;	//	Cloned_Scope_Tab() ->new Scope_tab
	SCOPE            _orig_scope;       //Scope_tab[CURRENT_SYMTAB]
	TYPE_ID			_return_type_id;	//Return_Type_Id()
	TY_IDX			_return_ty_idx;		//Return_Ty_Idx()
//$the info about the carrier

	UINT 			_total_wn_counter, _cold_wn_counter;
	LABEL_LIST*  	_global_label_list; //pengzhao, valencia
	CWT_LIST*		_cold_WTs;//pengzhao, valencia
	CWT_LIST_ELMT	*_current_cwt_elmt;
	SPLITTER_STATE 	_Splitter_state;

	UINT			_cold_subfunc_num;
	ST 				*_caller_cwt_return_flag;
	ST 				*_caller_cwt_return_value;

	public:

	/*
	void Record_access(ST_IDX idx, WN* wn, INT flag);
	void Add_def(ST_IDX st_idx, WN *wn);
	void Add_use(ST_IDX st_idx, WN *wn);
	*/

	INT  Appear_in_label_list(LABEL_LIST *label_list, WN *wn);
	UINT Estimate_size(WN *wn);
	void Record_cold_region(WN *wn);
	void Find_cold_wn_trees(WN *wn);
	void Add_label_list(LABEL_LIST *label_list, WN* wn);
	void Splitter_Replace_WN(WN *old_wn, WN *new_wn);

	void Split_functions();

	void Outlining(void);
	void Splitter_Collect_Fdbk_Statistics(WN* wn); // use feedback info
	void Splitter_Collect_Guess_CWT(WN* wn); // use heuristics such as setjmp, longjmp etc

	inline WN_MAP			Get_Parent_Map(){ return _parent_map;}
	inline ST* 			Carrier_St(){return _carrier_st;}
	inline SYMTAB_IDX	Orig_Level(){return _orig_level;}
	inline PU_Info*		Orig_Pu_Info(){return _orig_pu_info;}
	inline WN*			Orig_Pu_Tree(){return _orig_pu_tree;}
	inline WN_MAP		Parent_Map(){return _parent_map;}
	inline WN_MAP		Freq_Map(){return _freq_map;}
	inline SCOPE*		Orig_Scope_Tab(){return _orig_scope_tab; }
	inline SCOPE*		Cloned_Scope_Tab(){return _cloned_scope_tab; }
	inline SCOPE		Orig_Scope(){return _orig_scope; }
	inline SYMBOL_TABLE*	Old_St_Table(){return _old_St_Table;}
	inline TYPE_ID		Return_Type_Id(){return _return_type_id;}
	inline TY_IDX		Return_Ty_Idx(){return	_return_ty_idx;}

	inline void 		Set_Parent_Map(WN_MAP a){_parent_map = a;}
	inline void 		Set_Freq_Map(WN_MAP a){_freq_map = a;}
	inline void			Set_Cold_WTs(CWT_LIST *a) {_cold_WTs = a;}
	inline void 		Set_Global_Label_List(LABEL_LIST* a){_global_label_list = a;}
	inline ST*			Caller_R_F(){return _caller_cwt_return_flag;}
	inline ST*			Caller_R_V(){return _caller_cwt_return_value;}

	friend INT		Appear_in_Label_List(LABEL_LIST *label_list, WN *wn);
	friend void 	Add_Label_List(LABEL_LIST *label_list ,WN* wn, mINT32 CWT_ID);
	friend void 	Add_Goto_List(GOTO_LIST *goto_list ,WN* wn);
	friend void 	Add_Goto_List(GOTO_LIST *goto_list ,WN* wn, INT label_id);

	void	Splitter_Parentize(WN *wn);
	void	copied_lwn_parentize(WN *wn);
	void    clct_blk_freq(WN *wn);
	void	prop_blk_freq();
	void	Print(FILE *fp);
	void 	outlining_dump_freq(FILE *fp);

	SPLITTER(PU_Info *carrier_pu_info, WN *orig_pu_tree): 
		_carrier_st		(ST_ptr(carrier_pu_info->proc_sym)), 
		_total_wn_counter(0),
		_cold_wn_counter (0),
		_Splitter_state	(IN_NORMAL_AREA),
		_orig_pu_tree	(orig_pu_tree),
		_old_St_Table	(&St_Table),
		_orig_pu_info	(carrier_pu_info)
	{
		char 	*new_name_flag, *new_name_value;

		if(dump_result)
		{
		  fprintf(TFile, DBar);	
		  fprintf(TFile, "\tOutliner is analyzing PU %s\n",ST_name(_carrier_st));	
		}
		
		Set_PU_Info_flags(carrier_pu_info,PU_OUTLINED );
		_orig_level = PU_lexical_level(_carrier_st);

		_orig_scope_tab = Scope_tab;
		_orig_scope     = Scope_tab[CURRENT_SYMTAB];

  //the splitted function inherits the scope table from the carrier
  // we must malloc "-orig-level + 1" SCOPES, because scope-tab[0] is
  // reserved. and we will allocate in the Scope-tab's mem_pool so that it can
  // live until the new PU_info is considered by the compiler
        _cloned_scope_tab = (SCOPE *) MEM_POOL_Alloc 
		(Splitter_mem_pool, (_orig_level+1) * sizeof(SCOPE));

        // Copy all except the current _level for this cloned symtab
        // borrowed from clone.cxx: IPO_SYMTAB::New_Symtab()
        SYMTAB_IDX i;
        for (i =_orig_level; i>=1;  --i) 
        {
           _cloned_scope_tab[i] = (_orig_scope_tab)[i];
        }

        //  OUTL_SCOPE_CONTEXT switch_scope(_cloned_scope_tab);

		_return_ty_idx  =	Tylist_Table[ TY_tylist( Ty_Table[ST_pu_type(_carrier_st)] ) ];
//		_return_type_id = 	TY_mtype(ST_pu_type(_carrier_st));
		_return_type_id = 	TY_mtype(_return_ty_idx);
		
		_cold_WTs = CXX_NEW(DYN_ARRAY<CWT_LIST_ELMT>(Splitter_mem_pool), Splitter_mem_pool);

		_global_label_list = CXX_NEW(DYN_ARRAY<LABEL_LIST_ELMT>(Splitter_mem_pool),Splitter_mem_pool);

		//Set up the parent map
		//omp_lower.cxx:273
		//"create parent map"
		
		Splitter_Parentize(_orig_pu_tree);
//		Set_Freq_Map(WN_MAP64_Create(Splitter_mem_pool));
	
	// Generate the names & symbols FOR the new variables
	// (cwt-return-flag-caller & cwt-return-value-caller)


		new_name_flag = (char*)alloca(strlen("SpLiTtEd_return_flag_caller"));
		new_name_value = (char*)alloca(strlen("SpLiTtEd_return_value_caller"));
		sprintf(new_name_flag,"SpLiTtEd_return_flag_caller");
		sprintf(new_name_value,"SpLiTtEd_return_value_caller");

		_caller_cwt_return_flag  = New_ST(CURRENT_SYMTAB);
		_caller_cwt_return_value = New_ST(CURRENT_SYMTAB);

		//pengzhao: Is EXPORT_INTERNAL proper? Don't know the exact 
		//meaning of flags insert the return-flag & return-value in the caller

		ST_Init( _caller_cwt_return_flag, Save_Str(new_name_flag), CLASS_VAR, SCLASS_AUTO,EXPORT_LOCAL, MTYPE_To_TY(MTYPE_I4));
		ST_Init( _caller_cwt_return_value, Save_Str(new_name_value), CLASS_VAR, SCLASS_AUTO,EXPORT_LOCAL, PU_prototype(Get_Current_PU()));
	
	}

	~SPLITTER(void)
	{
		WN_MAP_Delete(_parent_map );
//		pengzhao, should we deallocate the global|_local_label_list and _cold_WTs?
//		_global_label_list.Free_array();
//		_local_label_list.Free_array();
//		_cold_WTs.Free_array();
		if(dump_result)
		{
		  fprintf(TFile, "\tOutliner is finishing PU %s\n",ST_name(_carrier_st));	
		  fprintf(TFile, DBar);	
		}
	}
};



//struct COLD_WHIRL_TREE
class CWT_LIST_ELMT 
{
	private:

	SPLITTER		*_splitter;

//^the info about this CWT
	char			*_cold_PU_name;
	PU_Info			*_cold_pu_info;
	WN				*_cold_pu_tree;
	CWT_LIST_FLAG	_cwt_flag;
	INT				_seq_no;
	BOOL			CWT_may_return,CWT_has_non_local_jump; //pengzhao
	ST				*_new_pu_st;
	WN_MAP			_parent_map;	//Parent_Map()
	
	// _cwt_root_pos: the position of the whirl tree, before 
	// cutting, it is the cwt-root-wn, after cutting, it is 
	// the call site to the cwt. pengzhao
	WN 				*_cwt_root_pos; 	

	// _cwt_parent_wn: the parent of the root of cwt pengzhao
	WN 				*_cwt_parent_wn; 
	
	// _cwt_root_wn: it holds the root wn of the cwt even the 
	// tree is cut from the carrier
	WN				*_cwt_root_wn;	
	
	ACCESS_LIST* 	_local_access_list;
	RV_LIST*		_rv_list;

	LABEL_LIST*		_local_label_list;
	GOTO_LIST*		_local_goto_list;
	GOTO_LIST*		_out_goto_list;
	LABEL_LIST*		_out_label_list;

	//_cwt_return_flag is an INT variable inserted in the original carrier (its
	//name is "SpLiTtEd_return_flag", it is passed by pointer to the
	//CWT-function. the CWT-function modifies it according to the return mode:
	//
	//0: natural control flow
	//1: return (return_value) [need double-return]
	//>=2: the cwt-function goes to labels outside of the CWT
	//
	//#define CWT_NATURAL_FLOW			0
	//#define CWT_RETURN				1
	//#define CWT_NON_LOCAL_GOTO		2		// >=2

	ST 				*_cwt_return_flag;
	ST 				*_cwt_return_value;
	UINT 			_estimated_size; // estimated size for this whirl tree
	
public:

	friend INT		Appear_in_Label_List(LABEL_LIST *label_list, WN *wn);
	friend void 	Add_Label_List(LABEL_LIST *label_list ,WN* wn, mINT32 CWT_ID);
	friend INT	 	Appear_in_Goto_List(GOTO_LIST *goto_list ,WN* wn);
	friend void 	Add_Goto_List(GOTO_LIST *goto_list ,WN* wn, INT label_id);

	//SPLITTER::Record_cold_region(WN *wn)
	//pengzhao, _orig_pu_tree and _orig_pu_info

	INT Appear_in_access_list(ST* idx);
	CWT_LIST_ELMT( SPLITTER 	*splitter,
				   WN			*root_wn,
				   WN			*parent_wn):
				_estimated_size (0),
				_splitter		(splitter),
	            _parent_map		(splitter->Get_Parent_Map()),
				_cwt_flag		(SINGLE_ENTRY),
				_cwt_root_pos	(root_wn),
				_cwt_root_wn	(root_wn),
				_cwt_parent_wn	(parent_wn),
				CWT_may_return	(FALSE),
				CWT_has_non_local_jump (FALSE)//pengzhao
	{
	}
	~CWT_LIST_ELMT(void)
	{
	}
	inline void 			Set_cwt_flag(CWT_LIST_FLAG flag){_cwt_flag = flag;}
	inline CWT_LIST_FLAG 	Get_cwt_flag(){return _cwt_flag ;}
	inline void 			Set_root_wn(WN *root_wn){_cwt_root_wn=root_wn;}
	inline WN*	 			Get_root_wn(){return _cwt_root_wn;}
	inline void 			Set_cwt_seqno(INT value) {_seq_no = value;}
	inline INT  			Get_cwt_seqno() {return _seq_no; }
	inline WN_MAP			Get_Parent_Map(){ return _parent_map;}

	inline LABEL_LIST*&		Local_label_list(){return _local_label_list;}
	inline LABEL_LIST*&		Out_label_list(){return _out_label_list;} //no use?
	inline GOTO_LIST*&		Local_goto_list(){return _local_goto_list;}
	inline GOTO_LIST*&		Out_goto_list(){return _out_goto_list;}
	inline ACCESS_LIST*& 	Local_Access_List(){return _local_access_list;}
	inline RV_LIST*&		Rv_List(){return _rv_list;}

	inline char*&			Cold_pu_name(){return _cold_PU_name;}
	
	void Add_def( WN *wn);
	void Add_use( WN *wn);
	void Add_lda( WN *wn);
	void Record_access(ST *st, WN* wn, SPLITTER_ACCESS_FLAG flag);
	void Collect_access_stat(WN *wn);

	inline UINT& Estimated_size(){return _estimated_size;}

	void Repair_Caller();
	
	void Generate_Cold_Procedure();
//	void Splitter_Save_Local_Symtab (SYMTAB_IDX level, PU_Info *pu);

	void Generate_Callee_PU_ST();
	void Build_Cold_Pu_Scope_Tab();
	void Build_Callee_Local_Labels();
	void Handle_Outside_Gotos();
	void Fill_Local_Symtab_And_Update_CWT();
	void Modify_Return_Val_Wns();
	void Generate_Cold_PU_Info();
	void Collect_Outside_Goto_Info();
	void Print(FILE *fp);
	void Print_outward_flow(FILE *fp);
};

  // assertion-checking data structure for Save_Local_Symtab()/
  // Restore_Local_Symtab()
struct SPLITTER_SAVED_SCOPE {
  enum {
    MAGIC = 0x23456789
  };
  INT32 magic;
  ST *parent_pu_st;
  SCOPE *saved_scope;

  SPLITTER_SAVED_SCOPE(SCOPE *sc, SYMTAB_IDX level) :
      magic(MAGIC), parent_pu_st(Scope_tab[level - 1].st), saved_scope(sc)
    { }

    // get saved scope, with extensive assertion checking
  SCOPE *Get_Scope(SYMTAB_IDX level) {
    if (magic != MAGIC)
      Fail_FmtAssertion("bad SAVED_SCOPE magic number");
    if (Scope_tab[level - 1].st != parent_pu_st)
      Fail_FmtAssertion("parent PU ST mismatch between save and restore");

    return saved_scope;
  }
};

class OUTL_SCOPE_CONTEXT
{
private:
    SCOPE* _scope_tab;

public:
    OUTL_SCOPE_CONTEXT (SCOPE *scope) {
	_scope_tab = Scope_tab;
	Scope_tab = scope;
    }

    ~OUTL_SCOPE_CONTEXT () {
	Scope_tab = _scope_tab;
    }
}; // OUTL_SCOPE_CONTEXT


#if 0
class Context_Info
{
	private:
	PU_Info			*_orig_pu_info; //
	WN				*_orig_pu_tree;
	SYMBOL_TABLE	*_old_St_Table;

	ST				*_carrier_st;
	SYMTAB_IDX		_orig_level;
	WN_MAP			_parent_map;
	SCOPE			*_orig_scope_tab;	
	TYPE_ID			_return_type_id;
	TY_IDX			_return_ty_idx;

	public:
	
	inline PU_Info*		Orig_Pu_Info(){return _orig_pu_info;}
	inline WN*			Orig_Pu_Tree(){return _orig_pu_tree;}
	inline SYMBOL_TABLE*	Old_St_Table(){return _old_St_Table;}
	inline ST* 			Carrier_St(){return _carrier_st;}
	inline SYMTAB_IDX	Orig_Level(){return _orig_level;}
	inline WN_MAP		Parent_Map(){return _parent_map;}
	inline SCOPE*		Orig_Scope_Tab(){return _orig_scope_tab; }
	inline TYPE_ID		Return_Type_Id(){return _return_type_id;}
	inline TY_IDX		Return_Ty_Idx(){return	_return_ty_idx;}

	inline void			Set_Orig_Pu_Info(PU_Info* a){_orig_pu_info=a;}
	inline void			Set_Orig_Pu_Tree(WN*	a){_orig_pu_tree=a;}
	inline void			Set_Old_St_Table(SYMBOL_TABLE* a){_old_St_Table=a;}

	inline void			Set_Carrier_St(ST* a){_carrier_st = a;}
	inline void			Set_Orig_Level(SYMTAB_IDX a){_orig_level=a;}
	inline void 		Set_Parent_Map(WN_MAP a){_parent_map = a;}
	inline void			Set_Orig_Scope_Tab(SCOPE* a){_orig_scope_tab = a; }
	inline void 		Set_Return_Type_Id(TYPE_ID a){_return_type_id = a;}
	inline void			Set_Return_Ty_Idx(TY_IDX a){_return_ty_idx = a;}


};
#endif // #if 0
#endif //all
#endif //#define BE_OUTLINING_INCLUDED
