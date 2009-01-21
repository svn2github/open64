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

#ifndef _MESSG_H_
#define _MESSG_H_

#ifdef __cplusplus
extern "C" {
#endif

/* ====================================================================
 * ====================================================================
 *
 * Module: messg.h
 *
 * Description:
 *
 * This file defines the external interface to a general-purpose message
 * reporting mechanism for compilers.  Its objectives are:
 *
 *  1)	To provide a simple error reporting in the source (i.e. minimal
 *	code), with adequate options to fully describe the message.
 *
 *  2)	To require minimal effort to modify the message's description and
 *	handling.  This implies central descriptors driving the error
 *	handling, especially to deal with frequent reuse of error
 *	information (e.g. "Illegal access").
 *
 * ====================================================================
 *
 * The Message Reporting Interface
 *
 * In order to make use of an already-defined error message, the
 * interface defined consists of the following calls:
 *
 *  void ErrMsg (
 *      INT Error_Code,
 *      ...
 *  )
 *
 *	produces the error message associated with Error_Code, with
 *	up to six parameters.  Error_Code and parameters will be
 *	discussed further below.  The error is presumed to result from
 *	the current file and line number (discussed below), where the
 *	current line number will generally be undefined for non-front
 *	end passes.
 *
 *
 *  void Assert (
 *      BOOL condition,
 *      ( INT Error_Code, ... )
 *  )
 *
 *	checks for truth of the condition and, if false, invokes the
 *	equivalent of ErrMsg to report an (presumably) error. The
 *	extra set of parentheses is necessary to allow cpp to process
 *	the call with arbitrary parameter count -- the condition is
 *	checked in-line.  Note that we assume that calls to Assert
 *	will be kept in production code.
 *
 *  BOOL IsTrue (
 *      BOOL condition,
 *      ( const char *Format_String, ... )
 *  )
 *
 *	Similar to Assert, but performs a check expected to be removed (using
 *      cpp) in production code.  Also, notice that a format string is given
 *      instead of an error code.  Because these checks will be removed from
 *      producetion code, we decided that consistency of error reporting was
 *      less important than ease of use (in this case).
 *
 *  void FmtAssert (
 *      BOOL condition,
 *      ( const char *Format_String, ... )
 *  )
 *
 *
 * Just like IsTrue, except will check in the production mode as
 *      well as during development.
 *
 * 
 *  void Verifiy (
 *      BOOL condition,
 *      ( const char *Format_String, ... )
 *  )
 *
 * Just like FmtAssert, except will not abort regardless of condition.
 *
 *
 * WARNING: The parameter lists for the above are currently are limited to 6
 * parameters after the error code or format string.
 *
 *  void DevWarn ( const char *Format_String, ... )
 *
 *      Issue a warning to stderr only when executed in a compiler built for
 *      development (not in MR'ed compilers).  This is a good thing to use if
 *      you have an unexpected condition from which there is a valid (though
 *      perhaps suboptimal) recovery.  For example:
 *
 *          if ( Unexpected_Condition_That_Precludes_Optimization() ) {
 *              DevWarn("Can't optimize because I was a hopeless loser");
 *              Generate_Code();
 *          }
 *          else {
 *              Optimize();
 *              Generate_Code();
 *          }
 *
 *      The warnings are issued by default if the errors package is built with
 *      horrible Is_True_On; otherwise, they are not issued.  This behavior can
 *      be changed with:
 *
 *  void DevWarn_Toggle ( void )
 *
 *      If the current behavior of DevWarn is to print the warnings, calling
 *      this supresses the warnings.  If the current behavior is to supress
 *      the warnings, calling this will enable printing them.
 *
 *  Lmt_DevWarn(const UINT limit, args)
 *
 *      This is a macro designed to suppress printing of DevWarn
 *      messages that get repeated a lot. At most limit copies of the
 *      DevWarn message will be printed; args is the parenthesized
 *      argument list for the function DevWarn(). In the present
 *      implementation, the position (file, line) in the compiler
 *      source is presumed to identify the message. For example, if
 *      you are a hopeless loser hundreds of times per compilation,
 *      and you feel a need to tolerate this situation for a time, and
 *      you don't wish to see hundreds of copies of the "hopeless
 *      loser" DevWarn message every time you compile, you might use:
 *
 *          if ( Unexpected_Condition_That_Precludes_Simulation() ) {
 *              Lmt_DevWarn(5,
 *                          "Can't simulate because I was a hopeless loser");
 *              Exec_Code();
 *          }
 *          else {
 *              Read_Object();
 *              Exec_Code();
 *          }
 *
 *      In this example, you will see the "hopeless loser" DevWarn
 *      message at most five times per compilation.
 *
 *
 * Note that a number of predefined error codes are available,
 * including one which allows arbitrary formatting.  See erglob.h.
 *
 * The parameters passed to the error reporting routines must match the
 * message descriptor for the error code; they are used to provide
 * values inserted in the message.  The parameters are passed in a form
 * which allows them to be passed further without type knowledge, with
 * only the assumption that standard integers and pointers are the same
 * size.  The following possibilities are currently supported:
 *
 *  ET_INT:	Generic scaled integer: size of host register (INTSC).
 *  ET_INT32:	32-bit integer.
 *  ET_INT64:	64-bit integer.
 *  ET_FLOAT:	Pointer to a standard float number.
 *  ET_POINTER:	Arbitrary pointer, printed as a hex number.
 *  ET_STRING:	Pointer to a standard C string.
 *  ET_SYSERR:	Unix error number.
 *  ET_STRTAB:	Pointer to a string table entry.
 *  ET_SYMTAB:	Pointer to a symbol table entry.
 *
 * ====================================================================
 *
 * Error Code Definition
 *
 * In order to define a new error code for use, its value must be
 * defined in one of the error code header files erXXX.h, and a message
 * descriptor added to the descriptor file erXXX.desc.  For the
 * compiler, the possibilities for these files are:
 *
 *   erglob:	Global error codes, common to both simulator, debugger,...
 *		other tools.
 *   ersim:	Simulator error codes.
 *   erdbg:	Debugger error codes.
 *   erhost:    Host system error codes.
 *   erobj:	Object reader error codes.
 *
 * The message descriptors provide a printf format for the
 * message and parameter types from the above list.  They also specify
 * a severity level, one of:
 *
 *   IGNORE:	To be ignored by the error message generator.
 *   MESSAGE:	For user information/message only; not usually an
 *		  indication of a problem.
 *   WARNING:	A likely problem, but not a definite error.
 *   ERROR:	Minimum error severity level.  All errors at or
 *		  above this level continue without exiting.
 *   FATAL:	Error: abort processing after minimal cleanup.
 *
 * The descriptor also identifies user vs. compiler errors.
 * See the discussion in erglob.desc for more detail.
 *
 * ====================================================================
 *
 * In addition, if tracing is enabled, it is useful to have a copy of
 * all error messages embedded in the trace file.  This is enabled by
 * the call:
 *
 *   Set_Error_Trace ( FILE *stream );
 *
 * The trace file is assumed to have been opened elsewhere before any
 * error message is reported.  Note that, if tracing is directed to
 * the same file as stderr (e.g. the terminal), the extra copy will
 * be suppressed.  Error message emission to the trace file is
 * disabled by setting the file descriptor to NULL.
 *
 * Finally, as early as possible during processing, signal catching
 * with associated cleanup may be enabled by calling:
 *
 *   Handle_Signals ();
 *
 * ====================================================================
 * ====================================================================
 */
extern void Abort_Location (
  char* file_name,
  INT line_number
);
extern void Fail_Assertion ( INT ecode, ... );
extern void Fail_App_Assertion ( const char *fmt, ... );
extern void Fail_FmtAssertion ( const char *fmt, ... );
extern void Verify_Cond( const char *fmt, ... );
extern void Fatal_Error ( const char *fmt, ... );
extern void Handle_Signals ( void );
extern void Signal_Cleanup (INT sig);
extern void Abort();
extern void ErrMsg(INT, ...);
extern void WarnMsg(INT, ...);
extern void FatalMsg(INT, ...);

#define VERBOSE_0 0	// dump all message
#define VERBOSE_1 1 // dump detailed message
#define VERBOSE_2 2 // dump flow message
#define VERBOSE_3 3 // dump important messages such initialization and exiting
#define VERBOSE_4 4 
#define VERBOSE_5 5
#define VERBOSE_6 6
#define VERBOSE_7 7

extern int get_verbose_level(void);
extern int *get_verbose_level_ptr(void);
extern void set_verbose_level(int level);
extern void vmsg( int verbose_level, const char *fmt, ... );

/* ====================================================================
 *
 * Internal Assertion Checking: These routines are invoked via macros
 * defined below, and should not be called directly, as their
 * interfaces are allowed to change.
 *
 * ====================================================================
 */

/* Unconditional assertion checking with error code: */
#define Assert(Cond,ParmList)					\
    ( Cond ? (void) 1 : (Abort_Location(__FILE__, __LINE__), Fail_Assertion ParmList ) )

/* Unconditional assertion checking with printf format: */
#define FmtAssert(Cond,ParmList)				\
    ( Cond ? (void) 1 : ( Abort_Location ( __FILE__, __LINE__ ), Fail_FmtAssertion ParmList) )

/* Unconditional assertion checking with printf format, process will not be terminated: */
#define AppAssert(Cond,ParmList)				\
    ( Cond ? (void) 1 : ( Abort_Location ( __FILE__, __LINE__ ), Fail_App_Assertion ParmList) )    

/* Unconditional verification checking with printf format, execution continues: */
#define Verify(Cond,ParmList)				\
    ( Cond ? (void) 1 : ( Abort_Location ( __FILE__, __LINE__ ), Verify_Cond ParmList) )

/* Check assertion only if Is_True_On flag is set: */
#ifdef Is_True_On
# define IsTrue FmtAssert
# define IsTrueApp AppAssert
#else
# define IsTrue(a, b) ((void) 1)
# define IsTrueApp(a, b) ((void) 1)
#endif

#ifndef _ERROR_ALL_FATAL
#define _ERROR_ALL_FATAL 0
#endif

#if _ERROR_ALL_FATAL
#define ERR_SIM_FATAL IsTrue
#define ERR_APP_FATAL IsTrue
#else
#define ERR_SIM_FATAL IsTrue
#define ERR_APP_FATAL IsTrueApp
#endif

/* If NEED_LONG_JMP is defined, only SimFatal will cause immediate exit. */
#define SimFatal(a, b) { ERR_SIM_FATAL(a, b); }
#define AppFatal(a,b)  { ERR_APP_FATAL(a, b); }

#define MAX_ERR_NUM 100

extern void DevWarn( const char* FormatString,... )
#ifdef __GNUC__
	__attribute__((format(printf,1,2)))
#endif
	;
#if 0  // not used for now
extern void DevWarn_Toggle( void );

extern BOOL Count_Limit_DevWarn( const UINT limit );

#define Lmt_DevWarn(limit, args) \
	( Count_Limit_DevWarn(limit) ? DevWarn args : (void) 1 )
#endif

#if 1

/* ====================================================================
 *
 * Message Reporting Management and Interface
 *
 * ====================================================================
 */

/* The maximum number of message parameters.  This value cannot be
 * changed (increased) without changing MAX_MSG_PARMS and the file messg.tab
 */
#define MAX_MSG_PARMS	4
/* Define the type used by messages */
typedef UINT16 Msg_Idx;
enum Msg_Type { IGNORE=0, MESSAGE=1, WARNING=2, ERROR=3, FATAL=4, MSG_TYPE_SIZE=4 };


class Msg_Dsc {
 public:
  char *_messg;
  INT8  _code;
  INT8  _parms;   // number of parms
  INT8  _kinds[MAX_MSG_PARMS];
  INT8  Parms(void) const { return _parms; }
  INT8  Kinds(const INT i) const { return _kinds[i]; }
  char *Messg(void) const { return _messg; }
  INT8  Code(void) const { return _code; }
  void  Print_Msg(FILE *f) { } 
};

#include "messg.def"

#if 0
class Msg {
 private:
  INT       _size;    // table size
  Msg_Type  _type;    
  Msg_Dsc  *_tab;
  Msg(INT s, Msg_Type t, Msg_Dsc *m) { _size = s; _type = t; _tab = m; }
 public:
  Msg_Type Type(void) const { return _type; }
  INT      Size(void) const { return _size; }
  void     Print(FILE *file=stderr, Msg_Idx i=0) const { 
               FmtAssert((i < Size()), ("Messg index out of range"));
	       FmtAssert((i == _tab[i].Code()), ("Messg index inconsistent, table corrupted"));
	       _tab[i].Print_Msg(file); 
           } 
};

class Warn : public Msg {
 private:
  void _print(FILE *file) const { fprintf(file, "# Warning # "); }
 public:
  Warn();
  ~Warn();
  void Print(FILE *file=stderr, const Msg_Idx i=0) const { _print(file), Msg::Print(file, i); }
};
  
class Error : public Msg {
 private:
  void _print(FILE *file) const { fprintf(file, "# Error # "); }
 public:
  Error();
  ~Error();
  void Print(FILE *file=stderr, const Msg_Idx i=0) const { _print(file), Msg::Print(file, i); }
};

class Fatal : public Msg {
 private:
  void _print(FILE *file) const { fprintf(file, "# Fatal # "); }
 public:
  Fatal();
  ~Fatal();
  void Print(FILE *file=stderr, const Msg_Idx i=0) const { _print(file), Msg::Print(file, i), Abort();}
};
#endif

/* Include definitions specific to the host program: */
/*
#include "err_host.h"
*/

/* The following contains Unix error code after system call errors: */
#ifndef _ERRNO_H       // for conflict with errno.h 
 extern INT errno;    // native build 
#endif

#define EC_Undef_Code              1
#define EC_INTERNAL_ERROR          2
#define EC_Signal                  3
#define EC_NORECOVER_USER_ERROR    4
#define ERROR_LINE_UNKNOWN         0

/* Initialize signal catching: */
extern void Handle_Signals ( void );

/* for debugging */
extern void Debug_Break ( char* );
/* ====================================================================
 *
 * Miscellaneous
 *
 * ====================================================================
 */

/* had any internal errors */
extern BOOL Had_Internal_Error (void);
#endif
#ifdef __cplusplus
}
#endif

#endif /* _MESSG_H_ */
