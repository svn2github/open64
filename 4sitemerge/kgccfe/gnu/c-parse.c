/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

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

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

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
     TYPENAME = 259,
     SCSPEC = 260,
     STATIC = 261,
     TYPESPEC = 262,
     TYPE_QUAL = 263,
     CONSTANT = 264,
     STRING = 265,
     ELLIPSIS = 266,
     PRAGMA_OPTIONS = 267,
     PRAGMA_EXEC_FREQ = 268,
     FREQ_NEVER = 269,
     FREQ_INIT = 270,
     FREQ_FREQUENT = 271,
     PRIVATE = 272,
     COPYPRIVATE = 273,
     FIRSTPRIVATE = 274,
     LASTPRIVATE = 275,
     SHARED = 276,
     DEFAULT = 277,
     NONE = 278,
     REDUCTION = 279,
     COPYIN = 280,
     DYNAMIC = 281,
     GUIDED = 282,
     RUNTIME = 283,
     ORDERED = 284,
     SCHEDULE = 285,
     NOWAIT = 286,
     PRAGMA_OMP = 287,
     PARALLEL = 288,
     NUM_THREADS = 289,
     SECTIONS = 290,
     SECTION = 291,
     SINGLE = 292,
     MASTER = 293,
     CRITICAL = 294,
     BARRIER = 295,
     ATOMIC = 296,
     FLUSH = 297,
     THREADPRIVATE = 298,
     SIZEOF = 299,
     ENUM = 300,
     STRUCT = 301,
     UNION = 302,
     IF = 303,
     ELSE = 304,
     WHILE = 305,
     DO = 306,
     FOR = 307,
     SWITCH = 308,
     CASE = 309,
     BREAK = 310,
     CONTINUE = 311,
     RETURN = 312,
     GOTO = 313,
     ASM_KEYWORD = 314,
     TYPEOF = 315,
     ALIGNOF = 316,
     ATTRIBUTE = 317,
     EXTENSION = 318,
     LABEL = 319,
     REALPART = 320,
     IMAGPART = 321,
     VA_ARG = 322,
     CHOOSE_EXPR = 323,
     TYPES_COMPATIBLE_P = 324,
     PTR_VALUE = 325,
     PTR_BASE = 326,
     PTR_EXTENT = 327,
     STRING_FUNC_NAME = 328,
     VAR_FUNC_NAME = 329,
     ASSIGN = 330,
     OROR = 331,
     ANDAND = 332,
     EQCOMPARE = 333,
     ARITHCOMPARE = 334,
     RSHIFT = 335,
     LSHIFT = 336,
     MINUSMINUS = 337,
     PLUSPLUS = 338,
     UNARY = 339,
     HYPERUNARY = 340,
     POINTSAT = 341,
     INTERFACE = 342,
     IMPLEMENTATION = 343,
     END = 344,
     SELECTOR = 345,
     DEFS = 346,
     ENCODE = 347,
     CLASSNAME = 348,
     PUBLIC = 349,
     PROTECTED = 350,
     PROTOCOL = 351,
     OBJECTNAME = 352,
     CLASS = 353,
     ALIAS = 354,
     SL2_SECTIONS = 355,
     SL2_MINOR_SECTIONS = 356,
     SL2_SECTION = 357,
     PRAGMA_SL2 = 358,
     SL2_MINOR_SECTION = 359
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define TYPENAME 259
#define SCSPEC 260
#define STATIC 261
#define TYPESPEC 262
#define TYPE_QUAL 263
#define CONSTANT 264
#define STRING 265
#define ELLIPSIS 266
#define PRAGMA_OPTIONS 267
#define PRAGMA_EXEC_FREQ 268
#define FREQ_NEVER 269
#define FREQ_INIT 270
#define FREQ_FREQUENT 271
#define PRIVATE 272
#define COPYPRIVATE 273
#define FIRSTPRIVATE 274
#define LASTPRIVATE 275
#define SHARED 276
#define DEFAULT 277
#define NONE 278
#define REDUCTION 279
#define COPYIN 280
#define DYNAMIC 281
#define GUIDED 282
#define RUNTIME 283
#define ORDERED 284
#define SCHEDULE 285
#define NOWAIT 286
#define PRAGMA_OMP 287
#define PARALLEL 288
#define NUM_THREADS 289
#define SECTIONS 290
#define SECTION 291
#define SINGLE 292
#define MASTER 293
#define CRITICAL 294
#define BARRIER 295
#define ATOMIC 296
#define FLUSH 297
#define THREADPRIVATE 298
#define SIZEOF 299
#define ENUM 300
#define STRUCT 301
#define UNION 302
#define IF 303
#define ELSE 304
#define WHILE 305
#define DO 306
#define FOR 307
#define SWITCH 308
#define CASE 309
#define BREAK 310
#define CONTINUE 311
#define RETURN 312
#define GOTO 313
#define ASM_KEYWORD 314
#define TYPEOF 315
#define ALIGNOF 316
#define ATTRIBUTE 317
#define EXTENSION 318
#define LABEL 319
#define REALPART 320
#define IMAGPART 321
#define VA_ARG 322
#define CHOOSE_EXPR 323
#define TYPES_COMPATIBLE_P 324
#define PTR_VALUE 325
#define PTR_BASE 326
#define PTR_EXTENT 327
#define STRING_FUNC_NAME 328
#define VAR_FUNC_NAME 329
#define ASSIGN 330
#define OROR 331
#define ANDAND 332
#define EQCOMPARE 333
#define ARITHCOMPARE 334
#define RSHIFT 335
#define LSHIFT 336
#define MINUSMINUS 337
#define PLUSPLUS 338
#define UNARY 339
#define HYPERUNARY 340
#define POINTSAT 341
#define INTERFACE 342
#define IMPLEMENTATION 343
#define END 344
#define SELECTOR 345
#define DEFS 346
#define ENCODE 347
#define CLASSNAME 348
#define PUBLIC 349
#define PROTECTED 350
#define PROTOCOL 351
#define OBJECTNAME 352
#define CLASS 353
#define ALIAS 354
#define SL2_SECTIONS 355
#define SL2_MINOR_SECTIONS 356
#define SL2_SECTION 357
#define PRAGMA_SL2 358
#define SL2_MINOR_SECTION 359




/* Copy the first part of user declarations.  */
#line 41 "c-parse.y"

#include "config.h"
#include "system.h"
#include "tree.h"
#include "omp_types.h"
#include "omp_directive.h"
#include "input.h"
#include "cpplib.h"
#include "intl.h"
#include "timevar.h"
#include "c-pragma.h"		/* For YYDEBUG definition, and parse_in.  */
#include "c-tree.h"
#include "flags.h"
#include "output.h"
#include "toplev.h"
#include "ggc.h"

#ifdef MULTIBYTE_CHARS
#include <locale.h>
#endif


/* Like YYERROR but do call yyerror.  */
#define YYERROR1 { yyerror ("syntax error"); YYERROR; }

/* Like the default stack expander, except (1) use realloc when possible,
   (2) impose no hard maxiumum on stack size, (3) REALLY do not use alloca.

   Irritatingly, YYSTYPE is defined after this %{ %} block, so we cannot
   give malloced_yyvs its proper type.  This is ok since all we need from
   it is to be able to free it.  */

static short *malloced_yyss;
static void *malloced_yyvs;

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

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 112 "c-parse.y"
{long itype; tree ttype; enum tree_code code;
	const char *filename; int lineno;
	enum reduction_op_type red_op_type;
	enum schedule_kind_type sch_k_type;
	struct parallel_clause_list * pclause_type;
	struct for_clause_list * for_clause_type;
	struct sections_clause_list * sections_clause_type;
	struct single_clause_list * single_clause_type;
	struct parallel_for_clause_list * parallel_for_clause_type;
	struct parallel_sections_clause_list * parallel_sections_clause_type;
	}
/* Line 187 of yacc.c.  */
#line 385 "c-p1329.c"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */
#line 290 "c-parse.y"

/* Number of statements (loosely speaking) and compound statements
   seen so far.  */
static int stmt_count;
static int compstmt_count;

/* Input file and line number of the end of the body of last simple_if;
   used by the stmt-rule immediately after simple_if returns.  */
static const char *if_stmt_file;
static int if_stmt_line;

/* List of types and structure classes of the current declaration.  */
static GTY(()) tree current_declspecs;
static GTY(()) tree prefix_attributes;

/* List of all the attributes applying to the identifier currently being
   declared; includes prefix_attributes and possibly some more attributes
   just after a comma.  */
static GTY(()) tree all_prefix_attributes;

/* Stack of saved values of current_declspecs, prefix_attributes and
   all_prefix_attributes.  */
static GTY(()) tree declspec_stack;

/* PUSH_DECLSPEC_STACK is called from setspecs; POP_DECLSPEC_STACK
   should be called from the productions making use of setspecs.  */
#define PUSH_DECLSPEC_STACK						 \
  do {									 \
    declspec_stack = tree_cons (build_tree_list (prefix_attributes,	 \
						 all_prefix_attributes), \
				current_declspecs,			 \
				declspec_stack);			 \
  } while (0)

#define POP_DECLSPEC_STACK						\
  do {									\
    current_declspecs = TREE_VALUE (declspec_stack);			\
    prefix_attributes = TREE_PURPOSE (TREE_PURPOSE (declspec_stack));	\
    all_prefix_attributes = TREE_VALUE (TREE_PURPOSE (declspec_stack));	\
    declspec_stack = TREE_CHAIN (declspec_stack);			\
  } while (0)

/* For __extension__, save/restore the warning flags which are
   controlled by __extension__.  */
#define SAVE_EXT_FLAGS()			\
	size_int (pedantic			\
		  | (warn_pointer_arith << 1)	\
		  | (warn_traditional << 2)	\
		  | (flag_iso << 3))

#define RESTORE_EXT_FLAGS(tval)			\
  do {						\
    int val = tree_low_cst (tval, 0);		\
    pedantic = val & 1;				\
    warn_pointer_arith = (val >> 1) & 1;	\
    warn_traditional = (val >> 2) & 1;		\
    flag_iso = (val >> 3) & 1;			\
  } while (0)


#define OBJC_NEED_RAW_IDENTIFIER(VAL)	/* nothing */

static bool parsing_iso_function_signature;

static bool In_MP_Region = false;
static bool In_MP_Section = false;
#define MAX_MP_NESTING 10
static GTY(()) tree mp_locals[MAX_MP_NESTING];
static int mp_nesting = -1;
extern bool Is_shared_mp_var (tree);

/* Tell yyparse how to print a token's value, if yydebug is set.  */

#define YYPRINT(FILE,YYCHAR,YYLVAL) yyprint(FILE,YYCHAR,YYLVAL)

static void yyprint	  PARAMS ((FILE *, int, YYSTYPE));
static void yyerror	  PARAMS ((const char *));
static int yylexname	  PARAMS ((void));
static int yylexstring	  PARAMS ((void));
static inline int _yylex  PARAMS ((void));
static int  yylex	  PARAMS ((void));
static void init_reswords PARAMS ((void));

  /* Initialisation routine for this file.  */
void
c_parse_init ()
{
  init_reswords ();
}



/* Line 216 of yacc.c.  */
#line 489 "c-p1329.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

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

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
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
      while (YYID (0))
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
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   4079

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  128
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  281
/* YYNRULES -- Number of rules.  */
#define YYNRULES  737
/* YYNRULES -- Number of states.  */
#define YYNSTATES  1290

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   359

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
     127,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   123,     2,     2,     2,    92,    83,     2,
      98,   119,    90,    88,   124,    89,    97,    91,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    78,   120,
       2,    75,     2,    77,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    99,     2,   126,    82,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   125,    81,   121,   122,     2,     2,     2,
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
      76,    79,    80,    84,    85,    86,    87,    93,    94,    95,
      96,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     4,     6,     7,    10,    11,    15,    17,
      19,    21,    27,    30,    32,    34,    38,    43,    48,    51,
      54,    57,    59,    60,    61,    71,    76,    77,    78,    88,
      93,    94,    95,   104,   108,   110,   112,   114,   116,   118,
     120,   122,   124,   126,   128,   129,   131,   133,   137,   139,
     142,   145,   148,   151,   154,   159,   162,   167,   170,   173,
     175,   177,   179,   181,   186,   188,   192,   196,   200,   204,
     208,   212,   216,   220,   224,   228,   232,   236,   237,   242,
     243,   248,   249,   250,   258,   259,   265,   269,   273,   275,
     277,   279,   281,   282,   290,   294,   298,   302,   306,   311,
     318,   327,   334,   339,   343,   347,   350,   353,   355,   356,
     358,   362,   364,   366,   369,   372,   377,   382,   385,   388,
     392,   393,   395,   400,   405,   409,   413,   416,   419,   421,
     424,   427,   430,   433,   436,   438,   441,   443,   446,   449,
     452,   455,   458,   461,   463,   466,   469,   472,   475,   478,
     481,   484,   487,   490,   493,   496,   499,   502,   505,   508,
     511,   513,   516,   519,   522,   525,   528,   531,   534,   537,
     540,   543,   546,   549,   552,   555,   558,   561,   564,   567,
     570,   573,   576,   579,   582,   585,   588,   591,   594,   597,
     600,   603,   606,   609,   612,   615,   618,   621,   624,   627,
     630,   633,   636,   639,   642,   645,   647,   649,   651,   653,
     655,   657,   659,   661,   663,   665,   667,   669,   671,   673,
     675,   677,   679,   681,   683,   685,   687,   689,   691,   693,
     695,   697,   699,   701,   703,   705,   707,   709,   711,   713,
     715,   717,   719,   721,   723,   725,   727,   729,   731,   733,
     735,   737,   739,   741,   743,   745,   747,   749,   751,   753,
     755,   757,   758,   760,   762,   764,   766,   768,   770,   772,
     774,   779,   784,   786,   791,   793,   798,   799,   804,   805,
     812,   816,   817,   824,   828,   829,   831,   833,   836,   843,
     845,   849,   850,   852,   857,   864,   869,   871,   873,   875,
     877,   879,   881,   883,   884,   889,   891,   892,   895,   897,
     901,   905,   908,   909,   914,   916,   917,   922,   924,   926,
     928,   931,   934,   940,   944,   945,   946,   954,   955,   956,
     964,   966,   968,   973,   977,   980,   984,   986,   988,   990,
     994,   997,   999,  1003,  1006,  1010,  1014,  1019,  1023,  1028,
    1032,  1035,  1037,  1039,  1042,  1044,  1047,  1049,  1052,  1053,
    1061,  1067,  1068,  1076,  1082,  1083,  1092,  1093,  1101,  1104,
    1107,  1110,  1111,  1113,  1114,  1116,  1118,  1121,  1122,  1126,
    1129,  1133,  1138,  1142,  1144,  1146,  1149,  1151,  1156,  1158,
    1163,  1168,  1175,  1181,  1186,  1193,  1199,  1201,  1205,  1207,
    1209,  1213,  1214,  1218,  1219,  1221,  1222,  1224,  1227,  1229,
    1231,  1233,  1237,  1240,  1244,  1249,  1253,  1256,  1259,  1261,
    1266,  1270,  1275,  1281,  1287,  1289,  1291,  1293,  1295,  1297,
    1300,  1303,  1306,  1309,  1311,  1314,  1317,  1320,  1322,  1325,
    1328,  1331,  1334,  1336,  1339,  1341,  1343,  1345,  1347,  1350,
    1351,  1352,  1353,  1354,  1355,  1357,  1359,  1362,  1366,  1368,
    1371,  1373,  1375,  1381,  1383,  1385,  1388,  1391,  1394,  1397,
    1398,  1404,  1405,  1410,  1411,  1412,  1414,  1417,  1421,  1425,
    1429,  1430,  1435,  1437,  1441,  1442,  1443,  1451,  1457,  1460,
    1461,  1462,  1463,  1464,  1477,  1478,  1485,  1488,  1490,  1492,
    1494,  1496,  1498,  1500,  1502,  1504,  1506,  1508,  1510,  1512,
    1513,  1519,  1520,  1526,  1530,  1532,  1534,  1537,  1539,  1541,
    1544,  1545,  1551,  1552,  1558,  1560,  1562,  1564,  1566,  1568,
    1572,  1577,  1579,  1581,  1583,  1587,  1589,  1591,  1593,  1595,
    1596,  1600,  1604,  1609,  1611,  1614,  1619,  1624,  1629,  1634,
    1639,  1644,  1649,  1656,  1661,  1662,  1666,  1667,  1668,  1669,
    1670,  1683,  1687,  1692,  1694,  1697,  1702,  1707,  1712,  1719,
    1724,  1731,  1733,  1735,  1737,  1739,  1741,  1743,  1744,  1748,
    1752,  1757,  1759,  1762,  1767,  1772,  1777,  1784,  1786,  1787,
    1792,  1794,  1796,  1799,  1801,  1803,  1806,  1807,  1811,  1815,
    1816,  1820,  1824,  1829,  1831,  1834,  1839,  1844,  1849,  1851,
    1852,  1856,  1861,  1867,  1869,  1872,  1877,  1882,  1887,  1892,
    1897,  1902,  1907,  1912,  1917,  1924,  1929,  1934,  1941,  1943,
    1944,  1948,  1953,  1959,  1961,  1964,  1969,  1974,  1979,  1984,
    1989,  1994,  1999,  2004,  2009,  2016,  2021,  2022,  2026,  2030,
    2031,  2035,  2039,  2046,  2048,  2052,  2056,  2060,  2064,  2071,
    2072,  2076,  2080,  2087,  2089,  2091,  2093,  2095,  2097,  2099,
    2101,  2103,  2105,  2109,  2111,  2113,  2115,  2118,  2122,  2125,
    2128,  2131,  2135,  2142,  2151,  2162,  2175,  2179,  2184,  2186,
    2190,  2196,  2199,  2205,  2206,  2208,  2209,  2211,  2212,  2214,
    2216,  2220,  2225,  2233,  2235,  2239,  2240,  2244,  2247,  2248,
    2249,  2256,  2259,  2260,  2262,  2264,  2268,  2270,  2274,  2279,
    2284,  2288,  2293,  2297,  2302,  2307,  2311,  2316,  2320,  2322,
    2323,  2327,  2329,  2332,  2334,  2338,  2340,  2344
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     129,     0,    -1,    -1,   130,    -1,    -1,   131,   133,    -1,
      -1,   130,   132,   133,    -1,   134,    -1,   136,    -1,   135,
      -1,    59,    98,   145,   119,   120,    -1,   408,   133,    -1,
     382,    -1,   319,    -1,   167,   201,   120,    -1,   187,   167,
     201,   120,    -1,   186,   167,   200,   120,    -1,   193,   120,
      -1,     1,   120,    -1,     1,   121,    -1,   120,    -1,    -1,
      -1,   186,   167,   230,   137,   161,   138,   290,   291,   279,
      -1,   186,   167,   230,     1,    -1,    -1,    -1,   187,   167,
     235,   139,   161,   140,   290,   291,   279,    -1,   187,   167,
     235,     1,    -1,    -1,    -1,   167,   235,   141,   161,   142,
     290,   291,   279,    -1,   167,   235,     1,    -1,     3,    -1,
       4,    -1,    83,    -1,    89,    -1,    88,    -1,    94,    -1,
      93,    -1,   122,    -1,   123,    -1,   147,    -1,    -1,   147,
      -1,   153,    -1,   147,   124,   153,    -1,   159,    -1,    90,
     152,    -1,   408,   152,    -1,   144,   152,    -1,    80,   143,
      -1,   149,   148,    -1,   149,    98,   256,   119,    -1,   150,
     148,    -1,   150,    98,   256,   119,    -1,    65,   152,    -1,
      66,   152,    -1,    44,    -1,    61,    -1,    60,    -1,   148,
      -1,    98,   256,   119,   152,    -1,   152,    -1,   153,    88,
     153,    -1,   153,    89,   153,    -1,   153,    90,   153,    -1,
     153,    91,   153,    -1,   153,    92,   153,    -1,   153,    87,
     153,    -1,   153,    86,   153,    -1,   153,    85,   153,    -1,
     153,    84,   153,    -1,   153,    83,   153,    -1,   153,    81,
     153,    -1,   153,    82,   153,    -1,    -1,   153,    80,   154,
     153,    -1,    -1,   153,    79,   155,   153,    -1,    -1,    -1,
     153,    77,   156,   145,    78,   157,   153,    -1,    -1,   153,
      77,   158,    78,   153,    -1,   153,    75,   153,    -1,   153,
      76,   153,    -1,     3,    -1,     9,    -1,    10,    -1,    74,
      -1,    -1,    98,   256,   119,   125,   160,   216,   121,    -1,
      98,   145,   119,    -1,    98,     1,   119,    -1,   283,   281,
     119,    -1,   283,     1,   119,    -1,   159,    98,   146,   119,
      -1,    67,    98,   153,   124,   256,   119,    -1,    68,    98,
     153,   124,   153,   124,   153,   119,    -1,    69,    98,   256,
     124,   256,   119,    -1,   159,    99,   145,   126,    -1,   159,
      97,   143,    -1,   159,   100,   143,    -1,   159,    94,    -1,
     159,    93,    -1,   162,    -1,    -1,   164,    -1,   290,   291,
     165,    -1,   163,    -1,   271,    -1,   164,   163,    -1,   163,
     271,    -1,   188,   167,   200,   120,    -1,   189,   167,   201,
     120,    -1,   188,   120,    -1,   189,   120,    -1,   290,   291,
     169,    -1,    -1,   207,    -1,   186,   167,   200,   120,    -1,
     187,   167,   201,   120,    -1,   186,   167,   224,    -1,   187,
     167,   227,    -1,   193,   120,    -1,   408,   169,    -1,     8,
      -1,   170,     8,    -1,   171,     8,    -1,   170,   208,    -1,
     172,     8,    -1,   173,     8,    -1,   208,    -1,   172,   208,
      -1,   195,    -1,   174,     8,    -1,   175,     8,    -1,   174,
     197,    -1,   175,   197,    -1,   170,   195,    -1,   171,   195,
      -1,   196,    -1,   174,   208,    -1,   174,   198,    -1,   175,
     198,    -1,   170,   196,    -1,   171,   196,    -1,   176,     8,
      -1,   177,     8,    -1,   176,   197,    -1,   177,   197,    -1,
     172,   195,    -1,   173,   195,    -1,   176,   208,    -1,   176,
     198,    -1,   177,   198,    -1,   172,   196,    -1,   173,   196,
      -1,   213,    -1,   178,     8,    -1,   179,     8,    -1,   170,
     213,    -1,   171,   213,    -1,   178,   213,    -1,   179,   213,
      -1,   178,   208,    -1,   180,     8,    -1,   181,     8,    -1,
     172,   213,    -1,   173,   213,    -1,   180,   213,    -1,   181,
     213,    -1,   180,   208,    -1,   182,     8,    -1,   183,     8,
      -1,   182,   197,    -1,   183,   197,    -1,   178,   195,    -1,
     179,   195,    -1,   174,   213,    -1,   175,   213,    -1,   182,
     213,    -1,   183,   213,    -1,   182,   208,    -1,   182,   198,
      -1,   183,   198,    -1,   178,   196,    -1,   179,   196,    -1,
     184,     8,    -1,   185,     8,    -1,   184,   197,    -1,   185,
     197,    -1,   180,   195,    -1,   181,   195,    -1,   176,   213,
      -1,   177,   213,    -1,   184,   213,    -1,   185,   213,    -1,
     184,   208,    -1,   184,   198,    -1,   185,   198,    -1,   180,
     196,    -1,   181,   196,    -1,   174,    -1,   175,    -1,   176,
      -1,   177,    -1,   182,    -1,   183,    -1,   184,    -1,   185,
      -1,   170,    -1,   171,    -1,   172,    -1,   173,    -1,   178,
      -1,   179,    -1,   180,    -1,   181,    -1,   174,    -1,   175,
      -1,   182,    -1,   183,    -1,   170,    -1,   171,    -1,   178,
      -1,   179,    -1,   174,    -1,   175,    -1,   176,    -1,   177,
      -1,   170,    -1,   171,    -1,   172,    -1,   173,    -1,   174,
      -1,   175,    -1,   176,    -1,   177,    -1,   170,    -1,   171,
      -1,   172,    -1,   173,    -1,   170,    -1,   171,    -1,   172,
      -1,   173,    -1,   174,    -1,   175,    -1,   176,    -1,   177,
      -1,   178,    -1,   179,    -1,   180,    -1,   181,    -1,   182,
      -1,   183,    -1,   184,    -1,   185,    -1,    -1,   191,    -1,
     197,    -1,   199,    -1,   198,    -1,     7,    -1,   244,    -1,
     239,    -1,     4,    -1,   151,    98,   145,   119,    -1,   151,
      98,   256,   119,    -1,   203,    -1,   200,   124,   168,   203,
      -1,   205,    -1,   201,   124,   168,   205,    -1,    -1,    59,
      98,    10,   119,    -1,    -1,   230,   202,   207,    75,   204,
     214,    -1,   230,   202,   207,    -1,    -1,   235,   202,   207,
      75,   206,   214,    -1,   235,   202,   207,    -1,    -1,   208,
      -1,   209,    -1,   208,   209,    -1,    62,    98,    98,   210,
     119,   119,    -1,   211,    -1,   210,   124,   211,    -1,    -1,
     212,    -1,   212,    98,     3,   119,    -1,   212,    98,     3,
     124,   147,   119,    -1,   212,    98,   146,   119,    -1,   143,
      -1,   213,    -1,     7,    -1,     8,    -1,     6,    -1,     5,
      -1,   153,    -1,    -1,   125,   215,   216,   121,    -1,     1,
      -1,    -1,   217,   245,    -1,   218,    -1,   217,   124,   218,
      -1,   222,    75,   220,    -1,   223,   220,    -1,    -1,   143,
      78,   219,   220,    -1,   220,    -1,    -1,   125,   221,   216,
     121,    -1,   153,    -1,     1,    -1,   223,    -1,   222,   223,
      -1,    97,   143,    -1,    99,   153,    11,   153,   126,    -1,
      99,   153,   126,    -1,    -1,    -1,   230,   225,   161,   226,
     290,   291,   284,    -1,    -1,    -1,   235,   228,   161,   229,
     290,   291,   284,    -1,   231,    -1,   235,    -1,    98,   207,
     231,   119,    -1,   231,    98,   403,    -1,   231,   264,    -1,
      90,   194,   231,    -1,     4,    -1,   233,    -1,   234,    -1,
     233,    98,   403,    -1,   233,   264,    -1,     4,    -1,   234,
      98,   403,    -1,   234,   264,    -1,    90,   194,   233,    -1,
      90,   194,   234,    -1,    98,   207,   234,   119,    -1,   235,
      98,   403,    -1,    98,   207,   235,   119,    -1,    90,   194,
     235,    -1,   235,   264,    -1,     3,    -1,    46,    -1,    46,
     208,    -1,    47,    -1,    47,   208,    -1,    45,    -1,    45,
     208,    -1,    -1,   236,   143,   125,   240,   247,   121,   207,
      -1,   236,   125,   247,   121,   207,    -1,    -1,   237,   143,
     125,   241,   247,   121,   207,    -1,   237,   125,   247,   121,
     207,    -1,    -1,   238,   143,   125,   242,   254,   246,   121,
     207,    -1,    -1,   238,   125,   243,   254,   246,   121,   207,
      -1,   236,   143,    -1,   237,   143,    -1,   238,   143,    -1,
      -1,   124,    -1,    -1,   124,    -1,   248,    -1,   248,   249,
      -1,    -1,   248,   249,   120,    -1,   248,   120,    -1,   190,
     167,   250,    -1,   190,   167,   290,   291,    -1,   191,   167,
     251,    -1,   191,    -1,     1,    -1,   408,   249,    -1,   252,
      -1,   250,   124,   168,   252,    -1,   253,    -1,   251,   124,
     168,   253,    -1,   290,   291,   230,   207,    -1,   290,   291,
     230,    78,   153,   207,    -1,   290,   291,    78,   153,   207,
      -1,   290,   291,   235,   207,    -1,   290,   291,   235,    78,
     153,   207,    -1,   290,   291,    78,   153,   207,    -1,   255,
      -1,   254,   124,   255,    -1,     1,    -1,   143,    -1,   143,
      75,   153,    -1,    -1,   192,   257,   258,    -1,    -1,   260,
      -1,    -1,   260,    -1,   261,   208,    -1,   262,    -1,   261,
      -1,   263,    -1,    90,   194,   261,    -1,    90,   194,    -1,
      90,   194,   262,    -1,    98,   207,   260,   119,    -1,   263,
      98,   393,    -1,   263,   264,    -1,    98,   393,    -1,   264,
      -1,    99,   194,   145,   126,    -1,    99,   194,   126,    -1,
      99,   194,    90,   126,    -1,    99,     6,   194,   145,   126,
      -1,    99,   191,     6,   145,   126,    -1,   266,    -1,   267,
      -1,   268,    -1,   269,    -1,   294,    -1,   266,   294,    -1,
     267,   294,    -1,   268,   294,    -1,   269,   294,    -1,   166,
      -1,   266,   166,    -1,   267,   166,    -1,   269,   166,    -1,
     295,    -1,   266,   295,    -1,   267,   295,    -1,   268,   295,
      -1,   269,   295,    -1,   271,    -1,   270,   271,    -1,   266,
      -1,   267,    -1,   268,    -1,   269,    -1,     1,   120,    -1,
      -1,    -1,    -1,    -1,    -1,   277,    -1,   278,    -1,   277,
     278,    -1,    64,   407,   120,    -1,   284,    -1,     1,   284,
      -1,   125,    -1,   121,    -1,   272,   276,   282,   121,   273,
      -1,   265,    -1,     1,    -1,    98,   125,    -1,   280,   281,
      -1,   286,   293,    -1,   286,     1,    -1,    -1,    48,   287,
      98,   145,   119,    -1,    -1,    51,   289,   293,    50,    -1,
      -1,    -1,   294,    -1,   295,   292,    -1,   274,   292,   275,
      -1,   290,   291,   385,    -1,   290,   291,   386,    -1,    -1,
     285,    49,   297,   293,    -1,   285,    -1,   285,    49,     1,
      -1,    -1,    -1,    50,   298,    98,   145,   119,   299,   293,
      -1,   288,    98,   145,   119,   120,    -1,   288,     1,    -1,
      -1,    -1,    -1,    -1,    52,   300,    98,   305,   301,   388,
     120,   302,   388,   119,   303,   293,    -1,    -1,    53,    98,
     145,   119,   304,   293,    -1,   388,   120,    -1,   169,    -1,
     324,    -1,   329,    -1,   340,    -1,   353,    -1,   358,    -1,
     363,    -1,   368,    -1,   371,    -1,   376,    -1,   379,    -1,
     307,    -1,    -1,   117,   114,   127,   308,   310,    -1,    -1,
     117,   115,   127,   309,   310,    -1,   125,   311,   121,    -1,
     313,    -1,   312,    -1,   312,   313,    -1,   323,    -1,   314,
      -1,   313,   314,    -1,    -1,   117,   116,   127,   315,   323,
      -1,    -1,   117,   118,   127,   316,   323,    -1,   375,    -1,
     378,    -1,   382,    -1,   318,    -1,   321,    -1,    12,    10,
     127,    -1,    13,   320,     3,   127,    -1,    14,    -1,    15,
      -1,    16,    -1,    13,   322,   127,    -1,    14,    -1,    15,
      -1,    16,    -1,   385,    -1,    -1,   326,   325,   323,    -1,
      32,    33,   127,    -1,    32,    33,   327,   127,    -1,   328,
      -1,   327,   328,    -1,    48,    98,   153,   119,    -1,    34,
      98,   153,   119,    -1,    17,    98,   384,   119,    -1,    19,
      98,   384,   119,    -1,    21,    98,   384,   119,    -1,    22,
      98,    21,   119,    -1,    22,    98,    23,   119,    -1,    24,
      98,   383,    78,   384,   119,    -1,    25,    98,   384,   119,
      -1,    -1,   336,   330,   331,    -1,    -1,    -1,    -1,    -1,
      52,   332,    98,   305,   333,   388,   120,   334,   388,   119,
     335,   293,    -1,    32,    52,   127,    -1,    32,    52,   337,
     127,    -1,   338,    -1,   337,   338,    -1,    17,    98,   384,
     119,    -1,    19,    98,   384,   119,    -1,    20,    98,   384,
     119,    -1,    24,    98,   383,    78,   384,   119,    -1,    30,
      98,   339,   119,    -1,    30,    98,   339,   124,   153,   119,
      -1,    29,    -1,    31,    -1,     6,    -1,    26,    -1,    27,
      -1,    28,    -1,    -1,   342,   341,   345,    -1,    32,    35,
     127,    -1,    32,    35,   343,   127,    -1,   344,    -1,   343,
     344,    -1,    17,    98,   384,   119,    -1,    19,    98,   384,
     119,    -1,    20,    98,   384,   119,    -1,    24,    98,   383,
      78,   384,   119,    -1,    31,    -1,    -1,   125,   346,   347,
     121,    -1,   349,    -1,   348,    -1,   348,   349,    -1,   323,
      -1,   350,    -1,   349,   350,    -1,    -1,   352,   351,   323,
      -1,    32,    36,   127,    -1,    -1,   355,   354,   323,    -1,
      32,    37,   127,    -1,    32,    37,   356,   127,    -1,   357,
      -1,   356,   357,    -1,    17,    98,   384,   119,    -1,    19,
      98,   384,   119,    -1,    18,    98,   384,   119,    -1,    31,
      -1,    -1,   360,   359,   331,    -1,    32,    33,    52,   127,
      -1,    32,    33,    52,   361,   127,    -1,   362,    -1,   361,
     362,    -1,    48,    98,   153,   119,    -1,    34,    98,   153,
     119,    -1,    17,    98,   384,   119,    -1,    18,    98,   384,
     119,    -1,    19,    98,   384,   119,    -1,    20,    98,   384,
     119,    -1,    21,    98,   384,   119,    -1,    22,    98,    21,
     119,    -1,    22,    98,    23,   119,    -1,    24,    98,   383,
      78,   384,   119,    -1,    25,    98,   384,   119,    -1,    30,
      98,   339,   119,    -1,    30,    98,   339,   124,   153,   119,
      -1,    29,    -1,    -1,   365,   364,   345,    -1,    32,    33,
      35,   127,    -1,    32,    33,    35,   366,   127,    -1,   367,
      -1,   366,   367,    -1,    48,    98,   153,   119,    -1,    34,
      98,   153,   119,    -1,    17,    98,   384,   119,    -1,    18,
      98,   384,   119,    -1,    19,    98,   384,   119,    -1,    20,
      98,   384,   119,    -1,    21,    98,   384,   119,    -1,    22,
      98,    21,   119,    -1,    22,    98,    23,   119,    -1,    24,
      98,   383,    78,   384,   119,    -1,    25,    98,   384,   119,
      -1,    -1,   370,   369,   323,    -1,    32,    38,   127,    -1,
      -1,   373,   372,   323,    -1,    32,    39,   127,    -1,    32,
      39,    98,   374,   119,   127,    -1,     3,    -1,    32,    40,
     127,    -1,   377,   153,   120,    -1,    32,    41,   127,    -1,
      32,    42,   127,    -1,    32,    42,    98,   384,   119,   127,
      -1,    -1,   381,   380,   323,    -1,    32,    29,   127,    -1,
      32,    43,    98,   384,   119,   127,    -1,    88,    -1,    90,
      -1,    89,    -1,    83,    -1,    82,    -1,    81,    -1,    80,
      -1,    79,    -1,     3,    -1,   384,   124,     3,    -1,   317,
      -1,   306,    -1,   284,    -1,   145,   120,    -1,   274,   296,
     275,    -1,    55,   120,    -1,    56,   120,    -1,    57,   120,
      -1,    57,   145,   120,    -1,    59,   387,    98,   145,   119,
     120,    -1,    59,   387,    98,   145,    78,   389,   119,   120,
      -1,    59,   387,    98,   145,    78,   389,    78,   389,   119,
     120,    -1,    59,   387,    98,   145,    78,   389,    78,   389,
      78,   392,   119,   120,    -1,    58,   143,   120,    -1,    58,
      90,   145,   120,    -1,   120,    -1,    54,   153,    78,    -1,
      54,   153,    11,   153,    78,    -1,    22,    78,    -1,   143,
     290,   291,    78,   207,    -1,    -1,     8,    -1,    -1,   145,
      -1,    -1,   390,    -1,   391,    -1,   390,   124,   391,    -1,
      10,    98,   145,   119,    -1,    99,   143,   126,    10,    98,
     145,   119,    -1,    10,    -1,   392,   124,    10,    -1,    -1,
     207,   394,   395,    -1,   398,   119,    -1,    -1,    -1,   399,
     120,   396,   207,   397,   395,    -1,     1,   119,    -1,    -1,
      11,    -1,   399,    -1,   399,   124,    11,    -1,   401,    -1,
     399,   124,   400,    -1,   186,   167,   232,   207,    -1,   186,
     167,   235,   207,    -1,   186,   167,   259,    -1,   187,   167,
     235,   207,    -1,   187,   167,   259,    -1,   188,   402,   232,
     207,    -1,   188,   402,   235,   207,    -1,   188,   402,   259,
      -1,   189,   402,   235,   207,    -1,   189,   402,   259,    -1,
     167,    -1,    -1,   207,   404,   405,    -1,   395,    -1,   406,
     119,    -1,     3,    -1,   406,   124,     3,    -1,   143,    -1,
     407,   124,   143,    -1,    63,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   384,   384,   388,   407,   407,   408,   408,   412,   417,
     418,   419,   427,   429,   430,   435,   442,   444,   446,   448,
     449,   450,   457,   462,   456,   468,   471,   476,   470,   482,
     485,   490,   484,   496,   501,   502,   505,   507,   509,   514,
     516,   518,   520,   524,   530,   531,   535,   537,   542,   543,
     546,   549,   553,   555,   561,   564,   567,   570,   572,   577,
     581,   585,   589,   590,   595,   596,   598,   600,   602,   604,
     606,   608,   610,   612,   614,   616,   618,   621,   620,   628,
     627,   635,   639,   634,   645,   644,   655,   662,   674,   680,
     681,   683,   686,   685,   698,   703,   705,   721,   728,   730,
     733,   743,   753,   755,   759,   765,   767,   773,   781,   787,
     794,   799,   800,   801,   802,   810,   812,   814,   817,   826,
     835,   845,   850,   852,   854,   856,   858,   860,   917,   920,
     923,   929,   935,   938,   944,   947,   953,   956,   959,   962,
     965,   968,   971,   977,   980,   983,   986,   989,   992,   998,
    1001,  1004,  1007,  1010,  1013,  1019,  1022,  1025,  1028,  1031,
    1037,  1040,  1043,  1046,  1052,  1058,  1064,  1073,  1079,  1082,
    1085,  1091,  1097,  1103,  1112,  1118,  1121,  1124,  1127,  1130,
    1133,  1136,  1142,  1148,  1154,  1163,  1166,  1169,  1172,  1175,
    1181,  1184,  1187,  1190,  1193,  1196,  1199,  1205,  1211,  1217,
    1226,  1229,  1232,  1235,  1238,  1245,  1246,  1247,  1248,  1249,
    1250,  1251,  1252,  1256,  1257,  1258,  1259,  1260,  1261,  1262,
    1263,  1267,  1268,  1269,  1270,  1274,  1275,  1276,  1277,  1281,
    1282,  1283,  1284,  1288,  1289,  1290,  1291,  1295,  1296,  1297,
    1298,  1299,  1300,  1301,  1302,  1306,  1307,  1308,  1309,  1310,
    1311,  1312,  1313,  1314,  1315,  1316,  1317,  1318,  1319,  1320,
    1321,  1327,  1328,  1354,  1355,  1359,  1363,  1365,  1369,  1373,
    1377,  1379,  1386,  1387,  1391,  1392,  1397,  1398,  1404,  1403,
    1414,  1425,  1424,  1435,  1447,  1448,  1453,  1455,  1460,  1465,
    1467,  1473,  1474,  1476,  1478,  1480,  1488,  1489,  1490,  1491,
    1495,  1496,  1502,  1504,  1503,  1507,  1514,  1516,  1520,  1521,
    1527,  1530,  1534,  1533,  1539,  1544,  1543,  1547,  1549,  1553,
    1554,  1558,  1560,  1564,  1570,  1583,  1569,  1601,  1614,  1600,
    1634,  1635,  1641,  1643,  1648,  1650,  1652,  1660,  1661,  1665,
    1670,  1672,  1676,  1681,  1683,  1685,  1687,  1695,  1700,  1702,
    1704,  1706,  1710,  1712,  1717,  1719,  1724,  1726,  1738,  1737,
    1743,  1748,  1747,  1751,  1756,  1755,  1761,  1760,  1768,  1770,
    1772,  1780,  1782,  1785,  1787,  1793,  1795,  1801,  1802,  1804,
    1810,  1813,  1823,  1826,  1831,  1833,  1839,  1840,  1845,  1846,
    1851,  1854,  1858,  1864,  1867,  1871,  1882,  1883,  1888,  1894,
    1896,  1902,  1901,  1910,  1911,  1916,  1919,  1923,  1930,  1931,
    1935,  1936,  1941,  1943,  1948,  1950,  1952,  1954,  1956,  1963,
    1965,  1967,  1969,  1972,  1983,  1984,  1985,  1989,  1993,  1994,
    1995,  1996,  1997,  2001,  2002,  2008,  2009,  2013,  2014,  2015,
    2016,  2017,  2021,  2022,  2026,  2027,  2028,  2029,  2032,  2036,
    2043,  2048,  2064,  2078,  2080,  2086,  2087,  2091,  2105,  2107,
    2110,  2114,  2116,  2124,  2125,  2129,  2146,  2154,  2159,  2172,
    2171,  2186,  2185,  2205,  2211,  2217,  2218,  2223,  2229,  2243,
    2253,  2252,  2260,  2272,  2283,  2286,  2282,  2292,  2295,  2298,
    2302,  2305,  2309,  2297,  2313,  2312,  2320,  2322,  2329,  2330,
    2331,  2332,  2333,  2334,  2335,  2336,  2337,  2338,  2339,  2344,
    2343,  2350,  2349,  2359,  2365,  2366,  2367,  2371,  2375,  2376,
    2381,  2380,  2392,  2391,  2407,  2408,  2409,  2411,  2412,  2416,
    2422,  2427,  2427,  2427,  2431,  2436,  2437,  2438,  2442,  2447,
    2446,  2477,  2479,  2484,  2486,  2491,  2493,  2495,  2497,  2499,
    2501,  2503,  2505,  2507,  2513,  2512,  2525,  2530,  2533,  2537,
    2524,  2543,  2545,  2550,  2552,  2557,  2559,  2561,  2563,  2565,
    2567,  2569,  2571,  2576,  2582,  2584,  2586,  2593,  2592,  2602,
    2604,  2609,  2611,  2616,  2618,  2620,  2622,  2624,  2631,  2630,
    2639,  2640,  2641,  2645,  2653,  2654,  2659,  2658,  2672,  2677,
    2676,  2686,  2688,  2693,  2695,  2700,  2702,  2704,  2706,  2712,
    2711,  2742,  2744,  2749,  2751,  2756,  2758,  2760,  2762,  2764,
    2766,  2768,  2770,  2772,  2774,  2776,  2778,  2780,  2782,  2788,
    2787,  2818,  2820,  2825,  2827,  2832,  2834,  2836,  2838,  2840,
    2842,  2844,  2846,  2848,  2850,  2852,  2858,  2857,  2864,  2869,
    2868,  2875,  2877,  2882,  2887,  2892,  2900,  2904,  2907,  2913,
    2912,  2919,  2923,  2928,  2930,  2932,  2934,  2936,  2938,  2940,
    2942,  2947,  2953,  2966,  2967,  2968,  2970,  2973,  2977,  2980,
    2983,  2986,  2989,  2993,  2997,  3002,  3006,  3018,  3024,  3032,
    3035,  3038,  3041,  3058,  3060,  3066,  3067,  3073,  3074,  3078,
    3079,  3084,  3086,  3093,  3095,  3106,  3105,  3116,  3118,  3126,
    3117,  3130,  3137,  3138,  3148,  3152,  3157,  3159,  3166,  3171,
    3176,  3179,  3185,  3193,  3198,  3203,  3206,  3212,  3218,  3228,
    3227,  3238,  3239,  3257,  3259,  3265,  3267,  3272
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPENAME", "SCSPEC",
  "STATIC", "TYPESPEC", "TYPE_QUAL", "CONSTANT", "STRING", "ELLIPSIS",
  "PRAGMA_OPTIONS", "PRAGMA_EXEC_FREQ", "FREQ_NEVER", "FREQ_INIT",
  "FREQ_FREQUENT", "PRIVATE", "COPYPRIVATE", "FIRSTPRIVATE", "LASTPRIVATE",
  "SHARED", "DEFAULT", "NONE", "REDUCTION", "COPYIN", "DYNAMIC", "GUIDED",
  "RUNTIME", "ORDERED", "SCHEDULE", "NOWAIT", "PRAGMA_OMP", "PARALLEL",
  "NUM_THREADS", "SECTIONS", "SECTION", "SINGLE", "MASTER", "CRITICAL",
  "BARRIER", "ATOMIC", "FLUSH", "THREADPRIVATE", "SIZEOF", "ENUM",
  "STRUCT", "UNION", "IF", "ELSE", "WHILE", "DO", "FOR", "SWITCH", "CASE",
  "BREAK", "CONTINUE", "RETURN", "GOTO", "ASM_KEYWORD", "TYPEOF",
  "ALIGNOF", "ATTRIBUTE", "EXTENSION", "LABEL", "REALPART", "IMAGPART",
  "VA_ARG", "CHOOSE_EXPR", "TYPES_COMPATIBLE_P", "PTR_VALUE", "PTR_BASE",
  "PTR_EXTENT", "STRING_FUNC_NAME", "VAR_FUNC_NAME", "'='", "ASSIGN",
  "'?'", "':'", "OROR", "ANDAND", "'|'", "'^'", "'&'", "EQCOMPARE",
  "ARITHCOMPARE", "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'", "'%'",
  "MINUSMINUS", "PLUSPLUS", "UNARY", "HYPERUNARY", "'.'", "'('", "'['",
  "POINTSAT", "INTERFACE", "IMPLEMENTATION", "END", "SELECTOR", "DEFS",
  "ENCODE", "CLASSNAME", "PUBLIC", "PROTECTED", "PROTOCOL", "OBJECTNAME",
  "CLASS", "ALIAS", "SL2_SECTIONS", "SL2_MINOR_SECTIONS", "SL2_SECTION",
  "PRAGMA_SL2", "SL2_MINOR_SECTION", "')'", "';'", "'}'", "'~'", "'!'",
  "','", "'{'", "']'", "'\\n'", "$accept", "program", "extdefs", "@1",
  "@2", "extdef", "extdef_1", "datadef", "fndef", "@3", "@4", "@5", "@6",
  "@7", "@8", "identifier", "unop", "expr", "exprlist", "nonnull_exprlist",
  "unary_expr", "sizeof", "alignof", "typeof", "cast_expr",
  "expr_no_commas", "@9", "@10", "@11", "@12", "@13", "primary", "@14",
  "old_style_parm_decls", "old_style_parm_decls_1", "lineno_datadecl",
  "datadecls", "datadecl", "lineno_decl", "setspecs", "maybe_resetattrs",
  "decl", "declspecs_nosc_nots_nosa_noea", "declspecs_nosc_nots_nosa_ea",
  "declspecs_nosc_nots_sa_noea", "declspecs_nosc_nots_sa_ea",
  "declspecs_nosc_ts_nosa_noea", "declspecs_nosc_ts_nosa_ea",
  "declspecs_nosc_ts_sa_noea", "declspecs_nosc_ts_sa_ea",
  "declspecs_sc_nots_nosa_noea", "declspecs_sc_nots_nosa_ea",
  "declspecs_sc_nots_sa_noea", "declspecs_sc_nots_sa_ea",
  "declspecs_sc_ts_nosa_noea", "declspecs_sc_ts_nosa_ea",
  "declspecs_sc_ts_sa_noea", "declspecs_sc_ts_sa_ea", "declspecs_ts",
  "declspecs_nots", "declspecs_ts_nosa", "declspecs_nots_nosa",
  "declspecs_nosc_ts", "declspecs_nosc_nots", "declspecs_nosc",
  "declspecs", "maybe_type_quals_attrs", "typespec_nonattr",
  "typespec_attr", "typespec_reserved_nonattr", "typespec_reserved_attr",
  "typespec_nonreserved_nonattr", "initdecls", "notype_initdecls",
  "maybeasm", "initdcl", "@15", "notype_initdcl", "@16", "maybe_attribute",
  "attributes", "attribute", "attribute_list", "attrib", "any_word",
  "scspec", "init", "@17", "initlist_maybe_comma", "initlist1", "initelt",
  "@18", "initval", "@19", "designator_list", "designator",
  "nested_function", "@20", "@21", "notype_nested_function", "@22", "@23",
  "declarator", "after_type_declarator", "parm_declarator",
  "parm_declarator_starttypename", "parm_declarator_nostarttypename",
  "notype_declarator", "struct_head", "union_head", "enum_head",
  "structsp_attr", "@24", "@25", "@26", "@27", "structsp_nonattr",
  "maybecomma", "maybecomma_warn", "component_decl_list",
  "component_decl_list2", "component_decl", "components",
  "components_notype", "component_declarator",
  "component_notype_declarator", "enumlist", "enumerator", "typename",
  "@28", "absdcl", "absdcl_maybe_attribute", "absdcl1", "absdcl1_noea",
  "absdcl1_ea", "direct_absdcl1", "array_declarator", "stmts_and_decls",
  "lineno_stmt_decl_or_labels_ending_stmt",
  "lineno_stmt_decl_or_labels_ending_decl",
  "lineno_stmt_decl_or_labels_ending_label",
  "lineno_stmt_decl_or_labels_ending_error", "lineno_stmt_decl_or_labels",
  "errstmt", "pushlevel", "poplevel", "c99_block_start", "c99_block_end",
  "maybe_label_decls", "label_decls", "label_decl", "compstmt_or_error",
  "compstmt_start", "compstmt_nostart", "compstmt_contents_nonempty",
  "compstmt_primary_start", "compstmt", "simple_if", "if_prefix", "@29",
  "do_stmt_start", "@30", "save_filename", "save_lineno",
  "lineno_labeled_stmt", "c99_block_lineno_labeled_stmt", "lineno_stmt",
  "lineno_label", "select_or_iter_stmt", "@31", "@32", "@33", "@34", "@35",
  "@36", "@37", "@38", "for_init_stmt", "openmp_construct",
  "sl2_sections_construct", "@39", "@40", "sl2_section_scope",
  "sl2_maybe_section_sequence", "sl2_maybe_structured_block",
  "sl2_section_sequence", "sl2_section_construct", "@41", "@42",
  "pragma_directives", "options_directive", "exec_freq_directive_ignore",
  "freq_hint_ignore", "exec_freq_directive", "freq_hint",
  "structured_block", "parallel_construct", "@43", "parallel_directive",
  "parallel_clause_list", "parallel_clause", "for_construct", "@44",
  "iteration_statement", "@45", "@46", "@47", "@48", "for_directive",
  "for_clause_list", "for_clause", "schedule_kind", "sections_construct",
  "@49", "sections_directive", "sections_clause_list", "sections_clause",
  "section_scope", "@50", "maybe_section_sequence",
  "maybe_structured_block", "section_sequence", "section_construct", "@51",
  "section_directive", "single_construct", "@52", "single_directive",
  "single_clause_list", "single_clause", "parallel_for_construct", "@53",
  "parallel_for_directive", "parallel_for_clause_list",
  "parallel_for_clause", "parallel_sections_construct", "@54",
  "parallel_sections_directive", "parallel_sections_clause_list",
  "parallel_sections_clause", "master_construct", "@55",
  "master_directive", "critical_construct", "@56", "critical_directive",
  "region_phrase", "barrier_directive", "atomic_construct",
  "atomic_directive", "flush_directive", "ordered_construct", "@57",
  "ordered_directive", "threadprivate_directive", "reduction_operator",
  "variable_list", "stmt", "label", "maybe_type_qual", "xexpr",
  "asm_operands", "nonnull_asm_operands", "asm_operand", "asm_clobbers",
  "parmlist", "@58", "parmlist_1", "@59", "@60", "parmlist_2", "parms",
  "parm", "firstparm", "setspecs_fp", "parmlist_or_identifiers", "@61",
  "parmlist_or_identifiers_1", "identifiers", "identifiers_or_typenames",
  "extension", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,    61,   330,    63,    58,   331,
     332,   124,    94,    38,   333,   334,   335,   336,    43,    45,
      42,    47,    37,   337,   338,   339,   340,    46,    40,    91,
     341,   342,   343,   344,   345,   346,   347,   348,   349,   350,
     351,   352,   353,   354,   355,   356,   357,   358,   359,    41,
      59,   125,   126,    33,    44,   123,    93,    10
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   128,   129,   129,   131,   130,   132,   130,   133,   134,
     134,   134,   134,   134,   134,   135,   135,   135,   135,   135,
     135,   135,   137,   138,   136,   136,   139,   140,   136,   136,
     141,   142,   136,   136,   143,   143,   144,   144,   144,   144,
     144,   144,   144,   145,   146,   146,   147,   147,   148,   148,
     148,   148,   148,   148,   148,   148,   148,   148,   148,   149,
     150,   151,   152,   152,   153,   153,   153,   153,   153,   153,
     153,   153,   153,   153,   153,   153,   153,   154,   153,   155,
     153,   156,   157,   153,   158,   153,   153,   153,   159,   159,
     159,   159,   160,   159,   159,   159,   159,   159,   159,   159,
     159,   159,   159,   159,   159,   159,   159,   161,   162,   162,
     163,   164,   164,   164,   164,   165,   165,   165,   165,   166,
     167,   168,   169,   169,   169,   169,   169,   169,   170,   170,
     170,   171,   172,   172,   173,   173,   174,   174,   174,   174,
     174,   174,   174,   175,   175,   175,   175,   175,   175,   176,
     176,   176,   176,   176,   176,   177,   177,   177,   177,   177,
     178,   178,   178,   178,   178,   178,   178,   179,   180,   180,
     180,   180,   180,   180,   181,   182,   182,   182,   182,   182,
     182,   182,   182,   182,   182,   183,   183,   183,   183,   183,
     184,   184,   184,   184,   184,   184,   184,   184,   184,   184,
     185,   185,   185,   185,   185,   186,   186,   186,   186,   186,
     186,   186,   186,   187,   187,   187,   187,   187,   187,   187,
     187,   188,   188,   188,   188,   189,   189,   189,   189,   190,
     190,   190,   190,   191,   191,   191,   191,   192,   192,   192,
     192,   192,   192,   192,   192,   193,   193,   193,   193,   193,
     193,   193,   193,   193,   193,   193,   193,   193,   193,   193,
     193,   194,   194,   195,   195,   196,   197,   197,   198,   199,
     199,   199,   200,   200,   201,   201,   202,   202,   204,   203,
     203,   206,   205,   205,   207,   207,   208,   208,   209,   210,
     210,   211,   211,   211,   211,   211,   212,   212,   212,   212,
     213,   213,   214,   215,   214,   214,   216,   216,   217,   217,
     218,   218,   219,   218,   218,   221,   220,   220,   220,   222,
     222,   223,   223,   223,   225,   226,   224,   228,   229,   227,
     230,   230,   231,   231,   231,   231,   231,   232,   232,   233,
     233,   233,   234,   234,   234,   234,   234,   235,   235,   235,
     235,   235,   236,   236,   237,   237,   238,   238,   240,   239,
     239,   241,   239,   239,   242,   239,   243,   239,   244,   244,
     244,   245,   245,   246,   246,   247,   247,   248,   248,   248,
     249,   249,   249,   249,   249,   249,   250,   250,   251,   251,
     252,   252,   252,   253,   253,   253,   254,   254,   254,   255,
     255,   257,   256,   258,   258,   259,   259,   259,   260,   260,
     261,   261,   262,   262,   263,   263,   263,   263,   263,   264,
     264,   264,   264,   264,   265,   265,   265,   265,   266,   266,
     266,   266,   266,   267,   267,   267,   267,   268,   268,   268,
     268,   268,   269,   269,   270,   270,   270,   270,   271,   272,
     273,   274,   275,   276,   276,   277,   277,   278,   279,   279,
     280,   281,   281,   282,   282,   283,   284,   285,   285,   287,
     286,   289,   288,   290,   291,   292,   292,   293,   294,   295,
     297,   296,   296,   296,   298,   299,   296,   296,   296,   300,
     301,   302,   303,   296,   304,   296,   305,   305,   306,   306,
     306,   306,   306,   306,   306,   306,   306,   306,   306,   308,
     307,   309,   307,   310,   311,   311,   311,   312,   313,   313,
     315,   314,   316,   314,   317,   317,   317,   317,   317,   318,
     319,   320,   320,   320,   321,   322,   322,   322,   323,   325,
     324,   326,   326,   327,   327,   328,   328,   328,   328,   328,
     328,   328,   328,   328,   330,   329,   332,   333,   334,   335,
     331,   336,   336,   337,   337,   338,   338,   338,   338,   338,
     338,   338,   338,   339,   339,   339,   339,   341,   340,   342,
     342,   343,   343,   344,   344,   344,   344,   344,   346,   345,
     347,   347,   347,   348,   349,   349,   351,   350,   352,   354,
     353,   355,   355,   356,   356,   357,   357,   357,   357,   359,
     358,   360,   360,   361,   361,   362,   362,   362,   362,   362,
     362,   362,   362,   362,   362,   362,   362,   362,   362,   364,
     363,   365,   365,   366,   366,   367,   367,   367,   367,   367,
     367,   367,   367,   367,   367,   367,   369,   368,   370,   372,
     371,   373,   373,   374,   375,   376,   377,   378,   378,   380,
     379,   381,   382,   383,   383,   383,   383,   383,   383,   383,
     383,   384,   384,   385,   385,   385,   385,   385,   385,   385,
     385,   385,   385,   385,   385,   385,   385,   385,   385,   386,
     386,   386,   386,   387,   387,   388,   388,   389,   389,   390,
     390,   391,   391,   392,   392,   394,   393,   395,   396,   397,
     395,   395,   398,   398,   398,   398,   399,   399,   400,   400,
     400,   400,   400,   401,   401,   401,   401,   401,   402,   404,
     403,   405,   405,   406,   406,   407,   407,   408
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     0,     2,     0,     3,     1,     1,
       1,     5,     2,     1,     1,     3,     4,     4,     2,     2,
       2,     1,     0,     0,     9,     4,     0,     0,     9,     4,
       0,     0,     8,     3,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     0,     1,     1,     3,     1,     2,
       2,     2,     2,     2,     4,     2,     4,     2,     2,     1,
       1,     1,     1,     4,     1,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     0,     4,     0,
       4,     0,     0,     7,     0,     5,     3,     3,     1,     1,
       1,     1,     0,     7,     3,     3,     3,     3,     4,     6,
       8,     6,     4,     3,     3,     2,     2,     1,     0,     1,
       3,     1,     1,     2,     2,     4,     4,     2,     2,     3,
       0,     1,     4,     4,     3,     3,     2,     2,     1,     2,
       2,     2,     2,     2,     1,     2,     1,     2,     2,     2,
       2,     2,     2,     1,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       1,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     0,     1,     1,     1,     1,     1,     1,     1,     1,
       4,     4,     1,     4,     1,     4,     0,     4,     0,     6,
       3,     0,     6,     3,     0,     1,     1,     2,     6,     1,
       3,     0,     1,     4,     6,     4,     1,     1,     1,     1,
       1,     1,     1,     0,     4,     1,     0,     2,     1,     3,
       3,     2,     0,     4,     1,     0,     4,     1,     1,     1,
       2,     2,     5,     3,     0,     0,     7,     0,     0,     7,
       1,     1,     4,     3,     2,     3,     1,     1,     1,     3,
       2,     1,     3,     2,     3,     3,     4,     3,     4,     3,
       2,     1,     1,     2,     1,     2,     1,     2,     0,     7,
       5,     0,     7,     5,     0,     8,     0,     7,     2,     2,
       2,     0,     1,     0,     1,     1,     2,     0,     3,     2,
       3,     4,     3,     1,     1,     2,     1,     4,     1,     4,
       4,     6,     5,     4,     6,     5,     1,     3,     1,     1,
       3,     0,     3,     0,     1,     0,     1,     2,     1,     1,
       1,     3,     2,     3,     4,     3,     2,     2,     1,     4,
       3,     4,     5,     5,     1,     1,     1,     1,     1,     2,
       2,     2,     2,     1,     2,     2,     2,     1,     2,     2,
       2,     2,     1,     2,     1,     1,     1,     1,     2,     0,
       0,     0,     0,     0,     1,     1,     2,     3,     1,     2,
       1,     1,     5,     1,     1,     2,     2,     2,     2,     0,
       5,     0,     4,     0,     0,     1,     2,     3,     3,     3,
       0,     4,     1,     3,     0,     0,     7,     5,     2,     0,
       0,     0,     0,    12,     0,     6,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     0,
       5,     0,     5,     3,     1,     1,     2,     1,     1,     2,
       0,     5,     0,     5,     1,     1,     1,     1,     1,     3,
       4,     1,     1,     1,     3,     1,     1,     1,     1,     0,
       3,     3,     4,     1,     2,     4,     4,     4,     4,     4,
       4,     4,     6,     4,     0,     3,     0,     0,     0,     0,
      12,     3,     4,     1,     2,     4,     4,     4,     6,     4,
       6,     1,     1,     1,     1,     1,     1,     0,     3,     3,
       4,     1,     2,     4,     4,     4,     6,     1,     0,     4,
       1,     1,     2,     1,     1,     2,     0,     3,     3,     0,
       3,     3,     4,     1,     2,     4,     4,     4,     1,     0,
       3,     4,     5,     1,     2,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     6,     4,     4,     6,     1,     0,
       3,     4,     5,     1,     2,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     6,     4,     0,     3,     3,     0,
       3,     3,     6,     1,     3,     3,     3,     3,     6,     0,
       3,     3,     6,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     1,     1,     2,     3,     2,     2,
       2,     3,     6,     8,    10,    12,     3,     4,     1,     3,
       5,     2,     5,     0,     1,     0,     1,     0,     1,     1,
       3,     4,     7,     1,     3,     0,     3,     2,     0,     0,
       6,     2,     0,     1,     1,     3,     1,     3,     4,     4,
       3,     4,     3,     4,     4,     3,     4,     3,     1,     0,
       3,     1,     2,     1,     3,     1,     3,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       4,     0,     6,     0,     1,     0,     0,   269,   301,   300,
     266,   128,     0,     0,   356,   352,   354,     0,    61,     0,
     737,    21,     5,     8,    10,     9,     0,     0,   213,   214,
     215,   216,   205,   206,   207,   208,   217,   218,   219,   220,
     209,   210,   211,   212,   120,   120,     0,   136,   143,   263,
     265,   264,   134,   286,   160,     0,     0,     0,   268,   267,
      14,    13,     0,     7,    19,    20,   531,   532,   533,     0,
       0,   357,   353,   355,     0,     0,     0,   351,   261,   284,
       0,   274,     0,   129,   141,   147,   131,   163,   130,   142,
     148,   164,   132,   153,   158,   135,   170,   133,   154,   159,
     171,   137,   139,   145,   144,   181,   138,   140,   146,   182,
     149,   151,   156,   155,   196,   150,   152,   157,   197,   161,
     179,   188,   167,   165,   162,   180,   189,   166,   168,   194,
     203,   174,   172,   169,   195,   204,   173,   175,   177,   186,
     185,   183,   176,   178,   187,   184,   190,   192,   201,   200,
     198,   191,   193,   202,   199,     0,     0,    18,   287,    34,
      35,   377,   368,   377,   369,   366,   370,    12,     0,     0,
      88,    89,    90,    59,    60,     0,     0,     0,     0,     0,
      91,     0,    36,    38,    37,     0,    40,    39,     0,    41,
      42,     0,     0,    43,    62,     0,     0,    64,    46,    48,
       0,     0,   291,     0,   241,   242,   243,   244,   237,   238,
     239,   240,   401,     0,   233,   234,   235,   236,   262,     0,
       0,   285,    15,   284,    33,     0,   284,   261,     0,   284,
     350,   336,   261,   284,     0,   272,     0,   330,   331,     0,
       0,     0,     0,   358,     0,   361,     0,   364,   530,   671,
       0,    57,    58,     0,     0,     0,    52,    49,     0,   465,
       0,     0,    51,     0,     0,     0,    53,     0,    55,     0,
       0,    81,    79,    77,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   106,   105,     0,    44,
       0,     0,     0,   461,   453,     0,    50,   298,   299,   296,
       0,   289,   292,   297,   270,   403,   271,   349,     0,     0,
     121,     0,   729,   347,   261,   262,     0,     0,    31,   107,
       0,   473,   112,   474,   283,     0,     0,    17,   284,    25,
       0,   284,   284,   334,    16,    29,     0,   284,   384,   379,
     233,   234,   235,   236,   229,   230,   231,   232,   120,   120,
     376,     0,   377,   284,   377,   398,   399,   373,   396,     0,
       0,     0,     0,     0,     0,    95,    94,     0,    11,    47,
       0,     0,    86,    87,     0,     0,     0,     0,    75,    76,
      74,    73,    72,    71,    70,    65,    66,    67,    68,    69,
     103,     0,    45,     0,   104,    97,     0,     0,   454,   455,
      96,     0,   291,    44,   261,   284,   402,   404,   409,   408,
     410,   418,   348,   275,   276,     0,     0,     0,     0,     0,
     420,     0,   448,   473,   114,   113,     0,   281,   335,     0,
       0,    23,   280,   333,    27,   360,   473,   473,   378,   385,
       0,   363,     0,     0,   374,     0,   373,   662,   672,     0,
       0,     0,    92,    63,    54,    56,     0,     0,    80,    78,
      98,   102,   735,     0,   464,   433,   463,   473,   473,   473,
     473,     0,   442,     0,   474,   428,   437,   456,   288,   290,
      88,     0,   412,   705,   417,   284,   416,   277,     0,   733,
     713,   225,   226,   221,   222,   227,   228,   223,   224,   120,
     120,   731,     0,   714,   716,   730,     0,     0,     0,   421,
     419,   474,   110,   120,   120,     0,   332,   273,   276,   473,
     278,   473,   380,   386,   474,   382,   388,   474,   284,   284,
     400,   397,   284,     0,     0,     0,     0,     0,    82,    85,
     457,     0,   434,   429,   438,   435,   430,   439,   474,   431,
     440,   436,   432,   441,   443,   450,   451,   293,     0,   295,
     411,   413,     0,     0,   705,   415,   711,   728,   405,   405,
     707,   708,     0,   732,     0,   422,   423,     0,   117,     0,
     118,     0,   305,   303,   302,   282,   474,     0,   474,   284,
     381,   284,     0,   359,   362,   367,   284,    99,     0,   101,
     318,    88,     0,     0,   315,     0,   317,     0,   371,   308,
     314,     0,     0,     0,   736,   451,   462,   269,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   693,     0,   688,
     460,   473,     0,   119,   120,   120,     0,     0,   449,   675,
     674,   508,   673,   527,   528,   498,   539,   499,   554,   500,
     577,   501,   599,   502,   609,   503,   629,   504,   646,   505,
     649,   524,   506,     0,   525,   507,   659,   526,   478,   479,
       0,     0,   414,   706,   341,   261,   284,   284,   337,   338,
     284,   725,   406,   409,   261,   284,   284,   727,   284,   715,
     213,   214,   215,   216,   205,   206,   207,   208,   217,   218,
     219,   220,   209,   210,   211,   212,   120,   120,   717,   734,
       0,    32,   458,     0,     0,     0,     0,   279,     0,   473,
       0,   284,   473,     0,   284,   365,     0,   321,     0,     0,
     312,    93,     0,   307,     0,   320,   311,    83,     0,   535,
     536,   537,     0,   691,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   678,   679,   680,     0,     0,
       0,   694,     0,     0,     0,   474,   676,     0,     0,   126,
     469,   484,   471,   489,     0,   482,     0,     0,   452,   466,
     451,     0,     0,   451,     0,     0,   451,   451,     0,   451,
     127,   294,   412,   705,   723,   284,   340,   284,   343,   724,
     407,   412,   705,   726,   709,   405,   405,   459,   115,   116,
       0,    24,    28,   387,   474,   284,     0,   390,   389,   284,
       0,   393,   100,     0,   323,     0,     0,   309,   310,   529,
     534,   661,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   541,     0,   543,     0,     0,     0,     0,   587,
     579,     0,   581,     0,     0,     0,   608,   601,     0,   603,
     648,     0,   651,   654,   656,     0,   657,     0,     0,     0,
       0,   571,     0,   572,   561,     0,   563,     0,   689,   681,
       0,   686,     0,   509,   511,     0,     0,   124,   324,     0,
     125,   327,     0,     0,   451,     0,     0,     0,   468,   473,
     467,   488,     0,   677,   540,   538,   556,   555,   588,   578,
     600,   610,   630,   647,   650,   655,   660,   344,   345,     0,
     339,   342,     0,   284,   284,   720,   284,   722,   304,     0,
     392,   284,   395,   284,     0,   316,   313,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   631,     0,   633,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   628,     0,     0,     0,
     611,     0,   613,   542,   544,     0,     0,     0,     0,   580,
     582,     0,     0,     0,   602,   604,   653,     0,     0,     0,
       0,     0,     0,     0,   562,   564,     0,   687,     0,     0,
       0,   284,   122,     0,   123,     0,     0,     0,     0,   695,
       0,   483,   451,   452,   475,   473,     0,     0,   451,   346,
     710,   718,   719,   721,   391,   394,   322,     0,     0,     0,
       0,     0,   670,   669,   668,   667,   666,   663,   665,   664,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   632,   634,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   612,   614,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   573,   574,   575,   576,     0,   690,   697,     0,
     451,   510,   512,   692,   325,   328,     0,     0,   472,   696,
     497,   490,     0,   494,   481,   477,   476,     0,   695,     0,
     593,     0,   591,   590,   594,   596,   547,   548,   549,   550,
     551,     0,   553,   546,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   545,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   583,   584,
     585,     0,   605,   607,   606,   652,   658,   565,   566,   567,
       0,   569,     0,     0,     0,     0,   698,   699,   682,     0,
       0,   515,   514,   518,   517,   473,   473,   470,   485,   695,
     496,   451,   487,   557,     0,   589,     0,   592,   595,   451,
       0,   637,   638,   639,   640,   641,   642,   643,     0,   645,
     636,   635,   617,   618,   619,   620,   621,   622,   623,     0,
     625,   626,     0,   616,   615,     0,     0,     0,     0,     0,
     697,     0,     0,     0,     0,   513,     0,   516,   519,   474,
     474,   451,     0,   495,   695,   598,   597,   552,     0,     0,
       0,   586,   568,   570,     0,     0,     0,   683,   700,   520,
     522,     0,     0,   486,   491,     0,   644,   624,   627,   701,
       0,     0,     0,   451,   451,   326,   329,   695,   558,     0,
     703,     0,   684,   521,   523,     0,   695,     0,     0,     0,
     492,     0,   702,   685,   704,   451,   559,   493,   451,   560
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     1,     2,     3,     5,    22,    23,    24,    25,   330,
     519,   336,   521,   228,   423,   605,   191,   632,   391,   193,
     194,   195,   196,    26,   197,   198,   377,   376,   374,   613,
     375,   199,   537,   318,   319,   320,   321,   512,   465,    27,
     309,  1100,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    42,    43,   634,   635,
     499,   500,   348,   218,   212,   636,   219,    47,    48,    49,
      50,    51,   234,    80,   229,   235,   587,    81,   515,   310,
     221,    53,   300,   301,   302,    54,   585,   715,   607,   608,
     609,   826,   610,   729,   611,   612,   887,  1003,  1175,   890,
    1005,  1176,   518,   237,   677,   678,   679,   238,    55,    56,
      57,    58,   352,   354,   359,   246,    59,   733,   445,   241,
     242,   350,   522,   525,   523,   526,   357,   358,   213,   305,
     406,   681,   682,   408,   409,   410,   230,   466,   467,   468,
     469,   470,   471,   322,   294,   616,   637,   903,   397,   398,
     399,   711,   638,   295,   473,   200,   639,   775,   776,   892,
     777,   894,   323,   426,  1013,   900,  1014,  1015,   778,  1012,
     893,  1231,   895,  1179,  1267,  1285,  1181,  1101,   640,   641,
     999,  1000,  1091,  1170,  1171,  1172,  1173,  1263,  1264,   642,
     643,    60,    69,   644,   742,   904,   645,   780,   646,   843,
     844,   647,   781,   907,  1017,  1234,  1276,  1288,   648,   875,
     876,  1086,   649,   782,   650,   851,   852,   909,  1018,  1111,
    1112,  1113,  1114,  1189,  1115,   651,   783,   652,   858,   859,
     653,   784,   654,   971,   972,   655,   785,   656,   955,   956,
     657,   786,   658,   659,   787,   660,   987,   661,   662,   663,
     664,   665,   789,   666,   667,  1040,   250,   905,   669,   762,
    1102,  1165,  1166,  1167,  1271,   484,   563,   501,   688,   922,
     502,   503,   708,   504,   568,   313,   416,   505,   506,   463,
     201
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -1118
static const yytype_int16 yypact[] =
{
      58,   134,   143,  3394, -1118,  3394,   -25, -1118, -1118, -1118,
   -1118, -1118,   720,    21,   139,   139,   139,   162, -1118,   165,
   -1118, -1118, -1118, -1118, -1118, -1118,   184,   203,  2372,   919,
    2970,  1485,  1184,   950,  1218,  1133,  3404,  2353,  3423,  2556,
    1281,  1577,  2043,  2053, -1118, -1118,   113, -1118, -1118, -1118,
   -1118, -1118,   139, -1118, -1118,   105,   121,   126, -1118, -1118,
   -1118, -1118,  3394, -1118, -1118, -1118, -1118, -1118, -1118,   285,
     209,   139,   139,   139,  3157,   212,  3063, -1118,    79,   139,
     335, -1118,  2291, -1118, -1118, -1118,   139, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118,   139, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118,   139, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118,   139, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118,   139, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118,   139, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     139, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,   139,
   -1118, -1118, -1118, -1118, -1118,   228,   203, -1118, -1118, -1118,
   -1118, -1118,   220, -1118,   241, -1118,   264, -1118,   279,   393,
   -1118, -1118, -1118, -1118, -1118,  3157,  3157,   314,   328,   331,
   -1118,   161, -1118, -1118, -1118,  3157, -1118, -1118,  1944, -1118,
   -1118,  3157,   325,   323, -1118,  3204,  3251, -1118,  3958,   933,
    1587,  3157,   752,   346,  1848,   706,  2348,  1613,   923,   734,
    1112,   831, -1118,   350,   197,   468,   217,   500, -1118,   203,
     203,   139, -1118,   139, -1118,   386,   139,   164,   976,   139,
   -1118, -1118,    79,   139,   362, -1118,   997,   472,   491,   375,
    2322,   384,  1352, -1118,   390, -1118,   637, -1118, -1118, -1118,
     246, -1118, -1118,  3157,  3157,  2453, -1118, -1118,   395, -1118,
     403,   427, -1118,   440,  3157,  1944, -1118,  1944, -1118,  3157,
    3157,   543, -1118, -1118,  3157,  3157,  3157,  3157,  3157,  3157,
    3157,  3157,  3157,  3157,  3157,  3157, -1118, -1118,   161,  3157,
    3157,   161,   505, -1118,   575,   550, -1118, -1118, -1118, -1118,
     269, -1118,   578, -1118, -1118,   243, -1118,   491,   411,   203,
   -1118,   669, -1118, -1118,    79,   710,  2361,   592, -1118, -1118,
    1160,    51, -1118, -1118,   662,   228,   228, -1118,   139, -1118,
     976,   139,   139, -1118, -1118, -1118,   976,   139, -1118, -1118,
    1848,   706,  2348,  1613,   923,   734,  1112,   831, -1118,   689,
     627,  1752, -1118,   139, -1118, -1118,   688,   645, -1118,   637,
     649,   790,  3597,  3627,   671, -1118, -1118,  2899, -1118,  3958,
     680,   684,  3958,  3958,  3157,   735,  3157,  3157,  1634,  2102,
     698,  1378,  1182,  1062,  1062,   807,   807, -1118, -1118, -1118,
   -1118,   714,   323,   721, -1118, -1118,   161,  1683,   575, -1118,
   -1118,   742,   752,  3298,    79,   139, -1118, -1118, -1118, -1118,
     785, -1118, -1118, -1118,   309,   745,  1415,  3157,  3157,  2428,
   -1118,   727, -1118, -1118, -1118, -1118,  2459, -1118,   472,   509,
     228, -1118,   793, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     769, -1118,   799,  3157,   161,   801,   645, -1118, -1118,  2453,
    3157,  2453, -1118, -1118,   788,   788,   851,  3157,  3987,  2962,
   -1118, -1118, -1118,   419,   592, -1118, -1118,    99,   122,   127,
     137,   938, -1118,   822, -1118, -1118, -1118, -1118, -1118, -1118,
     298,   827,   243,   243, -1118,   139, -1118, -1118,   835, -1118,
   -1118,  3532,  2647,  1230,   824,  3558,  2719,  2112,  1061, -1118,
   -1118, -1118,   842,   462, -1118, -1118,   311,   850,   861, -1118,
   -1118, -1118, -1118,   888,   898,  1251, -1118, -1118,   915, -1118,
   -1118, -1118,   891, -1118, -1118,   900, -1118, -1118,   139,   139,
    3958, -1118,   139,   920,   926,  3647,   930,  2013, -1118,  3974,
   -1118,   161, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118,  2524, -1118,  3157, -1118,
   -1118, -1118,   932,   356, -1118, -1118, -1118, -1118,   429,   224,
   -1118, -1118,  3524, -1118,  1071, -1118, -1118,    59, -1118,   228,
   -1118,   203, -1118, -1118,  3958, -1118, -1118,  1251, -1118,   139,
     459,   139,   250, -1118, -1118, -1118,   139, -1118,  3157, -1118,
   -1118,   987,   161,  3157, -1118,  1008,  3958,   977,   975, -1118,
   -1118,   238,  2151,  3157, -1118,  2616, -1118,  1024,  1093,   974,
    1026,  3962,  3157,   989,   990,  3110,   146,  1103,   792, -1118,
   -1118, -1118,   992, -1118, -1118, -1118,   998,   636,  1003, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118,  3157, -1118, -1118, -1118, -1118, -1118, -1118,
    2995,   318, -1118, -1118, -1118,    79,   139,   139,   901,   908,
     293, -1118, -1118,   139,    79,   139,   293, -1118,   139, -1118,
    3532,  2647,  3568,  2791,  1230,   824,  2122,  1531,  3558,  2719,
    3591,  3095,  2112,  1061,  2341,  2191, -1118, -1118, -1118, -1118,
    1001, -1118, -1118,   464,   494,  2013,    59, -1118,    59, -1118,
    3157,   237, -1118,  3157,   476, -1118,  3693, -1118,  1895,  2013,
   -1118, -1118,  2082, -1118,  2220, -1118, -1118,  3974,  1004, -1118,
   -1118, -1118,  1005, -1118,  1006,  2844,   352,   286,  1009,   -30,
    1015,  1016,    -7,  1408,  3469, -1118, -1118, -1118,  1025,  3157,
    1042, -1118,  1065,  1043,  1044, -1118, -1118,   228,   203, -1118,
   -1118, -1118, -1118, -1118,  1075,  1120,  1779,    56, -1118, -1118,
    2688,  1123,  1051,  2688,  1123,  1051,  2688,  2688,  3673,  2688,
   -1118, -1118,   429,   287, -1118,   139, -1118,   139, -1118, -1118,
     139,   224,   224, -1118, -1118,   429,   224, -1118, -1118, -1118,
    1056, -1118, -1118, -1118, -1118,  3898,  3157, -1118, -1118,  3898,
    3157, -1118, -1118,  3157, -1118,  1073,  2220, -1118, -1118, -1118,
   -1118, -1118,  1105,  1106,  1110,  1114,  1119,  1121,  1124,  3454,
    1129,  2236, -1118,   833, -1118,  1130,  1135,  1141,  1147, -1118,
   -1118,   426, -1118,  1149,  1150,  1157, -1118, -1118,   435, -1118,
   -1118,  1198, -1118, -1118, -1118,   393, -1118,  1158,  1159,  1168,
    1183, -1118,  1186, -1118, -1118,  1584, -1118,  3157, -1118, -1118,
    1090, -1118,  3157, -1118, -1118,  1140,   548, -1118,   536,   574,
   -1118,   547,  1192,  1193, -1118,  1195,  3157,  1875, -1118, -1118,
   -1118, -1118,  3157, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118,   901,   908,   532,
   -1118, -1118,   356,   139,   293, -1118,   293, -1118, -1118,   459,
   -1118,  3898, -1118,  3898,  3579, -1118, -1118,   393,   393,   393,
     274,  1161,   393,  3157,  1196,  1202,  1205,  1207,  1208,  1212,
    1213,  1215,  1217,  1223, -1118,  3479, -1118,  3157,  1224,  1225,
    1226,  1231,  1234,  1235,  1237,  1238, -1118,  1239,  1244,  1250,
   -1118,  2989, -1118, -1118, -1118,   393,   393,   393,  1161, -1118,
   -1118,   393,   393,   393, -1118, -1118, -1118,  1102,   348,   393,
     393,   393,  1161,   497, -1118, -1118,  3940, -1118,    68,  1134,
    1134,   139, -1118,   976, -1118,   976,  3157,  3157,  1246,  2995,
    1233, -1118, -1118, -1118, -1118, -1118,  1242,  1256,  2760, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118,   373,   377,   417,
    1245,  1249, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
    1279,   431,  3715,   393,   393,   393,   393,   393,   397,  1161,
     393,  3157,  3157, -1118, -1118,  3734,   393,   393,   393,   393,
     393,   631,  1161,   393,   497,  3157,  3157, -1118, -1118,   442,
     454,   473,  1280,   523,   531,   556,  1243,  1248,   619,   626,
     646,  1287, -1118, -1118, -1118, -1118,   653, -1118,    49,  1257,
    2832, -1118, -1118, -1118, -1118, -1118,  1259,  1260, -1118, -1118,
   -1118, -1118,  1276, -1118, -1118, -1118, -1118,  1285,  2995,  2898,
   -1118,  1288,  1337,  1337, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118,   393, -1118, -1118,   683,   687,   695,   722,   741,  1289,
    1291,  1322,   781,  3756,  3775, -1118,   795,   797,   818,   821,
     828,  1292,  1294,  1328,   848,   854,  3797,  3816, -1118, -1118,
   -1118,   393, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     393, -1118,  3157,  1319,   161,    80,  1300, -1118, -1118,   973,
    1308,  1314,  1314, -1118, -1118, -1118, -1118, -1118, -1118,  3157,
   -1118, -1118, -1118, -1118,  1306, -1118,  1398,  1337, -1118,  2688,
     895, -1118, -1118, -1118, -1118, -1118, -1118, -1118,   393, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,   393,
   -1118, -1118,  3157, -1118, -1118,   916,   928,  3838,  3157,  1309,
      49,  1316,    49,  1317,  1318, -1118,     3,  1314, -1118, -1118,
   -1118, -1118,  1323, -1118,  3157, -1118, -1118, -1118,   934,   936,
    3857, -1118, -1118, -1118,  1330,  1440,   159, -1118, -1118, -1118,
   -1118,  1001,  1001, -1118, -1118,  1331, -1118, -1118, -1118, -1118,
    1354,  1443,  1338,  2688,  2688, -1118, -1118,  3157, -1118,  3157,
   -1118,   952, -1118, -1118, -1118,  1340,  3157,  1355,  1351,  1447,
   -1118,  1357, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
   -1118, -1118, -1118, -1118, -1118,    83, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118,   -50, -1118,   -74,  1078,  -247,
     886, -1118, -1118, -1118,   -69,  -203, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118,  -322, -1118,  1162, -1118, -1118,   -88,   449,
    -297,  -502,    64,   345,   624,   858,    22,   132,   686,   783,
    -382,  -380,   910,   912,  -378,  -363,   922,   929,    24,    27,
    1069,  1074, -1118,  -137, -1118,    98,  -128,   787,   806,   853,
     869, -1118,  -539,  -153,  -235,  1072, -1118,  1194, -1118,   -51,
       7,    40, -1118,  1111, -1118,   690,   927, -1118,  -399, -1118,
     784, -1118,  -597, -1118, -1118,   906, -1118, -1118, -1118, -1118,
   -1118, -1118,  -151,   768,   713,   728,   304,    -1, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,  1080,  -130,
   -1118,  1176, -1118, -1118,   800,   819,  1170,  1096,     0, -1118,
   -1118,  -549,  -286,  -365,  -465, -1118,  -144, -1118, -1118, -1118,
   -1118, -1118, -1118,  -264, -1118, -1118,  -767,   530, -1118, -1118,
    1146,   -10, -1118,   913, -1118, -1118,  -559, -1118, -1118, -1118,
   -1118, -1118,   196,  -409,   537,  -800,  -199,   135, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118,   438, -1118, -1118,
   -1118, -1118,   553, -1118, -1118,   383, -1117, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118,  -620, -1118, -1118, -1118, -1118,
     716, -1118, -1118,   776, -1118, -1118, -1118, -1118, -1118, -1118,
     692,   498, -1118, -1118, -1118, -1118,   717,   794, -1118, -1118,
   -1118,   457, -1051, -1118, -1118, -1118, -1118, -1118, -1118,   703,
   -1118, -1118, -1118, -1118,   599, -1118, -1118, -1118, -1118,   620,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118,   270,  -588,   465,  -531, -1118, -1118,
   -1032,   360, -1118,   359, -1118,  1104, -1118,  -547, -1118, -1118,
   -1118, -1118, -1118, -1118,  1087,  -308, -1118, -1118, -1118, -1118,
       8
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -713
static const yytype_int16 yytable[] =
{
     192,   331,   203,   239,   236,   162,   164,   166,   431,   899,
      52,    62,    52,    62,   434,   736,   673,   561,   712,   407,
     687,    71,    72,    73,   433,   668,    82,    44,   220,    44,
      45,   430,    45,   244,   495,    86,   496,    95,   497,   104,
     713,   113,   392,   122,   495,   131,   496,   140,   497,   149,
     362,   363,  -109,   498,   633,  1228,   424,   901,    -2,  1163,
     710,   369,  1188,   498,    70,   556,   372,   373,   861,    52,
      62,   378,   379,   380,   381,   382,   383,   384,   385,   386,
     387,   388,   389,    52,   668,    52,    44,    11,    63,    45,
     315,   865,   158,   333,  1008,    64,    65,   862,   208,   316,
    -444,    46,   577,    46,   325,   349,   251,   252,   159,   160,
    1228,   158,   158,   158,   260,   590,   257,   560,   592,  1223,
     866,  1224,   262,  -445,   159,   160,   158,   899,  -446,   159,
     160,   256,   296,   472,     4,   158,  1188,   828,  -447,   615,
     204,    19,   214,    -3,   158,   167,  1088,  1232,  1164,   159,
     160,   807,   299,   158,   902,   240,   392,   712,  1220,   712,
      46,   411,   158,   910,   159,   160,   913,   914,   790,   916,
     314,   158,    11,   458,   459,   312,  -109,   716,   324,   718,
     158,   495,   326,   496,   630,   497,   417,  1089,   261,   158,
     698,   260,   699,   260,   702,    52,   356,   562,   475,  1221,
     498,    19,  1255,   683,   683,    83,    77,   554,   209,   703,
     208,    86,  1104,    95,   349,   104,   393,   113,   307,   308,
    -424,    86,   440,    95,   442,    92,    19,    77,   886,   936,
     161,    77,   231,   157,    52,  1275,   759,  1261,   390,    52,
     530,   394,   421,  -425,  1281,   899,   163,   535,  -426,    52,
     351,   165,   204,    77,   539,   364,   925,   927,  -427,    19,
      74,   158,    52,    75,   344,   370,   486,   371,   543,   546,
     549,   552,    52,    61,    52,    61,   482,   208,  1262,    19,
     432,   312,    76,   331,   333,   333,   435,   208,   168,   208,
      77,   214,   719,    78,   722,  1030,   214,  1031,   453,    19,
     456,    79,   441,   853,   854,   855,   340,   169,   414,   356,
     202,   671,   584,   734,   684,   816,   810,   856,   232,   204,
     209,    52,   685,   227,   307,   308,   233,   561,   723,   204,
     825,   204,    61,   404,   606,   602,   561,   603,   411,   411,
      78,   405,   227,   507,   508,   243,   462,    86,    79,    95,
     257,   104,   299,   113,   483,    19,   885,   488,    52,   351,
       7,     8,     9,    10,    11,   360,   245,   490,   225,   845,
     361,   846,   847,   344,   345,  1020,   848,   675,   214,   542,
     545,  1233,   551,   849,   584,   676,   227,   209,   401,   247,
    1072,   226,   227,   402,   356,   726,   249,   209,  1110,   209,
     728,    14,    15,    16,  1081,   929,   248,   226,   227,   606,
     737,    52,   253,   857,   899,   340,    18,   557,  1129,   754,
    1130,   205,   558,   215,   411,   411,   254,   560,   714,   255,
     573,  1253,    77,   674,   564,   574,   560,   791,   493,   721,
     683,   683,   264,   845,   263,   846,   847,   264,   493,   534,
     848,   536,   853,   854,   855,   222,    52,   849,    52,   223,
     788,  1131,    77,   231,   899,   304,   856,  1077,   214,   306,
    1174,   208,   361,   208,  1143,  -712,    88,   593,   594,   850,
     491,   595,   327,   345,   311,  1287,   328,   920,  1289,   921,
     491,   614,  1116,   155,   156,   334,  1117,   361,    86,   223,
     104,   361,   122,  1082,   140,   337,   631,   562,    97,   226,
     227,   353,   606,   204,   365,   204,   562,   815,   899,   675,
     819,   899,   366,  1083,  1084,  1085,   606,   676,   227,   606,
     412,   606,   476,   205,   796,   798,  1118,   720,    19,   540,
     495,   361,   496,   541,   497,   725,   367,   792,   494,   232,
    1122,   758,   727,   979,   820,   361,   801,   233,   494,   498,
     368,  1148,   984,    52,   670,   631,   361,   680,   686,  1236,
     332,   227,   215,  1149,   226,   227,   760,   215,   361,    52,
     414,   209,   571,   209,   808,   493,   572,   341,   328,   226,
     227,   724,  1150,   474,   694,   225,   706,   361,  -276,   707,
     205,   296,   544,   547,   550,   553,   225,   332,   227,  -276,
     205,  -276,   205,   931,   809,   889,   888,   933,   223,   511,
     934,   -84,  -276,   606,   395,   793,   794,   491,   516,   799,
     797,   227,   524,   527,   802,   803,   690,   804,   355,   396,
     159,   160,  1152,  1273,  1274,   226,   227,   361,   411,   411,
    1153,  1019,  1141,   331,  1142,   361,  -276,   411,   411,   215,
    -276,   411,   411,   474,   474,   548,   474,  -276,  1002,   400,
     817,  -276,   328,   821,   996,  1154,   403,    52,   670,   415,
     361,  1094,    52,  1095,   770,   880,   771,   772,   773,   774,
     800,    52,  1265,  1266,  1004,   494,   341,    86,   223,    95,
     206,   104,   216,   113,   695,   122,   811,   131,   812,   140,
       7,   149,   422,    10,    88,   586,   418,   588,    87,    91,
      96,   100,   105,   109,   114,   118,   123,   127,   132,   136,
     141,   145,   150,   154,    66,    67,    68,   427,  1157,   214,
    1042,    10,   106,   361,   312,  1158,   312,   438,   214,   215,
     361,    14,    15,    16,  1055,   159,   160,     8,     9,   297,
     298,   492,   210,   443,   930,  1159,    18,   891,   932,   444,
     361,   492,  1161,   796,   798,   798,   447,  1162,   721,    14,
      15,    16,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   307,   308,   448,   205,   451,   205,   436,   437,   454,
     307,   308,  1191,   455,   924,   926,  1192,   361,   998,  -383,
    -383,   361,   206,   457,  1193,    84,    89,    93,    98,   361,
    1251,  1252,  1010,   120,   125,   129,   134,   765,  1016,     8,
       9,    10,   106,   460,    85,    90,    94,    99,    10,   115,
     158,  1194,   121,   126,   130,   135,   361,   461,  1133,  1134,
     832,   216,   833,   510,   834,   835,   216,   836,   837,   211,
    1195,   478,  1146,  1147,   487,   361,   342,   838,   520,    14,
      15,    16,  1021,  1022,   210,  1023,    14,    15,    16,   206,
    1024,   840,  1025,   485,   227,   102,   107,   111,   116,   206,
     528,   206,   303,   138,   143,   147,   152,   283,   284,   285,
    1199,   103,   108,   112,   117,   361,   763,   764,   492,   139,
     144,   148,   153,   452,  1202,   814,  1203,   691,   527,   361,
     529,   361,   532,     7,     8,     9,    10,    88,   346,   538,
      10,   101,  1096,  1097,   207,  1099,   217,  1204,   216,   317,
    1205,   210,   361,   555,   493,   361,   559,  1206,   567,   567,
    1093,   210,   361,   210,   566,     8,     9,    10,   106,  1217,
     973,   570,   579,   581,    14,    15,    16,  1210,    14,    15,
      16,   211,   361,  1211,   225,   342,   575,   317,  1212,    18,
    -473,  -473,  -473,  -473,  -473,    19,   491,   576,   739,   740,
     741,    84,    89,    93,    98,    14,    15,    16,   329,   795,
     227,   -22,   -22,   -22,   -22,   -22,   797,   227,   578,  1240,
      85,    90,    94,    99,  1237,   589,    52,   670,   580,   361,
     215,  -473,  -473,  -473,   591,   347,   286,   287,   216,   215,
     288,   289,   290,   291,  1099,  1241,  -473,   346,   211,  -246,
     361,   596,   -22,   -22,   -22,   597,   207,  1242,   211,   599,
     211,   672,   361,  1256,   494,  1257,   225,   -22,   361,  -276,
     361,   102,   107,   111,   116,   -34,     8,     9,    10,   142,
    -250,  1278,  -276,   206,   709,   206,  1279,   103,   108,   112,
     117,   266,   268,   767,   768,   217,   730,   763,   764,  1223,
     217,  1224,   303,   428,   429,   548,   918,   919,   731,   732,
     343,  -108,   -35,   738,   743,  1099,    14,    15,    16,   755,
     756,   761,   766,   207,  1219,    52,   670,  -276,   769,    10,
     110,  -276,   -22,   207,   293,   207,   630,    84,    89,    93,
      98,   829,   830,   831,   347,   210,   860,   210,     8,     9,
      10,   115,   863,   864,  1244,   879,    85,    90,    94,    99,
     281,   282,   283,   284,   285,   805,   806,    14,    15,    16,
    1099,   317,   881,   882,  -111,  -111,  -111,  -111,  -111,   897,
     883,   884,   217,   896,    19,   906,   908,   928,    14,    15,
      16,    87,    91,   105,   109,   123,   127,   141,   145,     8,
       9,    10,   101,  1099,   935,  1277,   692,   102,   107,   111,
     116,   986,  1099,   937,   938,  -111,  -111,  -111,   939,   343,
     997,   548,   940,   103,   108,   112,   117,   941,  1001,   942,
    -111,  1076,   943,     8,     9,    10,   110,   957,   975,    14,
      15,    16,   211,   976,   211,     8,     9,    10,   101,   977,
    1032,  1033,  1034,  1035,  1036,   978,    19,   981,   982,  1037,
    1038,  1039,   582,  -252,   170,   983,   989,   990,   696,  1090,
     171,   172,   217,    14,    15,    16,   991,   492,   279,   280,
     281,   282,   283,   284,   285,    14,    15,    16,    84,    89,
      19,   992,   120,   125,   993,  -111,     8,     9,    10,   137,
    1006,  1007,    19,  1009,  1043,   173,  1098,    85,    90,   216,
    1044,   121,   126,  1045,  -249,  1046,  1047,   207,   216,   207,
    1048,  1049,   174,  1050,    20,  1051,   175,   176,   177,   178,
     179,  1052,  1056,  1057,  1058,   180,    14,    15,    16,  1059,
     988,   181,  1060,  1061,   182,  1062,  1063,  1064,  -251,   183,
     184,   185,  1065,    19,   186,   187,   102,   107,  1066,   188,
     138,   143,  1103,   338,  1108,   697,     7,  1121,  1151,    10,
      11,  1107,   103,   108,  1119,  1160,   139,   144,  1120,  1186,
    1155,  1229,  1230,   189,   190,  1156,   583,  1168,  1177,  1178,
      87,    91,    96,   100,   105,   109,   114,   118,   123,   127,
     132,   136,   141,   145,   150,   154,  1180,    14,    15,    16,
    1198,  -257,  1027,  1028,  1029,  1182,  1209,  1041,  1196,  1185,
    1197,  1207,    18,  1208,    19,    20,   488,  1218,   489,     7,
       8,     9,    10,    11,  1222,   867,   490,   868,   869,  1225,
     693,  1226,   870,  1235,  1184,  1245,  1247,   871,   872,   873,
    1069,  1070,  1071,  1254,  1249,  1250,  1073,  1074,  1075,  1259,
    1260,  1268,  1269,  1270,  1078,  1079,  1080,  1284,  1272,  1280,
      14,    15,    16,   278,   279,   280,   281,   282,   283,   284,
     285,  1283,   339,  -375,  1282,    18,  1286,    84,    89,    93,
      98,   481,   700,   425,   701,   120,   125,   129,   134,     7,
       8,     9,    10,    97,   704,   513,    85,    90,    94,    99,
     514,   705,   517,   413,   121,   126,   130,   135,  1124,  1125,
    1126,  1127,  1128,   479,   717,  1132,   827,   735,   923,   813,
     917,  1136,  1137,  1138,  1139,  1140,   533,   439,  1144,   446,
      14,    15,    16,   217,  -712,   874,     8,     9,    10,   115,
     531,   818,   217,  1105,   477,    18,  1183,   102,   107,   111,
     116,   779,  1106,  1092,  1227,   138,   143,   147,   152,   974,
     911,   985,  1145,   103,   108,   112,   117,   995,   980,  1187,
    1068,   139,   144,   148,   153,  1054,    14,    15,    16,   912,
    1246,  1248,     8,     9,    10,   142,  1190,   569,   292,   565,
    -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,     0,  -449,
    -449,   867,     0,   868,   869,  -248,     0,     0,   870,  -449,
       0,     0,     0,   871,   872,   873,  1215,     7,     0,  -449,
      10,    97,    14,    15,    16,  1216,     0,     0,     0,     0,
       0,  -449,  -449,  -449,  -449,  -449,     0,  -449,  -449,  -449,
    -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,
    -449,  -449,  -449,  -449,  -449,  -449,  -449,     0,    14,    15,
      16,  -449,     0,  1238,     0,     0,     0,  -449,     0,     0,
    -449,     0,     0,    18,  1239,  -449,  -449,  -449,     0,     0,
    -449,  -449,     0,     0,   464,  -449,  -473,  -473,  -473,  -473,
    -473,  -473,  -473,  -473,     0,  -473,  -473,  -258,     0,     0,
       0,     0,     0,     0,  -449,  -473,     0,  -449,   293,  -449,
    -449,   994,  -449,     0,     0,  -473,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,  -473,  -473,  -473,
    -473,  -473,     0,  -473,  -473,  -473,  -473,  -473,  -473,  -473,
    -473,  -473,  -473,  -473,  -473,  -473,  -473,     0,  -473,  -473,
    -473,  -473,  -473,   338,     0,     0,     7,  -473,     0,    10,
      11,     0,     0,  -473,     0,     0,  -473,     0,     0,     0,
       0,  -473,  -473,  -473,     0,     0,  -473,  -473,     0,     0,
     898,  -473,  -451,  -451,     0,     0,     0,     0,  -451,  -451,
       0,  -451,  -451,     0,     0,     0,     0,    14,    15,    16,
    -473,  -451,     0,  -473,     0,  -473,  -473,     0,  -473,     0,
       0,  -451,    18,     0,    19,    20,     0,     0,     0,     0,
       0,     0,     0,  -451,     0,     0,     0,  -451,     0,  -451,
    -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,     0,
    -451,     0,  -451,     0,  -451,  -451,  -451,  -451,  -451,     0,
       0,     0,     7,  -451,     0,    10,    83,     0,     0,  -451,
       0,     0,  -451,     0,     0,     0,     0,  -451,  -451,  -451,
       0,     0,  -451,  -451,     0,     0,  1011,  -451,  -480,  -480,
       0,     0,     0,     0,  -480,  -480,     0,  -480,  -480,     0,
       0,     0,     0,    14,    15,    16,  -451,  -480,     0,  -451,
       0,  -451,  -451,     0,  -451,     0,   823,  -480,    18,     0,
      19,     0,     0,     0,     0,     0,     0,     0,     0,  -480,
       0,     0,     0,  -480,     0,  -480,  -480,  -480,  -480,  -480,
    -480,  -480,  -480,  -480,  -480,     0,  -480,     0,  -480,     0,
    -480,  -480,  -480,  -480,  -480,   258,     0,   170,     7,  -480,
       0,    10,    11,   171,   172,  -480,     0,     0,  -480,     0,
       0,     0,     0,  -480,  -480,  -480,     0,     0,  -480,  -480,
     269,   270,   271,  -480,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,   173,    14,
      15,    16,  -480,     0,     0,  -480,     0,  -480,  -480,     0,
    -480,     0,     0,     0,    18,   174,    19,    20,     0,   175,
     176,   177,   178,   179,   600,     0,   601,   160,   180,     0,
       0,   824,   171,   172,   181,     0,     0,   182,     0,     0,
       0,     0,   183,   184,   185,     0,     0,   186,   187,     0,
       0,     0,   188,     0,     0,     0,     0,     0,     8,     9,
      10,   146,     0,     0,     0,     0,     0,   173,     8,     9,
      10,   151,     0,     0,     0,     0,   189,   190,     0,   259,
       0,     0,     0,     0,   174,     0,    20,     0,   175,   176,
     177,   178,   179,   600,     0,   601,   160,   180,    14,    15,
      16,   171,   172,   181,     0,     0,   182,     0,    14,    15,
      16,   183,   184,   185,     0,    19,   186,   187,     0,     0,
     602,   188,   603,     0,     0,     0,     0,     8,     9,    10,
     137,     0,     0,     0,     0,     0,   173,     8,     9,    10,
     110,     0,     0,     0,  -306,   189,   190,     0,   604,     0,
       0,     0,     0,   174,     0,    20,     0,   175,   176,   177,
     178,   179,   600,     0,   170,     0,   180,    14,    15,    16,
     171,   172,   181,  -259,     0,   182,     0,    14,    15,    16,
     183,   184,   185,  -260,    19,   186,   187,     0,     0,   602,
     188,   603,     0,     0,    19,   276,   277,   278,   279,   280,
     281,   282,   283,   284,   285,   173,     8,     9,    10,   151,
       0,     0,     0,  -372,   189,   190,     0,   604,     0,     0,
       0,     0,   174,     0,    20,     0,   175,   176,   177,   178,
     179,   600,     0,   170,     0,   180,  -319,     0,     0,   171,
     172,   181,     0,     0,   182,     0,    14,    15,    16,   183,
     184,   185,     0,     0,   186,   187,     0,     0,  -319,   188,
    -319,     0,     0,   958,   959,   960,   961,   962,   963,     0,
     964,   965,     0,     0,   173,   966,   967,     0,     0,     0,
     968,     0,     0,   189,   190,     0,   604,     0,     0,     0,
       0,   174,     0,    20,   969,   175,   176,   177,   178,   179,
       0,     0,   224,     0,   180,   -30,   -30,   -30,   -30,   -30,
     181,     0,     0,   182,     0,     0,     0,     0,   183,   184,
     185,     0,     0,   186,   187,     0,     0,     0,   188,     0,
       0,     0,     0,   335,     0,     0,   -26,   -26,   -26,   -26,
     -26,     0,     0,     0,     0,     0,   -30,   -30,   -30,     0,
       0,     0,   189,   190,     0,   604,     8,     9,    10,   146,
     225,   -30,     7,  -276,     0,    10,    92,     7,     8,     9,
      10,   124,     0,   970,   170,     0,  -276,   -26,   -26,   -26,
     171,   172,     0,     0,     0,     0,     7,     8,     9,    10,
      83,   225,   -26,     0,  -276,     0,    14,    15,    16,   226,
     227,     0,     0,    14,    15,    16,     0,  -276,    14,    15,
      16,     0,     0,    19,     0,   173,     0,     0,    18,     0,
      19,  -276,     0,    18,     0,  -276,   -30,    14,    15,    16,
     226,   227,   174,     0,    20,     0,   175,   176,   177,   178,
     179,   170,    18,     0,    19,   180,     0,   171,   172,     0,
       0,   181,  -276,     0,   182,     0,  -276,   -26,     0,   183,
     184,   419,     0,     0,   186,   187,     0,     7,     0,   188,
      10,    11,     0,     7,     8,     9,    10,    11,     0,     0,
       0,     0,   173,  -254,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   189,   190,     0,     0,   420,     0,   174,
       0,    20,  -245,   175,   176,   177,   178,   179,    14,    15,
      16,     0,   180,     0,    14,    15,    16,     0,   181,     0,
       0,   182,     0,    18,     0,    19,   183,   184,   185,    18,
       0,   186,   187,     0,     0,     0,   188,   601,   617,     8,
       9,    10,    11,   171,   172,     0,   618,   619,     0,     0,
       0,     0,     0,     0,     0,     0,   620,     0,     0,     0,
     189,   190,     0,     0,   509,     0,   621,     0,     0,     0,
       7,     8,     9,    10,   133,     0,     0,     0,   173,    14,
      15,    16,     0,     0,     0,     0,     0,     0,   622,   623,
     624,   625,   626,   627,    18,   174,    19,    20,     0,   175,
     176,   177,   178,   179,     0,     0,     0,     0,   180,     0,
       0,    14,    15,    16,   181,     0,     0,   182,     0,     0,
       0,     0,   183,   184,   185,     0,    18,   186,   187,   601,
     160,     0,   188,     0,     0,   171,   172,     0,   618,   619,
       0,     0,     0,     0,     0,     0,     0,     0,   620,     0,
       0,   628,     0,     0,   629,     0,   189,   190,   621,   630,
       0,     7,     8,     9,    10,    88,     0,     0,     0,     0,
     173,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     622,   623,   624,   625,   626,   627,  -256,   174,     0,    20,
       0,   175,   176,   177,   178,   179,     0,     0,     0,     0,
     180,   170,    14,    15,    16,     0,   181,   171,   172,   182,
     618,   619,     0,     0,   183,   184,   185,    18,     0,   186,
     187,     0,     0,     0,   188,     0,     0,     0,     0,     0,
     621,     0,     0,     7,     8,     9,    10,   124,     0,     0,
       0,     0,   173,   628,     0,     0,   629,     0,   189,   190,
       0,   630,     0,   623,   624,   625,   626,   627,     0,   174,
       0,    20,     0,   175,   176,   177,   178,   179,     0,     0,
       0,     0,   180,   170,    14,    15,    16,     0,   181,   171,
     172,   182,   618,   619,     0,     0,   183,   184,   185,    18,
       0,   186,   187,     0,     0,     0,   188,     0,     0,     0,
       0,     0,  1109,     0,     0,     7,     8,     9,    10,    97,
       0,     0,     0,     0,   173,   628,     0,     0,   629,     0,
     189,   190,     0,   630,     0,   623,   624,   625,   626,   627,
       0,   174,     0,    20,     0,   175,   176,   177,   178,   179,
       0,     0,     0,     0,   180,   170,    14,    15,    16,     0,
     181,   171,   172,   182,   618,   619,     0,     0,   183,   184,
     185,    18,     0,   186,   187,     0,     0,     0,   188,     0,
       0,   832,     0,   833,   621,   834,   835,     0,   836,   837,
       0,     0,     0,     0,     0,     0,   173,   628,   838,   839,
     629,     0,   189,   190,     0,   630,     0,   623,   624,   625,
     626,   627,   840,   174,     0,    20,   841,   175,   176,   177,
     178,   179,   170,     0,     0,     0,   180,     0,   171,   172,
       0,     0,   181,     0,     0,   182,     0,     0,     0,     0,
     183,   184,   185,     0,     0,   186,   187,   744,     0,     0,
     188,   745,     0,   746,  1184,   747,   748,   749,   750,   751,
     752,    70,     0,   173,     0,     0,     0,     0,     0,  1169,
     753,     0,   629,     0,   189,   190,     0,   630,     0,     0,
     174,     0,    20,     0,   175,   176,   177,   178,   179,     0,
       0,   842,     0,   180,     7,     8,     9,    10,    92,   181,
       0,     0,   182,     0,     0,     0,     0,   183,   184,   185,
       0,     0,   186,   187,     0,     0,     0,   188,   170,     7,
       8,     9,    10,    11,   171,   172,   958,   959,   960,   961,
     962,   963,     0,   964,   965,    14,    15,    16,   966,   967,
       0,   189,   190,   968,   452,     0,     0,     0,     0,     0,
      18,     0,    19,     0,     0,     0,     0,   969,     0,   173,
      14,    15,    16,   274,   275,   276,   277,   278,   279,   280,
     281,   282,   283,   284,   285,    18,   174,    19,    20,     0,
     175,   176,   177,   178,   179,     0,   170,     7,     0,   180,
      10,    11,   171,   172,     0,   181,     0,     0,   182,     0,
       0,     0,     0,   183,   184,   185,     0,     0,   186,   187,
    -247,     0,     0,   188,     0,     0,     0,     0,     0,     7,
       8,     9,    10,   133,     0,     0,     0,   173,    14,    15,
      16,     0,     0,   170,     0,     0,  1067,   189,   190,   171,
     172,     0,     0,    18,   174,    19,    20,     0,   175,   176,
     177,   178,   179,     0,     0,     0,     0,   180,     0,     0,
      14,    15,    16,   181,     0,     0,   182,     0,     0,     0,
       0,   183,   184,   185,   173,    18,   186,   187,     0,     0,
     170,   188,     0,     0,     0,     0,   171,   172,     0,     0,
       0,   174,     0,    20,     0,   175,   176,   177,   178,   179,
       0,     0,     0,     0,   180,   189,   190,     0,     0,     0,
     181,     0,     0,   182,     0,     0,     0,     0,   183,   184,
     185,   173,     0,   186,   187,     0,     0,   170,   188,     0,
       0,     0,     0,   171,   172,     0,     0,     0,   174,     0,
      20,     0,   175,   176,   177,   178,   179,     0,     0,     0,
     757,   180,   189,   190,     0,     0,     0,   181,     0,     0,
     182,     0,     0,     0,     0,   183,   184,   185,   173,     0,
     186,   187,     0,     0,   170,   188,     0,     0,     0,     0,
     171,   172,     0,     0,     0,   174,     0,    20,     0,   175,
     176,   177,   178,   179,     0,     0,     0,     0,   180,   189,
     190,     0,     0,     0,   181,     0,     0,   182,     0,     0,
       0,     0,   183,   184,   185,   173,     0,   186,   187,     0,
       0,   480,   265,     0,     0,     0,     0,   171,   172,     0,
       0,     0,   174,     0,    20,     0,   175,   176,   177,   178,
     179,     0,     0,     0,     0,   180,   189,   190,     0,     0,
       0,   181,     0,     0,   182,     0,     0,     0,     0,   183,
     184,   185,   173,     0,   186,   187,     0,     0,     0,   267,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   174,
       0,    20,     0,   175,   176,   177,   178,   179,     0,     0,
       0,     0,   180,   189,   190,     0,     0,     0,   181,     0,
       0,   182,     0,     0,     0,     0,   183,   184,   185,     0,
       0,   186,   187,     0,     0,     6,   188,  -120,     7,     8,
       9,    10,    11,     0,     0,     0,     0,    12,     7,     8,
       9,    10,   119,     0,     0,     0,     0,     0,     0,     0,
     189,   190,     0,     0,     0,     0,    13,     7,     8,     9,
      10,   128,     0,     0,     0,     0,     0,     0,     0,    14,
      15,    16,     0,     0,     0,     0,     0,     0,     0,    14,
      15,    16,     0,    17,    18,     0,    19,    20,     0,     0,
       0,     0,     0,     0,    18,     0,    19,     0,    14,    15,
      16,   944,   945,   946,   947,   948,   949,     0,   950,   951,
     877,     0,     0,    18,  -120,    19,     0,     0,   952,     0,
       0,     0,  -120,     0,     0,     0,   944,   945,   946,   947,
     948,   949,   953,   950,   951,     0,     0,     0,     0,     0,
       0,     0,     0,   952,    21,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -253,     0,     0,   953,     7,     8,
       9,    10,    11,     0,     0,   689,     7,     8,     9,    10,
      83,     0,     0,  -255,   269,   270,   271,   878,   272,   273,
     274,   275,   276,   277,   278,   279,   280,   281,   282,   283,
     284,   285,     7,     8,     9,    10,   119,     0,     0,    14,
      15,    16,     7,     8,     9,    10,    92,    14,    15,    16,
       0,   954,     0,     0,    18,     0,    19,     0,     0,     0,
       0,     0,    18,     0,    19,     7,     8,     9,    10,   128,
       0,     0,     0,    14,    15,    16,  1053,     0,     0,     0,
       0,     0,     0,    14,    15,    16,     0,     0,    18,     0,
      19,     0,     0,     0,     0,     0,     0,     0,    18,     0,
      19,     0,     0,     0,     0,     0,    14,    15,    16,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    18,     0,    19,   269,   270,   271,     0,   272,   273,
     274,   275,   276,   277,   278,   279,   280,   281,   282,   283,
     284,   285,   269,   270,   271,     0,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   269,   270,   271,  1026,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
       0,   449,   269,   270,   271,     0,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
       0,     0,     0,     0,     0,     0,     0,     0,   269,   270,
     271,   450,   272,   273,   274,   275,   276,   277,   278,   279,
     280,   281,   282,   283,   284,   285,     0,     0,   269,   270,
     271,   598,   272,   273,   274,   275,   276,   277,   278,   279,
     280,   281,   282,   283,   284,   285,     0,     0,     0,     0,
     269,   270,   271,   915,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,   269,
     270,   271,   822,   272,   273,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,     0,     0,     0,
       0,   269,   270,   271,  1123,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,     0,
     269,   270,   271,  1135,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,     0,
       0,     0,   269,   270,   271,  1200,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
       0,   269,   270,   271,  1201,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,     0,
       0,     0,     0,   269,   270,   271,  1213,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,     0,   269,   270,   271,  1214,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
       0,     0,     0,     0,     0,     0,     0,  1243,     0,     0,
      19,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   269,   270,   271,  1258,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   744,     0,     0,     0,   745,     0,   746,     0,   747,
     748,   749,   750,   751,   752,    70,     0,     0,     0,     0,
       0,     0,     0,     0,   753,   269,   270,   271,  1087,   272,
     273,   274,   275,   276,   277,   278,   279,   280,   281,   282,
     283,   284,   285,   269,   270,   271,     0,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   271,     0,   272,   273,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285
};

static const yytype_int16 yycheck[] =
{
      74,   236,    76,   156,   155,    55,    56,    57,   330,   776,
       3,     3,     5,     5,   336,   612,   563,   482,   577,   305,
     569,    14,    15,    16,   332,   556,    27,     3,    79,     5,
       3,   328,     5,   163,   416,    28,   416,    30,   416,    32,
     579,    34,   289,    36,   426,    38,   426,    40,   426,    42,
     253,   254,     1,   416,   556,  1172,   320,     1,     0,    10,
       1,   264,  1113,   426,    43,   474,   269,   270,    98,    62,
      62,   274,   275,   276,   277,   278,   279,   280,   281,   282,
     283,   284,   285,    76,   615,    78,    62,     8,     5,    62,
     227,    98,    52,   237,   894,   120,   121,   127,    76,   227,
       1,     3,   511,     5,   232,   242,   175,   176,     3,     4,
    1227,    71,    72,    73,   188,   524,   185,   482,   527,   116,
     127,   118,   191,     1,     3,     4,    86,   894,     1,     3,
       4,   181,   201,   397,     0,    95,  1187,   734,     1,   548,
      76,    62,    78,     0,   104,    62,    78,  1179,    99,     3,
       4,   710,   202,   113,    98,   156,   403,   716,    78,   718,
      62,   305,   122,   783,     3,     4,   786,   787,   670,   789,
       6,   131,     8,   376,   377,   226,   125,   586,   229,   588,
     140,   563,   233,   563,   125,   563,   314,   119,   188,   149,
     572,   265,   572,   267,   572,   188,   246,   483,   397,   119,
     563,    62,  1234,   568,   569,     8,     3,   471,    76,   572,
     188,   204,  1012,   206,   351,   208,   290,   210,   219,   220,
     121,   214,   352,   216,   354,     8,    62,     3,   767,   826,
     125,     3,     4,   120,   227,  1267,    90,    78,   288,   232,
     443,   291,   316,   121,  1276,  1012,   125,   450,   121,   242,
     242,   125,   188,     3,   457,   255,   805,   806,   121,    62,
      98,   221,   255,    98,   242,   265,   410,   267,   467,   468,
     469,   470,   265,     3,   267,     5,   404,   255,   119,    62,
     331,   332,    98,   518,   428,   429,   337,   265,     3,   267,
       3,   227,   589,    90,   591,    21,   232,    23,   367,    62,
     374,    98,   353,    17,    18,    19,   242,    98,   309,   359,
      98,   558,   515,    75,    90,    78,   715,    31,    90,   255,
     188,   314,    98,    99,   325,   326,    98,   792,    78,   265,
     729,   267,    62,    90,   537,    97,   801,    99,   482,   483,
      90,    98,    99,   417,   418,   125,   396,   340,    98,   342,
     419,   344,   402,   346,   405,    62,   765,     1,   351,   351,
       4,     5,     6,     7,     8,   119,   125,    11,    59,    17,
     124,    19,    20,   351,   242,   922,    24,    90,   314,   467,
     468,  1181,   470,    31,   587,    98,    99,   255,   119,   125,
     978,    98,    99,   124,   444,   598,     3,   265,  1018,   267,
     603,    45,    46,    47,   992,   814,   127,    98,    99,   612,
     613,   404,    98,   127,  1181,   351,    60,   119,    21,   622,
      23,    76,   124,    78,   568,   569,    98,   792,   581,    98,
     119,  1231,     3,     4,   485,   124,   801,   119,   416,   590,
     805,   806,   124,    17,   119,    19,    20,   124,   426,   449,
      24,   451,    17,    18,    19,   120,   449,    31,   451,   124,
     663,  1049,     3,     4,  1231,   119,    31,   119,   404,   119,
    1090,   449,   124,   451,  1062,   119,     8,   528,   529,   127,
     416,   532,   120,   351,    98,  1285,   124,   795,  1288,   797,
     426,   541,   119,    44,    45,   120,   119,   124,   491,   124,
     493,   124,   495,     6,   497,   121,   556,   793,     8,    98,
      99,   121,   715,   449,   119,   451,   802,   720,  1285,    90,
     723,  1288,   119,    26,    27,    28,   729,    98,    99,   732,
     119,   734,   397,   188,   678,   679,   119,    78,    62,   120,
     922,   124,   922,   124,   922,   596,   119,   675,   416,    90,
     119,   625,   602,   127,    78,   124,   684,    98,   426,   922,
     120,   119,   127,   556,   556,   615,   124,   568,   569,  1189,
      98,    99,   227,   119,    98,    99,   626,   232,   124,   572,
     581,   449,   120,   451,   120,   563,   124,   242,   124,    98,
      99,   592,   119,   397,   572,    59,   572,   124,    62,   572,
     255,   670,   467,   468,   469,   470,    59,    98,    99,    62,
     265,    75,   267,   816,   120,   768,   767,   820,   124,   423,
     823,    78,    75,   826,   119,   676,   677,   563,   119,   680,
      98,    99,   436,   437,   685,   686,   572,   688,     1,    64,
       3,     4,   119,  1263,  1264,    98,    99,   124,   792,   793,
     119,   119,    21,   888,    23,   124,   120,   801,   802,   314,
     124,   805,   806,   467,   468,   469,   470,   120,   120,   119,
     721,   124,   124,   724,   877,   119,    98,   670,   670,    10,
     124,  1003,   675,  1005,    48,   759,    50,    51,    52,    53,
     683,   684,  1251,  1252,   120,   563,   351,   690,   124,   692,
      76,   694,    78,   696,   572,   698,   716,   700,   718,   702,
       4,   704,   120,     7,     8,   519,     6,   521,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    14,    15,    16,    75,   119,   675,
     943,     7,     8,   124,   795,   119,   797,   120,   684,   404,
     124,    45,    46,    47,   957,     3,     4,     5,     6,     7,
       8,   416,    76,    75,   815,   119,    60,   768,   819,   124,
     124,   426,   119,   917,   918,   919,   127,   124,   929,    45,
      46,    47,    84,    85,    86,    87,    88,    89,    90,    91,
      92,   792,   793,     3,   449,   124,   451,   348,   349,   119,
     801,   802,   119,   119,   805,   806,   119,   124,   882,   120,
     121,   124,   188,    78,   119,    28,    29,    30,    31,   124,
    1229,  1230,   896,    36,    37,    38,    39,   631,   902,     5,
       6,     7,     8,   119,    28,    29,    30,    31,     7,     8,
     800,   119,    36,    37,    38,    39,   124,   126,  1051,  1052,
      17,   227,    19,   126,    21,    22,   232,    24,    25,    76,
     119,   119,  1065,  1066,   119,   124,   242,    34,    75,    45,
      46,    47,   923,   924,   188,   926,    45,    46,    47,   255,
     931,    48,   933,    98,    99,    32,    33,    34,    35,   265,
     121,   267,   202,    40,    41,    42,    43,    90,    91,    92,
     119,    32,    33,    34,    35,   124,   114,   115,   563,    40,
      41,    42,    43,   125,   119,   719,   119,   572,   722,   124,
     121,   124,   121,     4,     5,     6,     7,     8,   242,    78,
       7,     8,  1006,  1007,    76,  1009,    78,   119,   314,     1,
     119,   255,   124,   121,   922,   124,   119,   119,   499,   500,
    1001,   265,   124,   267,   119,     5,     6,     7,     8,  1162,
     127,   119,   513,   514,    45,    46,    47,   119,    45,    46,
      47,   188,   124,   119,    59,   351,   126,     1,   124,    60,
       4,     5,     6,     7,     8,    62,   922,   126,    14,    15,
      16,   204,   205,   206,   207,    45,    46,    47,     1,    98,
      99,     4,     5,     6,     7,     8,    98,    99,   120,  1212,
     204,   205,   206,   207,   119,   124,  1009,  1009,   120,   124,
     675,    45,    46,    47,   124,   242,    93,    94,   404,   684,
      97,    98,    99,   100,  1108,   119,    60,   351,   255,   120,
     124,   121,    45,    46,    47,   119,   188,   119,   265,   119,
     267,   119,   124,   119,   922,   119,    59,    60,   124,    62,
     124,   208,   209,   210,   211,    78,     5,     6,     7,     8,
     120,   119,    75,   449,     3,   451,   124,   208,   209,   210,
     211,   195,   196,   634,   635,   227,    78,   114,   115,   116,
     232,   118,   402,   325,   326,   899,   792,   793,   121,   124,
     242,   125,    78,    10,    78,  1179,    45,    46,    47,   120,
     120,     8,   120,   255,  1164,  1108,  1108,   120,   120,     7,
       8,   124,   125,   265,   121,   267,   125,   340,   341,   342,
     343,   127,   127,   127,   351,   449,   127,   451,     5,     6,
       7,     8,   127,   127,  1218,   120,   340,   341,   342,   343,
      88,    89,    90,    91,    92,   706,   707,    45,    46,    47,
    1234,     1,   120,    98,     4,     5,     6,     7,     8,    49,
     127,   127,   314,    98,    62,    52,   125,   121,    45,    46,
      47,   491,   492,   493,   494,   495,   496,   497,   498,     5,
       6,     7,     8,  1267,   121,  1269,   572,   344,   345,   346,
     347,     3,  1276,    98,    98,    45,    46,    47,    98,   351,
     120,  1015,    98,   344,   345,   346,   347,    98,    78,    98,
      60,   119,    98,     5,     6,     7,     8,    98,    98,    45,
      46,    47,   449,    98,   451,     5,     6,     7,     8,    98,
      79,    80,    81,    82,    83,    98,    62,    98,    98,    88,
      89,    90,     1,   120,     3,    98,    98,    98,   572,   125,
       9,    10,   404,    45,    46,    47,    98,   922,    86,    87,
      88,    89,    90,    91,    92,    45,    46,    47,   491,   492,
      62,    98,   495,   496,    98,   125,     5,     6,     7,     8,
      98,    98,    62,    98,    98,    44,    50,   491,   492,   675,
      98,   495,   496,    98,   120,    98,    98,   449,   684,   451,
      98,    98,    61,    98,    63,    98,    65,    66,    67,    68,
      69,    98,    98,    98,    98,    74,    45,    46,    47,    98,
     865,    80,    98,    98,    83,    98,    98,    98,   120,    88,
      89,    90,    98,    62,    93,    94,   493,   494,    98,    98,
     497,   498,   119,     1,    98,   572,     4,    78,    78,     7,
       8,   119,   493,   494,   119,    78,   497,   498,   119,    32,
     127,  1175,  1176,   122,   123,   127,   125,   120,   119,   119,
     690,   691,   692,   693,   694,   695,   696,   697,   698,   699,
     700,   701,   702,   703,   704,   705,   120,    45,    46,    47,
      78,   120,   937,   938,   939,   120,    78,   942,   119,   121,
     119,   119,    60,   119,    62,    63,     1,    98,     3,     4,
       5,     6,     7,     8,   124,    17,    11,    19,    20,   121,
     572,   117,    24,   127,    36,   126,   120,    29,    30,    31,
     975,   976,   977,   120,   127,   127,   981,   982,   983,   119,
      10,   120,    98,    10,   989,   990,   991,    10,   120,   119,
      45,    46,    47,    85,    86,    87,    88,    89,    90,    91,
      92,   120,   120,   121,   119,    60,   119,   690,   691,   692,
     693,   403,   572,   321,   572,   698,   699,   700,   701,     4,
       5,     6,     7,     8,   572,   426,   690,   691,   692,   693,
     426,   572,   430,   309,   698,   699,   700,   701,  1043,  1044,
    1045,  1046,  1047,   402,   587,  1050,   732,   611,   805,   719,
     792,  1056,  1057,  1058,  1059,  1060,   446,   351,  1063,   359,
      45,    46,    47,   675,   119,   127,     5,     6,     7,     8,
     444,   722,   684,  1013,   398,    60,  1108,   694,   695,   696,
     697,   638,  1015,  1000,  1171,   702,   703,   704,   705,   843,
     784,   858,  1064,   694,   695,   696,   697,   875,   851,  1112,
     971,   702,   703,   704,   705,   955,    45,    46,    47,   785,
    1220,  1222,     5,     6,     7,     8,  1121,   500,     1,   485,
       3,     4,     5,     6,     7,     8,     9,    10,    -1,    12,
      13,    17,    -1,    19,    20,   120,    -1,    -1,    24,    22,
      -1,    -1,    -1,    29,    30,    31,  1151,     4,    -1,    32,
       7,     8,    45,    46,    47,  1160,    -1,    -1,    -1,    -1,
      -1,    44,    45,    46,    47,    48,    -1,    50,    51,    52,
      53,    54,    55,    56,    57,    58,    59,    60,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    -1,    45,    46,
      47,    74,    -1,  1198,    -1,    -1,    -1,    80,    -1,    -1,
      83,    -1,    -1,    60,  1209,    88,    89,    90,    -1,    -1,
      93,    94,    -1,    -1,     1,    98,     3,     4,     5,     6,
       7,     8,     9,    10,    -1,    12,    13,   120,    -1,    -1,
      -1,    -1,    -1,    -1,   117,    22,    -1,   120,   121,   122,
     123,   127,   125,    -1,    -1,    32,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    44,    45,    46,
      47,    48,    -1,    50,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    -1,    65,    66,
      67,    68,    69,     1,    -1,    -1,     4,    74,    -1,     7,
       8,    -1,    -1,    80,    -1,    -1,    83,    -1,    -1,    -1,
      -1,    88,    89,    90,    -1,    -1,    93,    94,    -1,    -1,
       1,    98,     3,     4,    -1,    -1,    -1,    -1,     9,    10,
      -1,    12,    13,    -1,    -1,    -1,    -1,    45,    46,    47,
     117,    22,    -1,   120,    -1,   122,   123,    -1,   125,    -1,
      -1,    32,    60,    -1,    62,    63,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    44,    -1,    -1,    -1,    48,    -1,    50,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    -1,
      61,    -1,    63,    -1,    65,    66,    67,    68,    69,    -1,
      -1,    -1,     4,    74,    -1,     7,     8,    -1,    -1,    80,
      -1,    -1,    83,    -1,    -1,    -1,    -1,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,     1,    98,     3,     4,
      -1,    -1,    -1,    -1,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,    45,    46,    47,   117,    22,    -1,   120,
      -1,   122,   123,    -1,   125,    -1,    11,    32,    60,    -1,
      62,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    44,
      -1,    -1,    -1,    48,    -1,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    -1,    61,    -1,    63,    -1,
      65,    66,    67,    68,    69,     1,    -1,     3,     4,    74,
      -1,     7,     8,     9,    10,    80,    -1,    -1,    83,    -1,
      -1,    -1,    -1,    88,    89,    90,    -1,    -1,    93,    94,
      75,    76,    77,    98,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    44,    45,
      46,    47,   117,    -1,    -1,   120,    -1,   122,   123,    -1,
     125,    -1,    -1,    -1,    60,    61,    62,    63,    -1,    65,
      66,    67,    68,    69,     1,    -1,     3,     4,    74,    -1,
      -1,   126,     9,    10,    80,    -1,    -1,    83,    -1,    -1,
      -1,    -1,    88,    89,    90,    -1,    -1,    93,    94,    -1,
      -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,     5,     6,
       7,     8,    -1,    -1,    -1,    -1,    -1,    44,     5,     6,
       7,     8,    -1,    -1,    -1,    -1,   122,   123,    -1,   125,
      -1,    -1,    -1,    -1,    61,    -1,    63,    -1,    65,    66,
      67,    68,    69,     1,    -1,     3,     4,    74,    45,    46,
      47,     9,    10,    80,    -1,    -1,    83,    -1,    45,    46,
      47,    88,    89,    90,    -1,    62,    93,    94,    -1,    -1,
      97,    98,    99,    -1,    -1,    -1,    -1,     5,     6,     7,
       8,    -1,    -1,    -1,    -1,    -1,    44,     5,     6,     7,
       8,    -1,    -1,    -1,   121,   122,   123,    -1,   125,    -1,
      -1,    -1,    -1,    61,    -1,    63,    -1,    65,    66,    67,
      68,    69,     1,    -1,     3,    -1,    74,    45,    46,    47,
       9,    10,    80,   120,    -1,    83,    -1,    45,    46,    47,
      88,    89,    90,   120,    62,    93,    94,    -1,    -1,    97,
      98,    99,    -1,    -1,    62,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    44,     5,     6,     7,     8,
      -1,    -1,    -1,   121,   122,   123,    -1,   125,    -1,    -1,
      -1,    -1,    61,    -1,    63,    -1,    65,    66,    67,    68,
      69,     1,    -1,     3,    -1,    74,    75,    -1,    -1,     9,
      10,    80,    -1,    -1,    83,    -1,    45,    46,    47,    88,
      89,    90,    -1,    -1,    93,    94,    -1,    -1,    97,    98,
      99,    -1,    -1,    17,    18,    19,    20,    21,    22,    -1,
      24,    25,    -1,    -1,    44,    29,    30,    -1,    -1,    -1,
      34,    -1,    -1,   122,   123,    -1,   125,    -1,    -1,    -1,
      -1,    61,    -1,    63,    48,    65,    66,    67,    68,    69,
      -1,    -1,     1,    -1,    74,     4,     5,     6,     7,     8,
      80,    -1,    -1,    83,    -1,    -1,    -1,    -1,    88,    89,
      90,    -1,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,
      -1,    -1,    -1,     1,    -1,    -1,     4,     5,     6,     7,
       8,    -1,    -1,    -1,    -1,    -1,    45,    46,    47,    -1,
      -1,    -1,   122,   123,    -1,   125,     5,     6,     7,     8,
      59,    60,     4,    62,    -1,     7,     8,     4,     5,     6,
       7,     8,    -1,   127,     3,    -1,    75,    45,    46,    47,
       9,    10,    -1,    -1,    -1,    -1,     4,     5,     6,     7,
       8,    59,    60,    -1,    62,    -1,    45,    46,    47,    98,
      99,    -1,    -1,    45,    46,    47,    -1,    75,    45,    46,
      47,    -1,    -1,    62,    -1,    44,    -1,    -1,    60,    -1,
      62,   120,    -1,    60,    -1,   124,   125,    45,    46,    47,
      98,    99,    61,    -1,    63,    -1,    65,    66,    67,    68,
      69,     3,    60,    -1,    62,    74,    -1,     9,    10,    -1,
      -1,    80,   120,    -1,    83,    -1,   124,   125,    -1,    88,
      89,    90,    -1,    -1,    93,    94,    -1,     4,    -1,    98,
       7,     8,    -1,     4,     5,     6,     7,     8,    -1,    -1,
      -1,    -1,    44,   120,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   122,   123,    -1,    -1,   126,    -1,    61,
      -1,    63,   120,    65,    66,    67,    68,    69,    45,    46,
      47,    -1,    74,    -1,    45,    46,    47,    -1,    80,    -1,
      -1,    83,    -1,    60,    -1,    62,    88,    89,    90,    60,
      -1,    93,    94,    -1,    -1,    -1,    98,     3,     4,     5,
       6,     7,     8,     9,    10,    -1,    12,    13,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    22,    -1,    -1,    -1,
     122,   123,    -1,    -1,   126,    -1,    32,    -1,    -1,    -1,
       4,     5,     6,     7,     8,    -1,    -1,    -1,    44,    45,
      46,    47,    -1,    -1,    -1,    -1,    -1,    -1,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    63,    -1,    65,
      66,    67,    68,    69,    -1,    -1,    -1,    -1,    74,    -1,
      -1,    45,    46,    47,    80,    -1,    -1,    83,    -1,    -1,
      -1,    -1,    88,    89,    90,    -1,    60,    93,    94,     3,
       4,    -1,    98,    -1,    -1,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    22,    -1,
      -1,   117,    -1,    -1,   120,    -1,   122,   123,    32,   125,
      -1,     4,     5,     6,     7,     8,    -1,    -1,    -1,    -1,
      44,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      54,    55,    56,    57,    58,    59,   120,    61,    -1,    63,
      -1,    65,    66,    67,    68,    69,    -1,    -1,    -1,    -1,
      74,     3,    45,    46,    47,    -1,    80,     9,    10,    83,
      12,    13,    -1,    -1,    88,    89,    90,    60,    -1,    93,
      94,    -1,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,
      32,    -1,    -1,     4,     5,     6,     7,     8,    -1,    -1,
      -1,    -1,    44,   117,    -1,    -1,   120,    -1,   122,   123,
      -1,   125,    -1,    55,    56,    57,    58,    59,    -1,    61,
      -1,    63,    -1,    65,    66,    67,    68,    69,    -1,    -1,
      -1,    -1,    74,     3,    45,    46,    47,    -1,    80,     9,
      10,    83,    12,    13,    -1,    -1,    88,    89,    90,    60,
      -1,    93,    94,    -1,    -1,    -1,    98,    -1,    -1,    -1,
      -1,    -1,    32,    -1,    -1,     4,     5,     6,     7,     8,
      -1,    -1,    -1,    -1,    44,   117,    -1,    -1,   120,    -1,
     122,   123,    -1,   125,    -1,    55,    56,    57,    58,    59,
      -1,    61,    -1,    63,    -1,    65,    66,    67,    68,    69,
      -1,    -1,    -1,    -1,    74,     3,    45,    46,    47,    -1,
      80,     9,    10,    83,    12,    13,    -1,    -1,    88,    89,
      90,    60,    -1,    93,    94,    -1,    -1,    -1,    98,    -1,
      -1,    17,    -1,    19,    32,    21,    22,    -1,    24,    25,
      -1,    -1,    -1,    -1,    -1,    -1,    44,   117,    34,    35,
     120,    -1,   122,   123,    -1,   125,    -1,    55,    56,    57,
      58,    59,    48,    61,    -1,    63,    52,    65,    66,    67,
      68,    69,     3,    -1,    -1,    -1,    74,    -1,     9,    10,
      -1,    -1,    80,    -1,    -1,    83,    -1,    -1,    -1,    -1,
      88,    89,    90,    -1,    -1,    93,    94,    29,    -1,    -1,
      98,    33,    -1,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    -1,    44,    -1,    -1,    -1,    -1,    -1,   117,
      52,    -1,   120,    -1,   122,   123,    -1,   125,    -1,    -1,
      61,    -1,    63,    -1,    65,    66,    67,    68,    69,    -1,
      -1,   127,    -1,    74,     4,     5,     6,     7,     8,    80,
      -1,    -1,    83,    -1,    -1,    -1,    -1,    88,    89,    90,
      -1,    -1,    93,    94,    -1,    -1,    -1,    98,     3,     4,
       5,     6,     7,     8,     9,    10,    17,    18,    19,    20,
      21,    22,    -1,    24,    25,    45,    46,    47,    29,    30,
      -1,   122,   123,    34,   125,    -1,    -1,    -1,    -1,    -1,
      60,    -1,    62,    -1,    -1,    -1,    -1,    48,    -1,    44,
      45,    46,    47,    81,    82,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    60,    61,    62,    63,    -1,
      65,    66,    67,    68,    69,    -1,     3,     4,    -1,    74,
       7,     8,     9,    10,    -1,    80,    -1,    -1,    83,    -1,
      -1,    -1,    -1,    88,    89,    90,    -1,    -1,    93,    94,
     120,    -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,     4,
       5,     6,     7,     8,    -1,    -1,    -1,    44,    45,    46,
      47,    -1,    -1,     3,    -1,    -1,   127,   122,   123,     9,
      10,    -1,    -1,    60,    61,    62,    63,    -1,    65,    66,
      67,    68,    69,    -1,    -1,    -1,    -1,    74,    -1,    -1,
      45,    46,    47,    80,    -1,    -1,    83,    -1,    -1,    -1,
      -1,    88,    89,    90,    44,    60,    93,    94,    -1,    -1,
       3,    98,    -1,    -1,    -1,    -1,     9,    10,    -1,    -1,
      -1,    61,    -1,    63,    -1,    65,    66,    67,    68,    69,
      -1,    -1,    -1,    -1,    74,   122,   123,    -1,    -1,    -1,
      80,    -1,    -1,    83,    -1,    -1,    -1,    -1,    88,    89,
      90,    44,    -1,    93,    94,    -1,    -1,     3,    98,    -1,
      -1,    -1,    -1,     9,    10,    -1,    -1,    -1,    61,    -1,
      63,    -1,    65,    66,    67,    68,    69,    -1,    -1,    -1,
     120,    74,   122,   123,    -1,    -1,    -1,    80,    -1,    -1,
      83,    -1,    -1,    -1,    -1,    88,    89,    90,    44,    -1,
      93,    94,    -1,    -1,     3,    98,    -1,    -1,    -1,    -1,
       9,    10,    -1,    -1,    -1,    61,    -1,    63,    -1,    65,
      66,    67,    68,    69,    -1,    -1,    -1,    -1,    74,   122,
     123,    -1,    -1,    -1,    80,    -1,    -1,    83,    -1,    -1,
      -1,    -1,    88,    89,    90,    44,    -1,    93,    94,    -1,
      -1,     3,    98,    -1,    -1,    -1,    -1,     9,    10,    -1,
      -1,    -1,    61,    -1,    63,    -1,    65,    66,    67,    68,
      69,    -1,    -1,    -1,    -1,    74,   122,   123,    -1,    -1,
      -1,    80,    -1,    -1,    83,    -1,    -1,    -1,    -1,    88,
      89,    90,    44,    -1,    93,    94,    -1,    -1,    -1,    98,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,
      -1,    63,    -1,    65,    66,    67,    68,    69,    -1,    -1,
      -1,    -1,    74,   122,   123,    -1,    -1,    -1,    80,    -1,
      -1,    83,    -1,    -1,    -1,    -1,    88,    89,    90,    -1,
      -1,    93,    94,    -1,    -1,     1,    98,     3,     4,     5,
       6,     7,     8,    -1,    -1,    -1,    -1,    13,     4,     5,
       6,     7,     8,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     122,   123,    -1,    -1,    -1,    -1,    32,     4,     5,     6,
       7,     8,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    45,
      46,    47,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    45,
      46,    47,    -1,    59,    60,    -1,    62,    63,    -1,    -1,
      -1,    -1,    -1,    -1,    60,    -1,    62,    -1,    45,    46,
      47,    17,    18,    19,    20,    21,    22,    -1,    24,    25,
      11,    -1,    -1,    60,    90,    62,    -1,    -1,    34,    -1,
      -1,    -1,    98,    -1,    -1,    -1,    17,    18,    19,    20,
      21,    22,    48,    24,    25,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    34,   120,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   120,    -1,    -1,    48,     4,     5,
       6,     7,     8,    -1,    -1,    11,     4,     5,     6,     7,
       8,    -1,    -1,   120,    75,    76,    77,    78,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,     4,     5,     6,     7,     8,    -1,    -1,    45,
      46,    47,     4,     5,     6,     7,     8,    45,    46,    47,
      -1,   127,    -1,    -1,    60,    -1,    62,    -1,    -1,    -1,
      -1,    -1,    60,    -1,    62,     4,     5,     6,     7,     8,
      -1,    -1,    -1,    45,    46,    47,   127,    -1,    -1,    -1,
      -1,    -1,    -1,    45,    46,    47,    -1,    -1,    60,    -1,
      62,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    60,    -1,
      62,    -1,    -1,    -1,    -1,    -1,    45,    46,    47,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    60,    -1,    62,    75,    76,    77,    -1,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    75,    76,    77,    -1,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    75,    76,    77,   126,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      -1,   124,    75,    76,    77,    -1,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    75,    76,
      77,   124,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    -1,    -1,    75,    76,
      77,   124,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    -1,    -1,    -1,    -1,
      75,    76,    77,   120,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    -1,    75,
      76,    77,   119,    79,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    -1,    -1,    -1,
      -1,    75,    76,    77,   119,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    -1,
      75,    76,    77,   119,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    -1,    -1,
      -1,    -1,    75,    76,    77,   119,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      -1,    75,    76,    77,   119,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    -1,
      -1,    -1,    -1,    75,    76,    77,   119,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    -1,    75,    76,    77,   119,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   119,    -1,    -1,
      62,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    75,    76,    77,   119,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    29,    -1,    -1,    -1,    33,    -1,    35,    -1,    37,
      38,    39,    40,    41,    42,    43,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    52,    75,    76,    77,    78,    79,
      80,    81,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    75,    76,    77,    -1,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    77,    -1,    79,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,   129,   130,   131,     0,   132,     1,     4,     5,     6,
       7,     8,    13,    32,    45,    46,    47,    59,    60,    62,
      63,   120,   133,   134,   135,   136,   151,   167,   170,   171,
     172,   173,   174,   175,   176,   177,   178,   179,   180,   181,
     182,   183,   184,   185,   186,   187,   193,   195,   196,   197,
     198,   199,   208,   209,   213,   236,   237,   238,   239,   244,
     319,   382,   408,   133,   120,   121,    14,    15,    16,   320,
      43,   208,   208,   208,    98,    98,    98,     3,    90,    98,
     201,   205,   235,     8,   195,   196,   208,   213,     8,   195,
     196,   213,     8,   195,   196,   208,   213,     8,   195,   196,
     213,     8,   197,   198,   208,   213,     8,   197,   198,   213,
       8,   197,   198,   208,   213,     8,   197,   198,   213,     8,
     195,   196,   208,   213,     8,   195,   196,   213,     8,   195,
     196,   208,   213,     8,   195,   196,   213,     8,   197,   198,
     208,   213,     8,   197,   198,   213,     8,   197,   198,   208,
     213,     8,   197,   198,   213,   167,   167,   120,   209,     3,
       4,   125,   143,   125,   143,   125,   143,   133,     3,    98,
       3,     9,    10,    44,    61,    65,    66,    67,    68,    69,
      74,    80,    83,    88,    89,    90,    93,    94,    98,   122,
     123,   144,   145,   147,   148,   149,   150,   152,   153,   159,
     283,   408,    98,   145,   170,   171,   172,   173,   174,   175,
     176,   177,   192,   256,   170,   171,   172,   173,   191,   194,
     207,   208,   120,   124,     1,    59,    98,    99,   141,   202,
     264,     4,    90,    98,   200,   203,   230,   231,   235,   201,
     235,   247,   248,   125,   247,   125,   243,   125,   127,     3,
     384,   152,   152,    98,    98,    98,   143,   152,     1,   125,
     145,   256,   152,   119,   124,    98,   148,    98,   148,    75,
      76,    77,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    97,    98,
      99,   100,     1,   121,   272,   281,   152,     7,     8,   143,
     210,   211,   212,   213,   119,   257,   119,   235,   235,   168,
     207,    98,   207,   403,     6,   191,   194,     1,   161,   162,
     163,   164,   271,   290,   207,   194,   207,   120,   124,     1,
     137,   202,    98,   264,   120,     1,   139,   121,     1,   120,
     170,   171,   172,   173,   174,   175,   176,   177,   190,   191,
     249,   408,   240,   121,   241,     1,   143,   254,   255,   242,
     119,   124,   153,   153,   256,   119,   119,   119,   120,   153,
     256,   256,   153,   153,   156,   158,   155,   154,   153,   153,
     153,   153,   153,   153,   153,   153,   153,   153,   153,   153,
     143,   146,   147,   145,   143,   119,    64,   276,   277,   278,
     119,   119,   124,    98,    90,    98,   258,   260,   261,   262,
     263,   264,   119,   205,   235,    10,   404,   194,     6,    90,
     126,   145,   120,   142,   271,   163,   291,    75,   231,   231,
     168,   161,   207,   403,   161,   207,   167,   167,   120,   249,
     247,   207,   247,    75,   124,   246,   254,   127,     3,   124,
     124,   124,   125,   152,   119,   119,   145,    78,   153,   153,
     119,   126,   143,   407,     1,   166,   265,   266,   267,   268,
     269,   270,   271,   282,   290,   294,   295,   278,   119,   211,
       3,   146,   194,   207,   393,    98,   264,   119,     1,     3,
      11,   170,   171,   174,   175,   178,   179,   182,   183,   188,
     189,   395,   398,   399,   401,   405,   406,   145,   145,   126,
     126,   290,   165,   188,   189,   206,   119,   203,   230,   138,
      75,   140,   250,   252,   290,   251,   253,   290,   121,   121,
     153,   255,   121,   246,   256,   153,   256,   160,    78,   153,
     120,   124,   166,   294,   295,   166,   294,   295,   290,   294,
     295,   166,   294,   295,   271,   121,   291,   119,   124,   119,
     261,   262,   260,   394,   207,   393,   119,   167,   402,   402,
     119,   120,   124,   119,   124,   126,   126,   291,   120,   167,
     120,   167,     1,   125,   153,   214,   290,   204,   290,   124,
     291,   124,   291,   207,   207,   207,   121,   119,   124,   119,
       1,     3,    97,    99,   125,   143,   153,   216,   217,   218,
     220,   222,   223,   157,   143,   291,   273,     4,    12,    13,
      22,    32,    54,    55,    56,    57,    58,    59,   117,   120,
     125,   143,   145,   169,   186,   187,   193,   274,   280,   284,
     306,   307,   317,   318,   321,   324,   326,   329,   336,   340,
     342,   353,   355,   358,   360,   363,   365,   368,   370,   371,
     373,   375,   376,   377,   378,   379,   381,   382,   385,   386,
     408,   147,   119,   395,     4,    90,    98,   232,   233,   234,
     235,   259,   260,   261,    90,    98,   235,   259,   396,    11,
     170,   171,   172,   173,   174,   175,   176,   177,   178,   179,
     180,   181,   182,   183,   184,   185,   186,   187,   400,     3,
       1,   279,   284,   200,   201,   215,   291,   214,   291,   168,
      78,   230,   168,    78,   235,   207,   153,   143,   153,   221,
      78,   121,   124,   245,    75,   223,   220,   153,    10,    14,
      15,    16,   322,    78,    29,    33,    35,    37,    38,    39,
      40,    41,    42,    52,   153,   120,   120,   120,   145,    90,
     143,     8,   387,   114,   115,   290,   120,   167,   167,   120,
      48,    50,    51,    52,    53,   285,   286,   288,   296,   281,
     325,   330,   341,   354,   359,   364,   369,   372,   153,   380,
     169,   119,   194,   207,   207,    98,   264,    98,   264,   207,
     208,   194,   207,   207,   207,   167,   167,   284,   120,   120,
     216,   279,   279,   252,   290,   153,    78,   207,   253,   153,
      78,   207,   119,    11,   126,   216,   219,   218,   220,   127,
     127,   127,    17,    19,    21,    22,    24,    25,    34,    35,
      48,    52,   127,   327,   328,    17,    19,    20,    24,    31,
     127,   343,   344,    17,    18,    19,    31,   127,   356,   357,
     127,    98,   127,   127,   127,    98,   127,    17,    19,    20,
      24,    29,    30,    31,   127,   337,   338,    11,    78,   120,
     145,   120,    98,   127,   127,   291,   200,   224,   230,   201,
     227,   235,   287,   298,   289,   300,    98,    49,     1,   274,
     293,     1,    98,   275,   323,   385,    52,   331,   125,   345,
     323,   331,   345,   323,   323,   120,   323,   233,   234,   234,
     403,   403,   397,   232,   235,   259,   235,   259,   121,   291,
     207,   153,   207,   153,   153,   121,   220,    98,    98,    98,
      98,    98,    98,    98,    17,    18,    19,    20,    21,    22,
      24,    25,    34,    48,   127,   366,   367,    98,    17,    18,
      19,    20,    21,    22,    24,    25,    29,    30,    34,    48,
     127,   361,   362,   127,   328,    98,    98,    98,    98,   127,
     344,    98,    98,    98,   127,   357,     3,   374,   384,    98,
      98,    98,    98,    98,   127,   338,   153,   120,   145,   308,
     309,    78,   120,   225,   120,   228,    98,    98,   293,    98,
     145,     1,   297,   292,   294,   295,   145,   332,   346,   119,
     395,   207,   207,   207,   207,   207,   126,   384,   384,   384,
      21,    23,    79,    80,    81,    82,    83,    88,    89,    90,
     383,   384,   153,    98,    98,    98,    98,    98,    98,    98,
      98,    98,    98,   127,   367,   153,    98,    98,    98,    98,
      98,    98,    98,    98,    98,    98,    98,   127,   362,   384,
     384,   384,   383,   384,   384,   384,   119,   119,   384,   384,
     384,   383,     6,    26,    27,    28,   339,    78,    78,   119,
     125,   310,   310,   207,   161,   161,   145,   145,    50,   145,
     169,   305,   388,   119,   293,   275,   292,   119,    98,    32,
     323,   347,   348,   349,   350,   352,   119,   119,   119,   119,
     119,    78,   119,   119,   384,   384,   384,   384,   384,    21,
      23,   383,   384,   153,   153,   119,   384,   384,   384,   384,
     384,    21,    23,   383,   384,   339,   153,   153,   119,   119,
     119,    78,   119,   119,   119,   127,   127,   119,   119,   119,
      78,   119,   124,    10,    99,   389,   390,   391,   120,   117,
     311,   312,   313,   314,   323,   226,   229,   119,   119,   301,
     120,   304,   120,   305,    36,   121,    32,   349,   350,   351,
     384,   119,   119,   119,   119,   119,   119,   119,    78,   119,
     119,   119,   119,   119,   119,   119,   119,   119,   119,    78,
     119,   119,   124,   119,   119,   384,   384,   153,    98,   143,
      78,   119,   124,   116,   118,   121,   117,   313,   314,   290,
     290,   299,   388,   293,   333,   127,   323,   119,   384,   384,
     153,   119,   119,   119,   145,   126,   389,   120,   391,   127,
     127,   291,   291,   293,   120,   388,   119,   119,   119,   119,
      10,    78,   119,   315,   316,   284,   284,   302,   120,    98,
      10,   392,   120,   323,   323,   388,   334,   145,   119,   124,
     119,   388,   119,   120,    10,   303,   119,   293,   335,   293
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
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
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
    while (YYID (0))
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
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

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
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
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
      YYSIZE_T yyn = 0;
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

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
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
      int yychecklim = YYLAST - yyn + 1;
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
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
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
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
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
  YYUSE (yyvaluep);

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
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
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
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

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
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

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
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;


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
	yytype_int16 *yyss1 = yyss;
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

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

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

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

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
#line 384 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids an empty source file");
		  finish_file ();
		;}
    break;

  case 3:
#line 389 "c-parse.y"
    {
		  /* In case there were missing closebraces,
		     get us back to the global binding level.  */
		  while (! global_bindings_p ())
		    poplevel (0, 0, 0);
		  /* __FUNCTION__ is defined at file scope ("").  This
		     call may not be necessary as my tests indicate it
		     still works without it.  */
		  finish_fname_decls ();
                  finish_file ();
		;}
    break;

  case 4:
#line 407 "c-parse.y"
    {(yyval.ttype) = NULL_TREE; ;}
    break;

  case 6:
#line 408 "c-parse.y"
    {(yyval.ttype) = NULL_TREE; ggc_collect(); ;}
    break;

  case 8:
#line 413 "c-parse.y"
    { parsing_iso_function_signature = false; ;}
    break;

  case 11:
#line 420 "c-parse.y"
    { STRIP_NOPS ((yyvsp[(3) - (5)].ttype));
		  if ((TREE_CODE ((yyvsp[(3) - (5)].ttype)) == ADDR_EXPR
		       && TREE_CODE (TREE_OPERAND ((yyvsp[(3) - (5)].ttype), 0)) == STRING_CST)
		      || TREE_CODE ((yyvsp[(3) - (5)].ttype)) == STRING_CST)
		    assemble_asm ((yyvsp[(3) - (5)].ttype));
		  else
		    error ("argument of `asm' is not a constant string"); ;}
    break;

  case 12:
#line 428 "c-parse.y"
    { RESTORE_EXT_FLAGS ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 14:
#line 431 "c-parse.y"
    {;}
    break;

  case 15:
#line 436 "c-parse.y"
    { if (pedantic)
		    error ("ISO C forbids data definition with no type or storage class");
		  else
		    warning ("data definition has no type or storage class");

		  POP_DECLSPEC_STACK; ;}
    break;

  case 16:
#line 443 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 17:
#line 445 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 18:
#line 447 "c-parse.y"
    { shadow_tag ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 21:
#line 451 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C does not allow extra `;' outside of a function"); ;}
    break;

  case 22:
#line 457 "c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[(3) - (3)].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 23:
#line 462 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 24:
#line 464 "c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[(7) - (9)].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[(8) - (9)].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 25:
#line 469 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 26:
#line 471 "c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[(3) - (3)].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 27:
#line 476 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 28:
#line 478 "c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[(7) - (9)].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[(8) - (9)].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 29:
#line 483 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 30:
#line 485 "c-parse.y"
    { if (! start_function (NULL_TREE, (yyvsp[(2) - (2)].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 31:
#line 490 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 32:
#line 492 "c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[(6) - (8)].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[(7) - (8)].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 33:
#line 497 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 36:
#line 506 "c-parse.y"
    { (yyval.code) = ADDR_EXPR; ;}
    break;

  case 37:
#line 508 "c-parse.y"
    { (yyval.code) = NEGATE_EXPR; ;}
    break;

  case 38:
#line 510 "c-parse.y"
    { (yyval.code) = CONVERT_EXPR;
  if (warn_traditional && !in_system_header)
    warning ("traditional C rejects the unary plus operator");
		;}
    break;

  case 39:
#line 515 "c-parse.y"
    { (yyval.code) = PREINCREMENT_EXPR; ;}
    break;

  case 40:
#line 517 "c-parse.y"
    { (yyval.code) = PREDECREMENT_EXPR; ;}
    break;

  case 41:
#line 519 "c-parse.y"
    { (yyval.code) = BIT_NOT_EXPR; ;}
    break;

  case 42:
#line 521 "c-parse.y"
    { (yyval.code) = TRUTH_NOT_EXPR; ;}
    break;

  case 43:
#line 525 "c-parse.y"
    { (yyval.ttype) = build_compound_expr ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 44:
#line 530 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 46:
#line 536 "c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 47:
#line 538 "c-parse.y"
    { chainon ((yyvsp[(1) - (3)].ttype), build_tree_list (NULL_TREE, (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 49:
#line 544 "c-parse.y"
    { (yyval.ttype) = build_indirect_ref ((yyvsp[(2) - (2)].ttype), "unary *"); ;}
    break;

  case 50:
#line 547 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
		  RESTORE_EXT_FLAGS ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 51:
#line 550 "c-parse.y"
    { (yyval.ttype) = build_unary_op ((yyvsp[(1) - (2)].code), (yyvsp[(2) - (2)].ttype), 0);
		  overflow_warning ((yyval.ttype)); ;}
    break;

  case 52:
#line 554 "c-parse.y"
    { (yyval.ttype) = finish_label_address_expr ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 53:
#line 556 "c-parse.y"
    { skip_evaluation--;
		  if (TREE_CODE ((yyvsp[(2) - (2)].ttype)) == COMPONENT_REF
		      && DECL_C_BIT_FIELD (TREE_OPERAND ((yyvsp[(2) - (2)].ttype), 1)))
		    error ("`sizeof' applied to a bit-field");
		  (yyval.ttype) = c_sizeof (TREE_TYPE ((yyvsp[(2) - (2)].ttype))); ;}
    break;

  case 54:
#line 562 "c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_sizeof (groktypename ((yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 55:
#line 565 "c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_alignof_expr ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 56:
#line 568 "c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_alignof (groktypename ((yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 57:
#line 571 "c-parse.y"
    { (yyval.ttype) = build_unary_op (REALPART_EXPR, (yyvsp[(2) - (2)].ttype), 0); ;}
    break;

  case 58:
#line 573 "c-parse.y"
    { (yyval.ttype) = build_unary_op (IMAGPART_EXPR, (yyvsp[(2) - (2)].ttype), 0); ;}
    break;

  case 59:
#line 577 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 60:
#line 581 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 61:
#line 585 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 63:
#line 591 "c-parse.y"
    { (yyval.ttype) = c_cast_expr ((yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 65:
#line 597 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 66:
#line 599 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 67:
#line 601 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 68:
#line 603 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 69:
#line 605 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 70:
#line 607 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 71:
#line 609 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 72:
#line 611 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 73:
#line 613 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 74:
#line 615 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 75:
#line 617 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 76:
#line 619 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 77:
#line 621 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[(1) - (2)].ttype)));
		  skip_evaluation += (yyvsp[(1) - (2)].ttype) == boolean_false_node; ;}
    break;

  case 78:
#line 625 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (4)].ttype) == boolean_false_node;
		  (yyval.ttype) = parser_build_binary_op (TRUTH_ANDIF_EXPR, (yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 79:
#line 628 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[(1) - (2)].ttype)));
		  skip_evaluation += (yyvsp[(1) - (2)].ttype) == boolean_true_node; ;}
    break;

  case 80:
#line 632 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (4)].ttype) == boolean_true_node;
		  (yyval.ttype) = parser_build_binary_op (TRUTH_ORIF_EXPR, (yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 81:
#line 635 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[(1) - (2)].ttype)));
		  skip_evaluation += (yyvsp[(1) - (2)].ttype) == boolean_false_node; ;}
    break;

  case 82:
#line 639 "c-parse.y"
    { skip_evaluation += (((yyvsp[(1) - (5)].ttype) == boolean_true_node)
				      - ((yyvsp[(1) - (5)].ttype) == boolean_false_node)); ;}
    break;

  case 83:
#line 642 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (7)].ttype) == boolean_true_node;
		  (yyval.ttype) = build_conditional_expr ((yyvsp[(1) - (7)].ttype), (yyvsp[(4) - (7)].ttype), (yyvsp[(7) - (7)].ttype)); ;}
    break;

  case 84:
#line 645 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids omitting the middle term of a ?: expression");
		  /* Make sure first operand is calculated only once.  */
		  (yyvsp[(2) - (2)].ttype) = save_expr ((yyvsp[(1) - (2)].ttype));
		  (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[(2) - (2)].ttype)));
		  skip_evaluation += (yyvsp[(1) - (2)].ttype) == boolean_true_node; ;}
    break;

  case 85:
#line 653 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (5)].ttype) == boolean_true_node;
		  (yyval.ttype) = build_conditional_expr ((yyvsp[(1) - (5)].ttype), (yyvsp[(2) - (5)].ttype), (yyvsp[(5) - (5)].ttype)); ;}
    break;

  case 86:
#line 656 "c-parse.y"
    { char class;
		  (yyval.ttype) = build_modify_expr ((yyvsp[(1) - (3)].ttype), NOP_EXPR, (yyvsp[(3) - (3)].ttype));
		  class = TREE_CODE_CLASS (TREE_CODE ((yyval.ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), MODIFY_EXPR);
		;}
    break;

  case 87:
#line 663 "c-parse.y"
    { char class;
		  (yyval.ttype) = build_modify_expr ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].code), (yyvsp[(3) - (3)].ttype));
		  /* This inhibits warnings in
		     c_common_truthvalue_conversion.  */
		  class = TREE_CODE_CLASS (TREE_CODE ((yyval.ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), ERROR_MARK);
		;}
    break;

  case 88:
#line 675 "c-parse.y"
    {
		  if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.ttype) = build_external_ref ((yyvsp[(1) - (1)].ttype), yychar == '(');
		;}
    break;

  case 90:
#line 682 "c-parse.y"
    { (yyval.ttype) = fix_string_type ((yyval.ttype)); ;}
    break;

  case 91:
#line 684 "c-parse.y"
    { (yyval.ttype) = fname_decl (C_RID_CODE ((yyval.ttype)), (yyval.ttype)); ;}
    break;

  case 92:
#line 686 "c-parse.y"
    { start_init (NULL_TREE, NULL, 0);
		  (yyvsp[(2) - (4)].ttype) = groktypename ((yyvsp[(2) - (4)].ttype));
		  really_start_incremental_init ((yyvsp[(2) - (4)].ttype)); ;}
    break;

  case 93:
#line 690 "c-parse.y"
    { tree constructor = pop_init_level (0);
		  tree type = (yyvsp[(2) - (7)].ttype);
		  finish_init ();

		  if (pedantic && ! flag_isoc99)
		    pedwarn ("ISO C89 forbids compound literals");
		  (yyval.ttype) = build_compound_literal (type, constructor);
		;}
    break;

  case 94:
#line 699 "c-parse.y"
    { char class = TREE_CODE_CLASS (TREE_CODE ((yyvsp[(2) - (3)].ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyvsp[(2) - (3)].ttype), ERROR_MARK);
		  (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 95:
#line 704 "c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 96:
#line 706 "c-parse.y"
    { tree saved_last_tree;

		   if (pedantic)
		     pedwarn ("ISO C forbids braced-groups within expressions");
		  pop_label_level ();

		  saved_last_tree = COMPOUND_BODY ((yyvsp[(1) - (3)].ttype));
		  RECHAIN_STMTS ((yyvsp[(1) - (3)].ttype), COMPOUND_BODY ((yyvsp[(1) - (3)].ttype)));
		  last_tree = saved_last_tree;
		  TREE_CHAIN (last_tree) = NULL_TREE;
		  if (!last_expr_type)
		    last_expr_type = void_type_node;
		  (yyval.ttype) = build1 (STMT_EXPR, last_expr_type, (yyvsp[(1) - (3)].ttype));
		  TREE_SIDE_EFFECTS ((yyval.ttype)) = 1;
		;}
    break;

  case 97:
#line 722 "c-parse.y"
    {
		  pop_label_level ();
		  last_tree = COMPOUND_BODY ((yyvsp[(1) - (3)].ttype));
		  TREE_CHAIN (last_tree) = NULL_TREE;
		  (yyval.ttype) = error_mark_node;
		;}
    break;

  case 98:
#line 729 "c-parse.y"
    { (yyval.ttype) = build_function_call ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 99:
#line 731 "c-parse.y"
    { (yyval.ttype) = build_va_arg ((yyvsp[(3) - (6)].ttype), groktypename ((yyvsp[(5) - (6)].ttype))); ;}
    break;

  case 100:
#line 734 "c-parse.y"
    {
                  tree c;

                  c = fold ((yyvsp[(3) - (8)].ttype));
                  STRIP_NOPS (c);
                  if (TREE_CODE (c) != INTEGER_CST)
                    error ("first argument to __builtin_choose_expr not a constant");
                  (yyval.ttype) = integer_zerop (c) ? (yyvsp[(7) - (8)].ttype) : (yyvsp[(5) - (8)].ttype);
		;}
    break;

  case 101:
#line 744 "c-parse.y"
    {
		  tree e1, e2;

		  e1 = TYPE_MAIN_VARIANT (groktypename ((yyvsp[(3) - (6)].ttype)));
		  e2 = TYPE_MAIN_VARIANT (groktypename ((yyvsp[(5) - (6)].ttype)));

		  (yyval.ttype) = comptypes (e1, e2)
		    ? build_int_2 (1, 0) : build_int_2 (0, 0);
		;}
    break;

  case 102:
#line 754 "c-parse.y"
    { (yyval.ttype) = build_array_ref ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 103:
#line 756 "c-parse.y"
    {
		      (yyval.ttype) = build_component_ref ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
		;}
    break;

  case 104:
#line 760 "c-parse.y"
    {
                  tree expr = build_indirect_ref ((yyvsp[(1) - (3)].ttype), "->");

			(yyval.ttype) = build_component_ref (expr, (yyvsp[(3) - (3)].ttype));
		;}
    break;

  case 105:
#line 766 "c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTINCREMENT_EXPR, (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 106:
#line 768 "c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTDECREMENT_EXPR, (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 107:
#line 774 "c-parse.y"
    {
	  parsing_iso_function_signature = false; /* Reset after decls.  */
	;}
    break;

  case 108:
#line 781 "c-parse.y"
    {
	  if (warn_traditional && !in_system_header
	      && parsing_iso_function_signature)
	    warning ("traditional C rejects ISO C style function definitions");
	  parsing_iso_function_signature = false; /* Reset after warning.  */
	;}
    break;

  case 110:
#line 795 "c-parse.y"
    { ;}
    break;

  case 115:
#line 811 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 116:
#line 813 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 117:
#line 815 "c-parse.y"
    { shadow_tag_warned ((yyvsp[(1) - (2)].ttype), 1);
		  pedwarn ("empty declaration"); ;}
    break;

  case 118:
#line 818 "c-parse.y"
    { pedwarn ("empty declaration"); ;}
    break;

  case 119:
#line 827 "c-parse.y"
    { ;}
    break;

  case 120:
#line 835 "c-parse.y"
    { pending_xref_error ();
		  PUSH_DECLSPEC_STACK;
		  split_specs_attrs ((yyvsp[(0) - (0)].ttype),
				     &current_declspecs, &prefix_attributes);
		  all_prefix_attributes = prefix_attributes; ;}
    break;

  case 121:
#line 846 "c-parse.y"
    { all_prefix_attributes = chainon ((yyvsp[(1) - (1)].ttype), prefix_attributes); ;}
    break;

  case 122:
#line 851 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 123:
#line 853 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 124:
#line 855 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 125:
#line 857 "c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 126:
#line 859 "c-parse.y"
    { shadow_tag ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 127:
#line 861 "c-parse.y"
    { RESTORE_EXT_FLAGS ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 128:
#line 918 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(1) - (1)].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 129:
#line 921 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 130:
#line 924 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 131:
#line 930 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 132:
#line 936 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 133:
#line 939 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 134:
#line 945 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(1) - (1)].ttype), NULL_TREE, NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 0; ;}
    break;

  case 135:
#line 948 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 136:
#line 954 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(1) - (1)].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 137:
#line 957 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 138:
#line 960 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 139:
#line 963 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 140:
#line 966 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 141:
#line 969 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 142:
#line 972 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 143:
#line 978 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(1) - (1)].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 144:
#line 981 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 145:
#line 984 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 146:
#line 987 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 147:
#line 990 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 148:
#line 993 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 149:
#line 999 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 150:
#line 1002 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 151:
#line 1005 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 152:
#line 1008 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 153:
#line 1011 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 154:
#line 1014 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 155:
#line 1020 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 156:
#line 1023 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 157:
#line 1026 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 158:
#line 1029 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 159:
#line 1032 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 160:
#line 1038 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(1) - (1)].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 0; ;}
    break;

  case 161:
#line 1041 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 162:
#line 1044 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 163:
#line 1047 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 164:
#line 1053 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 165:
#line 1059 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 166:
#line 1065 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 167:
#line 1074 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 168:
#line 1080 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 169:
#line 1083 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 170:
#line 1086 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 171:
#line 1092 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 172:
#line 1098 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 173:
#line 1104 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 174:
#line 1113 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 175:
#line 1119 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 176:
#line 1122 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 177:
#line 1125 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 178:
#line 1128 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 179:
#line 1131 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 180:
#line 1134 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 181:
#line 1137 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 182:
#line 1143 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 183:
#line 1149 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 184:
#line 1155 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 185:
#line 1164 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 186:
#line 1167 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 187:
#line 1170 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 188:
#line 1173 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 189:
#line 1176 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 190:
#line 1182 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 191:
#line 1185 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 192:
#line 1188 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 193:
#line 1191 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 194:
#line 1194 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 195:
#line 1197 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 196:
#line 1200 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 197:
#line 1206 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 198:
#line 1212 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 199:
#line 1218 "c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[(1) - (2)].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[(2) - (2)].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 200:
#line 1227 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), NULL_TREE, (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 201:
#line 1230 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 202:
#line 1233 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 203:
#line 1236 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 204:
#line 1239 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 261:
#line 1327 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 262:
#line 1329 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 266:
#line 1364 "c-parse.y"
    { OBJC_NEED_RAW_IDENTIFIER (1);	;}
    break;

  case 269:
#line 1374 "c-parse.y"
    { /* For a typedef name, record the meaning, not the name.
		     In case of `foo foo, bar;'.  */
		  (yyval.ttype) = lookup_name ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 270:
#line 1378 "c-parse.y"
    { skip_evaluation--; (yyval.ttype) = TREE_TYPE ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 271:
#line 1380 "c-parse.y"
    { skip_evaluation--; (yyval.ttype) = groktypename ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 276:
#line 1397 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 277:
#line 1399 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 278:
#line 1404 "c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[(1) - (4)].ttype), current_declspecs, 1,
					  chainon ((yyvsp[(3) - (4)].ttype), all_prefix_attributes));
		  start_init ((yyval.ttype), (yyvsp[(2) - (4)].ttype), global_bindings_p ()); ;}
    break;

  case 279:
#line 1409 "c-parse.y"
    { finish_init ();
		  finish_decl ((yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype), (yyvsp[(2) - (6)].ttype));
		  if (In_MP_Region && Is_shared_mp_var ((yyvsp[(5) - (6)].ttype)))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, (yyvsp[(5) - (6)].ttype)));
		;}
    break;

  case 280:
#line 1415 "c-parse.y"
    { tree d = start_decl ((yyvsp[(1) - (3)].ttype), current_declspecs, 0,
				       chainon ((yyvsp[(3) - (3)].ttype), all_prefix_attributes));
		  finish_decl (d, NULL_TREE, (yyvsp[(2) - (3)].ttype));
		  if (In_MP_Region && Is_shared_mp_var (d))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, d));
                ;}
    break;

  case 281:
#line 1425 "c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[(1) - (4)].ttype), current_declspecs, 1,
					  chainon ((yyvsp[(3) - (4)].ttype), all_prefix_attributes));
		  start_init ((yyval.ttype), (yyvsp[(2) - (4)].ttype), global_bindings_p ()); ;}
    break;

  case 282:
#line 1430 "c-parse.y"
    { finish_init ();
		  finish_decl ((yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype), (yyvsp[(2) - (6)].ttype));
		  if (In_MP_Region && Is_shared_mp_var ((yyvsp[(5) - (6)].ttype)))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, (yyvsp[(5) - (6)].ttype)));
		;}
    break;

  case 283:
#line 1436 "c-parse.y"
    { tree d = start_decl ((yyvsp[(1) - (3)].ttype), current_declspecs, 0,
				       chainon ((yyvsp[(3) - (3)].ttype), all_prefix_attributes));
		  finish_decl (d, NULL_TREE, (yyvsp[(2) - (3)].ttype));
		  if (In_MP_Region && Is_shared_mp_var (d))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, d));
		;}
    break;

  case 284:
#line 1447 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 285:
#line 1449 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 286:
#line 1454 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 287:
#line 1456 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 288:
#line 1461 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 289:
#line 1466 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 290:
#line 1468 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 291:
#line 1473 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 292:
#line 1475 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (1)].ttype), NULL_TREE); ;}
    break;

  case 293:
#line 1477 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), build_tree_list (NULL_TREE, (yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 294:
#line 1479 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (6)].ttype), tree_cons (NULL_TREE, (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype))); ;}
    break;

  case 295:
#line 1481 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 303:
#line 1504 "c-parse.y"
    { really_start_incremental_init (NULL_TREE); ;}
    break;

  case 304:
#line 1506 "c-parse.y"
    { (yyval.ttype) = pop_init_level (0); ;}
    break;

  case 305:
#line 1508 "c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 306:
#line 1514 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids empty initializer braces"); ;}
    break;

  case 310:
#line 1528 "c-parse.y"
    { if (pedantic && ! flag_isoc99)
		    pedwarn ("ISO C89 forbids specifying subobject to initialize"); ;}
    break;

  case 311:
#line 1531 "c-parse.y"
    { if (pedantic)
		    pedwarn ("obsolete use of designated initializer without `='"); ;}
    break;

  case 312:
#line 1534 "c-parse.y"
    { set_init_label ((yyvsp[(1) - (2)].ttype));
		  if (pedantic)
		    pedwarn ("obsolete use of designated initializer with `:'"); ;}
    break;

  case 313:
#line 1538 "c-parse.y"
    {;}
    break;

  case 315:
#line 1544 "c-parse.y"
    { push_init_level (0); ;}
    break;

  case 316:
#line 1546 "c-parse.y"
    { process_init_element (pop_init_level (0)); ;}
    break;

  case 317:
#line 1548 "c-parse.y"
    { process_init_element ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 321:
#line 1559 "c-parse.y"
    { set_init_label ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 322:
#line 1561 "c-parse.y"
    { set_init_index ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype));
		  if (pedantic)
		    pedwarn ("ISO C forbids specifying range of elements to initialize"); ;}
    break;

  case 323:
#line 1565 "c-parse.y"
    { set_init_index ((yyvsp[(2) - (3)].ttype), NULL_TREE); ;}
    break;

  case 324:
#line 1570 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids nested functions");

		  push_function_context ();
		  if (! start_function (current_declspecs, (yyvsp[(1) - (1)].ttype),
					all_prefix_attributes))
		    {
		      pop_function_context ();
		      YYERROR1;
		    }
		  parsing_iso_function_signature = false; /* Don't warn about nested functions.  */
		;}
    break;

  case 325:
#line 1583 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 326:
#line 1591 "c-parse.y"
    { tree decl = current_function_decl;
		  DECL_SOURCE_FILE (decl) = (yyvsp[(5) - (7)].filename);
		  DECL_SOURCE_LINE (decl) = (yyvsp[(6) - (7)].lineno);
		  finish_function (1, 1);
		  pop_function_context ();
		  add_decl_stmt (decl); ;}
    break;

  case 327:
#line 1601 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids nested functions");

		  push_function_context ();
		  if (! start_function (current_declspecs, (yyvsp[(1) - (1)].ttype),
					all_prefix_attributes))
		    {
		      pop_function_context ();
		      YYERROR1;
		    }
		  parsing_iso_function_signature = false; /* Don't warn about nested functions.  */
		;}
    break;

  case 328:
#line 1614 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 329:
#line 1622 "c-parse.y"
    { tree decl = current_function_decl;
		  DECL_SOURCE_FILE (decl) = (yyvsp[(5) - (7)].filename);
		  DECL_SOURCE_LINE (decl) = (yyvsp[(6) - (7)].lineno);
		  finish_function (1, 1);
		  pop_function_context ();
		  add_decl_stmt (decl); ;}
    break;

  case 332:
#line 1642 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), NULL_TREE) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 333:
#line 1644 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), NULL_TREE); ;}
    break;

  case 334:
#line 1649 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 335:
#line 1651 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 339:
#line 1666 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), NULL_TREE); ;}
    break;

  case 340:
#line 1671 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 342:
#line 1677 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), NULL_TREE); ;}
    break;

  case 343:
#line 1682 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 344:
#line 1684 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 345:
#line 1686 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 346:
#line 1688 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), NULL_TREE) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 347:
#line 1696 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), NULL_TREE); ;}
    break;

  case 348:
#line 1701 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), NULL_TREE) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 349:
#line 1703 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 350:
#line 1705 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 352:
#line 1711 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 353:
#line 1713 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 354:
#line 1718 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 355:
#line 1720 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 356:
#line 1725 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 357:
#line 1727 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 358:
#line 1738 "c-parse.y"
    { (yyval.ttype) = start_struct (RECORD_TYPE, (yyvsp[(2) - (3)].ttype));
		  /* Start scope of tag before parsing components.  */
		;}
    break;

  case 359:
#line 1742 "c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[(4) - (7)].ttype), (yyvsp[(5) - (7)].ttype), chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 360:
#line 1744 "c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (RECORD_TYPE, NULL_TREE),
				      (yyvsp[(3) - (5)].ttype), chainon ((yyvsp[(1) - (5)].ttype), (yyvsp[(5) - (5)].ttype)));
		;}
    break;

  case 361:
#line 1748 "c-parse.y"
    { (yyval.ttype) = start_struct (UNION_TYPE, (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 362:
#line 1750 "c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[(4) - (7)].ttype), (yyvsp[(5) - (7)].ttype), chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 363:
#line 1752 "c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (UNION_TYPE, NULL_TREE),
				      (yyvsp[(3) - (5)].ttype), chainon ((yyvsp[(1) - (5)].ttype), (yyvsp[(5) - (5)].ttype)));
		;}
    break;

  case 364:
#line 1756 "c-parse.y"
    { (yyval.ttype) = start_enum ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 365:
#line 1758 "c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[(4) - (8)].ttype), nreverse ((yyvsp[(5) - (8)].ttype)),
				    chainon ((yyvsp[(1) - (8)].ttype), (yyvsp[(8) - (8)].ttype))); ;}
    break;

  case 366:
#line 1761 "c-parse.y"
    { (yyval.ttype) = start_enum (NULL_TREE); ;}
    break;

  case 367:
#line 1763 "c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[(3) - (7)].ttype), nreverse ((yyvsp[(4) - (7)].ttype)),
				    chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 368:
#line 1769 "c-parse.y"
    { (yyval.ttype) = xref_tag (RECORD_TYPE, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 369:
#line 1771 "c-parse.y"
    { (yyval.ttype) = xref_tag (UNION_TYPE, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 370:
#line 1773 "c-parse.y"
    { (yyval.ttype) = xref_tag (ENUMERAL_TYPE, (yyvsp[(2) - (2)].ttype));
		  /* In ISO C, enumerated types can be referred to
		     only if already defined.  */
		  if (pedantic && !COMPLETE_TYPE_P ((yyval.ttype)))
		    pedwarn ("ISO C forbids forward references to `enum' types"); ;}
    break;

  case 374:
#line 1788 "c-parse.y"
    { if (pedantic && ! flag_isoc99)
		    pedwarn ("comma at end of enumerator list"); ;}
    break;

  case 375:
#line 1794 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 376:
#line 1796 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype));
		  pedwarn ("no semicolon at end of struct or union"); ;}
    break;

  case 377:
#line 1801 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 378:
#line 1803 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 379:
#line 1805 "c-parse.y"
    { if (pedantic)
		    pedwarn ("extra semicolon in struct or union specified"); ;}
    break;

  case 380:
#line 1811 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 381:
#line 1814 "c-parse.y"
    {
		  /* Support for unnamed structs or unions as members of
		     structs or unions (which is [a] useful and [b] supports
		     MS P-SDK).  */
		  if (pedantic)
		    pedwarn ("ISO C doesn't support unnamed structs/unions");

		  (yyval.ttype) = grokfield((yyvsp[(3) - (4)].filename), (yyvsp[(4) - (4)].lineno), NULL, current_declspecs, NULL_TREE);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 382:
#line 1824 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 383:
#line 1827 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids member declarations with no members");
		  shadow_tag((yyvsp[(1) - (1)].ttype));
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 384:
#line 1832 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 385:
#line 1834 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
		  RESTORE_EXT_FLAGS ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 387:
#line 1841 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 389:
#line 1847 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 390:
#line 1852 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (4)].filename), (yyvsp[(2) - (4)].lineno), (yyvsp[(3) - (4)].ttype), current_declspecs, NULL_TREE);
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 391:
#line 1856 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (6)].filename), (yyvsp[(2) - (6)].lineno), (yyvsp[(3) - (6)].ttype), current_declspecs, (yyvsp[(5) - (6)].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(6) - (6)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 392:
#line 1859 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (5)].filename), (yyvsp[(2) - (5)].lineno), NULL_TREE, current_declspecs, (yyvsp[(4) - (5)].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(5) - (5)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 393:
#line 1865 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (4)].filename), (yyvsp[(2) - (4)].lineno), (yyvsp[(3) - (4)].ttype), current_declspecs, NULL_TREE);
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 394:
#line 1869 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (6)].filename), (yyvsp[(2) - (6)].lineno), (yyvsp[(3) - (6)].ttype), current_declspecs, (yyvsp[(5) - (6)].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(6) - (6)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 395:
#line 1872 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (5)].filename), (yyvsp[(2) - (5)].lineno), NULL_TREE, current_declspecs, (yyvsp[(4) - (5)].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[(5) - (5)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 397:
#line 1884 "c-parse.y"
    { if ((yyvsp[(1) - (3)].ttype) == error_mark_node)
		    (yyval.ttype) = (yyvsp[(1) - (3)].ttype);
		  else
		    (yyval.ttype) = chainon ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 398:
#line 1889 "c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 399:
#line 1895 "c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[(1) - (1)].ttype), NULL_TREE); ;}
    break;

  case 400:
#line 1897 "c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 401:
#line 1902 "c-parse.y"
    { pending_xref_error ();
		  (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 402:
#line 1905 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 403:
#line 1910 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 405:
#line 1916 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 NULL_TREE),
					all_prefix_attributes); ;}
    break;

  case 406:
#line 1920 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(1) - (1)].ttype)),
					all_prefix_attributes); ;}
    break;

  case 407:
#line 1924 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(1) - (2)].ttype)),
					chainon ((yyvsp[(2) - (2)].ttype), all_prefix_attributes)); ;}
    break;

  case 411:
#line 1937 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 412:
#line 1942 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (2)].ttype), NULL_TREE); ;}
    break;

  case 413:
#line 1944 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 414:
#line 1949 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), NULL_TREE) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 415:
#line 1951 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), NULL_TREE); ;}
    break;

  case 416:
#line 1953 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 1); ;}
    break;

  case 417:
#line 1955 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, NULL_TREE, (yyvsp[(2) - (2)].ttype), NULL_TREE); ;}
    break;

  case 418:
#line 1957 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(1) - (1)].ttype), NULL_TREE, 1); ;}
    break;

  case 419:
#line 1964 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), 0, 0); ;}
    break;

  case 420:
#line 1966 "c-parse.y"
    { (yyval.ttype) = build_array_declarator (NULL_TREE, (yyvsp[(2) - (3)].ttype), 0, 0); ;}
    break;

  case 421:
#line 1968 "c-parse.y"
    { (yyval.ttype) = build_array_declarator (NULL_TREE, (yyvsp[(2) - (4)].ttype), 0, 1); ;}
    break;

  case 422:
#line 1970 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(4) - (5)].ttype), (yyvsp[(3) - (5)].ttype), 1, 0); ;}
    break;

  case 423:
#line 1973 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(4) - (5)].ttype), (yyvsp[(2) - (5)].ttype), 1, 0); ;}
    break;

  case 426:
#line 1986 "c-parse.y"
    {
		  pedwarn ("deprecated use of label at end of compound statement");
		;}
    break;

  case 434:
#line 2003 "c-parse.y"
    {
		  if ((pedantic && !flag_isoc99)
		      || warn_declaration_after_statement)
		    pedwarn_c90 ("ISO C90 forbids mixed declarations and code");
		;}
    break;

  case 449:
#line 2036 "c-parse.y"
    { pushlevel (0);
		  clear_last_expr ();
		  add_scope_stmt (/*begin_p=*/1, /*partial_p=*/0);
		;}
    break;

  case 450:
#line 2043 "c-parse.y"
    { (yyval.ttype) = add_scope_stmt (/*begin_p=*/0, /*partial_p=*/0); ;}
    break;

  case 451:
#line 2048 "c-parse.y"
    { if (flag_isoc99)
		    {
		      (yyval.ttype) = c_begin_compound_stmt ();
		      pushlevel (0);
		      clear_last_expr ();
		      add_scope_stmt (/*begin_p=*/1, /*partial_p=*/0);
		    }
		  else
		    (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 452:
#line 2064 "c-parse.y"
    { if (flag_isoc99)
		    {
		      tree scope_stmt = add_scope_stmt (/*begin_p=*/0, /*partial_p=*/0);
		      (yyval.ttype) = poplevel (kept_level_p (), 0, 0);
		      SCOPE_STMT_BLOCK (TREE_PURPOSE (scope_stmt))
			= SCOPE_STMT_BLOCK (TREE_VALUE (scope_stmt))
			= (yyval.ttype);
		    }
		  else
		    (yyval.ttype) = NULL_TREE; ;}
    break;

  case 454:
#line 2081 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids label declarations"); ;}
    break;

  case 457:
#line 2092 "c-parse.y"
    { tree link;
		  for (link = (yyvsp[(2) - (3)].ttype); link; link = TREE_CHAIN (link))
		    {
		      tree label = shadow_label (TREE_VALUE (link));
		      C_DECLARED_LABEL_FLAG (label) = 1;
		      add_decl_stmt (label);
		    }
		;}
    break;

  case 458:
#line 2106 "c-parse.y"
    {;}
    break;

  case 460:
#line 2110 "c-parse.y"
    { compstmt_count++;
                      (yyval.ttype) = c_begin_compound_stmt (); ;}
    break;

  case 461:
#line 2115 "c-parse.y"
    { (yyval.ttype) = convert (void_type_node, integer_zero_node); ;}
    break;

  case 462:
#line 2117 "c-parse.y"
    { (yyval.ttype) = poplevel (kept_level_p (), 1, 0);
		  SCOPE_STMT_BLOCK (TREE_PURPOSE ((yyvsp[(5) - (5)].ttype)))
		    = SCOPE_STMT_BLOCK (TREE_VALUE ((yyvsp[(5) - (5)].ttype)))
		    = (yyval.ttype); ;}
    break;

  case 465:
#line 2130 "c-parse.y"
    { if (current_function_decl == 0)
		    {
		      error ("braced-group within expression allowed only inside a function");
		      YYERROR;
		    }
		  /* We must force a BLOCK for this level
		     so that, if it is not expanded later,
		     there is a way to turn off the entire subtree of blocks
		     that are contained in it.  */
		  keep_next_level ();
		  push_label_level ();
		  compstmt_count++;
		  (yyval.ttype) = add_stmt (build_stmt (COMPOUND_STMT, last_tree));
		;}
    break;

  case 466:
#line 2147 "c-parse.y"
    { RECHAIN_STMTS ((yyvsp[(1) - (2)].ttype), COMPOUND_BODY ((yyvsp[(1) - (2)].ttype)));
		  last_expr_type = NULL_TREE;
                  (yyval.ttype) = (yyvsp[(1) - (2)].ttype); ;}
    break;

  case 467:
#line 2155 "c-parse.y"
    { c_finish_then (); ;}
    break;

  case 469:
#line 2172 "c-parse.y"
    { (yyval.ttype) = c_begin_if_stmt (); ;}
    break;

  case 470:
#line 2174 "c-parse.y"
    { c_expand_start_cond (c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype)),
				       compstmt_count,(yyvsp[(2) - (5)].ttype));
		  (yyval.itype) = stmt_count;
		  if_stmt_file = (yyvsp[(-2) - (5)].filename);
		  if_stmt_line = (yyvsp[(-1) - (5)].lineno); ;}
    break;

  case 471:
#line 2186 "c-parse.y"
    { stmt_count++;
		  compstmt_count++;
		  (yyval.ttype)
		    = add_stmt (build_stmt (DO_STMT, NULL_TREE,
					    NULL_TREE));
		  /* In the event that a parse error prevents
		     parsing the complete do-statement, set the
		     condition now.  Otherwise, we can get crashes at
		     RTL-generation time.  */
		  DO_COND ((yyval.ttype)) = error_mark_node; ;}
    break;

  case 472:
#line 2197 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype);
		  RECHAIN_STMTS ((yyval.ttype), DO_BODY ((yyval.ttype))); ;}
    break;

  case 473:
#line 2205 "c-parse.y"
    { if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.filename) = input_filename; ;}
    break;

  case 474:
#line 2211 "c-parse.y"
    { if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.lineno) = lineno; ;}
    break;

  case 477:
#line 2224 "c-parse.y"
    { if (flag_isoc99)
		    RECHAIN_STMTS ((yyvsp[(1) - (3)].ttype), COMPOUND_BODY ((yyvsp[(1) - (3)].ttype))); ;}
    break;

  case 478:
#line 2230 "c-parse.y"
    { if ((yyvsp[(3) - (3)].ttype))
		    {
		      STMT_LINENO ((yyvsp[(3) - (3)].ttype)) = (yyvsp[(2) - (3)].lineno);
		      /* ??? We currently have no way of recording
			 the filename for a statement.  This probably
			 matters little in practice at the moment,
			 but I suspect that problems will occur when
			 doing inlining at the tree level.  */
		    }
		;}
    break;

  case 479:
#line 2244 "c-parse.y"
    { if ((yyvsp[(3) - (3)].ttype))
		    {
		      STMT_LINENO ((yyvsp[(3) - (3)].ttype)) = (yyvsp[(2) - (3)].lineno);
		    }
		;}
    break;

  case 480:
#line 2253 "c-parse.y"
    { c_expand_start_else ();
		  (yyvsp[(1) - (2)].itype) = stmt_count; ;}
    break;

  case 481:
#line 2256 "c-parse.y"
    { c_finish_else ();
		  c_expand_end_cond ();
		  if (extra_warnings && stmt_count == (yyvsp[(1) - (4)].itype))
		    warning ("empty body in an else-statement"); ;}
    break;

  case 482:
#line 2261 "c-parse.y"
    { c_expand_end_cond ();
		  /* This warning is here instead of in simple_if, because we
		     do not want a warning if an empty if is followed by an
		     else statement.  Increment stmt_count so we don't
		     give a second error if this is a nested `if'.  */
		  if (extra_warnings && stmt_count++ == (yyvsp[(1) - (1)].itype))
		    warning_with_file_and_line (if_stmt_file, if_stmt_line,
						"empty body in an if-statement"); ;}
    break;

  case 483:
#line 2273 "c-parse.y"
    { c_expand_end_cond (); ;}
    break;

  case 484:
#line 2283 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_begin_while_stmt (); ;}
    break;

  case 485:
#line 2286 "c-parse.y"
    { (yyvsp[(4) - (5)].ttype) = c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype));
		  c_finish_while_stmt_cond
		    (c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype)), (yyvsp[(2) - (5)].ttype));
		  (yyval.ttype) = add_stmt ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 486:
#line 2291 "c-parse.y"
    { RECHAIN_STMTS ((yyvsp[(6) - (7)].ttype), WHILE_BODY ((yyvsp[(6) - (7)].ttype))); ;}
    break;

  case 487:
#line 2294 "c-parse.y"
    { DO_COND ((yyvsp[(1) - (5)].ttype)) = c_common_truthvalue_conversion ((yyvsp[(3) - (5)].ttype)); ;}
    break;

  case 488:
#line 2296 "c-parse.y"
    { ;}
    break;

  case 489:
#line 2298 "c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, NULL_TREE, NULL_TREE,
					  NULL_TREE, NULL_TREE);
		  add_stmt ((yyval.ttype)); ;}
    break;

  case 490:
#line 2302 "c-parse.y"
    { stmt_count++;
		  RECHAIN_STMTS ((yyvsp[(2) - (4)].ttype), FOR_INIT_STMT ((yyvsp[(2) - (4)].ttype))); ;}
    break;

  case 491:
#line 2305 "c-parse.y"
    { if ((yyvsp[(6) - (7)].ttype))
		    FOR_COND ((yyvsp[(2) - (7)].ttype))
		      = c_common_truthvalue_conversion ((yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 492:
#line 2309 "c-parse.y"
    { FOR_EXPR ((yyvsp[(2) - (10)].ttype)) = (yyvsp[(9) - (10)].ttype); ;}
    break;

  case 493:
#line 2311 "c-parse.y"
    { RECHAIN_STMTS ((yyvsp[(2) - (12)].ttype), FOR_BODY ((yyvsp[(2) - (12)].ttype))); ;}
    break;

  case 494:
#line 2313 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_start_case ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 495:
#line 2316 "c-parse.y"
    { c_finish_case (); ;}
    break;

  case 496:
#line 2321 "c-parse.y"
    { add_stmt (build_stmt (EXPR_STMT, (yyvsp[(1) - (2)].ttype))); ;}
    break;

  case 497:
#line 2323 "c-parse.y"
    { check_for_loop_decls (); ;}
    break;

  case 509:
#line 2344 "c-parse.y"
    {
           add_stmt(build_omp_stmt(sl2_sections_cons_b, NULL));
	 ;}
    break;

  case 510:
#line 2348 "c-parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;;}
    break;

  case 511:
#line 2350 "c-parse.y"
    {
           add_stmt(build_omp_stmt(sl2_minor_sections_cons_b, NULL));
	 ;}
    break;

  case 512:
#line 2354 "c-parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;;}
    break;

  case 520:
#line 2381 "c-parse.y"
    {
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
        ;}
    break;

  case 521:
#line 2388 "c-parse.y"
    {
	  add_stmt (build_omp_stmt (sl2_section_cons_e, NULL));
        ;}
    break;

  case 522:
#line 2392 "c-parse.y"
    {
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_minor_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
        ;}
    break;

  case 523:
#line 2399 "c-parse.y"
    {
	  add_stmt (build_omp_stmt (sl2_minor_section_cons_e, NULL));
        ;}
    break;

  case 526:
#line 2410 "c-parse.y"
    {;}
    break;

  case 529:
#line 2417 "c-parse.y"
    { add_stmt (build_omp_stmt (options_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 530:
#line 2423 "c-parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 534:
#line 2432 "c-parse.y"
    { add_stmt (build_omp_stmt (exec_freq_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 535:
#line 2436 "c-parse.y"
    { (yyval.ttype) = build_string (6, "never"); ;}
    break;

  case 536:
#line 2437 "c-parse.y"
    { (yyval.ttype) = build_string (5, "init"); ;}
    break;

  case 537:
#line 2438 "c-parse.y"
    { (yyval.ttype) = build_string (9, "frequent"); ;}
    break;

  case 539:
#line 2447 "c-parse.y"
    {
	    (yyval.ttype) = add_stmt (build_omp_stmt (parallel_dir_b, (yyvsp[(1) - (1)].pclause_type)));
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

  case 540:
#line 2460 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (parallel_dir_e, NULL));
	    (yyval.ttype)=NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
	        chain_parallel_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
		          build_parallel_clause_list (mp_locals[mp_nesting],
			                              p_private, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 541:
#line 2478 "c-parse.y"
    { (yyval.pclause_type) = NULL; ;}
    break;

  case 542:
#line 2480 "c-parse.y"
    { (yyval.pclause_type) = (yyvsp[(3) - (4)].pclause_type); ;}
    break;

  case 543:
#line 2485 "c-parse.y"
    { (yyval.pclause_type) = (yyvsp[(1) - (1)].pclause_type); ;}
    break;

  case 544:
#line 2487 "c-parse.y"
    { (yyval.pclause_type) = chain_parallel_list_on ((yyvsp[(1) - (2)].pclause_type), (yyvsp[(2) - (2)].pclause_type)); ;}
    break;

  case 545:
#line 2492 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_if, 0, 0); ;}
    break;

  case 546:
#line 2494 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_num_threads, 0, 0); ;}
    break;

  case 547:
#line 2496 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_private, 0, 0); ;}
    break;

  case 548:
#line 2498 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_firstprivate, 0, 0); ;}
    break;

  case 549:
#line 2500 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_shared, 0, 0); ;}
    break;

  case 550:
#line 2502 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_shared, 0); ;}
    break;

  case 551:
#line 2504 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_none, 0); ;}
    break;

  case 552:
#line 2506 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(5) - (6)].ttype), p_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 553:
#line 2508 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_copyin, 0, 0); ;}
    break;

  case 554:
#line 2513 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (for_dir_b, (yyvsp[(1) - (1)].for_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 555:
#line 2519 "c-parse.y"
    { add_stmt (build_omp_stmt (for_dir_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 556:
#line 2525 "c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, NULL_TREE, NULL_TREE,
					  NULL_TREE, NULL_TREE);
		  TREE_ADDRESSABLE ((yyval.ttype)) = 1; // generate do-loop
		  add_stmt ((yyval.ttype)); ;}
    break;

  case 557:
#line 2530 "c-parse.y"
    { stmt_count++;
		  RECHAIN_STMTS ((yyvsp[(2) - (4)].ttype), FOR_INIT_STMT ((yyvsp[(2) - (4)].ttype))); ;}
    break;

  case 558:
#line 2533 "c-parse.y"
    { if ((yyvsp[(6) - (7)].ttype))
		    FOR_COND ((yyvsp[(2) - (7)].ttype))
		      = c_common_truthvalue_conversion ((yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 559:
#line 2537 "c-parse.y"
    { FOR_EXPR ((yyvsp[(2) - (10)].ttype)) = (yyvsp[(9) - (10)].ttype); ;}
    break;

  case 560:
#line 2539 "c-parse.y"
    { RECHAIN_STMTS ((yyvsp[(2) - (12)].ttype), FOR_BODY ((yyvsp[(2) - (12)].ttype))); ;}
    break;

  case 561:
#line 2544 "c-parse.y"
    { (yyval.for_clause_type) = NULL; ;}
    break;

  case 562:
#line 2546 "c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[(3) - (4)].for_clause_type); ;}
    break;

  case 563:
#line 2551 "c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[(1) - (1)].for_clause_type); ;}
    break;

  case 564:
#line 2553 "c-parse.y"
    { (yyval.for_clause_type) = chain_for_list_on ((yyvsp[(1) - (2)].for_clause_type), (yyvsp[(2) - (2)].for_clause_type)); ;}
    break;

  case 565:
#line 2558 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_private, 0, 0); ;}
    break;

  case 566:
#line 2560 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_firstprivate, 0, 0); ;}
    break;

  case 567:
#line 2562 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_lastprivate, 0, 0); ;}
    break;

  case 568:
#line 2564 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 569:
#line 2566 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_schedule_1, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 570:
#line 2568 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_schedule_2, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 571:
#line 2570 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_ordered, 0, 0); ;}
    break;

  case 572:
#line 2572 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_nowait, 0, 0); ;}
    break;

  case 573:
#line 2577 "c-parse.y"
    {
       if (strcmp (IDENTIFIER_POINTER ((yyvsp[(1) - (1)].ttype)), "static"))
              error ("'%s' is not a valid schedule kind\n",  IDENTIFIER_POINTER ((yyvsp[(1) - (1)].ttype)));
       else
              (yyval.sch_k_type)=SK_STATIC; ;}
    break;

  case 574:
#line 2583 "c-parse.y"
    { (yyval.sch_k_type)=SK_DYNAMIC; ;}
    break;

  case 575:
#line 2585 "c-parse.y"
    { (yyval.sch_k_type)=SK_GUIDED; ;}
    break;

  case 576:
#line 2587 "c-parse.y"
    { (yyval.sch_k_type)=SK_RUNTIME; ;}
    break;

  case 577:
#line 2593 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (sections_cons_b, (yyvsp[(1) - (1)].sections_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 578:
#line 2598 "c-parse.y"
    { add_stmt (build_omp_stmt (sections_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 579:
#line 2603 "c-parse.y"
    { (yyval.sections_clause_type) = NULL; ;}
    break;

  case 580:
#line 2605 "c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(3) - (4)].sections_clause_type); ;}
    break;

  case 581:
#line 2610 "c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(1) - (1)].sections_clause_type); ;}
    break;

  case 582:
#line 2612 "c-parse.y"
    { (yyval.sections_clause_type) = chain_sections_list_on ((yyvsp[(1) - (2)].sections_clause_type), (yyvsp[(2) - (2)].sections_clause_type)); ;}
    break;

  case 583:
#line 2617 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_private, 0); ;}
    break;

  case 584:
#line 2619 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_firstprivate, 0); ;}
    break;

  case 585:
#line 2621 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_lastprivate, 0); ;}
    break;

  case 586:
#line 2623 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(5) - (6)].ttype), sections_reduction, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 587:
#line 2625 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list(NULL, sections_nowait, 0); ;}
    break;

  case 588:
#line 2631 "c-parse.y"
    {
           In_MP_Section = true;
           add_stmt (build_omp_stmt (section_cons_b, NULL));
        ;}
    break;

  case 593:
#line 2646 "c-parse.y"
    {
	  In_MP_Section = false;
	  add_stmt (build_omp_stmt (section_cons_e, NULL));
	;}
    break;

  case 596:
#line 2659 "c-parse.y"
    {
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (section_cons_b, NULL));
	  else
	    In_MP_Section = false;
        ;}
    break;

  case 597:
#line 2666 "c-parse.y"
    {
	  add_stmt (build_omp_stmt (section_cons_e, NULL));
        ;}
    break;

  case 599:
#line 2677 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (single_cons_b, (yyvsp[(1) - (1)].single_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 600:
#line 2682 "c-parse.y"
    { add_stmt (build_omp_stmt (single_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 601:
#line 2687 "c-parse.y"
    {(yyval.single_clause_type) = NULL;;}
    break;

  case 602:
#line 2689 "c-parse.y"
    {(yyval.single_clause_type) = (yyvsp[(3) - (4)].single_clause_type);;}
    break;

  case 603:
#line 2694 "c-parse.y"
    { (yyval.single_clause_type) = (yyvsp[(1) - (1)].single_clause_type); ;}
    break;

  case 604:
#line 2696 "c-parse.y"
    { (yyval.single_clause_type) = chain_single_list_on ((yyvsp[(1) - (2)].single_clause_type), (yyvsp[(2) - (2)].single_clause_type)); ;}
    break;

  case 605:
#line 2701 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_private); ;}
    break;

  case 606:
#line 2703 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_firstprivate); ;}
    break;

  case 607:
#line 2705 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_copyprivate); ;}
    break;

  case 608:
#line 2707 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list(NULL, single_nowait); ;}
    break;

  case 609:
#line 2712 "c-parse.y"
    {
	    (yyval.ttype) = add_stmt (build_omp_stmt (par_for_cons_b, (yyvsp[(1) - (1)].parallel_for_clause_type)));
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

  case 610:
#line 2725 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (par_for_cons_e, NULL));
	    (yyval.ttype) = NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
	        chain_parallel_for_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
		          build_parallel_for_clause_list (mp_locals[mp_nesting],
			                              p_for_private, 0, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 611:
#line 2743 "c-parse.y"
    {(yyval.parallel_for_clause_type) = NULL;;}
    break;

  case 612:
#line 2745 "c-parse.y"
    {(yyval.parallel_for_clause_type) = (yyvsp[(4) - (5)].parallel_for_clause_type);;}
    break;

  case 613:
#line 2750 "c-parse.y"
    { (yyval.parallel_for_clause_type) = (yyvsp[(1) - (1)].parallel_for_clause_type); ;}
    break;

  case 614:
#line 2752 "c-parse.y"
    { (yyval.parallel_for_clause_type) = chain_parallel_for_list_on ((yyvsp[(1) - (2)].parallel_for_clause_type), (yyvsp[(2) - (2)].parallel_for_clause_type)); ;}
    break;

  case 615:
#line 2757 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_if, 0, 0, 0); ;}
    break;

  case 616:
#line 2759 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_num_threads, 0, 0, 0); ;}
    break;

  case 617:
#line 2761 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_private, 0, 0, 0); ;}
    break;

  case 618:
#line 2763 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyprivate, 0, 0, 0); ;}
    break;

  case 619:
#line 2765 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_firstprivate, 0, 0, 0); ;}
    break;

  case 620:
#line 2767 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_lastprivate, 0, 0, 0); ;}
    break;

  case 621:
#line 2769 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_shared, 0, 0, 0); ;}
    break;

  case 622:
#line 2771 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_shared, 0, 0); ;}
    break;

  case 623:
#line 2773 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_none, 0, 0); ;}
    break;

  case 624:
#line 2775 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_reduction, 0, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 625:
#line 2777 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyin, 0, 0, 0); ;}
    break;

  case 626:
#line 2779 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_schedule_1, 0, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 627:
#line 2781 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_schedule_2, 0, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 628:
#line 2783 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_ordered, 0, 0, 0); ;}
    break;

  case 629:
#line 2788 "c-parse.y"
    {
	    (yyval.ttype) = add_stmt (build_omp_stmt (par_sctn_cons_b, (yyvsp[(1) - (1)].parallel_sections_clause_type)));
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

  case 630:
#line 2801 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (par_sctn_cons_e, NULL));
	    (yyval.ttype) = NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
	        chain_parallel_sections_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
		   build_parallel_sections_clause_list (mp_locals[mp_nesting],
		   p_sections_private, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 631:
#line 2819 "c-parse.y"
    {(yyval.parallel_sections_clause_type) = NULL;;}
    break;

  case 632:
#line 2821 "c-parse.y"
    {(yyval.parallel_sections_clause_type) = (yyvsp[(4) - (5)].parallel_sections_clause_type);;}
    break;

  case 633:
#line 2826 "c-parse.y"
    { (yyval.parallel_sections_clause_type)=(yyvsp[(1) - (1)].parallel_sections_clause_type); ;}
    break;

  case 634:
#line 2828 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = chain_parallel_sections_list_on ((yyvsp[(1) - (2)].parallel_sections_clause_type), (yyvsp[(2) - (2)].parallel_sections_clause_type)); ;}
    break;

  case 635:
#line 2833 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_if, 0, 0); ;}
    break;

  case 636:
#line 2835 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_num_threads, 0, 0); ;}
    break;

  case 637:
#line 2837 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_private, 0, 0); ;}
    break;

  case 638:
#line 2839 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyprivate, 0, 0); ;}
    break;

  case 639:
#line 2841 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_firstprivate, 0, 0); ;}
    break;

  case 640:
#line 2843 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_lastprivate, 0, 0); ;}
    break;

  case 641:
#line 2845 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_shared, 0, 0); ;}
    break;

  case 642:
#line 2847 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_shared, 0); ;}
    break;

  case 643:
#line 2849 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_none, 0); ;}
    break;

  case 644:
#line 2851 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(5) - (6)].ttype), p_sections_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 645:
#line 2853 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyin, 0, 0); ;}
    break;

  case 646:
#line 2858 "c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 647:
#line 2860 "c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 649:
#line 2869 "c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_b, (yyvsp[(1) - (1)].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 650:
#line 2871 "c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 651:
#line 2876 "c-parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 652:
#line 2878 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 653:
#line 2883 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 654:
#line 2888 "c-parse.y"
    { add_stmt (build_omp_stmt (barrier_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 655:
#line 2893 "c-parse.y"
    {
	    add_stmt (build_omp_stmt (atomic_cons, (yyvsp[(2) - (3)].ttype)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 657:
#line 2905 "c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 658:
#line 2908 "c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, (yyvsp[(4) - (6)].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 659:
#line 2913 "c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 660:
#line 2915 "c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 662:
#line 2924 "c-parse.y"
    { expand_threadprivate((yyvsp[(4) - (6)].ttype)); ;}
    break;

  case 663:
#line 2929 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_ADD;;}
    break;

  case 664:
#line 2931 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_MPY;;}
    break;

  case 665:
#line 2933 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_SUB;;}
    break;

  case 666:
#line 2935 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BAND;;}
    break;

  case 667:
#line 2937 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BXOR;;}
    break;

  case 668:
#line 2939 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BIOR;;}
    break;

  case 669:
#line 2941 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CAND;;}
    break;

  case 670:
#line 2943 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CIOR;;}
    break;

  case 671:
#line 2948 "c-parse.y"
    {
           if(lookup_name((yyvsp[(1) - (1)].ttype))==0)
                        error("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[(1) - (1)].ttype)));
          (yyval.ttype) = build_tree_list (NULL_TREE, lookup_name ((yyvsp[(1) - (1)].ttype)));
        ;}
    break;

  case 672:
#line 2954 "c-parse.y"
    {
      if (lookup_name ((yyvsp[(3) - (3)].ttype)) == 0)
        error ("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[(3) - (3)].ttype)));
      (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list (NULL_TREE, lookup_name ((yyvsp[(3) - (3)].ttype))));
    ;}
    break;

  case 675:
#line 2969 "c-parse.y"
    { stmt_count++; (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 676:
#line 2971 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_expr_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 677:
#line 2974 "c-parse.y"
    { if (flag_isoc99)
		    RECHAIN_STMTS ((yyvsp[(1) - (3)].ttype), COMPOUND_BODY ((yyvsp[(1) - (3)].ttype)));
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 678:
#line 2978 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = add_stmt (build_break_stmt ()); ;}
    break;

  case 679:
#line 2981 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = add_stmt (build_continue_stmt ()); ;}
    break;

  case 680:
#line 2984 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_return (NULL_TREE); ;}
    break;

  case 681:
#line 2987 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_return ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 682:
#line 2990 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = simple_asm_stmt ((yyvsp[(4) - (6)].ttype)); ;}
    break;

  case 683:
#line 2994 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (8)].ttype), (yyvsp[(4) - (8)].ttype), (yyvsp[(6) - (8)].ttype), NULL_TREE, NULL_TREE); ;}
    break;

  case 684:
#line 2999 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (10)].ttype), (yyvsp[(4) - (10)].ttype), (yyvsp[(6) - (10)].ttype), (yyvsp[(8) - (10)].ttype), NULL_TREE); ;}
    break;

  case 685:
#line 3004 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (12)].ttype), (yyvsp[(4) - (12)].ttype), (yyvsp[(6) - (12)].ttype), (yyvsp[(8) - (12)].ttype), (yyvsp[(10) - (12)].ttype)); ;}
    break;

  case 686:
#line 3007 "c-parse.y"
    { tree decl;
		  stmt_count++;
		  decl = lookup_label ((yyvsp[(2) - (3)].ttype));
		  if (decl != 0)
		    {
		      TREE_USED (decl) = 1;
		      (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, decl));
		    }
		  else
		    (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 687:
#line 3019 "c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids `goto *expr;'");
		  stmt_count++;
		  (yyvsp[(3) - (4)].ttype) = convert (ptr_type_node, (yyvsp[(3) - (4)].ttype));
		  (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, (yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 688:
#line 3025 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 689:
#line 3033 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case ((yyvsp[(2) - (3)].ttype), NULL_TREE); ;}
    break;

  case 690:
#line 3036 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 691:
#line 3039 "c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case (NULL_TREE, NULL_TREE); ;}
    break;

  case 692:
#line 3042 "c-parse.y"
    { tree label = define_label ((yyvsp[(2) - (5)].filename), (yyvsp[(3) - (5)].lineno), (yyvsp[(1) - (5)].ttype));
		  stmt_count++;
		  if (label)
		    {
		      decl_attributes (&label, (yyvsp[(5) - (5)].ttype), 0);
		      (yyval.ttype) = add_stmt (build_stmt (LABEL_STMT, label));
		    }
		  else
		    (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 693:
#line 3058 "c-parse.y"
    { emit_line_note (input_filename, lineno);
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 694:
#line 3061 "c-parse.y"
    { emit_line_note (input_filename, lineno); ;}
    break;

  case 695:
#line 3066 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 697:
#line 3073 "c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 700:
#line 3080 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 701:
#line 3085 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (NULL_TREE, (yyvsp[(1) - (4)].ttype)), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 702:
#line 3087 "c-parse.y"
    { (yyvsp[(2) - (7)].ttype) = build_string (IDENTIFIER_LENGTH ((yyvsp[(2) - (7)].ttype)),
				     IDENTIFIER_POINTER ((yyvsp[(2) - (7)].ttype)));
		  (yyval.ttype) = build_tree_list (build_tree_list ((yyvsp[(2) - (7)].ttype), (yyvsp[(4) - (7)].ttype)), (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 703:
#line 3094 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(1) - (1)].ttype), NULL_TREE); ;}
    break;

  case 704:
#line 3096 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 705:
#line 3106 "c-parse.y"
    { pushlevel (0);
		  clear_parm_order ();
		  declare_parm_level (0); ;}
    break;

  case 706:
#line 3110 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  parmlist_tags_warning ();
		  poplevel (0, 0, 0); ;}
    break;

  case 708:
#line 3118 "c-parse.y"
    { tree parm;
		  if (pedantic)
		    pedwarn ("ISO C forbids forward parameter declarations");
		  /* Mark the forward decls as such.  */
		  for (parm = getdecls (); parm; parm = TREE_CHAIN (parm))
		    TREE_ASM_WRITTEN (parm) = 1;
		  clear_parm_order (); ;}
    break;

  case 709:
#line 3126 "c-parse.y"
    { /* Dummy action so attributes are in known place
		     on parser stack.  */ ;}
    break;

  case 710:
#line 3129 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(6) - (6)].ttype); ;}
    break;

  case 711:
#line 3131 "c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, NULL_TREE, NULL_TREE); ;}
    break;

  case 712:
#line 3137 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 713:
#line 3139 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0);
		  /* Gcc used to allow this as an extension.  However, it does
		     not work for all targets, and thus has been disabled.
		     Also, since func (...) and func () are indistinguishable,
		     it caused problems with the code in expand_builtin which
		     tries to verify that BUILT_IN_NEXT_ARG is being used
		     correctly.  */
		  error ("ISO C requires a named argument before `...'");
		;}
    break;

  case 714:
#line 3149 "c-parse.y"
    { (yyval.ttype) = get_parm_info (1);
		  parsing_iso_function_signature = true;
		;}
    break;

  case 715:
#line 3153 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 716:
#line 3158 "c-parse.y"
    { push_parm_decl ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 717:
#line 3160 "c-parse.y"
    { push_parm_decl ((yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 718:
#line 3167 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 719:
#line 3172 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 720:
#line 3177 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 721:
#line 3180 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 722:
#line 3186 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 723:
#line 3194 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 724:
#line 3199 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 725:
#line 3204 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 726:
#line 3207 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[(3) - (4)].ttype)),
					chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 727:
#line 3213 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 728:
#line 3219 "c-parse.y"
    { prefix_attributes = chainon (prefix_attributes, (yyvsp[(-2) - (1)].ttype));
		  all_prefix_attributes = prefix_attributes; ;}
    break;

  case 729:
#line 3228 "c-parse.y"
    { pushlevel (0);
		  clear_parm_order ();
		  declare_parm_level (1); ;}
    break;

  case 730:
#line 3232 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
		  parmlist_tags_warning ();
		  poplevel (0, 0, 0); ;}
    break;

  case 732:
#line 3240 "c-parse.y"
    { tree t;
		  for (t = (yyvsp[(1) - (2)].ttype); t; t = TREE_CHAIN (t))
		    if (TREE_VALUE (t) == NULL_TREE)
		      error ("`...' in old-style identifier list");
		  (yyval.ttype) = tree_cons (NULL_TREE, NULL_TREE, (yyvsp[(1) - (2)].ttype));

		  /* Make sure we have a parmlist after attributes.  */
		  if ((yyvsp[(-1) - (2)].ttype) != 0
		      && (TREE_CODE ((yyval.ttype)) != TREE_LIST
			  || TREE_PURPOSE ((yyval.ttype)) == 0
			  || TREE_CODE (TREE_PURPOSE ((yyval.ttype))) != PARM_DECL))
		    YYERROR1;
		;}
    break;

  case 733:
#line 3258 "c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 734:
#line 3260 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list (NULL_TREE, (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 735:
#line 3266 "c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 736:
#line 3268 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list (NULL_TREE, (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 737:
#line 3273 "c-parse.y"
    { (yyval.ttype) = SAVE_EXT_FLAGS();
		  pedantic = 0;
		  warn_pointer_arith = 0;
		  warn_traditional = 0;
		  flag_iso = 0; ;}
    break;


/* Line 1267 of yacc.c.  */
#line 7023 "c-p1329.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
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
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
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
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
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
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
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


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token.  */
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
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 3280 "c-parse.y"


/* yylex() is a thin wrapper around c_lex(), all it does is translate
   cpplib.h's token codes into yacc's token codes.  */

static enum cpp_ttype last_token;

/* The reserved keyword table.  */
struct resword
{
  const char *word;
  ENUM_BITFIELD(rid) rid : 16;
  unsigned int disable   : 16;
};

/* Disable mask.  Keywords are disabled if (reswords[i].disable & mask) is
   _true_.  */
#define D_C89	0x01	/* not in C89 */
#define D_EXT	0x02	/* GCC extension */
#define D_EXT89	0x04	/* GCC extension incorporated in C99 */
#define D_OBJC	0x08	/* Objective C only */

static const struct resword reswords[] =
{
  { "_Bool",		RID_BOOL,	0 },
  { "_Complex",		RID_COMPLEX,	0 },
  { "__FUNCTION__",	RID_FUNCTION_NAME, 0 },
  { "__PRETTY_FUNCTION__", RID_PRETTY_FUNCTION_NAME, 0 },
  { "__alignof",	RID_ALIGNOF,	0 },
  { "__alignof__",	RID_ALIGNOF,	0 },
  { "__asm",		RID_ASM,	0 },
  { "__asm__",		RID_ASM,	0 },
  { "__attribute",	RID_ATTRIBUTE,	0 },
  { "__attribute__",	RID_ATTRIBUTE,	0 },
  { "__bounded",	RID_BOUNDED,	0 },
  { "__bounded__",	RID_BOUNDED,	0 },
  { "__builtin_choose_expr", RID_CHOOSE_EXPR, 0 },
  { "__builtin_types_compatible_p", RID_TYPES_COMPATIBLE_P, 0 },
  { "__builtin_va_arg",	RID_VA_ARG,	0 },
  { "__complex",	RID_COMPLEX,	0 },
  { "__complex__",	RID_COMPLEX,	0 },
  { "__const",		RID_CONST,	0 },
  { "__const__",	RID_CONST,	0 },
  { "__extension__",	RID_EXTENSION,	0 },
  { "__func__",		RID_C99_FUNCTION_NAME, 0 },
  { "__imag",		RID_IMAGPART,	0 },
  { "__imag__",		RID_IMAGPART,	0 },
  { "__inline",		RID_INLINE,	0 },
  { "__inline__",	RID_INLINE,	0 },
  { "__label__",	RID_LABEL,	0 },
  { "__ptrbase",	RID_PTRBASE,	0 },
  { "__ptrbase__",	RID_PTRBASE,	0 },
  { "__ptrextent",	RID_PTREXTENT,	0 },
  { "__ptrextent__",	RID_PTREXTENT,	0 },
  { "__ptrvalue",	RID_PTRVALUE,	0 },
  { "__ptrvalue__",	RID_PTRVALUE,	0 },
  { "__real",		RID_REALPART,	0 },
  { "__real__",		RID_REALPART,	0 },
  { "__restrict",	RID_RESTRICT,	0 },
  { "__restrict__",	RID_RESTRICT,	0 },
  { "__signed",		RID_SIGNED,	0 },
  { "__signed__",	RID_SIGNED,	0 },
  { "__thread",		RID_THREAD,	0 },
  { "__typeof",		RID_TYPEOF,	0 },
  { "__typeof__",	RID_TYPEOF,	0 },
  { "__unbounded",	RID_UNBOUNDED,	0 },
  { "__unbounded__",	RID_UNBOUNDED,	0 },
  { "__volatile",	RID_VOLATILE,	0 },
  { "__volatile__",	RID_VOLATILE,	0 },
  { "asm",		RID_ASM,	D_EXT },
  { "auto",		RID_AUTO,	0 },
  { "break",		RID_BREAK,	0 },
  { "case",		RID_CASE,	0 },
  { "char",		RID_CHAR,	0 },
  { "const",		RID_CONST,	0 },
  { "continue",		RID_CONTINUE,	0 },
  { "default",		RID_DEFAULT,	0 },
  { "do",		RID_DO,		0 },
  { "double",		RID_DOUBLE,	0 },
  { "else",		RID_ELSE,	0 },
  { "enum",		RID_ENUM,	0 },
  { "extern",		RID_EXTERN,	0 },
  { "float",		RID_FLOAT,	0 },
  { "for",		RID_FOR,	0 },
  { "goto",		RID_GOTO,	0 },
  { "if",		RID_IF,		0 },
  { "inline",		RID_INLINE,	D_EXT89 },
  { "int",		RID_INT,	0 },
  { "long",		RID_LONG,	0 },
  { "register",		RID_REGISTER,	0 },
  { "restrict",		RID_RESTRICT,	D_C89 },
  { "__sbuf",           RID_SBUF,       0 },
  { "__sdram",          RID_SDRAM,      0 },
  { "__v1buf",          RID_V1BUF,      0 },
  { "__v2buf",          RID_V2BUF,      0 },
  { "__v4buf",          RID_V4BUF,      0 },
  { "return",		RID_RETURN,	0 },
  { "short",		RID_SHORT,	0 },
  { "signed",		RID_SIGNED,	0 },
  { "sizeof",		RID_SIZEOF,	0 },
  { "static",		RID_STATIC,	0 },
  { "struct",		RID_STRUCT,	0 },
  { "switch",		RID_SWITCH,	0 },
  { "typedef",		RID_TYPEDEF,	0 },
  { "typeof",		RID_TYPEOF,	D_EXT },
  { "union",		RID_UNION,	0 },
  { "unsigned",		RID_UNSIGNED,	0 },
  { "void",		RID_VOID,	0 },
  { "volatile",		RID_VOLATILE,	0 },
  { "while",		RID_WHILE,	0 },
};
#define N_reswords (sizeof reswords / sizeof (struct resword))

/* Table mapping from RID_* constants to yacc token numbers.
   Unfortunately we have to have entries for all the keywords in all
   three languages.  */
static const short rid_to_yy[RID_MAX] =
{
  /* RID_STATIC */	STATIC,
  /* RID_UNSIGNED */	TYPESPEC,
  /* RID_LONG */	TYPESPEC,
  /* RID_CONST */	TYPE_QUAL,
  /* RID_EXTERN */	SCSPEC,
  /* RID_REGISTER */	SCSPEC,
  /* RID_TYPEDEF */	SCSPEC,
  /* RID_SHORT */	TYPESPEC,
  /* RID_INLINE */	SCSPEC,
  /* RID_VOLATILE */	TYPE_QUAL,
  /* RID_SIGNED */	TYPESPEC,
  /* RID_AUTO */	SCSPEC,
  /* RID_RESTRICT */	TYPE_QUAL,
  /* RID_SBUF */     TYPE_QUAL,
  /* RID_SDRAM */    TYPE_QUAL,
  /* RID_V1BUF */ TYPE_QUAL, 
  /* RID_V2BUF */ TYPE_QUAL, 
  /* RID_V4BUF */ TYPE_QUAL, 
  /* C extensions */
  /* RID_BOUNDED */	TYPE_QUAL,
  /* RID_UNBOUNDED */	TYPE_QUAL,
  /* RID_COMPLEX */	TYPESPEC,
  /* RID_THREAD */	SCSPEC,

  /* C++ */
  /* RID_FRIEND */	0,
  /* RID_VIRTUAL */	0,
  /* RID_EXPLICIT */	0,
  /* RID_EXPORT */	0,
  /* RID_MUTABLE */	0,

  /* ObjC */
  /* RID_IN */		TYPE_QUAL,
  /* RID_OUT */		TYPE_QUAL,
  /* RID_INOUT */	TYPE_QUAL,
  /* RID_BYCOPY */	TYPE_QUAL,
  /* RID_BYREF */	TYPE_QUAL,
  /* RID_ONEWAY */	TYPE_QUAL,

  /* C */
  /* RID_INT */		TYPESPEC,
  /* RID_CHAR */	TYPESPEC,
  /* RID_FLOAT */	TYPESPEC,
  /* RID_DOUBLE */	TYPESPEC,
  /* RID_VOID */	TYPESPEC,
  /* RID_ENUM */	ENUM,
  /* RID_STRUCT */	STRUCT,
  /* RID_UNION */	UNION,
  /* RID_IF */		IF,
  /* RID_ELSE */	ELSE,
  /* RID_WHILE */	WHILE,
  /* RID_DO */		DO,
  /* RID_FOR */		FOR,
  /* RID_SWITCH */	SWITCH,
  /* RID_CASE */	CASE,
  /* RID_DEFAULT */	DEFAULT,
  /* RID_BREAK */	BREAK,
  /* RID_CONTINUE */	CONTINUE,
  /* RID_RETURN */	RETURN,
  /* RID_GOTO */	GOTO,
  /* RID_SIZEOF */	SIZEOF,

  /* C extensions */
  /* RID_ASM */		ASM_KEYWORD,
  /* RID_TYPEOF */	TYPEOF,
  /* RID_ALIGNOF */	ALIGNOF,
  /* RID_ATTRIBUTE */	ATTRIBUTE,
  /* RID_VA_ARG */	VA_ARG,
  /* RID_EXTENSION */	EXTENSION,
  /* RID_IMAGPART */	IMAGPART,
  /* RID_REALPART */	REALPART,
  /* RID_LABEL */	LABEL,
  /* RID_PTRBASE */	PTR_BASE,
  /* RID_PTREXTENT */	PTR_EXTENT,
  /* RID_PTRVALUE */	PTR_VALUE,

  /* RID_CHOOSE_EXPR */			CHOOSE_EXPR,
  /* RID_TYPES_COMPATIBLE_P */		TYPES_COMPATIBLE_P,

  /* RID_FUNCTION_NAME */		STRING_FUNC_NAME,
  /* RID_PRETTY_FUNCTION_NAME */	STRING_FUNC_NAME,
  /* RID_C99_FUNCTION_NAME */		VAR_FUNC_NAME,

  /* C++ */
  /* RID_BOOL */	TYPESPEC,
  /* RID_WCHAR */	0,
  /* RID_CLASS */	0,
  /* RID_PUBLIC */	0,
  /* RID_PRIVATE */	0,
  /* RID_PROTECTED */	0,
  /* RID_TEMPLATE */	0,
  /* RID_NULL */	0,
  /* RID_CATCH */	0,
  /* RID_DELETE */	0,
  /* RID_FALSE */	0,
  /* RID_NAMESPACE */	0,
  /* RID_NEW */		0,
  /* RID_OPERATOR */	0,
  /* RID_THIS */	0,
  /* RID_THROW */	0,
  /* RID_TRUE */	0,
  /* RID_TRY */		0,
  /* RID_TYPENAME */	0,
  /* RID_TYPEID */	0,
  /* RID_USING */	0,

  /* casts */
  /* RID_CONSTCAST */	0,
  /* RID_DYNCAST */	0,
  /* RID_REINTCAST */	0,
  /* RID_STATCAST */	0,

  /* Objective C */
  /* RID_ID */			OBJECTNAME,
  /* RID_AT_ENCODE */		ENCODE,
  /* RID_AT_END */		END,
  /* RID_AT_CLASS */		CLASS,
  /* RID_AT_ALIAS */		ALIAS,
  /* RID_AT_DEFS */		DEFS,
  /* RID_AT_PRIVATE */		PRIVATE,
  /* RID_AT_PROTECTED */	PROTECTED,
  /* RID_AT_PUBLIC */		PUBLIC,
  /* RID_AT_PROTOCOL */		PROTOCOL,
  /* RID_AT_SELECTOR */		SELECTOR,
  /* RID_AT_INTERFACE */	INTERFACE,
  /* RID_AT_IMPLEMENTATION */	IMPLEMENTATION
};

static void
init_reswords ()
{
  unsigned int i;
  tree id;
  int mask = (flag_isoc99 ? 0 : D_C89)
	      | (flag_no_asm ? (flag_isoc99 ? D_EXT : D_EXT|D_EXT89) : 0);

  if (!flag_objc)
     mask |= D_OBJC;

  /* It is not necessary to register ridpointers as a GC root, because
     all the trees it points to are permanently interned in the
     get_identifier hash anyway.  */
  ridpointers = (tree *) xcalloc ((int) RID_MAX, sizeof (tree));
  for (i = 0; i < N_reswords; i++)
    {
      /* If a keyword is disabled, do not enter it into the table
	 and so create a canonical spelling that isn't a keyword.  */
      if (reswords[i].disable & mask)
	continue;

      id = get_identifier (reswords[i].word);
      C_RID_CODE (id) = reswords[i].rid;
      C_IS_RESERVED_WORD (id) = 1;
      ridpointers [(int) reswords[i].rid] = id;
    }
}

#define NAME(type) cpp_type2name (type)

static void
yyerror (msgid)
     const char *msgid;
{
  const char *string = _(msgid);

  if (last_token == CPP_EOF)
    error ("%s at end of input", string);
  else if (last_token == CPP_CHAR || last_token == CPP_WCHAR)
    {
      unsigned int val = TREE_INT_CST_LOW (yylval.ttype);
      const char *const ell = (last_token == CPP_CHAR) ? "" : "L";
      if (val <= UCHAR_MAX && ISGRAPH (val))
	error ("%s before %s'%c'", string, ell, val);
      else
	error ("%s before %s'\\x%x'", string, ell, val);
    }
  else if (last_token == CPP_STRING
	   || last_token == CPP_WSTRING)
    error ("%s before string constant", string);
  else if (last_token == CPP_NUMBER)
    error ("%s before numeric constant", string);
  else if (last_token == CPP_NAME)
    error ("%s before \"%s\"", string, IDENTIFIER_POINTER (yylval.ttype));
  else
    error ("%s before '%s' token", string, NAME(last_token));
}

static int
yylexname ()
{
  tree decl;


  if (C_IS_RESERVED_WORD (yylval.ttype))
    {
      enum rid rid_code = C_RID_CODE (yylval.ttype);

      {
	int yycode = rid_to_yy[(int) rid_code];
	if (yycode == STRING_FUNC_NAME)
	  {
	    /* __FUNCTION__ and __PRETTY_FUNCTION__ get converted
	       to string constants.  */
	    const char *name = fname_string (rid_code);

	    yylval.ttype = build_string (strlen (name) + 1, name);
	    C_ARTIFICIAL_STRING_P (yylval.ttype) = 1;
	    last_token = CPP_STRING;  /* so yyerror won't choke */
	    return STRING;
	  }

	/* Return the canonical spelling for this keyword.  */
	yylval.ttype = ridpointers[(int) rid_code];
	return yycode;
      }
    }

  decl = lookup_name (yylval.ttype);
  if (decl)
    {
      if (TREE_CODE (decl) == TYPE_DECL)
	return TYPENAME;
    }

  return IDENTIFIER;
}

/* Concatenate strings before returning them to the parser.  This isn't quite
   as good as having it done in the lexer, but it's better than nothing.  */

static int
yylexstring ()
{
  enum cpp_ttype next_type;
  tree orig = yylval.ttype;

  next_type = c_lex (&yylval.ttype);
  if (next_type == CPP_STRING
      || next_type == CPP_WSTRING
      || (next_type == CPP_NAME && yylexname () == STRING))
    {
      varray_type strings;

      static int last_lineno = 0;
      static const char *last_input_filename = 0;
      if (warn_traditional && !in_system_header
	  && (lineno != last_lineno || !last_input_filename ||
	      strcmp (last_input_filename, input_filename)))
	{
	  warning ("traditional C rejects string concatenation");
	  last_lineno = lineno;
	  last_input_filename = input_filename;
	}

      VARRAY_TREE_INIT (strings, 32, "strings");
      VARRAY_PUSH_TREE (strings, orig);

      do
	{
	  VARRAY_PUSH_TREE (strings, yylval.ttype);
	  next_type = c_lex (&yylval.ttype);
	}
      while (next_type == CPP_STRING
	     || next_type == CPP_WSTRING
	     || (next_type == CPP_NAME && yylexname () == STRING));

      yylval.ttype = combine_strings (strings);
    }
  else
    yylval.ttype = orig;

  /* We will have always read one token too many.  */
  _cpp_backup_tokens (parse_in, 1);

  return STRING;
}

extern bool in_omp_pragma;
extern bool seen_omp_paren;
static int
check_omp_string (char * s, bool * status)
{
  *status = true;

  if (!strcmp (s, "\n"))
  {
    in_omp_pragma = seen_omp_paren = FALSE;
    return '\n';
  }
  if ((!strcmp (s, "mips_frequency_hint") ||
       !strcmp (s, "frequency_hint")) && !seen_omp_paren)
    return PRAGMA_EXEC_FREQ;
  if (!strcasecmp (s, "never") && !seen_omp_paren)
    return FREQ_NEVER;
  if (!strcasecmp (s, "init") && !seen_omp_paren)
    return FREQ_INIT;
  if (!strcasecmp (s, "frequent") && !seen_omp_paren)
    return FREQ_FREQUENT;
  if (!strcmp (s, "options") && !seen_omp_paren)
    return PRAGMA_OPTIONS;
  if (!strcmp (s, "private") && !seen_omp_paren)
    return PRIVATE;
  if (!strcmp (s, "parallel") && !seen_omp_paren)
    return PARALLEL;
  if (!strcmp (s, "omp") && !seen_omp_paren)
    return PRAGMA_OMP;
  if (!strcmp (s, "copyprivate") && !seen_omp_paren)
    return COPYPRIVATE;
  if (!strcmp (s, "firstprivate") && !seen_omp_paren)
    return FIRSTPRIVATE;
  if (!strcmp (s, "lastprivate") && !seen_omp_paren)
    return LASTPRIVATE;
  if (!strcmp (s, "shared"))
    return SHARED;
  if (!strcmp (s, "none"))
    return NONE;
  if (!strcmp (s, "reduction") && !seen_omp_paren)
    return REDUCTION;
  if (!strcmp (s, "copyin") && !seen_omp_paren)
    return COPYIN;
  if (!strcmp (s, "static"))
  {
    fprintf (stderr,"NYI\n");
    abort();
  }
  if (!strcmp (s, "dynamic"))
    return DYNAMIC;
  if (!strcmp (s, "guided"))
    return GUIDED;
  if (!strcmp (s, "runtime"))
    return RUNTIME;
  if (!strcmp (s, "ordered"))
    return ORDERED;
  if (!strcmp (s, "schedule"))
    return SCHEDULE;
  if (!strcmp (s, "nowait"))
    return NOWAIT;
  if (!strcmp (s, "num_threads") && !seen_omp_paren)
    return NUM_THREADS;
  if (!strcmp (s, "sections") && !seen_omp_paren)
    return SECTIONS;
  if (!strcmp (s, "section"))
    return SECTION;
  if (!strcmp (s, "single"))
    return SINGLE;
  if (!strcmp (s, "master") && !seen_omp_paren)
    return MASTER;
  if (!strcmp (s, "critical") && !seen_omp_paren)
    return CRITICAL;
  if (!strcmp (s, "barrier") && !seen_omp_paren)
    return BARRIER;
  if (!strcmp (s, "atomic") && !seen_omp_paren)
    return ATOMIC;
  if (!strcmp (s, "flush") && !seen_omp_paren)
    return FLUSH;
  if (!strcmp (s, "threadprivate") && !seen_omp_paren)
    return THREADPRIVATE;

#ifdef TARG_SL2 //fork_joint
  if(!strcmp(s, "sl2") && !seen_omp_paren) 
  return PRAGMA_SL2;
  if(!strcmp(s, "sl2_major_sections") && !seen_omp_paren)
  return SL2_SECTIONS;
  if(!strcmp(s, "sl2_minor_sections") && !seen_omp_paren)
  return SL2_MINOR_SECTIONS;
  if(!strcmp(s, "sl2_major_section") && !seen_omp_paren)
  return SL2_SECTION;
  if(!strcmp(s, "sl2_minor_section") && !seen_omp_paren)
  return SL2_MINOR_SECTION;
#endif 

  // this must be last, return anything
  *status = false;
  return 0;
}

static inline int
_yylex ()
{
 get_next:
  last_token = c_lex (&yylval.ttype);
  switch (last_token)
    {
    case CPP_EQ:					return '=';
    case CPP_NOT:					return '!';
    case CPP_GREATER:	yylval.code = GT_EXPR;		return ARITHCOMPARE;
    case CPP_LESS:	yylval.code = LT_EXPR;		return ARITHCOMPARE;
    case CPP_PLUS:	yylval.code = PLUS_EXPR;	return '+';
    case CPP_MINUS:	yylval.code = MINUS_EXPR;	return '-';
    case CPP_MULT:	yylval.code = MULT_EXPR;	return '*';
    case CPP_DIV:	yylval.code = TRUNC_DIV_EXPR;	return '/';
    case CPP_MOD:	yylval.code = TRUNC_MOD_EXPR;	return '%';
    case CPP_AND:	yylval.code = BIT_AND_EXPR;	return '&';
    case CPP_OR:	yylval.code = BIT_IOR_EXPR;	return '|';
    case CPP_XOR:	yylval.code = BIT_XOR_EXPR;	return '^';
    case CPP_RSHIFT:	yylval.code = RSHIFT_EXPR;	return RSHIFT;
    case CPP_LSHIFT:	yylval.code = LSHIFT_EXPR;	return LSHIFT;

    case CPP_COMPL:					return '~';
    case CPP_AND_AND:					return ANDAND;
    case CPP_OR_OR:					return OROR;
    case CPP_QUERY:					return '?';
    case CPP_OPEN_PAREN:				return '(';
    case CPP_EQ_EQ:	yylval.code = EQ_EXPR;		return EQCOMPARE;
    case CPP_NOT_EQ:	yylval.code = NE_EXPR;		return EQCOMPARE;
    case CPP_GREATER_EQ:yylval.code = GE_EXPR;		return ARITHCOMPARE;
    case CPP_LESS_EQ:	yylval.code = LE_EXPR;		return ARITHCOMPARE;

    case CPP_PLUS_EQ:	yylval.code = PLUS_EXPR;	return ASSIGN;
    case CPP_MINUS_EQ:	yylval.code = MINUS_EXPR;	return ASSIGN;
    case CPP_MULT_EQ:	yylval.code = MULT_EXPR;	return ASSIGN;
    case CPP_DIV_EQ:	yylval.code = TRUNC_DIV_EXPR;	return ASSIGN;
    case CPP_MOD_EQ:	yylval.code = TRUNC_MOD_EXPR;	return ASSIGN;
    case CPP_AND_EQ:	yylval.code = BIT_AND_EXPR;	return ASSIGN;
    case CPP_OR_EQ:	yylval.code = BIT_IOR_EXPR;	return ASSIGN;
    case CPP_XOR_EQ:	yylval.code = BIT_XOR_EXPR;	return ASSIGN;
    case CPP_RSHIFT_EQ:	yylval.code = RSHIFT_EXPR;	return ASSIGN;
    case CPP_LSHIFT_EQ:	yylval.code = LSHIFT_EXPR;	return ASSIGN;

    case CPP_OPEN_SQUARE:				return '[';
    case CPP_CLOSE_SQUARE:				return ']';
    case CPP_OPEN_BRACE:				return '{';
    case CPP_CLOSE_BRACE:				return '}';
    case CPP_ELLIPSIS:					return ELLIPSIS;

    case CPP_PLUS_PLUS:					return PLUSPLUS;
    case CPP_MINUS_MINUS:				return MINUSMINUS;
    case CPP_DEREF:					return POINTSAT;
    case CPP_DOT:					return '.';

      /* The following tokens may affect the interpretation of any
	 identifiers following, if doing Objective-C.  */
    case CPP_COLON:		OBJC_NEED_RAW_IDENTIFIER (0);	return ':';
    case CPP_COMMA:		OBJC_NEED_RAW_IDENTIFIER (0);	return ',';
    case CPP_CLOSE_PAREN:	OBJC_NEED_RAW_IDENTIFIER (0);	return ')';
    case CPP_SEMICOLON:		OBJC_NEED_RAW_IDENTIFIER (0);	return ';';

    case CPP_EOF:
      return 0;

    case CPP_NAME:
      {
	int ret = yylexname ();
	if (ret == STRING)
	  return yylexstring ();
	else if (ret == IDENTIFIER && in_omp_pragma)
	{
          if (TREE_CODE (yylval.ttype) != IDENTIFIER_NODE) abort();
	  char * omp_name = IDENTIFIER_POINTER (yylval.ttype);
	  bool valid = false;
	  int code = check_omp_string (omp_name, &valid);
	  if (valid) return code;
	}
	return ret;
      }

    case CPP_NUMBER:
    case CPP_CHAR:
    case CPP_WCHAR:
      return CONSTANT;

    case CPP_STRING:
    case CPP_WSTRING:
      return yylexstring ();

      /* This token is Objective-C specific.  It gives the next token
	 special significance.  */
    case CPP_ATSIGN:

      /* These tokens are C++ specific (and will not be generated
         in C mode, but let's be cautious).  */
    case CPP_SCOPE:
    case CPP_DEREF_STAR:
    case CPP_DOT_STAR:
    case CPP_MIN_EQ:
    case CPP_MAX_EQ:
    case CPP_MIN:
    case CPP_MAX:
      /* These tokens should not survive translation phase 4.  */
    case CPP_HASH:
    case CPP_PASTE:
      error ("syntax error at '%s' token", NAME(last_token));
      goto get_next;

    default:
      abort ();
    }
  /* NOTREACHED */
}

static int
yylex()
{
  int r;
  timevar_push (TV_LEX);
  r = _yylex();
  timevar_pop (TV_LEX);
  return r;
}

/* Function used when yydebug is set, to print a token in more detail.  */

static void
yyprint (file, yychar, yyl)
     FILE *file;
     int yychar;
     YYSTYPE yyl;
{
  tree t = yyl.ttype;

  fprintf (file, " [%s]", NAME(last_token));

  switch (yychar)
    {
    case IDENTIFIER:
    case TYPENAME:
    case OBJECTNAME:
    case TYPESPEC:
    case TYPE_QUAL:
    case SCSPEC:
    case STATIC:
      if (IDENTIFIER_POINTER (t))
	fprintf (file, " `%s'", IDENTIFIER_POINTER (t));
      break;

    case CONSTANT:
      fprintf (file, " %s", GET_MODE_NAME (TYPE_MODE (TREE_TYPE (t))));
      if (TREE_CODE (t) == INTEGER_CST)
	fprintf (file,
#if HOST_BITS_PER_WIDE_INT == 64
#if HOST_BITS_PER_WIDE_INT == HOST_BITS_PER_INT
		 " 0x%x%016x",
#else
#if HOST_BITS_PER_WIDE_INT == HOST_BITS_PER_LONG
		 " 0x%lx%016lx",
#else
		 " 0x%llx%016llx",
#endif
#endif
#else
#if HOST_BITS_PER_WIDE_INT != HOST_BITS_PER_INT
		 " 0x%lx%08lx",
#else
		 " 0x%x%08x",
#endif
#endif
		 TREE_INT_CST_HIGH (t), TREE_INT_CST_LOW (t));
      break;
    }
}

/* This is not the ideal place to put these, but we have to get them out
   of c-lex.c because cp/lex.c has its own versions.  */

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

#include "gt-c-parse.h"

