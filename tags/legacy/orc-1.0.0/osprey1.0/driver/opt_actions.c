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


#include <string.h>
#include <stdlib.h>
#include "config_platform.h"
#include "opt_actions.h"
#include "options.h"
#include "option_names.h"
#include "option_seen.h"
#include "lang_defs.h"
#include "errors.h"
#include "file_utils.h"
#include "file_names.h"
#include "string_utils.h"
#include "get_options.h"
#include "objects.h"
#include "phases.h"
#include "run.h"

/* keep list of previous toggled option names, to give better messages */
typedef struct toggle_name_struct {
	int *address;
	string name;
} toggle_name;
#define MAX_TOGGLES	50
static toggle_name toggled_names[MAX_TOGGLES];
static int last_toggle_index = 0;
static int inline_on_seen = FALSE;
int inline_t = UNDEFINED;
boolean dashdash_flag = FALSE;
boolean read_stdin = FALSE;
boolean xpg_flag = FALSE;
int default_olevel = UNDEFINED;
static int default_isa = UNDEFINED;
static int default_proc = UNDEFINED;
int instrumentation_invoked = UNDEFINED;
boolean ftz_crt = FALSE;

/* ====================================================================
 *
 * -Ofast targets
 *
 * Given an -Ofast option, tables which map the IP numbers to
 * processors for use in Ofast_Target below.
 *
 * See common/com/MIPS/config_platform.h.
 *
 * PV 378171:  Change this and config.c to use an external table.
 *
 * ====================================================================
 */

/* Mapping from processors to best ISA: */
static struct {
  PROCESSOR p;
  ISA	isa;
  int	opt;
} P_to_I_Map[] =
{
#ifdef TARG_MIPS
  { PROC_R4K,	ISA_MIPS3,  O_mips3 },
  { PROC_R5K,	ISA_MIPS4,  O_mips4 },
  { PROC_R8K,	ISA_MIPS4,  O_mips4 },
  { PROC_R10K,	ISA_MIPS4,  O_mips4 },
#endif
  { PROC_ITANIUM,	ISA_IA641,  O_Unrecognized },
  { PROC_NONE,	ISA_NONE,  O_Unrecognized }
};

static struct {
  string pname;
  PROCESSOR pid;
} Proc_Map[] =
{
  { "r4000",	PROC_R4K },
  { "r4k",	PROC_R4K },
  { "r5000",	PROC_R5K },
  { "r5k",	PROC_R5K },
  { "r8000",	PROC_R8K },
  { "r8k",	PROC_R8K },
  { "r10000",	PROC_R10K },
  { "r10k",	PROC_R10K },
  { "r12000",	PROC_R10K },
  { "r12k",	PROC_R10K },
  { "r14000",	PROC_R10K },
  { "r14k",	PROC_R10K },
  { "r16000",	PROC_R10K },
  { "r16k",	PROC_R10K },
  { "itanium",	PROC_ITANIUM },
  { NULL,	PROC_NONE }
};

int ofast = UNDEFINED;	/* -Ofast toggle -- implicit in Process_Ofast */
char *Ofast_Name = NULL;/* -Ofast= name */


static void
add_toggle_name (int *obj, string name)
{
	int i;
	for (i = 0; i < last_toggle_index; i++) {
		if (obj == toggled_names[i].address) {
			break;
		}
	}
	if (i == last_toggle_index) {
		if (last_toggle_index >= MAX_TOGGLES) {
			internal_error("too many toggle names\n");
		} else {
			last_toggle_index++;
		}
	}
	toggled_names[i].address = obj;
	toggled_names[i].name = string_copy(option_name);
}

static string
get_toggle_name (int *obj)
{
	int i;
	for (i = 0; i < last_toggle_index; i++) {
		if (obj == toggled_names[i].address) {
			return toggled_names[i].name;
		}
	}
	internal_error("no previously toggled name?");
	return "<unknown>";
}

/* return whether has been toggled yet */
extern boolean
is_toggled (int obj)
{
	return (obj != UNDEFINED);
}

/* set obj to value; allow many toggles; last toggle is final value */
extern void
toggle (int *obj, int value)
{
	if (*obj != UNDEFINED && *obj != value) {
		warning ("%s conflicts with %s; using latter value (%s)", 
			get_toggle_name(obj), option_name, option_name);
	}
	*obj = value;
	add_toggle_name(obj, option_name);
}

/* ====================================================================
 *
 * Get_Group_Option_Value
 *
 * Given a group option string, search for the option with the given
 * name.  Return NULL if not found, the option value if found ("" if
 * value is empty).
 *
 * ====================================================================
 */

static char *
Get_Group_Option_Value (
  char *arg,	/* Raw option string */
  char *name,	/* Suboption full name */
  char *abbrev)	/* Suboption abbreviation */
{
  char *endc = arg;
  int n;

  while ( TRUE ) {
    n = strcspn ( arg, ":=" );
    if ( strncasecmp ( arg, abbrev, strlen(abbrev) ) == 0
      && strncasecmp ( arg, name, n ) == 0 )
    {
      endc += n;
      if ( *endc == '=' ) {
	/* Duplicate value lazily: */
	char *result = strdup ( endc+1 );

	* ( result + strcspn ( result, ":=" ) ) = 0;
	return result;
      } else {
	/* No value: */
	return "";
      }
    }
    if ( ( endc = strchr ( arg, ':' ) ) == NULL ) return NULL;
    arg = ++endc;
  }

  /* Shouldn't get here, but ... */
  /* return NULL;  compiler gets better */
}

/* ====================================================================
 *
 * Bool_Group_Value
 *
 * Given a group option value string for a Boolean group value,
 * determine whether it is TRUE or FALSE.
 *
 * ====================================================================
 */

static boolean
Bool_Group_Value ( char *val )
{
  if ( *val == 0 ) {
    /* Empty string is TRUE for group options */
    return TRUE;
  }

  if ( strcasecmp ( val, "OFF" ) == 0
    || strcasecmp ( val, "NO" ) == 0
    || strcasecmp ( val, "FALSE" ) == 0
    || strcasecmp ( val, "0" ) == 0 )
  {
    return FALSE;
  } else {
    return TRUE;
  }
}

/* ====================================================================
 *
 * Routine to manage the implications of -Ofast.
 *
 * Turn on -O3 and -IPA.  Check_Target below will deal with the ABI and
 * ISA implications later.
 *
 * ====================================================================
 */

void
Process_Ofast ( char *ipname )
{
  int flag;
  char *suboption;

  /* Remember the name for later defaulting of ISA/processor: */
  Ofast_Name = string_copy (ipname);

  /* -O3: */
  if (!Gen_feedback) {
     O3_flag = TRUE;
     toggle ( &olevel, 3 );
     add_option_seen ( O_O3 );

#ifdef TARG_IA64
     ftz_crt = TRUE;	// flush to zero
#endif

     /* -IPA: */
     toggle ( &ipa, TRUE );
     add_option_seen ( O_IPA );

     /* -OPT:Ofast=ipname
      * We will call add_string_option using O_OPT_; if the descriptor
      * for it in OPTIONS changes, this code might require change...
      * Build the "Ofast=ipname" string, then call add_string_option:
      */
     toggle ( &ofast, TRUE );
     suboption = concat_strings ( "Ofast=", ipname );
     flag = add_string_option ( O_OPT_, suboption );
     add_option_seen ( flag );
   } else {
     suboption = concat_strings ( "platform=", ipname );
     flag = add_string_option ( O_TARG_, suboption );
     add_option_seen ( flag );
   }
}

/* ====================================================================
 *
 * Process_Opt_Group
 *
 * We've found a -OPT option group.  Inspect it for -OPT:reorg_common
 * options, and set -split_common and -ivpad accordingly.
 *
 * NOTE: We ignore anything that doesn't match what's expected --
 * the compiler will produce reasonable error messages for junk.
 *
 * ====================================================================
 */

void
Process_Opt_Group ( string opt_args )
{
  char *optval = NULL;

  if ( debug ) {
    fprintf ( stderr, "Process_Opt_Group: %s\n", opt_args );
  }
  
  /* Go look for -OPT:instrument */
  optval = Get_Group_Option_Value ( opt_args, "instrumentation", "instr");
  if (optval != NULL) {
     instrumentation_invoked = TRUE;
  }

  /* Go look for -OPT:reorg_common: */
  optval = Get_Group_Option_Value ( opt_args, "reorg_common", "reorg");
  if ( optval != NULL && Bool_Group_Value(optval)) {
    /* If we found it, set -Wl,-split_common,-ivpad: */
    add_option_seen ( O_split_common );
    add_option_seen ( O_ivpad );
  }
}

void
Process_Default_Group (string default_args)
{
  string s;
  int i;

  if ( debug ) {
    fprintf ( stderr, "Process_Default_Group: %s\n", default_args );
  }

  /* Go look for -DEFAULT:isa=mipsN: */
  s = Get_Group_Option_Value ( default_args, "isa", "isa");
  if (s != NULL && same_string_prefix (s, "mips")) {
	default_isa = atoi(s + strlen("mips"));
  }
  /* Go look for -DEFAULT:proc=rN000: */
  s = Get_Group_Option_Value ( default_args, "proc", "proc");
  if (s != NULL) {
	for (i = 0; Proc_Map[i].pname != NULL; i++) {
		if (same_string(s, Proc_Map[i].pname)) {
			default_proc = Proc_Map[i].pid;
		}
	}
  }
  /* Go look for -DEFAULT:opt=[0-3]: */
  s = Get_Group_Option_Value ( default_args, "opt", "opt");
  if (s != NULL) {
	default_olevel = atoi(s);
  }
  /* Go look for -DEFAULT:arith=[0-3]: */
  s = Get_Group_Option_Value ( default_args, "arith", "arith");
  if (s != NULL) {
	i = add_string_option (O_OPT_, concat_strings("IEEE_arith=", s));
	add_option_seen (i);
  }
}

/* ====================================================================
 *
 * Routines to manage the target selection (ABI, ISA, and processor).
 *
 * Make sure that the driver picks up a consistent view of the target
 * selected, based either on user options or on defaults.
 *
 * ====================================================================
 */

/* ====================================================================
 *
 * Process_Targ_Group
 *
 * We've found a -TARG option group.  Inspect it for ABI, ISA, and/or
 * processor specification, and toggle the state appropriately.
 *
 * NOTE: We ignore anything that doesn't match what's expected --
 * the compiler will produce reasonable error messages for junk.
 *
 * ====================================================================
 */

void
Process_Targ_Group ( string targ_args )
{
  char *cp = targ_args;	/* Skip -TARG: */
  char *cpeq;
  string ftz;

  if ( debug ) {
    fprintf ( stderr, "Process_Targ_Group: %s\n", targ_args );
  }

  ftz = Get_Group_Option_Value ( targ_args, "flush_to_zero", "flush_to_zero");
  if ( ftz != NULL && Bool_Group_Value(ftz)) {
    /* link in ftz.o */
    ftz_crt = TRUE;
  }

  while ( *cp != 0 ) {
    switch ( *cp ) {
      case 'a':
	if ( strncasecmp ( cp, "abi", 3 ) == 0 && *(cp+3) == '=' ) {
#ifdef TARG_MIPS
	  if ( strncasecmp ( cp+4, "n32", 3 ) == 0 ) {
	    add_option_seen ( O_n32 );
	    toggle ( &abi, ABI_N32 );
	  } else if ( strncasecmp ( cp+4, "64", 2 ) == 0 ) {
	    add_option_seen ( O_64 );
	    toggle ( &abi, ABI_64 );
	  }
#endif
	}
	break;

      case 'e':
	if ( strncasecmp ( cp, "exc_enable", 10 ) == 0 && *(cp+10) == '=' ) {
  	  int flag;
  	  buffer_t buf;
	  int mask = 0;
	  cp += 11;
    	  while ( *cp != 0 && *cp != ':' ) {
	    switch (*cp) {
	    case 'I': mask |= (1 << 5); break;
	    case 'U': mask |= (1 << 4); break;
	    case 'O': mask |= (1 << 3); break;
	    case 'Z': mask |= (1 << 2); break;
	    case 'D': mask |= (1 << 1); break;
	    case 'V': mask |= (1 << 0); break;
	    }
	    ++cp;
	  }
	  flag = add_string_option(O_WlC, "-defsym,_IEEE_ENABLE_DEFINED=1");
	  add_option_seen (flag);
	  sprintf(buf, "-defsym,_IEEE_ENABLE=%#x", mask);
	  flag = add_string_option(O_WlC, buf);
	  add_option_seen (flag);
	}
	break;

      case 'i':
	/* We support both isa=mipsn and plain mipsn in group.
	 * Simply move cp to point to value, and fall through to
	 * 'm' case:
	 */
	if ( strncasecmp ( cp, "isa", 3 ) != 0 || *(cp+3) != '=' ) {
	  break;
	} else {
	  cp += 4;
	}
	/* Fall through */

      case 'm':
#ifdef TARG_MIPS
	if ( strncasecmp ( cp, "mips", 4 ) == 0 ) {
	  if ( '1' <= *(cp+4) && *(cp+4) <= '6' ) {
	    toggle ( &isa, *(cp+4) - '0' );
	    switch ( isa ) {
	      case 1:	add_option_seen ( O_mips1 );
			break;
	      case 2:	add_option_seen ( O_mips2 );
			break;
	      case 3:	add_option_seen ( O_mips3 );
			break;
	      case 4:	add_option_seen ( O_mips4 );
			break;
	      default:	error ( "invalid ISA: %s", cp );
			break;
	    }
	  }
	}
#endif
	break;

      case 'p':
	/* Allow abbreviation of "processor" to "pr" or longer: */
	cpeq = strchr ( cp, '=' );
	if ( cpeq != NULL
	  && strncasecmp ( cp, "processor", cpeq-cp ) == 0 )
	{
	  /* We don't actually add options here, because they don't
	   * have implications (e.g. associated -D options), and the
	   * phases will do just fine based on the -TARG: option:
	   */
	  int i;
	  cp = cpeq+1;
	  for (i = 0; Proc_Map[i].pname != NULL; i++) {
		if (same_string(cp, Proc_Map[i].pname)) {
			toggle (&proc, Proc_Map[i].pid);
		}
	  }
	}
	break;
    }

    /* Skip to the next group option: */
    while ( *cp != 0 && *cp != ':' ) ++cp;
    if ( *cp == ':' ) ++cp;
  }
}

/* ====================================================================
 *
 * Ofast_Target
 *
 * There was a -Ofast option, which affects the target defaults.
 * The ABI always defaults to -n32 (today).  The processor then
 * defaults to that used in the platform indicated by -Ofast, or the
 * r10000 (today).  Finally, the ISA is defaulted to the highest
 * supported by the platform, usually -mips4 today.
 *
 * ====================================================================
 */

static void
Ofast_Target ( void )
{
  int ix;
  PLATFORM_OPTIONS *popts;

  /* Driverwrap should always insert an ABI, but just in case: */
  if ( abi == UNDEFINED ) {
    add_option_seen ( O_i64 );
    option_name = get_option_name ( O_Ofast );
    toggle ( &abi, ABI_I64 );
  }

  /* Now fetch the IP descriptor by name: */
  popts = Get_Platform_Options ( Ofast_Name );

  /* Get the processor -- we won't bother to toggle it since the
   * compiler will figure it out the same way and only this routine
   * in the driver needs it:
   */
  if ( proc == UNDEFINED ) {
    if ( Ofast_Name != NULL
      && *Ofast_Name != 0
      && popts->id == IP0 )
    {
      warning ( "Unrecognized -Ofast value '%s': defaulting to '%s' (%s)", 
		Ofast_Name, popts->name, popts->nickname );
    }
    proc = popts->processor;
  }

  /* Finally, get the ISA (the purpose of all this): */
  if ( isa == UNDEFINED ) {
    for ( ix = 0;
	  P_to_I_Map[ix].p != proc && P_to_I_Map[ix].p != PROC_NONE;
	  ++ix )
    { }
    add_option_seen ( P_to_I_Map[ix].opt );
    option_name = get_option_name ( P_to_I_Map[ix].opt );
    toggle ( &isa, P_to_I_Map[ix].isa );
  }

  if ( debug ) {
    fprintf ( stderr,
	      "Ofast_Target -Ofast=%s: '%s' (%s) r%dk mips%d\n",
	      Ofast_Name, popts->name, popts->nickname, proc, isa );
  }
}

/* ====================================================================
 *
 * Check_Target
 *
 * Verify that the target selection is consistent and set defaults.
 *
 * ====================================================================
 */

void
Check_Target ( void )
{
  int opt_id;
  int opt_val;

  if ( debug ) {
    fprintf ( stderr, "Check_Target ABI=%d ISA=%d Processor=%d\n",
	      abi, isa, proc );
  }

  /* If -Ofast is given, default to -n32, specified platform's
   * processor, and best ISA:
   */
  if ( (ofast == TRUE) || (Gen_feedback == TRUE)) {
    Ofast_Target ();
  }

  if (abi == UNDEFINED) {
#ifdef IA64
	toggle(&abi, ABI_I64);
    	add_option_seen ( O_i64 );
#elif IA32
	toggle(&abi, ABI_IA32);
    	add_option_seen ( O_ia32 );
#else
	warning("abi should have been specified by driverwrap");
  	/* If nothing is defined, default to -n32 */
    	toggle ( &abi, ABI_N32 );
    	add_option_seen ( O_n32 );
#endif
  }

  /* Check ABI against ISA: */
  if ( isa != UNDEFINED ) {
    switch ( abi ) {
#ifdef TARG_MIPS
      case ABI_N32:
	if ( isa < ISA_MIPS3 ) {
	  add_option_seen ( O_mips3 );
	  warning ( "ABI specification %s conflicts with ISA "
		    "specification %s: defaulting ISA to mips3",
		    get_toggle_name (&abi),
		    get_toggle_name (&isa) );
	  option_name = get_option_name ( O_mips3 );
	  isa = UNDEFINED;	/* To avoid another message */
	  toggle ( &isa, ISA_MIPS3 );
	}
	break;

      case ABI_64:
	if ( isa < ISA_MIPS3 ) {
	  /* Default to -mips4 if processor supports it: */
	  if ( proc == UNDEFINED || proc >= PROC_R5K ) {
	    opt_id = O_mips4;
	    opt_val = ISA_MIPS4;
	    add_option_seen ( O_mips4 );
	  } else {
	    opt_id = O_mips3;
	    opt_val = ISA_MIPS3;
	    add_option_seen ( O_mips3 );
	  }
	  warning ( "ABI specification %s conflicts with ISA "
		    "specification %s: defaulting ISA to mips%d",
		    get_toggle_name (&abi),
		    get_toggle_name (&isa),
		    opt_val );
	  option_name = get_option_name ( opt_id );
	  isa = UNDEFINED;	/* To avoid another message */
	  toggle ( &isa, opt_val );
	}
	break;
#endif
    }

  } else {
    /* ISA is undefined, so derive it from ABI and possibly processor: */

    switch ( abi ) {
#ifdef TARG_MIPS
      case ABI_N32:
      case ABI_64:
        if (default_isa == ISA_MIPS3) {
	  opt_val = ISA_MIPS3;
	  opt_id = O_mips3;
	}
	else if (default_isa == ISA_MIPS4) {
	  opt_val = ISA_MIPS4;
	  opt_id = O_mips4;
	}
	else if (abi == ABI_64 && proc != PROC_R4K) {
	  opt_val = ISA_MIPS4;
	  opt_id = O_mips4;
	}
	else {
	  opt_val = ISA_MIPS3;
	  opt_id = O_mips3;
	}
	toggle ( &isa, opt_val );
	add_option_seen ( opt_id );
	option_name = get_option_name ( opt_id );
	break;
#endif
      case ABI_I32:
      case ABI_I64:
	opt_val = ISA_IA641;
	toggle ( &isa, opt_val );
	break;
      case ABI_IA32:
	opt_val = ISA_IA32;
	toggle ( &isa, opt_val );
	break;
    }
  }
  if (isa == UNDEFINED) {
	internal_error ("isa should have been defined by now");
  }

  /* Check ABI against processor: */
  if ( proc != UNDEFINED ) {
    switch ( abi ) {
#ifdef TARG_MIPS
      case ABI_N32:
      case ABI_64:
	if ( proc < PROC_R4K ) {
	  warning ( "ABI specification %s conflicts with processor "
		    "specification %s: defaulting processor to r10000",
		    get_toggle_name (&abi),
		    get_toggle_name (&proc) );
	  option_name = get_option_name ( O_r10000 );
	  proc = UNDEFINED;	/* To avoid another message */
	  add_option_seen ( O_r10000 );
	  toggle ( &proc, PROC_R10K );
	}
	break;
#endif
    }
  }

  /* Check ISA against processor: */
  if ( proc != UNDEFINED ) {
    switch ( isa ) {
#ifdef TARG_MIPS
      case ISA_MIPS1:
	/* Anything works: */
	break;

      case ISA_MIPS2:
      case ISA_MIPS3:
	if ( proc < PROC_R4K ) {
	  warning ( "ISA specification %s conflicts with processor "
		    "specification %s: defaulting processor to r10000",
		    get_toggle_name (&isa),
		    get_toggle_name (&proc) );
	  add_option_seen ( O_r10000 );
	  proc = UNDEFINED;	/* To avoid another message */
	  option_name = get_option_name ( O_r10000 );
	  toggle ( &proc, PROC_R10K );
	}
	break;

      case ISA_MIPS4:
	if ( proc < PROC_R5K ) {
	  warning ( "ISA specification %s conflicts with processor "
		    "specification %s: defaulting processor to r10000",
		    get_toggle_name (&isa),
		    get_toggle_name (&proc) );
	  add_option_seen ( O_r10000 );
	  proc = UNDEFINED;	/* To avoid another message */
	  option_name = get_option_name ( O_r10000 );
	  toggle ( &proc, PROC_R10K );
	}
	break;
#endif
    }
  }
  else if (default_proc != UNDEFINED) {
	/* set proc if compatible */
	opt_id = 0;
#ifdef TARG_MIPS
	switch (default_proc) {
	case PROC_R4K:
		if (isa <= ISA_MIPS3) {
			opt_id = O_r4000;
		}
		break;
	case PROC_R5K:
		opt_id = O_r5000;
		break;
	case PROC_R8K:
		opt_id = O_r8000;
		break;
	case PROC_R10K:
		opt_id = O_r10000;
		break;
	}
#endif
	if (abi == ABI_I64 || abi == ABI_IA32) {
		opt_id = 0;	/* no proc for i64, ia32 yet */
	}
	if (opt_id != 0) {
		add_option_seen ( opt_id );
		option_name = get_option_name ( opt_id );
		toggle ( &proc, default_proc);
	}
  }

  if ( debug ) {
    fprintf ( stderr, "Check_Target done; ABI=%d ISA=%d Processor=%d\n",
	      abi, isa, proc );
  }
}

/* ====================================================================
 *
 * Routines to manage inlining choices (the -INLINE group and friends).
 *
 * ====================================================================
 */

/* toggle inline for a normal option (not "=on" or "=off") */

static void
toggle_inline_normal(void)
{
  if (inline_t == UNDEFINED)
    inline_t = TRUE;
}

/* toggle inline for "=on" */

static void
toggle_inline_on(void)
{
  if (inline_t == FALSE) {
    warning ("-noinline or -INLINE:=off has been seen, %s ignored",
	     option_name);
  }
  else {

    inline_t = TRUE;
    inline_on_seen = TRUE;
  }
}

/* toggle inline for "=off" */

static void
toggle_inline_off(void)
{
  if (inline_on_seen == TRUE) {
    warning ("Earlier request for inline processing has been overridden by %s",
	     option_name);
  }
  inline_t = FALSE;
}

/* process -INLINE option */
void
Process_Inline ( void )
{
  int more_symbols = TRUE;
  char *args = option_name+7;

  if (strncmp (option_name, "-noinline", 9) == 0)
      toggle_inline_off();
  else if (*args == '\0')
    /* Treat "-INLINE" like "-INLINE:=on" for error messages */
    toggle_inline_on();
  else do {
    char *endc;
    *args = ':';
    if ((endc = strchr(++args, ':')) == NULL)
      more_symbols = FALSE;
    else
      *endc = '\0';
    if (strcasecmp(args, "=off") == 0)
      toggle_inline_off();
    else if (strcasecmp(args, "=on") == 0)
      toggle_inline_on();
    else
      toggle_inline_normal();
    args = endc;
  }
  while (more_symbols);
}

/*
 * Processing -F option: ratfor-related stuff for Fortran, but
 * (obsolete) C code generation option in C++ and unknown for C.
 */
void dash_F_option(void)
{
    if (invoked_lang == L_f77) {
	last_phase=earliest_phase(P_ratfor,last_phase);
    } else if (invoked_lang == L_CC) {
	error("-F is not supported: cannot generate intermediate C code");
    } else {
	parse_error("-F", "unknown flag");
    }
}

/* untoggle the object, so it can be re-toggled later */
extern void
untoggle (int *obj, int value)
/*ARGSUSED*/
{
  *obj = UNDEFINED;
}

/* change path for particular phase(s), e.g. -Yb,/usr */
static void
change_phase_path (string arg)
{
	string dir;
	string s;
	for (s = arg; s != NULL && *s != NIL && *s != ','; s++)
		;
	if (s == NULL || *s == NIL) {
		parse_error(option_name, "bad syntax for -Y option");
		return;
	}
	dir = s+1;
	if (dir[0] == '~' && (dir[1] == '/' || dir[1] == '\0')) {
	    char *home = getenv("HOME");
	    if (home)
		dir = concat_strings(home, dir+1);
	}
	if (!is_directory(dir))
		parse_error(option_name, "not a directory");
	for (s = arg; *s != ','; s++) {
		/* do separate check so can give better error message */
		if (get_phase(*s) == P_NONE) {
			parse_error(option_name, "bad phase for -Y option");
		} else {
			set_phase_dir(get_phase_mask(get_phase(*s)), dir);
		}
	}
}

/* halt after a particular phase, e.g. -Hb */
/* but also process -H and warn its ignored */
static void
change_last_phase (string s)
{
	phases_t phase;
	if (s == NULL || *s == NIL) {
		warn_ignored("-H");
	} else if ( *(s+1)!=NIL) {
		parse_error(option_name, "bad syntax for -H option");
	} else if ((phase=get_phase(*s)) == P_NONE) {
			parse_error(option_name, "bad phase for -H option");
	} else {
			last_phase=earliest_phase(phase, last_phase);
	}
}

extern void
save_name (string *obj, string value)
{
	*obj = string_copy(value);
}

static void
check_output_name (string name)
{
	if (name == NULL) return;
	if (get_source_kind(name) != S_o && file_exists(name)) {
		warning("%s %s will overwrite a file that has a source-file suffix", option_name, name);
	}
}

void
check_dashdash (void)
{
	if(xpg_flag)
	   dashdash_flag = 1;
	else
	   error("%s not allowed in non XPG4 environment", option_name);
}

static string
Get_Binary_Name ( string name)
{
  string new;
  int len, i;
  new = string_copy(name);
  len = strlen(new);
  for ( i=0; i<len; i++ ) {
    if (strncmp(&new[i], ".x.Counts", 9) == 0) {
      new[i] = 0;
      break;
    }
  }
  return new;
}
 
void
Process_fbuse ( char *fname )
{
static boolean is_first_count_file = TRUE;
Use_feedback = TRUE;
add_string (count_files, fname);
if (is_first_count_file && (prof_file == NULL))
  prof_file = Get_Binary_Name(drop_path(fname));
is_first_count_file = FALSE;
}

Process_fb_type ( char*  typename)
{
  char str[10];
  int flag;
  fb_type = string_copy(typename);
  sprintf(str,"type=%s",fb_type);
  flag = add_string_option (O_OPT_, str);
  add_option_seen(flag);
}
void
Process_fb_create ( char *fname )
{
   int flag;
   fb_file = string_copy(fname);

   if (instrumentation_invoked == TRUE) {
	/* instrumentation already specified */
   	flag = add_string_option (O_OPT_, "instr_unique_output=on");
   }
   else {
   	toggle ( &instrumentation_invoked, TRUE );
        if (fb_phase != NULL){
          char str[40];
          sprintf(str,"instr=on:instr_unique_output=on");
      	  flag = add_string_option (O_OPT_, str);
        }else
          flag = add_string_option (O_OPT_, "instr=on:instr_unique_output=on");
   }
   add_option_seen (flag);

}

void 
Process_fb_phase(char *phase)
{
  char str[10];
  int flag;
  fb_phase = string_copy(phase);
  sprintf(str,"phase=%s",fb_phase);
  flag = add_string_option (O_OPT_, str);
  add_option_seen(flag);
}
void
Process_fb_opt ( char *fname )
{
   fb_file = string_copy(fname);
   toggle ( &instrumentation_invoked, FALSE);
}

void
Process_fbexe ( char *fname )
{
  prof_file = string_copy(fname);
}

void
Process_fb_xdir ( char *fname )
{
  fb_xdir = string_copy(fname);
}

void
Process_fb_cdir ( char *fname )
{
  fb_cdir =  string_copy(fname);
}

typedef enum {
  DSM_UNDEFINED,
  DSM_OFF,
  DSM_ON
} DSM_OPTION;

static DSM_OPTION dsm_option=DSM_UNDEFINED;
static DSM_OPTION dsm_clone=DSM_UNDEFINED;
static DSM_OPTION dsm_check=DSM_UNDEFINED;

void
set_dsm_default_options (void)
{
  if (dsm_option==DSM_UNDEFINED) dsm_option=DSM_ON;
  if (dsm_clone==DSM_UNDEFINED && invoked_lang != L_CC) dsm_clone=DSM_ON;
  if (dsm_check==DSM_UNDEFINED) dsm_check=DSM_OFF;
}

void
reset_dsm_default_options (void)
{
  dsm_option=DSM_OFF;
  dsm_clone=DSM_OFF;
  dsm_check=DSM_OFF;
}

void
set_dsm_options (void)
{

  if (dsm_option==DSM_ON) {
    add_option_seen(O_dsm);
  } else {
    reset_dsm_default_options();
    if (option_was_seen(O_dsm))
      set_option_unseen(O_dsm); 
  }

  if (dsm_clone==DSM_ON) 
    add_option_seen(O_dsm_clone);
  else
    if (option_was_seen(O_dsm_clone))
      set_option_unseen(O_dsm_clone); 
  if (dsm_check==DSM_ON) 
    add_option_seen(O_dsm_check);
  else
    if (option_was_seen(O_dsm_check))
      set_option_unseen(O_dsm_check); 
}

/* ====================================================================
 *
 * Process_Mp_Group
 *
 * We've found a -MP option group.  Inspect it for dsm request
 * and toggle the state appropriately.
 *
 * NOTE: We ignore anything that doesn't match what's expected --
 * the compiler will produce reasonable error messages for junk.
 *
 * ====================================================================
 */

void
Process_Mp_Group ( string mp_args )
{
  char *cp = mp_args;	/* Skip -MP: */

  if ( debug ) {
    fprintf ( stderr, "Process_Mp_Group: %s\n", mp_args );
  }

  while ( *cp != 0 ) {
    switch ( *cp ) {
      case 'd':
	if ( strncasecmp ( cp, "dsm", 3 ) == 0 &&
             (*(cp+3)==':' || *(cp+3)=='\0'))
            set_dsm_default_options();
	else if ( strncasecmp ( cp, "dsm=on", 6 ) == 0 )
            set_dsm_default_options();
	else if ( strncasecmp ( cp, "dsm=off", 7 ) == 0 )
            reset_dsm_default_options();
	else if ( strncasecmp ( cp, "dsm=true", 8 ) == 0 )
            set_dsm_default_options();
	else if ( strncasecmp ( cp, "dsm=false", 9 ) == 0 )
            reset_dsm_default_options();
	else
          parse_error(option_name, "Unknown -MP: option");
	break;
      case 'c':
	if ( strncasecmp ( cp, "clone", 5 ) == 0) {
          if ( *(cp+5) == '=' ) {
	    if ( strncasecmp ( cp+6, "on", 2 ) == 0 )
              dsm_clone=DSM_ON;
	    else if ( strncasecmp ( cp+6, "off", 3 ) == 0 )
              dsm_clone=DSM_OFF;
          } else if ( *(cp+5) == ':' || *(cp+5) == '\0' ) {
              dsm_clone=DSM_ON;
          } else
            parse_error(option_name, "Unknown -MP: option");
	} else if ( strncasecmp ( cp, "check_reshape", 13 ) == 0) {
          if ( *(cp+13) == '=' ) {
	    if ( strncasecmp ( cp+14, "on", 2 ) == 0 ) {
              dsm_check=DSM_ON;
	    } else if ( strncasecmp ( cp+14, "off", 3 ) == 0 ) {
              dsm_check=DSM_OFF;
            }
          } else if ( *(cp+13) == ':' || *(cp+13) == '\0' ) {
              dsm_check=DSM_ON;
          } else
            parse_error(option_name, "Unknown -MP: option");
	}
	else
          parse_error(option_name, "Unknown -MP: option");
	break;
    case 'm':
      if (strncasecmp (cp, "manual=off", 10) == 0) {
        set_option_unseen (O_mp);
        reset_dsm_default_options ();
      }
      else
        parse_error(option_name, "Unknown -MP: option");
      break;
    case 'o':
      if (strncasecmp (cp, "open_mp=off", 11) == 0) {
	 Disable_open_mp = TRUE;
      } else if (strncasecmp (cp, "old_mp=off", 10) == 0) {
	 Disable_old_mp = TRUE;
      } else if ((strncasecmp (cp, "open_mp=on", 10) == 0) ||
		 (strncasecmp (cp, "old_mp=on", 9) == 0)) {
           /* No op; do nothing */
      } else {
	 parse_error(option_name, "Unknown -MP: option");
      }
      break;
    default:
          parse_error(option_name, "Unknown -MP: option");
    }

    /* Skip to the next group option: */
    while ( *cp != 0 && *cp != ':' ) ++cp;
    if ( *cp == ':' ) ++cp;
  }

  if ( debug ) {
    fprintf ( stderr, "Process_Dsm_Group done\n" );
  }
}

void
Process_Mp ( void )
{

  if ( debug ) {
    fprintf ( stderr, "Process_Mp\n" );
  }

  if (!option_was_seen (O_mp)) {
    /* avoid duplicates */
    add_option_seen (O_mp);
  }
  set_dsm_default_options();

  if ( debug ) {
    fprintf ( stderr, "Process_Mp done\n" );
  }
}

void Process_Cray_Mp (void) {

  if (invoked_lang == L_f90) {
    /* this part is now empty (we do the processing differently)
     * but left as a placeholder and error-checker.
     */
  }
  else error ("-cray_mp applicable only to f90");
}

void
Process_Promp ( void )
{

  if ( debug ) {
    fprintf ( stderr, "Process_Promp\n" );
  }

  /* Invoke -PROMP:=on for f77,f90 -mplist for C, and nothing for
   * other languages.
   */
  if (invoked_lang == L_f77 || invoked_lang == L_f90) {
    add_option_seen ( O_promp );
    add_option_seen(add_string_option(O_FE_, "endloop_marker=1"));
  } else if (invoked_lang == L_cc) {
    /* add_option_seen(O_mplist); */
    add_option_seen ( O_promp );
  }
  if ( debug ) {
    fprintf ( stderr, "Process_Promp done\n" );
  }
}

void
print_file_path (string fname)
{
  /* Search for fname in usual places, and print path when found. */
  /* gcc does separate searches for libraries and programs,
   * but that seems redundant as the paths are nearly identical,
   * so try combining into one search. */
  string path;
  path = concat_strings( concat_strings(get_phase_dir(P_be), "/"), fname);
  if (file_exists(path)) {
	printf("%s\n", path);
	return;
  }
  path = concat_strings( concat_strings(get_phase_dir(P_library), "/"), fname);
  if (file_exists(path)) {
	printf("%s\n", path);
	return;
  }
#ifdef linux
  path = concat_strings( concat_strings(get_phase_dir(P_gcpp), "/"), fname);
  if (file_exists(path)) {
	printf("%s\n", path);
	return;
  }
  path = concat_strings( concat_strings(get_phase_dir(P_gas), "/"), fname);
  if (file_exists(path)) {
	printf("%s\n", path);
	return;
  }
  path = concat_strings( concat_strings(get_phase_dir(P_alt_library), "/"), fname);
  if (file_exists(path)) {
	printf("%s\n", path);
	return;
  }
#endif
  /* not found, so just print fname */
  printf("%s\n", fname);
}

#include "opt_action.i"

