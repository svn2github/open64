/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/

#ifndef opt_wovp_INCLUDED
#define opt_wovp_INCLUDED "opt_wovp.h"

#include "opt_bb.h"           //BB_LIST_CONTAINER
#include "cxx_memory.h"       //CXX_NEW* && MEM_POOL
#include "opt_cfg.h"          //CFG
#include "opt_sym.h"          //OPT_STAB
#include "opt_htable.h"       //CODEREP && STMTREP
#include "error.h"            //Is_True DevWarn
#include "defs.h"             //IDTYPE
#include "vector"             //Vector

using namespace std;

class WO_LOC{
private:
  IDTYPE    _lhs_aux_id;
  IDTYPE    _rhs_aux_id;
  STMTREP*  _stmtrep;
  BOOL      _promote;
public:
  WO_LOC(IDTYPE l, IDTYPE r, STMTREP* st){
    _lhs_aux_id = l;
    _rhs_aux_id = r;
    _stmtrep    = st;
    _promote    = FALSE;
  }
  ~WO_LOC(){}
  IDTYPE&  Get_lid()           {return _lhs_aux_id;}
  IDTYPE&  Get_rid()           {return _rhs_aux_id;}
  STMTREP* Get_stmt()          {return _stmtrep;}
  BOOL     Get_promote()       {return _promote;}
  void     Set_promote(BOOL p) {_promote = p;}
};

class WOVP{
private:
  vector<WO_LOC*> _wovp_loc;
  MEM_POOL  _pool;
  CFG      *_cfg;
  OPT_STAB *_opt_stab;

  void Add_wo_loc(IDTYPE l, IDTYPE r, STMTREP* stmt)
  {
    Is_True(stmt!=NULL, ("StmtREP is NULL"));
    _wovp_loc.push_back(CXX_NEW(WO_LOC(l, r, stmt), &_pool));
  }
  CODEREP*  Find_by_id(CODEREP *cr, IDTYPE id);
  void      Print_wo_loc(FILE *fp=stderr);
  BOOL      Write_once_check(IDTYPE id, BB_LIST_CONTAINER *bb_queue);

public:
  WOVP(CFG *cfg, OPT_STAB *opt_stab)
  {
    _cfg = cfg;
    _opt_stab = opt_stab;
    MEM_POOL_Initialize(&_pool, "WOVP_pool", FALSE);
    MEM_POOL_Push(&_pool);
  }
  ~WOVP()
  {
    MEM_POOL_Pop(&_pool);
    MEM_POOL_Delete(&_pool);
  }

  void Find_mm_pair();
  BOOL Is_write_once(IDTYPE id);
  void Promote(void);
  void Do_wovp();
};
#endif  // opt_wovp_INCLUDE
