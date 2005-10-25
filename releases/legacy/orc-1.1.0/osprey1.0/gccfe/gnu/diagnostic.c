/* Language-independent diagnostic subroutines for the GNU C compiler
   Copyright (C) 1999, 2000 Free Software Foundation, Inc.

This file is part of GNU CC.

GNU CC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

GNU CC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU CC; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */


/* This file implements the language independant aspect of diagnostic
   message module.  */

#include "config.h"
#undef FLOAT /* This is for hpux. They should change hpux.  */
#undef FFS  /* Some systems define this in param.h.  */
#include "system.h"

#include "tree.h"
#include "rtl.h"
#include "tm_p.h"
#include "flags.h"
#include "input.h"
#include "insn-attr.h"
#include "insn-codes.h"
#include "insn-config.h"
#include "toplev.h"
#include "intl.h"
#include "diagnostic.h"

#define obstack_chunk_alloc xmalloc
#define obstack_chunk_free  free

/* Prototypes. */
static int doing_line_wrapping PARAMS ((void));

static char *vbuild_message_string PARAMS ((const char *, va_list));
static char *build_message_string PARAMS ((const char *, ...))
     ATTRIBUTE_PRINTF_1;
static char *build_location_prefix PARAMS ((const char *, int, int));
static void output_notice PARAMS ((output_buffer *, const char *));
static void line_wrapper_printf PARAMS ((FILE *, const char *, ...))
     ATTRIBUTE_PRINTF_2;
static void vline_wrapper_message_with_location PARAMS ((const char *, int,
							 int, const char *,
							 va_list));
static void notice PARAMS ((const char *s, ...)) ATTRIBUTE_PRINTF_1;
static void v_message_with_file_and_line PARAMS ((const char *, int, int,
						  const char *, va_list));
static void v_message_with_decl PARAMS ((tree, int, const char *, va_list));
static void file_and_line_for_asm PARAMS ((rtx, const char **, int *));
static void v_error_with_file_and_line PARAMS ((const char *, int,
						const char *, va_list));
static void v_error_with_decl PARAMS ((tree, const char *, va_list));
static void v_error_for_asm PARAMS ((rtx, const char *, va_list));
static void verror PARAMS ((const char *, va_list));
static void vfatal PARAMS ((const char *, va_list)) ATTRIBUTE_NORETURN;
static void v_warning_with_file_and_line PARAMS ((const char *, int,
						  const char *, va_list));
static void v_warning_with_decl PARAMS ((tree, const char *, va_list));
static void v_warning_for_asm PARAMS ((rtx, const char *, va_list));
static void vwarning PARAMS ((const char *, va_list));
static void vpedwarn PARAMS ((const char *, va_list));
static void v_pedwarn_with_decl PARAMS ((tree, const char *, va_list));
static void v_pedwarn_with_file_and_line PARAMS ((const char *, int,
						  const char *, va_list));
static void vsorry PARAMS ((const char *, va_list));
static void report_file_and_line PARAMS ((const char *, int, int));
static void vnotice PARAMS ((FILE *, const char *, va_list));
static void set_real_maximum_length PARAMS ((output_buffer *));

extern int rtl_dump_and_exit;
extern int inhibit_warnings;
extern int warnings_are_errors;
extern int warningcount;
extern int errorcount;

/* Front-end specific tree formatter, if non-NULL.  */
printer_fn lang_printer = NULL;

static int need_error_newline;

/* Function of last error message;
   more generally, function such that if next error message is in it
   then we don't have to mention the function name.  */
static tree last_error_function = NULL;

/* Used to detect when input_file_stack has changed since last described.  */
static int last_error_tick;

/* Called by report_error_function to print out function name.
 * Default may be overridden by language front-ends.  */

void (*print_error_function) PARAMS ((const char *)) =
  default_print_error_function;

/* Maximum characters per line in automatic line wrapping mode.
   Zero means don't wrap lines. */

static int output_maximum_width = 0;

/* Used to control every diagnostic message formatting.  Front-ends should
   call set_message_prefixing_rule to set up their politics.  */
static int current_prefixing_rule = DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE;

/* Predicate. Return 1 if we're in automatic line wrapping mode.  */

static int
doing_line_wrapping ()
{
  return output_maximum_width > 0;
}

/* Set Maximum characters per line in automatic line wrapping mode.  */

void
set_message_length (n)
     int n;
{
    output_maximum_width = n;
}

void
set_message_prefixing_rule (rule)
     int rule;
{
  current_prefixing_rule = rule;
}

/* Returns true if BUFFER is in line-wrappind mode.  */
int
output_is_line_wrapping (buffer)
     output_buffer *buffer;
{
  return buffer->ideal_maximum_length > 0;
}

/* Return BUFFER's prefix.  */
char *
output_get_prefix (buffer)
     const output_buffer *buffer;
{
  return buffer->prefix;
}

/* Subroutine of output_set_maximum_length.  Set up BUFFER's
   internal maximum characters per line.  */
static void
set_real_maximum_length (buffer)
     output_buffer *buffer;
{
  /* If we're told not to wrap lines then do the obvious thing.  */
  if (! output_is_line_wrapping (buffer))
    buffer->maximum_length = buffer->ideal_maximum_length;
  else
    {
      int prefix_length = buffer->prefix ? strlen (buffer->prefix) : 0;
      /* If the prefix is ridiculously too long, output at least
         32 characters.  */
      if (buffer->ideal_maximum_length - prefix_length < 32)
        buffer->maximum_length = buffer->ideal_maximum_length + 32;
      else
        buffer->maximum_length = buffer->ideal_maximum_length;
    }
}

/* Sets the number of maximum characters per line BUFFER can output
   in line-wrapping mode.  A LENGTH value 0 suppresses line-wrapping.  */
void
output_set_maximum_length (buffer, length)
     output_buffer *buffer;
     int length;
{
  buffer->ideal_maximum_length = length;
  set_real_maximum_length (buffer);
}

/* Sets BUFFER's PREFIX.  */
void
output_set_prefix (buffer, prefix)
     output_buffer *buffer;
     char *prefix;
{
  buffer->prefix = prefix;
  set_real_maximum_length (buffer);
  buffer->emitted_prefix_p = 0;
}

/* Construct an output BUFFER with PREFIX and of MAXIMUM_LENGTH
   characters per line.  */
void
init_output_buffer (buffer, prefix, maximum_length)
     output_buffer *buffer;
     char *prefix;
     int maximum_length;
{
  obstack_init (&buffer->obstack);
  buffer->ideal_maximum_length = maximum_length;
  buffer->line_length = 0;
  output_set_prefix (buffer, prefix);
  buffer->emitted_prefix_p = 0;
  buffer->prefixing_rule = current_prefixing_rule;
  
  buffer->cursor = NULL;
}

/* Reinitialize BUFFER.  */
void
output_clear (buffer)
     output_buffer *buffer;
{
  obstack_free (&buffer->obstack, obstack_base (&buffer->obstack));
  buffer->line_length = 0;
  buffer->cursor = NULL;
}

/* Finishes to construct a NULL-terminated character string representing
   the BUFFERed message.  */
const char *
output_finish (buffer)
     output_buffer *buffer;
{
  obstack_1grow (&buffer->obstack, '\0');
  return (const char *) obstack_finish (&buffer->obstack);
}

/* Return the amount of characters BUFFER can accept to
   make a full line.  */
int
output_space_left (buffer)
     const output_buffer *buffer;
{
  return buffer->maximum_length - buffer->line_length;
}

/* Write out BUFFER's prefix.  */
void
output_emit_prefix (buffer)
     output_buffer *buffer;
{
  if (buffer->prefix)
    {
      switch (buffer->prefixing_rule)
        {
        default:
        case DIAGNOSTICS_SHOW_PREFIX_NEVER:
          break;

        case DIAGNOSTICS_SHOW_PREFIX_ONCE:
          if (buffer->emitted_prefix_p)
            break;
          else
            buffer->emitted_prefix_p = 1;
          /* Fall through.  */

        case DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE:
          buffer->line_length += strlen (buffer->prefix);
          obstack_grow
            (&buffer->obstack, buffer->prefix, buffer->line_length);
          break;
        }
    }
}

/* Have BUFFER start a new line.  */
void
output_add_newline (buffer)
     output_buffer *buffer;
{
  obstack_1grow (&buffer->obstack, '\n');
  buffer->line_length = 0;
}

/* Appends a character to BUFFER.  */
void
output_add_character (buffer, c)
     output_buffer *buffer;
     int c;
{
  if (output_is_line_wrapping (buffer) && output_space_left (buffer) <= 0)
    output_add_newline (buffer);
  obstack_1grow (&buffer->obstack, c);
  ++buffer->line_length;
}

/* Adds a space to BUFFER.  */
void
output_add_space (buffer)
     output_buffer *buffer;
{
  if (output_is_line_wrapping (buffer) && output_space_left (buffer) <= 0)
    {
      output_add_newline (buffer);
      return;
    }
  obstack_1grow (&buffer->obstack, ' ');
  ++buffer->line_length;
}

/* Add the stringified version of an integer to BUFFER.  */
void
output_add_integer (buffer, i)
     output_buffer *buffer;
     HOST_WIDE_INT i;
{
  /* This must be large enough to hold any printed integer or
     floating-point value.  */
  static char digit_buffer[128];

  sprintf (digit_buffer, HOST_WIDE_INT_PRINT_DEC, i);
  output_add_string (buffer, digit_buffer);
}

/* Append a string deliminated by START and END to BUFFER.  No wrapping is
   done.  The caller must ensure that it is safe to do so.  */

void
output_append (buffer, start, end)
     output_buffer *buffer;
     const char *start;
     const char *end;
{
  int n;

  /* Emit prefix and skip whitespace if we're starting a new line.  */
  if (buffer->line_length == 0)
    {
      output_emit_prefix (buffer);
      while (start != end && *start == ' ')
        ++start;
    }
  n = end - start;
  obstack_grow (&buffer->obstack, start, n);
  buffer->line_length += n;
}

/* Wrap a STRing into BUFFER.  */

void
output_add_string (buffer, str)
     output_buffer *buffer;
     const char *str;
{
  const char *p = str;

  if (!output_is_line_wrapping (buffer))
    output_append (buffer, str, str + strlen (str));
  else while (*str)
    {
      while (*p && *p != ' ' && *p != '\n')
        ++p;
      
      if (p - str < output_space_left (buffer))
        output_append (buffer, str, p);
      else
        {
          output_add_newline (buffer);
          output_append (buffer, str, p);
        }
      
      while (*p && *p == '\n')
        {
          output_add_newline (buffer);
          ++p;
        }

      str = p++;
    }
}

/* Flush the content of BUFFER onto FILE and reinitialize BUFFER.  */

void
output_flush_on (buffer, file)
     output_buffer *buffer;
     FILE *file;
{
  const char *text = output_finish (buffer);
  fputs (text, file);
  output_clear (buffer);
}

/* Format MESSAGE into BUFFER.  */
void
output_format (buffer, msg)
     output_buffer *buffer;
     const char *msg;
{
  for (buffer->cursor = msg; *buffer->cursor; ++buffer->cursor)
    {
      /* Ignore text.  */
      if (*buffer->cursor != '%')
        {
          output_add_character (buffer, *buffer->cursor);
          continue;
        }

      /* We got a '%'.  Let's see what happens.  */
      ++buffer->cursor;

      /* Let's handle the traditional cases.  */
      if (*buffer->cursor == 's')
        output_add_string (buffer, va_arg (buffer->format_args, const char *));
      else if (*buffer->cursor == 'd')
        output_add_integer (buffer, va_arg (buffer->format_args, int));
      else if (*buffer->cursor == '%')
        /* It was a '%%'.  Just output a '%'.  */
        output_add_character (buffer, '%');
      else if (lang_printer)
        (*lang_printer) (buffer);
      else
        {
          /* Hmmm.  The front-end failed to install a format translator
             but called us with an unrecognized format.  Sorry.  */
          abort();
        }
    }
  output_finish (buffer);
}

static char *
vbuild_message_string (msgid, ap)
     const char *msgid;
     va_list ap;
{
  char *str;

  vasprintf (&str, msgid, ap);
  return str;
}

/*  Return a malloc'd string containing MSGID formatted a la
    printf.  The caller is reponsible for freeing the memory.  */

static char *
build_message_string VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;
  char *str;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  str = vbuild_message_string (msgid, ap);

  va_end (ap);

  return str;
}


/* Return a malloc'd string describing a location.  The caller is
   responsible for freeing the memory.  */

static char *
build_location_prefix (file, line, warn)
     const char *file;
     int line;
     int warn;
{
  if (file)
    {
      if (warn)
	return build_message_string ("%s:%d: warning: ", file, line);
      else
	return build_message_string ("%s:%d: ", file, line);
    }
  else
    {
      if (warn)
	return build_message_string ("%s: warning: ", progname);
      else
	return build_message_string ("%s: ", progname);
    }
}

/* Format a MESSAGE into BUFFER.  Automatically wrap lines.  */

static void
output_notice (buffer, msgid)
     output_buffer *buffer;
     const char *msgid;
{
  char *message = vbuild_message_string (msgid, buffer->format_args);

  output_add_string (buffer, message);
  free (message);
}


/* Format a message into BUFFER a la printf.  */

void
output_printf VPARAMS ((struct output_buffer *buffer, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  struct output_buffer *buffer;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  buffer = va_arg (ap, struct output_buffer *);
  msgid = va_arg (ap, const char *);
#endif

  va_copy (buffer->format_args, ap);
  output_notice (buffer, msgid);
  va_end (buffer->format_args);
}


/* Format a MESSAGE into FILE.  Do line wrapping, starting new lines
   with PREFIX.  */

static void
line_wrapper_printf VPARAMS ((FILE *file, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  FILE *file;
  const char *msgid;
#endif
  output_buffer buffer;
  
  init_output_buffer (&buffer, NULL, output_maximum_width);
  VA_START (buffer.format_args, msgid);

#ifndef ANSI_PROTOTYPES
  file = va_arg (buffer.format_args, FILE *);
  msgid = va_arg (buffer.format_args, const char *);
#endif  

  output_notice (&buffer, msgid);
  output_flush_on (&buffer, file);

  va_end (buffer.format_args);
}


static void
vline_wrapper_message_with_location (file, line, warn, msgid, ap)
     const char *file;
     int line;
     int warn;
     const char *msgid;
     va_list ap;
{
  output_buffer buffer;
  
  init_output_buffer (&buffer, build_location_prefix (file, line, warn),
		      output_maximum_width);
  va_copy (buffer.format_args, ap);
  output_notice (&buffer, msgid);
  output_flush_on (&buffer, stderr);

  free (output_get_prefix (&buffer));
  fputc ('\n', stderr);
}


/* Print the message MSGID in FILE.  */

static void
vnotice (file, msgid, ap)
     FILE *file;
     const char *msgid;
     va_list ap;
{
  vfprintf (file, _(msgid), ap);
}

/* Print MSGID on stderr.  */

static void
notice VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, char *);
#endif

  vnotice (stderr, msgid, ap);
  va_end (ap);
}

/* Report FILE and LINE (or program name), and optionally just WARN.  */

static void
report_file_and_line (file, line, warn)
     const char *file;
     int line;
     int warn;
{
  if (file)
    fprintf (stderr, "%s:%d: ", file, line);
  else
    fprintf (stderr, "%s: ", progname);

  if (warn)
    notice ("warning: ");
}

/* Print a message relevant to line LINE of file FILE.  */

static void
v_message_with_file_and_line (file, line, warn, msgid, ap)
     const char *file;
     int line;
     int warn;
     const char *msgid;
     va_list ap;
{
  report_file_and_line (file, line, warn);
  vnotice (stderr, msgid, ap);
  fputc ('\n', stderr);
}

/* Print a message relevant to the given DECL.  */

static void
v_message_with_decl (decl, warn, msgid, ap)
     tree decl;
     int warn;
     const char *msgid;
     va_list ap;
{
  const char *p;
  output_buffer buffer;

  if (doing_line_wrapping ())
    {
      init_output_buffer
        (&buffer, build_location_prefix
         (DECL_SOURCE_FILE (decl), DECL_SOURCE_LINE (decl), warn),
         output_maximum_width);
    }
  else
    report_file_and_line (DECL_SOURCE_FILE (decl),
                          DECL_SOURCE_LINE (decl), warn);

  /* Do magic to get around lack of varargs support for insertion
     of arguments into existing list.  We know that the decl is first;
     we ass_u_me that it will be printed with "%s".  */

  for (p = _(msgid); *p; ++p)
    {
      if (*p == '%')
	{
	  if (*(p + 1) == '%')
	    ++p;
	  else if (*(p + 1) != 's')
	    abort ();
	  else
	    break;
	}
    }

  if (p > _(msgid))			/* Print the left-hand substring.  */
    {
      if (doing_line_wrapping ())
        output_printf (&buffer, "%.*s", (int)(p - _(msgid)), _(msgid));
      else
        fprintf (stderr, "%.*s", (int)(p - _(msgid)), _(msgid));
    }

  if (*p == '%')		/* Print the name.  */
    {
      const char *n = (DECL_NAME (decl)
		 ? (*decl_printable_name) (decl, 2)
		 : "((anonymous))");
      if (doing_line_wrapping ())
        output_add_string (&buffer, n);
      else
        fputs (n, stderr);
      while (*p)
	{
	  ++p;
	  if (ISALPHA (*(p - 1) & 0xFF))
	    break;
	}
    }

  if (*p)			/* Print the rest of the message.  */
    {
      if (doing_line_wrapping ())
        {
	  va_copy (buffer.format_args, ap);
          output_notice (&buffer, p);
          va_copy (ap, buffer.format_args);
        }
      else
        vfprintf (stderr, p, ap);
    }

  if (doing_line_wrapping())
    {
      output_flush_on (&buffer, stderr);
      free (output_get_prefix (&buffer));
    }
  
  fputc ('\n', stderr);
}

/* Figure file and line of the given INSN.  */

static void
file_and_line_for_asm (insn, pfile, pline)
     rtx insn;
     const char **pfile;
     int *pline;
{
  rtx body = PATTERN (insn);
  rtx asmop;

  /* Find the (or one of the) ASM_OPERANDS in the insn.  */
  if (GET_CODE (body) == SET && GET_CODE (SET_SRC (body)) == ASM_OPERANDS)
    asmop = SET_SRC (body);
  else if (GET_CODE (body) == ASM_OPERANDS)
    asmop = body;
  else if (GET_CODE (body) == PARALLEL
	   && GET_CODE (XVECEXP (body, 0, 0)) == SET)
    asmop = SET_SRC (XVECEXP (body, 0, 0));
  else if (GET_CODE (body) == PARALLEL
	   && GET_CODE (XVECEXP (body, 0, 0)) == ASM_OPERANDS)
    asmop = XVECEXP (body, 0, 0);
  else
    asmop = NULL;

  if (asmop)
    {
      *pfile = ASM_OPERANDS_SOURCE_FILE (asmop);
      *pline = ASM_OPERANDS_SOURCE_LINE (asmop);
    }
  else
    {
      *pfile = input_filename;
      *pline = lineno;
    }
}

/* Report an error at line LINE of file FILE.  */

static void
v_error_with_file_and_line (file, line, msgid, ap)
     const char *file;
     int line;
     const char *msgid;
     va_list ap;
{
  count_error (0);
  report_error_function (file);
  if (doing_line_wrapping ())
    vline_wrapper_message_with_location (file, line, 0, msgid, ap);
  else
    v_message_with_file_and_line (file, line, 0, msgid, ap);
}

/* Report an error at the declaration DECL.
   MSGID is a format string which uses %s to substitute the declaration
   name; subsequent substitutions are a la printf.  */

static void
v_error_with_decl (decl, msgid, ap)
     tree decl;
     const char *msgid;
     va_list ap;
{
  count_error (0);
  report_error_function (DECL_SOURCE_FILE (decl));
  v_message_with_decl (decl, 0, msgid, ap);
}


/* Report an error at the line number of the insn INSN.
   This is used only when INSN is an `asm' with operands,
   and each ASM_OPERANDS records its own source file and line.  */

static void
v_error_for_asm (insn, msgid, ap)
     rtx insn;
     const char *msgid;
     va_list ap;
{
  const char *file;
  int line;

  count_error (0);
  file_and_line_for_asm (insn, &file, &line);
  report_error_function (file);
  v_message_with_file_and_line (file, line, 0, msgid, ap);
}


/* Report an error at the current line number.  */

static void
verror (msgid, ap)
     const char *msgid;
     va_list ap;
{
  v_error_with_file_and_line (input_filename, lineno, msgid, ap);
}


/* Report a fatal error at the current line number.  Allow a front end to
   intercept the message.  */

static void (*fatal_function) PARAMS ((const char *, va_list));

static void
vfatal (msgid, ap)
     const char *msgid;
     va_list ap;
{
   if (fatal_function != 0)
     (*fatal_function) (_(msgid), ap);

  verror (msgid, ap);
  exit (FATAL_EXIT_CODE);
}

/* Report a warning at line LINE of file FILE.  */

static void
v_warning_with_file_and_line (file, line, msgid, ap)
     const char *file;
     int line;
     const char *msgid;
     va_list ap;
{
  if (count_error (1))
    {
      report_error_function (file);
      if (doing_line_wrapping ())
        vline_wrapper_message_with_location (file, line, 1, msgid, ap);
      else
        v_message_with_file_and_line (file, line, 1, msgid, ap);
    }
}


/* Report a warning at the declaration DECL.
   MSGID is a format string which uses %s to substitute the declaration
   name; subsequent substitutions are a la printf.  */

static void
v_warning_with_decl (decl, msgid, ap)
     tree decl;
     const char *msgid;
     va_list ap;
{
  if (count_error (1))
    {
      report_error_function (DECL_SOURCE_FILE (decl));
      v_message_with_decl (decl, 1, msgid, ap);
    }
}


/* Report a warning at the line number of the insn INSN.
   This is used only when INSN is an `asm' with operands,
   and each ASM_OPERANDS records its own source file and line.  */

static void
v_warning_for_asm (insn, msgid, ap)
     rtx insn;
     const char *msgid;
     va_list ap;
{
  if (count_error (1))
    {
      const char *file;
      int line;

      file_and_line_for_asm (insn, &file, &line);
      report_error_function (file);
      v_message_with_file_and_line (file, line, 1, msgid, ap);
    }
}


/* Report a warning at the current line number.  */

static void
vwarning (msgid, ap)
     const char *msgid;
     va_list ap;
{
  v_warning_with_file_and_line (input_filename, lineno, msgid, ap);
}

/* These functions issue either warnings or errors depending on
   -pedantic-errors.  */

static void
vpedwarn (msgid, ap)
     const char *msgid;
     va_list ap;
{
  if (flag_pedantic_errors)
    verror (msgid, ap);
  else
    vwarning (msgid, ap);
}


static void
v_pedwarn_with_decl (decl, msgid, ap)
     tree decl;
     const char *msgid;
     va_list ap;
{
  /* We don't want -pedantic-errors to cause the compilation to fail from
     "errors" in system header files.  Sometimes fixincludes can't fix what's
     broken (eg: unsigned char bitfields - fixing it may change the alignment
     which will cause programs to mysteriously fail because the C library
     or kernel uses the original layout).  There's no point in issuing a
     warning either, it's just unnecessary noise.  */

  if (! DECL_IN_SYSTEM_HEADER (decl))
    {
      if (flag_pedantic_errors)
	v_error_with_decl (decl, msgid, ap);
      else
	v_warning_with_decl (decl, msgid, ap);
    }
}


static void
v_pedwarn_with_file_and_line (file, line, msgid, ap)
     const char *file;
     int line;
     const char *msgid;
     va_list ap;
{
  if (flag_pedantic_errors)
    v_error_with_file_and_line (file, line, msgid, ap);
  else
    v_warning_with_file_and_line (file, line, msgid, ap);
}


/* Apologize for not implementing some feature.  */

static void
vsorry (msgid, ap)
     const char *msgid;
     va_list ap;
{
  sorrycount++;
  if (input_filename)
    fprintf (stderr, "%s:%d: ", input_filename, lineno);
  else
    fprintf (stderr, "%s: ", progname);
  notice ("sorry, not implemented: ");
  vnotice (stderr, msgid, ap);
  fputc ('\n', stderr);
}


/* Count an error or warning.  Return 1 if the message should be printed.  */

int
count_error (warningp)
     int warningp;
{
  if (warningp && inhibit_warnings)
    return 0;

  if (warningp && !warnings_are_errors)
    warningcount++;
  else
    {
      static int warning_message = 0;

      if (warningp && !warning_message)
	{
	  notice ("%s: warnings being treated as errors\n", progname);
	  warning_message = 1;
	}
      errorcount++;
    }

  return 1;
}

/* Print a diagnistic MSGID on FILE.  */
void
fnotice VPARAMS ((FILE *file, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  FILE *file;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  file = va_arg (ap, FILE *);
  msgid = va_arg (ap, const char *);
#endif

  vnotice (file, msgid, ap);
  va_end (ap);
}


/* Print a fatal error message.  NAME is the text.
   Also include a system error message based on `errno'.  */

void
pfatal_with_name (name)
  const char *name;
{
  fprintf (stderr, "%s: ", progname);
  perror (name);
  exit (FATAL_EXIT_CODE);
}

void
fatal_io_error (name)
  const char *name;
{
  notice ("%s: %s: I/O error\n", progname, name);
  exit (FATAL_EXIT_CODE);
}

/* Issue a pedantic warning MSGID.  */
void
pedwarn VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  vpedwarn (msgid, ap);
  va_end (ap);
}

/* Issue a pedantic waring about DECL.  */
void
pedwarn_with_decl VPARAMS ((tree decl, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  tree decl;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  decl = va_arg (ap, tree);
  msgid = va_arg (ap, const char *);
#endif

  v_pedwarn_with_decl (decl, msgid, ap);
  va_end (ap);
}

/* Same as above but within the context FILE and LINE. */
void
pedwarn_with_file_and_line VPARAMS ((const char *file, int line,
				     const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *file;
  int line;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  file = va_arg (ap, const char *);
  line = va_arg (ap, int);
  msgid = va_arg (ap, const char *);
#endif

  v_pedwarn_with_file_and_line (file, line, msgid, ap);
  va_end (ap);
}

/* Just apologize with MSGID.  */
void
sorry VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  vsorry (msgid, ap);
  va_end (ap);
}

/* Called when the start of a function definition is parsed,
   this function prints on stderr the name of the function.  */

void
announce_function (decl)
     tree decl;
{
  if (! quiet_flag)
    {
      if (rtl_dump_and_exit)
	fprintf (stderr, "%s ", IDENTIFIER_POINTER (DECL_NAME (decl)));
      else
        {
          if (doing_line_wrapping ())
            line_wrapper_printf
              (stderr, " %s", (*decl_printable_name) (decl, 2));
          else
            fprintf (stderr, " %s", (*decl_printable_name) (decl, 2));
        }
      fflush (stderr);
      need_error_newline = 1;
      last_error_function = current_function_decl;
    }
}

/* The default function to print out name of current function that caused
   an error.  */

void
default_print_error_function (file)
  const char *file;
{
  if (last_error_function != current_function_decl)
    {
      char *prefix = NULL;
      output_buffer buffer;
      
      if (file)
        prefix = build_message_string ("%s: ", file);

      if (doing_line_wrapping ())
        init_output_buffer (&buffer, prefix, output_maximum_width);
      else
        {
          if (file)
            fprintf (stderr, "%s: ", file);
        }
      
      if (current_function_decl == NULL)
        {
          if (doing_line_wrapping ())
            output_printf (&buffer, "At top level:\n");
          else
            notice ("At top level:\n");
        }
      else
	{
	  if (TREE_CODE (TREE_TYPE (current_function_decl)) == METHOD_TYPE)
            {
              if (doing_line_wrapping ())
                output_printf
                  (&buffer, "In method `%s':\n",
                   (*decl_printable_name) (current_function_decl, 2));
              else
                notice ("In method `%s':\n",
                        (*decl_printable_name) (current_function_decl, 2));
            }
	  else
            {
              if (doing_line_wrapping ())
                output_printf
                  (&buffer, "In function `%s':\n",
                   (*decl_printable_name) (current_function_decl, 2));
              else
                notice ("In function `%s':\n",
                        (*decl_printable_name) (current_function_decl, 2));
            }
	}

      last_error_function = current_function_decl;

      if (doing_line_wrapping ())
        output_flush_on (&buffer, stderr);
      
      free ((char*) prefix);
    }
}

/* Prints out, if necessary, the name of the current function
  that caused an error.  Called from all error and warning functions.
  We ignore the FILE parameter, as it cannot be relied upon.  */

void
report_error_function (file)
  const char *file ATTRIBUTE_UNUSED;
{
  struct file_stack *p;

  if (need_error_newline)
    {
      fprintf (stderr, "\n");
      need_error_newline = 0;
    }

  if (input_file_stack && input_file_stack->next != 0
      && input_file_stack_tick != last_error_tick)
    {
      for (p = input_file_stack->next; p; p = p->next)
	if (p == input_file_stack->next)
	  notice ("In file included from %s:%d", p->name, p->line);
	else
	  notice (",\n                 from %s:%d", p->name, p->line);
      fprintf (stderr, ":\n");
      last_error_tick = input_file_stack_tick;
    }

  (*print_error_function) (input_filename);
}

void
error_with_file_and_line VPARAMS ((const char *file, int line,
				   const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *file;
  int line;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  file = va_arg (ap, const char *);
  line = va_arg (ap, int);
  msgid = va_arg (ap, const char *);
#endif

  v_error_with_file_and_line (file, line, msgid, ap);
  va_end (ap);
}

void
error_with_decl VPARAMS ((tree decl, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  tree decl;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  decl = va_arg (ap, tree);
  msgid = va_arg (ap, const char *);
#endif

  v_error_with_decl (decl, msgid, ap);
  va_end (ap);
}

void
error_for_asm VPARAMS ((rtx insn, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  rtx insn;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  insn = va_arg (ap, rtx);
  msgid = va_arg (ap, const char *);
#endif

  v_error_for_asm (insn, msgid, ap);
  va_end (ap);
}

void
error VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  verror (msgid, ap);
  va_end (ap);
}

/* Set the function to call when a fatal error occurs.  */

void
set_fatal_function (f)
     void (*f) PARAMS ((const char *, va_list));
{
  fatal_function = f;
}

void
fatal VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  vfatal (msgid, ap);
  va_end (ap);
}

void
_fatal_insn (msgid, insn, file, line, function)
     const char *msgid;
     rtx insn;
     const char *file;
     int line;
     const char *function;
{
  error ("%s", msgid);
  debug_rtx (insn);
  fancy_abort (file, line, function);
}

void
_fatal_insn_not_found (insn, file, line, function)
     rtx insn;
     const char *file;
     int line;
     const char *function;
{
  if (INSN_CODE (insn) < 0)
    _fatal_insn ("Unrecognizable insn:", insn, file, line, function);
  else
    _fatal_insn ("Insn does not satisfy its constraints:",
		insn, file, line, function);
}

void
warning_with_file_and_line VPARAMS ((const char *file, int line,
				     const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *file;
  int line;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  file = va_arg (ap, const char *);
  line = va_arg (ap, int);
  msgid = va_arg (ap, const char *);
#endif

  v_warning_with_file_and_line (file, line, msgid, ap);
  va_end (ap);
}

void
warning_with_decl VPARAMS ((tree decl, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  tree decl;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  decl = va_arg (ap, tree);
  msgid = va_arg (ap, const char *);
#endif

  v_warning_with_decl (decl, msgid, ap);
  va_end (ap);
}

void
warning_for_asm VPARAMS ((rtx insn, const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  rtx insn;
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  insn = va_arg (ap, rtx);
  msgid = va_arg (ap, const char *);
#endif

  v_warning_for_asm (insn, msgid, ap);
  va_end (ap);
}

void
warning VPARAMS ((const char *msgid, ...))
{
#ifndef ANSI_PROTOTYPES
  const char *msgid;
#endif
  va_list ap;

  VA_START (ap, msgid);

#ifndef ANSI_PROTOTYPES
  msgid = va_arg (ap, const char *);
#endif

  vwarning (msgid, ap);
  va_end (ap);
}

