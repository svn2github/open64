/* Part of CPP library.
   Copyright (C) 1997, 1998, 1999, 2000 Free Software Foundation, Inc.

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2, or (at your option) any
later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

/* This header defines all the internal data structures and functions
   that need to be visible across files.  It's called cpphash.h for
   historical reasons.  */

#ifndef __GCC_CPPHASH__
#define __GCC_CPPHASH__

typedef unsigned char U_CHAR;
#define U (const U_CHAR *)  /* Intended use: U"string" */

/* Structure used for assertion predicates.  */
struct predicate
{
  struct predicate *next;
  struct cpp_toklist answer;
};

/* List of directories to look for include files in. */
struct file_name_list
{
  struct file_name_list *next;
  struct file_name_list *alloc; /* for the cache of
				   current directory entries */
  char *name;
  unsigned int nlen;
  /* We use these to tell if the directory mentioned here is a duplicate
     of an earlier directory on the search path. */
  ino_t ino;
  dev_t dev;
  /* If the following is nonzero, it is a C-language system include
     directory.  */
  int sysp;
  /* Mapping of file names for this directory.
     Only used on MS-DOS and related platforms. */
  struct file_name_map *name_map;
};
#define ABSOLUTE_PATH ((struct file_name_list *)-1)

/* This structure is used for the table of all includes.  It is
   indexed by the `short name' (the name as it appeared in the
   #include statement) which is stored in *nshort.  */
struct ihash
{
  /* Next file with the same short name but a
     different (partial) pathname). */
  struct ihash *next_this_file;

  /* Location of the file in the include search path.
     Used for include_next and to detect redundant includes. */
  struct file_name_list *foundhere;

  unsigned int hash;		/* save hash value for future reference */
  const char *nshort;		/* name of file as referenced in #include;
				   points into name[]  */
  const cpp_hashnode *cmacro;	/* macro, if any, preventing reinclusion.  */
  const char name[1];		/* (partial) pathname of file */
};
typedef struct ihash IHASH;
#define NEVER_REINCLUDE ((const cpp_hashnode *)-1)

/* Character classes.
   If the definition of `numchar' looks odd to you, please look up the
   definition of a pp-number in the C standard [section 6.4.8 of C99] */
#define ISidnum		0x01	/* a-zA-Z0-9_ */
#define ISidstart	0x02	/* _a-zA-Z */
#define ISnumstart	0x04	/* 0-9 */
#define IShspace	0x08	/* ' ' \t \f \v */
#define ISspace		0x10	/* ' ' \t \f \v \n */

#define _dollar_ok(x)	((x) == '$' && CPP_OPTION (pfile, dollars_in_ident))

#define is_idchar(x)	((_cpp_IStable[x] & ISidnum) || _dollar_ok(x))
#define is_idstart(x)	((_cpp_IStable[x] & ISidstart) || _dollar_ok(x))
#define is_numchar(x)	(_cpp_IStable[x] & ISidnum)
#define is_numstart(x)	(_cpp_IStable[x] & ISnumstart)
#define is_hspace(x)	(_cpp_IStable[x] & IShspace)
#define is_space(x)	(_cpp_IStable[x] & ISspace)

/* This table is constant if it can be initialized at compile time,
   which is the case if cpp was compiled with GCC >=2.7, or another
   compiler that supports C99.  */
#if (GCC_VERSION >= 2007) || (__STDC_VERSION__ >= 199901L)
extern const unsigned char _cpp_IStable[256];
#else
extern unsigned char _cpp_IStable[256];
#endif

/* Macros.  */

/* One character lookahead in the input buffer.  Note that if this
   returns EOF, it does *not* necessarily mean the file's end has been
   reached.  */
#define CPP_BUF_PEEK(BUFFER) \
  ((BUFFER)->cur < (BUFFER)->rlimit ? *(BUFFER)->cur : EOF)

/* Make sure PFILE->token_buffer has space for at least N more characters. */
#define CPP_RESERVE(PFILE, N) \
  (CPP_WRITTEN (PFILE) + (size_t)(N) > (PFILE)->token_buffer_size \
   && (_cpp_grow_token_buffer (PFILE, N), 0))

/* Append string STR (of length N) to PFILE's output buffer.
   Assume there is enough space. */
#define CPP_PUTS_Q(PFILE, STR, N) \
  (memcpy ((PFILE)->limit, STR, (N)), (PFILE)->limit += (N))
/* Append string STR (of length N) to PFILE's output buffer.  Make space. */
#define CPP_PUTS(PFILE, STR, N) CPP_RESERVE(PFILE, N), CPP_PUTS_Q(PFILE, STR,N)
/* Append character CH to PFILE's output buffer.  Assume sufficient space. */
#define CPP_PUTC_Q(PFILE, CH) (*(PFILE)->limit++ = (CH))
/* Append character CH to PFILE's output buffer.  Make space if need be. */
#define CPP_PUTC(PFILE, CH) (CPP_RESERVE (PFILE, 1), CPP_PUTC_Q (PFILE, CH))

/* Advance the current line by one. */
#define CPP_BUMP_BUFFER_LINE(PBUF) ((PBUF)->lineno++,\
				    (PBUF)->line_base = (PBUF)->cur)
#define CPP_BUMP_LINE(PFILE) CPP_BUMP_BUFFER_LINE(CPP_BUFFER(PFILE))
#define CPP_BUMP_BUFFER_LINE_CUR(PBUF, CUR) ((PBUF)->lineno++,\
				             (PBUF)->line_base = CUR)
#define CPP_BUMP_LINE_CUR(PFILE, CUR) \
                            CPP_BUMP_BUFFER_LINE_CUR(CPP_BUFFER(PFILE), CUR)
#define CPP_PREV_BUFFER(BUFFER) ((BUFFER)->prev)

/* Are we in column 1 right now?  Used mainly for -traditional handling
   of directives.  */
#define CPP_IN_COLUMN_1(PFILE) \
(CPP_BUFFER (PFILE)->cur - CPP_BUFFER (PFILE)->line_base == 1)

#define CPP_PRINT_DEPS(PFILE) CPP_OPTION (PFILE, print_deps)
#define CPP_TRADITIONAL(PFILE) CPP_OPTION (PFILE, traditional)
#define CPP_PEDANTIC(PFILE) \
  (CPP_OPTION (PFILE, pedantic) && !CPP_BUFFER (PFILE)->system_header_p)
#define CPP_WTRADITIONAL(PF) \
  (CPP_OPTION (PF, warn_traditional) && !CPP_BUFFER (PF)->system_header_p)

/* CPP_IS_MACRO_BUFFER is true if the buffer contains macro expansion.
   (Note that it is false while we're expanding macro *arguments*.) */
#define CPP_IS_MACRO_BUFFER(PBUF) ((PBUF)->macro != NULL)

/* Remember the current position of PFILE so it may be returned to
   after looking ahead a bit.

   Note that when you set a mark, you _must_ return to that mark.  You
   may not forget about it and continue parsing.  You may not pop a
   buffer with an active mark.  You may not call CPP_BUMP_LINE while a
   mark is active.  */
#define CPP_SET_BUF_MARK(IP)   ((IP)->mark = (IP)->cur)
#define CPP_GOTO_BUF_MARK(IP)  ((IP)->cur = (IP)->mark,	(IP)->mark = 0)
#define CPP_SET_MARK(PFILE)  CPP_SET_BUF_MARK(CPP_BUFFER(PFILE))
#define CPP_GOTO_MARK(PFILE) CPP_GOTO_BUF_MARK(CPP_BUFFER(PFILE))

/* ACTIVE_MARK_P is true if there's a live mark in the buffer.  */
#define ACTIVE_MARK_P(PFILE) (CPP_BUFFER (PFILE)->mark != 0)

/* Are mark and point adjacent characters?  Used mostly to deal with
   the somewhat annoying semantic of #define.  */
#define ADJACENT_TO_MARK(PFILE) \
 (CPP_BUFFER(PFILE)->cur - CPP_BUFFER(PFILE)->mark == 1)

/* Flags for _cpp_init_toklist.  */
#define DUMMY_TOKEN     0
#define NO_DUMMY_TOKEN	1

/* In cpphash.c */
extern unsigned int _cpp_calc_hash	PARAMS ((const U_CHAR *, size_t));
extern void _cpp_free_definition	PARAMS ((cpp_hashnode *));
extern int _cpp_create_definition	PARAMS ((cpp_reader *, cpp_toklist *,
						 cpp_hashnode *));
extern void _cpp_dump_definition	PARAMS ((cpp_reader *, cpp_hashnode *));
extern void _cpp_quote_string		PARAMS ((cpp_reader *, const U_CHAR *));
extern void _cpp_macroexpand		PARAMS ((cpp_reader *, cpp_hashnode *));
extern void _cpp_init_macro_hash	PARAMS ((cpp_reader *));
extern void _cpp_dump_macro_hash	PARAMS ((cpp_reader *));

/* In cppfiles.c */
extern void _cpp_simplify_pathname	PARAMS ((char *));
extern void _cpp_execute_include	PARAMS ((cpp_reader *, U_CHAR *,
						 unsigned int, int,
						 struct file_name_list *));
extern void _cpp_init_include_hash	PARAMS ((cpp_reader *));
extern const char *_cpp_fake_ihash	PARAMS ((cpp_reader *, const char *));

/* In cppexp.c */
extern int _cpp_parse_expr		PARAMS ((cpp_reader *));

/* In cpplex.c */
extern void _cpp_parse_name		PARAMS ((cpp_reader *, int));
extern void _cpp_skip_rest_of_line	PARAMS ((cpp_reader *));
extern void _cpp_skip_hspace		PARAMS ((cpp_reader *));
extern void _cpp_expand_to_buffer	PARAMS ((cpp_reader *,
						 const unsigned char *, int));
extern int _cpp_parse_assertion		PARAMS ((cpp_reader *));
extern enum cpp_ttype _cpp_lex_token	PARAMS ((cpp_reader *));
extern ssize_t _cpp_prescan		PARAMS ((cpp_reader *, cpp_buffer *,
						 ssize_t));
extern void _cpp_init_input_buffer	PARAMS ((cpp_reader *));
extern void _cpp_grow_token_buffer	PARAMS ((cpp_reader *, long));
extern enum cpp_ttype _cpp_get_directive_token
					PARAMS ((cpp_reader *));
extern enum cpp_ttype _cpp_get_define_token
					PARAMS ((cpp_reader *));
extern enum cpp_ttype _cpp_scan_until	PARAMS ((cpp_reader *, cpp_toklist *,
						 enum cpp_ttype));
extern void _cpp_init_toklist		PARAMS ((cpp_toklist *, int));
extern void _cpp_clear_toklist		PARAMS ((cpp_toklist *));
extern void _cpp_free_toklist		PARAMS ((cpp_toklist *));
extern void _cpp_slice_toklist		PARAMS ((cpp_toklist *,
						 const cpp_token *,
						 const cpp_token *));
extern void _cpp_squeeze_toklist	PARAMS ((cpp_toklist *));
extern int _cpp_equiv_tokens		PARAMS ((const cpp_token *,
						 const cpp_token *));
extern int _cpp_equiv_toklists		PARAMS ((const cpp_toklist *,
						 const cpp_toklist *));
extern void _cpp_expand_token_space	PARAMS ((cpp_toklist *, unsigned int));

/* In cpplib.c */
extern int _cpp_handle_directive	PARAMS ((cpp_reader *));
extern void _cpp_unwind_if_stack	PARAMS ((cpp_reader *, cpp_buffer *));
extern void _cpp_check_directive        PARAMS ((cpp_toklist *, cpp_token *));

/* These are inline functions instead of macros so we can get type
   checking.  */

static inline int ustrcmp	PARAMS ((const U_CHAR *, const U_CHAR *));
static inline int ustrncmp	PARAMS ((const U_CHAR *, const U_CHAR *,
					 size_t));
static inline size_t ustrlen	PARAMS ((const U_CHAR *));
static inline U_CHAR *uxstrdup	PARAMS ((const U_CHAR *));
static inline U_CHAR *ustrchr	PARAMS ((const U_CHAR *, int));

static inline int
ustrcmp (s1, s2)
     const U_CHAR *s1, *s2;
{
  return strcmp ((const char *)s1, (const char *)s2);
}

static inline int
ustrncmp (s1, s2, n)
     const U_CHAR *s1, *s2;
     size_t n;
{
  return strncmp ((const char *)s1, (const char *)s2, n);
}

static inline size_t
ustrlen (s1)
     const U_CHAR *s1;
{
  return strlen ((const char *)s1);
}

static inline U_CHAR *
uxstrdup (s1)
     const U_CHAR *s1;
{
  return (U_CHAR *) xstrdup ((const char *)s1);
}

static inline U_CHAR *
ustrchr (s1, c)
     const U_CHAR *s1;
     int c;
{
  return (U_CHAR *) strchr ((const char *)s1, c);
}

#endif
