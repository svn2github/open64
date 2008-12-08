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

/*!
\file dipa_args.cxx
\brief dipa command line option processing.

*/

#include <stdio.h>
#include <stdlib.h>

#include <getopt.h>

#include "workaround.h"
#include "mempool.h"
#include "messg.h"
#include "dipa_args.h"
#include "dipa_phase_ctrl.h"

#define DIPA_VERSION "0.0.0.0"
#define DIPA_FULLNAME "Open Runtime IPA"

enum {
    OPTID_HELP = 1000,
    OPTID_TFILE,//  trace file
    OPTID_OPT_LEVEL0,   // -O0
    OPTID_OPT_LEVEL1,   // -O1
    OPTID_OPT_LEVEL2,   // -O2
    OPTID_OPT_LEVEL3,   // -O3
    OPTID_PHASE_BASE=2000
};


const char *dipa_usage_desc =
"Usage: dipa [options] file...\n\
";

#define MAX_DIPA_OPTIONS 256

static struct option dipa_options[MAX_DIPA_OPTIONS] = {
    {"help", 0, 0, OPTID_HELP},
    {"wt", 1, 0, OPTID_TFILE},
    {"O0", 0, 0, OPTID_OPT_LEVEL0},
    {"O1", 0, 0, OPTID_OPT_LEVEL1},
    {"O2", 0, 0, OPTID_OPT_LEVEL2},
    {"O3", 0, 0, OPTID_OPT_LEVEL3},
    {"noopt", 0, 0, OPTID_OPT_LEVEL3},
    {0, 0, 0, 0}
};

void Dipa_Print_Version(void)
{
    fprintf(stderr, "%s Version %s\n", DIPA_FULLNAME, DIPA_VERSION);
    exit (0);
}

void Dipa_Print_Usage(void)
{
    fprintf(stderr, "%s Version %s\n", DIPA_FULLNAME, DIPA_VERSION);
    fprintf(stderr, "%s", dipa_usage_desc);
    exit (0);
}

void Dipa_add_phase_opt(char *ph_name, INT32 phase_id)
{
    INT32 i;
    // a stupid algorithm that might be improved to find free slots
    for (i=0; i<MAX_DIPA_OPTIONS-1; i++) {
        if (dipa_options[i].name == NULL) {
            struct option *ph_opt = &dipa_options[i];
            ph_opt->name = ph_name;
            ph_opt->has_arg = 1; // no getopt-format parameters
            ph_opt->flag = 0;   // return option value
            ph_opt->val = OPTID_PHASE_BASE + phase_id;

            // truncate the option table
            ph_opt++;
            ph_opt->name = NULL;
            ph_opt->has_arg = 0;
            ph_opt->flag = 0;
            ph_opt->val = 0;
            return;
        }
    }
    FmtAssert((i < MAX_DIPA_OPTIONS), ("Too many phases\n"));
}

/*!  \func INT32 Dipa_Proc_Options ( INT32 argc, char *argv[])
   \brief process command line options and return the index of first file.

   Please be noted that argvs might be permutated by getopt() functions.

   \param argc  argument number
   \param argv  argument lists
   \return  none
*/
void Dipa_Proc_Options ( INT32 argc, char *argv[])
{
    INT32 opt_index, val;
    while (1) {
        opt_index = 0;

        // Don't allow argument permutation
        val = getopt_long_only(argc, argv, "-v", dipa_options, &opt_index);
        if (val == -1)
            break;  // end of options

        if (val >= OPTID_PHASE_BASE) {
            // phase specific arguments will be passed to its owner directly
            if (strcasecmp(optarg, "help") == 0) {
                DIPA_Phase_Manager::Get_Phase(val-OPTID_PHASE_BASE)->Help();
                exit (0);
            }
            DIPA_Phase_Manager::Get_Phase(val-OPTID_PHASE_BASE)->Add_Arg(optarg);
            continue;
        }

        // only global arguments will be processed
        switch (val) {
            case 1:
                printf("Non-option:%s\n", optarg);
                DIPA_Phase_Manager::Add_DIPA_File(optarg);
            break;
            // INT16 options
            case 'v':
                Dipa_Print_Version();
                break;
            // Long options
            case OPTID_HELP:
                Dipa_Print_Usage();
                break;
            case OPTID_TFILE:
                DIPA_Phase_Manager::Init_Trace_File ( optarg );
                break;
            case OPTID_OPT_LEVEL0:
            case OPTID_OPT_LEVEL1:
            case OPTID_OPT_LEVEL2:
            case OPTID_OPT_LEVEL3:

                break;
            case '?':
                printf("Undefined option:%s\n", argv[optind-1]);
                break;
        }
        if (val == '?')
            continue;

        // The argument ordering will be strictly kept except for those phase specific arguments
        if (val != 1) {
            DIPA_Phase_Manager::Add_Global_Arg(dipa_options[opt_index].name, optarg);
        } else {
            // files don't have name
            DIPA_Phase_Manager::Add_Global_Arg(NULL, optarg);
        }
    } // end of while
}

