/* A Bison parser, made by GNU Bison 2.1.  */

/* Skeleton parser for Yacc-like parsing with Bison,
   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, when this file is copied by Bison into a
   Bison output file, you may use that output file without restriction.
   This special exception was added by the Free Software Foundation
   in version 1.24 of Bison.  */

/* Written by Richard Stallman by simplifying the original so called
   ``semantic'' parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     tTYPENAME = 259,
     SELFNAME = 260,
     PFUNCNAME = 261,
     SCSPEC = 262,
     TYPESPEC = 263,
     CV_QUALIFIER = 264,
     CONSTANT = 265,
     VAR_FUNC_NAME = 266,
     STRING = 267,
     ELLIPSIS = 268,
     OPTIONS_PRAGMA = 269,
     EXEC_FREQ_PRAGMA = 270,
     FREQ_NEVER = 271,
     FREQ_INIT = 272,
     FREQ_FREQUENT = 273,
     OMP_PRAGMA = 274,
     OMP_PARALLEL = 275,
     OMP_PRIVATE = 276,
     OMP_COPYPRIVATE = 277,
     OMP_FIRSTPRIVATE = 278,
     OMP_LASTPRIVATE = 279,
     OMP_SHARED = 280,
     OMP_DEFAULT = 281,
     OMP_NONE = 282,
     OMP_REDUCTION = 283,
     OMP_COPYIN = 284,
     OMP_DYNAMIC = 285,
     OMP_GUIDED = 286,
     OMP_RUNTIME = 287,
     OMP_ORDERED = 288,
     OMP_SCHEDULE = 289,
     OMP_NOWAIT = 290,
     OMP_NUM_THREADS = 291,
     OMP_SECTIONS = 292,
     OMP_SECTION = 293,
     OMP_SINGLE = 294,
     OMP_MASTER = 295,
     OMP_CRITICAL = 296,
     OMP_BARRIER = 297,
     OMP_ATOMIC = 298,
     OMP_FLUSH = 299,
     OMP_THREADPRIVATE = 300,
     OMP_STATIC = 301,
     SIZEOF = 302,
     ENUM = 303,
     IF = 304,
     ELSE = 305,
     WHILE = 306,
     DO = 307,
     FOR = 308,
     SWITCH = 309,
     CASE = 310,
     DEFAULT = 311,
     BREAK = 312,
     CONTINUE = 313,
     RETURN_KEYWORD = 314,
     GOTO = 315,
     ASM_KEYWORD = 316,
     TYPEOF = 317,
     ALIGNOF = 318,
     SIGOF = 319,
     ATTRIBUTE = 320,
     EXTENSION = 321,
     LABEL = 322,
     REALPART = 323,
     IMAGPART = 324,
     VA_ARG = 325,
     AGGR = 326,
     VISSPEC = 327,
     DELETE = 328,
     NEW = 329,
     THIS = 330,
     OPERATOR = 331,
     CXX_TRUE = 332,
     CXX_FALSE = 333,
     OFFSETOF = 334,
     NAMESPACE = 335,
     TYPENAME_KEYWORD = 336,
     USING = 337,
     LEFT_RIGHT = 338,
     TEMPLATE = 339,
     TYPEID = 340,
     DYNAMIC_CAST = 341,
     STATIC_CAST = 342,
     REINTERPRET_CAST = 343,
     CONST_CAST = 344,
     SCOPE = 345,
     EXPORT = 346,
     EMPTY = 347,
     NSNAME = 348,
     PTYPENAME = 349,
     THROW = 350,
     ASSIGN = 351,
     OROR = 352,
     ANDAND = 353,
     MIN_MAX = 354,
     EQCOMPARE = 355,
     ARITHCOMPARE = 356,
     RSHIFT = 357,
     LSHIFT = 358,
     DOT_STAR = 359,
     POINTSAT_STAR = 360,
     MINUSMINUS = 361,
     PLUSPLUS = 362,
     UNARY = 363,
     HYPERUNARY = 364,
     POINTSAT = 365,
     CATCH = 366,
     TRY = 367,
     EXTERN_LANG_STRING = 368,
     ALL = 369,
     PRE_PARSED_CLASS_DECL = 370,
     DEFARG = 371,
     DEFARG_MARKER = 372,
     PRE_PARSED_FUNCTION_DECL = 373,
     TYPENAME_DEFN = 374,
     IDENTIFIER_DEFN = 375,
     PTYPENAME_DEFN = 376,
     SL2_SECTIONS = 377,
     SL2_MINOR_SECTIONS = 378,
     SL2_SECTION = 379,
     PRAGMA_SL2 = 380,
     SL2_MINOR_SECTION = 381,
     END_OF_LINE = 382,
     END_OF_SAVED_INPUT = 383
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define tTYPENAME 259
#define SELFNAME 260
#define PFUNCNAME 261
#define SCSPEC 262
#define TYPESPEC 263
#define CV_QUALIFIER 264
#define CONSTANT 265
#define VAR_FUNC_NAME 266
#define STRING 267
#define ELLIPSIS 268
#define OPTIONS_PRAGMA 269
#define EXEC_FREQ_PRAGMA 270
#define FREQ_NEVER 271
#define FREQ_INIT 272
#define FREQ_FREQUENT 273
#define OMP_PRAGMA 274
#define OMP_PARALLEL 275
#define OMP_PRIVATE 276
#define OMP_COPYPRIVATE 277
#define OMP_FIRSTPRIVATE 278
#define OMP_LASTPRIVATE 279
#define OMP_SHARED 280
#define OMP_DEFAULT 281
#define OMP_NONE 282
#define OMP_REDUCTION 283
#define OMP_COPYIN 284
#define OMP_DYNAMIC 285
#define OMP_GUIDED 286
#define OMP_RUNTIME 287
#define OMP_ORDERED 288
#define OMP_SCHEDULE 289
#define OMP_NOWAIT 290
#define OMP_NUM_THREADS 291
#define OMP_SECTIONS 292
#define OMP_SECTION 293
#define OMP_SINGLE 294
#define OMP_MASTER 295
#define OMP_CRITICAL 296
#define OMP_BARRIER 297
#define OMP_ATOMIC 298
#define OMP_FLUSH 299
#define OMP_THREADPRIVATE 300
#define OMP_STATIC 301
#define SIZEOF 302
#define ENUM 303
#define IF 304
#define ELSE 305
#define WHILE 306
#define DO 307
#define FOR 308
#define SWITCH 309
#define CASE 310
#define DEFAULT 311
#define BREAK 312
#define CONTINUE 313
#define RETURN_KEYWORD 314
#define GOTO 315
#define ASM_KEYWORD 316
#define TYPEOF 317
#define ALIGNOF 318
#define SIGOF 319
#define ATTRIBUTE 320
#define EXTENSION 321
#define LABEL 322
#define REALPART 323
#define IMAGPART 324
#define VA_ARG 325
#define AGGR 326
#define VISSPEC 327
#define DELETE 328
#define NEW 329
#define THIS 330
#define OPERATOR 331
#define CXX_TRUE 332
#define CXX_FALSE 333
#define OFFSETOF 334
#define NAMESPACE 335
#define TYPENAME_KEYWORD 336
#define USING 337
#define LEFT_RIGHT 338
#define TEMPLATE 339
#define TYPEID 340
#define DYNAMIC_CAST 341
#define STATIC_CAST 342
#define REINTERPRET_CAST 343
#define CONST_CAST 344
#define SCOPE 345
#define EXPORT 346
#define EMPTY 347
#define NSNAME 348
#define PTYPENAME 349
#define THROW 350
#define ASSIGN 351
#define OROR 352
#define ANDAND 353
#define MIN_MAX 354
#define EQCOMPARE 355
#define ARITHCOMPARE 356
#define RSHIFT 357
#define LSHIFT 358
#define DOT_STAR 359
#define POINTSAT_STAR 360
#define MINUSMINUS 361
#define PLUSPLUS 362
#define UNARY 363
#define HYPERUNARY 364
#define POINTSAT 365
#define CATCH 366
#define TRY 367
#define EXTERN_LANG_STRING 368
#define ALL 369
#define PRE_PARSED_CLASS_DECL 370
#define DEFARG 371
#define DEFARG_MARKER 372
#define PRE_PARSED_FUNCTION_DECL 373
#define TYPENAME_DEFN 374
#define IDENTIFIER_DEFN 375
#define PTYPENAME_DEFN 376
#define SL2_SECTIONS 377
#define SL2_MINOR_SECTIONS 378
#define SL2_SECTION 379
#define PRAGMA_SL2 380
#define SL2_MINOR_SECTION 381
#define END_OF_LINE 382
#define END_OF_SAVED_INPUT 383




/* Copy the first part of user declarations.  */
#line 35 "../../../kg++fe/gnu/parse.y"

#include "config.h"

#include "system.h"

#include "tree.h"
#include "omp_types.h"
#include "omp_directive.h"
#include "input.h"
#include "flags.h"
#include "cp-tree.h"
#include "decl.h"
#include "lex.h"
#include "c-pragma.h"		/* For YYDEBUG definition.  */
#include "output.h"
#include "toplev.h"
#include "ggc.h"

/* Like YYERROR but do call yyerror.  */
#define YYERROR1 { yyerror ("syntax error"); YYERROR; }

/* Like the default stack expander, except (1) use realloc when possible,
   (2) impose no hard maxiumum on stack size, (3) REALLY do not use alloca.

   Irritatingly, YYSTYPE is defined after this %{ %} block, so we cannot
   give malloced_yyvs its proper type.  This is ok since all we need from
   it is to be able to free it.  */

static short *malloced_yyss;
static void *malloced_yyvs;
static int class_template_ok_as_expr;

#define yyoverflow(MSG, SS, SSSIZE, VS, VSSIZE, YYSSZ)			\
do {									\
  size_t newsize;							\
  short *newss;								\
  YYSTYPE *newvs;							\
  newsize = *(YYSSZ) *= 2;						\
  if (malloced_yyss)							\
    {									\
      newss = (short *)							\
	really_call_realloc (*(SS), newsize * sizeof (short));		\
      newvs = (YYSTYPE *)						\
	really_call_realloc (*(VS), newsize * sizeof (YYSTYPE));	\
    }									\
  else									\
    {									\
      newss = (short *) really_call_malloc (newsize * sizeof (short));	\
      newvs = (YYSTYPE *) really_call_malloc (newsize * sizeof (YYSTYPE)); \
      if (newss)							\
        memcpy (newss, *(SS), (SSSIZE));				\
      if (newvs)							\
        memcpy (newvs, *(VS), (VSSIZE));				\
    }									\
  if (!newss || !newvs)							\
    {									\
      yyerror (MSG);							\
      return 2;								\
    }									\
  *(SS) = newss;							\
  *(VS) = newvs;							\
  malloced_yyss = newss;						\
  malloced_yyvs = (void *) newvs;					\
} while (0)
#define OP0(NODE) (TREE_OPERAND (NODE, 0))
#define OP1(NODE) (TREE_OPERAND (NODE, 1))

/* Contains the statement keyword (if/while/do) to include in an
   error message if the user supplies an empty conditional expression.  */
static const char *cond_stmt_keyword;

/* List of types and structure classes of the current declaration.  */
static GTY(()) tree current_declspecs;

/* List of prefix attributes in effect.
   Prefix attributes are parsed by the reserved_declspecs and declmods
   rules.  They create a list that contains *both* declspecs and attrs.  */
/* ??? It is not clear yet that all cases where an attribute can now appear in
   a declspec list have been updated.  */
static GTY(()) tree prefix_attributes;

/* When defining an enumeration, this is the type of the enumeration.  */
static GTY(()) tree current_enum_type;

/* When parsing a conversion operator name, this is the scope of the
   operator itself.  */
static GTY(()) tree saved_scopes;

static tree empty_parms PARAMS ((void));
static tree parse_decl0 PARAMS ((tree, tree, tree, tree, int));
static tree parse_decl PARAMS ((tree, tree, int));
static void parse_end_decl PARAMS ((tree, tree, tree));
static tree parse_field0 PARAMS ((tree, tree, tree, tree, tree, tree));
static tree parse_field PARAMS ((tree, tree, tree, tree));
static tree parse_bitfield0 PARAMS ((tree, tree, tree, tree, tree));
static tree parse_bitfield PARAMS ((tree, tree, tree));
static tree parse_method PARAMS ((tree, tree, tree));
static void frob_specs PARAMS ((tree, tree));
static void check_class_key PARAMS ((tree, tree));
static tree parse_scoped_id PARAMS ((tree));
static tree parse_xref_tag (tree, tree, int);
static tree parse_handle_class_head (tree, tree, tree, int, int *);
static void parse_decl_instantiation (tree, tree, tree);
static int parse_begin_function_definition (tree, tree);
static tree parse_finish_call_expr (tree, tree, int);

bool In_MP_Region = false;
static bool In_MP_Section = false;
#define MAX_MP_NESTING 10
static GTY(()) tree mp_locals[MAX_MP_NESTING];
static int mp_nesting = -1;                                                     

/* Cons up an empty parameter list.  */
static inline tree
empty_parms ()
{
  tree parms;

#ifndef NO_IMPLICIT_EXTERN_C
  if (in_system_header && current_class_type == NULL
      && current_lang_name == lang_name_c)
    parms = NULL_TREE;
  else
#endif
  parms = void_list_node;
  return parms;
}

/* Record the decl-specifiers, attributes and type lookups from the
   decl-specifier-seq in a declaration.  */

static void
frob_specs (specs_attrs, lookups)
     tree specs_attrs, lookups;
{
  save_type_access_control (lookups);
  split_specs_attrs (specs_attrs, &current_declspecs, &prefix_attributes);
  if (current_declspecs
      && TREE_CODE (current_declspecs) != TREE_LIST)
    current_declspecs = build_tree_list (NULL_TREE, current_declspecs);
  if (have_extern_spec)
    {
      /* We have to indicate that there is an "extern", but that it
         was part of a language specifier.  For instance,

    	    extern "C" typedef int (*Ptr) ();

         is well formed.  */
      current_declspecs = tree_cons (error_mark_node,
				     get_identifier ("extern"),
				     current_declspecs);
      have_extern_spec = false;
    }
}

static tree
parse_decl (declarator, attributes, initialized)
     tree declarator, attributes;
     int initialized;
{
  return start_decl (declarator, current_declspecs, initialized,
		     attributes, prefix_attributes);
}

static tree
parse_decl0 (declarator, specs_attrs, lookups, attributes, initialized)
     tree declarator, specs_attrs, lookups, attributes;
     int initialized;
{
  frob_specs (specs_attrs, lookups);
  return parse_decl (declarator, attributes, initialized);
}

extern tree pop_mp_local_vars (void);
/* decl must be non-NULL, return true if this variable should be treated
 * as an OpenMP private variable
 */
static bool
Is_shared_mp_var (tree decl)
{
  return TREE_CODE (decl) == VAR_DECL && DECL_CONTEXT (decl) &&
         TREE_CODE (DECL_CONTEXT (decl)) != NAMESPACE_DECL &&
	 TREE_CODE (DECL_CONTEXT (decl)) != RECORD_TYPE &&
	 !DECL_EXTERNAL (decl) && !DECL_WEAK (decl) &&
	 !TREE_STATIC (decl);
}

static void
parse_end_decl (decl, init, asmspec)
     tree decl, init, asmspec;
{
  /* If decl is NULL_TREE, then this was a variable declaration using
     () syntax for the initializer, so we handled it in grokdeclarator.  */
  if (decl)
    decl_type_access_control (decl);
  cp_finish_decl (decl, init, asmspec, init ? LOOKUP_ONLYCONVERTING : 0);

  if (In_MP_Region && decl && Is_shared_mp_var (decl))
    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting],
                                     build_tree_list (NULL, decl));
  else if (In_MP_Region && !decl)
  {
    decl = pop_mp_local_vars ();
    /* This may introduce duplicate entries, some being introduced in the 
       above if stmt also */
    while (decl)
    {
      if (Is_shared_mp_var (decl))
        mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting],
                                         build_tree_list (NULL, decl));
      decl = pop_mp_local_vars ();
    }
  }
}

static tree
parse_field (declarator, attributes, asmspec, init)
     tree declarator, attributes, asmspec, init;
{
  tree d = grokfield (declarator, current_declspecs, init, asmspec,
		      chainon (attributes, prefix_attributes));
  decl_type_access_control (d);
  return d;
}

static tree
parse_field0 (declarator, specs_attrs, lookups, attributes, asmspec, init)
     tree declarator, specs_attrs, lookups, attributes, asmspec, init;
{
  frob_specs (specs_attrs, lookups);
  return parse_field (declarator, attributes, asmspec, init);
}

static tree
parse_bitfield (declarator, attributes, width)
     tree declarator, attributes, width;
{
  tree d = grokbitfield (declarator, current_declspecs, width);
  cplus_decl_attributes (&d, chainon (attributes, prefix_attributes), 0);
  decl_type_access_control (d);
  return d;
}

static tree
parse_bitfield0 (declarator, specs_attrs, lookups, attributes, width)
     tree declarator, specs_attrs, lookups, attributes, width;
{
  frob_specs (specs_attrs, lookups);
  return parse_bitfield (declarator, attributes, width);
}

static tree
parse_method (declarator, specs_attrs, lookups)
     tree declarator, specs_attrs, lookups;
{
  tree d;
  frob_specs (specs_attrs, lookups);
  d = start_method (current_declspecs, declarator, prefix_attributes);
  decl_type_access_control (d);
  return d;
}

static void
check_class_key (key, aggr)
     tree key;
     tree aggr;
{
  if (TREE_CODE (key) == TREE_LIST)
    key = TREE_VALUE (key);
  if ((key == union_type_node) != (TREE_CODE (aggr) == UNION_TYPE))
    pedwarn ("`%s' tag used in naming `%#T'",
	     key == union_type_node ? "union"
	     : key == record_type_node ? "struct" : "class", aggr);
}



/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined (YYSTYPE) && ! defined (YYSTYPE_IS_DECLARED)
#line 314 "../../../kg++fe/gnu/parse.y"
typedef union YYSTYPE { GTY(())
  long itype;
  tree ttype;
  char *strtype;
  enum tree_code code;
  flagged_type_tree ftype;
  struct unparsed_text *pi;
  enum reduction_op_type red_op_type;
  enum schedule_kind_type sch_k_type;
  struct parallel_clause_list * pclause_type;
  struct for_clause_list * for_clause_type;
  struct sections_clause_list * sections_clause_type;
  struct single_clause_list * single_clause_type;
  struct parallel_for_clause_list * parallel_for_clause_type;
  struct parallel_sections_clause_list * parallel_sections_clause_type;
} YYSTYPE;
/* Line 196 of yacc.c.  */
#line 635 "parse.c"
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */
#line 565 "../../../kg++fe/gnu/parse.y"

/* Tell yyparse how to print a token's value, if yydebug is set.  */
#define YYPRINT(FILE,YYCHAR,YYLVAL) yyprint(FILE,YYCHAR,YYLVAL)
extern void yyprint			PARAMS ((FILE *, int, YYSTYPE));



/* Line 219 of yacc.c.  */
#line 653 "parse.c"

#if ! defined (YYSIZE_T) && defined (__SIZE_TYPE__)
# define YYSIZE_T __SIZE_TYPE__
#endif
#if ! defined (YYSIZE_T) && defined (size_t)
# define YYSIZE_T size_t
#endif
#if ! defined (YYSIZE_T) && (defined (__STDC__) || defined (__cplusplus))
# include <stddef.h> /* INFRINGES ON USER NAME SPACE */
# define YYSIZE_T size_t
#endif
#if ! defined (YYSIZE_T)
# define YYSIZE_T unsigned int
#endif

#ifndef YY_
# if YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

#if ! defined (yyoverflow) || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if defined (__STDC__) || defined (__cplusplus)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     define YYINCLUDED_STDLIB_H
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning. */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2005 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM ((YYSIZE_T) -1)
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   define YYINCLUDED_STDLIB_H
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if (! defined (malloc) && ! defined (YYINCLUDED_STDLIB_H) \
	&& (defined (__STDC__) || defined (__cplusplus)))
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if (! defined (free) && ! defined (YYINCLUDED_STDLIB_H) \
	&& (defined (__STDC__) || defined (__cplusplus)))
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined (yyoverflow) || YYERROR_VERBOSE */


#if (! defined (yyoverflow) \
     && (! defined (__cplusplus) \
	 || (defined (YYSTYPE_IS_TRIVIAL) && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  short int yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (short int) + sizeof (YYSTYPE))			\
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined (__GNUC__) && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (0)
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (0)

#endif

#if defined (__STDC__) || defined (__cplusplus)
   typedef signed char yysigned_char;
#else
   typedef short int yysigned_char;
#endif

/* YYFINAL -- State number of the termination state. */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   15092

/* YYNTOKENS -- Number of terminals. */
#define YYNTOKENS  154
/* YYNNTS -- Number of nonterminals. */
#define YYNNTS  378
/* YYNRULES -- Number of rules. */
#define YYNRULES  1112
/* YYNRULES -- Number of states. */
#define YYNSTATES  2230

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   383

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const unsigned char yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
     153,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   151,     2,     2,     2,   119,   107,     2,
     128,   149,   117,   115,    96,   116,   127,   118,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    99,    97,
     110,   100,   111,   102,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   129,     2,   152,   106,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    95,   105,   150,   122,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      98,   101,   103,   104,   108,   109,   112,   113,   114,   120,
     121,   123,   124,   125,   126,   130,   131,   132,   133,   134,
     135,   136,   137,   138,   139,   140,   141,   142,   143,   144,
     145,   146,   147,   148
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const unsigned short int yyprhs[] =
{
       0,     0,     3,     4,     6,     7,    10,    13,    15,    16,
      17,    18,    20,    22,    23,    26,    29,    31,    32,    36,
      38,    44,    49,    55,    60,    61,    68,    69,    75,    77,
      80,    82,    85,    87,    89,    90,    97,   100,   104,   108,
     112,   116,   121,   122,   123,   131,   134,   138,   140,   142,
     145,   148,   150,   153,   154,   160,   164,   166,   168,   170,
     174,   176,   177,   180,   183,   187,   189,   193,   195,   199,
     201,   205,   208,   211,   214,   216,   218,   224,   229,   232,
     235,   239,   243,   246,   249,   253,   257,   260,   263,   266,
     269,   272,   275,   277,   279,   281,   283,   284,   286,   289,
     290,   292,   293,   300,   304,   308,   312,   313,   322,   328,
     329,   339,   346,   347,   356,   362,   363,   373,   380,   383,
     386,   388,   391,   393,   400,   409,   414,   421,   428,   433,
     436,   438,   441,   444,   446,   449,   451,   454,   457,   462,
     465,   466,   470,   471,   472,   474,   478,   481,   482,   484,
     486,   488,   493,   496,   498,   500,   502,   504,   506,   508,
     510,   512,   514,   516,   518,   520,   521,   528,   529,   536,
     537,   543,   544,   550,   551,   559,   560,   568,   569,   576,
     577,   584,   585,   586,   592,   598,   600,   602,   608,   614,
     615,   617,   619,   620,   622,   624,   628,   629,   632,   634,
     636,   639,   641,   645,   647,   649,   651,   653,   655,   657,
     659,   661,   665,   667,   671,   672,   674,   676,   677,   685,
     687,   689,   693,   698,   702,   706,   710,   714,   718,   720,
     722,   724,   727,   730,   733,   736,   739,   742,   745,   750,
     753,   758,   761,   765,   769,   774,   779,   785,   791,   798,
     801,   806,   812,   815,   818,   822,   826,   830,   832,   836,
     839,   843,   848,   850,   853,   859,   861,   865,   869,   873,
     877,   881,   885,   889,   893,   897,   901,   905,   909,   913,
     917,   921,   925,   929,   933,   937,   943,   947,   951,   953,
     956,   958,   962,   966,   970,   974,   978,   982,   986,   990,
     994,   998,  1002,  1006,  1010,  1014,  1018,  1022,  1026,  1030,
    1036,  1040,  1044,  1046,  1049,  1053,  1057,  1059,  1061,  1063,
    1065,  1067,  1068,  1074,  1080,  1086,  1092,  1098,  1100,  1102,
    1104,  1106,  1109,  1111,  1114,  1117,  1121,  1126,  1131,  1133,
    1135,  1137,  1141,  1143,  1145,  1147,  1149,  1151,  1155,  1159,
    1163,  1164,  1169,  1174,  1177,  1182,  1185,  1192,  1197,  1202,
    1205,  1208,  1210,  1215,  1217,  1225,  1233,  1241,  1249,  1254,
    1259,  1262,  1265,  1268,  1270,  1275,  1278,  1281,  1287,  1291,
    1294,  1297,  1303,  1307,  1313,  1317,  1322,  1329,  1332,  1334,
    1337,  1339,  1342,  1344,  1346,  1347,  1350,  1353,  1357,  1361,
    1365,  1368,  1371,  1374,  1376,  1378,  1380,  1383,  1386,  1389,
    1392,  1394,  1396,  1398,  1400,  1403,  1406,  1410,  1414,  1418,
    1423,  1425,  1428,  1431,  1433,  1435,  1438,  1441,  1444,  1446,
    1449,  1452,  1456,  1458,  1461,  1464,  1466,  1468,  1470,  1472,
    1474,  1476,  1478,  1483,  1488,  1493,  1498,  1500,  1502,  1504,
    1506,  1510,  1512,  1516,  1518,  1522,  1523,  1528,  1529,  1536,
    1540,  1541,  1546,  1548,  1552,  1556,  1557,  1562,  1566,  1567,
    1569,  1571,  1574,  1581,  1583,  1587,  1588,  1590,  1595,  1602,
    1607,  1609,  1611,  1613,  1615,  1617,  1621,  1622,  1625,  1627,
    1630,  1634,  1639,  1641,  1643,  1647,  1652,  1656,  1662,  1666,
    1670,  1674,  1675,  1679,  1683,  1687,  1688,  1691,  1694,  1695,
    1702,  1703,  1709,  1712,  1715,  1718,  1719,  1720,  1721,  1733,
    1735,  1736,  1738,  1739,  1741,  1743,  1746,  1749,  1752,  1755,
    1758,  1761,  1765,  1770,  1774,  1777,  1781,  1786,  1788,  1791,
    1793,  1796,  1799,  1802,  1805,  1809,  1813,  1816,  1817,  1820,
    1824,  1826,  1831,  1833,  1837,  1839,  1841,  1844,  1847,  1851,
    1855,  1856,  1858,  1862,  1865,  1868,  1870,  1873,  1876,  1879,
    1882,  1885,  1888,  1891,  1893,  1896,  1899,  1903,  1905,  1908,
    1911,  1916,  1921,  1924,  1926,  1932,  1937,  1939,  1940,  1942,
    1946,  1947,  1949,  1953,  1955,  1957,  1959,  1961,  1966,  1971,
    1976,  1981,  1986,  1990,  1995,  2000,  2005,  2010,  2014,  2017,
    2019,  2021,  2025,  2027,  2031,  2034,  2036,  2043,  2044,  2047,
    2049,  2052,  2054,  2057,  2061,  2065,  2067,  2071,  2073,  2076,
    2080,  2084,  2087,  2090,  2094,  2096,  2101,  2106,  2110,  2114,
    2117,  2119,  2121,  2124,  2126,  2128,  2131,  2134,  2136,  2139,
    2143,  2147,  2150,  2153,  2157,  2159,  2163,  2167,  2170,  2173,
    2177,  2179,  2184,  2188,  2193,  2197,  2199,  2202,  2205,  2208,
    2211,  2214,  2217,  2220,  2222,  2225,  2230,  2235,  2238,  2240,
    2242,  2244,  2246,  2249,  2254,  2258,  2262,  2265,  2268,  2271,
    2274,  2276,  2279,  2282,  2285,  2288,  2292,  2294,  2297,  2301,
    2306,  2309,  2312,  2315,  2318,  2321,  2324,  2329,  2332,  2334,
    2337,  2340,  2344,  2346,  2350,  2353,  2357,  2360,  2363,  2367,
    2369,  2373,  2378,  2380,  2383,  2387,  2390,  2393,  2395,  2399,
    2402,  2405,  2407,  2410,  2414,  2416,  2420,  2427,  2432,  2437,
    2441,  2447,  2451,  2455,  2459,  2462,  2464,  2466,  2469,  2472,
    2475,  2476,  2478,  2480,  2483,  2487,  2488,  2493,  2495,  2496,
    2497,  2503,  2505,  2506,  2510,  2512,  2514,  2516,  2519,  2521,
    2524,  2525,  2530,  2532,  2533,  2534,  2540,  2541,  2542,  2550,
    2551,  2552,  2553,  2554,  2567,  2568,  2569,  2577,  2578,  2584,
    2585,  2593,  2594,  2599,  2602,  2605,  2608,  2612,  2619,  2628,
    2639,  2648,  2661,  2672,  2683,  2688,  2692,  2695,  2698,  2700,
    2702,  2704,  2706,  2708,  2709,  2710,  2716,  2717,  2718,  2724,
    2726,  2729,  2730,  2731,  2732,  2738,  2740,  2742,  2746,  2750,
    2753,  2756,  2759,  2762,  2765,  2767,  2770,  2771,  2773,  2774,
    2776,  2778,  2779,  2781,  2783,  2787,  2792,  2800,  2802,  2806,
    2807,  2809,  2811,  2813,  2816,  2819,  2822,  2824,  2827,  2830,
    2831,  2835,  2837,  2839,  2841,  2844,  2847,  2850,  2855,  2858,
    2861,  2865,  2869,  2873,  2877,  2880,  2884,  2886,  2889,  2891,
    2893,  2894,  2895,  2897,  2903,  2907,  2908,  2912,  2913,  2914,
    2919,  2922,  2924,  2926,  2928,  2932,  2933,  2937,  2941,  2945,
    2947,  2948,  2952,  2956,  2960,  2964,  2968,  2972,  2976,  2980,
    2984,  2988,  2992,  2996,  3000,  3004,  3008,  3012,  3016,  3020,
    3024,  3028,  3032,  3036,  3040,  3045,  3049,  3053,  3057,  3061,
    3066,  3070,  3074,  3080,  3086,  3091,  3095,  3096,  3097,  3101,
    3105,  3110,  3112,  3115,  3120,  3125,  3130,  3135,  3140,  3145,
    3150,  3157,  3162,  3163,  3167,  3168,  3169,  3170,  3171,  3184,
    3188,  3193,  3195,  3198,  3203,  3208,  3213,  3220,  3225,  3232,
    3234,  3236,  3238,  3240,  3242,  3244,  3245,  3249,  3253,  3258,
    3260,  3263,  3268,  3273,  3278,  3285,  3287,  3288,  3293,  3295,
    3297,  3300,  3302,  3304,  3307,  3308,  3312,  3316,  3317,  3321,
    3325,  3330,  3332,  3335,  3340,  3345,  3350,  3352,  3353,  3357,
    3362,  3368,  3370,  3373,  3378,  3383,  3388,  3393,  3398,  3403,
    3408,  3413,  3418,  3425,  3430,  3435,  3442,  3444,  3445,  3449,
    3454,  3460,  3462,  3465,  3470,  3475,  3480,  3485,  3490,  3495,
    3500,  3505,  3510,  3517,  3522,  3523,  3527,  3531,  3532,  3536,
    3540,  3547,  3549,  3553,  3554,  3559,  3563,  3567,  3574,  3575,
    3579,  3583,  3590,  3592,  3594,  3596,  3598,  3600,  3602,  3604,
    3606,  3608,  3610,  3612,  3613,  3619,  3620,  3626,  3630,  3632,
    3634,  3637,  3639,  3641,  3644,  3645,  3651,  3652,  3658,  3660,
    3662,  3664,  3666,  3668,  3672,  3677,  3679,  3681,  3683,  3687,
    3689,  3691,  3693,  3695,  3697,  3701,  3703,  3705,  3707,  3709,
    3711,  3713,  3715
};

/* YYRHS -- A `-1'-separated list of the rules' RHS. */
static const short int yyrhs[] =
{
     155,     0,    -1,    -1,   156,    -1,    -1,   157,   163,    -1,
     156,   163,    -1,   156,    -1,    -1,    -1,    -1,    66,    -1,
      61,    -1,    -1,   164,   165,    -1,   197,   194,    -1,   191,
      -1,    -1,    91,   166,   188,    -1,   188,    -1,   162,   128,
      12,   149,    97,    -1,   178,    95,   158,   150,    -1,   178,
     159,   197,   160,   194,    -1,   178,   159,   191,   160,    -1,
      -1,    80,   214,    95,   167,   158,   150,    -1,    -1,    80,
      95,   168,   158,   150,    -1,   169,    -1,   171,    97,    -1,
     173,    -1,   161,   165,    -1,   511,    -1,   525,    -1,    -1,
      80,   214,   100,   170,   177,    97,    -1,    82,   360,    -1,
      82,   374,   360,    -1,    82,   374,   259,    -1,    82,   176,
     214,    -1,    82,   374,   214,    -1,    82,   374,   176,   214,
      -1,    -1,    -1,    82,    80,   174,   177,   175,   298,    97,
      -1,    93,    90,    -1,   176,    93,    90,    -1,   259,    -1,
     360,    -1,   374,   360,    -1,   374,   259,    -1,   133,    -1,
     178,   133,    -1,    -1,    84,   110,   180,   183,   111,    -1,
      84,   110,   111,    -1,   179,    -1,   181,    -1,   187,    -1,
     183,    96,   187,    -1,   214,    -1,    -1,   320,   184,    -1,
      81,   184,    -1,   179,   320,   184,    -1,   185,    -1,   185,
     100,   274,    -1,   438,    -1,   438,   100,   254,    -1,   186,
      -1,   186,   100,   235,    -1,   182,   189,    -1,   182,     1,
      -1,   197,   194,    -1,   190,    -1,   188,    -1,   178,   159,
     197,   160,   194,    -1,   178,   159,   190,   160,    -1,   161,
     189,    -1,   288,    97,    -1,   278,   287,    97,    -1,   275,
     286,    97,    -1,   312,    97,    -1,   288,    97,    -1,   278,
     287,    97,    -1,   275,   286,    97,    -1,   278,    97,    -1,
     217,    97,    -1,   275,    97,    -1,     1,    97,    -1,     1,
     150,    -1,     1,   148,    -1,    97,    -1,   441,    -1,   269,
      -1,   208,    -1,    -1,   207,    -1,   207,    97,    -1,    -1,
     148,    -1,    -1,   210,   192,   451,    95,   196,   245,    -1,
     203,   193,   195,    -1,   203,   193,   409,    -1,   203,   193,
       1,    -1,    -1,   365,     5,   128,   199,   429,   149,   347,
     444,    -1,   365,     5,    83,   347,   444,    -1,    -1,   374,
     365,     5,   128,   200,   429,   149,   347,   444,    -1,   374,
     365,     5,    83,   347,   444,    -1,    -1,   365,   230,   128,
     201,   429,   149,   347,   444,    -1,   365,   230,    83,   347,
     444,    -1,    -1,   374,   365,   230,   128,   202,   429,   149,
     347,   444,    -1,   374,   365,   230,    83,   347,   444,    -1,
     275,   272,    -1,   278,   357,    -1,   357,    -1,   278,   198,
      -1,   198,    -1,     5,   128,   429,   149,   347,   444,    -1,
     128,     5,   149,   128,   429,   149,   347,   444,    -1,     5,
      83,   347,   444,    -1,   128,     5,   149,    83,   347,   444,
      -1,   230,   128,   429,   149,   347,   444,    -1,   230,    83,
     347,   444,    -1,   278,   204,    -1,   204,    -1,   275,   272,
      -1,   278,   357,    -1,   357,    -1,   278,   198,    -1,   198,
      -1,    59,     3,    -1,   206,   305,    -1,   206,   128,   247,
     149,    -1,   206,    83,    -1,    -1,    99,   209,   211,    -1,
      -1,    -1,   213,    -1,   211,    96,   213,    -1,   211,     1,
      -1,    -1,   215,    -1,   353,    -1,   367,    -1,   212,   128,
     247,   149,    -1,   212,    83,    -1,     1,    -1,     3,    -1,
       4,    -1,     5,    -1,    94,    -1,    93,    -1,     3,    -1,
      94,    -1,    93,    -1,   140,    -1,   139,    -1,   141,    -1,
      -1,    84,   226,   284,    97,   218,   227,    -1,    -1,    84,
     226,   275,   272,   219,   227,    -1,    -1,    84,   226,   357,
     220,   227,    -1,    -1,    84,   226,   198,   221,   227,    -1,
      -1,     7,    84,   226,   284,    97,   222,   227,    -1,    -1,
       7,    84,   226,   275,   272,   223,   227,    -1,    -1,     7,
      84,   226,   357,   224,   227,    -1,    -1,     7,    84,   226,
     198,   225,   227,    -1,    -1,    -1,    94,   110,   233,   232,
     231,    -1,     4,   110,   233,   232,   231,    -1,   230,    -1,
     228,    -1,   214,   110,   233,   111,   231,    -1,     5,   110,
     233,   232,   231,    -1,    -1,   111,    -1,   113,    -1,    -1,
     234,    -1,   235,    -1,   234,    96,   235,    -1,    -1,   236,
     237,    -1,   274,    -1,    94,    -1,   374,    94,    -1,   254,
      -1,   365,    84,   214,    -1,   116,    -1,   115,    -1,   124,
      -1,   123,    -1,   151,    -1,   246,    -1,   253,    -1,    83,
      -1,   128,   239,   149,    -1,    83,    -1,   128,   243,   149,
      -1,    -1,   243,    -1,     1,    -1,    -1,   419,   272,   289,
     298,   100,   244,   306,    -1,   239,    -1,   150,    -1,   382,
     380,   150,    -1,   382,   380,     1,   150,    -1,   382,     1,
     150,    -1,   253,    96,   253,    -1,   253,    96,     1,    -1,
     246,    96,   253,    -1,   246,    96,     1,    -1,   253,    -1,
     246,    -1,   264,    -1,   161,   252,    -1,   117,   252,    -1,
     107,   252,    -1,   122,   252,    -1,   238,   252,    -1,   104,
     214,    -1,   281,   248,    -1,   281,   128,   274,   149,    -1,
     282,   248,    -1,   282,   128,   274,   149,    -1,   266,   346,
      -1,   266,   346,   250,    -1,   266,   249,   346,    -1,   266,
     249,   346,   250,    -1,   266,   128,   274,   149,    -1,   266,
     128,   274,   149,   250,    -1,   266,   249,   128,   274,   149,
      -1,   266,   249,   128,   274,   149,   250,    -1,   267,   252,
      -1,   267,   129,   152,   252,    -1,   267,   129,   239,   152,
     252,    -1,    68,   252,    -1,    69,   252,    -1,   128,   247,
     149,    -1,    95,   247,   150,    -1,   128,   247,   149,    -1,
      83,    -1,   128,   284,   149,    -1,   100,   306,    -1,   128,
     274,   149,    -1,   251,   128,   274,   149,    -1,   248,    -1,
     251,   248,    -1,   251,    95,   307,   318,   150,    -1,   252,
      -1,   253,   121,   253,    -1,   253,   120,   253,    -1,   253,
     115,   253,    -1,   253,   116,   253,    -1,   253,   117,   253,
      -1,   253,   118,   253,    -1,   253,   119,   253,    -1,   253,
     114,   253,    -1,   253,   113,   253,    -1,   253,   112,   253,
      -1,   253,   110,   253,    -1,   253,   111,   253,    -1,   253,
     109,   253,    -1,   253,   108,   253,    -1,   253,   107,   253,
      -1,   253,   105,   253,    -1,   253,   106,   253,    -1,   253,
     104,   253,    -1,   253,   103,   253,    -1,   253,   102,   424,
      99,   253,    -1,   253,   100,   253,    -1,   253,   101,   253,
      -1,    98,    -1,    98,   253,    -1,   252,    -1,   254,   121,
     254,    -1,   254,   120,   254,    -1,   254,   115,   254,    -1,
     254,   116,   254,    -1,   254,   117,   254,    -1,   254,   118,
     254,    -1,   254,   119,   254,    -1,   254,   114,   254,    -1,
     254,   113,   254,    -1,   254,   112,   254,    -1,   254,   110,
     254,    -1,   254,   109,   254,    -1,   254,   108,   254,    -1,
     254,   107,   254,    -1,   254,   105,   254,    -1,   254,   106,
     254,    -1,   254,   104,   254,    -1,   254,   103,   254,    -1,
     254,   102,   424,    99,   254,    -1,   254,   100,   254,    -1,
     254,   101,   254,    -1,    98,    -1,    98,   254,    -1,   122,
     439,   214,    -1,   122,   439,   228,    -1,   257,    -1,   450,
      -1,     3,    -1,    94,    -1,    93,    -1,    -1,     6,   110,
     256,   233,   232,    -1,   450,   110,   256,   233,   232,    -1,
      84,   214,   110,   233,   232,    -1,    84,     6,   110,   233,
     232,    -1,    84,   450,   110,   233,   232,    -1,   255,    -1,
       4,    -1,     5,    -1,   261,    -1,   299,   261,    -1,   255,
      -1,   117,   260,    -1,   107,   260,    -1,   128,   260,   149,
      -1,     3,   110,   233,   232,    -1,    93,   110,   234,   232,
      -1,   359,    -1,   255,    -1,   262,    -1,   128,   260,   149,
      -1,   255,    -1,    10,    -1,   268,    -1,    12,    -1,    11,
      -1,   128,   239,   149,    -1,   128,   260,   149,    -1,   128,
       1,   149,    -1,    -1,   128,   265,   385,   149,    -1,   255,
     128,   247,   149,    -1,   255,    83,    -1,   264,   128,   247,
     149,    -1,   264,    83,    -1,    70,   128,   253,    96,   274,
     149,    -1,    79,   128,   253,   149,    -1,   264,   129,   239,
     152,    -1,   264,   124,    -1,   264,   123,    -1,    75,    -1,
       9,   128,   247,   149,    -1,   363,    -1,    86,   110,   274,
     111,   128,   239,   149,    -1,    87,   110,   274,   111,   128,
     239,   149,    -1,    88,   110,   274,   111,   128,   239,   149,
      -1,    89,   110,   274,   111,   128,   239,   149,    -1,    85,
     128,   239,   149,    -1,    85,   128,   274,   149,    -1,   374,
       3,    -1,   374,   257,    -1,   374,   450,    -1,   362,    -1,
     362,   128,   247,   149,    -1,   362,    83,    -1,   270,   258,
      -1,   270,   258,   128,   247,   149,    -1,   270,   258,    83,
      -1,   270,   259,    -1,   270,   362,    -1,   270,   259,   128,
     247,   149,    -1,   270,   259,    83,    -1,   270,   362,   128,
     247,   149,    -1,   270,   362,    83,    -1,   270,   122,     8,
      83,    -1,   270,     8,    90,   122,     8,    83,    -1,   270,
       1,    -1,    74,    -1,   374,    74,    -1,    73,    -1,   374,
     267,    -1,    77,    -1,    78,    -1,    -1,   264,   127,    -1,
     264,   130,    -1,   284,   286,    97,    -1,   275,   286,    97,
      -1,   278,   287,    97,    -1,   275,    97,    -1,   278,    97,
      -1,   161,   271,    -1,   351,    -1,   357,    -1,    83,    -1,
     273,    83,    -1,   279,   378,    -1,   348,   378,    -1,   284,
     378,    -1,   279,    -1,   348,    -1,   279,    -1,   276,    -1,
     278,   284,    -1,   284,   277,    -1,   284,   280,   277,    -1,
     278,   284,   277,    -1,   278,   284,   280,    -1,   278,   284,
     280,   277,    -1,     7,    -1,   277,   285,    -1,   277,     7,
      -1,   348,    -1,     7,    -1,   278,     9,    -1,   278,     7,
      -1,   278,   299,    -1,   284,    -1,   348,   284,    -1,   284,
     280,    -1,   348,   284,   280,    -1,   285,    -1,   280,   285,
      -1,   280,   299,    -1,   299,    -1,    47,    -1,    63,    -1,
      62,    -1,   312,    -1,     8,    -1,   354,    -1,   283,   128,
     239,   149,    -1,   283,   128,   274,   149,    -1,    64,   128,
     239,   149,    -1,    64,   128,   274,   149,    -1,     8,    -1,
       9,    -1,   312,    -1,   294,    -1,   286,    96,   290,    -1,
     295,    -1,   287,    96,   290,    -1,   296,    -1,   288,    96,
     290,    -1,    -1,   162,   128,    12,   149,    -1,    -1,   272,
     289,   298,   100,   291,   306,    -1,   272,   289,   298,    -1,
      -1,   298,   100,   293,   306,    -1,   298,    -1,   272,   289,
     292,    -1,   357,   289,   292,    -1,    -1,   357,   289,   297,
     292,    -1,   198,   289,   298,    -1,    -1,   299,    -1,   300,
      -1,   299,   300,    -1,    65,   128,   128,   301,   149,   149,
      -1,   302,    -1,   301,    96,   302,    -1,    -1,   303,    -1,
     303,   128,     3,   149,    -1,   303,   128,     3,    96,   247,
     149,    -1,   303,   128,   247,   149,    -1,   214,    -1,     7,
      -1,     8,    -1,     9,    -1,   214,    -1,   304,    96,   214,
      -1,    -1,   100,   306,    -1,   253,    -1,    95,   150,    -1,
      95,   307,   150,    -1,    95,   307,    96,   150,    -1,     1,
      -1,   306,    -1,   307,    96,   306,    -1,   129,   253,   152,
     306,    -1,   214,    99,   306,    -1,   307,    96,   214,    99,
     306,    -1,   138,   193,   195,    -1,   138,   193,   409,    -1,
     138,   193,     1,    -1,    -1,   309,   308,   194,    -1,   137,
     253,   148,    -1,   137,     1,   148,    -1,    -1,   311,   310,
      -1,   311,     1,    -1,    -1,    48,   214,    95,   313,   343,
     150,    -1,    -1,    48,    95,   314,   343,   150,    -1,    48,
     214,    -1,    48,   372,    -1,    81,   367,    -1,    -1,    -1,
      -1,   324,   325,    95,   315,   330,   150,   298,   316,   311,
     317,   309,    -1,   323,    -1,    -1,    96,    -1,    -1,    96,
      -1,    71,    -1,   320,     7,    -1,   320,     8,    -1,   320,
       9,    -1,   320,    71,    -1,   320,   299,    -1,   320,   214,
      -1,   320,   365,   214,    -1,   320,   374,   365,   214,    -1,
     320,   374,   214,    -1,   320,   229,    -1,   320,   365,   229,
      -1,   320,   374,   365,   229,    -1,   321,    -1,   320,   216,
      -1,   322,    -1,   321,    95,    -1,   321,    99,    -1,   322,
      95,    -1,   322,    99,    -1,   320,   216,    95,    -1,   320,
     216,    99,    -1,   320,    95,    -1,    -1,    99,   439,    -1,
      99,   439,   326,    -1,   327,    -1,   326,    96,   439,   327,
      -1,   328,    -1,   329,   439,   328,    -1,   367,    -1,   353,
      -1,    72,   439,    -1,     7,   439,    -1,   329,    72,   439,
      -1,   329,     7,   439,    -1,    -1,   332,    -1,   330,   331,
     332,    -1,   330,   331,    -1,    72,    99,    -1,   333,    -1,
     332,   333,    -1,   334,    97,    -1,   334,   150,    -1,   205,
      99,    -1,   205,   132,    -1,   205,    59,    -1,   205,    95,
      -1,    97,    -1,   161,   333,    -1,   182,   333,    -1,   182,
     275,    97,    -1,   441,    -1,   275,   335,    -1,   278,   336,
      -1,   357,   289,   298,   305,    -1,   198,   289,   298,   305,
      -1,    99,   253,    -1,     1,    -1,   278,   204,   289,   298,
     305,    -1,   204,   289,   298,   305,    -1,   171,    -1,    -1,
     337,    -1,   335,    96,   338,    -1,    -1,   340,    -1,   336,
      96,   342,    -1,   339,    -1,   340,    -1,   341,    -1,   342,
      -1,   351,   289,   298,   305,    -1,     4,    99,   253,   298,
      -1,   357,   289,   298,   305,    -1,   198,   289,   298,   305,
      -1,     3,    99,   253,   298,    -1,    99,   253,   298,    -1,
     351,   289,   298,   305,    -1,     4,    99,   253,   298,    -1,
     357,   289,   298,   305,    -1,     3,    99,   253,   298,    -1,
      99,   253,   298,    -1,   344,   319,    -1,   319,    -1,   345,
      -1,   344,    96,   345,    -1,   214,    -1,   214,   100,   253,
      -1,   419,   375,    -1,   419,    -1,   128,   274,   149,   129,
     239,   152,    -1,    -1,   347,     9,    -1,     9,    -1,   348,
       9,    -1,   299,    -1,   348,   299,    -1,   128,   247,   149,
      -1,   128,   429,   149,    -1,    83,    -1,   128,     1,   149,
      -1,   351,    -1,   299,   351,    -1,   117,   348,   350,    -1,
     107,   348,   350,    -1,   117,   350,    -1,   107,   350,    -1,
     373,   347,   350,    -1,   352,    -1,   352,   349,   347,   444,
      -1,   352,   129,   239,   152,    -1,   352,   129,   152,    -1,
     128,   350,   149,    -1,   365,   364,    -1,   364,    -1,   364,
      -1,   374,   364,    -1,   353,    -1,   355,    -1,   374,   355,
      -1,   365,   364,    -1,   357,    -1,   299,   357,    -1,   117,
     348,   356,    -1,   107,   348,   356,    -1,   117,   356,    -1,
     107,   356,    -1,   373,   347,   356,    -1,   263,    -1,   117,
     348,   356,    -1,   107,   348,   356,    -1,   117,   358,    -1,
     107,   358,    -1,   373,   347,   356,    -1,   359,    -1,   263,
     349,   347,   444,    -1,   128,   358,   149,    -1,   263,   129,
     239,   152,    -1,   263,   129,   152,    -1,   361,    -1,   374,
     361,    -1,   374,   255,    -1,   365,   262,    -1,   365,   259,
      -1,   365,   258,    -1,   365,   255,    -1,   365,   258,    -1,
     361,    -1,   374,   361,    -1,   284,   128,   247,   149,    -1,
     284,   128,   260,   149,    -1,   284,   273,    -1,     4,    -1,
       5,    -1,   228,    -1,   366,    -1,   365,   366,    -1,   365,
      84,   371,    90,    -1,   365,     3,    90,    -1,   365,    94,
      90,    -1,     4,    90,    -1,     5,    90,    -1,    93,    90,
      -1,   228,    90,    -1,   368,    -1,   374,   368,    -1,   369,
     214,    -1,   369,   228,    -1,   369,   371,    -1,   369,    84,
     371,    -1,   370,    -1,   369,   370,    -1,   369,   371,    90,
      -1,   369,    84,   371,    90,    -1,     4,    90,    -1,     5,
      90,    -1,   228,    90,    -1,    94,    90,    -1,     3,    90,
      -1,    93,    90,    -1,   214,   110,   233,   232,    -1,   374,
     364,    -1,   355,    -1,   374,   355,    -1,   365,   117,    -1,
     374,   365,   117,    -1,    90,    -1,   117,   347,   375,    -1,
     117,   347,    -1,   107,   347,   375,    -1,   107,   347,    -1,
     373,   347,    -1,   373,   347,   375,    -1,   376,    -1,   129,
     239,   152,    -1,   376,   129,   239,   152,    -1,   378,    -1,
     299,   378,    -1,   117,   348,   377,    -1,   117,   377,    -1,
     117,   348,    -1,   117,    -1,   107,   348,   377,    -1,   107,
     377,    -1,   107,   348,    -1,   107,    -1,   373,   347,    -1,
     373,   347,   377,    -1,   379,    -1,   128,   377,   149,    -1,
     379,   128,   429,   149,   347,   444,    -1,   379,    83,   347,
     444,    -1,   379,   129,   239,   152,    -1,   379,   129,   152,
      -1,   128,   430,   149,   347,   444,    -1,   251,   347,   444,
      -1,   273,   347,   444,    -1,   129,   239,   152,    -1,   129,
     152,    -1,   393,    -1,   381,    -1,   380,   393,    -1,   380,
     381,    -1,     1,    97,    -1,    -1,   383,    -1,   384,    -1,
     383,   384,    -1,    67,   304,    97,    -1,    -1,   451,    95,
     386,   245,    -1,   385,    -1,    -1,    -1,    49,   389,   241,
     390,   391,    -1,   387,    -1,    -1,   392,   451,   394,    -1,
     523,    -1,   512,    -1,   387,    -1,   451,   394,    -1,   271,
      -1,   239,    97,    -1,    -1,   388,    50,   395,   391,    -1,
     388,    -1,    -1,    -1,    51,   396,   241,   397,   391,    -1,
      -1,    -1,    52,   398,   391,    51,   399,   240,    97,    -1,
      -1,    -1,    -1,    -1,    53,   400,   128,   422,   401,   242,
      97,   402,   424,   149,   403,   391,    -1,    -1,    -1,    54,
     404,   128,   243,   149,   405,   391,    -1,    -1,    55,   253,
      99,   406,   393,    -1,    -1,    55,   253,    13,   253,    99,
     407,   393,    -1,    -1,    56,    99,   408,   393,    -1,    57,
      97,    -1,    58,    97,    -1,    59,    97,    -1,    59,   239,
      97,    -1,   162,   423,   128,    12,   149,    97,    -1,   162,
     423,   128,    12,    99,   425,   149,    97,    -1,   162,   423,
     128,    12,    99,   425,    99,   425,   149,    97,    -1,   162,
     423,   128,    12,    90,   425,   149,    97,    -1,   162,   423,
     128,    12,    99,   425,    99,   425,    99,   428,   149,    97,
      -1,   162,   423,   128,    12,    90,   425,    99,   428,   149,
      97,    -1,   162,   423,   128,    12,    99,   425,    90,   428,
     149,    97,    -1,    60,   117,   239,    97,    -1,    60,   214,
      97,    -1,   421,   393,    -1,   421,   150,    -1,    97,    -1,
     412,    -1,   173,    -1,   172,    -1,   169,    -1,    -1,    -1,
     132,   410,   195,   411,   415,    -1,    -1,    -1,   132,   413,
     387,   414,   415,    -1,   416,    -1,   415,   416,    -1,    -1,
      -1,    -1,   131,   417,   420,   418,   387,    -1,   279,    -1,
     348,    -1,   128,    13,   149,    -1,   128,   438,   149,    -1,
       3,    99,    -1,    94,    99,    -1,     4,    99,    -1,     5,
      99,    -1,   424,    97,    -1,   271,    -1,    95,   245,    -1,
      -1,     9,    -1,    -1,   239,    -1,     1,    -1,    -1,   426,
      -1,   427,    -1,   426,    96,   427,    -1,    12,   128,   239,
     149,    -1,   129,   214,   152,    12,   128,   239,   149,    -1,
      12,    -1,   428,    96,    12,    -1,    -1,   430,    -1,   274,
      -1,   434,    -1,   435,    13,    -1,   434,    13,    -1,   274,
      13,    -1,    13,    -1,   434,    99,    -1,   274,    99,    -1,
      -1,   100,   432,   433,    -1,   136,    -1,   306,    -1,   436,
      -1,   438,   431,    -1,   435,   437,    -1,   435,   440,    -1,
     435,   440,   100,   306,    -1,   434,    96,    -1,   274,    96,
      -1,   276,   272,   298,    -1,   279,   272,   298,    -1,   284,
     272,   298,    -1,   276,   378,   298,    -1,   276,   298,    -1,
     278,   357,   298,    -1,   438,    -1,   438,   431,    -1,   436,
      -1,   274,    -1,    -1,    -1,   357,    -1,     3,   442,     3,
     443,    97,    -1,   110,   233,   232,    -1,    -1,   128,   247,
     149,    -1,    -1,    -1,    98,   128,   446,   149,    -1,    98,
      83,    -1,   274,    -1,     1,    -1,   445,    -1,   446,    96,
     445,    -1,    -1,   117,   347,   447,    -1,   107,   347,   447,
      -1,   373,   347,   447,    -1,    76,    -1,    -1,   448,   117,
     449,    -1,   448,   118,   449,    -1,   448,   119,   449,    -1,
     448,   115,   449,    -1,   448,   116,   449,    -1,   448,   107,
     449,    -1,   448,   105,   449,    -1,   448,   106,   449,    -1,
     448,   122,   449,    -1,   448,    96,   449,    -1,   448,   112,
     449,    -1,   448,   110,   449,    -1,   448,   111,   449,    -1,
     448,   109,   449,    -1,   448,   101,   449,    -1,   448,   100,
     449,    -1,   448,   114,   449,    -1,   448,   113,   449,    -1,
     448,   124,   449,    -1,   448,   123,   449,    -1,   448,   104,
     449,    -1,   448,   103,   449,    -1,   448,   151,   449,    -1,
     448,   102,    99,   449,    -1,   448,   108,   449,    -1,   448,
     130,   449,    -1,   448,   121,   449,    -1,   448,    83,   449,
      -1,   448,   129,   152,   449,    -1,   448,    74,   449,    -1,
     448,    73,   449,    -1,   448,    74,   129,   152,   449,    -1,
     448,    73,   129,   152,   449,    -1,   448,   419,   447,   449,
      -1,   448,     1,   449,    -1,    -1,    -1,   454,   453,   529,
      -1,    19,    20,   153,    -1,    19,    20,   455,   153,    -1,
     456,    -1,   455,   456,    -1,    49,   128,   253,   149,    -1,
      36,   128,   253,   149,    -1,    21,   128,   530,   149,    -1,
      23,   128,   530,   149,    -1,    25,   128,   530,   149,    -1,
      56,   128,    25,   149,    -1,    56,   128,    27,   149,    -1,
      28,   128,   531,    99,   530,   149,    -1,    29,   128,   530,
     149,    -1,    -1,   464,   458,   459,    -1,    -1,    -1,    -1,
      -1,    53,   460,   128,   422,   461,   242,    97,   462,   424,
     149,   463,   391,    -1,    19,    53,   153,    -1,    19,    53,
     465,   153,    -1,   466,    -1,   465,   466,    -1,    21,   128,
     530,   149,    -1,    23,   128,   530,   149,    -1,    24,   128,
     530,   149,    -1,    28,   128,   531,    99,   530,   149,    -1,
      34,   128,   467,   149,    -1,    34,   128,   467,    96,   253,
     149,    -1,    33,    -1,    35,    -1,    46,    -1,    30,    -1,
      31,    -1,    32,    -1,    -1,   470,   469,   473,    -1,    19,
      37,   153,    -1,    19,    37,   471,   153,    -1,   472,    -1,
     471,   472,    -1,    21,   128,   530,   149,    -1,    23,   128,
     530,   149,    -1,    24,   128,   530,   149,    -1,    28,   128,
     531,    99,   530,   149,    -1,    35,    -1,    -1,    95,   474,
     475,   150,    -1,   477,    -1,   476,    -1,   476,   477,    -1,
     529,    -1,   478,    -1,   477,   478,    -1,    -1,   480,   479,
     529,    -1,    19,    38,   153,    -1,    -1,   483,   482,   529,
      -1,    19,    39,   153,    -1,    19,    39,   484,   153,    -1,
     485,    -1,   484,   485,    -1,    21,   128,   530,   149,    -1,
      23,   128,   530,   149,    -1,    22,   128,   530,   149,    -1,
      35,    -1,    -1,   488,   487,   459,    -1,    19,    20,    53,
     153,    -1,    19,    20,    53,   489,   153,    -1,   490,    -1,
     489,   490,    -1,    49,   128,   253,   149,    -1,    36,   128,
     253,   149,    -1,    21,   128,   530,   149,    -1,    22,   128,
     530,   149,    -1,    23,   128,   530,   149,    -1,    24,   128,
     530,   149,    -1,    25,   128,   530,   149,    -1,    56,   128,
      25,   149,    -1,    56,   128,    27,   149,    -1,    28,   128,
     531,    99,   530,   149,    -1,    29,   128,   530,   149,    -1,
      34,   128,   467,   149,    -1,    34,   128,   467,    96,   253,
     149,    -1,    33,    -1,    -1,   493,   492,   473,    -1,    19,
      20,    37,   153,    -1,    19,    20,    37,   494,   153,    -1,
     495,    -1,   494,   495,    -1,    49,   128,   253,   149,    -1,
      36,   128,   253,   149,    -1,    21,   128,   530,   149,    -1,
      22,   128,   530,   149,    -1,    23,   128,   530,   149,    -1,
      24,   128,   530,   149,    -1,    25,   128,   530,   149,    -1,
      56,   128,    25,   149,    -1,    56,   128,    27,   149,    -1,
      28,   128,   531,    99,   530,   149,    -1,    29,   128,   530,
     149,    -1,    -1,   498,   497,   529,    -1,    19,    40,   153,
      -1,    -1,   501,   500,   529,    -1,    19,    41,   153,    -1,
      19,    41,   128,   502,   149,   153,    -1,     3,    -1,    19,
      42,   153,    -1,    -1,   506,   505,   253,    97,    -1,    19,
      43,   153,    -1,    19,    44,   153,    -1,    19,    44,   128,
     530,   149,   153,    -1,    -1,   510,   509,   529,    -1,    19,
      33,   153,    -1,    19,    45,   128,   530,   149,   153,    -1,
     452,    -1,   457,    -1,   468,    -1,   481,    -1,   486,    -1,
     491,    -1,   496,    -1,   499,    -1,   504,    -1,   508,    -1,
     513,    -1,    -1,   145,   142,   153,   514,   516,    -1,    -1,
     145,   143,   153,   515,   516,    -1,    95,   517,   150,    -1,
     519,    -1,   518,    -1,   518,   519,    -1,   529,    -1,   520,
      -1,   519,   520,    -1,    -1,   145,   144,   153,   521,   529,
      -1,    -1,   145,   146,   153,   522,   529,    -1,   503,    -1,
     507,    -1,   511,    -1,   524,    -1,   527,    -1,    14,    12,
     153,    -1,    15,   526,     3,   153,    -1,    16,    -1,    17,
      -1,    18,    -1,    15,   528,   153,    -1,    16,    -1,    17,
      -1,    18,    -1,   393,    -1,     3,    -1,   530,    96,     3,
      -1,   115,    -1,   117,    -1,   116,    -1,   107,    -1,   106,
      -1,   105,    -1,   104,    -1,   103,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   575,   575,   576,   585,   585,   588,   593,   594,   598,
     602,   606,   612,   616,   616,   624,   626,   630,   629,   633,
     635,   637,   639,   641,   644,   643,   648,   647,   651,   652,
     654,   655,   657,   658,   664,   663,   675,   677,   679,   684,
     686,   688,   694,   696,   693,   709,   715,   725,   726,   727,
     729,   734,   736,   744,   743,   750,   756,   757,   761,   763,
     768,   771,   775,   777,   782,   794,   796,   798,   800,   802,
     804,   812,   814,   819,   821,   823,   825,   828,   831,   836,
     837,   839,   841,   852,   853,   855,   857,   859,   860,   867,
     868,   869,   871,   872,   876,   877,   880,   882,   883,   886,
     888,   896,   895,   906,   908,   910,   916,   915,   919,   924,
     923,   927,   932,   931,   935,   940,   939,   943,   950,   954,
     957,   960,   963,   972,   974,   977,   979,   981,   983,   990,
     998,  1001,  1003,  1005,  1008,  1010,  1016,  1023,  1025,  1027,
    1032,  1032,  1042,  1049,  1053,  1058,  1069,  1074,  1080,  1083,
    1086,  1092,  1095,  1098,  1104,  1105,  1106,  1107,  1108,  1112,
    1113,  1114,  1118,  1119,  1120,  1125,  1124,  1129,  1128,  1133,
    1132,  1136,  1135,  1139,  1138,  1145,  1143,  1150,  1149,  1154,
    1153,  1160,  1164,  1172,  1175,  1178,  1182,  1183,  1189,  1195,
    1205,  1206,  1216,  1217,  1221,  1223,  1228,  1228,  1237,  1239,
    1245,  1251,  1252,  1265,  1267,  1269,  1271,  1273,  1278,  1280,
    1284,  1288,  1293,  1297,  1303,  1304,  1305,  1311,  1310,  1332,
    1336,  1337,  1338,  1339,  1343,  1346,  1349,  1351,  1356,  1358,
    1362,  1365,  1368,  1370,  1372,  1374,  1377,  1379,  1382,  1386,
    1389,  1396,  1399,  1402,  1405,  1408,  1413,  1416,  1419,  1423,
    1425,  1429,  1433,  1435,  1440,  1442,  1448,  1450,  1452,  1457,
    1468,  1472,  1479,  1480,  1482,  1496,  1498,  1500,  1502,  1504,
    1506,  1508,  1510,  1512,  1514,  1516,  1518,  1520,  1522,  1524,
    1526,  1528,  1530,  1532,  1534,  1536,  1538,  1542,  1544,  1546,
    1551,  1553,  1555,  1557,  1559,  1561,  1563,  1565,  1567,  1569,
    1571,  1573,  1575,  1577,  1579,  1581,  1583,  1585,  1587,  1589,
    1591,  1595,  1597,  1599,  1604,  1606,  1608,  1609,  1610,  1611,
    1612,  1616,  1629,  1636,  1646,  1648,  1650,  1656,  1657,  1658,
    1662,  1663,  1672,  1673,  1675,  1677,  1682,  1684,  1689,  1692,
    1693,  1694,  1699,  1706,  1707,  1708,  1718,  1720,  1722,  1725,
    1728,  1727,  1742,  1744,  1746,  1748,  1750,  1753,  1755,  1757,
    1759,  1762,  1764,  1775,  1776,  1780,  1784,  1788,  1792,  1794,
    1798,  1800,  1802,  1810,  1819,  1821,  1823,  1825,  1827,  1829,
    1831,  1833,  1835,  1837,  1839,  1842,  1844,  1846,  1891,  1893,
    1898,  1900,  1905,  1907,  1913,  1920,  1922,  1930,  1935,  1939,
    1941,  1946,  1948,  1956,  1957,  1962,  1965,  1972,  1975,  1978,
    1982,  1985,  1996,  1998,  2003,  2006,  2009,  2012,  2015,  2018,
    2025,  2030,  2032,  2054,  2056,  2061,  2066,  2074,  2085,  2088,
    2091,  2094,  2100,  2102,  2104,  2106,  2111,  2115,  2119,  2127,
    2129,  2131,  2133,  2137,  2141,  2156,  2176,  2178,  2180,  2184,
    2185,  2190,  2191,  2196,  2197,  2203,  2204,  2210,  2209,  2214,
    2229,  2228,  2235,  2242,  2247,  2253,  2252,  2260,  2269,  2270,
    2275,  2277,  2282,  2287,  2289,  2295,  2296,  2298,  2300,  2302,
    2310,  2311,  2312,  2313,  2318,  2320,  2325,  2327,  2335,  2336,
    2339,  2342,  2345,  2352,  2354,  2357,  2359,  2361,  2366,  2371,
    2376,  2382,  2384,  2390,  2392,  2397,  2398,  2400,  2406,  2405,
    2415,  2414,  2423,  2426,  2429,  2436,  2461,  2479,  2435,  2488,
    2496,  2498,  2501,  2503,  2509,  2510,  2512,  2514,  2516,  2518,
    2523,  2528,  2533,  2538,  2546,  2551,  2556,  2564,  2571,  2577,
    2585,  2594,  2602,  2608,  2614,  2622,  2630,  2645,  2646,  2649,
    2654,  2655,  2660,  2662,  2667,  2670,  2675,  2676,  2680,  2691,
    2705,  2706,  2707,  2708,  2712,  2721,  2727,  2736,  2737,  2742,
    2744,  2746,  2748,  2750,  2752,  2755,  2765,  2770,  2778,  2799,
    2805,  2807,  2809,  2811,  2822,  2827,  2829,  2837,  2838,  2845,
    2857,  2858,  2865,  2876,  2877,  2881,  2882,  2886,  2889,  2895,
    2898,  2901,  2904,  2910,  2912,  2917,  2919,  2921,  2926,  2927,
    2935,  2936,  2940,  2942,  2948,  2951,  2956,  2967,  2969,  2974,
    2977,  2980,  2983,  2993,  2995,  2997,  2999,  3006,  3007,  3017,
    3019,  3021,  3023,  3025,  3029,  3033,  3035,  3037,  3039,  3041,
    3045,  3049,  3059,  3070,  3071,  3072,  3077,  3085,  3086,  3095,
    3097,  3099,  3101,  3103,  3107,  3111,  3113,  3115,  3117,  3119,
    3123,  3127,  3129,  3131,  3133,  3135,  3137,  3139,  3143,  3151,
    3154,  3160,  3163,  3169,  3170,  3175,  3177,  3179,  3184,  3185,
    3186,  3190,  3191,  3193,  3197,  3200,  3208,  3218,  3224,  3230,
    3235,  3236,  3241,  3254,  3256,  3258,  3263,  3270,  3283,  3286,
    3294,  3306,  3312,  3314,  3315,  3316,  3325,  3330,  3338,  3339,
    3344,  3346,  3353,  3359,  3361,  3363,  3365,  3367,  3371,  3375,
    3380,  3382,  3387,  3388,  3398,  3400,  3402,  3404,  3406,  3408,
    3410,  3412,  3414,  3418,  3422,  3427,  3430,  3432,  3434,  3436,
    3438,  3440,  3442,  3444,  3446,  3455,  3456,  3457,  3458,  3462,
    3467,  3469,  3475,  3476,  3480,  3492,  3491,  3499,  3505,  3508,
    3504,  3515,  3517,  3517,  3525,  3526,  3528,  3529,  3534,  3537,
    3540,  3539,  3547,  3551,  3556,  3550,  3561,  3563,  3560,  3571,
    3573,  3575,  3577,  3570,  3582,  3584,  3581,  3589,  3588,  3593,
    3592,  3597,  3596,  3600,  3602,  3604,  3606,  3608,  3613,  3616,
    3619,  3622,  3625,  3628,  3631,  3637,  3639,  3641,  3645,  3648,
    3650,  3652,  3655,  3661,  3663,  3660,  3670,  3672,  3669,  3678,
    3679,  3681,  3693,  3695,  3692,  3701,  3702,  3706,  3722,  3731,
    3733,  3735,  3737,  3742,  3744,  3745,  3755,  3756,  3761,  3762,
    3763,  3771,  3772,  3776,  3777,  3782,  3784,  3791,  3793,  3805,
    3808,  3809,  3817,  3819,  3822,  3824,  3827,  3829,  3839,  3855,
    3854,  3861,  3862,  3867,  3870,  3873,  3876,  3878,  3883,  3884,
    3895,  3898,  3901,  3905,  3908,  3911,  3917,  3920,  3926,  3927,
    3931,  3936,  3941,  3958,  3966,  3968,  3972,  3974,  3978,  3980,
    3982,  3987,  3992,  3997,  3999,  4004,  4006,  4008,  4010,  4017,
    4030,  4039,  4041,  4043,  4045,  4047,  4049,  4051,  4053,  4055,
    4057,  4059,  4061,  4063,  4065,  4067,  4069,  4071,  4073,  4075,
    4077,  4079,  4081,  4083,  4085,  4087,  4089,  4091,  4093,  4095,
    4097,  4099,  4101,  4103,  4105,  4107,  4115,  4124,  4123,  4157,
    4159,  4164,  4166,  4171,  4173,  4175,  4177,  4179,  4181,  4182,
    4184,  4186,  4192,  4191,  4204,  4207,  4209,  4211,  4203,  4218,
    4220,  4225,  4227,  4232,  4234,  4236,  4238,  4240,  4242,  4244,
    4246,  4251,  4257,  4259,  4261,  4268,  4267,  4277,  4279,  4284,
    4286,  4290,  4292,  4294,  4296,  4298,  4305,  4304,  4313,  4314,
    4315,  4319,  4327,  4328,  4333,  4332,  4346,  4351,  4350,  4360,
    4362,  4367,  4369,  4374,  4376,  4378,  4380,  4386,  4385,  4419,
    4421,  4426,  4428,  4433,  4435,  4436,  4438,  4439,  4441,  4442,
    4444,  4446,  4448,  4450,  4452,  4454,  4455,  4461,  4460,  4494,
    4496,  4501,  4503,  4508,  4510,  4512,  4514,  4516,  4518,  4520,
    4522,  4524,  4526,  4528,  4534,  4533,  4540,  4545,  4544,  4551,
    4553,  4558,  4563,  4569,  4568,  4582,  4586,  4589,  4595,  4594,
    4601,  4605,  4610,  4611,  4612,  4613,  4614,  4615,  4616,  4617,
    4618,  4619,  4620,  4625,  4624,  4637,  4636,  4652,  4658,  4659,
    4660,  4664,  4668,  4669,  4674,  4673,  4689,  4688,  4708,  4709,
    4711,  4712,  4714,  4719,  4725,  4730,  4730,  4730,  4734,  4739,
    4740,  4741,  4745,  4749,  4755,  4764,  4766,  4768,  4770,  4772,
    4774,  4776,  4778
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals. */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "tTYPENAME", "SELFNAME",
  "PFUNCNAME", "SCSPEC", "TYPESPEC", "CV_QUALIFIER", "CONSTANT",
  "VAR_FUNC_NAME", "STRING", "ELLIPSIS", "OPTIONS_PRAGMA",
  "EXEC_FREQ_PRAGMA", "FREQ_NEVER", "FREQ_INIT", "FREQ_FREQUENT",
  "OMP_PRAGMA", "OMP_PARALLEL", "OMP_PRIVATE", "OMP_COPYPRIVATE",
  "OMP_FIRSTPRIVATE", "OMP_LASTPRIVATE", "OMP_SHARED", "OMP_DEFAULT",
  "OMP_NONE", "OMP_REDUCTION", "OMP_COPYIN", "OMP_DYNAMIC", "OMP_GUIDED",
  "OMP_RUNTIME", "OMP_ORDERED", "OMP_SCHEDULE", "OMP_NOWAIT",
  "OMP_NUM_THREADS", "OMP_SECTIONS", "OMP_SECTION", "OMP_SINGLE",
  "OMP_MASTER", "OMP_CRITICAL", "OMP_BARRIER", "OMP_ATOMIC", "OMP_FLUSH",
  "OMP_THREADPRIVATE", "OMP_STATIC", "SIZEOF", "ENUM", "IF", "ELSE",
  "WHILE", "DO", "FOR", "SWITCH", "CASE", "DEFAULT", "BREAK", "CONTINUE",
  "RETURN_KEYWORD", "GOTO", "ASM_KEYWORD", "TYPEOF", "ALIGNOF", "SIGOF",
  "ATTRIBUTE", "EXTENSION", "LABEL", "REALPART", "IMAGPART", "VA_ARG",
  "AGGR", "VISSPEC", "DELETE", "NEW", "THIS", "OPERATOR", "CXX_TRUE",
  "CXX_FALSE", "OFFSETOF", "NAMESPACE", "TYPENAME_KEYWORD", "USING",
  "LEFT_RIGHT", "TEMPLATE", "TYPEID", "DYNAMIC_CAST", "STATIC_CAST",
  "REINTERPRET_CAST", "CONST_CAST", "SCOPE", "EXPORT", "EMPTY", "NSNAME",
  "PTYPENAME", "'{'", "','", "';'", "THROW", "':'", "'='", "ASSIGN", "'?'",
  "OROR", "ANDAND", "'|'", "'^'", "'&'", "MIN_MAX", "EQCOMPARE", "'<'",
  "'>'", "ARITHCOMPARE", "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'",
  "'%'", "DOT_STAR", "POINTSAT_STAR", "'~'", "MINUSMINUS", "PLUSPLUS",
  "UNARY", "HYPERUNARY", "'.'", "'('", "'['", "POINTSAT", "CATCH", "TRY",
  "EXTERN_LANG_STRING", "ALL", "PRE_PARSED_CLASS_DECL", "DEFARG",
  "DEFARG_MARKER", "PRE_PARSED_FUNCTION_DECL", "TYPENAME_DEFN",
  "IDENTIFIER_DEFN", "PTYPENAME_DEFN", "SL2_SECTIONS",
  "SL2_MINOR_SECTIONS", "SL2_SECTION", "PRAGMA_SL2", "SL2_MINOR_SECTION",
  "END_OF_LINE", "END_OF_SAVED_INPUT", "')'", "'}'", "'!'", "']'", "'\\n'",
  "$accept", "program", "extdefs", "@1", "extdefs_opt", ".hush_warning",
  ".warning_ok", "extension", "asm_keyword", "lang_extdef", "@2", "extdef",
  "@3", "@4", "@5", "namespace_alias", "@6", "using_decl",
  "namespace_using_decl", "using_directive", "@7", "@8",
  "namespace_qualifier", "any_id", "extern_lang_string",
  "template_parm_header", "@9", "template_spec_header", "template_header",
  "template_parm_list", "maybe_identifier", "template_type_parm",
  "template_template_parm", "template_parm", "template_def",
  "template_extdef", "template_datadef", "datadef", "ctor_initializer_opt",
  "maybe_return_init", "eat_saved_input", "function_body", "@10", "fndef",
  "constructor_declarator", "@11", "@12", "@13", "@14", "fn.def1",
  "component_constructor_declarator", "fn_def2", "return_id",
  "return_init", "base_init", "@15", "begin_function_body_",
  "member_init_list", "begin_member_init", "member_init", "identifier",
  "notype_identifier", "identifier_defn", "explicit_instantiation", "@16",
  "@17", "@18", "@19", "@20", "@21", "@22", "@23",
  "begin_explicit_instantiation", "end_explicit_instantiation",
  "template_type", "apparent_template_type", "self_template_type",
  "finish_template_type_", "template_close_bracket",
  "template_arg_list_opt", "template_arg_list", "template_arg", "@24",
  "template_arg_1", "unop", "expr", "paren_expr_or_null",
  "paren_cond_or_null", "xcond", "condition", "@25", "compstmtend",
  "nontrivial_exprlist", "nonnull_exprlist", "unary_expr", "new_placement",
  "new_initializer", "regcast_or_absdcl", "cast_expr", "expr_no_commas",
  "expr_no_comma_rangle", "notype_unqualified_id", "do_id", "template_id",
  "object_template_id", "unqualified_id", "expr_or_declarator_intern",
  "expr_or_declarator", "notype_template_declarator",
  "direct_notype_declarator", "primary", "@26", "new", "delete",
  "boolean_literal", "nodecls", "object", "decl", "declarator",
  "fcast_or_absdcl", "type_id", "typed_declspecs", "typed_declspecs1",
  "reserved_declspecs", "declmods", "typed_typespecs",
  "reserved_typespecquals", "sizeof", "alignof", "typeof", "typespec",
  "typespecqual_reserved", "initdecls", "notype_initdecls",
  "nomods_initdecls", "maybeasm", "initdcl", "@27", "initdcl0_innards",
  "@28", "initdcl0", "notype_initdcl0", "nomods_initdcl0", "@29",
  "maybe_attribute", "attributes", "attribute", "attribute_list", "attrib",
  "any_word", "identifiers_or_typenames", "maybe_init", "init", "initlist",
  "pending_inline", "pending_inlines", "defarg_again", "pending_defargs",
  "structsp", "@30", "@31", "@32", "@33", "@34", "maybecomma",
  "maybecomma_warn", "aggr", "class_head", "class_head_apparent_template",
  "class_head_decl", "class_head_defn", "maybe_base_class_list",
  "base_class_list", "base_class", "base_class_1",
  "base_class_access_list", "opt.component_decl_list", "access_specifier",
  "component_decl_list", "component_decl", "component_decl_1",
  "components", "notype_components", "component_declarator0",
  "component_declarator", "after_type_component_declarator0",
  "notype_component_declarator0", "after_type_component_declarator",
  "notype_component_declarator", "enumlist_opt", "enumlist", "enumerator",
  "new_type_id", "cv_qualifiers", "nonempty_cv_qualifiers",
  "maybe_parmlist", "after_type_declarator_intern",
  "after_type_declarator", "direct_after_type_declarator",
  "nonnested_type", "complete_type_name", "nested_type",
  "notype_declarator_intern", "notype_declarator",
  "complex_notype_declarator", "complex_direct_notype_declarator",
  "qualified_id", "notype_qualified_id", "overqualified_id",
  "functional_cast", "type_name", "nested_name_specifier",
  "nested_name_specifier_1", "typename_sub", "typename_sub0",
  "typename_sub1", "typename_sub2", "explicit_template_type",
  "complex_type_name", "ptr_to_mem", "global_scope", "new_declarator",
  "direct_new_declarator", "absdcl_intern", "absdcl",
  "direct_abstract_declarator", "stmts", "errstmt", "maybe_label_decls",
  "label_decls", "label_decl", "compstmt_or_stmtexpr", "@35", "compstmt",
  "simple_if", "@36", "@37", "implicitly_scoped_stmt", "@38", "stmt",
  "simple_stmt", "@39", "@40", "@41", "@42", "@43", "@44", "@45", "@46",
  "@47", "@48", "@49", "@50", "@51", "@52", "function_try_block", "@53",
  "@54", "try_block", "@55", "@56", "handler_seq", "handler", "@57", "@58",
  "type_specifier_seq", "handler_args", "label_colon",
  "for.init.statement", "maybe_cv_qualifier", "xexpr", "asm_operands",
  "nonnull_asm_operands", "asm_operand", "asm_clobbers", "parmlist",
  "complex_parmlist", "defarg", "@59", "defarg1", "parms", "parms_comma",
  "named_parm", "full_parm", "parm", "see_typename", "bad_parm",
  "bad_decl", "template_arg_list_ignore", "arg_list_ignore",
  "exception_specification_opt", "ansi_raise_identifier",
  "ansi_raise_identifiers", "conversion_declarator", "operator",
  "unoperator", "operator_name", "save_lineno", "parallel_construct",
  "@60", "parallel_directive", "parallel_clause_list", "parallel_clause",
  "for_construct", "@61", "iteration_statement", "@62", "@63", "@64",
  "@65", "for_directive", "for_clause_list", "for_clause", "schedule_kind",
  "sections_construct", "@66", "sections_directive",
  "sections_clause_list", "sections_clause", "section_scope", "@67",
  "maybe_section_sequence", "maybe_structured_block", "section_sequence",
  "section_construct", "@68", "section_directive", "single_construct",
  "@69", "single_directive", "single_clause_list", "single_clause",
  "parallel_for_construct", "@70", "parallel_for_directive",
  "parallel_for_clause_list", "parallel_for_clause",
  "parallel_sections_construct", "@71", "parallel_sections_directive",
  "parallel_sections_clause_list", "parallel_sections_clause",
  "master_construct", "@72", "master_directive", "critical_construct",
  "@73", "critical_directive", "region_phrase", "barrier_directive",
  "atomic_construct", "@74", "atomic_directive", "flush_directive",
  "ordered_construct", "@75", "ordered_directive",
  "threadprivate_directive", "openmp_construct", "sl2_sections_construct",
  "@76", "@77", "sl2_section_scope", "sl2_maybe_section_sequence",
  "sl2_maybe_structured_block", "sl2_section_sequence",
  "sl2_section_construct", "@78", "@79", "pragma_directives",
  "options_directive", "exec_freq_directive_ignore", "freq_hint_ignore",
  "exec_freq_directive", "freq_hint", "structured_block", "variable_list",
  "reduction_operator", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const unsigned short int yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   123,    44,    59,   350,    58,
      61,   351,    63,   352,   353,   124,    94,    38,   354,   355,
      60,    62,   356,   357,   358,    43,    45,    42,    47,    37,
     359,   360,   126,   361,   362,   363,   364,    46,    40,    91,
     365,   366,   367,   368,   369,   370,   371,   372,   373,   374,
     375,   376,   377,   378,   379,   380,   381,   382,   383,    41,
     125,    33,    93,    10
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const unsigned short int yyr1[] =
{
       0,   154,   155,   155,   157,   156,   156,   158,   158,   159,
     160,   161,   162,   164,   163,   165,   165,   166,   165,   165,
     165,   165,   165,   165,   167,   165,   168,   165,   165,   165,
     165,   165,   165,   165,   170,   169,   171,   171,   171,   172,
     172,   172,   174,   175,   173,   176,   176,   177,   177,   177,
     177,   178,   178,   180,   179,   181,   182,   182,   183,   183,
     184,   184,   185,   185,   186,   187,   187,   187,   187,   187,
     187,   188,   188,   189,   189,   189,   189,   189,   189,   190,
     190,   190,   190,   191,   191,   191,   191,   191,   191,   191,
     191,   191,   191,   191,   192,   192,   193,   193,   193,   194,
     194,   196,   195,   197,   197,   197,   199,   198,   198,   200,
     198,   198,   201,   198,   198,   202,   198,   198,   203,   203,
     203,   203,   203,   204,   204,   204,   204,   204,   204,   205,
     205,   205,   205,   205,   205,   205,   206,   207,   207,   207,
     209,   208,   210,   211,   211,   211,   211,   212,   212,   212,
     212,   213,   213,   213,   214,   214,   214,   214,   214,   215,
     215,   215,   216,   216,   216,   218,   217,   219,   217,   220,
     217,   221,   217,   222,   217,   223,   217,   224,   217,   225,
     217,   226,   227,   228,   228,   228,   229,   229,   230,   231,
     232,   232,   233,   233,   234,   234,   236,   235,   237,   237,
     237,   237,   237,   238,   238,   238,   238,   238,   239,   239,
     240,   240,   241,   241,   242,   242,   242,   244,   243,   243,
     245,   245,   245,   245,   246,   246,   246,   246,   247,   247,
     248,   248,   248,   248,   248,   248,   248,   248,   248,   248,
     248,   248,   248,   248,   248,   248,   248,   248,   248,   248,
     248,   248,   248,   248,   249,   249,   250,   250,   250,   250,
     251,   251,   252,   252,   252,   253,   253,   253,   253,   253,
     253,   253,   253,   253,   253,   253,   253,   253,   253,   253,
     253,   253,   253,   253,   253,   253,   253,   253,   253,   253,
     254,   254,   254,   254,   254,   254,   254,   254,   254,   254,
     254,   254,   254,   254,   254,   254,   254,   254,   254,   254,
     254,   254,   254,   254,   255,   255,   255,   255,   255,   255,
     255,   256,   257,   257,   258,   258,   258,   259,   259,   259,
     260,   260,   261,   261,   261,   261,   262,   262,   263,   263,
     263,   263,   264,   264,   264,   264,   264,   264,   264,   264,
     265,   264,   264,   264,   264,   264,   264,   264,   264,   264,
     264,   264,   264,   264,   264,   264,   264,   264,   264,   264,
     264,   264,   264,   264,   264,   264,   264,   264,   264,   264,
     264,   264,   264,   264,   264,   264,   264,   264,   266,   266,
     267,   267,   268,   268,   269,   270,   270,   271,   271,   271,
     271,   271,   271,   272,   272,   273,   273,   274,   274,   274,
     274,   274,   275,   275,   276,   276,   276,   276,   276,   276,
     277,   277,   277,   278,   278,   278,   278,   278,   279,   279,
     279,   279,   280,   280,   280,   280,   281,   282,   283,   284,
     284,   284,   284,   284,   284,   284,   285,   285,   285,   286,
     286,   287,   287,   288,   288,   289,   289,   291,   290,   290,
     293,   292,   292,   294,   295,   297,   296,   296,   298,   298,
     299,   299,   300,   301,   301,   302,   302,   302,   302,   302,
     303,   303,   303,   303,   304,   304,   305,   305,   306,   306,
     306,   306,   306,   307,   307,   307,   307,   307,   308,   308,
     308,   309,   309,   310,   310,   311,   311,   311,   313,   312,
     314,   312,   312,   312,   312,   315,   316,   317,   312,   312,
     318,   318,   319,   319,   320,   320,   320,   320,   320,   320,
     321,   321,   321,   321,   322,   322,   322,   323,   323,   323,
     324,   324,   324,   324,   324,   324,   324,   325,   325,   325,
     326,   326,   327,   327,   328,   328,   329,   329,   329,   329,
     330,   330,   330,   330,   331,   332,   332,   333,   333,   333,
     333,   333,   333,   333,   333,   333,   333,   333,   334,   334,
     334,   334,   334,   334,   334,   334,   334,   335,   335,   335,
     336,   336,   336,   337,   337,   338,   338,   339,   339,   340,
     340,   340,   340,   341,   341,   342,   342,   342,   343,   343,
     344,   344,   345,   345,   346,   346,   346,   347,   347,   348,
     348,   348,   348,   349,   349,   349,   349,   350,   350,   351,
     351,   351,   351,   351,   351,   352,   352,   352,   352,   352,
     352,   353,   353,   354,   354,   354,   355,   356,   356,   357,
     357,   357,   357,   357,   357,   358,   358,   358,   358,   358,
     358,   359,   359,   359,   359,   359,   359,   359,   359,   360,
     360,   361,   361,   362,   362,   363,   363,   363,   364,   364,
     364,   365,   365,   365,   365,   365,   366,   366,   366,   366,
     367,   367,   368,   368,   368,   368,   369,   369,   369,   369,
     370,   370,   370,   370,   370,   370,   371,   372,   372,   372,
     373,   373,   374,   375,   375,   375,   375,   375,   375,   375,
     376,   376,   377,   377,   378,   378,   378,   378,   378,   378,
     378,   378,   378,   378,   378,   379,   379,   379,   379,   379,
     379,   379,   379,   379,   379,   380,   380,   380,   380,   381,
     382,   382,   383,   383,   384,   386,   385,   387,   389,   390,
     388,   391,   392,   391,   393,   393,   393,   393,   394,   394,
     395,   394,   394,   396,   397,   394,   398,   399,   394,   400,
     401,   402,   403,   394,   404,   405,   394,   406,   394,   407,
     394,   408,   394,   394,   394,   394,   394,   394,   394,   394,
     394,   394,   394,   394,   394,   394,   394,   394,   394,   394,
     394,   394,   394,   410,   411,   409,   413,   414,   412,   415,
     415,   415,   417,   418,   416,   419,   419,   420,   420,   421,
     421,   421,   421,   422,   422,   422,   423,   423,   424,   424,
     424,   425,   425,   426,   426,   427,   427,   428,   428,   429,
     429,   429,   430,   430,   430,   430,   430,   430,   430,   432,
     431,   433,   433,   434,   434,   434,   434,   434,   435,   435,
     436,   436,   436,   436,   436,   436,   437,   437,   438,   438,
     439,   440,   440,   441,   442,   442,   443,   443,   444,   444,
     444,   445,   445,   446,   446,   447,   447,   447,   447,   448,
     449,   450,   450,   450,   450,   450,   450,   450,   450,   450,
     450,   450,   450,   450,   450,   450,   450,   450,   450,   450,
     450,   450,   450,   450,   450,   450,   450,   450,   450,   450,
     450,   450,   450,   450,   450,   450,   451,   453,   452,   454,
     454,   455,   455,   456,   456,   456,   456,   456,   456,   456,
     456,   456,   458,   457,   460,   461,   462,   463,   459,   464,
     464,   465,   465,   466,   466,   466,   466,   466,   466,   466,
     466,   467,   467,   467,   467,   469,   468,   470,   470,   471,
     471,   472,   472,   472,   472,   472,   474,   473,   475,   475,
     475,   476,   477,   477,   479,   478,   480,   482,   481,   483,
     483,   484,   484,   485,   485,   485,   485,   487,   486,   488,
     488,   489,   489,   490,   490,   490,   490,   490,   490,   490,
     490,   490,   490,   490,   490,   490,   490,   492,   491,   493,
     493,   494,   494,   495,   495,   495,   495,   495,   495,   495,
     495,   495,   495,   495,   497,   496,   498,   500,   499,   501,
     501,   502,   503,   505,   504,   506,   507,   507,   509,   508,
     510,   511,   512,   512,   512,   512,   512,   512,   512,   512,
     512,   512,   512,   514,   513,   515,   513,   516,   517,   517,
     517,   518,   519,   519,   521,   520,   522,   520,   523,   523,
     523,   523,   523,   524,   525,   526,   526,   526,   527,   528,
     528,   528,   529,   530,   530,   531,   531,   531,   531,   531,
     531,   531,   531
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const unsigned char yyr2[] =
{
       0,     2,     0,     1,     0,     2,     2,     1,     0,     0,
       0,     1,     1,     0,     2,     2,     1,     0,     3,     1,
       5,     4,     5,     4,     0,     6,     0,     5,     1,     2,
       1,     2,     1,     1,     0,     6,     2,     3,     3,     3,
       3,     4,     0,     0,     7,     2,     3,     1,     1,     2,
       2,     1,     2,     0,     5,     3,     1,     1,     1,     3,
       1,     0,     2,     2,     3,     1,     3,     1,     3,     1,
       3,     2,     2,     2,     1,     1,     5,     4,     2,     2,
       3,     3,     2,     2,     3,     3,     2,     2,     2,     2,
       2,     2,     1,     1,     1,     1,     0,     1,     2,     0,
       1,     0,     6,     3,     3,     3,     0,     8,     5,     0,
       9,     6,     0,     8,     5,     0,     9,     6,     2,     2,
       1,     2,     1,     6,     8,     4,     6,     6,     4,     2,
       1,     2,     2,     1,     2,     1,     2,     2,     4,     2,
       0,     3,     0,     0,     1,     3,     2,     0,     1,     1,
       1,     4,     2,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     0,     6,     0,     6,     0,
       5,     0,     5,     0,     7,     0,     7,     0,     6,     0,
       6,     0,     0,     5,     5,     1,     1,     5,     5,     0,
       1,     1,     0,     1,     1,     3,     0,     2,     1,     1,
       2,     1,     3,     1,     1,     1,     1,     1,     1,     1,
       1,     3,     1,     3,     0,     1,     1,     0,     7,     1,
       1,     3,     4,     3,     3,     3,     3,     3,     1,     1,
       1,     2,     2,     2,     2,     2,     2,     2,     4,     2,
       4,     2,     3,     3,     4,     4,     5,     5,     6,     2,
       4,     5,     2,     2,     3,     3,     3,     1,     3,     2,
       3,     4,     1,     2,     5,     1,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     5,     3,     3,     1,     2,
       1,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     5,
       3,     3,     1,     2,     3,     3,     1,     1,     1,     1,
       1,     0,     5,     5,     5,     5,     5,     1,     1,     1,
       1,     2,     1,     2,     2,     3,     4,     4,     1,     1,
       1,     3,     1,     1,     1,     1,     1,     3,     3,     3,
       0,     4,     4,     2,     4,     2,     6,     4,     4,     2,
       2,     1,     4,     1,     7,     7,     7,     7,     4,     4,
       2,     2,     2,     1,     4,     2,     2,     5,     3,     2,
       2,     5,     3,     5,     3,     4,     6,     2,     1,     2,
       1,     2,     1,     1,     0,     2,     2,     3,     3,     3,
       2,     2,     2,     1,     1,     1,     2,     2,     2,     2,
       1,     1,     1,     1,     2,     2,     3,     3,     3,     4,
       1,     2,     2,     1,     1,     2,     2,     2,     1,     2,
       2,     3,     1,     2,     2,     1,     1,     1,     1,     1,
       1,     1,     4,     4,     4,     4,     1,     1,     1,     1,
       3,     1,     3,     1,     3,     0,     4,     0,     6,     3,
       0,     4,     1,     3,     3,     0,     4,     3,     0,     1,
       1,     2,     6,     1,     3,     0,     1,     4,     6,     4,
       1,     1,     1,     1,     1,     3,     0,     2,     1,     2,
       3,     4,     1,     1,     3,     4,     3,     5,     3,     3,
       3,     0,     3,     3,     3,     0,     2,     2,     0,     6,
       0,     5,     2,     2,     2,     0,     0,     0,    11,     1,
       0,     1,     0,     1,     1,     2,     2,     2,     2,     2,
       2,     3,     4,     3,     2,     3,     4,     1,     2,     1,
       2,     2,     2,     2,     3,     3,     2,     0,     2,     3,
       1,     4,     1,     3,     1,     1,     2,     2,     3,     3,
       0,     1,     3,     2,     2,     1,     2,     2,     2,     2,
       2,     2,     2,     1,     2,     2,     3,     1,     2,     2,
       4,     4,     2,     1,     5,     4,     1,     0,     1,     3,
       0,     1,     3,     1,     1,     1,     1,     4,     4,     4,
       4,     4,     3,     4,     4,     4,     4,     3,     2,     1,
       1,     3,     1,     3,     2,     1,     6,     0,     2,     1,
       2,     1,     2,     3,     3,     1,     3,     1,     2,     3,
       3,     2,     2,     3,     1,     4,     4,     3,     3,     2,
       1,     1,     2,     1,     1,     2,     2,     1,     2,     3,
       3,     2,     2,     3,     1,     3,     3,     2,     2,     3,
       1,     4,     3,     4,     3,     1,     2,     2,     2,     2,
       2,     2,     2,     1,     2,     4,     4,     2,     1,     1,
       1,     1,     2,     4,     3,     3,     2,     2,     2,     2,
       1,     2,     2,     2,     2,     3,     1,     2,     3,     4,
       2,     2,     2,     2,     2,     2,     4,     2,     1,     2,
       2,     3,     1,     3,     2,     3,     2,     2,     3,     1,
       3,     4,     1,     2,     3,     2,     2,     1,     3,     2,
       2,     1,     2,     3,     1,     3,     6,     4,     4,     3,
       5,     3,     3,     3,     2,     1,     1,     2,     2,     2,
       0,     1,     1,     2,     3,     0,     4,     1,     0,     0,
       5,     1,     0,     3,     1,     1,     1,     2,     1,     2,
       0,     4,     1,     0,     0,     5,     0,     0,     7,     0,
       0,     0,     0,    12,     0,     0,     7,     0,     5,     0,
       7,     0,     4,     2,     2,     2,     3,     6,     8,    10,
       8,    12,    10,    10,     4,     3,     2,     2,     1,     1,
       1,     1,     1,     0,     0,     5,     0,     0,     5,     1,
       2,     0,     0,     0,     5,     1,     1,     3,     3,     2,
       2,     2,     2,     2,     1,     2,     0,     1,     0,     1,
       1,     0,     1,     1,     3,     4,     7,     1,     3,     0,
       1,     1,     1,     2,     2,     2,     1,     2,     2,     0,
       3,     1,     1,     1,     2,     2,     2,     4,     2,     2,
       3,     3,     3,     3,     2,     3,     1,     2,     1,     1,
       0,     0,     1,     5,     3,     0,     3,     0,     0,     4,
       2,     1,     1,     1,     3,     0,     3,     3,     3,     1,
       0,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     4,     3,     3,     3,     3,     4,
       3,     3,     5,     5,     4,     3,     0,     0,     3,     3,
       4,     1,     2,     4,     4,     4,     4,     4,     4,     4,
       6,     4,     0,     3,     0,     0,     0,     0,    12,     3,
       4,     1,     2,     4,     4,     4,     6,     4,     6,     1,
       1,     1,     1,     1,     1,     0,     3,     3,     4,     1,
       2,     4,     4,     4,     6,     1,     0,     4,     1,     1,
       2,     1,     1,     2,     0,     3,     3,     0,     3,     3,
       4,     1,     2,     4,     4,     4,     1,     0,     3,     4,
       5,     1,     2,     4,     4,     4,     4,     4,     4,     4,
       4,     4,     6,     4,     4,     6,     1,     0,     3,     4,
       5,     1,     2,     4,     4,     4,     4,     4,     4,     4,
       4,     4,     6,     4,     0,     3,     3,     0,     3,     3,
       6,     1,     3,     0,     4,     3,     3,     6,     0,     3,
       3,     6,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     0,     5,     0,     5,     3,     1,     1,
       2,     1,     1,     2,     0,     5,     0,     5,     1,     1,
       1,     1,     1,     3,     4,     1,     1,     1,     3,     1,
       1,     1,     1,     1,     3,     1,     1,     1,     1,     1,
       1,     1,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const unsigned short int yydefact[] =
{
       4,     0,    13,    13,     1,     6,     0,     5,     0,   318,
     678,   679,     0,   424,   440,   619,     0,     0,     0,    12,
     438,     0,     0,    11,   524,   899,     0,     0,     0,   181,
     712,    17,   320,   319,    92,     0,     0,   880,     0,    51,
       0,     0,    14,    28,     0,    30,     9,    56,    57,     0,
      19,    16,    99,   122,    96,     0,   680,   185,   339,   316,
     340,   654,     0,   413,     0,   412,     0,   428,     0,   453,
     621,   470,   439,     0,   537,   539,   519,   547,   423,   643,
     441,   644,   120,   338,   665,   641,     0,   681,   617,     0,
      93,     0,   317,    32,    33,    89,    91,    90,   196,     0,
     686,   196,   687,   196,   321,   181,  1095,  1096,  1097,     0,
       0,   154,   155,   156,   158,   157,   510,   512,     0,   708,
       0,   513,     0,     0,     0,   155,   156,   158,   157,    26,
       0,     0,     0,     0,     0,     0,     0,   514,   690,     0,
     696,     0,     0,     0,    42,     0,     0,    36,     0,     0,
      53,     0,     0,   688,   196,   196,   318,   621,     0,   652,
     647,     0,     0,     0,   651,     0,     0,     0,     0,   339,
       0,   330,     0,     0,     0,   338,   617,    31,     0,    29,
       4,    52,     0,    72,   424,     0,     0,     9,    75,    71,
      74,    99,     0,     0,     0,   439,   100,    15,     0,   468,
       0,     0,   486,    97,    87,   689,   625,     0,     0,   617,
      88,     0,     0,     0,   118,     0,   449,   403,   634,   404,
     640,     0,   617,   426,   425,    86,   121,   414,     0,   451,
     427,   119,     0,   420,   446,   447,   415,   430,   432,   435,
     448,     0,    83,   471,   525,   526,   527,   528,   546,   163,
     162,   164,   530,   538,   186,   534,   529,     0,     0,   540,
     541,   542,   543,   880,     0,   620,   429,   622,     0,   465,
     318,   679,     0,   319,   710,   185,   671,   672,   668,   646,
     682,     0,   318,   320,   667,   645,   666,   642,     0,   900,
     900,   900,   900,   900,   900,   900,     0,   900,   900,   900,
     900,   900,   900,   900,   900,   900,   900,   900,   900,   900,
     900,   900,   900,   900,   900,   900,   900,   900,     0,   900,
     900,   825,   428,   826,   895,   321,     0,   193,   194,     0,
     887,     0,     0,   196,     0,     0,     0,   522,   508,     0,
       0,     0,   709,   707,   619,   343,   346,   345,   436,   437,
       0,     0,     0,   390,   388,   361,   392,   393,     0,     0,
       0,     0,     0,     0,   288,     0,     0,   204,   203,     0,
       0,   206,   205,     0,   207,     0,     0,     0,   208,   262,
       0,   265,   209,   342,   230,     0,     0,   344,     0,     0,
     410,     0,     0,   428,   411,   673,   373,   363,     0,     0,
     475,     4,    24,    34,   704,   700,   701,   705,   703,   702,
     154,   155,   156,     0,   158,   157,   692,   693,   697,   694,
     691,     0,   318,   328,   329,   327,   670,   669,    38,    37,
      55,     0,   171,     0,     0,   428,   169,    18,     0,     0,
     196,   648,   622,   650,     0,   649,   155,   156,   314,   315,
     334,   621,     0,   658,   333,     0,   657,     0,   341,   320,
     319,     0,     0,     0,   332,   331,   662,     0,     0,    13,
       0,   181,    10,    10,    78,     0,    73,     0,     0,    79,
      82,     0,   467,   469,   136,   105,   813,   103,   394,   104,
     139,     0,     0,   137,    98,     0,   856,   229,     0,   228,
     851,   468,     0,   410,   428,   411,     0,   850,   852,   881,
     863,     0,     0,   664,     0,     0,   888,   621,     0,   632,
     627,     0,   631,     0,     0,     0,     0,     0,   617,   468,
       0,    85,     0,   617,   639,     0,   417,   418,     0,    84,
     468,     0,     0,   422,   421,   416,   433,   434,   455,   454,
     196,   544,   545,   154,   157,   531,   535,   533,     0,   548,
     515,   431,   468,   684,   617,   106,     0,     0,     0,     0,
     685,   617,   112,   618,     0,   653,   679,   711,   185,   935,
       0,   931,     0,   930,   928,   910,   916,   915,   900,   922,
     921,   907,   908,   906,   925,   914,   912,   913,   911,   918,
     917,   904,   905,   901,   902,   903,   927,   909,   920,   919,
     900,   926,   923,   430,   617,   617,     0,   617,     0,   900,
     196,   190,   191,   336,   196,   319,   312,   197,   290,   201,
     198,     0,     0,     0,     0,   189,   189,     0,   179,     0,
     428,   177,  1094,  1103,     0,   523,   612,   609,     0,   522,
     610,   522,     0,     0,   252,   253,     0,     0,     0,     0,
       0,     0,     0,   289,   236,   233,   232,   234,     0,     0,
       0,     0,     0,   342,     0,   936,     0,   231,   235,   444,
       0,     0,     0,   263,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   353,     0,   355,
     360,   359,   395,     0,     0,   396,     0,     0,     0,   241,
     615,     0,   249,   387,     0,     0,   880,   376,   379,   380,
       0,     0,   445,   405,   731,   727,     0,     0,   617,   617,
     617,   407,   734,     0,   237,     0,   239,     0,   677,   409,
       0,     0,   408,   375,     0,   370,   389,   371,   391,   674,
       0,   372,   481,   482,   483,   480,     0,   473,   476,     0,
       4,     0,   695,   196,   698,    43,    47,    48,     0,    61,
       0,     0,     0,    65,    69,    58,   879,   428,    61,   878,
      67,   182,   167,   165,   182,   337,   189,     0,   656,   655,
     341,     0,   659,     0,    21,    23,    99,    10,    10,    81,
      80,     0,   142,   140,   936,    95,    94,   492,     0,   488,
     487,     0,   626,   623,   855,   869,   858,   731,   727,     0,
     468,   874,   617,   468,   468,     0,     0,   468,     0,   468,
     624,   854,   868,   857,   853,   882,   865,   876,   866,   859,
     864,   663,     0,   677,     0,   661,   628,   622,   630,   629,
     621,     0,     0,     0,     0,     0,     0,   617,   638,     0,
     463,   462,   450,   637,     0,   888,     0,   633,   419,   452,
     464,   442,   443,   468,     0,   532,   536,   678,   679,   880,
     880,   680,   549,   550,   552,   880,   555,   554,     0,     0,
     466,   888,   849,   196,   196,   683,   196,   888,   849,   617,
     109,   617,   115,   900,   900,   924,   929,   895,   895,   895,
       0,   934,     0,   195,   313,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   200,     0,   883,
     184,   188,   322,   182,   175,   173,   182,     0,     0,     0,
     511,   523,   608,     0,     0,     0,     0,     0,     0,     0,
     428,     0,     0,     0,   349,     0,   347,   348,     0,     0,
     260,   227,   226,   318,   678,   679,   320,   319,     0,     0,
     493,   520,     0,   225,   224,   286,   287,   840,   839,     0,
     284,   283,   281,   282,   280,   279,   278,   276,   277,   275,
     274,   273,   268,   269,   270,   271,   272,   267,   266,     0,
       0,     0,     0,     0,     0,     0,   243,   257,     0,     0,
     242,   617,   617,     0,   617,   614,   719,     0,     0,     0,
       0,     0,   378,     0,   382,     0,   384,     0,   621,   730,
     729,   722,   726,   725,   879,     0,     0,   744,     0,     0,
     888,   406,   888,   732,   617,   849,     0,     0,     0,   731,
     727,     0,     0,   617,     0,   621,     0,     0,     0,     0,
     475,     0,     0,    27,     0,     0,   699,     0,   468,    50,
      49,    63,    60,    53,    61,     0,    54,     0,   196,    62,
     530,     0,   172,   182,   182,   170,   183,   336,   335,    20,
      22,    77,    99,   456,   814,     0,     0,   489,     0,   138,
     621,   730,   726,   731,   727,     0,   621,   641,     0,   617,
     870,   732,   873,   875,     0,   871,   731,   727,     0,   342,
       0,   673,     0,   872,   877,     0,     0,   890,     0,     0,
       0,     0,   460,   636,   635,   459,   189,   557,   556,   880,
     880,   880,     0,   583,   679,     0,   573,     0,     0,     0,
     586,     0,   135,   130,     0,   185,   587,   590,     0,     0,
     565,     0,   133,   577,   108,     0,     0,     0,     0,   114,
       0,   888,   849,   888,   849,   933,   932,   897,   896,   898,
     323,   310,   311,     0,   308,   307,   305,   306,   304,   303,
     302,   301,   300,   299,   298,   293,   294,   295,   296,   297,
     292,   291,   202,   886,   180,   182,   182,   178,  1104,  1061,
     613,   611,   509,   362,     0,   357,   368,   369,     0,     0,
       0,     0,   348,   351,   755,     0,     0,     0,     0,   261,
       0,   352,   354,   358,   255,   254,   245,     0,   244,   259,
       0,     0,   716,   714,     0,   717,     0,   250,     0,     0,
     196,   385,     0,     0,     0,   723,   622,   728,   724,   735,
     617,   743,   741,   742,     0,   733,   888,     0,   739,     0,
     238,   240,   675,   676,   731,   727,     0,   374,   474,   472,
     318,     0,    25,    35,   706,     0,    64,    59,    66,    70,
      68,   168,   166,    76,   821,   153,   159,   161,   160,     0,
       0,   144,   148,   149,   150,   101,     0,   490,   622,   730,
     726,   731,   727,     0,   617,   646,   732,     0,     0,   676,
     370,   371,   674,   372,   867,   861,   862,   860,   892,   891,
     893,     0,     0,     0,     0,   622,     0,     0,   457,   187,
       0,   559,   558,   553,   617,   849,   582,     0,   574,   587,
     575,   468,   468,   571,   572,   569,   570,   617,   849,   318,
     678,     0,   455,   131,   578,   588,   593,   594,   455,   455,
       0,     0,   455,   129,   579,   591,   455,     0,   468,     0,
     566,   567,   568,   468,   617,   325,   324,   326,   617,   111,
       0,   117,     0,     0,   176,   174,     0,     0,     0,     0,
       0,   750,     0,   496,     0,   494,   264,   285,     0,   246,
     247,   256,   258,   715,   713,   720,   718,     0,   251,     0,
       0,   377,   381,   383,   888,   737,   617,   738,     0,   477,
     479,    44,   822,   815,   819,   146,     0,   152,     0,   750,
     491,   730,   726,     0,   732,   348,     0,   889,   621,   461,
       0,   551,   888,     0,     0,   576,   486,   486,   888,     0,
       0,     0,   468,   468,     0,   468,   468,     0,   468,     0,
     564,   516,     0,   486,   888,   888,   617,   617,   309,   356,
       0,     0,     0,     0,     0,   220,   756,     0,   751,   752,
     495,     0,     0,   248,   721,   386,   324,   740,   888,     0,
       0,   820,   145,     0,   102,   731,   727,     0,   622,     0,
     894,   458,   125,   617,   617,   849,   581,   585,   128,   617,
     468,   468,   602,   486,   318,   678,     0,   589,   595,   596,
     455,   455,   486,   486,     0,   486,   592,   505,   580,   107,
     113,   888,   888,   364,   365,   366,   367,   484,     0,     0,
       0,     0,     0,     0,     0,   746,   757,   766,   745,     0,
    1062,   937,  1063,   952,  1064,   975,  1065,   997,  1066,  1007,
    1067,  1027,  1068,  1044,  1069,  1047,  1088,  1070,  1053,  1089,
    1071,  1058,  1090,   765,  1072,   764,  1091,  1092,   753,   497,
     616,   736,   478,     0,   823,   151,   621,   888,   888,     0,
     888,   601,   598,   600,     0,     0,   468,   468,   468,   597,
     599,   584,     0,   110,   116,     0,   754,   749,   223,     0,
    1099,  1100,  1101,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   221,   748,   747,
     318,   678,   679,   758,   773,   776,   779,   784,     0,     0,
       0,     0,     0,     0,     0,     0,   319,   808,   816,     0,
     836,   812,   811,   810,     0,   768,     0,     0,   428,   772,
     767,   809,   936,   936,     0,     0,   936,     0,     0,   936,
     936,     0,   936,     0,     0,   936,   123,   126,   617,   127,
     468,   468,   607,   486,   486,   507,     0,   506,   501,   485,
    1093,  1098,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   939,     0,   941,  1060,     0,     0,     0,     0,
     985,   977,     0,   979,     0,     0,     0,  1006,   999,     0,
    1001,  1046,     0,  1049,  1052,  1055,     0,  1056,     0,     0,
       0,     0,   969,     0,   970,   959,     0,   961,  1073,  1075,
     222,   829,   831,   832,     0,     0,   762,     0,     0,     0,
     791,   793,   794,   795,     0,     0,     0,     0,     0,     0,
       0,   830,   936,   402,   837,     0,   769,   400,   455,     0,
     401,     0,   455,     0,     0,   770,   807,   806,  1102,   938,
     954,   953,   986,   976,   998,  1008,  1028,  1045,  1048,     0,
    1059,   827,   828,   824,   888,   606,   604,   603,   605,     0,
       0,   518,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  1029,     0,
    1031,     0,     0,     0,     0,     0,     0,     0,     0,  1026,
       0,     0,     0,     0,  1009,     0,  1011,     0,   940,   942,
       0,     0,     0,     0,   978,   980,     0,     0,     0,  1000,
    1002,  1051,     0,     0,     0,     0,     0,     0,     0,   960,
     962,     0,     0,   212,     0,   759,   774,   761,     0,   936,
       0,     0,     0,   787,   936,   796,     0,   805,    45,   158,
      39,   158,     0,    40,   817,     0,   398,   399,     0,     0,
       0,   397,   762,     0,   936,  1054,   124,   504,   503,    96,
      99,     0,     0,     0,  1112,  1111,  1110,  1109,  1108,  1105,
    1107,  1106,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,  1030,  1032,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  1010,
    1012,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   972,   973,   974,   971,
       0,   936,  1074,  1076,   219,     0,   428,     0,   762,   762,
     777,     0,   750,   834,   780,     0,     0,     0,   936,   792,
     804,    46,    41,   821,     0,   771,     0,     0,     0,   989,
     988,   992,   994,   991,     0,   502,   945,   946,   947,     0,
     951,   944,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   943,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   948,   949,   981,   982,
     983,     0,  1003,  1005,  1004,  1050,  1057,   963,   964,   965,
       0,     0,   967,     0,     0,  1079,  1078,  1082,  1081,   213,
     455,   760,   775,     0,   763,   835,     0,   833,   785,   789,
     788,   818,   841,   841,     0,   955,     0,   987,     0,   990,
     993,   936,   500,   498,   499,     0,  1035,  1036,  1037,  1038,
    1039,     0,  1043,  1034,  1033,  1040,  1041,  1015,  1016,  1017,
    1018,  1019,     0,  1023,     0,  1024,  1014,  1013,  1020,  1021,
       0,     0,     0,     0,     0,  1077,     0,  1080,  1083,   468,
     210,     0,     0,   216,     0,   215,   762,   936,     0,     0,
       0,   842,   843,     0,   797,     0,   996,   995,   950,     0,
       0,     0,   984,   966,   968,  1084,  1086,     0,     0,   778,
     781,   786,   790,     0,     0,     0,     0,     0,     0,   841,
       0,     0,  1042,  1022,  1025,   936,   936,   217,   211,     0,
       0,     0,   847,     0,   800,   844,     0,     0,   798,   956,
    1085,  1087,     0,     0,   845,     0,     0,     0,     0,     0,
       0,     0,   218,   782,     0,   848,   802,   803,     0,   799,
       0,   762,     0,     0,   957,   783,   846,   801,   762,   958
};

/* YYDEFGOTO[NTERM-NUM]. */
static const short int yydefgoto[] =
{
      -1,     1,   469,     3,   470,   182,   805,   375,   198,     5,
       6,    42,   152,   770,   401,    43,   771,  1170,  1682,    45,
     421,  1088,  1789,   775,    46,    47,   431,    48,  1171,   782,
    1091,   783,   784,   785,    50,   189,   190,    51,   814,   201,
     197,   487,  1459,    52,    53,   902,  1192,   908,  1194,    54,
    1173,  1174,   202,   203,   815,  1115,   488,  1319,  1320,  1321,
     646,  1322,   253,    55,  1104,  1103,   794,   791,  1226,  1225,
     956,   953,   151,  1102,    56,   255,    57,   950,   623,   326,
     327,   328,   329,   627,   376,   672,  2142,  1895,  2144,  2145,
    2202,  1506,   378,  1072,   379,   718,  1030,   380,   381,   382,
     629,   383,   333,    59,   277,   776,   450,   171,    60,    61,
     384,   675,   385,   386,   387,   816,   388,  1685,   548,   739,
    1054,  1176,   501,   236,   502,   503,   237,   391,   392,    66,
     515,   238,   215,   228,    68,   529,   549,  1470,   870,  1357,
     216,   229,    69,   562,   871,    70,    71,   766,   767,   768,
    1568,   493,   990,   991,  1930,  1831,  1717,  1632,    72,   651,
     337,   899,  1557,  1718,  1248,   647,    73,    74,    75,    76,
      77,   264,   892,   893,   894,   895,  1178,  1399,  1179,  1180,
    1181,  1384,  1394,  1385,  1547,  1386,  1387,  1548,  1549,   648,
     649,   650,   719,  1060,   505,   209,   527,   520,   218,    79,
      80,    81,   159,   160,   174,    83,   147,   395,   396,   397,
      85,   398,    87,   897,   138,   139,   140,   568,   121,    88,
     399,  1035,  1036,  1055,  1051,   742,  1574,  1575,  1507,  1508,
    1509,  1576,  1421,  1577,  1689,  1774,  1998,  1898,  1899,  1808,
    1690,  1922,  1775,  1999,  1776,  2083,  1777,  2086,  2189,  2221,
    1778,  2146,  2008,  2147,  1904,   489,   812,  1314,  1691,  1792,
    2013,  1453,  1454,  1520,  1705,  1997,  1614,  1692,  2004,  1795,
    2005,  2150,  2151,  2152,  2193,   506,  1056,   850,  1146,  1347,
     508,   509,   510,   846,   511,   165,   848,  1183,    99,   634,
     855,  1350,  1351,   619,    91,   579,    92,  1579,  1580,  1693,
    1581,  1733,  1734,  1582,  1694,  1811,  1923,  2155,  2211,  2228,
    1583,  1766,  1767,  1990,  1584,  1695,  1585,  1742,  1743,  1813,
    1924,  2018,  2019,  2020,  2021,  2101,  2022,  1586,  1696,  1587,
    1749,  1750,  1588,  1697,  1589,  1865,  1866,  1590,  1698,  1591,
    1849,  1850,  1592,  1699,  1593,  1594,  1700,  1595,  1882,  1596,
    1597,  1701,  1598,  1599,  1600,  1702,  1601,  1602,  1603,  1604,
    1891,  1892,  1992,  2074,  2075,  2076,  2077,  2185,  2186,  1605,
    1606,    94,   109,  1607,  1643,  1809,   644,  1942
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -2029
static const short int yypact[] =
{
     129,   167,   285, -2029, -2029, -2029,  7208, -2029,   681,   110,
     519,   521,    63,   240, -2029, -2029,  1412,   331,   842, -2029,
   -2029,   274,   290, -2029, -2029, -2029,  1034,  1547,  1109,   341,
   -2029, -2029,   578,   355, -2029,  1469,  1469, -2029,  7069, -2029,
    7208,   370, -2029, -2029,   408, -2029,    28, -2029, -2029,  3573,
   -2029, -2029,   380,   545,   463,   434,   448, -2029, -2029, -2029,
   -2029,   689,  4760, -2029, 14325, -2029,   452,  1035,   989, -2029,
     480, -2029, -2029,  2151,   716,  1012, -2029,   494,  7532, -2029,
   -2029, -2029,   620, -2029, -2029, -2029,  1784, -2029, -2029,  1484,
   -2029,  6255,   580, -2029, -2029, -2029, -2029, -2029,   376,   695,
   -2029,   376, -2029,   376, -2029, -2029, -2029, -2029, -2029,   704,
     479, -2029,   519,   521,   707,   355, -2029,   726,   448, -2029,
     311, -2029,   347, 12213,   706, -2029, -2029, -2029, -2029, -2029,
      31,   719,   677,   714,   783,   890,   795, -2029, -2029,   786,
   -2029,  1045,   519,   521, -2029,   707,   355, -2029,  1449,  2433,
     750, 14581,   811, -2029, -2029,   376,   757,  7169,  4262, -2029,
   -2029,  1984,  2659,  4262, -2029,  1064,  4594,  4594,  7069,   807,
     826, -2029,   689,  1190,   838,   845, -2029, -2029,  1004, -2029,
     910, -2029,  4105, -2029, -2029,   341,  3850,   922, -2029, -2029,
   -2029,   380,  7113, 14629,  1029,   966, -2029, -2029,   974,   480,
    1117,   135,   246,  1048, -2029, -2029, -2029,  6495, 10815, -2029,
   -2029,  6044,  6044,  9234,   620,  1179, -2029, -2029,   886, -2029,
   -2029,  2554, -2029, -2029, -2029, -2029, -2029,  1035,  1405, -2029,
     480,   620, 12213, -2029, -2029, -2029,  1230,  1035, -2029,   480,
   -2029,  7113, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029,  1057,  1124,   448, -2029,   480,  1260,  1591, -2029,
   -2029, -2029, -2029, -2029,  1088, -2029,  1366,   480,   347, -2029,
     907,  1132,  1805,   982, -2029,   258, -2029, -2029, -2029, -2029,
   -2029,  6660, -2029,   707, -2029, -2029, -2029, -2029,  3095, -2029,
    1103,  1119, -2029, -2029, -2029, -2029,  1158, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,  1065, -2029,
   -2029, -2029,  1366,  7532,  1515, -2029,  1284,  1165, -2029, 12339,
    1139,  1284,  1284,   376, 14581,  1129,  1267,   261, -2029,  1198,
    1644,   982, -2029, -2029,  1163, -2029, -2029, -2029, -2029, -2029,
   13852, 13852,  1172, -2029, -2029, -2029, -2029, -2029,  1180,  1185,
    1212,  1216,  1219,  1222, 12969,  1644, 13852, -2029, -2029, 13852,
   13852, -2029, -2029,  9126, -2029, 13852, 13852,  1189,  1252, -2029,
   13095, -2029, 11757,   694,  1854,  2857, 13221, -2029,  2490,  1202,
     918, 13978, 14104,  3674,  5261, -2029,   754, -2029,  2710,  3463,
    2394,   910, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
     719,   677,   714,  1644,   783,   890,  1263,   795, -2029,  1280,
   -2029,  3020,  1198,   519,   521, -2029, -2029, -2029, -2029, -2029,
   -2029,  4227, -2029,  7113,  7312,   364, -2029, -2029,  1283,  1284,
     376, -2029,  7169, -2029,  3479, -2029,  1288,  1302, -2029, -2029,
   -2029,  1190,  4262, -2029, -2029,  4262, -2029,  1294, -2029, -2029,
   -2029,  1190,  1190,  1190, -2029, -2029, -2029,  6660,  1299,  1271,
    1301, -2029, -2029, -2029, -2029, 14581, -2029,  1452,  1487, -2029,
   -2029,  1446, -2029,   480, -2029, -2029, -2029, -2029,  1362, -2029,
   -2029, 10059, 12969, -2029, -2029,  1318, -2029,  1252,  1364, 11757,
     459,  3074, 14629,  2108,  5614,  7877,  1373, -2029,   211, 14362,
    1391,  1426,  1163, -2029,  1378,   994,    97,  9479,  7457, -2029,
   -2029,  7457, -2029,  7493,  7493,  9234,  9730,  1383, -2029,   480,
    7113, -2029, 10941, -2029, -2029,  8560,  1230,  1035,  7113, -2029,
     480,  1392,  1395, -2029, -2029,  1230, -2029,   480,  1474, -2029,
    1447, -2029, -2029,  1198,   982,  1057, -2029, -2029,  1260,  3062,
   -2029,  1366,   480, -2029, -2029, -2029,  1451,  1471,  1503,  1489,
   -2029, -2029, -2029, -2029,  7169, -2029,  1277, -2029,  1005, -2029,
    1461, -2029,  1465, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029,  1366, -2029, -2029,   497, -2029,   940, -2029,
     376, -2029, -2029,  1600, -2029,   983, 13348, -2029, -2029,  8808,
   -2029,  3032,  4078, 12969,  1504, -2029, -2029,  1284, -2029,  7113,
    2034, -2029, -2029, -2029,    36, -2029,  1519, -2029,  1473,  1531,
   -2029,   261,  1263, 12969, -2029, -2029, 12969, 12969, 12213,  9021,
    9021,  9021,  9021, 12138, -2029, -2029, -2029, -2029,  1480, 13474,
   13474,  9126,  1494,   490,  1496, -2029,  1520, -2029, -2029, -2029,
   10437,  9297,  9126, -2029, 10563, 12969, 12969, 10185, 12969, 12969,
   12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969,
   12969, 12969, 12969, 12969, 12969, 12969, 12969, -2029, 12969, -2029,
   -2029, -2029, -2029, 12969, 12969, -2029, 12969, 12213,  3944,   657,
    1678, 11067, -2029, -2029,  1584,  1805,  1613,  1067,  1072,  1083,
    3331,   940, -2029, -2029,  1047,  1047,  8523, 11193,  1571,  1622,
   -2029, -2029,  1015,  9126, -2029,  9126, -2029, 11705,   878, -2029,
     544,   347, -2029, -2029, 12969, -2029, -2029, -2029, -2029, -2029,
     201,   580, -2029, -2029, -2029, -2029,   146, -2029,  1580,  1546,
     910,  3020,  1621,   376, -2029, -2029, -2029, -2029,  2433,  1851,
    1603,  1646,   902,  1625,  1627, -2029, -2029, 14233,  2151, -2029,
    1630, -2029, -2029, -2029, -2029, -2029, -2029,  1284, -2029, -2029,
    1583,  1586, -2029,  1632, -2029, -2029,   380, -2029, -2029, -2029,
   -2029,  1607, -2029, -2029, -2029, -2029, -2029, -2029,  8895, 12138,
   -2029,  1608, -2029, -2029, -2029, -2029, -2029,  2784,  2784,  5006,
     480, -2029, -2029,   480,   480,  2554,  1484,   480, 11832,   480,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029,  1426,  1641, -2029,
   -2029, -2029, 12465,  1622,  1101, -2029, -2029,  9479, -2029, -2029,
    9730,  7457,  7457,  9000,  9000,  9730,   544, -2029, -2029,  8560,
   -2029,  1660, -2029, -2029,  1615,    97,  9479, -2029,  1230, -2029,
   -2029, -2029, -2029,   480,  1652,  1057, -2029,   677,   714, -2029,
   -2029,   795,  1673, -2029, -2029,   253, -2029, -2029,  1649,  4558,
   -2029,    97,  8115,   376,   376, -2029,   376,    97,  8115, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029,   422,   422,   422,
    1342, -2029,  1284, -2029,  8808, 13348, 13348, 10185, 13348, 13348,
   13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348,
   13348, 13348, 13348, 13348, 13348, 13348,  1805,   355,  1624, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029,  1773,  1617, 12969,
   -2029,  1644, -2029,  1633,  1628, 11884,  9155,  1635,  1642,  1668,
    4135,  1682,  1688,  1701, -2029,  1666, -2029, -2029,  1667,  1722,
   -2029, -2029, 12138,  1723,  1272,  1372,   200,   282, 12969,  1729,
   -2029,  1725,  1683, -2029, 12138, 12138, 12138, -2029, -2029,  1734,
    8189,  5297,  6564,  8112,  7012,  7651,  4437,  3753,  3753,  3753,
    2479,  2479,  1629,  1629,  1077,  1077,  1077, -2029, -2029,  1685,
    1690,  1689,  1695,  1691,  1697,  9021,   657, -2029, 10059, 12969,
   -2029, -2029, -2029, 12969, -2029, -2029,  1720, 13852,  1698,  1730,
    1743,  1776, -2029, 12969, -2029, 12969, -2029, 12969,  3433,  2911,
   -2029, -2029,  2911, -2029,    70,  1708,  1718, -2029,  1717,  9021,
      97, -2029,    97,  3144, -2029,  8115, 11319,  1724,  1736, 11959,
   11959,  7711,  1738, 13095,  1747,  5456,  3626,  3463,  1399,  1753,
    2394,  1755, 13600, -2029,  1721,  1775, -2029,  1284,   480, -2029,
   -2029, -2029, -2029, -2029,  2419,  4227, -2029,  9021, -2029, -2029,
    1385, 13348, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029,   380, -2029, -2029,  2051,  1812, -2029,    14, -2029,
    3074,  3413,  3413,  3810,  3810,  5006,  6853,   314,  2554, -2029,
   -2029,  4309, -2029, -2029,  4739, -2029, 12086, 12086,  8313,   534,
    1760,   771,  3288, -2029, -2029, 10059,  9426, -2029,  6054,  2188,
    2188,  2668, -2029, -2029, -2029,  1810, -2029, -2029, -2029, -2029,
   -2029, -2029,  1879, -2029,  1482,  1386, -2029, 12969,  9856,  8453,
   -2029,  8453,   391,   391,   675,  1118,  2847, 14454,    -9,  5191,
   -2029,   171,   391, -2029, -2029,  1770,  1284,  1284,  1284, -2029,
    1789,    97,  8115,    97,  8115, -2029, -2029, -2029, -2029, -2029,
   -2029,  8808,  8808,  1824,  7625,  6994,  4014,  5853,  8374,  5685,
    5372,  4755,  4755,  2487,  2487,  2018,  2018,  1236,  1236,  1236,
   -2029, -2029,  1471, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   12138, -2029, -2029, -2029,  9021, -2029, -2029, -2029,  1815,  1818,
    1820,  1822,  1583, -2029, -2029,  7555, 10059,  9555,  1801, -2029,
   12969, -2029, -2029, -2029, -2029, -2029,  1125,  1804, -2029, -2029,
    1809,   594,  1796,  1796,  1811,  1796, 12969, -2029, 13852,  1953,
     376, -2029,  1825,  1830,  1831, -2029,  3433, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029,  3433, -2029,    97,  1837, -2029,  1819,
   -2029, -2029, -2029, -2029,  4772,  4772,  6123, -2029, -2029, -2029,
     241,  1845, -2029, -2029, -2029,  1867, -2029, -2029, -2029, -2029,
    8808, -2029, -2029, -2029,  1836, -2029,   719,   783,   890,   191,
    1144, -2029, -2029, -2029, -2029, -2029,  9681, -2029,  3074,  3413,
    3413,  5255,  5255, 14196, -2029,  1032,  4309,  3074,  1849,  1237,
    1316,  1537,  1551,  1102, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029,   251,  3771,  3771,  1187,  1187,  1187, 10059, -2029, -2029,
    3062, -2029, -2029, -2029, -2029,  8115, 12138,   228, -2029,  2293,
   -2029,   480,   480, -2029, -2029, -2029, -2029, -2029,  8115,  1159,
    1525, 12969,  1474, -2029,  1903, -2029, -2029, -2029,   565,   619,
    1784,  2659,   967,   391,  1905, -2029,  1543,  1904,   480,  6714,
   -2029, -2029, -2029,   480, -2029, -2029,  1915, -2029, -2029, -2029,
    1858, -2029,  1859, 13348, -2029, -2029,  1862, 12969, 12969, 12969,
   12969,    48, 10059, -2029,  1916, -2029, -2029, 12138, 12969, -2029,
    1125, -2029, -2029, -2029, -2029, -2029, -2029,  1865, -2029,  1931,
    1284, -2029, -2029, -2029,    97, -2029, -2029, -2029, 12969, -2029,
   -2029, -2029, -2029,  1836, -2029, -2029,   981, -2029, 12969,    48,
   -2029,  3237,  3237,   544,  3505,  1587,  6054, -2029,  1187, -2029,
   10059, -2029,    97,  1876,  1203, -2029,  1926,  1926,    97,  1880,
   12969, 12969,  7991,   480,  4497,   480,   480,  5555,   480,  4880,
   -2029, -2029,  7445,  1926,    97,    97, -2029, -2029,  8808, -2029,
    1882,  1883,  1884,  1890,  1644, -2029, -2029,  8691,  1961, -2029,
   -2029, 10059,  1888, -2029, -2029, -2029, -2029, -2029,    97,  1897,
    1921, -2029, -2029,  1908, -2029,  3924,  3924, 14677,  4329,  4329,
   -2029, -2029, -2029, -2029, -2029,  8115, -2029, -2029, -2029, -2029,
    7991,  7991, -2029,  1926,  1229,  1526, 12969, -2029, -2029, -2029,
    1474,  1474,  1926,  1926,  1277,  1926, -2029, -2029, -2029, -2029,
   -2029,    97,    97, -2029, -2029, -2029, -2029, -2029,  1492,   269,
    2041,  1645,  5193,  1534,  5808, -2029, -2029, -2029, -2029, 11445,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029,  8792, -2029, -2029,  4329,    97,    97,  1909,
      97, -2029, -2029, -2029, 12969, 12969,  7991,   480,   480, -2029,
   -2029, -2029,  6919, -2029, -2029,  1644, -2029, -2029, -2029,  1906,
   -2029, -2029, -2029,  1911,   283,  1914,   436,   190,  1917,   326,
    1919,  1922,   837,   599,  1930,  1935,   294, -2029, -2029, -2029,
    1963,  1568,  1611, -2029, -2029, -2029, -2029, -2029, 12969,  1970,
    1982,  1992, 12591,   477,  1644,  1056,  1259, -2029, -2029, 12717,
    2083, -2029, -2029, -2029,  1996, -2029,  5053, 14502, 14726,  2048,
   -2029, -2029,   138,   160,  2047,  2008,   160,  2047,  2008,   160,
     160, 12969,   160,  1955,  1967, -2029, -2029, -2029, -2029, -2029,
    7991,  7991, -2029,  1926,  1926, -2029, 10689, -2029, -2029, -2029,
   -2029, -2029,  1989,  1995,  1997,  2000,  2001,  2002,   539,  2004,
    1802,  2005, -2029,   828, -2029, -2029,  2014,  2015,  2020,  2022,
   -2029, -2029,   483, -2029,  2024,  2025,  2033, -2029, -2029,   340,
   -2029, -2029,  2107, -2029, -2029, -2029,  1267, -2029,  2035,  2036,
    2037,  2039, -2029,  2042, -2029, -2029,   905, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029,  1213,  1213,  2029,  2043,  2044,  6167,
   -2029, -2029, -2029, -2029,  2072, 12969,  2077,  2075,  2087,  1799,
    1839, -2029, -2029, -2029, -2029,  2053, -2029, -2029,  1474,  1592,
   -2029,  1598,  1474, 12843,  1626, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, 12011,
   -2029, -2029, -2029, -2029,    97, -2029, -2029, -2029, -2029,  2038,
   14921,  2049,  1267,  1267,  1267,  1759,  1267, 12969,  2054,  2057,
    2060,  2062,  2067,  2068,  2071,  2076,  2078,  2079, -2029,   777,
   -2029, 12969,  2080,  2085,  2086,  2089,  2091,  2093,  2095, -2029,
    2096,  2098,  2100,  2101, -2029,  2500, -2029,  1381, -2029, -2029,
    1267,  1267,  1267,  1759, -2029, -2029,  1267,  1267,  1267, -2029,
   -2029, -2029,  2056,   324,  1267,  1267,  1267,  1759,  1478, -2029,
   -2029,  2105,  2105, -2029, 12213, -2029, -2029, -2029,  2152, -2029,
    8067, 12213, 12969, -2029,   160, -2029,  2114, -2029, -2029,  2141,
   -2029,  2087,  1799, -2029, -2029,  2222, -2029, -2029, 13726, 13726,
    9807, -2029,  2029,  2111,   225, -2029, -2029, -2029, -2029,   463,
     380,   371,   374,   388, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029,  2143,   394,  9349,  1267,  1267,  1267,  1267,  1267,
    1759,  1267, 12969, 12969,  1384, -2029, -2029, 11498,  1267,  1267,
    1267,  1267,  1267,  1759,  1267,  1478, 12969, 12969,  1472, -2029,
   -2029,  2094,  2099,   417,   456,   491,  2148,   552,   561,   595,
    2124,  2130,   604,   635,   665,  2150, -2029, -2029, -2029, -2029,
     720,   256, -2029, -2029, -2029,  2102,   638,  7113,  2029,  2029,
   -2029, 11575,    48, -2029, -2029,  2155,  2136, 14971,   160, -2029,
   -2029, -2029, -2029,  1836,   173, -2029,  8067,  2726,  2090,  2267,
    2267, -2029, -2029, -2029,   181, -2029, -2029, -2029, -2029,  1267,
   -2029, -2029,   723,   734,   740,   752,   756,  2189,   762, 11628,
   14755,  2138,  2140, -2029,   764,   782,   792,   798,   801,  2195,
     813,   856, 14777, 14827,  2153,  2154, -2029, -2029, -2029, -2029,
   -2029,  1267, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
    1267, 12969, -2029,  1774,  2157,  2156,  2156, -2029, -2029, -2029,
    1474, -2029, -2029,  1227, -2029, -2029,  9933, -2029, -2029, -2029,
   -2029,  1836,    76,    76,  2203, -2029,  2158, -2029,  2266,  2267,
   -2029,   160, -2029, -2029, -2029,   861, -2029, -2029, -2029, -2029,
   -2029,  1267, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029,  1267, -2029, 12969, -2029, -2029, -2029, -2029, -2029,
     871,   875, 14849,  2159,  2160, -2029,  1361,  2156, -2029,   480,
   -2029, 12969,  2211, -2029,  2213, -2029,  2029,   160,  2187,  1644,
      61,  2221, -2029,   437, -2029,  9933, -2029, -2029, -2029,   883,
     892, 14899, -2029, -2029, -2029, -2029, -2029,  2218,  2170, -2029,
   -2029, -2029, -2029, 12969,  2169,  2312,  2228,    76,  2312,    76,
    2232,  2233, -2029, -2029, -2029,   160,   160, -2029, -2029, 10311,
    2182,  2320, -2029,   896, -2029, -2029,   935,   153, -2029, -2029,
   -2029, -2029, 10059,  2186, -2029,  2208,  2325,  2241,  2242,  2312,
    2243, 10311, -2029, -2029, 12969, -2029, -2029, -2029,   961, -2029,
    2194,  2029,  2204,  2255, -2029, -2029, -2029, -2029,  2029, -2029
};

/* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
   -2029, -2029,  2354, -2029,  -331,  2168,  -397,    47,    -5,  2358,
   -2029,  2322, -2029, -2029, -2029, -1539, -2029,   115, -2029, -1527,
   -2029, -2029,   573,  1595,    32,  -400, -2029, -2029,    93, -2029,
    -709, -2029, -2029,  1273,    55,  2181,  1895,  2191, -2029,   442,
    -185,  -803, -2029,    20,    64, -2029, -2029, -2029, -2029, -2029,
    1197, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,   919,
      24, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029,  2271,  -626,  7892,  -165,   -74,  -600,  -184,    15,
    2230,  -579, -2029, -2029, -2029,    21, -2029,   610,   234, -1478,
   -2029, -1426,  -139,   127,  -318, -2029,  -972,  3457,  4575,  1763,
    1331,  5566,  2066,  -371,   -53,  -111,  1209,  -158,   -67,   430,
   -2029, -2029, -2029,  -373, -2029, -2029, -2029, -1602,   -55,  -385,
    2626,    49,     8,  -115,    35,    65,  -222, -2029, -2029, -2029,
      -6,  -128,  -182,  -189,    17,    -4,   428, -2029,  -262, -2029,
   -2029, -2029, -2029, -2029,    29,  1257,  1767, -2029,  1324, -2029,
   -2029,  -951,  -471,  1593, -2029, -2029, -2029, -2029,   -28, -2029,
   -2029, -2029, -2029, -2029, -2029,  1756,  -401, -2029, -2029, -2029,
   -2029, -2029, -2029,  1049,  1250, -2029, -2029, -2029,  1014, -1089,
   -2029, -2029, -2029, -2029, -2029, -2029,  1240, -2029,   929,  1778,
   -2029,  1479,  1715,  2996,    11,  2217,  1495,   492, -2029,  -532,
   -2029,   147,  2202,  3308,  -164,   628,  -120,  6016,  2058, -2029,
    7116,  2925,  1814,   -14,  -117, -2029,  2302,   -80, -2029,  6560,
    4304,   118, -2029,  2145,  -255, -2029, -2029,   868, -2029, -2029,
     942,  1795, -2029, -1649, -2029, -2029, -2029, -1815, -2029, -1383,
     471, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029,   450, -2029, -2029, -2029, -2029,
   -2029,   464, -1442, -2029, -2029,   -59, -2029, -2029,   462, -2029,
    -671, -1942, -2029,   304, -2028,  -762,  -116,  1638, -2029, -2029,
   -2029, -2029,  -408, -2029,  -406,  -245, -2029,    80, -2029, -2029,
    1282,  1016, -2029,   785, -2029,  2392,  -250,  -582, -2029, -2029,
   -2029, -2029,   753, -2029, -2029,   800, -2029, -2029, -2029, -2029,
   -2029, -2029,   733,   527, -2029, -2029, -2029, -2029,   758,   803,
   -2029, -2029, -2029,   484, -1895, -2029, -2029, -2029, -2029, -2029,
   -2029,   759, -2029, -2029, -2029, -2029,   637, -2029, -2029, -2029,
   -2029,   658, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029,   252, -2029, -2029,
   -2029, -2029,   614, -2029, -2029,   439, -1965, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -1635,  3157, -1529
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -937
static const short int yytable[] =
{
      67,    41,   453,   456,   478,   537,   476,   214,   748,  1114,
     477,  1521,   275,   137,    63,   465,   999,    78,   559,   278,
     820,   195,   569,   789,   420,   790,   758,   896,   757,   429,
     788,   781,   324,  1524,    67,    41,   951,   427,   428,   240,
    1681,    64,   117,    67,   561,   923,   158,   163,    63,   199,
     130,    78,  1683,    40,  1258,    62,  1823,    63,   227,   419,
      78,  1814,   683,  1397,  1817,  1818,   194,  1820,   497,   191,
     769,    65,   266,   744,   746,    64,   806,  1793,   269,  1099,
    1368,   187,  1370,   824,   193,   322,    90,    40,  2148,    62,
    1400,   507,   556,   979,   278,   426,   186,   252,   192,    49,
     613,   789,   323,   847,   188,    65,   573,  2015,   544,   546,
    1326,  2138,   536,  -885,    65,  1504,   331,   393,   332,   748,
      90,    44,   545,   180,  1578,  2100,   402,  1897,   226,    -2,
     853,   403,   957,    49,   394,   741,   485,   214,   749,   752,
    1185,  1398,    49,  1914,   377,   435,  1190,   635,   636,   761,
    2196,  2153,  1570,  1571,   278,    44,   321,  1572,   195,    63,
    2175,   181,    78,   416,  1327,   119,   825,     4,  1105,   826,
     439,   613,  2138,   104,  1570,  1571,    67,   452,   455,  1572,
      67,  2218,  2102,  2081,  2082,   958,   434,   227,   390,   448,
      63,  1659,  1455,    78,    63,   854,  1106,    78,  1505,   240,
     433,   504,   473,   194,  2100,  2149,   191,   437,   240,   240,
    2176,  1744,  1745,  1746,   578,   432,    65,    64,   187,   980,
      98,   193,   518,   521,   841,  1747,   393,   540,   482,   514,
    -142,    62,  1116,   186,  -142,   192,   285,  2197,   240,  1570,
    1571,   188,  1080,   394,  2017,    49,   833,    65,   741,   749,
     752,    65,  2209,   541,   795,   796,  1203,   226,    93,   758,
    1160,   757,    90,  2092,   111,   125,   126,   486,  1401,   342,
    1570,  1571,  2093,  1897,   353,  1572,  -142,   728,   880,    49,
    -142,   555,   557,  1573,  1429,    -3,  -141,  1456,  1806,  2023,
     153,    30,    93,   465,   240,  1081,   567,   390,  2003,  -158,
     900,   777,  2210,  1287,  1722,  1573,  1723,   842,  1724,  1807,
     843,  1725,  1726,   486,   339,    10,    11,   266,   102,  1727,
    1728,  1402,  2094,   393,   105,  1161,   720,  1224,   640,   490,
    1227,  2171,  1729,   772,   498,   727,  1730,  1448,   103,  1731,
     394,   571,    63,  1748,  1976,    78,   491,  1466,   637,  1897,
    1897,    10,    11,   497,   127,   128,  2078,   645,  1985,   453,
     456,  1744,  1745,  1746,   652,   240,  1637,   393,   465,   434,
    1573,   233,   234,   235,   492,  1747,   110,  1474,   792,   322,
    1094,  -157,   761,   639,   394,  1306,   572,   758,   266,   664,
    1449,  1637,   155,   886,   390,   340,   323,  -640,   638,    65,
    1467,  2073,   123,  1400,   145,   341,  2225,   240,   544,   546,
    1111,  1112,    18,  2229,  2003,   285,  1995,   544,   124,  1638,
     957,  2037,   878,  2006,   765,   787,   142,   143,   227,    22,
    1410,   573,  1412,   546,  2049,    24,  1732,   652,   390,  1084,
     145,   146,  -640,  -640,  1770,    27,   830,   195,   837,   839,
     321,   150,    19,   952,  1752,   797,  -455,  1736,  1513,  1737,
    1738,   793,  1681,  -640,  1739,   155,  2157,   957,   172,    67,
     957,  1740,   824,  1981,  1683,   569,   240,  1311,  1312,  1753,
     111,   125,   126,    63,   957,   546,    78,  -192,  -455,  -192,
     957,  -455,   194,  1879,   497,   808,   227,  1897,   178,   266,
     339,   142,   143,   787,  1736,   179,  1737,  1738,   240,   240,
     193,  1739,    30,   957,   497,   145,   146,   240,  1740,  1309,
    2026,  2009,   200,  2027,   192,  1536,  1537,  2178,   196,   614,
     831,   204,   749,   240,   861,   862,  2179,  2028,   205,   615,
      65,  -455,  1558,  2030,   883,    22,   285,   339,    10,    11,
    2200,  2201,   957,   874,   217,   825,  1359,  1259,   826,  -879,
    1838,  1839,  1840,  1841,  1842,   884,  2058,  1843,  1844,   497,
     127,   128,  1897,   707,   497,  1845,  2085,   497,   497,  1897,
     232,   340,   885,  1323,   954,   240,  2180,   957,  1846,  1741,
     145,   341,  1623,   263,  1785,  1847,   172,   172,   172,  1414,
    1415,  1629,  1630,  1473,  1631,  2059,    19,   336,   497,   100,
    -455,   102,   240,  1107,   274,   497,  1479,  -339,   708,   821,
    1758,  1110,  1759,  1760,  -403,  2090,    19,  1761,   340,   101,
     896,   103,  1762,  1763,  1764,   922,  1874,   145,   341,  -332,
    2060,  -455,  -455,   172,  1157,  1158,   234,   235,   957,  1521,
    1162,   777,   393,   970,   970,   970,   970,   957,  1090,   720,
    -403,   274,  -339,  -339,  -403,   393,   175,  1089,   153,   394,
     394,   394,   394,   394,  1344,  1346,   393,   733,  -404,   967,
      19,    19,   394,  -332,   217,  -455,    18,   789,   154,   790,
     325,   957,  1848,   394,   788,   781,   569,  -403,   330,   497,
     957,  2062,   465,    22,   758,   989,   757,   335,   998,    24,
    2063,   393,   322,   497,  -404,   749,  -455,  -455,  -404,    27,
    -455,   733,   852,   390,   390,   390,   390,   390,   394,   323,
     787,   957,   839,   217,  1373,  1021,   390,   393,  1200,   393,
    1027,   504,  1038,  1432,  2064,  1049,  1052,   390,   613,  1040,
     544,  -404,  1765,  2067,   394,   683,   394,  1028,  1058,   240,
     948,   957,  1827,  1828,  2172,   137,   852,   405,   278,   758,
    1374,  1341,   206,  1619,  1375,  1423,  1425,   707,    95,   285,
     964,   420,   390,   321,  2068,  1029,   507,   101,  1087,   410,
     411,   412,   507,  1275,   175,   175,   175,   153,  1838,  1839,
    1840,  1841,  1842,  1092,   406,  1843,  1844,  1376,   390,   404,
     390,   259,  1100,  1845,  2069,   260,  2071,   207,   208,   957,
    1275,   338,   708,   787,   103,  1175,  1846,   761,   896,    96,
     957,    97,   504,  1847,   400,  1019,   957,   753,  1121,  1122,
    1020,   175,   989,  1022,  1023,   111,   112,   113,   957,  1722,
     240,  1723,   957,  1724,  -665,  1425,  1725,  1726,   957,  1130,
     957,   430,  1132,  1133,  1727,  1275,  1135,   440,  1143,  2072,
     413,  1275,  2106,   407,  1149,  1150,   853,  1729,   957,   414,
     415,  1079,   754,  2107,  1731,   409,  1469,  -617,   957,  2108,
     497,  -617,  1343,    67,   957,   185,   787,   957,   285,  -665,
    -665,  2109,   787,  1304,   497,  2110,   497,    63,   497,   957,
      78,  2112,  1155,  2117,  1360,  1361,  1362,   465,  1186,  1187,
    -665,  1188,   142,   143,  1323,   217,  1758,  1313,  1759,  1760,
    1955,  2118,    30,  1761,  1177,   114,   115,   116,  1762,  1763,
    1764,  2119,   240,   497,   142,   143,  1169,  2120,   998,   507,
    2121,  1510,  2124,   172,   172,   172,  -332,   957,   872,   453,
     456,  1061,  2123,  1172,    65,  1756,   879,   957,   465,   206,
    1222,   957,   453,   456,  -617,   458,  -617,  -617,  -617,   957,
     408,  1868,  1315,   285,  1316,   887,   888,   466,   957,  -617,
    1757,  -617,  2206,   217,  -660,   217,   217,   563,  1095,  1531,
     155,   733,  1405,  1406,  1407,  2125,  -617,  -617,    30,   856,
    2158,   145,   146,  1096,   207,   532,   468,   440,   856,   970,
    2162,  1275,   217,  1261,  2163,   734,  -134,  -617,    19,  1275,
     217,  2206,  2182,   145,   146,   735,   394,   111,   125,   126,
    1609,  2183,   233,   234,   235,  2207,   736,   737,   131,   132,
     133,   142,   143,   970,  1264,   181,    15,  2206,  1889,   787,
      -8,   278,  -134,   480,  -147,   504,  -134,   111,   446,   447,
     394,    30,   570,  1275,  1317,  1318,   507,   733,   507,  -199,
    1049,  1052,  1275,    18,  2208,   241,   242,  1289,   911,   787,
     390,   970,   155,   155,  -199,  1175,  -199,  1175,  1064,  -134,
      22,  1324,   481,  1175,   765,  1175,    24,   261,   394,  -147,
    2223,   262,    22,   142,   143,  -639,    27,  1305,  1092,   787,
     484,  1383,   852,   979,   390,   241,   479,   127,   128,   129,
     733,   217,   504,   912,  1329,  1330,   144,    30,   134,   135,
     145,   146,   970,  1065,  1066,   494,    30,  1329,  1330,  1788,
    1042,   175,   175,   175,   734,  1044,  1260,   127,   115,   394,
    -639,  -639,   390,    67,   735,    67,  1046,   550,  1371,  1372,
    1272,   227,  1273,    67,  1274,   736,   737,    63,  1403,    63,
      78,  -639,    78,   560,  1147,  -317,   787,    63,   787,   144,
      78,    10,    11,   282,   979,  1043,    12,   705,   706,    30,
    1045,  1377,   145,   146,  1177,   789,  1177,  1704,  1027,  1301,
     979,  1047,   325,   390,  1177,   564,  1169,   610,  1169,   551,
    1369,  2103,   102,   552,   285,  1028,  1169,  1457,   970,  1148,
    -317,  -317,   580,  1172,    65,  1172,    65,   543,   234,   235,
    1382,  1392,   103,  1172,    65,   394,  1378,   170,   582,   507,
    -341,  -317,    22,  1029,  1428,    22,  1516,   588,  1480,   172,
     565,   624,   507,   553,   112,   113,    25,   633,   172,   440,
     643,  1424,  1458,  1275,  1275,   530,   531,    30,    18,   217,
     145,   146,   642,   459,   460,  1440,  1534,  1437,   563,   285,
     787,   653,   157,   157,  1352,   173,  1893,   461,  -341,   390,
     656,    24,  -341,   853,  1353,  1049,  1052,   462,   657,   497,
    2140,    27,    37,   658,  1383,  1354,   275,  2001,   463,   497,
    -341,   230,   659,   278,   239,  1175,   660,   787,  1624,   661,
     256,  1535,   662,  -341,  -341,   267,  -341,  -341,   679,   440,
     979,  1894,  1461,  1462,   340,   339,   142,   143,   680,   856,
    1424,   732,   856,   114,   554,  2141,   944,   945,  1791,   787,
     909,  1275,   100,  1149,  1150,  -341,  -341,   102,   856,   155,
     774,  -155,   787,   773,   234,   235,   454,   457,  1483,   624,
    1433,  1434,   101,  1436,  1485,  1486,  -341,   103,  1483,  1488,
     142,   143,  1486,    67,   621,   621,   622,   622,   101,  -318,
    1476,  1477,   339,    10,    11,   910,  1971,    63,  1972,  2041,
      78,  2042,   103,   578,    18,   442,   979,   979,  1175,   507,
     442,    -7,   170,   451,   451,   173,   340,  1491,   106,   107,
     108,    22,  1493,  1382,  1177,   145,   341,    24,  1500,  1501,
    1502,  1503,  1324,   800,  -318,  -318,  1169,    27,   803,  1512,
     230,   804,   422,   423,   424,    12,   483,   175,   811,   577,
     970,   813,   102,  1172,    65,  -318,   175,   822,   517,   517,
     526,  -156,   156,   142,   143,    12,    30,   394,    15,   145,
     146,   -60,   103,   340,   239,   -60,    67,   282,    10,    11,
      12,  -878,   145,   341,   547,   550,   -60,  2054,  1801,  2055,
      63,   538,   539,    78,  1799,  2133,  1804,  2134,  1986,  1987,
    1988,  1542,  1543,   823,  1552,  1553,   577,  1555,  2203,   142,
     143,   787,   840,   239,  1989,    25,   849,  1177,  1567,   787,
     851,   390,   868,   272,    22,    19,  1461,  1462,   574,  1169,
    2220,   881,   283,   273,   882,    25,  1627,  1628,   530,   809,
     131,   132,   133,   172,   172,   172,  1172,    65,  -192,    30,
      25,   903,    32,    33,   979,  1364,   172,   172,   172,  1621,
    1622,    37,   102,  1688,  1680,  1519,    35,   283,    33,   239,
     267,   904,   674,   538,   810,  1523,    36,    63,  1635,  1636,
      78,    37,   103,   905,   111,   112,   113,    38,   172,   906,
    1684,   949,  -132,  -884,    19,    30,    37,   787,   145,   146,
    1365,   853,   856,   913,  1687,   100,   100,   914,   856,   959,
    -316,  1041,   614,   960,  1481,  1625,  1679,   961,  1686,   974,
     451,  1798,   615,  1798,  -666,   101,   101,    30,  -132,   979,
     134,   135,  -132,   976,    65,   977,   979,   111,   125,   126,
     239,   267,   131,   887,   888,  1712,  1713,  1714,   100,  1719,
     240,  1640,  1641,  1642,   497,  -316,  -316,  1772,  1388,   980,
    -341,   454,   801,  1688,  1039,  -132,  1654,  1655,   101,  -666,
    -666,   227,   142,   143,   114,   115,  -316,    63,   530,  1916,
      78,   230,   239,  1784,   538,  1917,  1083,  1786,  1787,  1059,
    -666,   102,  1197,  1198,  1199,  1061,   519,   522,  1082,   442,
    1773,  1086,   442,  1093,  1687,  -341,  -341,    24,   173,   173,
     173,   103,   530,  1921,   574,  1097,  1679,  1098,  1686,  1109,
    1101,  2212,  -335,   454,   457,  1108,  -335,   127,   128,  1825,
    1826,  1145,   134,   135,    65,  2025,   702,   703,   704,   705,
     706,   175,   175,   175,   453,   456,  1113,  1119,   483,   230,
    1152,   239,   267,  1156,   175,   175,   175,  1153,    30,  1159,
    1229,   145,   146,  1223,   613,   857,  1228,  1233,   857,  1238,
     860,   860,   526,  1232,  1236,  1031,   483,   270,    10,   271,
      12,  1237,   876,  1239,   547,  1032,   175,   483,   540,  1240,
     142,   143,   111,   125,   126,   573,  1906,  1033,   111,   125,
     126,   566,  1241,  1910,  1913,  1242,  1243,  1244,   547,   483,
     856,  1247,  -154,  1852,  1853,  1854,  1855,  1856,  1246,   856,
    1857,  1858,  1249,  1250,  1251,  1859,  1860,   243,  1861,  1252,
    1255,  1253,   111,   125,   126,  1254,  1256,   856,   856,  1266,
    1268,  1862,  1269,  1270,   410,   411,   412,  1279,  1863,  1271,
      25,  1388,  1934,  1935,  1936,  1937,  1938,  1280,   272,  1281,
     547,  1302,  1303,  1290,  1939,  1940,  1941,    32,   273,   454,
     975,    25,   131,   887,   888,  1291,    30,  1292,  1996,   145,
     146,   674,  1909,   128,  1688,  1996,  1293,   239,   127,   128,
     280,   274,  1297,  1031,  1299,   323,    37,  1325,    63,  1339,
    1358,    78,   323,  1032,   393,  1994,  1654,  1655,  2133,  1404,
    2134,   998,  1994,  1413,   243,  1033,   173,   173,   451,   861,
     862,   394,  1911,   128,   280,  1687,  2012,   709,  1408,   451,
     243,    30,  2080,  1417,   414,   415,  1418,  1679,  1419,  1686,
    1420,  1426,   674,  1430,   674,  1864,  1074,   924,  1431,   321,
     856,  1439,   280,  1435,  1451,    65,   321,  1452,   240,    30,
     499,  1447,   134,   135,  1441,   280,  1550,   710,   711,  1442,
    1443,   712,   713,   714,   715,   390,  1446,   270,   142,   143,
      12,  1048,  1048,  1048,  1450,  1688,  1680,   243,  1465,  1484,
     451,  1489,   451,  1490,  1075,  -706,   243,  1496,  1497,    63,
    1688,  1499,    78,   858,  1515,  1511,   859,  1514,   519,   522,
     856,   856,  1684,   243,    63,  1533,   491,    78,  1504,  1539,
     877,  1563,  1564,  1565,   243,   280,  1687,   998,   170,  1566,
    1610,   233,   234,   235,   239,   256,  1612,  1140,  1679,  1613,
    1686,  1687,  1315,  1639,  1316,   887,   888,  1615,  1708,  1720,
      25,  1074,  1771,  1679,  1721,  1686,    65,  1735,   272,  1780,
    1751,   280,  1754,   454,   801,  1755,  2139,    32,   273,  1781,
    1996,    65,    18,  1768,  1120,  1120,  1126,   483,  1769,  1782,
     483,   483,  1794,  1796,   483,  1126,   483,   323,  1805,    22,
    1810,   274,   280,  1812,  1821,    24,    37,  1994,   856,   173,
    1881,   156,    10,    11,    12,    27,  1822,  1832,   857,   857,
     860,   860,   526,  1833,  -936,  1834,   876,   663,  1835,  1836,
    1837,   955,  1851,  1867,  -147,   941,   942,   943,   944,   945,
     483,    30,  1870,  1871,  1317,  1318,  -143,  -143,  1872,  1996,
    1873,   321,  1876,  1877,   111,   112,   113,  1154,   244,   245,
     246,  1878,  2168,  1884,  1885,  1886,   323,  1887,  2167,  1905,
    1888,  1900,  1901,  2174,  1907,   403,  1994,  1908,   217,  -147,
     217,  1915,  1945,  1184,    25,  1946,  1927,  1929,  1947,  1189,
    1948,   733,    10,    11,  2190,  1949,  1950,   265,    30,  1951,
    1991,    32,    33,  2000,  1952,  1980,  1953,  1954,  1958,   243,
     998,  2010,   280,  1959,  1960,   827,    22,  1961,   243,  1962,
     321,  1963,   247,  1964,  1965,   828,  1966,   239,  1967,  1968,
      37,  2011,   998,   172,  2014,  2222,   829,   737,   164,  2016,
    2097,    30,  2029,  2056,   114,   115,   248,  2061,  2057,  2070,
     243,  2079,  2087,    22,   819,   499,  1201,  1202,   280,  1204,
    1205,  1206,  1207,  1208,  1209,  1210,  1211,  1212,  1213,  1214,
    1215,  1216,  1217,  1218,  1219,  1220,  1221,  2065,    30,   454,
     975,   145,   146,  2066,   243,  2088,  2098,  2115,  2111,  2116,
     249,   250,   251,   243,  2122,  1352,  1379,  1380,    11,    12,
    2154,  2136,  2128,  2129,  2096,  1353,  1276,  2135,  2169,  1276,
    2170,  2156,  2165,  2166,   243,  2173,  1354,  2177,  2187,  2188,
    1284,  2191,   519,   522,  2192,  2194,  1075,  1075,  1075,  2198,
    2199,  2204,  2205,   454,   457,  2213,  2214,  2215,  2216,  2217,
    2219,   243,  1282,  2224,  1283,   483,   454,  1338,   172,   172,
     172,   256,  2227,  2226,     2,   475,   858,   859,   519,   522,
     443,     7,   177,  1912,   877,   445,  1085,   474,  1307,    25,
     807,  2024,   280,   472,  1393,  1522,   334,   170,  1328,  1328,
    1126,  1126,  1126,    30,   438,  1896,    32,    33,  1337,  2181,
    1475,   620,  1381,  1126,  1126,  1126,   499,   111,   125,   126,
     211,   762,   763,   764,  1298,   962,  1355,  1355,  1356,  1471,
     212,  1118,  1363,  1492,   164,    37,   499,  1395,  1556,   965,
     966,   213,   111,   125,   126,   173,   244,   245,   246,   963,
     280,   175,  1310,  1026,   230,   533,   282,   423,   424,    12,
    1231,   418,  1658,   982,   819,   280,   729,   994,   995,   996,
    1608,  1000,  1001,  1002,  1003,  1004,  1005,  1006,  1007,  1008,
    1009,  1010,  1011,  1012,  1013,  1014,  1015,  1016,  1017,  1018,
     978,   499,  2084,  1409,  2104,  1411,   499,  2091,  2095,   499,
     499,  2195,  1530,   575,    22,  1144,  1869,   127,   128,   217,
     247,   723,  2051,   282,   423,   424,    12,  1815,   724,  1890,
    1875,  1816,  1970,  2099,   454,   801,  1993,  1956,  1880,    25,
     499,     0,   127,   128,  2137,     0,     0,   499,     0,     0,
       0,  1852,  1853,  1854,  1855,  1856,   283,    33,  1857,  1858,
       0,     0,     0,  1859,  1860,     0,  1861,     0,     0,     0,
       0,   454,   801,     0,   280,     0,   175,   175,   175,  1862,
       0,  1075,  1075,  1075,     0,    37,  1863,   270,    10,    11,
      12,     0,     0,     0,   280,     0,    25,     0,  1445,     0,
       0,     0,     0,     0,   725,     0,     0,     0,     0,     0,
      30,   819,     0,   283,    33,     0,  1328,  1328,  1126,  1126,
    1126,     0,     0,  1337,   700,   701,   702,   703,   704,   705,
     706,   499,   939,   940,   941,   942,   943,   944,   945,  1468,
    1468,  1356,   726,     0,     0,   499,   858,   859,   519,   522,
       0,     0,     0,     0,   243,     0,   877,   243,   483,   483,
      25,   519,   522,     0,     0,     0,     0,     0,   272,     0,
       0,     0,     0,   243,   858,   859,   877,    32,   273,   280,
       0,     0,     0,  1969,   798,   483,     0,   799,     0,     0,
     483,     0,   282,   142,   143,    12,     0,     0,     0,   802,
       0,   274,    10,    11,     0,     0,    37,   573,     0,     0,
     280,     0,   581,   583,   584,   585,   586,   587,     0,   589,
     590,   591,   592,   593,   594,   595,   596,   597,   598,   599,
     600,   601,   602,   603,   604,   605,   606,   607,   608,   609,
       0,   611,   612,   422,    10,    11,    12,     0,  1528,  1528,
     443,  1529,  1230,   445,     0,     0,  1517,     0,     0,     0,
       0,     0,     0,    22,   280,    25,     0,   575,     0,   483,
     483,     0,   483,   483,  1498,   483,  1644,     0,     0,   389,
       0,  1245,   283,    33,  1532,     0,     0,     0,    30,  1645,
    1538,   145,   146,  1646,  2096,  1647,  1648,  1649,  1650,  1651,
    1652,   110,     0,     0,     0,  1352,  1559,  1560,     0,  1653,
       0,    37,  1616,  1616,  1616,  1353,    25,   156,    10,    11,
      12,   819,   499,    15,   272,     0,  1354,   483,   483,     0,
    1611,     0,     0,   283,   273,     0,   499,     0,   499,     0,
     499,     0,     0,     0,     0,   243,     0,     0,     0,     0,
       0,     0,     0,     0,   858,   859,   519,   522,     0,     0,
       0,   877,    37,   500,     0,     0,     0,     0,     0,     0,
       0,     0,   243,  1633,  1634,   499,     0,   519,   522,    22,
    1379,  1380,    11,    12,     0,     0,     0,     0,   542,     0,
      25,    10,    11,     0,     0,    14,    15,   733,     0,     0,
       0,     0,     0,     0,    30,     0,     0,    32,    33,  1050,
    1053,     0,     0,   483,   483,   483,     0,   243,     0,     0,
     280,   827,   280,   243,     0,     0,     0,     0,     0,  1706,
    1707,   828,  1709,     0,     0,    18,    37,     0,   819,   819,
       0,     0,   829,   737,     0,   142,   143,     0,     0,    20,
     265,    21,    22,    25,     0,     0,     0,     0,    24,     0,
    1366,    86,     0,     0,     0,     0,     0,    30,    27,     0,
      32,    33,   280,   120,   230,   239,  1381,    30,   280,     0,
     145,   146,   716,   148,   211,   630,   858,   859,     0,   877,
     161,   161,     0,   161,   212,    86,     0,   483,   483,    37,
       0,     0,  1050,  1053,    86,   213,    22,     0,     0,     0,
     915,     0,     0,     0,     0,   717,     0,   221,     0,    86,
       0,     0,     0,     0,   733,     0,     0,     0,   257,   676,
       0,    30,   916,   120,   145,   146,     0,     0,     0,   819,
     819,   921,  1140,  1427,   288,     0,   120,     0,   734,     0,
     519,   522,     0,   282,   423,   424,    12,     0,   735,     0,
     164,     0,     0,     0,     0,   422,    10,    11,    12,   736,
     737,     0,     0,   243,     0,     0,     0,   120,     0,     0,
       0,   243,     0,     0,     0,     0,     0,   786,     0,     0,
     526,     0,     0,   798,   799,   131,   887,   888,     0,   889,
       0,   802,     0,     0,   148,     0,    86,   156,    10,    11,
      12,     0,   161,   161,   281,     0,     0,   444,   161,   819,
       0,   161,   161,   161,     0,   243,    25,     0,   422,    10,
     576,    12,     0,     0,   243,     0,  1926,    86,    25,     0,
      30,    86,     0,   283,    33,     0,   946,   221,    86,     0,
     819,     0,   243,   243,     0,   283,   273,     0,   454,  1338,
       0,     0,     0,     0,   890,   786,   221,   221,   221,    22,
       0,     0,    37,     0,  1482,     0,     0,     0,   142,   143,
      25,     0,    30,   573,    37,   134,   135,   733,     0,     0,
       0,     0,     0,     0,    30,     0,   221,    32,    33,     0,
       0,    25,   467,     0,     0,   860,   860,   860,     0,   272,
       0,   827,     0,   558,     0,   819,     0,     0,   283,   273,
       0,   828,     0,   120,  1277,     0,    37,  1278,     0,     0,
       0,     0,   829,   737,   280,   516,   161,     0,  1285,    22,
       0,   499,   577,     0,  1050,  1053,     0,    37,   535,     0,
       0,   499,     0,     0,     0,     0,     0,   733,     0,     0,
       0,     0,     0,   819,    30,   243,     0,   145,   146,     0,
       0,    10,    11,  1540,  1541,     0,   265,     0,   120,   616,
       0,   734,     0,   239,   631,     0,     0,     0,     0,    86,
       0,   735,     0,     0,     0,     0,  1277,  1278,  1050,  1053,
       0,     0,   736,   737,   819,     0,  1285,   280,     0,     0,
       0,  1050,  1053,     0,   968,   969,   971,   972,   973,     0,
       0,  1340,    10,    11,    12,   243,   243,   676,     0,     0,
       0,   280,    22,     0,     0,  1195,  1196,     0,   992,  1626,
     120,     0,     0,   730,    82,   616,     0,     0,   616,   750,
     733,     0,     0,   443,   445,     0,     0,    30,     0,     0,
     145,   146,     0,   575,   422,   142,   143,    12,     0,     0,
       0,     0,     0,  1024,  1525,     0,   148,     0,    82,     0,
       0,     0,     0,     0,  1526,     0,   120,    82,   221,   120,
       0,   353,   756,     0,    25,  1527,   737,   161,     0,  1067,
     219,  1068,   231,     0,     0,     0,     0,   161,    30,     0,
     161,   283,    33,   243,     0,     0,     0,  1710,  1711,     0,
       0,     0,   161,     0,     0,     0,   483,     0,     0,     0,
      86,     0,     0,     0,     0,     0,     0,    25,     0,     0,
      37,     0,     0,   519,   522,   272,   156,    10,    11,    12,
       0,     0,   265,     0,   283,   273,   221,   835,   221,   221,
     750,  1779,     0,     0,   835,     0,     0,   142,   143,  1050,
    1053,     0,   221,   221,     0,     0,   221,     0,   221,   221,
     221,   866,     0,    37,     0,   221,     0,     0,     0,   436,
     221,     0,     0,   221,  1819,   441,   755,    10,    11,    12,
       0,     0,     0,     0,  1277,  1278,  1050,  1053,    22,  1830,
       0,  1285,   422,   142,   143,    12,     0,     0,     0,    25,
      82,     0,     0,     0,    82,     0,   733,     0,    22,   161,
     219,   231,     0,    30,     0,     0,    32,    33,     0,    10,
      11,     0,     0,     0,   573,     0,   733,     0,     0,     0,
     827,     0,     0,    30,   869,     0,   145,   146,   500,   875,
     828,   798,   799,     0,   500,    37,   353,   756,   802,    25,
     734,   829,   737,   920,     0,     0,     0,     0,     0,   219,
     735,     0,     0,    30,     0,    25,   145,   146,     0,     0,
     901,   736,   737,   272,   221,     0,   499,   907,     0,     0,
      22,     0,   283,   273,   183,     0,   156,    10,    11,    12,
     184,    14,    15,     0,   120,   120,   120,   120,   733,     0,
       0,     0,     0,     0,     0,    30,   577,     0,   145,   146,
    1944,    37,     0,     0,     0,     0,  1277,  1278,     0,  1285,
     917,   918,  1525,   919,  1957,     0,     0,     0,     0,     0,
       0,    18,  1526,     0,     0,     0,     0,     0,     0,   422,
      10,    11,    12,  1527,   737,    20,     0,    21,    22,    23,
       0,     0,   641,   120,    24,   616,     0,     0,     0,    25,
       0,  1257,     0,     0,    27,     0,   730,   185,     0,   616,
     616,   750,     0,    30,     0,  2007,    32,    33,     0,     0,
    1050,  1053,  1076,     0,     0,     0,  1078,     0,   142,   143,
      35,     0,   234,   235,     0,   992,     0,     0,     0,     0,
      36,   500,     0,     0,     0,    37,   148,     0,     0,     0,
       0,    38,    25,   148,     0,     0,    39,     0,     0,     0,
     272,     0,   221,   257,     0,  2039,  2040,     0,     0,   283,
     273,   786,    18,  1308,     0,     0,     0,     0,     0,  2052,
    2053,     0,     0,     0,     0,  1062,  1063,     0,     0,    22,
       0,   219,     0,   274,  1062,    24,     0,     0,    37,     0,
     441,     0,   221,   221,  1128,    27,     0,   733,     0,     0,
       0,  1134,     0,  1128,    30,     0,     0,   145,   146,     0,
       0,     0,     0,     0,  1349,    10,    11,     0,     0,     0,
      15,   734,   221,    82,     0,   866,   221,   221,   866,   866,
     866,   735,     0,     0,   221,     0,     0,     0,     0,     0,
       0,   221,   747,   737,     0,     0,     0,     0,     0,   219,
     834,   219,   219,   156,    10,    11,    12,   845,   500,    15,
     500,     0,     0,     0,    86,   441,     0,   120,  1131,     0,
       0,     0,     0,   120,  2132,     0,    22,     0,   219,     0,
       0,     0,   616,   616,   616,     0,   219,   738,     0,     0,
     738,   738,     0,   156,    10,    11,    12,   184,    14,    15,
    1416,    30,     0,  1151,   145,   146,   698,   699,   700,   701,
     702,   703,   704,   705,   706,    22,     0,     0,  1352,     0,
       0,     0,   441,     0,     0,     0,    25,  2161,  1353,     0,
       0,     0,     0,   733,     0,   616,     0,     0,    18,  1354,
      30,     0,     0,    32,    33,  1191,     0,  1193,     0,     0,
       0,     0,    20,     0,    21,    22,    23,  1123,     0,     0,
       0,    24,     0,     0,     0,     0,    25,  1124,    10,    11,
       0,    27,    37,    15,   185,     0,     0,     0,  1125,   737,
      30,     0,     0,    32,    33,     0,     0,   219,    10,    11,
     120,     0,    14,    15,     0,     0,     0,    35,   738,     0,
     738,   738,   738,     0,     0,   819,     0,    36,     0,     0,
       0,     0,    37,   616,   616,     0,     0,   616,    38,     0,
       0,     0,     0,    39,   120,     0,     0,     0,   616,    22,
     120,   500,    18,     0,  1076,  1076,  1076,     0,     0,     0,
     616,     0,  1134,     0,   500,     0,    20,   733,    21,    22,
       0,     0,     0,     0,    30,    24,     0,   145,   146,     0,
     120,     0,   120,     0,     0,    27,     0,  1262,  1263,     0,
    1265,  1525,     0,     0,    30,     0,     0,   145,   146,     0,
       0,  1526,     0,     0,     0,   221,   221,   221,   221,   221,
    1128,   866,  1527,   737,     0,     0,   221,     0,     0,     0,
    1286,  1128,  1128,  1128,     0,     0,     0,  1134,     0,     0,
       0,     0,  1025,   120,   866,   866,   866,     0,     0,     0,
       0,   755,    10,    11,    12,     0,     0,     0,     0,     0,
     148,     0,  1349,   161,    86,   219,    86,     0,     0,     0,
       0,  1390,    86,     0,    86,     0,     8,     0,     9,    10,
      11,    12,    13,    14,    15,     0,     0,   120,     0,   120,
     931,   932,   933,   934,   935,  1336,   936,   937,   938,   939,
     940,   941,   942,   943,   944,   945,     0,     0,     0,   142,
     143,     0,     0,   234,   235,     0,     0,     0,     0,     0,
       0,   353,   756,    18,    25,     0,     0,     0,     0,   120,
       0,   500,     0,     0,     0,   441,     0,    20,    30,    21,
      22,   145,   947,     0,     0,     0,    24,     0,     0,     0,
       0,    25,     0,    18,   441,     0,    27,   616,   616,   471,
     616,   738,   738,   738,     0,    30,     0,     0,    32,    33,
      22,   616,    34,     0,  1073,     0,    24,  1182,     0,   616,
       0,     0,    35,     0,     0,     0,    27,     0,   733,   616,
     616,   750,    36,     0,     0,    30,     0,    37,   145,   146,
       0,    10,    11,    38,   184,    14,    15,     0,     0,   786,
       0,     0,   734,     0,   738,     0,     0,     0,     0,     0,
       0,     0,   735,   221,   221,   221,   866,   866,  1463,     0,
       0,   221,   221,   736,   737,   156,   142,   143,    12,     0,
       0,   265,     0,     0,     0,    18,  1444,   866,   866,   866,
     866,   866,     0,     0,   738,   738,   738,     0,     0,    20,
     120,    21,    22,     0,  1390,  1073,     0,     0,    24,     0,
       0,     0,     0,   120,     0,     0,     0,     0,   779,     0,
      89,   780,   156,    10,    11,    12,  1487,    30,   573,     0,
     145,   146,   122,     0,    86,     0,     0,    22,     0,     0,
    1464,   141,   149,    10,    11,     0,     0,     0,    25,   162,
     162,     0,   162,     0,    89,     0,     0,     0,     0,     0,
       0,     0,    30,    89,     0,    32,    33,     0,     0,     0,
    1472,     0,     0,     0,     0,     0,   162,     0,    89,    35,
       0,     0,     0,  1478,    22,     0,     0,   258,     0,    36,
       0,     0,   268,     0,    37,    25,   866,   866,     0,   866,
      38,   120,   733,   866,    22,   268,     0,     0,     0,    30,
    1494,     0,    32,    33,  1495,     0,     0,     0,     0,   221,
       0,     0,   733,     0,   161,     0,   827,    86,     0,    30,
       0,     0,   145,   146,     0,     0,   828,   738,   441,     0,
       0,    37,     0,     0,     0,     0,  1525,   829,   737,     0,
       0,     0,  1518,     0,     0,     0,  1526,     0,     0,     0,
     866,   866,  1463,   866,   866,    89,     0,  1527,   737,     0,
     120,   162,   162,     0,     0,     0,     0,   162,     0,     0,
     162,   162,   162,     0,     0,     0,     0,  1182,     0,  1182,
       0,     0,     0,     0,  1389,  1396,    89,  1182,     0,     0,
      89,     0,  1561,  1562,     0,     0,   162,    89,     0,     0,
    1544,  1545,    11,    12,     0,   738,   738,     0,     0,   738,
       0,     0,     0,     0,     0,   162,   162,   162,     0,     0,
     738,     0,     0,     0,     0,     0,  1073,  1073,  1073,  1617,
    1618,     0,   738,     0,     0,  1620,     0,     0,   120,     0,
       0,   866,     0,     0,     0,   162,   676,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,  1163,
       0,     9,    10,  1164,    12,   184,    14,    15,     0,     0,
       0,     0,     0,    25,     0,     0,     0,   738,   738,   738,
     738,   738,   738,   738,     0,   162,     0,    30,   738,     0,
      32,    33,     0,  1073,  1073,  1073,  1546,   156,   142,   143,
      12,     0,     0,    15,   211,     0,    18,     0,     0,     0,
       0,   221,   835,   221,   212,     0,     0,     0,     0,    37,
      20,     0,    21,    22,    23,   213,     0,   268,   618,    24,
    -560,     0,     0,   632,    25,     0,   441,     0,    89,    27,
    1165,     0,   185,     0,     0,   441,     0,     0,    30,     0,
       0,    32,    33,     0,     0,  1166,     0,  1167,     0,    22,
       0,     0,     0,     0,     0,    35,     0,     0,     0,     0,
      25,     0,     0,     0,     0,    36,     0,  1389,     0,     0,
      37,     0,     0,     0,    30,     0,  1168,    32,    33,   268,
       0,     0,   731,     0,   618,     0,     0,   618,   751,     0,
       0,   166,     0,   760,  1824,     0,     0,  1182,  -560,     0,
       0,   167,     0,     0,     0,     0,    37,     0,     0,     0,
       0,     0,   168,     0,     0,   778,     0,     0,  1128,     0,
       0,     0,     0,   738,     0,   268,     0,   162,   268,     0,
       0,   738,   422,    10,    11,    12,   162,     0,     0,     0,
       0,   738,   738,   738,     0,     0,   162,     0,     0,   162,
       0,     0,     0,   156,    10,    11,    12,     0,     0,     0,
       0,   162,     0,     0,     0,   282,   142,   143,    12,    89,
       0,    15,     0,     0,     0,   738,   738,   738,   738,   738,
     738,     0,  1551,   738,   738,     0,     0,  1551,     0,     0,
    1182,     0,     0,     0,     0,   162,   836,   162,   162,   751,
       0,     0,     0,   836,     0,    25,     0,     0,     0,     0,
       0,   162,   162,   272,     0,   162,     0,   162,   162,   162,
     618,     0,   283,   273,   162,     0,    25,    22,     0,   162,
       0,     0,   162,  1128,  1128,  1128,     0,     0,    25,     0,
      30,     0,     0,    32,    33,   733,   577,   210,     0,     0,
       0,    37,    30,   898,     0,   283,    33,   211,   937,   938,
     939,   940,   941,   942,   943,   944,   945,   212,   162,  1294,
       0,     0,    37,  1544,   142,   143,    12,     0,   213,  1295,
       0,     0,     0,     0,    37,     0,     0,     0,     0,     0,
    1296,   737,     0,     0,   628,     0,     0,     0,     0,     0,
       0,     0,     0,  1883,     0,     0,     0,     0,   738,   738,
       0,   738,   221,     0,     0,   654,   655,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   760,     0,     0,     0,
       0,   665,     0,   162,   666,   667,     0,     0,     0,     0,
     677,   678,     0,     0,     0,     0,    25,     0,     0,     0,
       0,   722,     0,   268,   268,   268,   268,     0,     0,     0,
      30,     0,     0,    32,    33,     0,     0,     0,     0,  1546,
       0,     0,   738,   738,   738,   738,   738,    35,     0,  1931,
    1932,  1933,     0,  1943,   219,  1802,   219,    36,     0,     0,
       0,     0,    37,     0,     0,     0,     0,     0,    38,   156,
      10,    11,    12,   184,    14,    15,     0,     0,     0,   496,
       0,     0,   268,     0,   618,     0,     0,  1973,  1974,  1975,
       0,     0,     0,  1977,  1978,  1979,     0,     0,   618,   618,
     751,  1982,  1983,  1984,     0,     0,     0,     0,     0,     0,
       0,  1077,     0,     0,    18,     0,   156,    10,    11,    12,
       0,     0,     0,     0,   760,     0,     0,     0,    20,     0,
      21,    22,     0,   738,     0,   778,     0,    24,     0,     0,
       0,     0,    25,   141,     0,     0,     0,    27,     0,   733,
       0,   162,   258,     0,     0,     0,    30,     0,     0,    32,
      33,     0,  2032,  2033,  2034,  2035,  2036,     0,  2038,     0,
       0,     0,     0,  1123,     0,  2044,  2045,  2046,  2047,  2048,
       0,  2050,     0,  1124,     0,     0,     0,     0,    37,    25,
       0,   162,   162,   836,  1125,   737,     0,     0,     0,     0,
       0,     0,  1142,    30,     0,     0,    32,    33,     0,     0,
    1797,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     211,   162,     0,     0,   618,   162,   162,   618,   618,   618,
     212,     0,     0,   162,     0,    37,     0,     0,     0,     0,
     162,   213,     0,     0,     0,     0,  2105,     0,     0,     0,
       0,     0,  1163,     0,     9,    10,  1164,    12,   184,    14,
      15,   628,     0,    89,     0,     0,   268,     0,     0,     0,
       0,     0,   268,  1644,     0,     0,     0,     0,  2130,     0,
       0,   618,   618,   618,     0,     0,  1645,  2131,     0,     0,
    1646,     0,  1647,  1648,  1649,  1650,  1651,  1652,   110,    18,
       0,     0,     0,     0,   665,   666,  1653,     0,     0,     0,
       0,     0,     0,    20,     0,    21,    22,    23,   282,    10,
      11,    12,    24,  -561,    15,    10,    11,    25,  2159,    14,
     265,     0,    27,  1165,   618,   185,     0,     0,     0,  2160,
       0,    30,     0,     0,    32,    33,     0,     0,  1166,     0,
    1167,     0,     0,     0,     0,     0,     0,     0,    35,     0,
       0,     0,     0,     0,     0,   219,     0,     0,    36,    18,
       0,     0,     0,    37,     0,     0,     0,     0,     0,  1168,
      22,     0,     0,    20,     0,    21,    22,     0,     0,   268,
       0,    25,    24,     0,     0,     0,     0,     0,   733,     0,
       0,  -561,    27,     0,   733,    30,     0,     0,   283,    33,
       0,    30,   618,   618,   145,   146,   618,     0,     0,     0,
       0,     0,  1331,   268,     0,     0,     0,   618,   734,   268,
       0,     0,  1332,  1077,  1077,  1077,     0,    37,   735,   618,
       0,   760,     0,  1333,   737,     0,     0,     0,     0,   736,
     737,     0,     0,     0,     0,     0,     0,     0,     0,   268,
       0,   268,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,   898,
       0,     0,     0,     0,   162,   162,   162,   162,   162,   836,
     618,     0,     0,     0,     0,   162,     0,     0,     0,     0,
    1142,  1142,  1142,     0,     0,     0,   760,     0,     0,     0,
       0,     0,   268,   618,   618,   618,     0,     0,     0,   282,
     142,   143,    12,     0,     0,     0,   898,     0,     0,   149,
       0,     0,   162,    89,     0,    89,     0,     0,     0,     0,
    1391,    89,   935,    89,   936,   937,   938,   939,   940,   941,
     942,   943,   944,   945,     0,     0,   268,     0,   268,     0,
     628,   628,     0,   628,   628,   628,   628,   628,   628,   628,
     628,   628,   628,   628,   628,   628,   628,   628,   628,   628,
     628,    22,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    25,     0,     0,     0,     0,     0,   268,   733,
       0,     0,     0,     0,     0,     0,    30,     0,     0,   283,
      33,     0,     0,     0,     0,     0,     0,     0,   422,   142,
    1554,    12,     0,  1294,     0,     0,   618,   618,     0,   618,
       0,     0,    58,  1295,     0,     0,     0,     0,    37,     0,
     618,     0,     0,     0,  1296,   737,     0,     0,   618,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   618,   618,
     751,    58,    58,     0,   169,     0,    58,     0,     0,     0,
       0,     0,  1267,     0,     0,    58,     0,   156,    10,    11,
      12,   233,   234,   235,     0,     0,     0,     0,    58,     0,
      58,    25,   162,   162,   162,   618,   618,   751,     0,   272,
     162,   162,     0,     0,   665,   666,     0,     0,   283,   273,
       0,     0,   276,     0,     0,   284,   618,   618,   618,   618,
     618,     0,    18,     0,   898,     0,     0,     0,     0,   268,
       0,     0,   577,  1391,     0,     0,   628,    37,     0,    22,
       0,     0,   268,     0,     0,    24,     0,     0,     0,     0,
      25,     0,     0,     0,     0,    27,     0,   733,     0,     0,
       0,     0,     0,    89,    30,     0,     0,    32,    33,     0,
       0,   665,   666,     0,   425,   425,     0,    58,     0,     0,
       0,   827,     0,    58,    58,     0,     0,   276,   284,    58,
       0,   828,   169,   169,   169,     0,    37,     0,     0,   464,
       0,     0,   838,   737,     0,     0,     0,     0,    58,     0,
       0,     0,    58,     0,     0,     0,     0,     0,    58,    58,
     898,     0,     0,     0,     0,   618,   618,     0,   618,     0,
     268,     0,   618,     0,     0,     0,     0,    58,    58,   169,
       0,     0,     0,     0,     0,     0,     0,   276,   162,     0,
       0,     0,     0,   162,   934,   935,    89,   936,   937,   938,
     939,   940,   941,   942,   943,   944,   945,    58,     0,  1656,
       0,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,     0,  1570,  1571,     0,     0,     0,  1572,     0,   618,
     618,   751,   618,   618,     0,     0,     0,     0,     0,   268,
       0,     0,     0,  1438,     0,     0,     0,    58,     0,     0,
       0,     0,     0,     0,   276,  -936,  -936,  -936,     0,  -936,
    -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,  -936,  -936,  -936,  -936,     0,  -936,  -936,  -936,  -936,
       0,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,     0,     0,  -936,  -936,  -936,  -936,  -936,  -936,     0,
      58,  -936,  -936,  -936,     0,  -936,  -936,     0,     0,     0,
       0,     0,  -936,     0,     0,  -936,     0,   268,     0,     0,
     618,     0,     0,  -936,  -936,  -936,     0,     0,     0,     0,
    -936,  -936,  -936,     0,     0,     0,  -936,     0,     0,   673,
    -936,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,  1573,   425,     0,     0,     0,  1657,  -936,
     932,   933,   934,   935,   276,   936,   937,   938,   939,   940,
     941,   942,   943,   944,   945,     0,     0,     0,     0,  1790,
       0,     0,     0,     0,     0,     0,     0,   425,   628,     0,
     162,   836,   162,     0,     0,     0,     0,     0,     0,    58,
       0,     0,     0,     0,     0,     0,     0,     0,    58,     0,
     276,     0,     0,     0,     0,     0,     0,   464,    58,     0,
       0,    58,    84,     0,     0,     0,     0,   464,   464,   464,
       0,     0,     0,    58,     0,     0,     0,     0,     0,     0,
       0,    58,     0,     0,     0,     0,     0,   156,    10,    11,
      12,    84,    84,    15,    84,  1348,    84,     0,    10,    11,
       0,     0,    14,    15,     0,    84,     0,    58,    58,    58,
      58,     0,     0,     0,     0,    58,     0,     0,    84,     0,
      84,     0,     0,    58,    58,     0,     0,    58,     0,   169,
     169,   169,   464,     0,     0,     0,    58,     0,     0,     0,
       0,    58,    18,     0,    58,   286,     0,  1142,     0,    22,
       0,     0,     0,     0,     0,     0,    20,     0,    21,    22,
      25,     0,     0,     0,     0,    24,   282,    10,    11,    12,
     184,    14,    15,     0,    30,    27,   496,    32,    33,     0,
      58,     0,     0,     0,    30,     0,     0,   145,   146,     0,
       0,   211,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   212,     0,     0,     0,     0,    37,    84,     0,     0,
       0,    18,   213,    84,    84,     0,     0,     0,   286,    84,
    1902,     0,    84,    84,    84,    20,     0,    21,    22,     0,
       0,     0,     0,     0,    24,     0,     0,   276,    84,    25,
       0,     0,    84,     0,    27,    58,   733,     0,    84,    84,
       0,     0,     0,    30,     0,     0,   283,    33,     0,     0,
       0,     0,  1142,  1142,  1142,     0,     0,    84,    84,    84,
    1294,     0,     0,     0,     0,   673,   673,   673,     0,     0,
    1295,     0,     0,     0,     0,    37,     0,     0,   673,     0,
       0,  1296,   737,     0,   677,     0,   289,    84,     0,    10,
      11,     0,     0,    14,    15,     0,  1903,   685,   686,   687,
     688,   689,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,     0,
       0,     0,     0,     0,     0,     0,   276,    84,     0,     0,
       0,   162,     0,    18,     0,     0,     0,     0,     0,   673,
       0,   673,     0,   673,     0,     0,     0,    20,     0,    21,
      22,     0,     0,     0,     0,     0,    24,     0,   290,   291,
       0,     0,     0,     0,     0,     0,    27,   425,   292,     0,
       0,     0,     0,     0,   425,    30,     0,     0,   145,   146,
      84,   293,     0,    58,     0,   294,   295,   296,   297,   298,
     299,   300,   301,   302,   303,   304,   305,   306,   307,   308,
     309,   310,   311,   312,   313,     0,   314,   315,   316,   317,
       0,     0,     0,     0,   318,   319,     0,     0,     0,     0,
       0,     0,     0,    58,    58,   169,     0,     0,     0,     0,
       0,   276,   284,     0,  1139,     0,   320,     0,     0,     0,
       0,     0,     0,     0,     0,   759,     0,     0,   673,     0,
       0,     0,     0,    58,     0,     0,   464,    58,    58,   464,
     464,   464,     0,     0,     0,    58,     0,     0,     0,     0,
       0,     0,    58,     0,     0,     0,     0,     0,     0,    84,
       0,     0,     0,     0,     0,     0,     0,     0,    84,     0,
       0,     0,     0,     0,     0,    58,     0,     0,    84,     0,
       0,    84,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    84,     0,     0,     0,     0,     0,     0,
       0,    84,     0,   665,   666,     0,   495,     0,   282,    10,
      11,    12,   184,    14,   344,   345,   346,   347,   496,     0,
       0,     0,     0,     0,     0,     0,     0,    84,    84,    84,
      84,     0,     0,     0,     0,    84,     0,     0,     0,     0,
       0,     0,     0,    84,    84,     0,     0,    84,     0,    84,
      84,    84,   348,    18,     0,     0,    84,     0,     0,     0,
       0,    84,     0,     0,    84,     0,     0,    20,   349,    21,
      22,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
      84,     0,     0,   364,     0,     0,     0,     0,   176,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,   222,   373,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   673,   673,   673,     0,     0,
       0,   464,   276,     0,  -849,     0,   374,     0,   759,     0,
       0,     0,     0,     0,     0,    84,     0,     0,     0,     0,
       0,     0,     0,   156,   142,   143,    12,     0,     0,   573,
     691,   692,   693,   694,   695,   696,   697,   698,   699,   700,
     701,   702,   703,   704,   705,   706,    58,    58,    58,   169,
     169,   169,   464,     0,   276,     0,     0,    58,     0,     0,
     276,     0,  1139,  1139,  1139,     0,     0,     0,   284,     0,
       0,     0,     0,     0,     0,  1163,     0,     9,    10,  1164,
      12,   184,    14,    15,     0,    22,   176,   176,   176,     0,
       0,     0,     0,     0,   169,    58,    25,    58,     0,     0,
       0,     0,    58,    58,     0,    58,     0,   759,     0,     0,
      30,     0,   222,    32,    33,     0,     0,     0,     0,     0,
       0,     0,    18,     0,     0,     0,     0,    35,     0,     0,
       0,   222,   222,   528,     0,     0,    20,    36,    21,    22,
      23,     0,    37,     0,     0,    24,  -563,     0,    38,     0,
      25,     0,     0,     0,     0,    27,  1165,     0,   185,     0,
       0,   222,     0,    84,    30,     0,     0,    32,    33,     0,
       0,  1166,     0,  1167,     0,     0,     0,     0,     0,     0,
       0,    35,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    36,     0,     0,     0,     0,    37,     0,     0,     0,
       0,     0,  1168,    84,    84,    84,     0,     0,     0,     0,
       0,     0,   286,     0,  1141,     0,   282,    10,    11,    12,
     464,   464,   464,     0,  -563,     0,     0,     0,     0,     0,
       0,     0,     0,    84,     0,     0,     0,    84,    84,     0,
       0,     0,     0,     0,   617,    84,     0,     0,     0,     0,
       0,     0,    84,     0,    58,    58,    58,   464,   464,   464,
       0,     0,    58,    58,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    84,     0,     0,    22,     0,
    1715,     0,  -517,  -517,  -517,  -517,  -517,  -517,  -517,    25,
       0,     0,  -517,     0,     0,    58,   733,     0,     0,     0,
       0,     0,     0,    30,     0,     0,   283,    33,     0,     0,
     740,     0,     0,   740,   740,     0,   276,   284,     0,     0,
    1331,     0,     0,     0,     0,    58,     0,  -517,     0,     0,
    1332,     0,     0,     0,     0,    37,     0,     0,  -517,     0,
    -517,  1333,   737,     0,  -517,     0,     0,     0,     0,     0,
    -517,     0,     0,   222,     0,  -517,     0,     0,     0,     0,
    -517,     0,  -517,     0,     0,     0,     0,     0,     0,  -517,
       0,     0,  -517,  -517,  -517,  -517,  -517,     0,  -517,  -517,
    -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,
    -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,  -517,
    -517,  -517,  -517,  -517,     0,     0,  -517,  -517,  -517,  -517,
      58,  -517,     0,   276,     0,    58,  1716,  -517,    58,     0,
       0,   832,     0,   832,   832,   740,     0,  -517,  -517,  -517,
       0,  -517,   156,   142,   143,    12,     0,   222,   222,     0,
       0,   222,     0,   528,   528,   528,   867,     0,     0,     0,
     222,     0,     0,   759,     0,   222,     0,     0,   222,   930,
     931,   932,   933,   934,   935,     0,   936,   937,   938,   939,
     940,   941,   942,   943,   944,   945,   156,    10,    11,    12,
     693,   694,   695,   696,   697,   698,   699,   700,   701,   702,
     703,   704,   705,   706,    22,     0,    84,    84,    84,    84,
      84,    84,     0,     0,     0,    25,     0,    84,     0,     0,
       0,     0,  1141,  1141,  1141,     0,     0,     0,  1342,    30,
       0,     0,    32,    33,     0,     0,     0,     0,     0,     0,
       0,     0,   156,   142,   143,    12,   166,     0,   220,     0,
       0,     0,     0,     0,    84,    84,   167,    84,     0,    25,
       0,    37,    84,    84,     0,    84,     0,   168,     0,   222,
       0,     0,   279,    30,     0,   287,    32,    33,     0,     8,
       0,     9,    10,    11,    12,    13,    14,    15,     0,     0,
     211,     0,     0,    16,     0,     0,     0,    17,     0,     0,
     212,     0,     0,     0,    22,    37,   279,     0,   343,     0,
       0,   213,     0,     0,     0,    25,     0,     0,     0,     0,
       0,     0,    58,    58,    58,     0,    18,     0,     0,    30,
       0,     0,    32,    33,     0,     0,     0,     0,     0,    19,
      20,     0,    21,    22,    23,     0,    35,     0,     0,    24,
    1034,     0,     0,     0,    25,     0,    36,     0,    26,    27,
      28,    37,    29,     0,   740,   740,   740,    38,    30,    31,
       0,    32,    33,     0,     0,    34,     0,   740,   220,     0,
       0,     0,     0,     0,     0,    35,    10,    11,     0,   223,
      14,   224,     0,     0,     0,    36,     0,   220,   220,   220,
      37,     0,     0,     0,     0,     0,    38,   534,     0,     0,
       0,    39,     0,     0,    84,    84,    84,   832,     0,     0,
       0,     0,    84,    84,     0,     0,     0,   220,     0,     0,
      18,     0,     0,     0,     0,     0,     0,     0,     0,  1139,
       0,     0,     0,     0,    20,     0,    21,    22,     0,     0,
       0,     0,     0,    24,   287,    84,     0,   832,   832,  1129,
       0,     0,     0,    27,     0,     0,     0,     0,  1129,     0,
       0,     0,    30,     0,   279,   145,   146,   286,     0,     0,
       0,     0,     0,     0,     0,    84,     0,   222,     0,     0,
     867,   222,   222,   867,   867,   867,     0,     0,     0,   222,
       0,     0,     0,     0,     0,     0,   222,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  1163,     0,     9,    10,
    1164,    12,   184,    14,    15,     0,     0,     0,     0,     0,
     156,    10,    11,    12,     0,     0,   265,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   617,   617,   617,
       0,     0,     0,     0,  1139,  1139,  1139,     0,     0,     0,
       0,     0,     0,    18,     0,     0,   156,    10,    11,    12,
      84,     0,    15,     0,     0,    84,     0,    20,    84,    21,
      22,    23,     0,     0,   279,   287,    24,  -562,     0,     0,
       0,    25,    22,     0,     0,     0,    27,  1165,     0,   185,
     740,     0,     0,    25,     0,    30,    10,    11,    32,    33,
      14,   265,  1166,     0,  1167,     0,     0,    30,     0,   220,
      32,    33,    35,     0,     0,     0,     0,     0,    22,     0,
       0,     0,    36,    58,   211,     0,     0,    37,     0,    25,
       0,     0,     0,  1168,   212,     0,     0,     0,     0,    37,
      18,     0,     0,    30,     0,   213,    32,    33,     0,     0,
       0,     0,     0,     0,    20,  -562,    21,    22,     0,     0,
     523,     0,     0,    24,     0,     0,     0,     0,   740,   740,
     524,     0,   740,    27,     0,    37,     0,   220,     0,   220,
     220,   525,    30,   740,     0,   145,   146,     0,     0,   740,
     740,   740,     0,   220,   220,   740,     0,   220,     0,   220,
     220,   220,   220,     0,     0,     0,   220,     0,     0,     0,
       0,   220,     0,     0,   220,   685,   686,   687,   688,   689,
     690,   691,   692,   693,   694,   695,   696,   697,   698,   699,
     700,   701,   702,   703,   704,   705,   706,     0,     0,     0,
     832,   832,   832,  1129,  1129,  1129,  1334,     0,     0,     0,
       0,   832,     0,     0,     0,     0,  1129,  1129,  1129,     0,
       0,     0,    84,    84,    84,     0,     0,  1422,     0,   867,
     867,   867,   668,     0,   282,    10,    11,    12,   184,    14,
     344,   345,   346,   347,   496,     0,     0,     0,   176,   929,
     930,   931,   932,   933,   934,   935,   222,   936,   937,   938,
     939,   940,   941,   942,   943,   944,   945,   279,   287,     0,
       0,     0,     0,     0,     0,   220,     0,     0,   348,    18,
     694,   695,   696,   697,   698,   699,   700,   701,   702,   703,
     704,   705,   706,    20,   349,    21,    22,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,   733,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   283,    33,  -350,     0,     0,   364,
       0,     0,     0,     0,     0,   365,     0,     0,  1069,  1141,
       0,     0,  1034,  1034,     0,  1034,   367,   368,  1070,     0,
       0,     0,     0,   370,   371,   372,   740,     0,     0,  1071,
     737,     0,     0,     0,   740,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   740,   740,   740,     0,     0,     0,
       0,     0,   374,     0,     0,     0,   279,   287,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -423,    10,    11,  -423,  -423,    14,   265,     0,   832,   832,
     832,  1334,  1334,  1334,     0,     0,   832,   832,     0,     0,
       0,     0,     0,   220,     0,     0,     0,     0,     0,     0,
     118,     0,   867,   867,   867,   867,   867,     0,     0,   136,
     118,     0,     0,     0,     0,    18,     0,   118,   118,   222,
     118,     0,     0,     0,  1141,  1141,  1141,     0,     0,    20,
       0,    21,    22,   220,   220,  1127,     0,     0,    24,     0,
       0,   279,   287,  -423,  1127,     0,     0,     0,    27,     0,
     733,     0,     0,     0,     0,   254,     0,    30,     0,     0,
     145,   146,     0,   220,     0,     0,   220,   220,   220,   220,
     220,   220,   534,     0,   734,   220,     0,     0,     0,     0,
       0,     0,   220,     0,   735,     0,     0,     0,     0,  -423,
       0,     0,     0,     0,     0,   736,   737,     0,     0,     0,
       0,     0,     0,    84,   287,     0,     0,     0,     0,     0,
       0,  1334,  1334,     0,  1334,     0,     0,     0,   867,     0,
       0,   417,     0,   136,     0,     0,     0,     0,     0,     0,
     118,   118,     0,     0,   222,     0,     0,     0,     0,   118,
     118,     0,     0,   118,   118,   118,    22,   449,   118,   118,
     118,     0,     0,     0,     0,     0,     0,     0,   997,     0,
     282,    10,    11,    12,   184,    14,   344,   345,   346,   347,
       0,     0,     0,     0,     0,  1334,  1334,  1334,  1334,  1334,
       0,   685,   686,   687,   688,   689,   690,   691,   692,   693,
     694,   695,   696,   697,   698,   699,   700,   701,   702,   703,
     704,   705,   706,     0,   348,    18,     0,     0,     0,    10,
      11,     0,   184,    14,    15,     0,     0,     0,   496,    20,
     349,    21,    22,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,   254,
     118,     0,   359,   360,   361,   362,   363,    30,     0,     0,
     283,    33,  2002,    18,  -838,   364,     0,     0,     0,     0,
       0,   365,     0,   118,   366,     0,  1334,    20,     0,    21,
      22,     0,   367,   368,   369,     0,    24,     0,     0,   370,
     371,   372,   279,   287,   279,   373,    27,     0,     0,     0,
       0,     0,     0,     0,     0,    30,     0,     0,   145,   146,
       0,     0,     0,     0,     0,     0,   118,     0,   374,   692,
     693,   694,   695,   696,   697,   698,   699,   700,   701,   702,
     703,   704,   705,   706,     0,     0,   220,   220,   220,   220,
     220,  1127,   220,     0,  1335,     0,   222,   220,   222,     0,
     279,     0,  1127,  1127,  1127,     0,     0,     0,   287,     0,
       0,     0,     0,     0,     0,   220,   220,   220,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     118,     0,   118,     0,     0,   118,     0,     0,     0,     0,
       0,     0,   220,   689,   690,   691,   692,   693,   694,   695,
     696,   697,   698,   699,   700,   701,   702,   703,   704,   705,
     706,     0,     0,   118,   668,     0,   156,    10,    11,    12,
     184,    14,   344,   345,   346,   347,   496,     0,     0,     0,
       0,     0,     0,     0,   118,     0,   118,     0,     0,     0,
       0,     0,     0,     0,   118,     0,     0,   118,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   118,
     348,    18,     0,   528,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,    22,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,   733,     0,   359,   360,
     361,   362,   363,    30,     0,     0,    32,    33,  -350,     0,
       0,   364,     0,     0,     0,     0,     0,   365,     0,     0,
    1136,     0,     0,     0,     0,     0,     0,     0,   367,   368,
    1137,     0,     0,     0,     0,   370,   371,   372,     0,     0,
       0,  1138,   737,     0,   220,   220,   220,   220,   220,  1127,
     254,   891,   220,   220,  1163,     0,     9,    10,  1164,    12,
     184,    14,    15,     0,   374,     0,   118,     0,   220,   220,
     220,   220,   220,     0,     0,     0,     0,     0,   528,   528,
     528,     0,   933,   934,   935,   220,   936,   937,   938,   939,
     940,   941,   942,   943,   944,   945,     0,     0,     0,     0,
       0,    18,     0,     0,     0,     0,   534,     0,   118,     0,
     118,     0,     0,     0,     0,    20,     0,    21,    22,    23,
       0,     0,     0,     0,    24,     0,     0,    10,    11,    25,
     184,    14,    15,     0,    27,  1165,   496,   185,     0,     0,
       0,     0,     0,    30,     0,     0,    32,    33,     0,     0,
    1166,     0,  1167,     0,     0,     0,     0,   222,     0,     0,
      35,     0,     0,   156,    10,    11,    12,     0,     0,   573,
      36,    18,     0,     0,     0,    37,     0,   220,   220,  1335,
     220,  1168,     0,     0,   220,    20,     0,    21,    22,     0,
       0,     0,     0,     0,    24,     0,     0,     0,     0,     0,
     220,     0,     0,     0,    27,     0,   733,     0,     0,     0,
       0,     0,   118,    30,     0,     0,   145,   146,     0,     0,
       0,     0,   118,   118,     0,    22,   118,   118,     0,     0,
     734,     0,     0,     0,     0,     0,    25,     0,     0,     0,
     735,   220,   220,  1127,   220,   220,     0,     0,     0,     0,
      30,   736,   737,    32,    33,     0,     0,     0,     0,     0,
       0,     0,     0,   118,     0,     0,     0,   211,     0,     0,
     118,   136,     0,     0,     0,     0,     0,   212,     0,     0,
     254,     0,    37,     0,     0,     0,     0,     0,   213,     0,
       0,     0,  1569,     0,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,  -936,  -936,  -936,     0,  1570,  1571,     0,     0,     0,
    1572,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   220,     0,     0,     0,     0,     0,  -936,  -936,
    -936,     0,  -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,  -936,  -936,  -936,  -936,  -936,  -936,  -936,     0,  -936,
    -936,  -936,  -936,     0,  -936,  -936,  -936,  -936,  -936,  -936,
    -936,  -936,  -936,  -936,     0,     0,  -936,  -936,  -936,  -936,
    -936,  -936,     0,     0,  -936,  -936,  -936,     0,  -936,  -936,
     891,     0,     0,     0,     0,  -936,    10,    11,  -936,   184,
      14,    15,   220,     0,   220,  1703,  -936,  -936,  -936,   118,
     118,   118,   118,  -936,  -936,  -936,     0,     0,     0,  -936,
       0,     0,     0,  -936,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  1573,     0,     0,     0,
      18,     0,  -936,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    20,     0,    21,    22,     0,     0,
       0,     0,   118,    24,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    27,     0,     0,     0,     0,     0,     0,
       0,     0,    30,     0,     0,   145,   146,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   817,     0,   983,   984,
     985,    12,     0,    14,   512,   345,   346,   347,   925,   926,
     927,   928,   929,   930,   931,   932,   933,   934,   935,  1127,
     936,   937,   938,   939,   940,   941,   942,   943,   944,   945,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     118,   118,   348,    18,   118,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   118,     0,    20,   349,    21,
       0,    23,     0,   350,   351,   352,    24,   118,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   986,   987,
     818,     0,     0,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   366,   282,    10,    11,    12,   891,     0,    15,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   373,   988,    10,    11,     0,     0,    14,
      15,     0,     0,     0,  1127,  1127,  1127,     0,     0,     0,
       0,     0,     0,     0,     0,  1117,   374,     0,     0,     0,
       0,     0,     0,     0,   891,     0,     0,   118,     0,     0,
     118,     0,     0,     0,     0,    22,     0,     0,     0,    18,
       0,     0,     0,     0,     0,     0,    25,     0,     0,     0,
       0,     0,     0,    20,     0,    21,    22,     0,     0,     0,
      30,     0,    24,   283,    33,     0,     0,     0,     0,     0,
       0,     0,    27,     0,     0,     0,     0,   863,     0,     0,
       0,    30,     0,   220,   145,   146,     0,   864,     0,     0,
       0,     0,    37,     0,     0,     0,     0,   668,   865,   282,
      10,    11,    12,     0,    14,   344,   345,   346,   347,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   118,   118,     0,   118,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   118,     0,
       0,     0,     0,   348,    18,     0,   118,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   118,   118,    20,   349,
      21,    22,    23,     0,   350,   351,   352,    24,     0,   353,
     354,   355,    25,   356,   357,   358,     0,    27,     0,     0,
       0,   359,   360,   361,   362,   363,    30,     0,     0,   283,
      33,  -350,     0,     0,   364,     0,     0,     0,     0,     0,
     365,     0,     0,   669,     0,     0,     0,   156,    10,    11,
      12,   367,   368,   670,     0,     0,     0,     0,   370,   371,
     372,     0,   891,     0,   671,   685,   686,   687,   688,   689,
     690,   691,   692,   693,   694,   695,   696,   697,   698,   699,
     700,   701,   702,   703,   704,   705,   706,   374,     0,     0,
       0,     0,     0,   118,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   817,    22,
     983,   984,   985,    12,  1235,    14,   512,   345,   346,   347,
      25,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    30,     0,     0,    32,    33,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   523,     0,     0,   348,    18,     0,     0,   891,     0,
       0,   524,     0,     0,     0,     0,    37,     0,     0,    20,
     349,    21,   525,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,   118,
       0,   118,   359,   360,   361,   362,   363,    30,     0,     0,
     986,   987,   818,     0,     0,   364,     0,     0,     0,     0,
       0,   365,     0,     0,   366,     0,     0,     0,     0,     0,
       0,     0,   367,   368,   369,     0,     0,     0,     0,   370,
     371,   372,     0,     0,     0,   373,   988,   817,     0,   282,
      10,    11,    12,     0,    14,   512,   345,   346,   347,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   374,   685,
     686,   687,   688,   689,   690,   691,   692,   693,   694,   695,
     696,   697,   698,   699,   700,   701,   702,   703,   704,   705,
     706,     0,     0,   348,    18,     0,     0,     0,     0,     0,
       0,     0,   156,    10,    11,    12,     0,     0,    20,   349,
      21,     0,    23,     0,   350,   351,   352,    24,  2031,   353,
     354,   355,    25,   356,   357,   358,     0,    27,     0,     0,
       0,   359,   360,   361,   362,   363,    30,     0,     0,   283,
      33,   818,     0,     0,   364,     0,     0,     0,     0,     0,
     365,     0,     0,   366,     0,     0,     0,     0,     0,     0,
       0,   367,   368,   369,    22,     0,     0,     0,   370,   371,
     372,     0,     0,     0,   373,    25,   817,     0,   983,   984,
     985,    12,  1345,    14,   512,   345,   346,   347,     0,    30,
       0,     0,    32,    33,     0,     0,     0,   374,     0,     0,
       0,     0,     0,     0,     0,     0,   211,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   212,     0,     0,     0,
       0,    37,   348,    18,     0,     0,     0,   213,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
       0,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   986,   987,
     818,     0,     0,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,   817,   373,   983,   984,   985,    12,     0,    14,
     512,   345,   346,   347,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,  -521,   374,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   348,    18,
       0,     0,     0,   282,    10,    11,    12,     0,     0,     0,
       0,     0,     0,    20,   349,    21,     0,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,     0,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   986,   987,   818,     0,     0,   364,
       0,     0,     0,     0,     0,   365,     0,     0,   366,     0,
       0,     0,     0,     0,     0,    22,   367,   368,   369,     0,
       0,     0,     0,   370,   371,   372,    25,     0,   668,   373,
     156,    10,    11,    12,     0,    14,   344,   345,   346,   347,
      30,     0,     0,   283,    33,     0,     0,     0,     0,     0,
       0,  1460,   374,     0,     0,     0,     0,   863,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   864,     0,     0,
       0,     0,    37,     0,   348,    18,     0,     0,   865,   156,
     142,  1367,    12,     0,     0,     0,     0,     0,     0,    20,
     349,    21,    22,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,     0,
       0,     0,   359,   360,   361,   362,   363,    30,     0,     0,
      32,    33,  -350,     0,     0,   364,     0,     0,     0,     0,
       0,   365,     0,     0,  1918,     0,     0,     0,     0,     0,
       0,    22,   367,   368,  1919,     0,     0,     0,     0,   370,
     371,   372,    25,     0,  2143,  1920,   282,    10,    11,    12,
       0,    14,   344,   345,   346,   347,    30,     0,     0,    32,
      33,     0,     0,     0,     0,     0,     0,     0,   374,     0,
       0,     0,     0,   166,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   167,     0,     0,     0,     0,    37,     0,
     348,    18,     0,     0,   168,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,    22,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,     0,     0,   359,   360,
     361,   362,   363,    30,     0,     0,   283,    33,     0,     0,
    -214,   364,     0,     0,     0,     0,     0,   365,     0,     0,
     366,     0,     0,     0,     0,     0,     0,     0,   367,   368,
     369,     0,     0,     0,     0,   370,   371,   372,     0,     0,
     817,   373,   282,    10,    11,    12,     0,    14,   512,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   374,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,     0,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,     0,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,    33,   818,     0,     0,   364,     0,     0,
       0,     0,     0,   365,     0,     0,   366,     0,     0,     0,
       0,     0,     0,     0,   367,   368,   369,     0,     0,     0,
       0,   370,   371,   372,     0,     0,   997,   373,   282,    10,
      11,    12,     0,    14,   512,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     374,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,    18,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
       0,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
       0,     0,     0,   364,  -838,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,   997,   373,   282,    10,    11,    12,     0,    14,
     512,   345,   346,   347,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   374,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   348,    18,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    20,   349,    21,     0,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,     0,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   283,    33,     0,     0,     0,   364,
       0,     0,     0,     0,     0,   365,     0,     0,   366,     0,
       0,     0,     0,     0,     0,     0,   367,   368,   369,     0,
       0,     0,     0,   370,   371,   372,     0,     0,   981,   373,
     282,    10,    11,    12,     0,    14,   512,   345,   346,   347,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -838,     0,   374,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   348,    18,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    20,
     349,    21,     0,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,     0,
       0,     0,   359,   360,   361,   362,   363,    30,     0,     0,
     283,    33,     0,     0,     0,   364,     0,     0,     0,     0,
       0,   365,     0,     0,   366,     0,     0,     0,     0,     0,
       0,     0,   367,   368,   369,     0,     0,     0,     0,   370,
     371,   372,     0,     0,   993,   373,   282,    10,    11,    12,
       0,    14,   512,   345,   346,   347,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   374,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     348,    18,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,     0,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,     0,     0,   359,   360,
     361,   362,   363,    30,     0,     0,   283,    33,     0,     0,
       0,   364,     0,     0,     0,     0,     0,   365,     0,     0,
     366,     0,     0,     0,     0,     0,     0,     0,   367,   368,
     369,     0,     0,     0,     0,   370,   371,   372,     0,     0,
    1829,   373,   282,    10,    11,    12,     0,    14,   512,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   374,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,     0,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,     0,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,    33,     0,     0,     0,   364,     0,     0,
       0,     0,     0,   365,     0,     0,   366,     0,     0,     0,
       0,     0,     0,     0,   367,   368,   369,     0,     0,     0,
       0,   370,   371,   372,     0,     0,     0,   373,   282,    10,
      11,    12,     0,    14,   512,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     374,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,    18,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
       0,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
       0,     0,     0,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   373,   282,    10,    11,    12,     0,    14,
     512,   345,   346,   347,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   374,   513,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   348,    18,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    20,   349,    21,     0,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,     0,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   283,    33,     0,     0,     0,   364,
       0,     0,     0,     0,     0,   365,     0,     0,   366,     0,
       0,     0,     0,     0,     0,     0,   367,   368,   369,     0,
       0,     0,     0,   370,   371,   372,     0,     0,     0,   373,
     282,    10,    11,    12,     0,    14,   512,   345,   346,   347,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   374,   873,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   348,    18,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    20,
     349,    21,     0,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,     0,
       0,     0,   359,   360,   361,   362,   363,    30,     0,     0,
     283,    33,     0,     0,     0,   364,     0,     0,     0,     0,
       0,   365,     0,     0,   366,     0,     0,     0,     0,     0,
       0,     0,   367,   368,   369,     0,     0,     0,     0,   370,
     371,   372,     0,     0,     0,   373,   282,    10,    11,    12,
       0,    14,   512,   345,   346,   347,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   374,  1037,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     348,    18,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,     0,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,     0,     0,   359,   360,
     361,   362,   363,    30,     0,     0,   283,    33,     0,     0,
       0,   364,     0,     0,     0,     0,     0,   365,     0,     0,
     366,     0,     0,     0,     0,     0,     0,     0,   367,   368,
     369,     0,     0,     0,     0,   370,   371,   372,     0,     0,
       0,   373,   282,    10,    11,    12,     0,    14,   512,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   374,  1057,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,     0,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,     0,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,    33,     0,     0,     0,   364,     0,     0,
       0,     0,     0,   365,     0,     0,   366,     0,     0,     0,
       0,     0,     0,     0,   367,   368,   369,     0,     0,     0,
       0,   370,   371,   372,     0,     0,     0,   373,  1660,  1661,
    1662,    12,   184,    14,   344,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     374,  1288,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,    18,  1663,     0,  1664,  1665,  1666,  1667,
    1668,  1669,  1670,  1671,  1672,  1673,    19,    20,   349,    21,
      22,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,  1674,    27,  1675,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,  1676,
    1244,     0,  1677,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   373,     0,     0,     0,  1678,  1660,  1661,
    1662,    12,   184,    14,   344,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,   374,     0,   685,   686,
     687,   688,   689,   690,   691,   692,   693,   694,   695,   696,
     697,   698,   699,   700,   701,   702,   703,   704,   705,   706,
       0,     0,   348,    18,  1663,     0,  1664,  1665,  1666,  1667,
    1668,  1669,  1670,  1671,  1672,  1673,    19,    20,   349,    21,
      22,    23,     0,   350,   351,   352,    24,  2043,   353,   354,
     355,    25,   356,   357,   358,  1674,    27,  1675,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,  1676,
       0,     0,  1677,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   373,     0,     0,     0,  1678,   282,    10,
      11,    12,   184,    14,   344,   345,   346,   347,   496,     0,
       0,     0,     0,     0,     0,     0,   374,     0,   685,   686,
     687,   688,   689,   690,   691,   692,   693,   694,   695,   696,
     697,   698,   699,   700,   701,   702,   703,   704,   705,   706,
       0,     0,   348,    18,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
      22,    23,     0,   350,   351,   352,    24,  2113,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,   733,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
       0,     0,     0,   364,     0,     0,     0,     0,     0,   365,
       0,     0,  1069,     0,     0,     0,     0,     0,     0,     0,
     367,   368,  1070,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,  1071,   737,   156,    10,    11,    12,   184,
      14,   344,   345,   346,   347,   496,     0,     0,     0,     0,
       0,     0,     0,   684,     0,     0,   374,   685,   686,   687,
     688,   689,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,   348,
      18,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    20,   349,    21,    22,    23,     0,
     350,   351,   352,    24,     0,   353,   354,   355,    25,   356,
     357,   358,     0,    27,     0,   733,     0,   359,   360,   361,
     362,   363,    30,     0,     0,    32,    33,     0,     0,     0,
     364,     0,     0,     0,     0,     0,   365,     0,     0,  1136,
       0,     0,     0,     0,     0,     0,     0,   367,   368,  1137,
       0,     0,     0,     0,   370,   371,   372,     0,     0,     0,
    1138,   737,   282,    10,    11,    12,     0,    14,   344,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
    1234,     0,     0,   374,   685,   686,   687,   688,   689,   690,
     691,   692,   693,   694,   695,   696,   697,   698,   699,   700,
     701,   702,   703,   704,   705,   706,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,    22,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,   733,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,    33,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   365,     0,     0,  1069,     0,     0,     0,
       0,     0,     0,     0,   367,   368,  1070,     0,     0,     0,
       0,   370,   371,   372,     0,     0,     0,  1071,   737,   156,
      10,    11,    12,     0,    14,   344,   345,   346,   347,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  1925,     0,
     374,   685,   686,   687,   688,   689,   690,   691,   692,   693,
     694,   695,   696,   697,   698,   699,   700,   701,   702,   703,
     704,   705,   706,   348,    18,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    20,   349,
      21,    22,    23,     0,   350,   351,   352,    24,     0,   353,
     354,   355,    25,   356,   357,   358,     0,    27,     0,   733,
       0,   359,   360,   361,   362,   363,    30,     0,     0,    32,
      33,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     365,     0,     0,  1136,     0,     0,     0,     0,     0,     0,
       0,   367,   368,  1137,     0,     0,     0,     0,   370,   371,
     372,     0,     0,     0,  1138,   737,   282,    10,    11,    12,
       0,    14,   344,   345,   346,   347,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   374,   685,   686,
     687,   688,   689,   690,   691,   692,   693,   694,   695,   696,
     697,   698,   699,   700,   701,   702,   703,   704,   705,   706,
     348,    18,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,    22,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,     0,     0,   359,   360,
     361,   362,   363,    30,     0,     0,   283,    33,     0,     0,
       0,   364,     0,     0,     0,     0,     0,   365,     0,     0,
     366,     0,     0,     0,     0,     0,     0,     0,   367,   368,
     369,     0,     0,     0,     0,   370,   371,   372,     0,     0,
       0,   373,   282,    10,    11,    12,     0,    14,   344,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   374,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,    22,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,     0,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,   625,     0,     0,     0,   626,     0,     0,
       0,     0,     0,   365,     0,     0,   366,     0,     0,     0,
       0,     0,     0,     0,   367,   368,   369,     0,     0,     0,
       0,   370,   371,   372,     0,     0,     0,   373,   282,    10,
      11,    12,     0,    14,   512,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     374,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,    18,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
      22,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
       0,     0,     0,   364,     0,     0,     0,     0,     0,   365,
       0,     0,   669,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   670,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   671,   282,    10,    11,    12,     0,    14,
     512,   345,   346,   347,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   374,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   348,    18,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    20,   349,    21,     0,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,     0,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   283,    33,     0,     0,  1783,   364,
       0,     0,     0,     0,     0,   365,     0,     0,   366,     0,
       0,     0,     0,     0,     0,     0,   367,   368,   369,     0,
       0,     0,     0,   370,   371,   372,     0,     0,     0,   373,
     282,    10,    11,    12,   184,    14,   344,   345,   346,   347,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   374,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   348,    18,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    20,
     349,    21,    22,    23,     0,   350,   351,   352,    24,     0,
     353,   354,   355,    25,   356,   357,   358,     0,    27,     0,
       0,     0,   359,   360,   361,   362,   363,    30,     0,     0,
     283,    33,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   365,     0,     0,   366,     0,     0,     0,     0,     0,
       0,     0,   367,   368,   369,     0,     0,     0,     0,   370,
     371,   372,     0,     0,     0,   373,   156,    10,    11,    12,
       0,    14,   512,   345,   346,   347,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   374,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     348,    18,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,   349,    21,    22,    23,
       0,   350,   351,   352,    24,     0,   353,   354,   355,    25,
     356,   357,   358,     0,    27,     0,     0,     0,   359,   360,
     361,   362,   363,    30,     0,     0,    32,    33,     0,     0,
       0,   364,     0,     0,     0,     0,     0,   365,     0,     0,
    1918,     0,     0,     0,     0,     0,     0,     0,   367,   368,
    1919,     0,     0,     0,     0,   370,   371,   372,     0,     0,
       0,  1920,   282,    10,    11,    12,     0,    14,   512,   345,
     346,   347,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   374,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   348,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,   349,    21,     0,    23,     0,   350,   351,   352,
      24,     0,   353,   354,   355,    25,   356,   357,   358,     0,
      27,     0,     0,     0,   359,   360,   361,   362,   363,    30,
       0,     0,   283,    33,     0,     0,     0,   364,     0,     0,
       0,     0,     0,   365,     0,     0,   366,     0,     0,     0,
       0,     0,     0,     0,   367,   368,   369,     0,     0,     0,
       0,   370,   371,   372,     0,     0,     0,   373,   282,    10,
      11,    12,     0,    14,   512,   345,   346,   347,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     374,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,    18,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,   349,    21,
       0,    23,     0,   350,   351,   352,    24,     0,   353,   354,
     355,    25,   356,   357,   358,     0,    27,     0,     0,     0,
     359,   360,   361,   362,   363,    30,     0,     0,   283,    33,
     681,     0,     0,     0,     0,     0,     0,     0,     0,   365,
       0,     0,   366,     0,     0,     0,     0,     0,     0,     0,
     367,   368,   369,     0,     0,     0,     0,   370,   371,   372,
       0,     0,     0,   682,   282,    10,    11,    12,     0,    14,
     512,   345,   346,   347,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   374,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   348,    18,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    20,   349,    21,     0,    23,     0,   350,
     351,   352,    24,     0,   353,   354,   355,    25,   356,   357,
     358,     0,    27,     0,     0,     0,   359,   360,   361,   362,
     363,    30,     0,     0,   283,    33,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   365,     0,     0,   366,     0,
       0,     0,     0,     0,     0,     0,   367,   368,   369,     0,
       0,     0,     0,   370,   371,   372,     0,     0,     0,   373,
     721,   282,    10,    11,    12,     0,    14,   512,   345,   346,
     347,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   374,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   348,    18,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      20,   349,    21,     0,    23,     0,   350,   351,   352,    24,
       0,   353,   354,   355,    25,   356,   357,   358,     0,    27,
       0,     0,     0,   359,   360,   361,   362,   363,    30,     0,
       0,   283,    33,     0,     0,     0,   626,     0,     0,     0,
       0,     0,   365,     0,     0,   366,     0,     0,     0,     0,
       0,     0,     0,   367,   368,   369,     0,     0,     0,     0,
     370,   371,   372,     0,     0,     0,   373,   282,    10,    11,
      12,     0,    14,   512,   345,   346,   347,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   374,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   348,    18,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    20,   349,    21,    22,
      23,     0,   350,   351,   352,    24,     0,   353,   354,   355,
      25,   356,   357,   358,     0,    27,     0,     0,     0,   359,
     360,   361,   362,   363,    30,     0,     0,   283,    33,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   365,     0,
       0,   669,     0,     0,     0,     0,     0,     0,     0,   367,
     368,   670,     0,     0,     0,     0,   370,   371,   372,     0,
       0,     0,   671,  1300,    10,    11,    12,     0,    14,   512,
     345,   346,   347,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   374,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   348,    18,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    20,   349,    21,     0,    23,     0,   350,   351,
     352,    24,     0,   353,   354,   355,    25,   356,   357,   358,
       0,    27,     0,     0,     0,   359,   360,   361,   362,   363,
      30,     0,     0,   283,    33,     0,     0,     0,   364,     0,
       0,     0,     0,     0,   365,     0,     0,   366,     0,     0,
       0,     0,     0,     0,     0,   367,   368,   369,     0,     0,
       0,     0,   370,   371,   372,     0,     0,     0,   373,   156,
      10,    11,    12,     0,    14,   344,   345,   346,   347,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   374,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   348,    18,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    20,   349,
      21,    22,    23,     0,   350,   351,   352,    24,     0,   353,
     354,   355,    25,   356,   357,   358,     0,    27,     0,     0,
       0,   359,   360,   361,   362,   363,    30,     0,     0,    32,
      33,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     365,     0,     0,  1918,     0,     0,     0,     0,     0,     0,
       0,   367,   368,  1919,     0,     0,     0,     0,   370,   371,
     372,     0,     0,     0,  1920,   282,    10,    11,    12,     0,
      14,   512,   345,   346,   347,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   374,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   348,
      18,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    20,   349,    21,     0,    23,     0,
     350,   351,   352,    24,     0,   353,   354,   355,    25,   356,
     357,   358,     0,    27,     0,     0,     0,   359,   360,   361,
     362,   363,    30,     0,     0,   283,    33,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   365,     0,     0,   366,
       0,     0,     0,     0,     0,     0,     0,   367,   368,   369,
       0,     0,     0,     0,   370,   371,   372,     0,     0,     0,
     373,   282,    10,    11,    12,     0,    14,   512,   345,   346,
     347,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   374,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   348,    18,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      20,   349,    21,     0,    23,     0,   350,   351,   352,    24,
       0,   353,   354,   355,    25,   356,   357,   358,     0,    27,
       0,     0,     0,   359,   360,   361,   362,   363,    30,     0,
       0,   283,    33,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   365,     0,     0,   366,     0,     0,     0,     0,
       0,     0,     0,   367,   368,   369,     0,     0,     0,     0,
     370,   371,   372,     0,     0,     0,   743,   282,    10,    11,
      12,     0,    14,   512,   345,   346,   347,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   374,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   348,    18,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    20,   349,    21,     0,
      23,     0,   350,   351,   352,    24,     0,   353,   354,   355,
      25,   356,   357,   358,     0,    27,     0,     0,     0,   359,
     360,   361,   362,   363,    30,     0,     0,   283,    33,   282,
      10,    11,    12,   184,    14,    15,     0,     0,   365,   496,
       0,   366,     0,     0,     0,     0,     0,     0,     0,   367,
     368,   369,     0,     0,     0,     0,   370,   371,   372,     0,
       0,     0,   745,     0,     0,     0,   156,    10,    11,    12,
     233,   234,   235,     0,    18,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   374,     0,     0,    20,     0,
      21,    22,     0,     0,     0,     0,     0,    24,     0,     0,
       0,     0,    25,     0,     0,     0,     0,    27,     0,   733,
       0,    18,     0,     0,     0,     0,    30,     0,     0,   283,
      33,     0,     0,     0,     0,     0,     0,     0,    22,     0,
       0,     0,     0,  1331,    24,     0,     0,     0,     0,    25,
       0,     0,     0,  1332,    27,     0,   733,     0,    37,     0,
       0,     0,     0,    30,  1333,   737,    32,    33,   156,    10,
      11,    12,   223,    14,   224,     0,     0,     0,     0,     0,
     827,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     828,     0,     0,     0,     0,    37,     0,     0,     0,     0,
       0,   829,   737,     0,     0,   156,    10,    11,    12,   184,
      14,    15,     0,    18,     0,   844,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    20,     0,    21,
      22,     0,     0,     0,     0,     0,    24,     0,     0,     0,
       0,    25,     0,     0,     0,     0,    27,     0,     0,     0,
      18,     0,     0,     0,     0,    30,     0,     0,    32,    33,
       0,     0,   225,     0,    20,     0,    21,    22,     0,     0,
       0,     0,    35,    24,     0,     0,     0,     0,    25,     0,
       0,     0,    36,    27,     0,     0,     0,    37,     0,     0,
       0,     0,    30,    38,     0,    32,    33,  1379,    10,  1164,
      12,   223,    14,   224,     0,     0,     0,     0,     0,    35,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    36,
       0,     0,     0,     0,    37,     0,     0,     0,     0,     0,
      38,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    18,     0,     0,   156,    10,    11,    12,   223,
      14,   224,     0,     0,     0,     0,    20,     0,    21,    22,
       0,     0,     0,     0,     0,    24,     0,     0,     0,     0,
      25,     0,     0,     0,     0,    27,     0,     0,     0,     0,
       0,     0,     0,     0,    30,     0,     0,    32,    33,     0,
      18,     0,     0,  1381,     0,     0,     0,     0,     0,     0,
       0,    35,     0,     0,    20,     0,    21,    22,     0,     0,
       0,    36,     0,    24,     0,     0,    37,     0,    25,     0,
       0,     0,  1168,    27,   156,    10,    11,    12,   184,    14,
      15,     0,    30,     0,     0,    32,    33,     0,     0,  1800,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    35,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    36,
       0,     0,     0,     0,    37,     0,     0,     0,     0,    18,
      38,     0,   156,    10,    11,    12,   223,    14,   224,     0,
       0,     0,     0,    20,     0,    21,    22,     0,     0,     0,
       0,     0,    24,     0,     0,     0,     0,    25,     0,     0,
       0,     0,    27,     0,     0,     0,     0,     0,     0,     0,
       0,    30,     0,     0,    32,    33,     0,    18,     0,     0,
       0,    10,    11,     0,   184,    14,    15,     0,    35,     0,
     496,    20,     0,    21,    22,     0,     0,     0,    36,     0,
      24,     0,     0,    37,     0,    25,     0,     0,     0,    38,
      27,     0,     0,     0,     0,     0,     0,     0,     0,    30,
       0,     0,    32,    33,     0,    18,     0,     0,     0,   156,
      10,    11,    12,   233,   234,   235,    35,     0,     0,    20,
       0,    21,    22,     0,     0,     0,    36,     0,    24,     0,
       0,    37,     0,     0,     0,     0,     0,    38,    27,     0,
     733,     0,     0,     0,     0,     0,     0,    30,     0,     0,
     145,   146,     0,     0,    18,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  1525,     0,     0,     0,     0,     0,
       0,    22,     0,     0,  1526,     0,     0,    24,     0,     0,
       0,     0,    25,     0,     0,  1527,   737,    27,     0,   733,
       0,     0,     0,     0,     0,     0,    30,     0,     0,    32,
      33,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   211,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   212,     0,     0,     0,     0,    37,     0,
       0,     0,     0,     0,  1803,   685,   686,   687,   688,   689,
     690,   691,   692,   693,   694,   695,   696,   697,   698,   699,
     700,   701,   702,   703,   704,   705,   706,   685,   686,   687,
     688,   689,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,     0,
       0,     0,     0,     0,  2114,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  2126,   685,   686,   687,
     688,   689,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   699,   700,   701,   702,   703,   704,   705,   706,   685,
     686,   687,   688,   689,   690,   691,   692,   693,   694,   695,
     696,   697,   698,   699,   700,   701,   702,   703,   704,   705,
     706,     0,     0,     0,     0,     0,  2127,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  2164,   685,
     686,   687,   688,   689,   690,   691,   692,   693,   694,   695,
     696,   697,   698,   699,   700,   701,   702,   703,   704,   705,
     706,   685,   686,   687,   688,   689,   690,   691,   692,   693,
     694,   695,   696,   697,   698,   699,   700,   701,   702,   703,
     704,   705,   706,     0,     0,     0,     0,     0,  2184,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  1928,
    2089,   685,   686,   687,   688,   689,   690,   691,   692,   693,
     694,   695,   696,   697,   698,   699,   700,   701,   702,   703,
     704,   705,   706
};

static const short int yycheck[] =
{
       6,     6,   166,   167,   193,   227,   191,    62,   393,   812,
     192,  1453,    86,    27,     6,   173,   687,     6,   263,    86,
     491,    49,   272,   431,   141,   431,   399,   559,   399,   149,
     431,   431,    91,  1459,    40,    40,   636,   148,   149,    67,
    1579,     6,    18,    49,   266,   624,    35,    36,    40,    53,
      26,    40,  1579,     6,  1026,     6,  1705,    49,    64,   139,
      49,  1696,   380,    72,  1699,  1700,    49,  1702,   207,    49,
     401,     6,    78,   391,   392,    40,   473,  1679,    82,   788,
    1169,    49,  1171,    13,    49,    91,     6,    40,    12,    40,
    1179,   207,   257,   675,   161,   148,    49,    73,    49,     6,
     322,   509,    91,   509,    49,    40,     9,  1922,   236,   237,
      96,  2076,   227,     3,    49,    67,   101,   123,   103,   504,
      40,     6,   237,    95,  1507,  2020,    95,  1776,    64,     0,
     515,   100,    96,    40,   123,   390,     1,   192,   393,   394,
     902,   150,    49,  1792,   123,   151,   908,   331,   332,   399,
    2178,  2093,    14,    15,   221,    40,    91,    19,   186,   151,
      99,   133,   151,   139,   150,    18,    96,     0,   794,    99,
     155,   393,  2137,   110,    14,    15,   182,   166,   167,    19,
     186,  2209,     1,  1998,  1999,   149,   151,   193,   123,   165,
     182,  1574,     1,   182,   186,    98,   796,   186,   150,   227,
     151,   207,   182,   186,  2099,   129,   186,   152,   236,   237,
     149,    21,    22,    23,   288,   151,   151,   182,   186,   149,
     110,   186,   211,   212,    13,    35,   232,   231,   199,   208,
      95,   182,   814,   186,    99,   186,    89,  2179,   266,    14,
      15,   186,    96,   232,    19,   152,   501,   182,   503,   504,
     505,   186,    99,   232,   438,   439,   927,   193,     6,   632,
       7,   632,   182,    90,     3,     4,     5,   132,    97,   122,
      14,    15,    99,  1922,    73,    19,    95,   388,   540,   186,
      99,   257,   258,   145,  1256,     0,    95,    96,   150,  1924,
      90,    90,    40,   451,   322,   149,   272,   232,  1900,    99,
     562,   421,   149,  1065,    21,   145,    23,    96,    25,  1692,
      99,    28,    29,   132,     3,     4,     5,   323,    90,    36,
      37,   150,   149,   329,    84,    72,   385,   953,   334,    83,
     956,  2146,    49,   413,   207,   388,    53,    96,   110,    56,
     329,    83,   334,   153,  1873,   334,   100,    96,   333,  1998,
    1999,     4,     5,   492,    93,    94,  1991,    96,  1887,   523,
     524,    21,    22,    23,   340,   393,    97,   373,   526,   334,
     145,     7,     8,     9,   128,    35,    45,   149,   433,   385,
     781,    99,   632,   334,   373,  1094,   128,   760,   394,   365,
     149,    97,   110,   558,   329,    84,   385,    83,   334,   334,
     149,   145,   128,  1492,    93,    94,  2221,   435,   536,   537,
     807,   808,    48,  2228,  2016,   268,  1894,   545,   128,   150,
      96,  1950,   537,  1901,   400,   431,     4,     5,   434,    65,
    1192,     9,  1194,   561,  1963,    71,   153,   413,   373,   770,
      93,    94,   128,   129,   150,    81,   501,   475,   503,   504,
     385,   110,    61,   637,   128,   440,    65,    21,  1430,    23,
      24,    97,  2001,   149,    28,   110,  2101,    96,    38,   475,
      96,    35,    13,   149,  2001,   725,   504,  1103,  1104,   153,
       3,     4,     5,   475,    96,   613,   475,   111,    97,   113,
      96,   100,   475,   153,   633,   475,   502,  2146,   128,   505,
       3,     4,     5,   509,    21,    97,    23,    24,   536,   537,
     475,    28,    90,    96,   653,    93,    94,   545,    35,  1098,
     149,  1904,    59,   149,   475,  1476,  1477,    90,   148,   107,
     501,    97,   787,   561,   523,   524,    99,   149,    90,   117,
     475,   150,  1493,   149,   548,    65,   399,     3,     4,     5,
    2185,  2186,    96,   532,    62,    96,  1156,  1028,    99,   100,
      21,    22,    23,    24,    25,   550,   149,    28,    29,   708,
      93,    94,  2221,    83,   713,    36,  2002,   716,   717,  2228,
     128,    84,   558,  1115,   639,   613,   149,    96,    49,   153,
      93,    94,  1543,    99,   117,    56,   166,   167,   168,  1225,
    1226,  1552,  1553,  1365,  1555,   149,    61,   128,   747,    90,
      65,    90,   640,   797,   117,   754,  1378,    83,   128,   492,
      21,   806,    23,    24,    59,  2008,    61,    28,    84,   110,
    1162,   110,    33,    34,    35,   620,   153,    93,    94,   149,
     149,    96,    97,   213,   889,   890,     8,     9,    96,  2091,
     895,   771,   658,   659,   660,   661,   662,    96,   778,   718,
      95,   117,   128,   129,    99,   671,    38,   778,    90,   658,
     659,   660,   661,   662,  1145,  1146,   682,    83,    59,   658,
      61,    61,   671,   149,   192,    65,    48,  1095,   110,  1095,
     110,    96,   153,   682,  1095,  1095,   946,   132,     3,   838,
      96,   149,   860,    65,  1077,   681,  1077,     3,   687,    71,
     149,   717,   718,   852,    95,   970,    96,    97,    99,    81,
     100,    83,   128,   658,   659,   660,   661,   662,   717,   718,
     736,    96,   787,   241,    59,   714,   671,   743,   922,   745,
      83,   747,   721,   149,   149,   734,   735,   682,   970,   725,
     878,   132,   153,   149,   743,  1073,   745,   100,   737,   787,
     633,    96,  1713,  1714,  2147,   779,   128,    90,   835,  1142,
      95,  1142,    83,  1535,    99,  1246,  1247,    83,    97,   632,
     653,   898,   717,   718,   149,   128,   902,   110,   773,     3,
       4,     5,   908,  1048,   166,   167,   168,    90,    21,    22,
      23,    24,    25,   779,    90,    28,    29,   132,   743,    90,
     745,    95,   788,    36,   149,    99,    96,   128,   129,    96,
    1075,    95,   128,   829,   110,   899,    49,  1077,  1360,   148,
      96,   150,   838,    56,   128,   708,    96,    83,   827,   828,
     713,   213,   818,   716,   717,     3,     4,     5,    96,    21,
     878,    23,    96,    25,    83,  1326,    28,    29,    96,   830,
      96,   111,   833,   834,    36,  1120,   837,   110,   839,   149,
      84,  1126,   149,    90,   863,   864,  1261,    49,    96,    93,
      94,   754,   128,   149,    56,    90,  1357,     9,    96,   149,
    1029,    13,  1142,   899,    96,    84,   902,    96,   751,   128,
     129,   149,   908,  1087,  1043,   149,  1045,   899,  1047,    96,
     899,   149,   883,   149,  1159,  1160,  1161,  1075,   903,   904,
     149,   906,     4,     5,  1456,   433,    21,  1112,    23,    24,
     153,   149,    90,    28,   899,    93,    94,    95,    33,    34,
      35,   149,   970,  1082,     4,     5,   899,   149,   927,  1065,
     149,  1422,    96,   523,   524,   525,   149,    96,   530,  1123,
    1124,    83,   149,   899,   899,   128,   538,    96,  1126,    83,
     946,    96,  1136,  1137,    96,   149,    98,    99,   100,    96,
      90,   153,     1,   836,     3,     4,     5,   149,    96,   111,
     153,   113,    96,   501,   149,   503,   504,    90,    96,  1470,
     110,    83,  1186,  1187,  1188,   149,   128,   129,    90,   517,
     149,    93,    94,   111,   128,   129,    12,   110,   526,  1025,
     149,  1276,   530,  1029,   149,   107,    59,   149,    61,  1284,
     538,    96,   149,    93,    94,   117,  1025,     3,     4,     5,
    1511,   149,     7,     8,     9,   149,   128,   129,     3,     4,
       5,     4,     5,  1059,  1033,   133,     9,    96,   153,  1065,
     150,  1128,    95,    97,    83,  1071,    99,     3,     4,     5,
    1059,    90,    90,  1328,    93,    94,  1192,    83,  1194,    96,
    1069,  1070,  1337,    48,   149,    96,    97,  1066,    83,  1095,
    1025,  1097,   110,   110,   111,  1169,   113,  1171,    83,   132,
      65,  1115,   128,  1177,  1080,  1179,    71,    95,  1097,   128,
     149,    99,    65,     4,     5,    83,    81,  1088,  1094,  1125,
       3,  1176,   128,  1705,  1059,    96,    97,    93,    94,    95,
      83,   639,  1138,   128,  1123,  1124,    80,    90,    93,    94,
      93,    94,  1148,   128,   129,    97,    90,  1136,  1137,    93,
      83,   523,   524,   525,   107,    83,  1029,    93,    94,  1148,
     128,   129,  1097,  1169,   117,  1171,    83,   110,  1172,  1173,
    1043,  1177,  1045,  1179,  1047,   128,   129,  1169,  1182,  1171,
    1169,   149,  1171,    95,    83,    83,  1192,  1179,  1194,    80,
    1179,     4,     5,     3,  1776,   128,     6,   120,   121,    90,
     128,    83,    93,    94,  1169,  1613,  1171,  1613,    83,  1082,
    1792,   128,   110,  1148,  1179,    83,  1169,   152,  1171,    95,
    1171,  2024,    90,    99,  1077,   100,  1179,    83,  1234,   128,
     128,   129,   129,  1169,  1169,  1171,  1171,     7,     8,     9,
    1176,  1177,   110,  1179,  1179,  1234,   128,    38,   129,  1365,
      13,   149,    65,   128,   129,    65,  1440,    99,    99,   829,
     128,    96,  1378,     3,     4,     5,    76,   128,   838,   110,
       3,  1247,   128,  1528,  1529,    96,    97,    90,    48,   787,
      93,    94,   153,    93,    94,  1270,    83,  1266,    90,  1142,
    1296,   128,    35,    36,   107,    38,    83,   107,    61,  1234,
     128,    71,    65,  1688,   117,  1294,  1295,   117,   128,  1448,
      83,    81,   122,   128,  1369,   128,  1390,  1899,   128,  1458,
      83,    64,   110,  1390,    67,  1399,   110,  1333,    99,   110,
      73,   128,   110,    96,    97,    78,    99,   100,   149,   110,
    1922,   128,  1331,  1332,    84,     3,     4,     5,    96,   857,
    1326,   149,   860,    93,    94,   128,   120,   121,    99,  1365,
      83,  1616,    90,  1352,  1353,   128,   129,    90,   876,   110,
      90,    99,  1378,   110,     8,     9,   167,   168,  1382,    96,
    1262,  1263,   110,  1265,  1388,  1389,   149,   110,  1392,  1393,
       4,     5,  1396,  1399,   111,   111,   113,   113,   110,    83,
    1371,  1372,     3,     4,     5,   128,    25,  1399,    27,    25,
    1399,    27,   110,  1487,    48,   158,  1998,  1999,  1492,  1535,
     163,   150,   213,   166,   167,   168,    84,  1398,    16,    17,
      18,    65,  1403,  1369,  1399,    93,    94,    71,  1417,  1418,
    1419,  1420,  1456,   149,   128,   129,  1399,    81,   149,  1428,
     193,   150,     3,     4,     5,     6,   199,   829,    12,   117,
    1466,    99,    90,  1399,  1399,   149,   838,   149,   211,   212,
     213,    99,     3,     4,     5,     6,    90,  1466,     9,    93,
      94,    96,   110,    84,   227,   100,  1492,     3,     4,     5,
       6,   100,    93,    94,   237,   110,   111,    25,  1687,    27,
    1492,    96,    97,  1492,  1686,   144,  1688,   146,    30,    31,
      32,  1482,  1483,   149,  1485,  1486,   117,  1488,  2189,     4,
       5,  1527,   149,   266,    46,    76,   100,  1492,  1504,  1535,
     152,  1466,   149,    84,    65,    61,  1525,  1526,   281,  1492,
    2211,   149,    93,    94,   149,    76,  1550,  1551,    96,    97,
       3,     4,     5,  1123,  1124,  1125,  1492,  1492,   111,    90,
      76,   110,    93,    94,  2146,    83,  1136,  1137,  1138,  1540,
    1541,   122,    90,  1579,  1579,  1448,   107,    93,    94,   322,
     323,   110,   373,    96,    97,  1458,   117,  1579,    96,    97,
    1579,   122,   110,    90,     3,     4,     5,   128,  1168,   110,
    1579,    97,    59,     3,    61,    90,   122,  1613,    93,    94,
     128,  1996,  1120,   152,  1579,    90,    90,   152,  1126,   100,
      83,     8,   107,   150,    99,    99,  1579,    96,  1579,   149,
     373,  1686,   117,  1688,    83,   110,   110,    90,    95,  2221,
      93,    94,    99,   149,  1579,   149,  2228,     3,     4,     5,
     393,   394,     3,     4,     5,  1626,  1627,  1628,    90,  1635,
    1688,    16,    17,    18,  1803,   128,   129,    99,  1176,   149,
      83,   462,   463,  1679,    90,   132,   142,   143,   110,   128,
     129,  1687,     4,     5,    93,    94,   149,  1679,    96,    97,
    1679,   434,   435,  1672,    96,    97,   150,  1673,  1674,   128,
     149,    90,   917,   918,   919,    83,   211,   212,   128,   452,
      99,    90,   455,   110,  1679,   128,   129,    71,   461,   462,
     463,   110,    96,    97,   467,   100,  1679,   100,  1679,    97,
     100,  2202,   149,   524,   525,   149,   149,    93,    94,  1710,
    1711,   100,    93,    94,  1679,  1930,   117,   118,   119,   120,
     121,  1123,  1124,  1125,  1918,  1919,   149,   149,   501,   502,
     100,   504,   505,   111,  1136,  1137,  1138,   152,    90,    96,
     153,    93,    94,   149,  1996,   518,     3,   149,   521,   111,
     523,   524,   525,   150,   149,   107,   529,     3,     4,     5,
       6,   149,   535,   111,   537,   117,  1168,   540,  1802,   111,
       4,     5,     3,     4,     5,     9,  1785,   129,     3,     4,
       5,     6,   111,  1789,  1790,   149,   149,    95,   561,   562,
    1328,    96,    99,    21,    22,    23,    24,    25,    99,  1337,
      28,    29,   149,    99,   149,    33,    34,    70,    36,   149,
     149,   152,     3,     4,     5,   150,   149,  1355,  1356,   129,
     152,    49,   122,   110,     3,     4,     5,   149,    56,    83,
      76,  1369,   103,   104,   105,   106,   107,   149,    84,   152,
     613,   150,    97,   149,   115,   116,   117,    93,    94,   670,
     671,    76,     3,     4,     5,   149,    90,   149,  1894,    93,
      94,   682,    93,    94,  1900,  1901,   149,   640,    93,    94,
      86,   117,   149,   107,   149,  1894,   122,    95,  1900,   149,
     100,  1900,  1901,   117,  1920,  1894,   142,   143,   144,   149,
     146,  1900,  1901,    99,   157,   129,   669,   670,   671,  1918,
    1919,  1920,    93,    94,   120,  1900,  1912,    83,   149,   682,
     173,    90,  1997,   128,    93,    94,   128,  1900,   128,  1900,
     128,   150,   743,   149,   745,   153,   747,   626,   149,  1894,
    1468,     8,   148,   152,    97,  1900,  1901,   131,  1996,    90,
     207,   152,    93,    94,   149,   161,  1484,   123,   124,   149,
     149,   127,   128,   129,   130,  1920,   149,     3,     4,     5,
       6,   734,   735,   736,   149,  2001,  2001,   230,   149,    96,
     743,    96,   745,    99,   747,    90,   239,   149,   149,  2001,
    2016,   149,  2001,   518,    83,    99,   521,   152,   523,   524,
    1528,  1529,  2001,   256,  2016,   149,   100,  2016,    67,   149,
     535,   149,   149,   149,   267,   221,  2001,  2016,   829,   149,
     152,     7,     8,     9,   787,   788,   149,   838,  2001,   128,
    2001,  2016,     1,    12,     3,     4,     5,   149,   149,   153,
      76,   852,    99,  2016,   153,  2016,  2001,   153,    84,    99,
     153,   257,   153,   864,   865,   153,  2080,    93,    94,    97,
    2086,  2016,    48,   153,   827,   828,   829,   830,   153,    97,
     833,   834,     9,    97,   837,   838,   839,  2086,    50,    65,
      53,   117,   288,    95,   149,    71,   122,  2086,  1616,   852,
       3,     3,     4,     5,     6,    81,   149,   128,   861,   862,
     863,   864,   865,   128,    95,   128,   869,   364,   128,   128,
     128,    97,   128,   128,    83,   117,   118,   119,   120,   121,
     883,    90,   128,   128,    93,    94,    95,    96,   128,  2155,
     128,  2086,   128,   128,     3,     4,     5,   875,     7,     8,
       9,   128,  2141,   128,   128,   128,  2155,   128,  2139,    97,
     128,   128,   128,  2149,    97,   100,  2155,    90,  1686,   128,
    1688,   128,   128,   901,    76,   128,   148,   138,   128,   907,
     128,    83,     4,     5,  2173,   128,   128,     9,    90,   128,
      95,    93,    94,    51,   128,   149,   128,   128,   128,   442,
    2189,    97,   398,   128,   128,   107,    65,   128,   451,   128,
    2155,   128,    71,   128,   128,   117,   128,   970,   128,   128,
     122,    90,  2211,  1803,    12,  2214,   128,   129,    36,   128,
     150,    90,    99,   149,    93,    94,    95,    99,   149,    99,
     483,   149,    97,    65,   491,   492,   925,   926,   444,   928,
     929,   930,   931,   932,   933,   934,   935,   936,   937,   938,
     939,   940,   941,   942,   943,   944,   945,   153,    90,  1070,
    1071,    93,    94,   153,   517,   149,    19,   149,    99,   149,
     139,   140,   141,   526,    99,   107,     3,     4,     5,     6,
      97,   145,   149,   149,    38,   117,  1049,   150,    97,  1052,
      97,   153,   153,   153,   547,   128,   128,    96,   100,   149,
    1063,   152,   827,   828,    12,    97,  1069,  1070,  1071,    97,
      97,   149,    12,  1124,  1125,   149,   128,    12,    97,    97,
      97,   574,  1060,   149,  1062,  1088,  1137,  1138,  1918,  1919,
    1920,  1094,    97,   149,     0,   187,   861,   862,   863,   864,
     158,     3,    40,  1790,   869,   163,   771,   186,  1095,    76,
     475,  1929,   558,   182,  1177,  1456,   105,  1168,  1121,  1122,
    1123,  1124,  1125,    90,   154,  1775,    93,    94,  1131,  2155,
      97,   325,    99,  1136,  1137,  1138,   633,     3,     4,     5,
     107,     7,     8,     9,  1080,   649,  1149,  1150,  1151,  1360,
     117,   818,  1162,  1399,   212,   122,   653,  1177,  1489,   656,
     657,   128,     3,     4,     5,  1168,     7,     8,     9,   651,
     616,  1803,  1101,   718,  1177,   218,     3,     4,     5,     6,
     961,   139,  1574,   680,   681,   631,   388,   684,   685,   686,
    1508,   688,   689,   690,   691,   692,   693,   694,   695,   696,
     697,   698,   699,   700,   701,   702,   703,   704,   705,   706,
     675,   708,  2001,  1191,  2024,  1193,   713,  2013,  2016,   716,
     717,  2177,  1466,   281,    65,   847,  1733,    93,    94,  1997,
      71,     1,  1965,     3,     4,     5,     6,  1697,     8,  1766,
    1742,  1698,  1865,  2019,  1295,  1296,  1892,  1849,  1749,    76,
     747,    -1,    93,    94,  2075,    -1,    -1,   754,    -1,    -1,
      -1,    21,    22,    23,    24,    25,    93,    94,    28,    29,
      -1,    -1,    -1,    33,    34,    -1,    36,    -1,    -1,    -1,
      -1,  1332,  1333,    -1,   730,    -1,  1918,  1919,  1920,    49,
      -1,  1294,  1295,  1296,    -1,   122,    56,     3,     4,     5,
       6,    -1,    -1,    -1,   750,    -1,    76,    -1,  1286,    -1,
      -1,    -1,    -1,    -1,    84,    -1,    -1,    -1,    -1,    -1,
      90,   818,    -1,    93,    94,    -1,  1329,  1330,  1331,  1332,
    1333,    -1,    -1,  1336,   115,   116,   117,   118,   119,   120,
     121,   838,   115,   116,   117,   118,   119,   120,   121,  1352,
    1353,  1354,   122,    -1,    -1,   852,  1121,  1122,  1123,  1124,
      -1,    -1,    -1,    -1,   857,    -1,  1131,   860,  1371,  1372,
      76,  1136,  1137,    -1,    -1,    -1,    -1,    -1,    84,    -1,
      -1,    -1,    -1,   876,  1149,  1150,  1151,    93,    94,   835,
      -1,    -1,    -1,   153,   452,  1398,    -1,   455,    -1,    -1,
    1403,    -1,     3,     4,     5,     6,    -1,    -1,    -1,   467,
      -1,   117,     4,     5,    -1,    -1,   122,     9,    -1,    -1,
     866,    -1,   290,   291,   292,   293,   294,   295,    -1,   297,
     298,   299,   300,   301,   302,   303,   304,   305,   306,   307,
     308,   309,   310,   311,   312,   313,   314,   315,   316,   317,
      -1,   319,   320,     3,     4,     5,     6,    -1,  1461,  1462,
     518,  1464,   959,   521,    -1,    -1,  1444,    -1,    -1,    -1,
      -1,    -1,    -1,    65,   920,    76,    -1,   535,    -1,  1482,
    1483,    -1,  1485,  1486,  1413,  1488,    20,    -1,    -1,   123,
      -1,   988,    93,    94,  1472,    -1,    -1,    -1,    90,    33,
    1478,    93,    94,    37,    38,    39,    40,    41,    42,    43,
      44,    45,    -1,    -1,    -1,   107,  1494,  1495,    -1,    53,
      -1,   122,  1525,  1526,  1527,   117,    76,     3,     4,     5,
       6,  1028,  1029,     9,    84,    -1,   128,  1540,  1541,    -1,
    1518,    -1,    -1,    93,    94,    -1,  1043,    -1,  1045,    -1,
    1047,    -1,    -1,    -1,    -1,  1048,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,  1329,  1330,  1331,  1332,    -1,    -1,
      -1,  1336,   122,   207,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,  1075,  1561,  1562,  1082,    -1,  1352,  1353,    65,
       3,     4,     5,     6,    -1,    -1,    -1,    -1,   232,    -1,
      76,     4,     5,    -1,    -1,     8,     9,    83,    -1,    -1,
      -1,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,   734,
     735,    -1,    -1,  1626,  1627,  1628,    -1,  1120,    -1,    -1,
    1076,   107,  1078,  1126,    -1,    -1,    -1,    -1,    -1,  1617,
    1618,   117,  1620,    -1,    -1,    48,   122,    -1,  1145,  1146,
      -1,    -1,   128,   129,    -1,     4,     5,    -1,    -1,    62,
       9,    64,    65,    76,    -1,    -1,    -1,    -1,    71,    -1,
    1167,     6,    -1,    -1,    -1,    -1,    -1,    90,    81,    -1,
      93,    94,  1128,    18,  1687,  1688,    99,    90,  1134,    -1,
      93,    94,    95,    28,   107,   329,  1461,  1462,    -1,  1464,
      35,    36,    -1,    38,   117,    40,    -1,  1710,  1711,   122,
      -1,    -1,   827,   828,    49,   128,    65,    -1,    -1,    -1,
     588,    -1,    -1,    -1,    -1,   128,    -1,    62,    -1,    64,
      -1,    -1,    -1,    -1,    83,    -1,    -1,    -1,    73,   373,
      -1,    90,   610,    78,    93,    94,    -1,    -1,    -1,  1246,
    1247,   619,  1803,  1250,    89,    -1,    91,    -1,   107,    -1,
    1525,  1526,    -1,     3,     4,     5,     6,    -1,   117,    -1,
     828,    -1,    -1,    -1,    -1,     3,     4,     5,     6,   128,
     129,    -1,    -1,  1276,    -1,    -1,    -1,   122,    -1,    -1,
      -1,  1284,    -1,    -1,    -1,    -1,    -1,   431,    -1,    -1,
    1803,    -1,    -1,   861,   862,     3,     4,     5,    -1,     7,
      -1,   869,    -1,    -1,   149,    -1,   151,     3,     4,     5,
       6,    -1,   157,   158,    88,    -1,    -1,   162,   163,  1326,
      -1,   166,   167,   168,    -1,  1328,    76,    -1,     3,     4,
       5,     6,    -1,    -1,  1337,    -1,  1824,   182,    76,    -1,
      90,   186,    -1,    93,    94,    -1,    84,   192,   193,    -1,
    1357,    -1,  1355,  1356,    -1,    93,    94,    -1,  1919,  1920,
      -1,    -1,    -1,    -1,    72,   509,   211,   212,   213,    65,
      -1,    -1,   122,    -1,  1381,    -1,    -1,    -1,     4,     5,
      76,    -1,    90,     9,   122,    93,    94,    83,    -1,    -1,
      -1,    -1,    -1,    -1,    90,    -1,   241,    93,    94,    -1,
      -1,    76,   176,    -1,    -1,  1918,  1919,  1920,    -1,    84,
      -1,   107,    -1,   258,    -1,  1422,    -1,    -1,    93,    94,
      -1,   117,    -1,   268,  1049,    -1,   122,  1052,    -1,    -1,
      -1,    -1,   128,   129,  1390,   209,   281,    -1,  1063,    65,
      -1,  1448,   117,    -1,  1069,  1070,    -1,   122,   222,    -1,
      -1,  1458,    -1,    -1,    -1,    -1,    -1,    83,    -1,    -1,
      -1,    -1,    -1,  1470,    90,  1468,    -1,    93,    94,    -1,
      -1,     4,     5,  1480,  1481,    -1,     9,    -1,   323,   324,
      -1,   107,    -1,  1996,   329,    -1,    -1,    -1,    -1,   334,
      -1,   117,    -1,    -1,    -1,    -1,  1121,  1122,  1123,  1124,
      -1,    -1,   128,   129,  1511,    -1,  1131,  1463,    -1,    -1,
      -1,  1136,  1137,    -1,   658,   659,   660,   661,   662,    -1,
      -1,     3,     4,     5,     6,  1528,  1529,   671,    -1,    -1,
      -1,  1487,    65,    -1,    -1,   913,   914,    -1,   682,  1546,
     385,    -1,    -1,   388,     6,   390,    -1,    -1,   393,   394,
      83,    -1,    -1,  1121,  1122,    -1,    -1,    90,    -1,    -1,
      93,    94,    -1,  1131,     3,     4,     5,     6,    -1,    -1,
      -1,    -1,    -1,   717,   107,    -1,   421,    -1,    40,    -1,
      -1,    -1,    -1,    -1,   117,    -1,   431,    49,   433,   434,
      -1,    73,    74,    -1,    76,   128,   129,   442,    -1,   743,
      62,   745,    64,    -1,    -1,    -1,    -1,   452,    90,    -1,
     455,    93,    94,  1616,    -1,    -1,    -1,  1624,  1625,    -1,
      -1,    -1,   467,    -1,    -1,    -1,  2139,    -1,    -1,    -1,
     475,    -1,    -1,    -1,    -1,    -1,    -1,    76,    -1,    -1,
     122,    -1,    -1,  1918,  1919,    84,     3,     4,     5,     6,
      -1,    -1,     9,    -1,    93,    94,   501,   502,   503,   504,
     505,  1668,    -1,    -1,   509,    -1,    -1,     4,     5,  1294,
    1295,    -1,   517,   518,    -1,    -1,   521,    -1,   523,   524,
     525,   526,    -1,   122,    -1,   530,    -1,    -1,    -1,   151,
     535,    -1,    -1,   538,  1701,   157,     3,     4,     5,     6,
      -1,    -1,    -1,    -1,  1329,  1330,  1331,  1332,    65,  1716,
      -1,  1336,     3,     4,     5,     6,    -1,    -1,    -1,    76,
     182,    -1,    -1,    -1,   186,    -1,    83,    -1,    65,   574,
     192,   193,    -1,    90,    -1,    -1,    93,    94,    -1,     4,
       5,    -1,    -1,    -1,     9,    -1,    83,    -1,    -1,    -1,
     107,    -1,    -1,    90,   528,    -1,    93,    94,   902,   533,
     117,  1329,  1330,    -1,   908,   122,    73,    74,  1336,    76,
     107,   128,   129,   618,    -1,    -1,    -1,    -1,    -1,   241,
     117,    -1,    -1,    90,    -1,    76,    93,    94,    -1,    -1,
     564,   128,   129,    84,   639,    -1,  1803,   571,    -1,    -1,
      65,    -1,    93,    94,     1,    -1,     3,     4,     5,     6,
       7,     8,     9,    -1,   659,   660,   661,   662,    83,    -1,
      -1,    -1,    -1,    -1,    -1,    90,   117,    -1,    93,    94,
    1837,   122,    -1,    -1,    -1,    -1,  1461,  1462,    -1,  1464,
     614,   615,   107,   617,  1851,    -1,    -1,    -1,    -1,    -1,
      -1,    48,   117,    -1,    -1,    -1,    -1,    -1,    -1,     3,
       4,     5,     6,   128,   129,    62,    -1,    64,    65,    66,
      -1,    -1,   334,   718,    71,   720,    -1,    -1,    -1,    76,
      -1,  1025,    -1,    -1,    81,    -1,   731,    84,    -1,   734,
     735,   736,    -1,    90,    -1,  1902,    93,    94,    -1,    -1,
    1525,  1526,   747,    -1,    -1,    -1,   751,    -1,     4,     5,
     107,    -1,     8,     9,    -1,  1059,    -1,    -1,    -1,    -1,
     117,  1065,    -1,    -1,    -1,   122,   771,    -1,    -1,    -1,
      -1,   128,    76,   778,    -1,    -1,   133,    -1,    -1,    -1,
      84,    -1,   787,   788,    -1,  1952,  1953,    -1,    -1,    93,
      94,  1095,    48,  1097,    -1,    -1,    -1,    -1,    -1,  1966,
    1967,    -1,    -1,    -1,    -1,   739,   740,    -1,    -1,    65,
      -1,   433,    -1,   117,   748,    71,    -1,    -1,   122,    -1,
     442,    -1,   827,   828,   829,    81,    -1,    83,    -1,    -1,
      -1,   836,    -1,   838,    90,    -1,    -1,    93,    94,    -1,
      -1,    -1,    -1,    -1,  1148,     4,     5,    -1,    -1,    -1,
       9,   107,   857,   475,    -1,   860,   861,   862,   863,   864,
     865,   117,    -1,    -1,   869,    -1,    -1,    -1,    -1,    -1,
      -1,   876,   128,   129,    -1,    -1,    -1,    -1,    -1,   501,
     502,   503,   504,     3,     4,     5,     6,   509,  1192,     9,
    1194,    -1,    -1,    -1,   899,   517,    -1,   902,   832,    -1,
      -1,    -1,    -1,   908,  2071,    -1,    65,    -1,   530,    -1,
      -1,    -1,   917,   918,   919,    -1,   538,   390,    -1,    -1,
     393,   394,    -1,     3,     4,     5,     6,     7,     8,     9,
    1234,    90,    -1,   867,    93,    94,   113,   114,   115,   116,
     117,   118,   119,   120,   121,    65,    -1,    -1,   107,    -1,
      -1,    -1,   574,    -1,    -1,    -1,    76,  2124,   117,    -1,
      -1,    -1,    -1,    83,    -1,   970,    -1,    -1,    48,   128,
      90,    -1,    -1,    93,    94,   909,    -1,   911,    -1,    -1,
      -1,    -1,    62,    -1,    64,    65,    66,   107,    -1,    -1,
      -1,    71,    -1,    -1,    -1,    -1,    76,   117,     4,     5,
      -1,    81,   122,     9,    84,    -1,    -1,    -1,   128,   129,
      90,    -1,    -1,    93,    94,    -1,    -1,   639,     4,     5,
    1025,    -1,     8,     9,    -1,    -1,    -1,   107,   501,    -1,
     503,   504,   505,    -1,    -1,  2202,    -1,   117,    -1,    -1,
      -1,    -1,   122,  1048,  1049,    -1,    -1,  1052,   128,    -1,
      -1,    -1,    -1,   133,  1059,    -1,    -1,    -1,  1063,    65,
    1065,  1365,    48,    -1,  1069,  1070,  1071,    -1,    -1,    -1,
    1075,    -1,  1077,    -1,  1378,    -1,    62,    83,    64,    65,
      -1,    -1,    -1,    -1,    90,    71,    -1,    93,    94,    -1,
    1095,    -1,  1097,    -1,    -1,    81,    -1,  1031,  1032,    -1,
    1034,   107,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,
      -1,   117,    -1,    -1,    -1,  1120,  1121,  1122,  1123,  1124,
    1125,  1126,   128,   129,    -1,    -1,  1131,    -1,    -1,    -1,
    1064,  1136,  1137,  1138,    -1,    -1,    -1,  1142,    -1,    -1,
      -1,    -1,   128,  1148,  1149,  1150,  1151,    -1,    -1,    -1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,    -1,
    1165,    -1,  1466,  1168,  1169,   787,  1171,    -1,    -1,    -1,
      -1,  1176,  1177,    -1,  1179,    -1,     1,    -1,     3,     4,
       5,     6,     7,     8,     9,    -1,    -1,  1192,    -1,  1194,
     106,   107,   108,   109,   110,  1129,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,    -1,    -1,    -1,     4,
       5,    -1,    -1,     8,     9,    -1,    -1,    -1,    -1,    -1,
      -1,    73,    74,    48,    76,    -1,    -1,    -1,    -1,  1234,
      -1,  1535,    -1,    -1,    -1,   857,    -1,    62,    90,    64,
      65,    93,    94,    -1,    -1,    -1,    71,    -1,    -1,    -1,
      -1,    76,    -1,    48,   876,    -1,    81,  1262,  1263,    84,
    1265,   734,   735,   736,    -1,    90,    -1,    -1,    93,    94,
      65,  1276,    97,    -1,   747,    -1,    71,   899,    -1,  1284,
      -1,    -1,   107,    -1,    -1,    -1,    81,    -1,    83,  1294,
    1295,  1296,   117,    -1,    -1,    90,    -1,   122,    93,    94,
      -1,     4,     5,   128,     7,     8,     9,    -1,    -1,  1613,
      -1,    -1,   107,    -1,   787,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   117,  1328,  1329,  1330,  1331,  1332,  1333,    -1,
      -1,  1336,  1337,   128,   129,     3,     4,     5,     6,    -1,
      -1,     9,    -1,    -1,    -1,    48,  1280,  1352,  1353,  1354,
    1355,  1356,    -1,    -1,   827,   828,   829,    -1,    -1,    62,
    1365,    64,    65,    -1,  1369,   838,    -1,    -1,    71,    -1,
      -1,    -1,    -1,  1378,    -1,    -1,    -1,    -1,    81,    -1,
       6,    84,     3,     4,     5,     6,  1391,    90,     9,    -1,
      93,    94,    18,    -1,  1399,    -1,    -1,    65,    -1,    -1,
    1334,    27,    28,     4,     5,    -1,    -1,    -1,    76,    35,
      36,    -1,    38,    -1,    40,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    90,    49,    -1,    93,    94,    -1,    -1,    -1,
    1364,    -1,    -1,    -1,    -1,    -1,    62,    -1,    64,   107,
      -1,    -1,    -1,  1377,    65,    -1,    -1,    73,    -1,   117,
      -1,    -1,    78,    -1,   122,    76,  1461,  1462,    -1,  1464,
     128,  1466,    83,  1468,    65,    91,    -1,    -1,    -1,    90,
    1404,    -1,    93,    94,  1408,    -1,    -1,    -1,    -1,  1484,
      -1,    -1,    83,    -1,  1489,    -1,   107,  1492,    -1,    90,
      -1,    -1,    93,    94,    -1,    -1,   117,   970,  1120,    -1,
      -1,   122,    -1,    -1,    -1,    -1,   107,   128,   129,    -1,
      -1,    -1,  1446,    -1,    -1,    -1,   117,    -1,    -1,    -1,
    1525,  1526,  1527,  1528,  1529,   151,    -1,   128,   129,    -1,
    1535,   157,   158,    -1,    -1,    -1,    -1,   163,    -1,    -1,
     166,   167,   168,    -1,    -1,    -1,    -1,  1169,    -1,  1171,
      -1,    -1,    -1,    -1,  1176,  1177,   182,  1179,    -1,    -1,
     186,    -1,  1496,  1497,    -1,    -1,   192,   193,    -1,    -1,
       3,     4,     5,     6,    -1,  1048,  1049,    -1,    -1,  1052,
      -1,    -1,    -1,    -1,    -1,   211,   212,   213,    -1,    -1,
    1063,    -1,    -1,    -1,    -1,    -1,  1069,  1070,  1071,  1533,
    1534,    -1,  1075,    -1,    -1,  1539,    -1,    -1,  1613,    -1,
      -1,  1616,    -1,    -1,    -1,   241,  1920,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,     1,
      -1,     3,     4,     5,     6,     7,     8,     9,    -1,    -1,
      -1,    -1,    -1,    76,    -1,    -1,    -1,  1120,  1121,  1122,
    1123,  1124,  1125,  1126,    -1,   281,    -1,    90,  1131,    -1,
      93,    94,    -1,  1136,  1137,  1138,    99,     3,     4,     5,
       6,    -1,    -1,     9,   107,    -1,    48,    -1,    -1,    -1,
      -1,  1686,  1687,  1688,   117,    -1,    -1,    -1,    -1,   122,
      62,    -1,    64,    65,    66,   128,    -1,   323,   324,    71,
      72,    -1,    -1,   329,    76,    -1,  1328,    -1,   334,    81,
      82,    -1,    84,    -1,    -1,  1337,    -1,    -1,    90,    -1,
      -1,    93,    94,    -1,    -1,    97,    -1,    99,    -1,    65,
      -1,    -1,    -1,    -1,    -1,   107,    -1,    -1,    -1,    -1,
      76,    -1,    -1,    -1,    -1,   117,    -1,  1369,    -1,    -1,
     122,    -1,    -1,    -1,    90,    -1,   128,    93,    94,   385,
      -1,    -1,   388,    -1,   390,    -1,    -1,   393,   394,    -1,
      -1,   107,    -1,   399,  1708,    -1,    -1,  1399,   150,    -1,
      -1,   117,    -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,
      -1,    -1,   128,    -1,    -1,   421,    -1,    -1,  1803,    -1,
      -1,    -1,    -1,  1276,    -1,   431,    -1,   433,   434,    -1,
      -1,  1284,     3,     4,     5,     6,   442,    -1,    -1,    -1,
      -1,  1294,  1295,  1296,    -1,    -1,   452,    -1,    -1,   455,
      -1,    -1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,   467,    -1,    -1,    -1,     3,     4,     5,     6,   475,
      -1,     9,    -1,    -1,    -1,  1328,  1329,  1330,  1331,  1332,
    1333,    -1,  1484,  1336,  1337,    -1,    -1,  1489,    -1,    -1,
    1492,    -1,    -1,    -1,    -1,   501,   502,   503,   504,   505,
      -1,    -1,    -1,   509,    -1,    76,    -1,    -1,    -1,    -1,
      -1,   517,   518,    84,    -1,   521,    -1,   523,   524,   525,
     526,    -1,    93,    94,   530,    -1,    76,    65,    -1,   535,
      -1,    -1,   538,  1918,  1919,  1920,    -1,    -1,    76,    -1,
      90,    -1,    -1,    93,    94,    83,   117,    97,    -1,    -1,
      -1,   122,    90,   559,    -1,    93,    94,   107,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   117,   574,   107,
      -1,    -1,   122,     3,     4,     5,     6,    -1,   128,   117,
      -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,    -1,    -1,
     128,   129,    -1,    -1,   329,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,  1756,    -1,    -1,    -1,    -1,  1461,  1462,
      -1,  1464,  1997,    -1,    -1,   350,   351,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   632,    -1,    -1,    -1,
      -1,   366,    -1,   639,   369,   370,    -1,    -1,    -1,    -1,
     375,   376,    -1,    -1,    -1,    -1,    76,    -1,    -1,    -1,
      -1,   386,    -1,   659,   660,   661,   662,    -1,    -1,    -1,
      90,    -1,    -1,    93,    94,    -1,    -1,    -1,    -1,    99,
      -1,    -1,  1525,  1526,  1527,  1528,  1529,   107,    -1,  1832,
    1833,  1834,    -1,  1836,  1686,  1687,  1688,   117,    -1,    -1,
      -1,    -1,   122,    -1,    -1,    -1,    -1,    -1,   128,     3,
       4,     5,     6,     7,     8,     9,    -1,    -1,    -1,    13,
      -1,    -1,   718,    -1,   720,    -1,    -1,  1870,  1871,  1872,
      -1,    -1,    -1,  1876,  1877,  1878,    -1,    -1,   734,   735,
     736,  1884,  1885,  1886,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   747,    -1,    -1,    48,    -1,     3,     4,     5,     6,
      -1,    -1,    -1,    -1,   760,    -1,    -1,    -1,    62,    -1,
      64,    65,    -1,  1616,    -1,   771,    -1,    71,    -1,    -1,
      -1,    -1,    76,   779,    -1,    -1,    -1,    81,    -1,    83,
      -1,   787,   788,    -1,    -1,    -1,    90,    -1,    -1,    93,
      94,    -1,  1945,  1946,  1947,  1948,  1949,    -1,  1951,    -1,
      -1,    -1,    -1,   107,    -1,  1958,  1959,  1960,  1961,  1962,
      -1,  1964,    -1,   117,    -1,    -1,    -1,    -1,   122,    76,
      -1,   827,   828,   829,   128,   129,    -1,    -1,    -1,    -1,
      -1,    -1,   838,    90,    -1,    -1,    93,    94,    -1,    -1,
      97,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     107,   857,    -1,    -1,   860,   861,   862,   863,   864,   865,
     117,    -1,    -1,   869,    -1,   122,    -1,    -1,    -1,    -1,
     876,   128,    -1,    -1,    -1,    -1,  2029,    -1,    -1,    -1,
      -1,    -1,     1,    -1,     3,     4,     5,     6,     7,     8,
       9,   626,    -1,   899,    -1,    -1,   902,    -1,    -1,    -1,
      -1,    -1,   908,    20,    -1,    -1,    -1,    -1,  2061,    -1,
      -1,   917,   918,   919,    -1,    -1,    33,  2070,    -1,    -1,
      37,    -1,    39,    40,    41,    42,    43,    44,    45,    48,
      -1,    -1,    -1,    -1,   669,   670,    53,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    -1,    64,    65,    66,     3,     4,
       5,     6,    71,    72,     9,     4,     5,    76,  2111,     8,
       9,    -1,    81,    82,   970,    84,    -1,    -1,    -1,  2122,
      -1,    90,    -1,    -1,    93,    94,    -1,    -1,    97,    -1,
      99,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,  1997,    -1,    -1,   117,    48,
      -1,    -1,    -1,   122,    -1,    -1,    -1,    -1,    -1,   128,
      65,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,  1025,
      -1,    76,    71,    -1,    -1,    -1,    -1,    -1,    83,    -1,
      -1,   150,    81,    -1,    83,    90,    -1,    -1,    93,    94,
      -1,    90,  1048,  1049,    93,    94,  1052,    -1,    -1,    -1,
      -1,    -1,   107,  1059,    -1,    -1,    -1,  1063,   107,  1065,
      -1,    -1,   117,  1069,  1070,  1071,    -1,   122,   117,  1075,
      -1,  1077,    -1,   128,   129,    -1,    -1,    -1,    -1,   128,
     129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,  1095,
      -1,  1097,   105,   106,   107,   108,   109,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,  1115,
      -1,    -1,    -1,    -1,  1120,  1121,  1122,  1123,  1124,  1125,
    1126,    -1,    -1,    -1,    -1,  1131,    -1,    -1,    -1,    -1,
    1136,  1137,  1138,    -1,    -1,    -1,  1142,    -1,    -1,    -1,
      -1,    -1,  1148,  1149,  1150,  1151,    -1,    -1,    -1,     3,
       4,     5,     6,    -1,    -1,    -1,  1162,    -1,    -1,  1165,
      -1,    -1,  1168,  1169,    -1,  1171,    -1,    -1,    -1,    -1,
    1176,  1177,   110,  1179,   112,   113,   114,   115,   116,   117,
     118,   119,   120,   121,    -1,    -1,  1192,    -1,  1194,    -1,
     925,   926,    -1,   928,   929,   930,   931,   932,   933,   934,
     935,   936,   937,   938,   939,   940,   941,   942,   943,   944,
     945,    65,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    76,    -1,    -1,    -1,    -1,    -1,  1234,    83,
      -1,    -1,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,     4,
       5,     6,    -1,   107,    -1,    -1,  1262,  1263,    -1,  1265,
      -1,    -1,     6,   117,    -1,    -1,    -1,    -1,   122,    -1,
    1276,    -1,    -1,    -1,   128,   129,    -1,    -1,  1284,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,  1294,  1295,
    1296,    35,    36,    -1,    38,    -1,    40,    -1,    -1,    -1,
      -1,    -1,  1037,    -1,    -1,    49,    -1,     3,     4,     5,
       6,     7,     8,     9,    -1,    -1,    -1,    -1,    62,    -1,
      64,    76,  1328,  1329,  1330,  1331,  1332,  1333,    -1,    84,
    1336,  1337,    -1,    -1,  1069,  1070,    -1,    -1,    93,    94,
      -1,    -1,    86,    -1,    -1,    89,  1352,  1353,  1354,  1355,
    1356,    -1,    48,    -1,  1360,    -1,    -1,    -1,    -1,  1365,
      -1,    -1,   117,  1369,    -1,    -1,  1101,   122,    -1,    65,
      -1,    -1,  1378,    -1,    -1,    71,    -1,    -1,    -1,    -1,
      76,    -1,    -1,    -1,    -1,    81,    -1,    83,    -1,    -1,
      -1,    -1,    -1,  1399,    90,    -1,    -1,    93,    94,    -1,
      -1,  1136,  1137,    -1,   148,   149,    -1,   151,    -1,    -1,
      -1,   107,    -1,   157,   158,    -1,    -1,   161,   162,   163,
      -1,   117,   166,   167,   168,    -1,   122,    -1,    -1,   173,
      -1,    -1,   128,   129,    -1,    -1,    -1,    -1,   182,    -1,
      -1,    -1,   186,    -1,    -1,    -1,    -1,    -1,   192,   193,
    1456,    -1,    -1,    -1,    -1,  1461,  1462,    -1,  1464,    -1,
    1466,    -1,  1468,    -1,    -1,    -1,    -1,   211,   212,   213,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   221,  1484,    -1,
      -1,    -1,    -1,  1489,   109,   110,  1492,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   241,    -1,     1,
      -1,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    -1,    14,    15,    -1,    -1,    -1,    19,    -1,  1525,
    1526,  1527,  1528,  1529,    -1,    -1,    -1,    -1,    -1,  1535,
      -1,    -1,    -1,  1268,    -1,    -1,    -1,   281,    -1,    -1,
      -1,    -1,    -1,    -1,   288,    47,    48,    49,    -1,    51,
      52,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      -1,    73,    74,    75,    76,    77,    78,    79,    80,    81,
      82,    -1,    -1,    85,    86,    87,    88,    89,    90,    -1,
     334,    93,    94,    95,    -1,    97,    98,    -1,    -1,    -1,
      -1,    -1,   104,    -1,    -1,   107,    -1,  1613,    -1,    -1,
    1616,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,
     122,   123,   124,    -1,    -1,    -1,   128,    -1,    -1,   373,
     132,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   145,   388,    -1,    -1,    -1,   150,   151,
     107,   108,   109,   110,   398,   112,   113,   114,   115,   116,
     117,   118,   119,   120,   121,    -1,    -1,    -1,    -1,  1675,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   421,  1413,    -1,
    1686,  1687,  1688,    -1,    -1,    -1,    -1,    -1,    -1,   433,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   442,    -1,
     444,    -1,    -1,    -1,    -1,    -1,    -1,   451,   452,    -1,
      -1,   455,     6,    -1,    -1,    -1,    -1,   461,   462,   463,
      -1,    -1,    -1,   467,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   475,    -1,    -1,    -1,    -1,    -1,     3,     4,     5,
       6,    35,    36,     9,    38,     1,    40,    -1,     4,     5,
      -1,    -1,     8,     9,    -1,    49,    -1,   501,   502,   503,
     504,    -1,    -1,    -1,    -1,   509,    -1,    -1,    62,    -1,
      64,    -1,    -1,   517,   518,    -1,    -1,   521,    -1,   523,
     524,   525,   526,    -1,    -1,    -1,   530,    -1,    -1,    -1,
      -1,   535,    48,    -1,   538,    89,    -1,  1803,    -1,    65,
      -1,    -1,    -1,    -1,    -1,    -1,    62,    -1,    64,    65,
      76,    -1,    -1,    -1,    -1,    71,     3,     4,     5,     6,
       7,     8,     9,    -1,    90,    81,    13,    93,    94,    -1,
     574,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,
      -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   117,    -1,    -1,    -1,    -1,   122,   151,    -1,    -1,
      -1,    48,   128,   157,   158,    -1,    -1,    -1,   162,   163,
      13,    -1,   166,   167,   168,    62,    -1,    64,    65,    -1,
      -1,    -1,    -1,    -1,    71,    -1,    -1,   631,   182,    76,
      -1,    -1,   186,    -1,    81,   639,    83,    -1,   192,   193,
      -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    -1,  1918,  1919,  1920,    -1,    -1,   211,   212,   213,
     107,    -1,    -1,    -1,    -1,   669,   670,   671,    -1,    -1,
     117,    -1,    -1,    -1,    -1,   122,    -1,    -1,   682,    -1,
      -1,   128,   129,    -1,  1679,    -1,     1,   241,    -1,     4,
       5,    -1,    -1,     8,     9,    -1,    99,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   730,   281,    -1,    -1,
      -1,  1997,    -1,    48,    -1,    -1,    -1,    -1,    -1,   743,
      -1,   745,    -1,   747,    -1,    -1,    -1,    62,    -1,    64,
      65,    -1,    -1,    -1,    -1,    -1,    71,    -1,    73,    74,
      -1,    -1,    -1,    -1,    -1,    -1,    81,   771,    83,    -1,
      -1,    -1,    -1,    -1,   778,    90,    -1,    -1,    93,    94,
     334,    96,    -1,   787,    -1,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,    -1,   121,   122,   123,   124,
      -1,    -1,    -1,    -1,   129,   130,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   827,   828,   829,    -1,    -1,    -1,    -1,
      -1,   835,   836,    -1,   838,    -1,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   399,    -1,    -1,   852,    -1,
      -1,    -1,    -1,   857,    -1,    -1,   860,   861,   862,   863,
     864,   865,    -1,    -1,    -1,   869,    -1,    -1,    -1,    -1,
      -1,    -1,   876,    -1,    -1,    -1,    -1,    -1,    -1,   433,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   442,    -1,
      -1,    -1,    -1,    -1,    -1,   899,    -1,    -1,   452,    -1,
      -1,   455,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   467,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   475,    -1,  1918,  1919,    -1,     1,    -1,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   501,   502,   503,
     504,    -1,    -1,    -1,    -1,   509,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   517,   518,    -1,    -1,   521,    -1,   523,
     524,   525,    47,    48,    -1,    -1,   530,    -1,    -1,    -1,
      -1,   535,    -1,    -1,   538,    -1,    -1,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
     574,    -1,    -1,    98,    -1,    -1,    -1,    -1,    38,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    62,   128,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,  1069,  1070,  1071,    -1,    -1,
      -1,  1075,  1076,    -1,   149,    -1,   151,    -1,   632,    -1,
      -1,    -1,    -1,    -1,    -1,   639,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     3,     4,     5,     6,    -1,    -1,     9,
     106,   107,   108,   109,   110,   111,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,  1120,  1121,  1122,  1123,
    1124,  1125,  1126,    -1,  1128,    -1,    -1,  1131,    -1,    -1,
    1134,    -1,  1136,  1137,  1138,    -1,    -1,    -1,  1142,    -1,
      -1,    -1,    -1,    -1,    -1,     1,    -1,     3,     4,     5,
       6,     7,     8,     9,    -1,    65,   166,   167,   168,    -1,
      -1,    -1,    -1,    -1,  1168,  1169,    76,  1171,    -1,    -1,
      -1,    -1,  1176,  1177,    -1,  1179,    -1,   731,    -1,    -1,
      90,    -1,   192,    93,    94,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    48,    -1,    -1,    -1,    -1,   107,    -1,    -1,
      -1,   211,   212,   213,    -1,    -1,    62,   117,    64,    65,
      66,    -1,   122,    -1,    -1,    71,    72,    -1,   128,    -1,
      76,    -1,    -1,    -1,    -1,    81,    82,    -1,    84,    -1,
      -1,   241,    -1,   787,    90,    -1,    -1,    93,    94,    -1,
      -1,    97,    -1,    99,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   117,    -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,
      -1,    -1,   128,   827,   828,   829,    -1,    -1,    -1,    -1,
      -1,    -1,   836,    -1,   838,    -1,     3,     4,     5,     6,
    1294,  1295,  1296,    -1,   150,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   857,    -1,    -1,    -1,   861,   862,    -1,
      -1,    -1,    -1,    -1,   324,   869,    -1,    -1,    -1,    -1,
      -1,    -1,   876,    -1,  1328,  1329,  1330,  1331,  1332,  1333,
      -1,    -1,  1336,  1337,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   899,    -1,    -1,    65,    -1,
       1,    -1,     3,     4,     5,     6,     7,     8,     9,    76,
      -1,    -1,    13,    -1,    -1,  1369,    83,    -1,    -1,    -1,
      -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,    -1,
     390,    -1,    -1,   393,   394,    -1,  1390,  1391,    -1,    -1,
     107,    -1,    -1,    -1,    -1,  1399,    -1,    48,    -1,    -1,
     117,    -1,    -1,    -1,    -1,   122,    -1,    -1,    59,    -1,
      61,   128,   129,    -1,    65,    -1,    -1,    -1,    -1,    -1,
      71,    -1,    -1,   433,    -1,    76,    -1,    -1,    -1,    -1,
      81,    -1,    83,    -1,    -1,    -1,    -1,    -1,    -1,    90,
      -1,    -1,    93,    94,    95,    96,    97,    -1,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,   122,   123,   124,    -1,    -1,   127,   128,   129,   130,
    1484,   132,    -1,  1487,    -1,  1489,   137,   138,  1492,    -1,
      -1,   501,    -1,   503,   504,   505,    -1,   148,   149,   150,
      -1,   152,     3,     4,     5,     6,    -1,   517,   518,    -1,
      -1,   521,    -1,   523,   524,   525,   526,    -1,    -1,    -1,
     530,    -1,    -1,  1077,    -1,   535,    -1,    -1,   538,   105,
     106,   107,   108,   109,   110,    -1,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,     3,     4,     5,     6,
     108,   109,   110,   111,   112,   113,   114,   115,   116,   117,
     118,   119,   120,   121,    65,    -1,  1120,  1121,  1122,  1123,
    1124,  1125,    -1,    -1,    -1,    76,    -1,  1131,    -1,    -1,
      -1,    -1,  1136,  1137,  1138,    -1,    -1,    -1,  1142,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     3,     4,     5,     6,   107,    -1,    62,    -1,
      -1,    -1,    -1,    -1,  1168,  1169,   117,  1171,    -1,    76,
      -1,   122,  1176,  1177,    -1,  1179,    -1,   128,    -1,   639,
      -1,    -1,    86,    90,    -1,    89,    93,    94,    -1,     1,
      -1,     3,     4,     5,     6,     7,     8,     9,    -1,    -1,
     107,    -1,    -1,    15,    -1,    -1,    -1,    19,    -1,    -1,
     117,    -1,    -1,    -1,    65,   122,   120,    -1,   122,    -1,
      -1,   128,    -1,    -1,    -1,    76,    -1,    -1,    -1,    -1,
      -1,    -1,  1686,  1687,  1688,    -1,    48,    -1,    -1,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    61,
      62,    -1,    64,    65,    66,    -1,   107,    -1,    -1,    71,
     720,    -1,    -1,    -1,    76,    -1,   117,    -1,    80,    81,
      82,   122,    84,    -1,   734,   735,   736,   128,    90,    91,
      -1,    93,    94,    -1,    -1,    97,    -1,   747,   192,    -1,
      -1,    -1,    -1,    -1,    -1,   107,     4,     5,    -1,     7,
       8,     9,    -1,    -1,    -1,   117,    -1,   211,   212,   213,
     122,    -1,    -1,    -1,    -1,    -1,   128,   221,    -1,    -1,
      -1,   133,    -1,    -1,  1328,  1329,  1330,   787,    -1,    -1,
      -1,    -1,  1336,  1337,    -1,    -1,    -1,   241,    -1,    -1,
      48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,  1803,
      -1,    -1,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,
      -1,    -1,    -1,    71,   268,  1369,    -1,   827,   828,   829,
      -1,    -1,    -1,    81,    -1,    -1,    -1,    -1,   838,    -1,
      -1,    -1,    90,    -1,   288,    93,    94,  1391,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,  1399,    -1,   857,    -1,    -1,
     860,   861,   862,   863,   864,   865,    -1,    -1,    -1,   869,
      -1,    -1,    -1,    -1,    -1,    -1,   876,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,     3,     4,
       5,     6,     7,     8,     9,    -1,    -1,    -1,    -1,    -1,
       3,     4,     5,     6,    -1,    -1,     9,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   917,   918,   919,
      -1,    -1,    -1,    -1,  1918,  1919,  1920,    -1,    -1,    -1,
      -1,    -1,    -1,    48,    -1,    -1,     3,     4,     5,     6,
    1484,    -1,     9,    -1,    -1,  1489,    -1,    62,  1492,    64,
      65,    66,    -1,    -1,   398,   399,    71,    72,    -1,    -1,
      -1,    76,    65,    -1,    -1,    -1,    81,    82,    -1,    84,
     970,    -1,    -1,    76,    -1,    90,     4,     5,    93,    94,
       8,     9,    97,    -1,    99,    -1,    -1,    90,    -1,   433,
      93,    94,   107,    -1,    -1,    -1,    -1,    -1,    65,    -1,
      -1,    -1,   117,  1997,   107,    -1,    -1,   122,    -1,    76,
      -1,    -1,    -1,   128,   117,    -1,    -1,    -1,    -1,   122,
      48,    -1,    -1,    90,    -1,   128,    93,    94,    -1,    -1,
      -1,    -1,    -1,    -1,    62,   150,    64,    65,    -1,    -1,
     107,    -1,    -1,    71,    -1,    -1,    -1,    -1,  1048,  1049,
     117,    -1,  1052,    81,    -1,   122,    -1,   501,    -1,   503,
     504,   128,    90,  1063,    -1,    93,    94,    -1,    -1,  1069,
    1070,  1071,    -1,   517,   518,  1075,    -1,   521,    -1,   523,
     524,   525,   526,    -1,    -1,    -1,   530,    -1,    -1,    -1,
      -1,   535,    -1,    -1,   538,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,    -1,    -1,    -1,
    1120,  1121,  1122,  1123,  1124,  1125,  1126,    -1,    -1,    -1,
      -1,  1131,    -1,    -1,    -1,    -1,  1136,  1137,  1138,    -1,
      -1,    -1,  1686,  1687,  1688,    -1,    -1,   152,    -1,  1149,
    1150,  1151,     1,    -1,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    -1,    -1,    -1,  1168,   104,
     105,   106,   107,   108,   109,   110,  1176,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   631,   632,    -1,
      -1,    -1,    -1,    -1,    -1,   639,    -1,    -1,    47,    48,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    83,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    95,    -1,    -1,    98,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,  1803,
      -1,    -1,  1262,  1263,    -1,  1265,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,  1276,    -1,    -1,   128,
     129,    -1,    -1,    -1,  1284,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,  1294,  1295,  1296,    -1,    -1,    -1,
      -1,    -1,   151,    -1,    -1,    -1,   750,   751,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       3,     4,     5,     6,     7,     8,     9,    -1,  1328,  1329,
    1330,  1331,  1332,  1333,    -1,    -1,  1336,  1337,    -1,    -1,
      -1,    -1,    -1,   787,    -1,    -1,    -1,    -1,    -1,    -1,
      18,    -1,  1352,  1353,  1354,  1355,  1356,    -1,    -1,    27,
      28,    -1,    -1,    -1,    -1,    48,    -1,    35,    36,  1369,
      38,    -1,    -1,    -1,  1918,  1919,  1920,    -1,    -1,    62,
      -1,    64,    65,   827,   828,   829,    -1,    -1,    71,    -1,
      -1,   835,   836,    76,   838,    -1,    -1,    -1,    81,    -1,
      83,    -1,    -1,    -1,    -1,    73,    -1,    90,    -1,    -1,
      93,    94,    -1,   857,    -1,    -1,   860,   861,   862,   863,
     864,   865,   866,    -1,   107,   869,    -1,    -1,    -1,    -1,
      -1,    -1,   876,    -1,   117,    -1,    -1,    -1,    -1,   122,
      -1,    -1,    -1,    -1,    -1,   128,   129,    -1,    -1,    -1,
      -1,    -1,    -1,  1997,   898,    -1,    -1,    -1,    -1,    -1,
      -1,  1461,  1462,    -1,  1464,    -1,    -1,    -1,  1468,    -1,
      -1,   139,    -1,   141,    -1,    -1,    -1,    -1,    -1,    -1,
     148,   149,    -1,    -1,  1484,    -1,    -1,    -1,    -1,   157,
     158,    -1,    -1,   161,   162,   163,    65,   165,   166,   167,
     168,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      -1,    -1,    -1,    -1,    -1,  1525,  1526,  1527,  1528,  1529,
      -1,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121,    -1,    47,    48,    -1,    -1,    -1,     4,
       5,    -1,     7,     8,     9,    -1,    -1,    -1,    13,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,   257,
     258,    -1,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    95,    48,    97,    98,    -1,    -1,    -1,    -1,
      -1,   104,    -1,   281,   107,    -1,  1616,    62,    -1,    64,
      65,    -1,   115,   116,   117,    -1,    71,    -1,    -1,   122,
     123,   124,  1076,  1077,  1078,   128,    81,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,
      -1,    -1,    -1,    -1,    -1,    -1,   324,    -1,   151,   107,
     108,   109,   110,   111,   112,   113,   114,   115,   116,   117,
     118,   119,   120,   121,    -1,    -1,  1120,  1121,  1122,  1123,
    1124,  1125,  1126,    -1,  1128,    -1,  1686,  1131,  1688,    -1,
    1134,    -1,  1136,  1137,  1138,    -1,    -1,    -1,  1142,    -1,
      -1,    -1,    -1,    -1,    -1,  1149,  1150,  1151,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     388,    -1,   390,    -1,    -1,   393,    -1,    -1,    -1,    -1,
      -1,    -1,  1176,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,    -1,    -1,   421,     1,    -1,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   442,    -1,   444,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   452,    -1,    -1,   455,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   467,
      47,    48,    -1,  1803,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    65,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    83,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    95,    -1,
      -1,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
      -1,   128,   129,    -1,  1328,  1329,  1330,  1331,  1332,  1333,
     558,   559,  1336,  1337,     1,    -1,     3,     4,     5,     6,
       7,     8,     9,    -1,   151,    -1,   574,    -1,  1352,  1353,
    1354,  1355,  1356,    -1,    -1,    -1,    -1,    -1,  1918,  1919,
    1920,    -1,   108,   109,   110,  1369,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,    -1,    -1,    -1,    -1,
      -1,    48,    -1,    -1,    -1,    -1,  1390,    -1,   616,    -1,
     618,    -1,    -1,    -1,    -1,    62,    -1,    64,    65,    66,
      -1,    -1,    -1,    -1,    71,    -1,    -1,     4,     5,    76,
       7,     8,     9,    -1,    81,    82,    13,    84,    -1,    -1,
      -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,    -1,
      97,    -1,    99,    -1,    -1,    -1,    -1,  1997,    -1,    -1,
     107,    -1,    -1,     3,     4,     5,     6,    -1,    -1,     9,
     117,    48,    -1,    -1,    -1,   122,    -1,  1461,  1462,  1463,
    1464,   128,    -1,    -1,  1468,    62,    -1,    64,    65,    -1,
      -1,    -1,    -1,    -1,    71,    -1,    -1,    -1,    -1,    -1,
    1484,    -1,    -1,    -1,    81,    -1,    83,    -1,    -1,    -1,
      -1,    -1,   720,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    -1,   730,   731,    -1,    65,   734,   735,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    76,    -1,    -1,    -1,
     117,  1525,  1526,  1527,  1528,  1529,    -1,    -1,    -1,    -1,
      90,   128,   129,    93,    94,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   771,    -1,    -1,    -1,   107,    -1,    -1,
     778,   779,    -1,    -1,    -1,    -1,    -1,   117,    -1,    -1,
     788,    -1,   122,    -1,    -1,    -1,    -1,    -1,   128,    -1,
      -1,    -1,     1,    -1,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    -1,    14,    15,    -1,    -1,    -1,
      19,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,  1616,    -1,    -1,    -1,    -1,    -1,    47,    48,
      49,    -1,    51,    52,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    80,    81,    82,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    95,    -1,    97,    98,
     898,    -1,    -1,    -1,    -1,   104,     4,     5,   107,     7,
       8,     9,  1686,    -1,  1688,    13,   115,   116,   117,   917,
     918,   919,   920,   122,   123,   124,    -1,    -1,    -1,   128,
      -1,    -1,    -1,   132,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   145,    -1,    -1,    -1,
      48,    -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,
      -1,    -1,   970,    71,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    81,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,     3,     4,
       5,     6,    -1,     8,     9,    10,    11,    12,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,  1803,
     112,   113,   114,   115,   116,   117,   118,   119,   120,   121,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
    1048,  1049,    47,    48,  1052,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,  1063,    -1,    62,    63,    64,
      -1,    66,    -1,    68,    69,    70,    71,  1075,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      95,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,     3,     4,     5,     6,  1115,    -1,     9,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,   129,     4,     5,    -1,    -1,     8,
       9,    -1,    -1,    -1,  1918,  1919,  1920,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   150,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,  1162,    -1,    -1,  1165,    -1,    -1,
    1168,    -1,    -1,    -1,    -1,    65,    -1,    -1,    -1,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    76,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,    -1,
      90,    -1,    71,    93,    94,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    81,    -1,    -1,    -1,    -1,   107,    -1,    -1,
      -1,    90,    -1,  1997,    93,    94,    -1,   117,    -1,    -1,
      -1,    -1,   122,    -1,    -1,    -1,    -1,     1,   128,     3,
       4,     5,     6,    -1,     8,     9,    10,    11,    12,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,  1262,  1263,    -1,  1265,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,  1276,    -1,
      -1,    -1,    -1,    47,    48,    -1,  1284,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,  1294,  1295,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    -1,    73,
      74,    75,    76,    77,    78,    79,    -1,    81,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    90,    -1,    -1,    93,
      94,    95,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,
     104,    -1,    -1,   107,    -1,    -1,    -1,     3,     4,     5,
       6,   115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,
     124,    -1,  1360,    -1,   128,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   151,    -1,    -1,
      -1,    -1,    -1,  1391,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,    65,
       3,     4,     5,     6,   149,     8,     9,    10,    11,    12,
      76,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   107,    -1,    -1,    47,    48,    -1,    -1,  1456,    -1,
      -1,   117,    -1,    -1,    -1,    -1,   122,    -1,    -1,    62,
      63,    64,   128,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,  1487,
      -1,  1489,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    95,    -1,    -1,    98,    -1,    -1,    -1,    -1,
      -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,
     123,   124,    -1,    -1,    -1,   128,   129,     1,    -1,     3,
       4,     5,     6,    -1,     8,     9,    10,    11,    12,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,    -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     3,     4,     5,     6,    -1,    -1,    62,    63,
      64,    -1,    66,    -1,    68,    69,    70,    71,   149,    73,
      74,    75,    76,    77,    78,    79,    -1,    81,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    90,    -1,    -1,    93,
      94,    95,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,
     104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   115,   116,   117,    65,    -1,    -1,    -1,   122,   123,
     124,    -1,    -1,    -1,   128,    76,     1,    -1,     3,     4,
       5,     6,   136,     8,     9,    10,    11,    12,    -1,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,   151,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   117,    -1,    -1,    -1,
      -1,   122,    47,    48,    -1,    -1,    -1,   128,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      -1,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      95,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,     1,   128,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   150,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,
      -1,    -1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    95,    -1,    -1,    98,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,    65,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,    76,    -1,     1,   128,
       3,     4,     5,     6,    -1,     8,     9,    10,    11,    12,
      90,    -1,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,
      -1,   150,   151,    -1,    -1,    -1,    -1,   107,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   117,    -1,    -1,
      -1,    -1,   122,    -1,    47,    48,    -1,    -1,   128,     3,
       4,     5,     6,    -1,    -1,    -1,    -1,    -1,    -1,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,    -1,
      -1,    -1,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    95,    -1,    -1,    98,    -1,    -1,    -1,    -1,
      -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    65,   115,   116,   117,    -1,    -1,    -1,    -1,   122,
     123,   124,    76,    -1,     1,   128,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,
      -1,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   117,    -1,    -1,    -1,    -1,   122,    -1,
      47,    48,    -1,    -1,   128,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    65,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
      97,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
       1,   128,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    -1,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    95,    -1,    -1,    98,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,     1,   128,     3,     4,
       5,     6,    -1,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      -1,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      -1,    -1,    -1,    98,    99,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,     1,   128,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,    98,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,    -1,    -1,     1,   128,
       3,     4,     5,     6,    -1,     8,     9,    10,    11,    12,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     149,    -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,
      63,    64,    -1,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,    -1,
      -1,    -1,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,
      -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,
     123,   124,    -1,    -1,     1,   128,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    -1,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
       1,   128,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    -1,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,    -1,   128,     3,     4,
       5,     6,    -1,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      -1,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,   152,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,    98,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,    -1,    -1,    -1,   128,
       3,     4,     5,     6,    -1,     8,     9,    10,    11,    12,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   151,   152,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,
      63,    64,    -1,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,    -1,
      -1,    -1,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,
      -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,
     123,   124,    -1,    -1,    -1,   128,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,   152,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    -1,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
      -1,   128,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   151,   152,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    -1,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,    -1,   128,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     151,   152,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    47,    48,    49,    -1,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      95,    -1,    97,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,    -1,    -1,    -1,   132,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
     112,   113,   114,   115,   116,   117,   118,   119,   120,   121,
      -1,    -1,    47,    48,    49,    -1,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,   149,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      -1,    -1,    97,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,    -1,    -1,    -1,   132,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
     112,   113,   114,   115,   116,   117,   118,   119,   120,   121,
      -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,   149,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    83,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,   129,     3,     4,     5,     6,     7,
       8,     9,    10,    11,    12,    13,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    96,    -1,    -1,   151,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,    47,
      48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    62,    63,    64,    65,    66,    -1,
      68,    69,    70,    71,    -1,    73,    74,    75,    76,    77,
      78,    79,    -1,    81,    -1,    83,    -1,    85,    86,    87,
      88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,
      98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,
      -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,    -1,
     128,   129,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      96,    -1,    -1,   151,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,   111,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    83,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,    -1,   128,   129,     3,
       4,     5,     6,    -1,     8,     9,    10,    11,    12,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    97,    -1,
     151,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121,    47,    48,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    -1,    73,
      74,    75,    76,    77,    78,    79,    -1,    81,    -1,    83,
      -1,    85,    86,    87,    88,    89,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,
     124,    -1,    -1,    -1,   128,   129,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
     112,   113,   114,   115,   116,   117,   118,   119,   120,   121,
      47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    65,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
      -1,   128,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,    -1,   128,     3,     4,
       5,     6,    -1,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    -1,    -1,    97,    98,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,    -1,    -1,    -1,   128,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    -1,
      73,    74,    75,    76,    77,    78,    79,    -1,    81,    -1,
      -1,    -1,    85,    86,    87,    88,    89,    90,    -1,    -1,
      93,    94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,
     123,   124,    -1,    -1,    -1,   128,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    62,    63,    64,    65,    66,
      -1,    68,    69,    70,    71,    -1,    73,    74,    75,    76,
      77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,
      87,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
      -1,    98,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,
     117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,
      -1,   128,     3,     4,     5,     6,    -1,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    62,    63,    64,    -1,    66,    -1,    68,    69,    70,
      71,    -1,    73,    74,    75,    76,    77,    78,    79,    -1,
      81,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,
      -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,
      -1,   122,   123,   124,    -1,    -1,    -1,   128,     3,     4,
       5,     6,    -1,     8,     9,    10,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,
      -1,    66,    -1,    68,    69,    70,    71,    -1,    73,    74,
      75,    76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    -1,    -1,    93,    94,
      95,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   104,
      -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,    -1,    -1,   128,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,
      69,    70,    71,    -1,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,    -1,
      -1,    -1,    -1,   122,   123,   124,    -1,    -1,    -1,   128,
     129,     3,     4,     5,     6,    -1,     8,     9,    10,    11,
      12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      62,    63,    64,    -1,    66,    -1,    68,    69,    70,    71,
      -1,    73,    74,    75,    76,    77,    78,    79,    -1,    81,
      -1,    -1,    -1,    85,    86,    87,    88,    89,    90,    -1,
      -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,    -1,
      -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,
     122,   123,   124,    -1,    -1,    -1,   128,     3,     4,     5,
       6,    -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,    65,
      66,    -1,    68,    69,    70,    71,    -1,    73,    74,    75,
      76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,
      86,    87,    88,    89,    90,    -1,    -1,    93,    94,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   104,    -1,
      -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,
     116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,
      -1,    -1,   128,     3,     4,     5,     6,    -1,     8,     9,
      10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    62,    63,    64,    -1,    66,    -1,    68,    69,
      70,    71,    -1,    73,    74,    75,    76,    77,    78,    79,
      -1,    81,    -1,    -1,    -1,    85,    86,    87,    88,    89,
      90,    -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,
      -1,    -1,    -1,    -1,   104,    -1,    -1,   107,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   115,   116,   117,    -1,    -1,
      -1,    -1,   122,   123,   124,    -1,    -1,    -1,   128,     3,
       4,     5,     6,    -1,     8,     9,    10,    11,    12,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    47,    48,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    -1,    73,
      74,    75,    76,    77,    78,    79,    -1,    81,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     104,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   115,   116,   117,    -1,    -1,    -1,    -1,   122,   123,
     124,    -1,    -1,    -1,   128,     3,     4,     5,     6,    -1,
       8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,
      48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    62,    63,    64,    -1,    66,    -1,
      68,    69,    70,    71,    -1,    73,    74,    75,    76,    77,
      78,    79,    -1,    81,    -1,    -1,    -1,    85,    86,    87,
      88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   104,    -1,    -1,   107,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,   116,   117,
      -1,    -1,    -1,    -1,   122,   123,   124,    -1,    -1,    -1,
     128,     3,     4,     5,     6,    -1,     8,     9,    10,    11,
      12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   151,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      62,    63,    64,    -1,    66,    -1,    68,    69,    70,    71,
      -1,    73,    74,    75,    76,    77,    78,    79,    -1,    81,
      -1,    -1,    -1,    85,    86,    87,    88,    89,    90,    -1,
      -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   104,    -1,    -1,   107,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   115,   116,   117,    -1,    -1,    -1,    -1,
     122,   123,   124,    -1,    -1,    -1,   128,     3,     4,     5,
       6,    -1,     8,     9,    10,    11,    12,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    64,    -1,
      66,    -1,    68,    69,    70,    71,    -1,    73,    74,    75,
      76,    77,    78,    79,    -1,    81,    -1,    -1,    -1,    85,
      86,    87,    88,    89,    90,    -1,    -1,    93,    94,     3,
       4,     5,     6,     7,     8,     9,    -1,    -1,   104,    13,
      -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   115,
     116,   117,    -1,    -1,    -1,    -1,   122,   123,   124,    -1,
      -1,    -1,   128,    -1,    -1,    -1,     3,     4,     5,     6,
       7,     8,     9,    -1,    48,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   151,    -1,    -1,    62,    -1,
      64,    65,    -1,    -1,    -1,    -1,    -1,    71,    -1,    -1,
      -1,    -1,    76,    -1,    -1,    -1,    -1,    81,    -1,    83,
      -1,    48,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    65,    -1,
      -1,    -1,    -1,   107,    71,    -1,    -1,    -1,    -1,    76,
      -1,    -1,    -1,   117,    81,    -1,    83,    -1,   122,    -1,
      -1,    -1,    -1,    90,   128,   129,    93,    94,     3,     4,
       5,     6,     7,     8,     9,    -1,    -1,    -1,    -1,    -1,
     107,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     117,    -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,    -1,
      -1,   128,   129,    -1,    -1,     3,     4,     5,     6,     7,
       8,     9,    -1,    48,    -1,    13,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    -1,    64,
      65,    -1,    -1,    -1,    -1,    -1,    71,    -1,    -1,    -1,
      -1,    76,    -1,    -1,    -1,    -1,    81,    -1,    -1,    -1,
      48,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,
      -1,    -1,    97,    -1,    62,    -1,    64,    65,    -1,    -1,
      -1,    -1,   107,    71,    -1,    -1,    -1,    -1,    76,    -1,
      -1,    -1,   117,    81,    -1,    -1,    -1,   122,    -1,    -1,
      -1,    -1,    90,   128,    -1,    93,    94,     3,     4,     5,
       6,     7,     8,     9,    -1,    -1,    -1,    -1,    -1,   107,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   117,
      -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,    -1,    -1,
     128,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    48,    -1,    -1,     3,     4,     5,     6,     7,
       8,     9,    -1,    -1,    -1,    -1,    62,    -1,    64,    65,
      -1,    -1,    -1,    -1,    -1,    71,    -1,    -1,    -1,    -1,
      76,    -1,    -1,    -1,    -1,    81,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    90,    -1,    -1,    93,    94,    -1,
      48,    -1,    -1,    99,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   107,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,
      -1,   117,    -1,    71,    -1,    -1,   122,    -1,    76,    -1,
      -1,    -1,   128,    81,     3,     4,     5,     6,     7,     8,
       9,    -1,    90,    -1,    -1,    93,    94,    -1,    -1,    97,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   107,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   117,
      -1,    -1,    -1,    -1,   122,    -1,    -1,    -1,    -1,    48,
     128,    -1,     3,     4,     5,     6,     7,     8,     9,    -1,
      -1,    -1,    -1,    62,    -1,    64,    65,    -1,    -1,    -1,
      -1,    -1,    71,    -1,    -1,    -1,    -1,    76,    -1,    -1,
      -1,    -1,    81,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    90,    -1,    -1,    93,    94,    -1,    48,    -1,    -1,
      -1,     4,     5,    -1,     7,     8,     9,    -1,   107,    -1,
      13,    62,    -1,    64,    65,    -1,    -1,    -1,   117,    -1,
      71,    -1,    -1,   122,    -1,    76,    -1,    -1,    -1,   128,
      81,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    90,
      -1,    -1,    93,    94,    -1,    48,    -1,    -1,    -1,     3,
       4,     5,     6,     7,     8,     9,   107,    -1,    -1,    62,
      -1,    64,    65,    -1,    -1,    -1,   117,    -1,    71,    -1,
      -1,   122,    -1,    -1,    -1,    -1,    -1,   128,    81,    -1,
      83,    -1,    -1,    -1,    -1,    -1,    -1,    90,    -1,    -1,
      93,    94,    -1,    -1,    48,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,    65,    -1,    -1,   117,    -1,    -1,    71,    -1,    -1,
      -1,    -1,    76,    -1,    -1,   128,   129,    81,    -1,    83,
      -1,    -1,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   117,    -1,    -1,    -1,    -1,   122,    -1,
      -1,    -1,    -1,    -1,   128,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,    -1,
      -1,    -1,    -1,    -1,   149,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   149,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,   112,
     113,   114,   115,   116,   117,   118,   119,   120,   121,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,    -1,    -1,    -1,    -1,    -1,   149,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   149,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121,    -1,    -1,    -1,    -1,    -1,   149,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   148,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const unsigned short int yystos[] =
{
       0,   155,   156,   157,     0,   163,   164,   163,     1,     3,
       4,     5,     6,     7,     8,     9,    15,    19,    48,    61,
      62,    64,    65,    66,    71,    76,    80,    81,    82,    84,
      90,    91,    93,    94,    97,   107,   117,   122,   128,   133,
     161,   162,   165,   169,   171,   173,   178,   179,   181,   182,
     188,   191,   197,   198,   203,   217,   228,   230,   255,   257,
     262,   263,   275,   276,   278,   279,   283,   284,   288,   296,
     299,   300,   312,   320,   321,   322,   323,   324,   348,   353,
     354,   355,   357,   359,   361,   364,   365,   366,   373,   374,
     441,   448,   450,   511,   525,    97,   148,   150,   110,   442,
      90,   110,    90,   110,   110,    84,    16,    17,    18,   526,
      45,     3,     4,     5,    93,    94,    95,   214,   228,   355,
     365,   372,   374,   128,   128,     4,     5,    93,    94,    95,
     214,     3,     4,     5,    93,    94,   228,   367,   368,   369,
     370,   374,     4,     5,    80,    93,    94,   360,   365,   374,
     110,   226,   166,    90,   110,   110,     3,   299,   348,   356,
     357,   365,   374,   348,   356,   439,   107,   117,   128,   255,
     260,   261,   263,   299,   358,   359,   373,   165,   128,    97,
      95,   133,   159,     1,     7,    84,   161,   178,   188,   189,
     190,   197,   275,   278,   288,   312,   148,   194,   162,   289,
      59,   193,   206,   207,    97,    90,    83,   128,   129,   349,
      97,   107,   117,   128,   272,   286,   294,   351,   352,   357,
     364,   365,   373,     7,     9,    97,   198,   284,   287,   295,
     299,   357,   128,     7,     8,     9,   277,   280,   285,   299,
     312,    96,    97,   300,     7,     8,     9,    71,    95,   139,
     140,   141,   214,   216,   228,   229,   299,   365,   374,    95,
      99,    95,    99,    99,   325,     9,   284,   299,   374,   289,
       3,     5,    84,    94,   117,   230,   255,   258,   262,   364,
     366,   347,     3,    93,   255,   355,   361,   364,   365,     1,
      73,    74,    83,    96,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,   111,   112,   113,   114,   115,
     116,   117,   118,   119,   121,   122,   123,   124,   129,   130,
     151,   279,   284,   348,   419,   110,   233,   234,   235,   236,
       3,   233,   233,   256,   226,     3,   128,   314,    95,     3,
      84,    94,   355,   364,     9,    10,    11,    12,    47,    63,
      68,    69,    70,    73,    74,    75,    77,    78,    79,    85,
      86,    87,    88,    89,    98,   104,   107,   115,   116,   117,
     122,   123,   124,   128,   151,   161,   238,   239,   246,   248,
     251,   252,   253,   255,   264,   266,   267,   268,   270,   274,
     279,   281,   282,   284,   348,   361,   362,   363,   365,   374,
     128,   168,    95,   100,    90,    90,    90,    90,    90,    90,
       3,     4,     5,    84,    93,    94,   214,   228,   370,   371,
     368,   174,     3,     4,     5,   255,   258,   259,   259,   360,
     111,   180,   198,   275,   278,   284,   357,   188,   234,   233,
     110,   357,   299,   356,   365,   356,     4,     5,   214,   228,
     260,   299,   348,   358,   260,   348,   358,   260,   149,    93,
      94,   107,   117,   128,   255,   261,   149,   347,    12,   156,
     158,    84,   191,   197,   189,   159,   194,   286,   287,    97,
      97,   128,   298,   299,     3,     1,   132,   195,   210,   409,
      83,   100,   128,   305,    97,     1,    13,   246,   247,   253,
     274,   276,   278,   279,   284,   348,   429,   430,   434,   435,
     436,   438,     9,   152,   239,   284,   347,   299,   348,   350,
     351,   348,   350,   107,   117,   128,   299,   350,   373,   289,
      96,    97,   129,   349,   364,   347,   277,   280,    96,    97,
     289,   239,   274,     7,   285,   277,   285,   299,   272,   290,
     110,    95,    99,     3,    94,   214,   229,   214,   365,   439,
      95,   280,   297,    90,    83,   128,     6,   214,   371,   450,
      90,    83,   128,     9,   299,   356,     5,   117,   230,   449,
     129,   449,   129,   449,   449,   449,   449,   449,    99,   449,
     449,   449,   449,   449,   449,   449,   449,   449,   449,   449,
     449,   449,   449,   449,   449,   449,   449,   449,   449,   449,
     152,   449,   449,   280,   107,   117,   365,   373,   374,   447,
     256,   111,   113,   232,    96,    94,    98,   237,   252,   254,
     274,   365,   374,   128,   443,   232,   232,   233,   198,   275,
     284,   357,   153,     3,   530,    96,   214,   319,   343,   344,
     345,   313,   214,   128,   252,   252,   128,   128,   128,   110,
     110,   110,   110,   253,   214,   252,   252,   252,     1,   107,
     117,   128,   239,   255,   260,   265,   274,   252,   252,   149,
      96,    95,   128,   248,    96,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,    83,   128,    83,
     123,   124,   127,   128,   129,   130,    95,   128,   249,   346,
     419,   129,   252,     1,     8,    84,   122,   258,   259,   362,
     365,   374,   149,    83,   107,   117,   128,   129,   251,   273,
     373,   378,   379,   128,   248,   128,   248,   128,   273,   378,
     365,   374,   378,    83,   128,     3,    74,   257,   267,   361,
     374,   450,     7,     8,     9,   214,   301,   302,   303,   158,
     167,   170,   371,   110,    90,   177,   259,   360,   374,    81,
      84,   179,   183,   185,   186,   187,   274,   284,   320,   436,
     438,   221,   272,    97,   220,   232,   232,   233,   356,   356,
     149,   260,   356,   149,   150,   160,   160,   190,   197,    97,
      97,    12,   410,    99,   192,   208,   269,     1,    95,   253,
     306,   247,   149,   149,    13,    96,    99,   107,   117,   128,
     272,   298,   373,   378,   357,   365,   374,   272,   128,   272,
     149,    13,    96,    99,    13,   357,   437,   438,   440,   100,
     431,   152,   128,   273,    98,   444,   351,   299,   350,   350,
     299,   348,   348,   107,   117,   128,   365,   373,   149,   347,
     292,   298,   290,   152,   239,   347,   299,   350,   277,   290,
     292,   149,   149,   289,   233,   214,   229,     4,     5,     7,
      72,   228,   326,   327,   328,   329,   353,   367,   374,   315,
     292,   347,   199,   110,   110,    90,   110,   347,   201,    83,
     128,    83,   128,   152,   152,   449,   449,   347,   347,   347,
     365,   449,   233,   235,   254,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   112,   113,   114,   115,
     116,   117,   118,   119,   120,   121,    84,    94,   247,    97,
     231,   231,   232,   225,   272,    97,   224,    96,   149,   100,
     150,    96,   319,   343,   247,   253,   253,   239,   274,   274,
     284,   274,   274,   274,   149,   260,   149,   149,   385,   451,
     149,     1,   253,     3,     4,     5,    93,    94,   129,   214,
     306,   307,   274,     1,   253,   253,   253,     1,   239,   424,
     253,   253,   253,   253,   253,   253,   253,   253,   253,   253,
     253,   253,   253,   253,   253,   253,   253,   253,   253,   247,
     247,   239,   247,   247,   274,   128,   346,    83,   100,   128,
     250,   107,   117,   129,   373,   375,   376,   152,   239,    90,
     214,     8,    83,   128,    83,   128,    83,   128,   299,   348,
     377,   378,   348,   377,   274,   377,   430,   152,   239,   128,
     347,    83,   347,   347,    83,   128,   129,   274,   274,   107,
     117,   128,   247,   251,   260,   299,   365,   374,   365,   247,
      96,   149,   128,   150,   158,   177,    90,   233,   175,   259,
     360,   184,   214,   110,   320,    96,   111,   100,   100,   184,
     214,   100,   227,   219,   218,   227,   231,   232,   149,    97,
     194,   160,   160,   149,   195,   209,   451,   150,   307,   149,
     299,   348,   348,   107,   117,   128,   299,   364,   365,   373,
     298,   347,   298,   298,   365,   298,   107,   117,   128,   255,
     260,   361,   374,   298,   431,   100,   432,    83,   128,   348,
     348,   347,   100,   152,   444,   298,   111,   439,   439,    96,
       7,    72,   439,     1,     5,    82,    97,    99,   128,   161,
     171,   182,   198,   204,   205,   230,   275,   278,   330,   332,
     333,   334,   357,   441,   444,   429,   233,   233,   233,   444,
     429,   347,   200,   347,   202,   449,   449,   447,   447,   447,
     232,   254,   254,   424,   254,   254,   254,   254,   254,   254,
     254,   254,   254,   254,   254,   254,   254,   254,   254,   254,
     254,   254,   214,   149,   227,   223,   222,   227,     3,   153,
     253,   345,   150,   149,    96,   149,   149,   149,   111,   111,
     111,   111,   149,   149,    95,   253,    99,    96,   318,   149,
      99,   149,   149,   152,   150,   149,   149,   274,   250,   306,
     247,   284,   347,   347,   239,   347,   129,   252,   152,   122,
     110,    83,   247,   247,   247,   378,   299,   377,   377,   149,
     149,   152,   444,   444,   299,   377,   347,   429,   152,   239,
     149,   149,   149,   149,   107,   117,   128,   149,   302,   149,
       3,   247,   150,    97,   232,   298,   184,   187,   274,   235,
     254,   227,   227,   194,   411,     1,     3,    93,    94,   211,
     212,   213,   215,   353,   367,    95,    96,   150,   299,   348,
     348,   107,   117,   128,   373,   364,   347,   299,   260,   149,
       3,   257,   361,   450,   306,   136,   306,   433,     1,   274,
     445,   446,   107,   117,   128,   299,   299,   293,   100,   231,
     439,   439,   439,   328,    83,   128,   253,     5,   333,   275,
     333,   289,   289,    59,    95,    99,   132,    83,   128,     3,
       4,    99,   198,   272,   335,   337,   339,   340,   351,   357,
     365,   374,   198,   204,   336,   340,   357,    72,   150,   331,
     333,    97,   150,   289,   149,   232,   232,   232,   149,   444,
     429,   444,   429,    99,   227,   227,   274,   128,   128,   128,
     128,   386,   152,   306,   214,   306,   150,   253,   129,   250,
     149,   149,   149,   375,   375,   152,   375,   239,   252,     8,
     233,   149,   149,   149,   347,   444,   149,   152,    96,   149,
     149,    97,   131,   415,   416,     1,    96,    83,   128,   196,
     150,   348,   348,   365,   347,   149,    96,   149,   299,   306,
     291,   327,   347,   429,   149,    97,   298,   298,   347,   429,
      99,    99,   253,   289,    96,   289,   289,   365,   289,    96,
      99,   298,   332,   298,   347,   347,   149,   149,   254,   149,
     239,   239,   239,   239,    67,   150,   245,   382,   383,   384,
     306,    99,   239,   250,   152,    83,   232,   444,   347,   247,
     417,   416,   213,   247,   245,   107,   117,   128,   299,   299,
     445,   306,   444,   149,    83,   128,   305,   305,   444,   149,
     253,   253,   298,   298,     3,     4,    99,   338,   341,   342,
     351,   357,   298,   298,     5,   298,   342,   316,   305,   444,
     444,   347,   347,   149,   149,   149,   149,   214,   304,     1,
      14,    15,    19,   145,   380,   381,   385,   387,   393,   451,
     452,   454,   457,   464,   468,   470,   481,   483,   486,   488,
     491,   493,   496,   498,   499,   501,   503,   504,   506,   507,
     508,   510,   511,   512,   513,   523,   524,   527,   384,   306,
     152,   444,   149,   128,   420,   149,   299,   347,   347,   429,
     347,   298,   298,   305,    99,    99,   253,   289,   289,   305,
     305,   305,   311,   444,   444,    96,    97,    97,   150,    12,
      16,    17,    18,   528,    20,    33,    37,    39,    40,    41,
      42,    43,    44,    53,   142,   143,     1,   150,   381,   393,
       3,     4,     5,    49,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    80,    82,    94,    97,   132,   161,
     162,   169,   172,   173,   239,   271,   275,   278,   284,   388,
     394,   412,   421,   453,   458,   469,   482,   487,   492,   497,
     500,   505,   509,    13,   438,   418,   444,   444,   149,   444,
     253,   253,   298,   298,   298,     1,   137,   310,   317,   214,
     153,   153,    21,    23,    25,    28,    29,    36,    37,    49,
      53,    56,   153,   455,   456,   153,    21,    23,    24,    28,
      35,   153,   471,   472,    21,    22,    23,    35,   153,   484,
     485,   153,   128,   153,   153,   153,   128,   153,    21,    23,
      24,    28,    33,    34,    35,   153,   465,   466,   153,   153,
     150,    99,    99,    99,   389,   396,   398,   400,   404,   253,
      99,    97,    97,    97,   239,   117,   214,   214,    93,   176,
     374,    99,   413,   271,     9,   423,    97,    97,   272,   286,
      97,   287,   357,   128,   286,    50,   150,   393,   393,   529,
      53,   459,    95,   473,   529,   459,   473,   529,   529,   253,
     529,   149,   149,   387,   347,   298,   298,   305,   305,     1,
     253,   309,   128,   128,   128,   128,   128,   128,    21,    22,
      23,    24,    25,    28,    29,    36,    49,    56,   153,   494,
     495,   128,    21,    22,    23,    24,    25,    28,    29,    33,
      34,    36,    49,    56,   153,   489,   490,   128,   153,   456,
     128,   128,   128,   128,   153,   472,   128,   128,   128,   153,
     485,     3,   502,   530,   128,   128,   128,   128,   128,   153,
     466,   514,   515,    83,   128,   241,   241,   387,   391,   392,
     128,   128,    13,    99,   408,    97,   239,    97,    90,    93,
     214,    93,   176,   214,   387,   128,    97,    97,   107,   117,
     128,    97,   395,   460,   474,    97,   444,   148,   148,   138,
     308,   530,   530,   530,   103,   104,   105,   106,   107,   115,
     116,   117,   531,   530,   253,   128,   128,   128,   128,   128,
     128,   128,   128,   128,   128,   153,   495,   253,   128,   128,
     128,   128,   128,   128,   128,   128,   128,   128,   128,   153,
     490,    25,    27,   530,   530,   530,   531,   530,   530,   530,
     149,   149,   530,   530,   530,   531,    30,    31,    32,    46,
     467,    95,   516,   516,   239,   243,   284,   419,   390,   397,
      51,   451,    95,   271,   422,   424,   243,   253,   406,   393,
      97,    90,   214,   414,    12,   391,   128,    19,   475,   476,
     477,   478,   480,   529,   193,   194,   149,   149,   149,    99,
     149,   149,   530,   530,   530,   530,   530,   531,   530,   253,
     253,    25,    27,   149,   530,   530,   530,   530,   530,   531,
     530,   467,   253,   253,    25,    27,   149,   149,   149,   149,
     149,    99,   149,   149,   149,   153,   153,   149,   149,   149,
      99,    96,   149,   145,   517,   518,   519,   520,   529,   149,
     272,   391,   391,   399,   394,   245,   401,    97,   149,    99,
     393,   415,    90,    99,   149,   422,    38,   150,    19,   477,
     478,   479,     1,   195,   409,   530,   149,   149,   149,   149,
     149,    99,   149,   149,   149,   149,   149,   149,   149,   149,
     149,   149,    99,   149,    96,   149,   149,   149,   149,   149,
     530,   530,   253,   144,   146,   150,   145,   519,   520,   289,
      83,   128,   240,     1,   242,   243,   405,   407,    12,   129,
     425,   426,   427,   425,    97,   461,   153,   529,   149,   530,
     530,   253,   149,   149,   149,   153,   153,   298,   239,    97,
      97,   391,   393,   128,   214,    99,   149,    96,    90,    99,
     149,   242,   149,   149,   149,   521,   522,   100,   149,   402,
     239,   152,    12,   428,    97,   427,   428,   425,    97,    97,
     529,   529,   244,   424,   149,    12,    96,   149,   149,    99,
     149,   462,   306,   149,   128,    12,    97,    97,   428,    97,
     424,   403,   239,   149,   149,   391,   149,    97,   463,   391
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK;						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (0)


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (N)								\
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (0)
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
              (Loc).first_line, (Loc).first_column,	\
              (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (0)

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)		\
do {								\
  if (yydebug)							\
    {								\
      YYFPRINTF (stderr, "%s ", Title);				\
      yysymprint (stderr,					\
                  Type, Value);	\
      YYFPRINTF (stderr, "\n");					\
    }								\
} while (0)

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if defined (__STDC__) || defined (__cplusplus)
static void
yy_stack_print (short int *bottom, short int *top)
#else
static void
yy_stack_print (bottom, top)
    short int *bottom;
    short int *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (/* Nothing. */; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if defined (__STDC__) || defined (__cplusplus)
static void
yy_reduce_print (int yyrule)
#else
static void
yy_reduce_print (yyrule)
    int yyrule;
#endif
{
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu), ",
             yyrule - 1, yylno);
  /* Print the symbols being reduced, and their result.  */
  for (yyi = yyprhs[yyrule]; 0 <= yyrhs[yyi]; yyi++)
    YYFPRINTF (stderr, "%s ", yytname[yyrhs[yyi]]);
  YYFPRINTF (stderr, "-> %s\n", yytname[yyr1[yyrule]]);
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (Rule);		\
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined (__GLIBC__) && defined (_STRING_H)
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
#   if defined (__STDC__) || defined (__cplusplus)
yystrlen (const char *yystr)
#   else
yystrlen (yystr)
     const char *yystr;
#   endif
{
  const char *yys = yystr;

  while (*yys++ != '\0')
    continue;

  return yys - yystr - 1;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined (__GLIBC__) && defined (_STRING_H) && defined (_GNU_SOURCE)
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
#   if defined (__STDC__) || defined (__cplusplus)
yystpcpy (char *yydest, const char *yysrc)
#   else
yystpcpy (yydest, yysrc)
     char *yydest;
     const char *yysrc;
#   endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      size_t yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

#endif /* YYERROR_VERBOSE */



#if YYDEBUG
/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if defined (__STDC__) || defined (__cplusplus)
static void
yysymprint (FILE *yyoutput, int yytype, YYSTYPE *yyvaluep)
#else
static void
yysymprint (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  /* Pacify ``unused variable'' warnings.  */
  (void) yyvaluep;

  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);


# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  switch (yytype)
    {
      default:
        break;
    }
  YYFPRINTF (yyoutput, ")");
}

#endif /* ! YYDEBUG */
/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

#if defined (__STDC__) || defined (__cplusplus)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  /* Pacify ``unused variable'' warnings.  */
  (void) yyvaluep;

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
        break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
# if defined (__STDC__) || defined (__cplusplus)
int yyparse (void *YYPARSE_PARAM);
# else
int yyparse ();
# endif
#else /* ! YYPARSE_PARAM */
#if defined (__STDC__) || defined (__cplusplus)
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */



/* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
# if defined (__STDC__) || defined (__cplusplus)
int yyparse (void *YYPARSE_PARAM)
# else
int yyparse (YYPARSE_PARAM)
  void *YYPARSE_PARAM;
# endif
#else /* ! YYPARSE_PARAM */
#if defined (__STDC__) || defined (__cplusplus)
int
yyparse (void)
#else
int
yyparse ()
    ;
#endif
#endif
{
  
  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  short int yyssa[YYINITDEPTH];
  short int *yyss = yyssa;
  short int *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK   (yyvsp--, yyssp--)

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* When reducing, the number of symbols on the RHS of the reduced
     rule.  */
  int yylen;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed. so pushing a state here evens the stacks.
     */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack. Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	short int *yyss1 = yyss;


	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),

		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	short int *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);

#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

/* Do appropriate processing given the current state.  */
/* Read a look-ahead token if we need one and don't already have one.  */
/* yyresume: */

  /* First try to decide what to do without reference to look-ahead token.  */

  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the token being shifted unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  *++yyvsp = yylval;


  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  yystate = yyn;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 575 "../../../kg++fe/gnu/parse.y"
    { finish_translation_unit (); ;}
    break;

  case 3:
#line 577 "../../../kg++fe/gnu/parse.y"
    { finish_translation_unit (); ;}
    break;

  case 4:
#line 585 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 5:
#line 587 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ggc_collect (); ;}
    break;

  case 6:
#line 589 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ggc_collect (); ;}
    break;

  case 9:
#line 598 "../../../kg++fe/gnu/parse.y"
    { have_extern_spec = true;
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 10:
#line 602 "../../../kg++fe/gnu/parse.y"
    { have_extern_spec = false; ;}
    break;

  case 11:
#line 607 "../../../kg++fe/gnu/parse.y"
    { (yyval.itype) = pedantic;
		  pedantic = 0; ;}
    break;

  case 13:
#line 616 "../../../kg++fe/gnu/parse.y"
    { if (pending_lang_change) do_pending_lang_change();
		  type_lookups = NULL_TREE; ;}
    break;

  case 14:
#line 619 "../../../kg++fe/gnu/parse.y"
    { if (! toplevel_bindings_p ())
		  pop_everything (); ;}
    break;

  case 15:
#line 625 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 16:
#line 627 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 17:
#line 630 "../../../kg++fe/gnu/parse.y"
    { warning ("keyword `export' not implemented, and will be ignored"); ;}
    break;

  case 18:
#line 632 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 19:
#line 634 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 20:
#line 636 "../../../kg++fe/gnu/parse.y"
    { assemble_asm ((yyvsp[-2].ttype)); ;}
    break;

  case 21:
#line 638 "../../../kg++fe/gnu/parse.y"
    { pop_lang_context (); ;}
    break;

  case 22:
#line 640 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); pop_lang_context (); ;}
    break;

  case 23:
#line 642 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); pop_lang_context (); ;}
    break;

  case 24:
#line 644 "../../../kg++fe/gnu/parse.y"
    { push_namespace ((yyvsp[-1].ttype)); ;}
    break;

  case 25:
#line 646 "../../../kg++fe/gnu/parse.y"
    { pop_namespace (); ;}
    break;

  case 26:
#line 648 "../../../kg++fe/gnu/parse.y"
    { push_namespace (NULL_TREE); ;}
    break;

  case 27:
#line 650 "../../../kg++fe/gnu/parse.y"
    { pop_namespace (); ;}
    break;

  case 29:
#line 653 "../../../kg++fe/gnu/parse.y"
    { do_toplevel_using_decl ((yyvsp[-1].ttype)); ;}
    break;

  case 31:
#line 656 "../../../kg++fe/gnu/parse.y"
    { pedantic = (yyvsp[-1].itype); ;}
    break;

  case 33:
#line 659 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 34:
#line 664 "../../../kg++fe/gnu/parse.y"
    { begin_only_namespace_names (); ;}
    break;

  case 35:
#line 666 "../../../kg++fe/gnu/parse.y"
    {
		  end_only_namespace_names ();
		  if (lastiddecl)
		    (yyvsp[-1].ttype) = lastiddecl;
		  do_namespace_alias ((yyvsp[-4].ttype), (yyvsp[-1].ttype));
		;}
    break;

  case 36:
#line 676 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 37:
#line 678 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 38:
#line 680 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 39:
#line 685 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 40:
#line 687 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, global_namespace, (yyvsp[0].ttype)); ;}
    break;

  case 41:
#line 689 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 42:
#line 694 "../../../kg++fe/gnu/parse.y"
    { begin_only_namespace_names (); ;}
    break;

  case 43:
#line 696 "../../../kg++fe/gnu/parse.y"
    {
		  end_only_namespace_names ();
		  /* If no declaration was found, the using-directive is
		     invalid. Since that was not reported, we need the
		     identifier for the error message. */
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE && lastiddecl)
		    (yyvsp[0].ttype) = lastiddecl;
		  do_using_directive ((yyvsp[0].ttype));
		;}
    break;

  case 45:
#line 710 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyval.ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = lastiddecl;
		  got_scope = (yyval.ttype);
		;}
    break;

  case 46:
#line 716 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = (yyvsp[-1].ttype);
		  if (TREE_CODE ((yyval.ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = lastiddecl;
		  got_scope = (yyval.ttype);
		;}
    break;

  case 49:
#line 728 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 50:
#line 730 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 51:
#line 735 "../../../kg++fe/gnu/parse.y"
    { push_lang_context ((yyvsp[0].ttype)); ;}
    break;

  case 52:
#line 737 "../../../kg++fe/gnu/parse.y"
    { if (current_lang_name != (yyvsp[0].ttype))
		    error ("use of linkage spec `%D' is different from previous spec `%D'", (yyvsp[0].ttype), current_lang_name);
		  pop_lang_context (); push_lang_context ((yyvsp[0].ttype)); ;}
    break;

  case 53:
#line 744 "../../../kg++fe/gnu/parse.y"
    { begin_template_parm_list (); ;}
    break;

  case 54:
#line 746 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = end_template_parm_list ((yyvsp[-1].ttype)); ;}
    break;

  case 55:
#line 751 "../../../kg++fe/gnu/parse.y"
    { begin_specialization();
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 58:
#line 762 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = process_template_parm (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 59:
#line 764 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = process_template_parm ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 60:
#line 769 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 61:
#line 771 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 62:
#line 776 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_template_type_parm ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 63:
#line 778 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_template_type_parm (class_type_node, (yyvsp[0].ttype)); ;}
    break;

  case 64:
#line 783 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_template_template_parm ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 65:
#line 795 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 66:
#line 797 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (groktypename ((yyvsp[0].ftype).t), (yyvsp[-2].ttype)); ;}
    break;

  case 67:
#line 799 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ftype).t); ;}
    break;

  case 68:
#line 801 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), (yyvsp[-2].ftype).t); ;}
    break;

  case 69:
#line 803 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 70:
#line 805 "../../../kg++fe/gnu/parse.y"
    {
		  (yyvsp[0].ttype) = check_template_template_default_arg ((yyvsp[0].ttype));
		  (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), (yyvsp[-2].ttype));
		;}
    break;

  case 71:
#line 813 "../../../kg++fe/gnu/parse.y"
    { finish_template_decl ((yyvsp[-1].ttype)); ;}
    break;

  case 72:
#line 815 "../../../kg++fe/gnu/parse.y"
    { finish_template_decl ((yyvsp[-1].ttype)); ;}
    break;

  case 73:
#line 820 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 74:
#line 822 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 75:
#line 824 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 76:
#line 826 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines ();
		  pop_lang_context (); ;}
    break;

  case 77:
#line 829 "../../../kg++fe/gnu/parse.y"
    { do_pending_inlines ();
		  pop_lang_context (); ;}
    break;

  case 78:
#line 832 "../../../kg++fe/gnu/parse.y"
    { pedantic = (yyvsp[-1].itype); ;}
    break;

  case 80:
#line 838 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 81:
#line 840 "../../../kg++fe/gnu/parse.y"
    { note_list_got_semicolon ((yyvsp[-2].ftype).t); ;}
    break;

  case 82:
#line 842 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[-1].ftype).t != error_mark_node)
                    {
		      maybe_process_partial_specialization ((yyvsp[-1].ftype).t);
		      note_got_semicolon ((yyvsp[-1].ftype).t);
	            }
                ;}
    break;

  case 84:
#line 854 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 85:
#line 856 "../../../kg++fe/gnu/parse.y"
    { note_list_got_semicolon ((yyvsp[-2].ftype).t); ;}
    break;

  case 86:
#line 858 "../../../kg++fe/gnu/parse.y"
    { pedwarn ("empty declaration"); ;}
    break;

  case 88:
#line 861 "../../../kg++fe/gnu/parse.y"
    {
		  tree t, attrs;
		  split_specs_attrs ((yyvsp[-1].ftype).t, &t, &attrs);
		  shadow_tag (t);
		  note_list_got_semicolon ((yyvsp[-1].ftype).t);
		;}
    break;

  case 91:
#line 870 "../../../kg++fe/gnu/parse.y"
    { end_input (); ;}
    break;

  case 101:
#line 896 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_compound_stmt (/*has_no_scope=*/1); ;}
    break;

  case 102:
#line 898 "../../../kg++fe/gnu/parse.y"
    {
		  STMT_LINENO ((yyvsp[-1].ttype)) = (yyvsp[-3].itype);
		  finish_compound_stmt (/*has_no_scope=*/1, (yyvsp[-1].ttype));
		  finish_function_body ((yyvsp[-5].ttype));
		;}
    break;

  case 103:
#line 907 "../../../kg++fe/gnu/parse.y"
    { expand_body (finish_function (0)); ;}
    break;

  case 104:
#line 909 "../../../kg++fe/gnu/parse.y"
    { expand_body (finish_function (0)); ;}
    break;

  case 105:
#line 911 "../../../kg++fe/gnu/parse.y"
    { ;}
    break;

  case 106:
#line 916 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 107:
#line 918 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 108:
#line 920 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype));
		  (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 109:
#line 924 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 110:
#line 926 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 111:
#line 928 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype));
		  (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 112:
#line 932 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 113:
#line 934 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 114:
#line 936 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype));
		  (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 115:
#line 940 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 116:
#line 942 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 117:
#line 944 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[-4].ttype), (yyvsp[-3].ttype));
		  (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 118:
#line 951 "../../../kg++fe/gnu/parse.y"
    { check_for_new_type ("return type", (yyvsp[-1].ftype));
		  if (!parse_begin_function_definition ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)))
		    YYERROR1; ;}
    break;

  case 119:
#line 955 "../../../kg++fe/gnu/parse.y"
    { if (!parse_begin_function_definition ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)))
		    YYERROR1; ;}
    break;

  case 120:
#line 958 "../../../kg++fe/gnu/parse.y"
    { if (!parse_begin_function_definition (NULL_TREE, (yyvsp[0].ttype)))
		    YYERROR1; ;}
    break;

  case 121:
#line 961 "../../../kg++fe/gnu/parse.y"
    { if (!parse_begin_function_definition ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)))
		    YYERROR1; ;}
    break;

  case 122:
#line 964 "../../../kg++fe/gnu/parse.y"
    { if (!parse_begin_function_definition (NULL_TREE, (yyvsp[0].ttype)))
		    YYERROR1; ;}
    break;

  case 123:
#line 973 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-5].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 124:
#line 976 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-6].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 125:
#line 978 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-3].ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 126:
#line 980 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-4].ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 127:
#line 982 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-5].ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 128:
#line 984 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[-3].ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 129:
#line 991 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), (yyvsp[-1].ftype).t, (yyvsp[-1].ftype).lookups);
		 rest_of_mdef:
		  if (! (yyval.ttype))
		    YYERROR1;
		  if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  snarf_method ((yyval.ttype)); ;}
    break;

  case 130:
#line 999 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), NULL_TREE, NULL_TREE);
		  goto rest_of_mdef; ;}
    break;

  case 131:
#line 1002 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), (yyvsp[-1].ftype).t, (yyvsp[-1].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 132:
#line 1004 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), (yyvsp[-1].ftype).t, (yyvsp[-1].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 133:
#line 1006 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), NULL_TREE, NULL_TREE);
		  goto rest_of_mdef; ;}
    break;

  case 134:
#line 1009 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), (yyvsp[-1].ftype).t, (yyvsp[-1].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 135:
#line 1011 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[0].ttype), NULL_TREE, NULL_TREE);
		  goto rest_of_mdef; ;}
    break;

  case 136:
#line 1017 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 137:
#line 1024 "../../../kg++fe/gnu/parse.y"
    { finish_named_return_value ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 138:
#line 1026 "../../../kg++fe/gnu/parse.y"
    { finish_named_return_value ((yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 139:
#line 1028 "../../../kg++fe/gnu/parse.y"
    { finish_named_return_value ((yyval.ttype), NULL_TREE); ;}
    break;

  case 140:
#line 1032 "../../../kg++fe/gnu/parse.y"
    { begin_mem_initializers (); ;}
    break;

  case 141:
#line 1033 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[0].ftype).new_type_flag == 0)
		    error ("no base or member initializers given following ':'");
		  finish_mem_initializers ((yyvsp[0].ftype).t);
		;}
    break;

  case 142:
#line 1042 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = begin_function_body ();
		;}
    break;

  case 143:
#line 1049 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).new_type_flag = 0;
		  (yyval.ftype).t = NULL_TREE;
		;}
    break;

  case 144:
#line 1054 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).new_type_flag = 1;
		  (yyval.ftype).t = (yyvsp[0].ttype);
		;}
    break;

  case 145:
#line 1059 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[0].ttype))
		    {
		      (yyval.ftype).new_type_flag = 1;
		      TREE_CHAIN ((yyvsp[0].ttype)) = (yyvsp[-2].ftype).t;
		      (yyval.ftype).t = (yyvsp[0].ttype);
		    }
		  else
		    (yyval.ftype) = (yyvsp[-2].ftype);
		;}
    break;

  case 147:
#line 1074 "../../../kg++fe/gnu/parse.y"
    {
 		  if (current_class_name)
		    pedwarn ("anachronistic old style base class initializer");
		  (yyval.ttype) = expand_member_init (NULL_TREE);
		  in_base_initializer = (yyval.ttype) && !DECL_P ((yyval.ttype));
		;}
    break;

  case 148:
#line 1081 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[0].ttype));
		  in_base_initializer = (yyval.ttype) && !DECL_P ((yyval.ttype)); ;}
    break;

  case 149:
#line 1084 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[0].ttype));
		  in_base_initializer = (yyval.ttype) && !DECL_P ((yyval.ttype)); ;}
    break;

  case 150:
#line 1087 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[0].ttype));
		  in_base_initializer = (yyval.ttype) && !DECL_P ((yyval.ttype)); ;}
    break;

  case 151:
#line 1093 "../../../kg++fe/gnu/parse.y"
    { in_base_initializer = 0;
		  (yyval.ttype) = (yyvsp[-3].ttype) ? build_tree_list ((yyvsp[-3].ttype), (yyvsp[-1].ttype)) : NULL_TREE; ;}
    break;

  case 152:
#line 1096 "../../../kg++fe/gnu/parse.y"
    { in_base_initializer = 0;
		  (yyval.ttype) = (yyvsp[-1].ttype) ? build_tree_list ((yyvsp[-1].ttype), void_type_node) : NULL_TREE; ;}
    break;

  case 153:
#line 1099 "../../../kg++fe/gnu/parse.y"
    { in_base_initializer = 0;
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 165:
#line 1125 "../../../kg++fe/gnu/parse.y"
    { do_type_instantiation ((yyvsp[-1].ftype).t, NULL_TREE, 1);
		  yyungetc (';', 1); ;}
    break;

  case 167:
#line 1129 "../../../kg++fe/gnu/parse.y"
    { tree specs = strip_attrs ((yyvsp[-1].ftype).t);
		  parse_decl_instantiation (specs, (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 169:
#line 1133 "../../../kg++fe/gnu/parse.y"
    { parse_decl_instantiation (NULL_TREE, (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 171:
#line 1136 "../../../kg++fe/gnu/parse.y"
    { parse_decl_instantiation (NULL_TREE, (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 173:
#line 1139 "../../../kg++fe/gnu/parse.y"
    { do_type_instantiation ((yyvsp[-1].ftype).t, (yyvsp[-4].ttype), 1);
		  yyungetc (';', 1); ;}
    break;

  case 174:
#line 1142 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 175:
#line 1145 "../../../kg++fe/gnu/parse.y"
    { tree specs = strip_attrs ((yyvsp[-1].ftype).t);
		  parse_decl_instantiation (specs, (yyvsp[0].ttype), (yyvsp[-4].ttype)); ;}
    break;

  case 176:
#line 1148 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 177:
#line 1150 "../../../kg++fe/gnu/parse.y"
    { parse_decl_instantiation (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-3].ttype)); ;}
    break;

  case 178:
#line 1152 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 179:
#line 1154 "../../../kg++fe/gnu/parse.y"
    { parse_decl_instantiation (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-3].ttype)); ;}
    break;

  case 180:
#line 1156 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 181:
#line 1160 "../../../kg++fe/gnu/parse.y"
    { begin_explicit_instantiation(); ;}
    break;

  case 182:
#line 1164 "../../../kg++fe/gnu/parse.y"
    { end_explicit_instantiation(); ;}
    break;

  case 183:
#line 1174 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 184:
#line 1177 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 187:
#line 1185 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 188:
#line 1191 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 189:
#line 1195 "../../../kg++fe/gnu/parse.y"
    {
		  if (yychar == YYEMPTY)
		    yychar = YYLEX;

		  (yyval.ttype) = finish_template_type ((yyvsp[-3].ttype), (yyvsp[-1].ttype),
					     yychar == SCOPE);
		;}
    break;

  case 191:
#line 1207 "../../../kg++fe/gnu/parse.y"
    {
		  /* Handle `Class<Class<Type>>' without space in the `>>' */
		  pedwarn ("`>>' should be `> >' in template class name");
		  yyungetc ('>', 1);
		;}
    break;

  case 192:
#line 1216 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 194:
#line 1222 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyval.ttype)); ;}
    break;

  case 195:
#line 1224 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 196:
#line 1228 "../../../kg++fe/gnu/parse.y"
    { ++class_template_ok_as_expr; ;}
    break;

  case 197:
#line 1230 "../../../kg++fe/gnu/parse.y"
    { 
		  --class_template_ok_as_expr; 
		  (yyval.ttype) = (yyvsp[0].ttype); 
		;}
    break;

  case 198:
#line 1238 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = groktypename ((yyvsp[0].ftype).t); ;}
    break;

  case 199:
#line 1240 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = lastiddecl;
		  if (DECL_TEMPLATE_TEMPLATE_PARM_P ((yyval.ttype)))
		    (yyval.ttype) = TREE_TYPE ((yyval.ttype));
		;}
    break;

  case 200:
#line 1246 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = lastiddecl;
		  if (DECL_TEMPLATE_TEMPLATE_PARM_P ((yyval.ttype)))
		    (yyval.ttype) = TREE_TYPE ((yyval.ttype));
		;}
    break;

  case 202:
#line 1253 "../../../kg++fe/gnu/parse.y"
    {
		  if (!processing_template_decl)
		    {
		      error ("use of template qualifier outside template");
		      (yyval.ttype) = error_mark_node;
		    }
		  else
		    (yyval.ttype) = make_unbound_class_template ((yyvsp[-2].ttype), (yyvsp[0].ttype), tf_error | tf_parsing);
		;}
    break;

  case 203:
#line 1266 "../../../kg++fe/gnu/parse.y"
    { (yyval.code) = NEGATE_EXPR; ;}
    break;

  case 204:
#line 1268 "../../../kg++fe/gnu/parse.y"
    { (yyval.code) = CONVERT_EXPR; ;}
    break;

  case 205:
#line 1270 "../../../kg++fe/gnu/parse.y"
    { (yyval.code) = PREINCREMENT_EXPR; ;}
    break;

  case 206:
#line 1272 "../../../kg++fe/gnu/parse.y"
    { (yyval.code) = PREDECREMENT_EXPR; ;}
    break;

  case 207:
#line 1274 "../../../kg++fe/gnu/parse.y"
    { (yyval.code) = TRUTH_NOT_EXPR; ;}
    break;

  case 208:
#line 1279 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_compound_expr ((yyval.ttype)); ;}
    break;

  case 210:
#line 1285 "../../../kg++fe/gnu/parse.y"
    { error ("ISO C++ forbids an empty condition for `%s'",
			 cond_stmt_keyword);
		  (yyval.ttype) = integer_zero_node; ;}
    break;

  case 211:
#line 1289 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 212:
#line 1294 "../../../kg++fe/gnu/parse.y"
    { error ("ISO C++ forbids an empty condition for `%s'",
			 cond_stmt_keyword);
		  (yyval.ttype) = integer_zero_node; ;}
    break;

  case 213:
#line 1298 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 214:
#line 1303 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 216:
#line 1306 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 217:
#line 1311 "../../../kg++fe/gnu/parse.y"
    { {
		  tree d;
		  for (d = getdecls (); d; d = TREE_CHAIN (d))
		    if (TREE_CODE (d) == TYPE_DECL) {
		      tree s = TREE_TYPE (d);
		      if (TREE_CODE (s) == RECORD_TYPE)
			error ("definition of class `%T' in condition", s);
		      else if (TREE_CODE (s) == ENUMERAL_TYPE)
			error ("definition of enum `%T' in condition", s);
		    }
		  }
		  current_declspecs = (yyvsp[-4].ftype).t;
		  (yyval.ttype) = parse_decl ((yyvsp[-3].ttype), (yyvsp[-1].ttype), 1);
		;}
    break;

  case 218:
#line 1326 "../../../kg++fe/gnu/parse.y"
    {
		  parse_end_decl ((yyvsp[-1].ttype), (yyvsp[0].ttype), (yyvsp[-3].ttype));
		  (yyval.ttype) = convert_from_reference ((yyvsp[-1].ttype));
		  if (TREE_CODE (TREE_TYPE ((yyval.ttype))) == ARRAY_TYPE)
		    error ("definition of array `%#D' in condition", (yyval.ttype));
		;}
    break;

  case 224:
#line 1344 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyval.ttype),
		                  build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 225:
#line 1347 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyval.ttype),
		                  build_tree_list (NULL_TREE, error_mark_node)); ;}
    break;

  case 226:
#line 1350 "../../../kg++fe/gnu/parse.y"
    { chainon ((yyval.ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 227:
#line 1352 "../../../kg++fe/gnu/parse.y"
    { chainon ((yyval.ttype), build_tree_list (NULL_TREE, error_mark_node)); ;}
    break;

  case 228:
#line 1357 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyval.ttype)); ;}
    break;

  case 230:
#line 1363 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 231:
#line 1366 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  pedantic = (yyvsp[-1].itype); ;}
    break;

  case 232:
#line 1369 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_indirect_ref ((yyvsp[0].ttype), "unary *"); ;}
    break;

  case 233:
#line 1371 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_unary_op (ADDR_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 234:
#line 1373 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_unary_op (BIT_NOT_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 235:
#line 1375 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_unary_op_expr ((yyvsp[-1].code), (yyvsp[0].ttype)); ;}
    break;

  case 236:
#line 1378 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_label_address_expr ((yyvsp[0].ttype)); ;}
    break;

  case 237:
#line 1380 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_sizeof ((yyvsp[0].ttype));
		  skip_evaluation--; ;}
    break;

  case 238:
#line 1383 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_sizeof (groktypename ((yyvsp[-1].ftype).t));
		  check_for_new_type ("sizeof", (yyvsp[-1].ftype));
		  skip_evaluation--; ;}
    break;

  case 239:
#line 1387 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_alignof ((yyvsp[0].ttype));
		  skip_evaluation--; ;}
    break;

  case 240:
#line 1390 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_alignof (groktypename ((yyvsp[-1].ftype).t));
		  check_for_new_type ("alignof", (yyvsp[-1].ftype));
		  skip_evaluation--; ;}
    break;

  case 241:
#line 1397 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new (NULL_TREE, (yyvsp[0].ftype).t, NULL_TREE, (yyvsp[-1].itype));
		  check_for_new_type ("new", (yyvsp[0].ftype)); ;}
    break;

  case 242:
#line 1400 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new (NULL_TREE, (yyvsp[-1].ftype).t, (yyvsp[0].ttype), (yyvsp[-2].itype));
		  check_for_new_type ("new", (yyvsp[-1].ftype)); ;}
    break;

  case 243:
#line 1403 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[-1].ttype), (yyvsp[0].ftype).t, NULL_TREE, (yyvsp[-2].itype));
		  check_for_new_type ("new", (yyvsp[0].ftype)); ;}
    break;

  case 244:
#line 1406 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[-2].ttype), (yyvsp[-1].ftype).t, (yyvsp[0].ttype), (yyvsp[-3].itype));
		  check_for_new_type ("new", (yyvsp[-1].ftype)); ;}
    break;

  case 245:
#line 1410 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new (NULL_TREE, groktypename((yyvsp[-1].ftype).t),
				  NULL_TREE, (yyvsp[-3].itype));
		  check_for_new_type ("new", (yyvsp[-1].ftype)); ;}
    break;

  case 246:
#line 1414 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new (NULL_TREE, groktypename((yyvsp[-2].ftype).t), (yyvsp[0].ttype), (yyvsp[-4].itype));
		  check_for_new_type ("new", (yyvsp[-2].ftype)); ;}
    break;

  case 247:
#line 1417 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[-3].ttype), groktypename((yyvsp[-1].ftype).t), NULL_TREE, (yyvsp[-4].itype));
		  check_for_new_type ("new", (yyvsp[-1].ftype)); ;}
    break;

  case 248:
#line 1420 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[-4].ttype), groktypename((yyvsp[-2].ftype).t), (yyvsp[0].ttype), (yyvsp[-5].itype));
		  check_for_new_type ("new", (yyvsp[-2].ftype)); ;}
    break;

  case 249:
#line 1424 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[0].ttype), NULL_TREE, 0, (yyvsp[-1].itype)); ;}
    break;

  case 250:
#line 1426 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[0].ttype), NULL_TREE, 1, (yyvsp[-3].itype));
		  if (yychar == YYEMPTY)
		    yychar = YYLEX; ;}
    break;

  case 251:
#line 1430 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[0].ttype), (yyvsp[-2].ttype), 2, (yyvsp[-4].itype));
		  if (yychar == YYEMPTY)
		    yychar = YYLEX; ;}
    break;

  case 252:
#line 1434 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_unary_op (REALPART_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 253:
#line 1436 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_unary_op (IMAGPART_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 254:
#line 1441 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 255:
#line 1443 "../../../kg++fe/gnu/parse.y"
    { pedwarn ("old style placement syntax, use () instead");
		  (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 256:
#line 1449 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 257:
#line 1451 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = void_zero_node; ;}
    break;

  case 258:
#line 1453 "../../../kg++fe/gnu/parse.y"
    {
		  error ("`%T' is not a valid expression", (yyvsp[-1].ftype).t);
		  (yyval.ttype) = error_mark_node;
		;}
    break;

  case 259:
#line 1458 "../../../kg++fe/gnu/parse.y"
    {
		  /* This was previously allowed as an extension, but
		     was removed in G++ 3.3.  */
		  error ("initialization of new expression with `='");
		  (yyval.ttype) = error_mark_node;
		;}
    break;

  case 260:
#line 1469 "../../../kg++fe/gnu/parse.y"
    { (yyvsp[-1].ftype).t = finish_parmlist (build_tree_list (NULL_TREE, (yyvsp[-1].ftype).t), 0);
		  (yyval.ttype) = make_call_declarator (NULL_TREE, (yyvsp[-1].ftype).t, NULL_TREE, NULL_TREE);
		  check_for_new_type ("cast", (yyvsp[-1].ftype)); ;}
    break;

  case 261:
#line 1473 "../../../kg++fe/gnu/parse.y"
    { (yyvsp[-1].ftype).t = finish_parmlist (build_tree_list (NULL_TREE, (yyvsp[-1].ftype).t), 0);
		  (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[-1].ftype).t, NULL_TREE, NULL_TREE);
		  check_for_new_type ("cast", (yyvsp[-1].ftype)); ;}
    break;

  case 263:
#line 1481 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = reparse_absdcl_as_casts ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 264:
#line 1483 "../../../kg++fe/gnu/parse.y"
    {
		  tree init = build_nt (CONSTRUCTOR, NULL_TREE,
					nreverse ((yyvsp[-2].ttype)));
		  if (pedantic)
		    pedwarn ("ISO C++ forbids compound literals");
		  /* Indicate that this was a C99 compound literal.  */
		  TREE_HAS_CONSTRUCTOR (init) = 1;

		  (yyval.ttype) = reparse_absdcl_as_casts ((yyval.ttype), init);
		;}
    break;

  case 266:
#line 1499 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (MEMBER_REF, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 267:
#line 1501 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_m_component_ref ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 268:
#line 1503 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 269:
#line 1505 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 270:
#line 1507 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 271:
#line 1509 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 272:
#line 1511 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 273:
#line 1513 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 274:
#line 1515 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 275:
#line 1517 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 276:
#line 1519 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (LT_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 277:
#line 1521 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (GT_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 278:
#line 1523 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 279:
#line 1525 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 280:
#line 1527 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 281:
#line 1529 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 282:
#line 1531 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 283:
#line 1533 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ANDIF_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 284:
#line 1535 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ORIF_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 285:
#line 1537 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_conditional_expr ((yyval.ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 286:
#line 1539 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), NOP_EXPR, (yyvsp[0].ttype));
		  if ((yyval.ttype) != error_mark_node)
                    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), MODIFY_EXPR); ;}
    break;

  case 287:
#line 1543 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), (yyvsp[-1].code), (yyvsp[0].ttype)); ;}
    break;

  case 288:
#line 1545 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_throw (NULL_TREE); ;}
    break;

  case 289:
#line 1547 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_throw ((yyvsp[0].ttype)); ;}
    break;

  case 291:
#line 1554 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (MEMBER_REF, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 292:
#line 1556 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_m_component_ref ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 293:
#line 1558 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 294:
#line 1560 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 295:
#line 1562 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 296:
#line 1564 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 297:
#line 1566 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 298:
#line 1568 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 299:
#line 1570 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 300:
#line 1572 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 301:
#line 1574 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (LT_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 302:
#line 1576 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 303:
#line 1578 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 304:
#line 1580 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 305:
#line 1582 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 306:
#line 1584 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[-1].code), (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 307:
#line 1586 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ANDIF_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 308:
#line 1588 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ORIF_EXPR, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 309:
#line 1590 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_conditional_expr ((yyval.ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 310:
#line 1592 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), NOP_EXPR, (yyvsp[0].ttype));
		  if ((yyval.ttype) != error_mark_node)
                    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), MODIFY_EXPR); ;}
    break;

  case 311:
#line 1596 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), (yyvsp[-1].code), (yyvsp[0].ttype)); ;}
    break;

  case 312:
#line 1598 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_throw (NULL_TREE); ;}
    break;

  case 313:
#line 1600 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_throw ((yyvsp[0].ttype)); ;}
    break;

  case 314:
#line 1605 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (BIT_NOT_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 315:
#line 1607 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (BIT_NOT_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 321:
#line 1616 "../../../kg++fe/gnu/parse.y"
    {
		  /* If lastiddecl is a BASELINK we're in an
		     expression like S::f<int>, so don't
		     do_identifier; we only do that for unqualified
		     identifiers.  */
	          if (!lastiddecl || !BASELINK_P (lastiddecl))
		    (yyval.ttype) = do_identifier ((yyvsp[-1].ttype), 3, NULL_TREE);
		  else
		    (yyval.ttype) = (yyvsp[-1].ttype);
		;}
    break;

  case 322:
#line 1630 "../../../kg++fe/gnu/parse.y"
    { 
		  tree template_name = (yyvsp[-2].ttype);
		  if (TREE_CODE (template_name) == COMPONENT_REF)
		    template_name = TREE_OPERAND (template_name, 1);
		  (yyval.ttype) = lookup_template_function (template_name, (yyvsp[-1].ttype)); 
		;}
    break;

  case 323:
#line 1637 "../../../kg++fe/gnu/parse.y"
    { 
		  tree template_name = (yyvsp[-2].ttype);
		  if (TREE_CODE (template_name) == COMPONENT_REF)
		    template_name = TREE_OPERAND (template_name, 1);
		  (yyval.ttype) = lookup_template_function (template_name, (yyvsp[-1].ttype)); 
		;}
    break;

  case 324:
#line 1647 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 325:
#line 1649 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 326:
#line 1652 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 331:
#line 1664 "../../../kg++fe/gnu/parse.y"
    {
		  /* Provide support for '(' attributes '*' declarator ')'
		     etc */
		  (yyval.ttype) = tree_cons ((yyvsp[-1].ttype), (yyvsp[0].ttype), NULL_TREE);
		;}
    break;

  case 333:
#line 1674 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (INDIRECT_REF, (yyvsp[0].ttype)); ;}
    break;

  case 334:
#line 1676 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ADDR_EXPR, (yyvsp[0].ttype)); ;}
    break;

  case 335:
#line 1678 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 336:
#line 1683 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 337:
#line 1685 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 341:
#line 1695 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_decl_parsing ((yyvsp[-1].ttype)); ;}
    break;

  case 342:
#line 1700 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[0].ttype)) == BIT_NOT_EXPR)
		    (yyval.ttype) = build_x_unary_op (BIT_NOT_EXPR, TREE_OPERAND ((yyvsp[0].ttype), 0));
		  else
		    (yyval.ttype) = finish_id_expr ((yyvsp[0].ttype));
		;}
    break;

  case 345:
#line 1709 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = fix_string_type ((yyval.ttype));
		  /* fix_string_type doesn't set up TYPE_MAIN_VARIANT of
		     a const array the way we want, so fix it.  */
		  if (flag_const_strings)
		    TREE_TYPE ((yyval.ttype)) = build_cplus_array_type
		      (TREE_TYPE (TREE_TYPE ((yyval.ttype))),
		       TYPE_DOMAIN (TREE_TYPE ((yyval.ttype))));
		;}
    break;

  case 346:
#line 1719 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_fname ((yyvsp[0].ttype)); ;}
    break;

  case 347:
#line 1721 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parenthesized_expr ((yyvsp[-1].ttype)); ;}
    break;

  case 348:
#line 1723 "../../../kg++fe/gnu/parse.y"
    { (yyvsp[-1].ttype) = reparse_decl_as_expr (NULL_TREE, (yyvsp[-1].ttype));
		  (yyval.ttype) = finish_parenthesized_expr ((yyvsp[-1].ttype)); ;}
    break;

  case 349:
#line 1726 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 350:
#line 1728 "../../../kg++fe/gnu/parse.y"
    { if (!at_function_scope_p ())
		    {
		      error ("braced-group within expression allowed only inside a function");
		      YYERROR;
		    }
		  if (pedantic)
		    pedwarn ("ISO C++ forbids braced-groups within expressions");
		  (yyval.ttype) = begin_stmt_expr ();
		;}
    break;

  case 351:
#line 1738 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_stmt_expr ((yyvsp[-2].ttype)); ;}
    break;

  case 352:
#line 1743 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-3].ttype), (yyvsp[-1].ttype), 1); ;}
    break;

  case 353:
#line 1745 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-1].ttype), NULL_TREE, 1); ;}
    break;

  case 354:
#line 1747 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-3].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 355:
#line 1749 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-1].ttype), NULL_TREE, 0); ;}
    break;

  case 356:
#line 1751 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_x_va_arg ((yyvsp[-3].ttype), groktypename ((yyvsp[-1].ftype).t));
		  check_for_new_type ("__builtin_va_arg", (yyvsp[-1].ftype)); ;}
    break;

  case 357:
#line 1754 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 358:
#line 1756 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = grok_array_decl ((yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 359:
#line 1758 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_increment_expr ((yyvsp[-1].ttype), POSTINCREMENT_EXPR); ;}
    break;

  case 360:
#line 1760 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_increment_expr ((yyvsp[-1].ttype), POSTDECREMENT_EXPR); ;}
    break;

  case 361:
#line 1763 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_this_expr (); ;}
    break;

  case 362:
#line 1765 "../../../kg++fe/gnu/parse.y"
    {
		  /* This is a C cast in C++'s `functional' notation
		     using the "implicit int" extension so that:
		     `const (3)' is equivalent to `const int (3)'.  */
		  tree type;

		  type = hash_tree_cons (NULL_TREE, (yyvsp[-3].ttype), NULL_TREE);
		  type = groktypename (build_tree_list (type, NULL_TREE));
		  (yyval.ttype) = build_functional_cast (type, (yyvsp[-1].ttype));
		;}
    break;

  case 364:
#line 1777 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-4].ftype).t);
		  check_for_new_type ("dynamic_cast", (yyvsp[-4].ftype));
		  (yyval.ttype) = build_dynamic_cast (type, (yyvsp[-1].ttype)); ;}
    break;

  case 365:
#line 1781 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-4].ftype).t);
		  check_for_new_type ("static_cast", (yyvsp[-4].ftype));
		  (yyval.ttype) = build_static_cast (type, (yyvsp[-1].ttype)); ;}
    break;

  case 366:
#line 1785 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-4].ftype).t);
		  check_for_new_type ("reinterpret_cast", (yyvsp[-4].ftype));
		  (yyval.ttype) = build_reinterpret_cast (type, (yyvsp[-1].ttype)); ;}
    break;

  case 367:
#line 1789 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-4].ftype).t);
		  check_for_new_type ("const_cast", (yyvsp[-4].ftype));
		  (yyval.ttype) = build_const_cast (type, (yyvsp[-1].ttype)); ;}
    break;

  case 368:
#line 1793 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_typeid ((yyvsp[-1].ttype)); ;}
    break;

  case 369:
#line 1795 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-1].ftype).t);
		  check_for_new_type ("typeid", (yyvsp[-1].ftype));
		  (yyval.ttype) = get_typeid (type); ;}
    break;

  case 370:
#line 1799 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_scoped_id ((yyvsp[0].ttype)); ;}
    break;

  case 371:
#line 1801 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 372:
#line 1803 "../../../kg++fe/gnu/parse.y"
    {
		  got_scope = NULL_TREE;
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = parse_scoped_id ((yyvsp[0].ttype));
		  else
		    (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 373:
#line 1811 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_offset_ref (OP0 ((yyval.ttype)), OP1 ((yyval.ttype)));
		  if (!class_template_ok_as_expr 
		      && DECL_CLASS_TEMPLATE_P ((yyval.ttype)))
		    {
		      error ("invalid use of template `%D'", (yyval.ttype)); 
		      (yyval.ttype) = error_mark_node;
		    }
                ;}
    break;

  case 374:
#line 1820 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-3].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 375:
#line 1822 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[-1].ttype), NULL_TREE, 0); ;}
    break;

  case 376:
#line 1824 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 377:
#line 1826 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[-3].ttype), (yyvsp[-4].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 378:
#line 1828 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[-1].ttype), (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 379:
#line 1830 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 380:
#line 1832 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 381:
#line 1834 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[-3].ttype), (yyvsp[-4].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 382:
#line 1836 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[-1].ttype), (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 383:
#line 1838 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_qualified_object_call_expr ((yyvsp[-3].ttype), (yyvsp[-4].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 384:
#line 1840 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_qualified_object_call_expr ((yyvsp[-1].ttype), (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 385:
#line 1843 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_pseudo_destructor_call_expr ((yyvsp[-3].ttype), NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 386:
#line 1845 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_pseudo_destructor_call_expr ((yyvsp[-5].ttype), (yyvsp[-4].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 387:
#line 1847 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = error_mark_node;
		;}
    break;

  case 388:
#line 1892 "../../../kg++fe/gnu/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 389:
#line 1894 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE; (yyval.itype) = 1; ;}
    break;

  case 390:
#line 1899 "../../../kg++fe/gnu/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 391:
#line 1901 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE; (yyval.itype) = 1; ;}
    break;

  case 392:
#line 1906 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = boolean_true_node; ;}
    break;

  case 393:
#line 1908 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = boolean_false_node; ;}
    break;

  case 394:
#line 1913 "../../../kg++fe/gnu/parse.y"
    {
		  if (DECL_CONSTRUCTOR_P (current_function_decl))
		    finish_mem_initializers (NULL_TREE);
		;}
    break;

  case 395:
#line 1921 "../../../kg++fe/gnu/parse.y"
    { got_object = TREE_TYPE ((yyval.ttype)); ;}
    break;

  case 396:
#line 1923 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = build_x_arrow ((yyval.ttype));
		  got_object = TREE_TYPE ((yyval.ttype));
		;}
    break;

  case 397:
#line 1931 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[-2].ftype).t && IS_AGGR_TYPE_CODE (TREE_CODE ((yyvsp[-2].ftype).t)))
		    note_got_semicolon ((yyvsp[-2].ftype).t);
		;}
    break;

  case 398:
#line 1936 "../../../kg++fe/gnu/parse.y"
    {
		  note_list_got_semicolon ((yyvsp[-2].ftype).t);
		;}
    break;

  case 399:
#line 1940 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 400:
#line 1942 "../../../kg++fe/gnu/parse.y"
    {
		  shadow_tag ((yyvsp[-1].ftype).t);
		  note_list_got_semicolon ((yyvsp[-1].ftype).t);
		;}
    break;

  case 401:
#line 1947 "../../../kg++fe/gnu/parse.y"
    { warning ("empty declaration"); ;}
    break;

  case 402:
#line 1949 "../../../kg++fe/gnu/parse.y"
    { pedantic = (yyvsp[-1].itype); ;}
    break;

  case 405:
#line 1963 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator (NULL_TREE, empty_parms (),
					     NULL_TREE, NULL_TREE); ;}
    break;

  case 406:
#line 1966 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), NULL_TREE,
					     NULL_TREE); ;}
    break;

  case 407:
#line 1973 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-1].ftype).t, (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 408:
#line 1976 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-1].ftype).t, (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 409:
#line 1979 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list (build_tree_list (NULL_TREE, (yyvsp[-1].ftype).t),
					  (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 410:
#line 1983 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[0].ftype).t, NULL_TREE);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag;  ;}
    break;

  case 411:
#line 1986 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[0].ftype).t, NULL_TREE);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag; ;}
    break;

  case 412:
#line 1997 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).lookups = type_lookups; ;}
    break;

  case 413:
#line 1999 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).lookups = type_lookups; ;}
    break;

  case 414:
#line 2004 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[0].ftype).t, (yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag; ;}
    break;

  case 415:
#line 2007 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-1].ftype).t, (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 416:
#line 2010 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-2].ftype).t, chainon ((yyvsp[-1].ttype), (yyvsp[0].ttype)));
		  (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag; ;}
    break;

  case 417:
#line 2013 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-1].ftype).t, chainon ((yyvsp[0].ttype), (yyvsp[-2].ftype).t));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 418:
#line 2016 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-1].ftype).t, chainon ((yyvsp[0].ttype), (yyvsp[-2].ftype).t));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 419:
#line 2019 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-2].ftype).t,
				    chainon ((yyvsp[-1].ttype), chainon ((yyvsp[0].ttype), (yyvsp[-3].ftype).t)));
		  (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag; ;}
    break;

  case 420:
#line 2026 "../../../kg++fe/gnu/parse.y"
    { if (extra_warnings)
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyval.ttype)));
		  (yyval.ttype) = build_tree_list (NULL_TREE, (yyval.ttype)); ;}
    break;

  case 421:
#line 2031 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ftype).t, (yyval.ttype)); ;}
    break;

  case 422:
#line 2033 "../../../kg++fe/gnu/parse.y"
    { if (extra_warnings)
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyval.ttype)); ;}
    break;

  case 423:
#line 2055 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).lookups = NULL_TREE; TREE_STATIC ((yyval.ftype).t) = 1; ;}
    break;

  case 424:
#line 2057 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = hash_tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE;
		;}
    break;

  case 425:
#line 2062 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = hash_tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ftype).t);
		  TREE_STATIC ((yyval.ftype).t) = 1;
		;}
    break;

  case 426:
#line 2067 "../../../kg++fe/gnu/parse.y"
    {
		  if (extra_warnings && TREE_STATIC ((yyval.ftype).t))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ftype).t = hash_tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ftype).t);
		  TREE_STATIC ((yyval.ftype).t) = TREE_STATIC ((yyvsp[-1].ftype).t);
		;}
    break;

  case 427:
#line 2075 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ftype).t); ;}
    break;

  case 428:
#line 2086 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list (NULL_TREE, (yyvsp[0].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag; ;}
    break;

  case 429:
#line 2089 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[0].ftype).t, (yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag; ;}
    break;

  case 430:
#line 2092 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-1].ftype).t, (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 431:
#line 2095 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = tree_cons (NULL_TREE, (yyvsp[-1].ftype).t, chainon ((yyvsp[0].ttype), (yyvsp[-2].ftype).t));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 432:
#line 2101 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ftype).t); ;}
    break;

  case 433:
#line 2103 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ftype).t, (yyvsp[-1].ttype)); ;}
    break;

  case 434:
#line 2105 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 435:
#line 2107 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, NULL_TREE); ;}
    break;

  case 436:
#line 2111 "../../../kg++fe/gnu/parse.y"
    { skip_evaluation++; ;}
    break;

  case 437:
#line 2115 "../../../kg++fe/gnu/parse.y"
    { skip_evaluation++; ;}
    break;

  case 438:
#line 2119 "../../../kg++fe/gnu/parse.y"
    { skip_evaluation++; ;}
    break;

  case 439:
#line 2128 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).lookups = NULL_TREE; ;}
    break;

  case 440:
#line 2130 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = (yyvsp[0].ttype); (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE; ;}
    break;

  case 441:
#line 2132 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = (yyvsp[0].ttype); (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE; ;}
    break;

  case 442:
#line 2134 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = finish_typeof ((yyvsp[-1].ttype));
		  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE;
		  skip_evaluation--; ;}
    break;

  case 443:
#line 2138 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = groktypename ((yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE;
		  skip_evaluation--; ;}
    break;

  case 444:
#line 2142 "../../../kg++fe/gnu/parse.y"
    { tree type = TREE_TYPE ((yyvsp[-1].ttype));

                  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE;
		  if (IS_AGGR_TYPE (type))
		    {
		      sorry ("sigof type specifier");
		      (yyval.ftype).t = type;
		    }
		  else
		    {
		      error ("`sigof' applied to non-aggregate expression");
		      (yyval.ftype).t = error_mark_node;
		    }
		;}
    break;

  case 445:
#line 2157 "../../../kg++fe/gnu/parse.y"
    { tree type = groktypename ((yyvsp[-1].ftype).t);

                  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = NULL_TREE;
		  if (IS_AGGR_TYPE (type))
		    {
		      sorry ("sigof type specifier");
		      (yyval.ftype).t = type;
		    }
		  else
		    {
		      error("`sigof' applied to non-aggregate type");
		      (yyval.ftype).t = error_mark_node;
		    }
		;}
    break;

  case 446:
#line 2177 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = (yyvsp[0].ttype); (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 447:
#line 2179 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = (yyvsp[0].ttype); (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 450:
#line 2186 "../../../kg++fe/gnu/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 452:
#line 2192 "../../../kg++fe/gnu/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 454:
#line 2198 "../../../kg++fe/gnu/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 455:
#line 2203 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 456:
#line 2205 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 457:
#line 2210 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_decl ((yyvsp[-3].ttype), (yyvsp[-1].ttype), 1); ;}
    break;

  case 458:
#line 2213 "../../../kg++fe/gnu/parse.y"
    { parse_end_decl ((yyvsp[-1].ttype), (yyvsp[0].ttype), (yyvsp[-4].ttype)); ;}
    break;

  case 459:
#line 2215 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = parse_decl ((yyvsp[-2].ttype), (yyvsp[0].ttype), 0);
		  parse_end_decl ((yyval.ttype), NULL_TREE, (yyvsp[-1].ttype));
		;}
    break;

  case 460:
#line 2229 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_decl0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t,
					   (yyvsp[-4].ftype).lookups, (yyvsp[-1].ttype), 1); ;}
    break;

  case 461:
#line 2234 "../../../kg++fe/gnu/parse.y"
    { parse_end_decl ((yyvsp[-1].ttype), (yyvsp[0].ttype), (yyvsp[-4].ttype)); ;}
    break;

  case 462:
#line 2236 "../../../kg++fe/gnu/parse.y"
    { tree d = parse_decl0 ((yyvsp[-2].ttype), (yyvsp[-3].ftype).t,
					(yyvsp[-3].ftype).lookups, (yyvsp[0].ttype), 0);
		  parse_end_decl (d, NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 463:
#line 2243 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 464:
#line 2248 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 465:
#line 2253 "../../../kg++fe/gnu/parse.y"
    { /* Set things up as initdcl0_innards expects.  */
	      (yyval.ttype) = (yyvsp[0].ttype);
	      (yyvsp[0].ttype) = (yyvsp[-1].ttype);
              (yyvsp[-1].ftype).t = NULL_TREE;
	      (yyvsp[-1].ftype).lookups = NULL_TREE; ;}
    break;

  case 466:
#line 2259 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 467:
#line 2261 "../../../kg++fe/gnu/parse.y"
    { tree d = parse_decl0 ((yyvsp[-2].ttype), NULL_TREE, NULL_TREE, (yyvsp[0].ttype), 0);
		  parse_end_decl (d, NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 468:
#line 2269 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 469:
#line 2271 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 470:
#line 2276 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 471:
#line 2278 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 472:
#line 2283 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype); ;}
    break;

  case 473:
#line 2288 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 474:
#line 2290 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 475:
#line 2295 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 476:
#line 2297 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 477:
#line 2299 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-3].ttype), build_tree_list (NULL_TREE, (yyvsp[-1].ttype))); ;}
    break;

  case 478:
#line 2301 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-5].ttype), tree_cons (NULL_TREE, (yyvsp[-3].ttype), (yyvsp[-1].ttype))); ;}
    break;

  case 479:
#line 2303 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 484:
#line 2319 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 485:
#line 2321 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 486:
#line 2326 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 487:
#line 2328 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 489:
#line 2337 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, NULL_TREE, NULL_TREE);
		  TREE_HAS_CONSTRUCTOR ((yyval.ttype)) = 1; ;}
    break;

  case 490:
#line 2340 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, NULL_TREE, nreverse ((yyvsp[-1].ttype)));
		  TREE_HAS_CONSTRUCTOR ((yyval.ttype)) = 1; ;}
    break;

  case 491:
#line 2343 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, NULL_TREE, nreverse ((yyvsp[-2].ttype)));
		  TREE_HAS_CONSTRUCTOR ((yyval.ttype)) = 1; ;}
    break;

  case 492:
#line 2346 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 493:
#line 2353 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyval.ttype)); ;}
    break;

  case 494:
#line 2355 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyval.ttype)); ;}
    break;

  case 495:
#line 2358 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 496:
#line 2360 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 497:
#line 2362 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[-2].ttype), (yyvsp[0].ttype), (yyval.ttype)); ;}
    break;

  case 498:
#line 2367 "../../../kg++fe/gnu/parse.y"
    {
		  expand_body (finish_function (2));
		  process_next_inline ((yyvsp[-2].pi));
		;}
    break;

  case 499:
#line 2372 "../../../kg++fe/gnu/parse.y"
    {
		  expand_body (finish_function (2));
                  process_next_inline ((yyvsp[-2].pi));
		;}
    break;

  case 500:
#line 2377 "../../../kg++fe/gnu/parse.y"
    {
		  finish_function (2);
		  process_next_inline ((yyvsp[-2].pi)); ;}
    break;

  case 503:
#line 2391 "../../../kg++fe/gnu/parse.y"
    { replace_defarg ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 504:
#line 2393 "../../../kg++fe/gnu/parse.y"
    { replace_defarg ((yyvsp[-2].ttype), error_mark_node); ;}
    break;

  case 506:
#line 2399 "../../../kg++fe/gnu/parse.y"
    { do_pending_defargs (); ;}
    break;

  case 507:
#line 2401 "../../../kg++fe/gnu/parse.y"
    { do_pending_defargs (); ;}
    break;

  case 508:
#line 2406 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = current_enum_type;
		  current_enum_type = start_enum ((yyvsp[-1].ttype)); ;}
    break;

  case 509:
#line 2409 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = current_enum_type;
		  finish_enum (current_enum_type);
		  (yyval.ftype).new_type_flag = 1;
		  current_enum_type = (yyvsp[-2].ttype);
		  check_for_missing_semicolon ((yyval.ftype).t); ;}
    break;

  case 510:
#line 2415 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = current_enum_type;
		  current_enum_type = start_enum (make_anon_name ()); ;}
    break;

  case 511:
#line 2418 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = current_enum_type;
		  finish_enum (current_enum_type);
		  (yyval.ftype).new_type_flag = 1;
		  current_enum_type = (yyvsp[-2].ttype);
		  check_for_missing_semicolon ((yyval.ftype).t); ;}
    break;

  case 512:
#line 2424 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = parse_xref_tag (enum_type_node, (yyvsp[0].ttype), 1);
		  (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 513:
#line 2427 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = parse_xref_tag (enum_type_node, (yyvsp[0].ttype), 1);
		  (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 514:
#line 2430 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = (yyvsp[0].ttype);
		  (yyval.ftype).new_type_flag = 0;
		  if (!processing_template_decl)
		    pedwarn ("using `typename' outside of template"); ;}
    break;

  case 515:
#line 2436 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[-1].ttype) && (yyvsp[-2].ftype).t != error_mark_node)
		    {
		      tree type = TREE_TYPE ((yyvsp[-2].ftype).t);

		      if (TREE_CODE (type) == TYPENAME_TYPE)
			{
			  if (IMPLICIT_TYPENAME_P (type))
			    /* In a definition of a member class template,
			       we will get here with an implicit typename,
			       a TYPENAME_TYPE with a type. */
			    type = TREE_TYPE (type);
			  else
			    {
			      error ("qualified name does not name a class");
			      type = error_mark_node;
			    }
			}
		      maybe_process_partial_specialization (type);
		      xref_basetypes (type, (yyvsp[-1].ttype));
		    }
		  (yyvsp[-2].ftype).t = begin_class_definition (TREE_TYPE ((yyvsp[-2].ftype).t));
		  check_class_key (current_aggr, (yyvsp[-2].ftype).t);
                  current_aggr = NULL_TREE; ;}
    break;

  case 516:
#line 2461 "../../../kg++fe/gnu/parse.y"
    {
		  int semi;
		  tree t;

		  if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  semi = yychar == ';';

		  t = finish_class_definition ((yyvsp[-6].ftype).t, (yyvsp[0].ttype), semi, (yyvsp[-6].ftype).new_type_flag);
		  (yyval.ttype) = t;

		  /* restore current_aggr */
		  current_aggr = TREE_CODE (t) != RECORD_TYPE
				 ? union_type_node
				 : CLASSTYPE_DECLARED_CLASS (t)
				 ? class_type_node : record_type_node;
		;}
    break;

  case 517:
#line 2479 "../../../kg++fe/gnu/parse.y"
    {
		  done_pending_defargs ();
		  begin_inline_definitions ();
		;}
    break;

  case 518:
#line 2484 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = (yyvsp[-3].ttype);
		  (yyval.ftype).new_type_flag = 1;
		;}
    break;

  case 519:
#line 2489 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = TREE_TYPE ((yyvsp[0].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag;
		  check_class_key (current_aggr, (yyval.ftype).t);
		;}
    break;

  case 523:
#line 2504 "../../../kg++fe/gnu/parse.y"
    { if (pedantic && !in_system_header)
		    pedwarn ("comma at end of enumerator list"); ;}
    break;

  case 525:
#line 2511 "../../../kg++fe/gnu/parse.y"
    { error ("storage class specifier `%s' not allowed after struct or class", IDENTIFIER_POINTER ((yyvsp[0].ttype))); ;}
    break;

  case 526:
#line 2513 "../../../kg++fe/gnu/parse.y"
    { error ("type specifier `%s' not allowed after struct or class", IDENTIFIER_POINTER ((yyvsp[0].ttype))); ;}
    break;

  case 527:
#line 2515 "../../../kg++fe/gnu/parse.y"
    { error ("type qualifier `%s' not allowed after struct or class", IDENTIFIER_POINTER ((yyvsp[0].ttype))); ;}
    break;

  case 528:
#line 2517 "../../../kg++fe/gnu/parse.y"
    { error ("no body nor ';' separates two class, struct or union declarations"); ;}
    break;

  case 529:
#line 2519 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 530:
#line 2524 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-1].ttype);
		  (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype));
		;}
    break;

  case 531:
#line 2529 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-2].ttype);
		  (yyval.ttype) = build_tree_list ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 532:
#line 2534 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-3].ttype);
		  (yyval.ttype) = build_tree_list ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 533:
#line 2539 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-2].ttype);
		  (yyval.ttype) = build_tree_list (global_namespace, (yyvsp[0].ttype));
		;}
    break;

  case 534:
#line 2547 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-1].ttype);
		  (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 535:
#line 2552 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-2].ttype);
		  (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 536:
#line 2557 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-3].ttype);
		  (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 537:
#line 2565 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = parse_handle_class_head (current_aggr,
						  TREE_PURPOSE ((yyvsp[0].ttype)), 
						  TREE_VALUE ((yyvsp[0].ttype)),
						  0, &(yyval.ftype).new_type_flag);
		;}
    break;

  case 538:
#line 2572 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-1].ttype);
		  (yyval.ftype).t = TYPE_MAIN_DECL (parse_xref_tag (current_aggr, (yyvsp[0].ttype), 0));
		  (yyval.ftype).new_type_flag = 1;
		;}
    break;

  case 539:
#line 2578 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ftype).t = (yyvsp[0].ttype);
		  (yyval.ftype).new_type_flag = 0;
		;}
    break;

  case 540:
#line 2586 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc ('{', 1);
		  (yyval.ftype).t = parse_handle_class_head (current_aggr,
						  TREE_PURPOSE ((yyvsp[-1].ttype)), 
						  TREE_VALUE ((yyvsp[-1].ttype)),
						  1, 
						  &(yyval.ftype).new_type_flag);
		;}
    break;

  case 541:
#line 2595 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc (':', 1);
		  (yyval.ftype).t = parse_handle_class_head (current_aggr,
						  TREE_PURPOSE ((yyvsp[-1].ttype)), 
						  TREE_VALUE ((yyvsp[-1].ttype)),
						  1, &(yyval.ftype).new_type_flag);
		;}
    break;

  case 542:
#line 2603 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc ('{', 1);
		  (yyval.ftype).t = handle_class_head_apparent_template
			   ((yyvsp[-1].ttype), &(yyval.ftype).new_type_flag);
		;}
    break;

  case 543:
#line 2609 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc (':', 1);
		  (yyval.ftype).t = handle_class_head_apparent_template
			   ((yyvsp[-1].ttype), &(yyval.ftype).new_type_flag);
		;}
    break;

  case 544:
#line 2615 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc ('{', 1);
		  current_aggr = (yyvsp[-2].ttype);
		  (yyval.ftype).t = parse_handle_class_head (current_aggr,
						  NULL_TREE, (yyvsp[-1].ttype),
						  1, &(yyval.ftype).new_type_flag);
		;}
    break;

  case 545:
#line 2623 "../../../kg++fe/gnu/parse.y"
    {
		  yyungetc (':', 1);
		  current_aggr = (yyvsp[-2].ttype);
		  (yyval.ftype).t = parse_handle_class_head (current_aggr,
						  NULL_TREE, (yyvsp[-1].ttype),
						  1, &(yyval.ftype).new_type_flag);
		;}
    break;

  case 546:
#line 2631 "../../../kg++fe/gnu/parse.y"
    {
		  current_aggr = (yyvsp[-1].ttype);
		  (yyval.ftype).t = TYPE_MAIN_DECL (parse_xref_tag ((yyvsp[-1].ttype), 
							 make_anon_name (), 
							 0));
		  (yyval.ftype).new_type_flag = 0;
		  CLASSTYPE_DECLARED_CLASS (TREE_TYPE ((yyval.ftype).t))
		    = (yyvsp[-1].ttype) == class_type_node;
		  yyungetc ('{', 1);
		;}
    break;

  case 547:
#line 2645 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 548:
#line 2647 "../../../kg++fe/gnu/parse.y"
    { error ("no bases given following `:'");
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 549:
#line 2650 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 551:
#line 2656 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 552:
#line 2661 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_base_specifier (access_default_node, (yyvsp[0].ttype)); ;}
    break;

  case 553:
#line 2663 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_base_specifier ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 554:
#line 2668 "../../../kg++fe/gnu/parse.y"
    { if (!TYPE_P ((yyval.ttype)))
		    (yyval.ttype) = error_mark_node; ;}
    break;

  case 555:
#line 2671 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = TREE_TYPE ((yyval.ttype)); ;}
    break;

  case 557:
#line 2677 "../../../kg++fe/gnu/parse.y"
    { if ((yyvsp[-1].ttype) != ridpointers[(int)RID_VIRTUAL])
		    error ("`%D' access", (yyvsp[-1].ttype));
		  (yyval.ttype) = access_default_virtual_node; ;}
    break;

  case 558:
#line 2681 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[-2].ttype) != access_default_virtual_node)
		    error ("multiple access specifiers");
		  else if ((yyvsp[-1].ttype) == access_public_node)
		    (yyval.ttype) = access_public_virtual_node;
		  else if ((yyvsp[-1].ttype) == access_protected_node)
		    (yyval.ttype) = access_protected_virtual_node;
		  else /* $2 == access_private_node */
		    (yyval.ttype) = access_private_virtual_node;
		;}
    break;

  case 559:
#line 2692 "../../../kg++fe/gnu/parse.y"
    { if ((yyvsp[-1].ttype) != ridpointers[(int)RID_VIRTUAL])
		    error ("`%D' access", (yyvsp[-1].ttype));
		  else if ((yyval.ttype) == access_public_node)
		    (yyval.ttype) = access_public_virtual_node;
		  else if ((yyval.ttype) == access_protected_node)
		    (yyval.ttype) = access_protected_virtual_node;
		  else if ((yyval.ttype) == access_private_node)
		    (yyval.ttype) = access_private_virtual_node;
		  else
		    error ("multiple `virtual' specifiers");
		;}
    break;

  case 564:
#line 2713 "../../../kg++fe/gnu/parse.y"
    {
		  current_access_specifier = (yyvsp[-1].ttype);
                ;}
    break;

  case 565:
#line 2722 "../../../kg++fe/gnu/parse.y"
    {
		  finish_member_declaration ((yyvsp[0].ttype));
		  current_aggr = NULL_TREE;
		  reset_type_access_control ();
		;}
    break;

  case 566:
#line 2728 "../../../kg++fe/gnu/parse.y"
    {
		  finish_member_declaration ((yyvsp[0].ttype));
		  current_aggr = NULL_TREE;
		  reset_type_access_control ();
		;}
    break;

  case 568:
#line 2738 "../../../kg++fe/gnu/parse.y"
    { error ("missing ';' before right brace");
		  yyungetc ('}', 0); ;}
    break;

  case 569:
#line 2743 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 570:
#line 2745 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 571:
#line 2747 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 572:
#line 2749 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 573:
#line 2751 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 574:
#line 2753 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  pedantic = (yyvsp[-1].itype); ;}
    break;

  case 575:
#line 2756 "../../../kg++fe/gnu/parse.y"
    {
		  if ((yyvsp[0].ttype))
		    (yyval.ttype) = finish_member_template_decl ((yyvsp[0].ttype));
		  else
		    /* The component was already processed.  */
		    (yyval.ttype) = NULL_TREE;

		  finish_template_decl ((yyvsp[-1].ttype));
		;}
    break;

  case 576:
#line 2766 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = finish_member_class_template ((yyvsp[-1].ftype).t);
		  finish_template_decl ((yyvsp[-2].ttype));
		;}
    break;

  case 577:
#line 2771 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 578:
#line 2779 "../../../kg++fe/gnu/parse.y"
    {
		  /* Most of the productions for component_decl only
		     allow the creation of one new member, so we call
		     finish_member_declaration in component_decl_list.
		     For this rule and the next, however, there can be
		     more than one member, e.g.:

		       int i, j;

		     and we need the first member to be fully
		     registered before the second is processed.
		     Therefore, the rules for components take care of
		     this processing.  To avoid registering the
		     components more than once, we send NULL_TREE up
		     here; that lets finish_member_declaration know
		     that there is nothing to do.  */
		  if (!(yyvsp[0].itype))
		    grok_x_components ((yyvsp[-1].ftype).t);
		  (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 579:
#line 2800 "../../../kg++fe/gnu/parse.y"
    {
		  if (!(yyvsp[0].itype))
		    grok_x_components ((yyvsp[-1].ftype).t);
		  (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 580:
#line 2806 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), NULL_TREE, (yyvsp[0].ttype), (yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 581:
#line 2808 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), NULL_TREE, (yyvsp[0].ttype), (yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 582:
#line 2810 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = grokbitfield (NULL_TREE, NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 583:
#line 2812 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 584:
#line 2823 "../../../kg++fe/gnu/parse.y"
    { tree specs, attrs;
		  split_specs_attrs ((yyvsp[-4].ftype).t, &specs, &attrs);
		  (yyval.ttype) = grokfield ((yyvsp[-3].ttype), specs, (yyvsp[0].ttype), (yyvsp[-2].ttype),
				  chainon ((yyvsp[-1].ttype), attrs)); ;}
    break;

  case 585:
#line 2828 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), NULL_TREE, (yyvsp[0].ttype), (yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 586:
#line 2830 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = do_class_using_decl ((yyvsp[0].ttype)); ;}
    break;

  case 587:
#line 2837 "../../../kg++fe/gnu/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 588:
#line 2839 "../../../kg++fe/gnu/parse.y"
    {
		  if (PROCESSING_REAL_TEMPLATE_DECL_P ())
		    (yyvsp[0].ttype) = finish_member_template_decl ((yyvsp[0].ttype));
		  finish_member_declaration ((yyvsp[0].ttype));
		  (yyval.itype) = 1;
		;}
    break;

  case 589:
#line 2846 "../../../kg++fe/gnu/parse.y"
    {
		  check_multiple_declarators ();
		  if (PROCESSING_REAL_TEMPLATE_DECL_P ())
		    (yyvsp[0].ttype) = finish_member_template_decl ((yyvsp[0].ttype));
		  finish_member_declaration ((yyvsp[0].ttype));
		  (yyval.itype) = 2;
		;}
    break;

  case 590:
#line 2857 "../../../kg++fe/gnu/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 591:
#line 2859 "../../../kg++fe/gnu/parse.y"
    {
		  if (PROCESSING_REAL_TEMPLATE_DECL_P ())
		    (yyvsp[0].ttype) = finish_member_template_decl ((yyvsp[0].ttype));
		  finish_member_declaration ((yyvsp[0].ttype));
		  (yyval.itype) = 1;
		;}
    break;

  case 592:
#line 2866 "../../../kg++fe/gnu/parse.y"
    {
		  check_multiple_declarators ();
		  if (PROCESSING_REAL_TEMPLATE_DECL_P ())
		    (yyvsp[0].ttype) = finish_member_template_decl ((yyvsp[0].ttype));
		  finish_member_declaration ((yyvsp[0].ttype));
		  (yyval.itype) = 2;
		;}
    break;

  case 597:
#line 2887 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t, (yyvsp[-4].ftype).lookups,
				     (yyvsp[-1].ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 598:
#line 2890 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t, (yyvsp[-4].ftype).lookups,
					(yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 599:
#line 2896 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t, (yyvsp[-4].ftype).lookups,
				     (yyvsp[-1].ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 600:
#line 2899 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t, (yyvsp[-4].ftype).lookups,
				     (yyvsp[-1].ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 601:
#line 2902 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield0 ((yyvsp[-3].ttype), (yyvsp[-4].ftype).t, (yyvsp[-4].ftype).lookups,
					(yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 602:
#line 2905 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield0 (NULL_TREE, (yyvsp[-3].ftype).t,
					(yyvsp[-3].ftype).lookups, (yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 603:
#line 2911 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_field ((yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 604:
#line 2913 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield ((yyvsp[-3].ttype), (yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 605:
#line 2918 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_field ((yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 606:
#line 2920 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield ((yyvsp[-3].ttype), (yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 607:
#line 2922 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = parse_bitfield (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 612:
#line 2941 "../../../kg++fe/gnu/parse.y"
    { build_enumerator ((yyvsp[0].ttype), NULL_TREE, current_enum_type); ;}
    break;

  case 613:
#line 2943 "../../../kg++fe/gnu/parse.y"
    { build_enumerator ((yyvsp[-2].ttype), (yyvsp[0].ttype), current_enum_type); ;}
    break;

  case 614:
#line 2949 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-1].ftype).t, (yyvsp[0].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 615:
#line 2952 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[0].ftype).t, NULL_TREE);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag; ;}
    break;

  case 616:
#line 2957 "../../../kg++fe/gnu/parse.y"
    {
		  if (pedantic)
		    pedwarn ("ISO C++ forbids array dimensions with parenthesized type in new");
		  (yyval.ftype).t = build_nt (ARRAY_REF, TREE_VALUE ((yyvsp[-4].ftype).t), (yyvsp[-1].ttype));
		  (yyval.ftype).t = build_tree_list (TREE_PURPOSE ((yyvsp[-4].ftype).t), (yyval.ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[-4].ftype).new_type_flag;
		;}
    break;

  case 617:
#line 2968 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 618:
#line 2970 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyval.ttype)); ;}
    break;

  case 619:
#line 2975 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = hash_tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 620:
#line 2978 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = hash_tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 621:
#line 2981 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[0].ttype), NULL_TREE, NULL_TREE);
		  (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 622:
#line 2984 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 623:
#line 2994 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 624:
#line 2996 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 625:
#line 2998 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = empty_parms (); ;}
    break;

  case 626:
#line 3000 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 628:
#line 3008 "../../../kg++fe/gnu/parse.y"
    {
		  /* Provide support for '(' attributes '*' declarator ')'
		     etc */
		  (yyval.ttype) = tree_cons ((yyvsp[-1].ttype), (yyvsp[0].ttype), NULL_TREE);
		;}
    break;

  case 629:
#line 3018 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 630:
#line 3020 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 631:
#line 3022 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 632:
#line 3024 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 633:
#line 3026 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 635:
#line 3034 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[-2].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 636:
#line 3036 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 637:
#line 3038 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), NULL_TREE); ;}
    break;

  case 638:
#line 3040 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 639:
#line 3042 "../../../kg++fe/gnu/parse.y"
    { push_nested_class ((yyvsp[-1].ttype), 3);
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[0].ttype));
		  TREE_COMPLEXITY ((yyval.ttype)) = current_class_depth; ;}
    break;

  case 641:
#line 3050 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    {
		      (yyval.ttype) = lookup_name ((yyvsp[0].ttype), 1);
		      maybe_note_name_used_in_class ((yyvsp[0].ttype), (yyval.ttype));
		    }
		  else
		    (yyval.ttype) = (yyvsp[0].ttype);
		;}
    break;

  case 642:
#line 3060 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = IDENTIFIER_GLOBAL_VALUE ((yyvsp[0].ttype));
		  else
		    (yyval.ttype) = (yyvsp[0].ttype);
		  got_scope = NULL_TREE;
		;}
    break;

  case 645:
#line 3073 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 646:
#line 3078 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = get_type_decl ((yyvsp[0].ttype)); ;}
    break;

  case 648:
#line 3087 "../../../kg++fe/gnu/parse.y"
    {
		  /* Provide support for '(' attributes '*' declarator ')'
		     etc */
		  (yyval.ttype) = tree_cons ((yyvsp[-1].ttype), (yyvsp[0].ttype), NULL_TREE);
		;}
    break;

  case 649:
#line 3096 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 650:
#line 3098 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 651:
#line 3100 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 652:
#line 3102 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 653:
#line 3104 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 655:
#line 3112 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 656:
#line 3114 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 657:
#line 3116 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 658:
#line 3118 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 659:
#line 3120 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 661:
#line 3128 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[-2].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 662:
#line 3130 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 663:
#line 3132 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 664:
#line 3134 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), NULL_TREE); ;}
    break;

  case 665:
#line 3136 "../../../kg++fe/gnu/parse.y"
    { enter_scope_of ((yyvsp[0].ttype)); ;}
    break;

  case 666:
#line 3138 "../../../kg++fe/gnu/parse.y"
    { enter_scope_of ((yyvsp[0].ttype)); (yyval.ttype) = (yyvsp[0].ttype);;}
    break;

  case 667:
#line 3140 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, global_namespace, (yyvsp[0].ttype));
		  enter_scope_of ((yyval.ttype));
		;}
    break;

  case 668:
#line 3144 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE;
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), (yyvsp[0].ttype));
		  enter_scope_of ((yyval.ttype));
		;}
    break;

  case 669:
#line 3152 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE;
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 670:
#line 3155 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE;
 		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 671:
#line 3161 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE;
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 672:
#line 3164 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE;
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 674:
#line 3171 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 675:
#line 3176 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_functional_cast ((yyvsp[-3].ftype).t, (yyvsp[-1].ttype)); ;}
    break;

  case 676:
#line 3178 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = reparse_decl_as_expr ((yyvsp[-3].ftype).t, (yyvsp[-1].ttype)); ;}
    break;

  case 677:
#line 3180 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = reparse_absdcl_as_expr ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 682:
#line 3192 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 683:
#line 3194 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype)
		    = make_typename_type ((yyvsp[-3].ttype), (yyvsp[-1].ttype), tf_error | tf_parsing); ;}
    break;

  case 684:
#line 3198 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype)
		    = make_typename_type ((yyvsp[-2].ttype), (yyvsp[-1].ttype), tf_error | tf_parsing); ;}
    break;

  case 685:
#line 3201 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype)
		    = make_typename_type ((yyvsp[-2].ttype), (yyvsp[-1].ttype), tf_error | tf_parsing); ;}
    break;

  case 686:
#line 3209 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[-1].ttype)) == IDENTIFIER_NODE)
		    {
		      (yyval.ttype) = lastiddecl;
		      maybe_note_name_used_in_class ((yyvsp[-1].ttype), (yyval.ttype));
		    }
		  got_scope = (yyval.ttype) =
		    complete_type (TYPE_MAIN_VARIANT (TREE_TYPE ((yyval.ttype))));
		;}
    break;

  case 687:
#line 3219 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[-1].ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = lastiddecl;
		  got_scope = (yyval.ttype) = TREE_TYPE ((yyval.ttype));
		;}
    break;

  case 688:
#line 3225 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyval.ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = lastiddecl;
		  got_scope = (yyval.ttype);
		;}
    break;

  case 689:
#line 3231 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype) = complete_type (TREE_TYPE ((yyvsp[-1].ttype))); ;}
    break;

  case 691:
#line 3237 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 692:
#line 3242 "../../../kg++fe/gnu/parse.y"
    {
		  if (TYPE_P ((yyvsp[-1].ttype)))
		    (yyval.ttype) = make_typename_type ((yyvsp[-1].ttype), (yyvsp[0].ttype), tf_error | tf_parsing);
		  else if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    error ("`%T' is not a class or namespace", (yyvsp[0].ttype));
		  else
		    {
		      (yyval.ttype) = (yyvsp[0].ttype);
		      if (TREE_CODE ((yyval.ttype)) == TYPE_DECL)
			(yyval.ttype) = TREE_TYPE ((yyval.ttype));
		    }
		;}
    break;

  case 693:
#line 3255 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = TREE_TYPE ((yyvsp[0].ttype)); ;}
    break;

  case 694:
#line 3257 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_typename_type ((yyvsp[-1].ttype), (yyvsp[0].ttype), tf_error | tf_parsing); ;}
    break;

  case 695:
#line 3259 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_typename_type ((yyvsp[-2].ttype), (yyvsp[0].ttype), tf_error | tf_parsing); ;}
    break;

  case 696:
#line 3264 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    error ("`%T' is not a class or namespace", (yyvsp[0].ttype));
		  else if (TREE_CODE ((yyvsp[0].ttype)) == TYPE_DECL)
		    (yyval.ttype) = TREE_TYPE ((yyvsp[0].ttype));
		;}
    break;

  case 697:
#line 3271 "../../../kg++fe/gnu/parse.y"
    {
		  if (TYPE_P ((yyvsp[-1].ttype)))
		    (yyval.ttype) = make_typename_type ((yyvsp[-1].ttype), (yyvsp[0].ttype), tf_error | tf_parsing);
		  else if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    error ("`%T' is not a class or namespace", (yyvsp[0].ttype));
		  else
		    {
		      (yyval.ttype) = (yyvsp[0].ttype);
		      if (TREE_CODE ((yyval.ttype)) == TYPE_DECL)
			(yyval.ttype) = TREE_TYPE ((yyval.ttype));
		    }
		;}
    break;

  case 698:
#line 3284 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype)
		    = make_typename_type ((yyvsp[-2].ttype), (yyvsp[-1].ttype), tf_error | tf_parsing); ;}
    break;

  case 699:
#line 3287 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype)
		    = make_typename_type ((yyvsp[-3].ttype), (yyvsp[-1].ttype), tf_error | tf_parsing); ;}
    break;

  case 700:
#line 3295 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[-1].ttype)) != TYPE_DECL)
		    (yyval.ttype) = lastiddecl;

		  /* Retrieve the type for the identifier, which might involve
		     some computation. */
		  got_scope = complete_type (TREE_TYPE ((yyval.ttype)));

		  if ((yyval.ttype) == error_mark_node)
		    error ("`%T' is not a class or namespace", (yyvsp[-1].ttype));
		;}
    break;

  case 701:
#line 3307 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[-1].ttype)) != TYPE_DECL)
		    (yyval.ttype) = lastiddecl;
		  got_scope = complete_type (TREE_TYPE ((yyval.ttype)));
		;}
    break;

  case 702:
#line 3313 "../../../kg++fe/gnu/parse.y"
    { got_scope = (yyval.ttype) = complete_type (TREE_TYPE ((yyval.ttype))); ;}
    break;

  case 705:
#line 3317 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyval.ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = lastiddecl;
		  got_scope = (yyval.ttype);
		;}
    break;

  case 706:
#line 3326 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_min_nt (TEMPLATE_ID_EXPR, (yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 707:
#line 3331 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyvsp[0].ttype)) == IDENTIFIER_NODE)
		    (yyval.ttype) = IDENTIFIER_GLOBAL_VALUE ((yyvsp[0].ttype));
		  else
		    (yyval.ttype) = (yyvsp[0].ttype);
		  got_scope = NULL_TREE;
		;}
    break;

  case 709:
#line 3340 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 710:
#line 3345 "../../../kg++fe/gnu/parse.y"
    { got_scope = NULL_TREE; ;}
    break;

  case 711:
#line 3347 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); got_scope = NULL_TREE; ;}
    break;

  case 712:
#line 3354 "../../../kg++fe/gnu/parse.y"
    { got_scope = void_type_node; ;}
    break;

  case 713:
#line 3360 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 714:
#line 3362 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 715:
#line 3364 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 716:
#line 3366 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 717:
#line 3368 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[0].ttype), NULL_TREE);
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), arg);
		;}
    break;

  case 718:
#line 3372 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 720:
#line 3381 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 721:
#line 3383 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 723:
#line 3389 "../../../kg++fe/gnu/parse.y"
    {
		  /* Provide support for '(' attributes '*' declarator ')'
		     etc */
		  (yyval.ttype) = tree_cons ((yyvsp[-1].ttype), (yyvsp[0].ttype), NULL_TREE);
		;}
    break;

  case 724:
#line 3399 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 725:
#line 3401 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 726:
#line 3403 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[0].ftype).t, NULL_TREE); ;}
    break;

  case 727:
#line 3405 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator (NULL_TREE, NULL_TREE); ;}
    break;

  case 728:
#line 3407 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ftype).t, (yyvsp[0].ttype)); ;}
    break;

  case 729:
#line 3409 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 730:
#line 3411 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[0].ftype).t, NULL_TREE); ;}
    break;

  case 731:
#line 3413 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator (NULL_TREE, NULL_TREE); ;}
    break;

  case 732:
#line 3415 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[0].ttype), NULL_TREE);
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-1].ttype), arg);
		;}
    break;

  case 733:
#line 3419 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 735:
#line 3428 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 736:
#line 3431 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 737:
#line 3433 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 738:
#line 3435 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 739:
#line 3437 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), NULL_TREE); ;}
    break;

  case 740:
#line 3439 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_call_declarator (NULL_TREE, (yyvsp[-3].ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 741:
#line 3441 "../../../kg++fe/gnu/parse.y"
    { set_quals_and_spec ((yyval.ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 742:
#line 3443 "../../../kg++fe/gnu/parse.y"
    { set_quals_and_spec ((yyval.ttype), (yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 743:
#line 3445 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, NULL_TREE, (yyvsp[-1].ttype)); ;}
    break;

  case 744:
#line 3447 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, NULL_TREE, NULL_TREE); ;}
    break;

  case 751:
#line 3470 "../../../kg++fe/gnu/parse.y"
    { if (pedantic)
		    pedwarn ("ISO C++ forbids label declarations"); ;}
    break;

  case 754:
#line 3481 "../../../kg++fe/gnu/parse.y"
    {
		  while ((yyvsp[-1].ttype))
		    {
		      finish_label_decl (TREE_VALUE ((yyvsp[-1].ttype)));
		      (yyvsp[-1].ttype) = TREE_CHAIN ((yyvsp[-1].ttype));
		    }
		;}
    break;

  case 755:
#line 3492 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_compound_stmt (0); ;}
    break;

  case 756:
#line 3494 "../../../kg++fe/gnu/parse.y"
    { STMT_LINENO ((yyvsp[-1].ttype)) = (yyvsp[-3].itype);
		  finish_compound_stmt (0, (yyvsp[-1].ttype)); ;}
    break;

  case 757:
#line 3500 "../../../kg++fe/gnu/parse.y"
    { last_expr_type = NULL_TREE; ;}
    break;

  case 758:
#line 3505 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_if_stmt ();
		  cond_stmt_keyword = "if"; ;}
    break;

  case 759:
#line 3508 "../../../kg++fe/gnu/parse.y"
    { finish_if_stmt_cond ((yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 760:
#line 3510 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-3].ttype);
		  finish_then_clause ((yyvsp[-3].ttype)); ;}
    break;

  case 762:
#line 3517 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_compound_stmt (0); ;}
    break;

  case 763:
#line 3519 "../../../kg++fe/gnu/parse.y"
    { STMT_LINENO ((yyvsp[-2].ttype)) = (yyvsp[-1].itype);
		  if ((yyvsp[0].ttype)) STMT_LINENO ((yyvsp[0].ttype)) = (yyvsp[-1].itype);
		  finish_compound_stmt (0, (yyvsp[-2].ttype)); ;}
    break;

  case 765:
#line 3527 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 767:
#line 3530 "../../../kg++fe/gnu/parse.y"
    { if ((yyvsp[0].ttype)) STMT_LINENO ((yyvsp[0].ttype)) = (yyvsp[-1].itype); ;}
    break;

  case 768:
#line 3535 "../../../kg++fe/gnu/parse.y"
    { finish_stmt ();
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 769:
#line 3538 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_expr_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 770:
#line 3540 "../../../kg++fe/gnu/parse.y"
    { begin_else_clause (); ;}
    break;

  case 771:
#line 3542 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = (yyvsp[-3].ttype);
		  finish_else_clause ((yyvsp[-3].ttype));
		  finish_if_stmt ();
		;}
    break;

  case 772:
#line 3548 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  finish_if_stmt (); ;}
    break;

  case 773:
#line 3551 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = begin_while_stmt ();
		  cond_stmt_keyword = "while";
		;}
    break;

  case 774:
#line 3556 "../../../kg++fe/gnu/parse.y"
    { finish_while_stmt_cond ((yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 775:
#line 3558 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-3].ttype);
		  finish_while_stmt ((yyvsp[-3].ttype)); ;}
    break;

  case 776:
#line 3561 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_do_stmt (); ;}
    break;

  case 777:
#line 3563 "../../../kg++fe/gnu/parse.y"
    {
		  finish_do_body ((yyvsp[-2].ttype));
		  cond_stmt_keyword = "do";
		;}
    break;

  case 778:
#line 3568 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-5].ttype);
		  finish_do_stmt ((yyvsp[-1].ttype), (yyvsp[-5].ttype)); ;}
    break;

  case 779:
#line 3571 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_for_stmt (); ;}
    break;

  case 780:
#line 3573 "../../../kg++fe/gnu/parse.y"
    { finish_for_init_stmt ((yyvsp[-2].ttype)); ;}
    break;

  case 781:
#line 3575 "../../../kg++fe/gnu/parse.y"
    { finish_for_cond ((yyvsp[-1].ttype), (yyvsp[-5].ttype)); ;}
    break;

  case 782:
#line 3577 "../../../kg++fe/gnu/parse.y"
    { finish_for_expr ((yyvsp[-1].ttype), (yyvsp[-8].ttype)); ;}
    break;

  case 783:
#line 3579 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-10].ttype);
		  finish_for_stmt ((yyvsp[-10].ttype)); ;}
    break;

  case 784:
#line 3582 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_switch_stmt (); ;}
    break;

  case 785:
#line 3584 "../../../kg++fe/gnu/parse.y"
    { finish_switch_cond ((yyvsp[-1].ttype), (yyvsp[-3].ttype)); ;}
    break;

  case 786:
#line 3586 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-5].ttype);
		  finish_switch_stmt ((yyvsp[-5].ttype)); ;}
    break;

  case 787:
#line 3589 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_case_label ((yyvsp[-1].ttype), NULL_TREE); ;}
    break;

  case 788:
#line 3591 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 789:
#line 3593 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_case_label ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 790:
#line 3595 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 791:
#line 3597 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_case_label (NULL_TREE, NULL_TREE); ;}
    break;

  case 792:
#line 3599 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 793:
#line 3601 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_break_stmt (); ;}
    break;

  case 794:
#line 3603 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_continue_stmt (); ;}
    break;

  case 795:
#line 3605 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_return_stmt (NULL_TREE); ;}
    break;

  case 796:
#line 3607 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_return_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 797:
#line 3609 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-4].ttype), (yyvsp[-2].ttype), NULL_TREE, NULL_TREE,
					NULL_TREE);
		  ASM_INPUT_P ((yyval.ttype)) = 1; ;}
    break;

  case 798:
#line 3614 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype), NULL_TREE, NULL_TREE); ;}
    break;

  case 799:
#line 3618 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-8].ttype), (yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 800:
#line 3620 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-6].ttype), (yyvsp[-4].ttype), NULL_TREE, (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 801:
#line 3624 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-10].ttype), (yyvsp[-8].ttype), (yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 802:
#line 3627 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-8].ttype), (yyvsp[-6].ttype), NULL_TREE, (yyvsp[-4].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 803:
#line 3630 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[-8].ttype), (yyvsp[-6].ttype), (yyvsp[-4].ttype), NULL_TREE, (yyvsp[-2].ttype)); ;}
    break;

  case 804:
#line 3632 "../../../kg++fe/gnu/parse.y"
    {
		  if (pedantic)
		    pedwarn ("ISO C++ forbids computed gotos");
		  (yyval.ttype) = finish_goto_stmt ((yyvsp[-1].ttype));
		;}
    break;

  case 805:
#line 3638 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_goto_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 806:
#line 3640 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 807:
#line 3642 "../../../kg++fe/gnu/parse.y"
    { error ("label must be followed by statement");
		  yyungetc ('}', 0);
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 808:
#line 3646 "../../../kg++fe/gnu/parse.y"
    { finish_stmt ();
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 809:
#line 3649 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 810:
#line 3651 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 811:
#line 3653 "../../../kg++fe/gnu/parse.y"
    { do_local_using_decl ((yyvsp[0].ttype));
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 812:
#line 3656 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 813:
#line 3661 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_function_try_block (); ;}
    break;

  case 814:
#line 3663 "../../../kg++fe/gnu/parse.y"
    { finish_function_try_block ((yyvsp[-1].ttype)); ;}
    break;

  case 815:
#line 3665 "../../../kg++fe/gnu/parse.y"
    { finish_function_handler_sequence ((yyvsp[-3].ttype)); ;}
    break;

  case 816:
#line 3670 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_try_block (); ;}
    break;

  case 817:
#line 3672 "../../../kg++fe/gnu/parse.y"
    { finish_try_block ((yyvsp[-1].ttype)); ;}
    break;

  case 818:
#line 3674 "../../../kg++fe/gnu/parse.y"
    { finish_handler_sequence ((yyvsp[-3].ttype)); ;}
    break;

  case 821:
#line 3681 "../../../kg++fe/gnu/parse.y"
    { /* Generate a fake handler block to avoid later aborts. */
		  tree fake_handler = begin_handler ();
		  finish_handler_parms (NULL_TREE, fake_handler);
		  finish_handler (fake_handler);
		  (yyval.ttype) = fake_handler;

		  error ("must have at least one catch per try block");
		;}
    break;

  case 822:
#line 3693 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_handler (); ;}
    break;

  case 823:
#line 3695 "../../../kg++fe/gnu/parse.y"
    { finish_handler_parms ((yyvsp[0].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 824:
#line 3697 "../../../kg++fe/gnu/parse.y"
    { finish_handler ((yyvsp[-3].ttype)); ;}
    break;

  case 827:
#line 3707 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 828:
#line 3723 "../../../kg++fe/gnu/parse.y"
    {
		  check_for_new_type ("inside exception declarations", (yyvsp[-1].ftype));
		  (yyval.ttype) = start_handler_parms (TREE_PURPOSE ((yyvsp[-1].ftype).t),
					    TREE_VALUE ((yyvsp[-1].ftype).t));
		;}
    break;

  case 829:
#line 3732 "../../../kg++fe/gnu/parse.y"
    { finish_label_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 830:
#line 3734 "../../../kg++fe/gnu/parse.y"
    { finish_label_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 831:
#line 3736 "../../../kg++fe/gnu/parse.y"
    { finish_label_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 832:
#line 3738 "../../../kg++fe/gnu/parse.y"
    { finish_label_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 833:
#line 3743 "../../../kg++fe/gnu/parse.y"
    { finish_expr_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 835:
#line 3746 "../../../kg++fe/gnu/parse.y"
    { if (pedantic)
		    pedwarn ("ISO C++ forbids compound statements inside for initializations");
		;}
    break;

  case 836:
#line 3755 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 838:
#line 3761 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 840:
#line 3764 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 841:
#line 3771 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 844:
#line 3778 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[0].ttype)); ;}
    break;

  case 845:
#line 3783 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (NULL_TREE, (yyvsp[-3].ttype)), (yyvsp[-1].ttype)); ;}
    break;

  case 846:
#line 3785 "../../../kg++fe/gnu/parse.y"
    { (yyvsp[-5].ttype) = build_string (IDENTIFIER_LENGTH ((yyvsp[-5].ttype)),
				     IDENTIFIER_POINTER ((yyvsp[-5].ttype)));
		  (yyval.ttype) = build_tree_list (build_tree_list ((yyvsp[-5].ttype), (yyvsp[-3].ttype)), (yyvsp[-1].ttype)); ;}
    break;

  case 847:
#line 3792 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);;}
    break;

  case 848:
#line 3794 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 849:
#line 3805 "../../../kg++fe/gnu/parse.y"
    {
		  (yyval.ttype) = empty_parms();
		;}
    break;

  case 851:
#line 3810 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist (build_tree_list (NULL_TREE, (yyvsp[0].ftype).t), 0);
		  check_for_new_type ("inside parameter list", (yyvsp[0].ftype)); ;}
    break;

  case 852:
#line 3818 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyval.ttype), 0); ;}
    break;

  case 853:
#line 3820 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyvsp[-1].ttype), 1); ;}
    break;

  case 854:
#line 3823 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyvsp[-1].ttype), 1); ;}
    break;

  case 855:
#line 3825 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist (build_tree_list (NULL_TREE,
							 (yyvsp[-1].ftype).t), 1); ;}
    break;

  case 856:
#line 3828 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = finish_parmlist (NULL_TREE, 1); ;}
    break;

  case 857:
#line 3830 "../../../kg++fe/gnu/parse.y"
    {
		  /* This helps us recover from really nasty
		     parse errors, for example, a missing right
		     parenthesis.  */
		  yyerror ("possibly missing ')'");
		  (yyval.ttype) = finish_parmlist ((yyvsp[-1].ttype), 0);
		  yyungetc (':', 0);
		  yychar = ')';
		;}
    break;

  case 858:
#line 3840 "../../../kg++fe/gnu/parse.y"
    {
		  /* This helps us recover from really nasty
		     parse errors, for example, a missing right
		     parenthesis.  */
		  yyerror ("possibly missing ')'");
		  (yyval.ttype) = finish_parmlist (build_tree_list (NULL_TREE,
							 (yyvsp[-1].ftype).t), 0);
		  yyungetc (':', 0);
		  yychar = ')';
		;}
    break;

  case 859:
#line 3855 "../../../kg++fe/gnu/parse.y"
    { maybe_snarf_defarg (); ;}
    break;

  case 860:
#line 3857 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 863:
#line 3868 "../../../kg++fe/gnu/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[0].ftype));
		  (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ftype).t); ;}
    break;

  case 864:
#line 3871 "../../../kg++fe/gnu/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[-1].ftype));
		  (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), (yyvsp[-1].ftype).t); ;}
    break;

  case 865:
#line 3874 "../../../kg++fe/gnu/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[0].ftype));
		  (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[0].ftype).t); ;}
    break;

  case 866:
#line 3877 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 867:
#line 3879 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list ((yyvsp[0].ttype), (yyvsp[-2].ttype))); ;}
    break;

  case 869:
#line 3885 "../../../kg++fe/gnu/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[-1].ftype));
		  (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[-1].ftype).t); ;}
    break;

  case 870:
#line 3896 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag;
		  (yyval.ftype).t = build_tree_list ((yyvsp[-2].ftype).t, (yyvsp[-1].ttype)); ;}
    break;

  case 871:
#line 3899 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-2].ftype).t, (yyvsp[-1].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag; ;}
    break;

  case 872:
#line 3902 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list (build_tree_list (NULL_TREE, (yyvsp[-2].ftype).t),
					  (yyvsp[-1].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag; ;}
    break;

  case 873:
#line 3906 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-2].ftype).t, (yyvsp[-1].ttype));
		  (yyval.ftype).new_type_flag = (yyvsp[-2].ftype).new_type_flag; ;}
    break;

  case 874:
#line 3909 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-1].ftype).t, NULL_TREE);
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag; ;}
    break;

  case 875:
#line 3912 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[-2].ftype).t, (yyvsp[-1].ttype));
		  (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 876:
#line 3918 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list (NULL_TREE, (yyvsp[0].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[0].ftype).new_type_flag;  ;}
    break;

  case 877:
#line 3921 "../../../kg++fe/gnu/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[0].ttype), (yyvsp[-1].ftype).t);
		  (yyval.ftype).new_type_flag = (yyvsp[-1].ftype).new_type_flag;  ;}
    break;

  case 880:
#line 3932 "../../../kg++fe/gnu/parse.y"
    { see_typename (); ;}
    break;

  case 881:
#line 3937 "../../../kg++fe/gnu/parse.y"
    {
		  error ("type specifier omitted for parameter");
		  (yyval.ttype) = build_tree_list (integer_type_node, NULL_TREE);
		;}
    break;

  case 882:
#line 3942 "../../../kg++fe/gnu/parse.y"
    {
		  if (TREE_CODE ((yyval.ttype)) == SCOPE_REF)
		    {
		      if (TREE_CODE (TREE_OPERAND ((yyval.ttype), 0)) == TEMPLATE_TYPE_PARM
			  || TREE_CODE (TREE_OPERAND ((yyval.ttype), 0)) == BOUND_TEMPLATE_TEMPLATE_PARM)
			error ("`%E' is not a type, use `typename %E' to make it one", (yyval.ttype), (yyval.ttype));
		      else
			error ("no type `%D' in `%T'", TREE_OPERAND ((yyval.ttype), 1), TREE_OPERAND ((yyval.ttype), 0));
		    }
		  else
		    error ("type specifier omitted for parameter `%E'", (yyval.ttype));
		  (yyval.ttype) = build_tree_list (integer_type_node, (yyval.ttype));
		;}
    break;

  case 883:
#line 3959 "../../../kg++fe/gnu/parse.y"
    {
                  error("'%D' is used as a type, but is not defined as a type.", (yyvsp[-4].ttype));
                  (yyvsp[-2].ttype) = error_mark_node;
		;}
    break;

  case 884:
#line 3967 "../../../kg++fe/gnu/parse.y"
    { ;}
    break;

  case 886:
#line 3973 "../../../kg++fe/gnu/parse.y"
    { ;}
    break;

  case 888:
#line 3979 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 889:
#line 3981 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 890:
#line 3983 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = empty_except_spec; ;}
    break;

  case 891:
#line 3988 "../../../kg++fe/gnu/parse.y"
    {
		  check_for_new_type ("exception specifier", (yyvsp[0].ftype));
		  (yyval.ttype) = groktypename ((yyvsp[0].ftype).t);
		;}
    break;

  case 892:
#line 3993 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 893:
#line 3998 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = add_exception_specifier (NULL_TREE, (yyvsp[0].ttype), 1); ;}
    break;

  case 894:
#line 4000 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = add_exception_specifier ((yyvsp[-2].ttype), (yyvsp[0].ttype), 1); ;}
    break;

  case 895:
#line 4005 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 896:
#line 4007 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 897:
#line 4009 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 898:
#line 4011 "../../../kg++fe/gnu/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[-2].ttype), arg);
		;}
    break;

  case 899:
#line 4018 "../../../kg++fe/gnu/parse.y"
    {
	  saved_scopes = tree_cons (got_scope, got_object, saved_scopes);
	  TREE_LANG_FLAG_0 (saved_scopes) = looking_for_typename;
	  /* We look for conversion-type-id's in both the class and current
	     scopes, just as for ID in 'ptr->ID::'.  */
	  looking_for_typename = 1;
	  got_object = got_scope;
          got_scope = NULL_TREE;
	;}
    break;

  case 900:
#line 4030 "../../../kg++fe/gnu/parse.y"
    { got_scope = TREE_PURPOSE (saved_scopes);
          got_object = TREE_VALUE (saved_scopes);
	  looking_for_typename = TREE_LANG_FLAG_0 (saved_scopes);
          saved_scopes = TREE_CHAIN (saved_scopes);
	  (yyval.ttype) = got_scope;
	;}
    break;

  case 901:
#line 4040 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (MULT_EXPR)); ;}
    break;

  case 902:
#line 4042 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (TRUNC_DIV_EXPR)); ;}
    break;

  case 903:
#line 4044 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (TRUNC_MOD_EXPR)); ;}
    break;

  case 904:
#line 4046 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (PLUS_EXPR)); ;}
    break;

  case 905:
#line 4048 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (MINUS_EXPR)); ;}
    break;

  case 906:
#line 4050 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (BIT_AND_EXPR)); ;}
    break;

  case 907:
#line 4052 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (BIT_IOR_EXPR)); ;}
    break;

  case 908:
#line 4054 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (BIT_XOR_EXPR)); ;}
    break;

  case 909:
#line 4056 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (BIT_NOT_EXPR)); ;}
    break;

  case 910:
#line 4058 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (COMPOUND_EXPR)); ;}
    break;

  case 911:
#line 4060 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname ((yyvsp[-1].code))); ;}
    break;

  case 912:
#line 4062 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (LT_EXPR)); ;}
    break;

  case 913:
#line 4064 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (GT_EXPR)); ;}
    break;

  case 914:
#line 4066 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname ((yyvsp[-1].code))); ;}
    break;

  case 915:
#line 4068 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_assopname ((yyvsp[-1].code))); ;}
    break;

  case 916:
#line 4070 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_assopname (NOP_EXPR)); ;}
    break;

  case 917:
#line 4072 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname ((yyvsp[-1].code))); ;}
    break;

  case 918:
#line 4074 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname ((yyvsp[-1].code))); ;}
    break;

  case 919:
#line 4076 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (POSTINCREMENT_EXPR)); ;}
    break;

  case 920:
#line 4078 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (PREDECREMENT_EXPR)); ;}
    break;

  case 921:
#line 4080 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (TRUTH_ANDIF_EXPR)); ;}
    break;

  case 922:
#line 4082 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (TRUTH_ORIF_EXPR)); ;}
    break;

  case 923:
#line 4084 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (TRUTH_NOT_EXPR)); ;}
    break;

  case 924:
#line 4086 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (COND_EXPR)); ;}
    break;

  case 925:
#line 4088 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname ((yyvsp[-1].code))); ;}
    break;

  case 926:
#line 4090 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (COMPONENT_REF)); ;}
    break;

  case 927:
#line 4092 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (MEMBER_REF)); ;}
    break;

  case 928:
#line 4094 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (CALL_EXPR)); ;}
    break;

  case 929:
#line 4096 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (ARRAY_REF)); ;}
    break;

  case 930:
#line 4098 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (NEW_EXPR)); ;}
    break;

  case 931:
#line 4100 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (DELETE_EXPR)); ;}
    break;

  case 932:
#line 4102 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (VEC_NEW_EXPR)); ;}
    break;

  case 933:
#line 4104 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (VEC_DELETE_EXPR)); ;}
    break;

  case 934:
#line 4106 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (grokoptypename ((yyvsp[-2].ftype).t, (yyvsp[-1].ttype), (yyvsp[0].ttype))); ;}
    break;

  case 935:
#line 4108 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = frob_opname (ansi_opname (ERROR_MARK)); ;}
    break;

  case 936:
#line 4115 "../../../kg++fe/gnu/parse.y"
    { if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.itype) = lineno; ;}
    break;

  case 937:
#line 4124 "../../../kg++fe/gnu/parse.y"
    {
	  (yyval.ttype) = add_stmt (build_omp_stmt (parallel_dir_b, (yyvsp[0].pclause_type)));
	  In_MP_Region = true;
	  mp_nesting++;
	  if (mp_nesting == MAX_MP_NESTING)
	  {
	    // will see
	    printf ("MP nesting > %d not supported\n", MAX_MP_NESTING-1);
	    abort();
	  }
	  mp_locals[mp_nesting] = NULL;
	;}
    break;

  case 938:
#line 4137 "../../../kg++fe/gnu/parse.y"
    {
	  add_stmt (build_omp_stmt (parallel_dir_e, NULL));
	  (yyval.ttype) = NULL;
	  In_MP_Region = false;
	  if (mp_locals[mp_nesting])
	  {
	    (yyvsp[-1].ttype)->omp.omp_clause_list =
	      chain_parallel_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
	        build_parallel_clause_list (NULL, p_private, 0, 0));
	    (yyvsp[-1].ttype)->omp.omp_clause_list =
	      chain_parallel_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
	        build_parallel_clause_list (mp_locals[mp_nesting],
		  p_private, 0, 0));
	  }
	  mp_locals[mp_nesting] = NULL;
	  mp_nesting--;
	;}
    break;

  case 939:
#line 4158 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = NULL; ;}
    break;

  case 940:
#line 4160 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = (yyvsp[-1].pclause_type); ;}
    break;

  case 941:
#line 4165 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = (yyvsp[0].pclause_type); ;}
    break;

  case 942:
#line 4167 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = chain_parallel_list_on ((yyvsp[-1].pclause_type), (yyvsp[0].pclause_type)); ;}
    break;

  case 943:
#line 4172 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_if, 0, 0); ;}
    break;

  case 944:
#line 4174 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_num_threads, 0, 0); ;}
    break;

  case 945:
#line 4176 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_private, 0, 0); ;}
    break;

  case 946:
#line 4178 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_firstprivate, 0, 0); ;}
    break;

  case 947:
#line 4180 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_shared, 0, 0); ;}
    break;

  case 948:
#line 4182 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_shared, 0); ;}
    break;

  case 949:
#line 4183 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_none, 0); ;}
    break;

  case 950:
#line 4185 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 951:
#line 4187 "../../../kg++fe/gnu/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_copyin, 0, 0); ;}
    break;

  case 952:
#line 4192 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (for_dir_b, (yyvsp[0].for_clause_type)));
            (yyval.ttype) = NULL;
        ;}
    break;

  case 953:
#line 4198 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (for_dir_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 954:
#line 4204 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = begin_for_stmt ();
                  TREE_ADDRESSABLE ((yyval.ttype)) = 1; /* generate DO-loop */ ;}
    break;

  case 955:
#line 4207 "../../../kg++fe/gnu/parse.y"
    { finish_for_init_stmt ((yyvsp[-2].ttype)); ;}
    break;

  case 956:
#line 4209 "../../../kg++fe/gnu/parse.y"
    { finish_for_cond ((yyvsp[-1].ttype), (yyvsp[-5].ttype)); ;}
    break;

  case 957:
#line 4211 "../../../kg++fe/gnu/parse.y"
    { finish_for_expr ((yyvsp[-1].ttype), (yyvsp[-8].ttype)); ;}
    break;

  case 958:
#line 4213 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-10].ttype);
		  finish_for_stmt ((yyvsp[-10].ttype)); ;}
    break;

  case 959:
#line 4219 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = NULL; ;}
    break;

  case 960:
#line 4221 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = (yyvsp[-1].for_clause_type); ;}
    break;

  case 961:
#line 4226 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = (yyvsp[0].for_clause_type); ;}
    break;

  case 962:
#line 4228 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = chain_for_list_on ((yyvsp[-1].for_clause_type), (yyvsp[0].for_clause_type)); ;}
    break;

  case 963:
#line 4233 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_private, 0, 0); ;}
    break;

  case 964:
#line 4235 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_firstprivate, 0, 0); ;}
    break;

  case 965:
#line 4237 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_lastprivate, 0, 0); ;}
    break;

  case 966:
#line 4239 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 967:
#line 4241 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_schedule_1, (yyvsp[-1].sch_k_type), 0); ;}
    break;

  case 968:
#line 4243 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_schedule_2, (yyvsp[-3].sch_k_type), 0); ;}
    break;

  case 969:
#line 4245 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_ordered, 0, 0); ;}
    break;

  case 970:
#line 4247 "../../../kg++fe/gnu/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_nowait, 0, 0); ;}
    break;

  case 971:
#line 4252 "../../../kg++fe/gnu/parse.y"
    {
       if (strcmp (IDENTIFIER_POINTER ((yyvsp[0].ttype)), "static"))
              error ("'%s' is not a valid schedule kind\n",  IDENTIFIER_POINTER ((yyvsp[0].ttype)));
       else
              (yyval.sch_k_type)=SK_STATIC; ;}
    break;

  case 972:
#line 4258 "../../../kg++fe/gnu/parse.y"
    { (yyval.sch_k_type)=SK_DYNAMIC; ;}
    break;

  case 973:
#line 4260 "../../../kg++fe/gnu/parse.y"
    { (yyval.sch_k_type)=SK_GUIDED; ;}
    break;

  case 974:
#line 4262 "../../../kg++fe/gnu/parse.y"
    { (yyval.sch_k_type)=SK_RUNTIME; ;}
    break;

  case 975:
#line 4268 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (sections_cons_b, (yyvsp[0].sections_clause_type)));
            (yyval.ttype) = NULL;
        ;}
    break;

  case 976:
#line 4273 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (sections_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 977:
#line 4278 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = NULL; ;}
    break;

  case 978:
#line 4280 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = (yyvsp[-1].sections_clause_type); ;}
    break;

  case 979:
#line 4285 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = (yyvsp[0].sections_clause_type); ;}
    break;

  case 980:
#line 4287 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = chain_sections_list_on ((yyvsp[-1].sections_clause_type), (yyvsp[0].sections_clause_type)); ;}
    break;

  case 981:
#line 4291 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_private, 0); ;}
    break;

  case 982:
#line 4293 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_firstprivate, 0); ;}
    break;

  case 983:
#line 4295 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_lastprivate, 0); ;}
    break;

  case 984:
#line 4297 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_reduction, (yyvsp[-3].red_op_type)); ;}
    break;

  case 985:
#line 4299 "../../../kg++fe/gnu/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list(NULL, sections_nowait, 0); ;}
    break;

  case 986:
#line 4305 "../../../kg++fe/gnu/parse.y"
    {
           In_MP_Section = true;
           add_stmt (build_omp_stmt (section_cons_b, NULL));
        ;}
    break;

  case 991:
#line 4320 "../../../kg++fe/gnu/parse.y"
    {
          In_MP_Section = false;
          add_stmt (build_omp_stmt (section_cons_e, NULL));
        ;}
    break;

  case 994:
#line 4333 "../../../kg++fe/gnu/parse.y"
    {
          if (!In_MP_Section)
            add_stmt (build_omp_stmt (section_cons_b, NULL));
          else
            In_MP_Section = false;
        ;}
    break;

  case 995:
#line 4340 "../../../kg++fe/gnu/parse.y"
    {
          add_stmt (build_omp_stmt (section_cons_e, NULL));
        ;}
    break;

  case 997:
#line 4351 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (single_cons_b, (yyvsp[0].single_clause_type)));
            (yyval.ttype) = NULL;
        ;}
    break;

  case 998:
#line 4356 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (single_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 999:
#line 4361 "../../../kg++fe/gnu/parse.y"
    {(yyval.single_clause_type) = NULL;;}
    break;

  case 1000:
#line 4363 "../../../kg++fe/gnu/parse.y"
    {(yyval.single_clause_type) = (yyvsp[-1].single_clause_type);;}
    break;

  case 1001:
#line 4368 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = (yyvsp[0].single_clause_type); ;}
    break;

  case 1002:
#line 4370 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = chain_single_list_on ((yyvsp[-1].single_clause_type), (yyvsp[0].single_clause_type)); ;}
    break;

  case 1003:
#line 4375 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_private); ;}
    break;

  case 1004:
#line 4377 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_firstprivate); ;}
    break;

  case 1005:
#line 4379 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_copyprivate); ;}
    break;

  case 1006:
#line 4381 "../../../kg++fe/gnu/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list(NULL, single_nowait); ;}
    break;

  case 1007:
#line 4386 "../../../kg++fe/gnu/parse.y"
    {
            (yyval.ttype) = add_stmt (build_omp_stmt (par_for_cons_b, (yyvsp[0].parallel_for_clause_type)));
            In_MP_Region = true;
            mp_nesting++;
            if (mp_nesting == MAX_MP_NESTING)
            {
              // will see
              printf ("MP nesting > %d not supported\n", MAX_MP_NESTING-1);
              abort();
            }
            mp_locals[mp_nesting] = NULL;
        ;}
    break;

  case 1008:
#line 4399 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (par_for_cons_e, NULL));
            (yyval.ttype) = NULL;
            In_MP_Region = false;
            if (mp_locals[mp_nesting])
            {
              (yyvsp[-1].ttype)->omp.omp_clause_list =
                chain_parallel_for_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
                   build_parallel_for_clause_list (NULL, p_for_private,
                                                   0, 0, 0));
              (yyvsp[-1].ttype)->omp.omp_clause_list =
                chain_parallel_for_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
                          build_parallel_for_clause_list (mp_locals[mp_nesting],                                                      p_for_private, 0, 0, 0));
            }
            mp_locals[mp_nesting] = NULL;
            mp_nesting--;
        ;}
    break;

  case 1009:
#line 4420 "../../../kg++fe/gnu/parse.y"
    {(yyval.parallel_for_clause_type) = NULL;;}
    break;

  case 1010:
#line 4422 "../../../kg++fe/gnu/parse.y"
    {(yyval.parallel_for_clause_type) = (yyvsp[-1].parallel_for_clause_type);;}
    break;

  case 1011:
#line 4427 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = (yyvsp[0].parallel_for_clause_type); ;}
    break;

  case 1012:
#line 4429 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = chain_parallel_for_list_on ((yyvsp[-1].parallel_for_clause_type), (yyvsp[0].parallel_for_clause_type)); ;}
    break;

  case 1013:
#line 4434 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_if, 0, 0, 0); ;}
    break;

  case 1014:
#line 4436 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_num_threads, 0, 0, 0); ;}
    break;

  case 1015:
#line 4437 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_private, 0, 0, 0); ;}
    break;

  case 1016:
#line 4439 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_copyprivate, 0, 0, 0); ;}
    break;

  case 1017:
#line 4440 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_firstprivate, 0, 0, 0); ;}
    break;

  case 1018:
#line 4442 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_lastprivate, 0, 0, 0); ;}
    break;

  case 1019:
#line 4443 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_shared, 0, 0, 0); ;}
    break;

  case 1020:
#line 4445 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_shared, 0, 0); ;}
    break;

  case 1021:
#line 4447 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_none, 0, 0); ;}
    break;

  case 1022:
#line 4449 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_reduction, 0, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 1023:
#line 4451 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_copyin, 0, 0, 0); ;}
    break;

  case 1024:
#line 4453 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_schedule_1, 0, (yyvsp[-1].sch_k_type), 0); ;}
    break;

  case 1025:
#line 4455 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_schedule_2, 0, (yyvsp[-3].sch_k_type), 0); ;}
    break;

  case 1026:
#line 4456 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_ordered, 0, 0, 0); ;}
    break;

  case 1027:
#line 4461 "../../../kg++fe/gnu/parse.y"
    {
            (yyval.ttype) = add_stmt (build_omp_stmt (par_sctn_cons_b, (yyvsp[0].parallel_sections_clause_type)));
            In_MP_Region = true;
            mp_nesting++;
            if (mp_nesting == MAX_MP_NESTING)
            {
              // will see
              printf ("MP nesting > %d not supported\n", MAX_MP_NESTING-1);
              abort();
            }
            mp_locals[mp_nesting] = NULL;
        ;}
    break;

  case 1028:
#line 4474 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (par_sctn_cons_e, NULL));
            (yyval.ttype) = NULL;
            In_MP_Region = false;
            if (mp_locals[mp_nesting])
            {
              (yyvsp[-1].ttype)->omp.omp_clause_list =
                chain_parallel_sections_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
                   build_parallel_sections_clause_list (NULL,
                                                  p_sections_private, 0, 0));
              (yyvsp[-1].ttype)->omp.omp_clause_list =
                chain_parallel_sections_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,                   build_parallel_sections_clause_list (mp_locals[mp_nesting],
                   p_sections_private, 0, 0));
            }
            mp_locals[mp_nesting] = NULL;
            mp_nesting--;
        ;}
    break;

  case 1029:
#line 4495 "../../../kg++fe/gnu/parse.y"
    {(yyval.parallel_sections_clause_type) = NULL;;}
    break;

  case 1030:
#line 4497 "../../../kg++fe/gnu/parse.y"
    {(yyval.parallel_sections_clause_type) = (yyvsp[-1].parallel_sections_clause_type);;}
    break;

  case 1031:
#line 4502 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type)=(yyvsp[0].parallel_sections_clause_type); ;}
    break;

  case 1032:
#line 4504 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = chain_parallel_sections_list_on ((yyvsp[-1].parallel_sections_clause_type), (yyvsp[0].parallel_sections_clause_type)); ;}
    break;

  case 1033:
#line 4509 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_if, 0, 0); ;}
    break;

  case 1034:
#line 4511 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_num_threads, 0, 0); ;}
    break;

  case 1035:
#line 4513 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_private, 0, 0); ;}
    break;

  case 1036:
#line 4515 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_copyprivate, 0, 0); ;}
    break;

  case 1037:
#line 4517 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_firstprivate, 0, 0); ;}
    break;

  case 1038:
#line 4519 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_lastprivate, 0, 0); ;}
    break;

  case 1039:
#line 4521 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_shared, 0, 0); ;}
    break;

  case 1040:
#line 4523 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_shared, 0); ;}
    break;

  case 1041:
#line 4525 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_none, 0); ;}
    break;

  case 1042:
#line 4527 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 1043:
#line 4529 "../../../kg++fe/gnu/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_copyin, 0, 0); ;}
    break;

  case 1044:
#line 4534 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (master_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1045:
#line 4536 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (master_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1047:
#line 4545 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (critical_cons_b, (yyvsp[0].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 1048:
#line 4547 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (critical_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1049:
#line 4552 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 1050:
#line 4554 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype); ;}
    break;

  case 1051:
#line 4559 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 1052:
#line 4564 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (barrier_dir, NULL)); /*$$ = NULL;*/ ;}
    break;

  case 1053:
#line 4569 "../../../kg++fe/gnu/parse.y"
    {
            add_stmt (build_omp_stmt (atomic_cons_b, NULL));
            (yyval.ttype) = NULL;
        ;}
    break;

  case 1054:
#line 4574 "../../../kg++fe/gnu/parse.y"
    {
            finish_expr_stmt ((yyvsp[-1].ttype)); 
            add_stmt (build_omp_stmt (atomic_cons_e, NULL));
            (yyval.ttype) = NULL;
        ;}
    break;

  case 1056:
#line 4587 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (flush_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1057:
#line 4590 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (flush_dir, (yyvsp[-2].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 1058:
#line 4595 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1059:
#line 4597 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 1061:
#line 4606 "../../../kg++fe/gnu/parse.y"
    { expand_threadprivate ((yyvsp[-2].ttype)); ;}
    break;

  case 1073:
#line 4625 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
           add_stmt(build_omp_stmt(sl2_sections_cons_b, NULL));
#endif
	 ;}
    break;

  case 1074:
#line 4631 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL 
           add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;
#endif
         ;}
    break;

  case 1075:
#line 4637 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
           add_stmt(build_omp_stmt(sl2_minor_sections_cons_b, NULL));
#endif
	 ;}
    break;

  case 1076:
#line 4643 "../../../kg++fe/gnu/parse.y"
    { 
#ifdef TARG_SL
           add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;
#endif
         ;}
    break;

  case 1084:
#line 4674 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
#endif
        ;}
    break;

  case 1085:
#line 4683 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
	  add_stmt (build_omp_stmt (sl2_section_cons_e, NULL));
#endif
        ;}
    break;

  case 1086:
#line 4689 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_minor_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
#endif
        ;}
    break;

  case 1087:
#line 4698 "../../../kg++fe/gnu/parse.y"
    {
#ifdef TARG_SL
	  add_stmt (build_omp_stmt (sl2_minor_section_cons_e, NULL));
#endif
        ;}
    break;

  case 1089:
#line 4710 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 1091:
#line 4713 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 1092:
#line 4715 "../../../kg++fe/gnu/parse.y"
    {;}
    break;

  case 1093:
#line 4720 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (options_dir, (yyvsp[-1].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 1094:
#line 4726 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 1098:
#line 4735 "../../../kg++fe/gnu/parse.y"
    { add_stmt (build_omp_stmt (exec_freq_dir, (yyvsp[-1].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 1099:
#line 4739 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_string (6, "never"); ;}
    break;

  case 1100:
#line 4740 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_string (5, "init"); ;}
    break;

  case 1101:
#line 4741 "../../../kg++fe/gnu/parse.y"
    { (yyval.ttype) = build_string (9, "frequent"); ;}
    break;

  case 1103:
#line 4750 "../../../kg++fe/gnu/parse.y"
    {
           if(lookup_name((yyvsp[0].ttype), 0)==0)
                        error("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[0].ttype)));
          (yyval.ttype) = build_tree_list (NULL_TREE, lookup_name ((yyvsp[0].ttype), 0));
        ;}
    break;

  case 1104:
#line 4756 "../../../kg++fe/gnu/parse.y"
    {
      if (lookup_name ((yyvsp[0].ttype), 0) == 0)
        error ("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[0].ttype)));
      (yyval.ttype) = chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, lookup_name ((yyvsp[0].ttype), 0)));
    ;}
    break;

  case 1105:
#line 4765 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_ADD;;}
    break;

  case 1106:
#line 4767 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_MPY;;}
    break;

  case 1107:
#line 4769 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_SUB;;}
    break;

  case 1108:
#line 4771 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BAND;;}
    break;

  case 1109:
#line 4773 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BXOR;;}
    break;

  case 1110:
#line 4775 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BIOR;;}
    break;

  case 1111:
#line 4777 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CAND;;}
    break;

  case 1112:
#line 4779 "../../../kg++fe/gnu/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CIOR;;}
    break;


      default: break;
    }

/* Line 1126 of yacc.c.  */
#line 12020 "parse.c"

  yyvsp -= yylen;
  yyssp -= yylen;


  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;


  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if YYERROR_VERBOSE
      yyn = yypact[yystate];

      if (YYPACT_NINF < yyn && yyn < YYLAST)
	{
	  int yytype = YYTRANSLATE (yychar);
	  YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
	  YYSIZE_T yysize = yysize0;
	  YYSIZE_T yysize1;
	  int yysize_overflow = 0;
	  char *yymsg = 0;
#	  define YYERROR_VERBOSE_ARGS_MAXIMUM 5
	  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
	  int yyx;

#if 0
	  /* This is so xgettext sees the translatable formats that are
	     constructed on the fly.  */
	  YY_("syntax error, unexpected %s");
	  YY_("syntax error, unexpected %s, expecting %s");
	  YY_("syntax error, unexpected %s, expecting %s or %s");
	  YY_("syntax error, unexpected %s, expecting %s or %s or %s");
	  YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
#endif
	  char *yyfmt;
	  char const *yyf;
	  static char const yyunexpected[] = "syntax error, unexpected %s";
	  static char const yyexpecting[] = ", expecting %s";
	  static char const yyor[] = " or %s";
	  char yyformat[sizeof yyunexpected
			+ sizeof yyexpecting - 1
			+ ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
			   * (sizeof yyor - 1))];
	  char const *yyprefix = yyexpecting;

	  /* Start YYX at -YYN if negative to avoid negative indexes in
	     YYCHECK.  */
	  int yyxbegin = yyn < 0 ? -yyn : 0;

	  /* Stay within bounds of both yycheck and yytname.  */
	  int yychecklim = YYLAST - yyn;
	  int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
	  int yycount = 1;

	  yyarg[0] = yytname[yytype];
	  yyfmt = yystpcpy (yyformat, yyunexpected);

	  for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	    if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	      {
		if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
		  {
		    yycount = 1;
		    yysize = yysize0;
		    yyformat[sizeof yyunexpected - 1] = '\0';
		    break;
		  }
		yyarg[yycount++] = yytname[yyx];
		yysize1 = yysize + yytnamerr (0, yytname[yyx]);
		yysize_overflow |= yysize1 < yysize;
		yysize = yysize1;
		yyfmt = yystpcpy (yyfmt, yyprefix);
		yyprefix = yyor;
	      }

	  yyf = YY_(yyformat);
	  yysize1 = yysize + yystrlen (yyf);
	  yysize_overflow |= yysize1 < yysize;
	  yysize = yysize1;

	  if (!yysize_overflow && yysize <= YYSTACK_ALLOC_MAXIMUM)
	    yymsg = (char *) YYSTACK_ALLOC (yysize);
	  if (yymsg)
	    {
	      /* Avoid sprintf, as that infringes on the user's name space.
		 Don't have undefined behavior even if the translation
		 produced a string with the wrong number of "%s"s.  */
	      char *yyp = yymsg;
	      int yyi = 0;
	      while ((*yyp = *yyf))
		{
		  if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		    {
		      yyp += yytnamerr (yyp, yyarg[yyi++]);
		      yyf += 2;
		    }
		  else
		    {
		      yyp++;
		      yyf++;
		    }
		}
	      yyerror (yymsg);
	      YYSTACK_FREE (yymsg);
	    }
	  else
	    {
	      yyerror (YY_("syntax error"));
	      goto yyexhaustedlab;
	    }
	}
      else
#endif /* YYERROR_VERBOSE */
	yyerror (YY_("syntax error"));
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
        {
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
        }
      else
	{
	  yydestruct ("Error: discarding", yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (0)
     goto yyerrorlab;

yyvsp -= yylen;
  yyssp -= yylen;
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping", yystos[yystate], yyvsp);
      YYPOPSTACK;
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token. */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK;
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
  return yyresult;
}


#line 4782 "../../../kg++fe/gnu/parse.y"


#ifdef SPEW_DEBUG
const char *
debug_yytranslate (value)
    int value;
{
  return yytname[YYTRANSLATE (value)];
}
#endif

/* Free malloced parser stacks if necessary.  */

void
free_parser_stacks ()
{
  if (malloced_yyss)
    {
      free (malloced_yyss);
      free (malloced_yyvs);
    }
}

/* Return the value corresponding to TOKEN in the global scope.  */

static tree
parse_scoped_id (token)
     tree token;
{
  cxx_binding binding;
 
  cxx_binding_clear (&binding);
  if (!qualified_lookup_using_namespace (token, global_namespace, &binding, 0))
    binding.value = NULL;
  if (yychar == YYEMPTY)
    yychar = yylex();

  return do_scoped_id (token, binding.value);
}

/* AGGR may be either a type node (like class_type_node) or a
   TREE_LIST whose TREE_PURPOSE is a list of attributes and whose
   TREE_VALUE is a type node.  Set *TAG_KIND and *ATTRIBUTES to
   represent the information encoded.  */

static void
parse_split_aggr (tree aggr, enum tag_types *tag_kind, tree *attributes)
{
  if (TREE_CODE (aggr) == TREE_LIST) 
    {
      *attributes = TREE_PURPOSE (aggr);
      aggr = TREE_VALUE (aggr);
    }
  else
    *attributes = NULL_TREE;
  *tag_kind = (enum tag_types) tree_low_cst (aggr, 1);
}

/* Like xref_tag, except that the AGGR may be either a type node (like
   class_type_node) or a TREE_LIST whose TREE_PURPOSE is a list of
   attributes and whose TREE_VALUE is a type node.  */

static tree
parse_xref_tag (tree aggr, tree name, int globalize)
{
  tree attributes;
  enum tag_types tag_kind;
  parse_split_aggr (aggr, &tag_kind, &attributes);
  return xref_tag (tag_kind, name, attributes, globalize);
}

/* Like handle_class_head, but AGGR may be as for parse_xref_tag.  */

static tree
parse_handle_class_head (tree aggr, tree scope, tree id, 
			 int defn_p, int *new_type_p)
{
  tree attributes;
  enum tag_types tag_kind;
  parse_split_aggr (aggr, &tag_kind, &attributes);
  return handle_class_head (tag_kind, scope, id, attributes, 
			    defn_p, new_type_p);
}

/* Like do_decl_instantiation, but the declarator has not yet been
   parsed.  */

static void
parse_decl_instantiation (tree declspecs, tree declarator, tree storage)
{
  tree decl = grokdeclarator (declarator, declspecs, NORMAL, 0, NULL);
  do_decl_instantiation (decl, storage);
}

/* Like begin_function_definition, but SPECS_ATTRS is a combined list
   containing both a decl-specifier-seq and attributes.  */

static int
parse_begin_function_definition (tree specs_attrs, tree declarator)
{
  tree specs;
  tree attrs;
  
  split_specs_attrs (specs_attrs, &specs, &attrs);
  return begin_function_definition (specs, attrs, declarator);
}

/* Like finish_call_expr, but the name for FN has not yet been
   resolved.  */

static tree
parse_finish_call_expr (tree fn, tree args, int koenig)
{
  bool disallow_virtual;

  if (TREE_CODE (fn) == OFFSET_REF)
    return build_offset_ref_call_from_tree (fn, args);

  if (TREE_CODE (fn) == SCOPE_REF)
    {
      tree scope = TREE_OPERAND (fn, 0);
      tree name = TREE_OPERAND (fn, 1);

      if (scope == error_mark_node || name == error_mark_node)
	return error_mark_node;
      if (!processing_template_decl)
	fn = resolve_scoped_fn_name (scope, name);
      disallow_virtual = true;
    }
  else
    disallow_virtual = false;

  if (koenig && TREE_CODE (fn) == IDENTIFIER_NODE)
    {
      tree f;
      
      /* Do the Koenig lookup.  */
      fn = do_identifier (fn, 2, args);
      /* If name lookup didn't find any matching declarations, we've
	 got an unbound identifier.  */
      if (TREE_CODE (fn) == IDENTIFIER_NODE)
	{
	  /* For some reason, do_identifier does not resolve
	     conversion operator names if the only matches would be
	     template conversion operators.  So, we do it here.  */
	  if (IDENTIFIER_TYPENAME_P (fn) && current_class_type)
	    {
	      f = lookup_member (current_class_type, fn,
				 /*protect=*/1, /*want_type=*/0);
	      if (f)
		return finish_call_expr (f, args,
					 /*disallow_virtual=*/false);
	    }
	  /* If the name still could not be resolved, then the program
	     is ill-formed.  */
	  if (TREE_CODE (fn) == IDENTIFIER_NODE)
	    {
	      unqualified_name_lookup_error (fn);
	      return error_mark_node;
	    }
	}
      else if (TREE_CODE (fn) == FUNCTION_DECL
	       || DECL_FUNCTION_TEMPLATE_P (fn)
	       || TREE_CODE (fn) == OVERLOAD)
	{
	  tree scope = DECL_CONTEXT (get_first_fn (fn));
	  if (scope && TYPE_P (scope))
	    {
	      tree access_scope;

	      if (DERIVED_FROM_P (scope, current_class_type)
		  && current_class_ref)
		{
		  fn = build_baselink (lookup_base (current_class_type,
						    scope,
						    ba_any,
						    NULL),
				       TYPE_BINFO (current_class_type),
				       fn,
				       /*optype=*/NULL_TREE);
		  return finish_object_call_expr (fn,
						  current_class_ref,
						  args);
		}


	      access_scope = current_class_type;
	      while (!DERIVED_FROM_P (scope, access_scope))
		{
		  access_scope = TYPE_CONTEXT (access_scope);
		  while (DECL_P (access_scope))
		    access_scope = DECL_CONTEXT (access_scope);
		}
	      
	      fn = build_baselink (NULL_TREE,
				   TYPE_BINFO (access_scope),
				   fn,
				   /*optype=*/NULL_TREE);
	    }
	}
    }

  if (TREE_CODE (fn) == COMPONENT_REF)
    /* If the parser sees `(x->y)(bar)' we get here because the
       parentheses confuse the parser.  Treat this like 
       `x->y(bar)'.  */
    return finish_object_call_expr (TREE_OPERAND (fn, 1),
				    TREE_OPERAND (fn, 0),
				    args);

  if (processing_template_decl)
    return build_nt (CALL_EXPR, fn, args, NULL_TREE);

  return build_call_from_tree (fn, args, disallow_virtual);
}

#include "gt-cp-parse.h"

