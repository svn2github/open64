/*
  Copyright (C) 2009, 2010 Xiaomi An.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of Apache License as published by
  the Free Software Foundation.
  Author: Xiaomi An, 2009.
*/

#ifndef alias_analysis_INCLUDED
#define alias_analysis_INCLUDED "alias_analysis.h"

enum RESERVED_ALIAS_ID {
  ILLEGAL_ALIAS_ID = 0,	// this aux_id is always invalid
  MESS_ALIAS_ID = 1,    // this aux_id is always aliased to other
};

extern void Create_Adsn_Manager(WN *region, OPT_STAB *opt_stab, MEM_POOL *pool);
extern BOOL Adsn_Manager_Initialized();
extern BOOL Aliased_Id_By_Adsn(IDTYPE id1, IDTYPE id2);
extern IDTYPE Get_Wn_Adsn_Id(WN *wn);
extern IDTYPE Get_St_Adsn_Id(ST *st);
extern IDTYPE Get_Reg_Adsn_Id(WN_OFFSET preg_id);
extern IDTYPE Get_Adsn_Dereference_Id(IDTYPE id);
extern IDTYPE Get_Adsn_Addr_Id(IDTYPE id);
extern BOOL Verify_Wn_Adsn_Id(OPERATOR opr, IDTYPE id);
#endif

