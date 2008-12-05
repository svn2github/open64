/*
 * 	Copyright (c) 2006 Beijing SimpLight Nanoelectornics, Ltd.
 * 	All rights reserved.
 */

/*
	Copyright (C) 2005, 2006.  Free Software Foundation, Inc.

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


/* ====================================================================
 * ====================================================================
 *
 * Module: messg.cxx
 *
 * Description:
 *
 * Implements the core of messages and error reporting mechanism, 
 * i.e. that part which is not specific to the
 * host program.
 *
 * There is a message table, message descriptor  and a routine for
 * formatting error message parameters which are not one of the simple
 * types supported in this module.  This module should provide the
 * external interface to all other users, however.
 *
 * ====================================================================
 * ====================================================================
 */

#define USE_STANDARD_TYPES
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <ctype.h>

#ifndef linux
#define _LANGUAGE_C			/* work around system header bug */
extern "C" {
#include <sys/fpu.h>			/* we don't have a C++ sys/fpu.h */
}
#undef _LANGUAGE_C
#include <sys/syssgi.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#include <errno.h>
#include "messg.h"
#include "messg.tab"
//
// Global Data
//

/* Compiler error location: */
static FILE *Msg_File = NULL;	           // I/O device for messages  
//static const char *Msg_File_Name = NULL;   // message file name

/* Trace file support: */
static FILE *Trace_File = NULL;		

/* Binary file location: */
//static char  *bin_file_name;

static const char *Src_File = NULL;    // source file name
static INT Src_Line = 0;               // line number 
#ifndef linux
extern char *sys_siglist[];
#endif

/* ====================================================================
 *
 * Emit_Message
 *
 * Write a two-line message to stderr and to the error and trace files
 * if enabled.  If Compiler_File is not NULL, report the compiler
 * location as well.
 *
 * ====================================================================
 */

static void
Emit_Message (
  char *hmsg,		/* Header line of message */
  char *emsg )		/* Error line of message */
{
  char msg[512];
  BOOL report_location = FALSE;

  /* Report the assertion failure location: */
  if ( Src_File != NULL ) {
  	fflush(NULL);
    sprintf ( msg, "\n### Assertion failure at line %d of %s:\n",
	      Src_Line, Src_File );
    fputs ( msg, stderr );
    Src_File = NULL;
    report_location = TRUE;
  }

  /* Write to standard error first: */
  fputs ( hmsg, stderr );
  fputs ( emsg, stderr );
  fflush ( stderr );

  /* Then write to error file if enabled: */
  if (Msg_File != NULL) {
    if ( report_location )  fputs ( msg, Msg_File );
    fputs ( hmsg, Msg_File );
    fputs ( emsg, Msg_File );
    fflush ( Msg_File );
  }

  /* Finally write to trace file: */
  if ( Trace_File != NULL ) {
    if ( report_location )  fputs ( msg, Trace_File );
    fputs ( hmsg, Trace_File );
    fputs ( emsg, Trace_File );
    fflush ( Trace_File );
  }
}

static const char *host_errlist[] = {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        "file is locked",
        "file has a bad magic number",
        "file exists",
        "file is not locked",
};


static void
ErrMsg_Report(Msg_Dsc *mdesc, INT line, const char *file, va_list vp )
{
  char hmsg[512];
  char emsg[512];
  size_t mparm[MAX_MSG_PARMS];

  /* Interface to Unix system error messages: */
//  extern INT sys_nerr;
#ifndef linux
  extern char *sys_errlist[];
#endif

  /* Formatting buffer: */
# define BUFLEN 512
  INT loc;
  static char buf[BUFLEN];
  char *result;
  INT kind;

  INT pnum;
  INT parm;

  loc = 0;
  hmsg[0] = '\0';
  /* Prepare message parameters: */
  for ( pnum = 0; pnum < MAX_MSG_PARMS; pnum++ ) {
    /* If this is beyond the required parameters, we're done: */
    if ( pnum >= mdesc->Parms() ) break;

    /* Otherwise base processing on descriptor's type: */
    switch ( kind = mdesc->Kinds(pnum) ) {
      /* The following parameter kinds are standard and require no
       * host program-specific data structures to interpret:
       */
      case MT_UNKNOWN:	mparm[pnum] = 0;
			break;

      case MT_INT:	mparm[pnum] = (INT) va_arg ( vp, INT );
			break;

      case MT_INT32:	mparm[pnum] = (INT) va_arg ( vp, INT32 );
			break;

      case MT_STRING:	mparm[pnum] = (size_t) va_arg ( vp, char * );
			break;

      case MT_FLOAT:	result = &buf[++loc];
			loc += sprintf ( &buf[loc], "%6e",
					 *(va_arg(vp,float *)) );
			mparm[pnum] = (size_t) result;
			break;

      case MT_POINTER:	result = &buf[++loc];
			loc += sprintf ( &buf[loc], "%#8lX",
					 (unsigned long) va_arg(vp,char *) );
			mparm[pnum] = (size_t) result;
			break;

      case MT_SYSERR:	parm = (INT) va_arg(vp,int);
      			if (parm < 0) {
			  mparm[pnum] = (size_t) host_errlist[-parm];
#if (__GNUC__ >= 3)
			  SimFatal(0, ("Fix me"));
			  //			} else if ( parm <= strerror ) {
			  //			  mparm[pnum] = (INT) strerror_r[parm];
#else
			} else if ( parm <= sys_nerr ) {
			  mparm[pnum] = (INT) sys_errlist[parm];
#endif // __GNUC__ == 3
			} else {
			  result = &buf[++loc];
			  loc += sprintf ( &buf[loc],
					   "Unix error %ld", (long)parm );
			  mparm[pnum] = (size_t) result;
			}
			break;
#if 0
      /* The default case takes care of all host program-specific
       * parameter kinds, which must be pointers:
       */
      default:	result = Host_Format_Parm ( kind, va_arg(vp,char *) );
		/* Copy the string from the result into buffer: */
		++loc;
		strncpy ( &buf[loc], result, BUFLEN-loc );
		result = &buf[loc];
		loc += strlen (result);
		mparm[pnum] = (INT) result;
		break;
#else
    default:
      FmtAssert(FALSE, ("default in Msg_Report not handled"));
      break;
#endif
    }
    
  }

  loc = 0;
  switch(mdesc->_parms) {
  case 0:
    loc += sprintf(emsg, mdesc->Messg());
    break;
  case 1:
    loc += sprintf(emsg, mdesc->Messg(), mparm[0]);
    break;
  case 2:
    loc += sprintf(emsg, mdesc->Messg(), mparm[0], mparm[1]);
    break;
  case 3:
    loc += sprintf(emsg, mdesc->Messg(), mparm[0], mparm[2]);
    break;
  case 4:
    loc += sprintf(emsg, mdesc->Messg(), mparm[0], mparm[2], mparm[3]);
    break;
  default:
    SimFatal(0, ("ErrMsg has too many parms"));
  }
  emsg[loc++] = '\n';
  emsg[loc] = '\0';

  /* Produce the message: */
  Emit_Message ( hmsg, emsg );
#if 0
  /* Abort at highest severity level: */
  if ( mlevel >= ES_ERRABORT ) {
    fflush(NULL);
    Signal_Cleanup( 0 );
    if ( ecode == EC_Signal )	kill ( getpid(), SIGILL );
    exit(EC_NORECOVER_USER_ERROR);
  }
#endif
  return;
}


void WarnMsg(INT mcode, ...)
{
  va_list vp;
    
  va_start(vp, mcode);
  Msg_Dsc *mdesc = &Error_Tab[mcode];

  fprintf(stderr, "# Warning # ");  
  ErrMsg_Report( mdesc, (INT)ERROR_LINE_UNKNOWN, Src_File, vp );
  va_end(vp);
}


void ErrMsg(INT mcode, ...)
{
  va_list vp;
  static INT num_err;  

  va_start(vp, mcode);
  Msg_Dsc *mdesc = &Error_Tab[mcode];

  fprintf(stderr, "# Error # ");  
  ErrMsg_Report( mdesc, (INT)ERROR_LINE_UNKNOWN, Src_File, vp );
  va_end(vp);
  if (++num_err > MAX_ERR_NUM) {
    fprintf(stderr, "Max errors limit exceeded, abort\n");
    fflush(NULL);
    exit(1);
  }
}


void FatalMsg(INT mcode, ...)
{
  va_list vp;

  va_start(vp, mcode);
  Msg_Dsc *mdesc = &Error_Tab[mcode];

  fprintf(stderr, "# Fatal # ");  
  ErrMsg_Report(mdesc,(INT)ERROR_LINE_UNKNOWN, Src_File, vp);
  va_end(vp);
  fflush(NULL);
  exit(1);
}


#if 0
void ErrMsgLine ( INT mcode, INT line, ... )
{
  va_list vp;
  
  va_start ( vp, line );
  ErrMsg_Report( mcode, line, Src_File, vp );
  va_end ( vp );
}
#endif


/* ====================================================================
 *
 *  Abort_Location
 *
 *  An assertion failure is in progress.  Receive the source file
 *  and line number for later reporting.
 *
 *  This replaces in line assignments to global variables in the
 *  assertion.  The problem with that way of doing things is that it
 *  can cause lint (other checkers?) to complain when assertions are
 *  included in access macros and used in contexts with undefined
 *  order of evaluation.  For example:
 *
 *    if ( ND_fld(x) == ND_fld(y) )
 *
 *  would cause a lint warning with Is_True_On.
 *
 * ====================================================================
 */

void Abort_Location (
  char * file_name,
  INT    line_number )
{
  Src_File = file_name;
  Src_Line = line_number;
}

/* ====================================================================
 *
 * Fail_App_Assertion
 *
 * Report a failure with the given printf format and parameters to the
 * error file(s), and then abort. The error will not terminate the process.
 *
 * ====================================================================
 */

void
Fail_App_Assertion ( const char *fmt, ... )
{
  va_list vp;
  
  // I think it's OK to assume the string < 512??
  char hmsg[512], emsg[512];

  hmsg[0] = '\0';
  /* Prepare main error message: */
  INT loc = 0;
  va_start ( vp, fmt );
  loc += vsprintf ( &emsg[0], fmt, vp );
  sprintf ( &emsg[loc], "\n" );
  va_end ( vp );

  /* Report the error: */
  Emit_Message ( hmsg, emsg );


	// Gary: I have replaced the exit call by
	// an interrupt to break in the debugger 
	//
#ifdef NEED_LONG_JMP
	checkLongJmp();
#endif
	asm ("int $3"); // Gary added
	/* Abort: */
	//Signal_Cleanup( 0 );
	
	//exit(EC_INTERNAL_ERROR);  // Gary commented
}

/* ====================================================================
 *
 * Fail_FmtAssertion
 *
 * Report a failure with the given printf format and parameters to the
 * error file(s), and then abort.
 *
 * ====================================================================
 */

void
Fail_FmtAssertion ( const char *fmt, ... )
{
  va_list vp;
  
  // I think it's OK to assume the string < 512??
  char hmsg[512], emsg[512];

  hmsg[0] = '\0';
  /* Prepare main error message: */
  INT loc = 0;
  va_start ( vp, fmt );
  loc += vsprintf ( &emsg[0], fmt, vp );
  sprintf ( &emsg[loc], "\n" );
  va_end ( vp );

  /* Report the error: */
  Emit_Message ( hmsg, emsg );


	// Gary: I have replaced the exit call by
	// an interrupt to break in the debugger 
	//
	asm ("int $3"); // Gary added
	/* Abort: */
	//Signal_Cleanup( 0 );
	
	//exit(EC_INTERNAL_ERROR);  // Gary commented
}

/* ====================================================================
 *
 * Emit_Verification_Messg
 *
 * Write a two-line message to stderr and to the error 
 * if enabled.  Report the compiler location as well.
 *
 * ====================================================================
 */

static void
Emit_Verification_Messg (
  char *hmsg,		/* Header line of message */
  char *emsg )		/* Error line of message */
{
  char msg[512];
  BOOL report_location = FALSE;

  /* Report the assertion failure location: */
    sprintf ( msg, "\n### Verification failure at line %d of %s:\n",
	      Src_Line, Src_File );
    fputs ( msg, stderr );
    Src_File = NULL;
    report_location = TRUE;

  /* Write to standard error first: */
  fputs ( hmsg, stderr );
  fputs ( emsg, stderr );
  fflush ( stderr );

  /* Then write to error file if enabled: */
  if (Msg_File != NULL) {
    if ( report_location )  fputs ( msg, Msg_File );
    fputs ( hmsg, Msg_File );
    fputs ( emsg, Msg_File );
    fflush ( Msg_File );
  }

}

/* ====================================================================
 *
 * Verify_Cond
 *
 * Report a failure with the given printf format and parameters to the
 * error file(s), execution continue
 *
 * ====================================================================
 */

void
Verify_Cond ( const char *fmt, ... )
{
  va_list vp;
  
  // I think it's OK to assume the string < 512??
  char hmsg[512], emsg[512];

  hmsg[0] = '\0';
  /* Prepare main error message: */
  INT loc = 0;
  va_start ( vp, fmt );
  loc += vsprintf ( &emsg[0], fmt, vp );
  sprintf ( &emsg[loc], "\n" );
  va_end ( vp );

  /* Report the error: */
  Emit_Verification_Messg ( hmsg, emsg );
}

/* ====================================================================
 *
 * DevWarn
 *
 * See interface description
 *
 * ====================================================================
 */

//#ifdef _IS_WARN_ON
static BOOL dev_warn_enabled = TRUE;
//#else
//static BOOL dev_warn_enabled = FALSE;
//#endif

extern void
DevWarn( const char *fmt, ... )
{
  va_list args;

  va_start ( args, fmt );

  if ( dev_warn_enabled ) {
    /* Write to standard error first: */
    fprintf ( stdout, "!!! DevWarn: " );
    vfprintf ( stdout, fmt, args );
    fprintf ( stdout, "\n" );
    fflush ( stdout );
  }
 
  /* Then write to error file if enabled: */
  if (Msg_File ) {
    fprintf ( Msg_File, "!!! DevWarn ");
    vfprintf ( Msg_File, fmt, args );
    fprintf ( Msg_File, "\n" );
    fflush ( Msg_File );
  }
  va_end(args);
}

#if 0
/* ====================================================================
 *
 * DevWarn_limit_search
 *
 * For use only by Count_Limit_DevWarn. Ultimately this linear search
 * should probably be replaced by a faster hash lookup.
 *
 * ====================================================================
 */
typedef struct {
  const char *fname;
  UINT	      line;
  UINT	      count;
} LIMIT_STRUCT;

static LIMIT_STRUCT *
DevWarn_limit_search(const char *const src_fname,
		     const UINT        src_line)
{
  static LIMIT_STRUCT *dw_ls_buf     = NULL;
  static UINT          dw_ls_buf_siz = 0;
  static UINT          dw_ls_num     = 0;
  static LIMIT_STRUCT  dummy_ls = { NULL, 0, 0 }; // In case of realloc failure
  UINT i;

  for (i = 0; i < dw_ls_num; i++) {
    if (dw_ls_buf[i].line == src_line &&
	(dw_ls_buf[i].fname == src_fname ||	/* speed hack */
	 (strcmp(dw_ls_buf[i].fname, src_fname) == 0))) {
      return dw_ls_buf + i;
    }
  }

  /* Didn't find the entry we're looking for. We're going to have to
   * add an entry.
   */
  if (dw_ls_num >= dw_ls_buf_siz) {
    UINT new_ls_buf_siz;
    LIMIT_STRUCT *new_ls_buf;

    /* Expand the buffer of LIMIT_STRUCTs if possible. If not
     * possible, return value points to a LIMIT_STRUCT that always
     * says we should emit the error message.
     */
    if (dw_ls_buf_siz == 0) {
      new_ls_buf_siz = 1024;
    }
    else {
      new_ls_buf_siz *= 2;
    }
    new_ls_buf = (LIMIT_STRUCT *)
	realloc(dw_ls_buf, new_ls_buf_siz * sizeof(LIMIT_STRUCT));
    if (new_ls_buf != NULL) {
      dw_ls_buf     = new_ls_buf;
      dw_ls_buf_siz = new_ls_buf_siz;
    }
    else {
      /* realloc() failed.
       */
      dummy_ls.count = 0;
      return &dummy_ls;
    }
  }

  dw_ls_buf[dw_ls_num].line  = src_line;
  dw_ls_buf[dw_ls_num].fname = src_fname;
  dw_ls_buf[dw_ls_num].count = 0;

  return dw_ls_buf + (dw_ls_num++);
}

/* ====================================================================
 *
 * Count_Limit_DevWarn
 *
 * For use through Lmt_DevWarn macro; see interface description
 *
 * ====================================================================
 */

extern BOOL
Count_Limit_DevWarn(const char *const src_fname,
		    const UINT        src_line,
		    const UINT        limit)
{
  /* Check conditions used by DevWarn that result in output. If
   * DevWarn will not generate output, don't bother wasting time or
   * memory in DevWarn_limit_search.
   */
  if (!(dev_warn_enabled || Init_Error_File() || Trace_File != NULL)) {
    return TRUE;
  }

  LIMIT_STRUCT *s = DevWarn_limit_search(src_fname, src_line);
  s->count++;
  if (s->count == limit) {
    DevWarn("Count limit reached on the following DevWarn:");
  }
  return s->count <= limit;
}

#endif

extern
BOOL Had_Internal_Error (void)
{
  return EC_INTERNAL_ERROR;
}


/*
 * Variables and methods for verbose mode
 * 
 */
static int default_verbose_level = VERBOSE_4;
int get_verbose_level(void) { return default_verbose_level; }
int *get_verbose_level_ptr(void) { return &default_verbose_level; }
void set_verbose_level(int level)
{
	if (level < 0) level = 0;
	else if (level > 7) level = 7;
	default_verbose_level = level;
}

/* ====================================================================
 *
 * vmsg
 *
 * Print a message according to appropriate verbose level
 * ====================================================================
 */
extern void
vmsg( int verbose_level, const char *fmt, ... )
{
  va_list args;
  if (verbose_level < get_verbose_level())
  	return;
  va_start ( args, fmt );
  vfprintf ( stdout, fmt, args );
  va_end(args);
}

/* ====================================================================
 *
 * Catch_Signal
 *
 * Catch a signal that's been raised.  Print a message to stdout, call
 * the Signal_Cleanup routine defined in err_host.h, and generate a
 * fatal error message.
 *
 * ====================================================================
 */

static void
catch_signal (INT sig, INT error_num)
{
    signal ( sig, SIG_DFL );

    switch (sig) {
    case SIGBUS:
    case SIGSEGV:
	if (error_num == ENXIO || error_num == ENOSPC)
	    /* special case for I/O error on mmapped object: report as an
	       ordinary fatal error */ 
	    FatalMsg(EM_Objfile, (void *)sys_siglist[sig]);
    }
    
    printf ( "Signal: %s", sys_siglist[sig] );
    fflush ( stdout );
    
    //Signal_Cleanup ( sig );	    /* Must be provided in err_host */
    if ( sig == SIGHUP ||  sig == SIGINT || sig == SIGTERM ) {
    fflush(NULL);
	kill ( getpid(), sig);	/* pass signal on to driver */
    	/*NOTREACHED*/
	exit(EC_INTERNAL_ERROR);
    }
    fflush(NULL);
    signal ( SIGILL, SIG_DFL );
    signal ( SIGBUS, SIG_DFL );
    FatalMsg ( EM_Signal, (void *)sys_siglist[sig]);
    exit(EC_INTERNAL_ERROR);
}


/* ====================================================================
 *
 * Handle_Signals
 *
 * Initialize signal handling.
 * Also set FP_PRECISE mode and no FLUSH_ZERO to handle denorm values.
 *
 * ====================================================================
 */

inline static void
setup_signal_handler (INT s)
{
  if (signal (s, SIG_IGN) != SIG_IGN)
    signal (s,  reinterpret_cast <void (*)(int)> (catch_signal));
}

void Debug_Break(char* msg) {
	printf("debug:%s\n", msg);
}

void
Handle_Signals ( void )
{
    setup_signal_handler (SIGHUP);
    setup_signal_handler (SIGINT);
    setup_signal_handler (SIGQUIT);
    setup_signal_handler (SIGILL);
    setup_signal_handler (SIGTRAP);
    setup_signal_handler (SIGIOT);
#ifndef linux
    setup_signal_handler (SIGEMT);
#endif
    setup_signal_handler (SIGFPE);
    setup_signal_handler (SIGBUS);
    setup_signal_handler (SIGSEGV);
    setup_signal_handler (SIGTERM);
}
#ifdef __cplusplus
}
#endif
