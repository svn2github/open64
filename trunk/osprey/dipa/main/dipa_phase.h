/*

  Copyright (C) 2008 .  All Rights Reserved.

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

*/

#ifndef dipa_phase_INCLUDED
#define dipa_phase_INCLUDED

#include <list>
#include <utility>

#include "mempool.h"

/* ====================================================================
 * ====================================================================
 *
 *
 * Description:
 *
 * This module provides the interface for phase control.  It is based on
 * the program-independent functions provided by rta/open64/resource.h.
 *
 * ====================================================================
 * ====================================================================
 */

/*
 * Temporary:
 * In current implementation, phase id is bound to timer id which is used to collect resource
 * usage statistics. It will be changed later.
 */
typedef INT32 PHASE_ID;

#define INVALID_PHASE_ID (PHASE_ID)(-1)

/* Temporary references to old functions for collecting usage statistics */
#define Timer(i) Get_Rstate(i)
extern void Add_Timer_To_Parent ( INT Timer_ID );

class PHASE_STAT;
class DIPA_Phase;

/*
 * Please extend this class to handle DIPA object files
 */
class DIPA_Obj {
private:
    char *rfile;
public:
    void Set_Rfile(char *filename) { rfile = filename; }
    char *Get_Rfile(void) { return rfile; }

//    void *operator new (UINT num_bytes, MEM_POOL *pool) {
//        return MEM_POOL_Alloc(pool, num_bytes);
//    }
};

typedef std::list<DIPA_Obj * > DIPA_Olist;
typedef DIPA_Olist::iterator DIPA_Olist_Iter;


typedef std::pair<const char *, const char * > CMD_ARG;

typedef std::list<CMD_ARG> CMD_ARGS;
typedef CMD_ARGS::iterator CMD_ARGS_Iter;

typedef std::list<DIPA_Phase *> Phase_List;
typedef Phase_List::iterator Phase_Iter;

class DIPA_Phase {
private:
    DIPA_Phase *parent;    // parent phase if this is a sub function
    Phase_List childs;    // double-linked list for all phases at the same level

    CMD_ARGS arg_list;    // phase specific arguments
    PHASE_ID phase_id;    // a unique integer ID
    const char *phase_name;
    PHASE_STAT *phase_stat;    // statistics information like cpu and memory usage
    DIPA_Olist *rolist;    // Object files to be processed
    BOOL enabled;    // if this phase is enabled or not
    BOOL tracing_enabled;    // enable tracing or not

public:
    DIPA_Phase(const char *_name);
    ~DIPA_Phase();

    void Add_Arg(char *arg);
    virtual void Proc_Arg(CMD_ARGS *args, DIPA_Olist *olist);

    const char *Get_Name(void) {return phase_name; }
    void Set_Name(const char *_name) { phase_name = _name; }
    PHASE_ID Get_Id(void) { return phase_id; }
    void Set_Id(PHASE_ID _id) { phase_id = _id; }

    void Enable(void) { enabled = true; }
    void Disable(void) { enabled = false; }
    BOOL Is_Enabled(void) { return enabled; }

    void Enable_Tracing(void) { tracing_enabled = true; }
    void Disable_Tracing(void) { tracing_enabled = false; }
    BOOL Is_Tracing_Enabled(void) { return tracing_enabled; }

    virtual void Pre_Dump_IR(FILE *file=NULL);
    virtual void Post_Dump_IR(FILE *file=NULL);

    Phase_List *Get_Childs(void) { return &childs; }

    virtual BOOL Start(CMD_ARGS *args, DIPA_Olist *olist);    /* Process IPA objects */
    virtual BOOL Stop(void) {}    /* Stop execution of a phase */
    virtual BOOL Cleanup(void) {}    /* Phase cleanup */

    virtual void Help(void);    /* Provide phase specific help message */

    void Accum_Stats(void);
    void Accum_Stats(DIPA_Phase *ph);

    void Set_Resource_Limit(INT32 millisecs, INT32 kbytes);
    void Dump_Time_Usage(FILE *file=NULL) {}
    void Dump_Mem_Usage(FILE *file=NULL)  {}
    void Dump_Mem_Prof(FILE *file=NULL)   {}
    void Dump_Stats(FILE *file=NULL);

    void Dump_Phase(INT32 level) {
        for (INT32 i=0; i<level+1; i++)
            printf("  ");
        printf("phase name: [%s]\n", phase_name);
        if (!childs.empty()) {
            Phase_Iter it;
            for (it = childs.begin(); it != childs.end(); it++)
                (*it)->Dump_Phase(level+1);
        }
    }
};
#endif /* dipa_phase_INCLUDED */
