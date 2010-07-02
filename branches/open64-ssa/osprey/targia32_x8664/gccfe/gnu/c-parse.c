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
     PRAGMA_UNROLL = 272,
     PRIVATE = 273,
     COPYPRIVATE = 274,
     FIRSTPRIVATE = 275,
     LASTPRIVATE = 276,
     SHARED = 277,
     DEFAULT = 278,
     NONE = 279,
     REDUCTION = 280,
     COPYIN = 281,
     DYNAMIC = 282,
     GUIDED = 283,
     RUNTIME = 284,
     ORDERED = 285,
     SCHEDULE = 286,
     NOWAIT = 287,
     PRAGMA_OMP = 288,
     PARALLEL = 289,
     NUM_THREADS = 290,
     SECTIONS = 291,
     SECTION = 292,
     SINGLE = 293,
     MASTER = 294,
     CRITICAL = 295,
     BARRIER = 296,
     ATOMIC = 297,
     FLUSH = 298,
     THREADPRIVATE = 299,
     SIZEOF = 300,
     ENUM = 301,
     STRUCT = 302,
     UNION = 303,
     IF = 304,
     ELSE = 305,
     WHILE = 306,
     DO = 307,
     FOR = 308,
     SWITCH = 309,
     CASE = 310,
     BREAK = 311,
     CONTINUE = 312,
     RETURN = 313,
     GOTO = 314,
     ASM_KEYWORD = 315,
     TYPEOF = 316,
     ALIGNOF = 317,
     ATTRIBUTE = 318,
     EXTENSION = 319,
     LABEL = 320,
     REALPART = 321,
     IMAGPART = 322,
     VA_ARG = 323,
     CHOOSE_EXPR = 324,
     TYPES_COMPATIBLE_P = 325,
     PTR_VALUE = 326,
     PTR_BASE = 327,
     PTR_EXTENT = 328,
     STRING_FUNC_NAME = 329,
     VAR_FUNC_NAME = 330,
     ASSIGN = 331,
     OROR = 332,
     ANDAND = 333,
     EQCOMPARE = 334,
     ARITHCOMPARE = 335,
     RSHIFT = 336,
     LSHIFT = 337,
     MINUSMINUS = 338,
     PLUSPLUS = 339,
     UNARY = 340,
     HYPERUNARY = 341,
     POINTSAT = 342,
     INTERFACE = 343,
     IMPLEMENTATION = 344,
     END = 345,
     SELECTOR = 346,
     DEFS = 347,
     ENCODE = 348,
     CLASSNAME = 349,
     PUBLIC = 350,
     PROTECTED = 351,
     PROTOCOL = 352,
     OBJECTNAME = 353,
     CLASS = 354,
     ALIAS = 355,
     SL2_SECTIONS = 356,
     SL2_MINOR_SECTIONS = 357,
     SL2_SECTION = 358,
     PRAGMA_SL2 = 359,
     SL2_MINOR_SECTION = 360
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
#define PRAGMA_UNROLL 272
#define PRIVATE 273
#define COPYPRIVATE 274
#define FIRSTPRIVATE 275
#define LASTPRIVATE 276
#define SHARED 277
#define DEFAULT 278
#define NONE 279
#define REDUCTION 280
#define COPYIN 281
#define DYNAMIC 282
#define GUIDED 283
#define RUNTIME 284
#define ORDERED 285
#define SCHEDULE 286
#define NOWAIT 287
#define PRAGMA_OMP 288
#define PARALLEL 289
#define NUM_THREADS 290
#define SECTIONS 291
#define SECTION 292
#define SINGLE 293
#define MASTER 294
#define CRITICAL 295
#define BARRIER 296
#define ATOMIC 297
#define FLUSH 298
#define THREADPRIVATE 299
#define SIZEOF 300
#define ENUM 301
#define STRUCT 302
#define UNION 303
#define IF 304
#define ELSE 305
#define WHILE 306
#define DO 307
#define FOR 308
#define SWITCH 309
#define CASE 310
#define BREAK 311
#define CONTINUE 312
#define RETURN 313
#define GOTO 314
#define ASM_KEYWORD 315
#define TYPEOF 316
#define ALIGNOF 317
#define ATTRIBUTE 318
#define EXTENSION 319
#define LABEL 320
#define REALPART 321
#define IMAGPART 322
#define VA_ARG 323
#define CHOOSE_EXPR 324
#define TYPES_COMPATIBLE_P 325
#define PTR_VALUE 326
#define PTR_BASE 327
#define PTR_EXTENT 328
#define STRING_FUNC_NAME 329
#define VAR_FUNC_NAME 330
#define ASSIGN 331
#define OROR 332
#define ANDAND 333
#define EQCOMPARE 334
#define ARITHCOMPARE 335
#define RSHIFT 336
#define LSHIFT 337
#define MINUSMINUS 338
#define PLUSPLUS 339
#define UNARY 340
#define HYPERUNARY 341
#define POINTSAT 342
#define INTERFACE 343
#define IMPLEMENTATION 344
#define END 345
#define SELECTOR 346
#define DEFS 347
#define ENCODE 348
#define CLASSNAME 349
#define PUBLIC 350
#define PROTECTED 351
#define PROTOCOL 352
#define OBJECTNAME 353
#define CLASS 354
#define ALIAS 355
#define SL2_SECTIONS 356
#define SL2_MINOR_SECTIONS 357
#define SL2_SECTION 358
#define PRAGMA_SL2 359
#define SL2_MINOR_SECTION 360




/* Copy the first part of user declarations.  */
#line 45 "../../../kgccfe/gnu/c-parse.y"

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

#if ! defined (YYSTYPE) && ! defined (YYSTYPE_IS_DECLARED)
#line 116 "../../../kgccfe/gnu/c-parse.y"
typedef union YYSTYPE {long itype; tree ttype; enum tree_code code;
	const char *filename; int lineno;
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
#line 376 "c-parse.c"
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */
#line 295 "../../../kgccfe/gnu/c-parse.y"

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



/* Line 219 of yacc.c.  */
#line 479 "c-parse.c"

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
#define YYLAST   4000

/* YYNTOKENS -- Number of terminals. */
#define YYNTOKENS  129
/* YYNNTS -- Number of nonterminals. */
#define YYNNTS  282
/* YYNRULES -- Number of rules. */
#define YYNRULES  740
/* YYNRULES -- Number of states. */
#define YYNSTATES  1295

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   360

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const unsigned char yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
     128,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   124,     2,     2,     2,    93,    84,     2,
      99,   120,    91,    89,   125,    90,    98,    92,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    79,   121,
       2,    76,     2,    78,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   100,     2,   127,    83,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   126,    82,   122,   123,     2,     2,     2,
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
      75,    77,    80,    81,    85,    86,    87,    88,    94,    95,
      96,    97,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const unsigned short int yyprhs[] =
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
    1570,  1574,  1579,  1581,  1583,  1585,  1589,  1591,  1593,  1595,
    1598,  1602,  1604,  1605,  1609,  1613,  1618,  1620,  1623,  1628,
    1633,  1638,  1643,  1648,  1653,  1658,  1665,  1670,  1671,  1675,
    1676,  1677,  1678,  1679,  1692,  1696,  1701,  1703,  1706,  1711,
    1716,  1721,  1728,  1733,  1740,  1742,  1744,  1746,  1748,  1750,
    1752,  1753,  1757,  1761,  1766,  1768,  1771,  1776,  1781,  1786,
    1793,  1795,  1796,  1801,  1803,  1805,  1808,  1810,  1812,  1815,
    1816,  1820,  1824,  1825,  1829,  1833,  1838,  1840,  1843,  1848,
    1853,  1858,  1860,  1861,  1865,  1870,  1876,  1878,  1881,  1886,
    1891,  1896,  1901,  1906,  1911,  1916,  1921,  1926,  1933,  1938,
    1943,  1950,  1952,  1953,  1957,  1962,  1968,  1970,  1973,  1978,
    1983,  1988,  1993,  1998,  2003,  2008,  2013,  2018,  2025,  2030,
    2031,  2035,  2039,  2040,  2044,  2048,  2055,  2057,  2061,  2065,
    2069,  2073,  2080,  2081,  2085,  2089,  2096,  2098,  2100,  2102,
    2104,  2106,  2108,  2110,  2112,  2114,  2118,  2120,  2122,  2124,
    2127,  2131,  2134,  2137,  2140,  2144,  2151,  2160,  2171,  2184,
    2188,  2193,  2195,  2199,  2205,  2208,  2214,  2215,  2217,  2218,
    2220,  2221,  2223,  2225,  2229,  2234,  2242,  2244,  2248,  2249,
    2253,  2256,  2257,  2258,  2265,  2268,  2269,  2271,  2273,  2277,
    2279,  2283,  2288,  2293,  2297,  2302,  2306,  2311,  2316,  2320,
    2325,  2329,  2331,  2332,  2336,  2338,  2341,  2343,  2347,  2349,
    2353
};

/* YYRHS -- A `-1'-separated list of the rules' RHS. */
static const short int yyrhs[] =
{
     130,     0,    -1,    -1,   131,    -1,    -1,   132,   134,    -1,
      -1,   131,   133,   134,    -1,   135,    -1,   137,    -1,   136,
      -1,    60,    99,   146,   120,   121,    -1,   410,   134,    -1,
     384,    -1,   320,    -1,   168,   202,   121,    -1,   188,   168,
     202,   121,    -1,   187,   168,   201,   121,    -1,   194,   121,
      -1,     1,   121,    -1,     1,   122,    -1,   121,    -1,    -1,
      -1,   187,   168,   231,   138,   162,   139,   291,   292,   280,
      -1,   187,   168,   231,     1,    -1,    -1,    -1,   188,   168,
     236,   140,   162,   141,   291,   292,   280,    -1,   188,   168,
     236,     1,    -1,    -1,    -1,   168,   236,   142,   162,   143,
     291,   292,   280,    -1,   168,   236,     1,    -1,     3,    -1,
       4,    -1,    84,    -1,    90,    -1,    89,    -1,    95,    -1,
      94,    -1,   123,    -1,   124,    -1,   148,    -1,    -1,   148,
      -1,   154,    -1,   148,   125,   154,    -1,   160,    -1,    91,
     153,    -1,   410,   153,    -1,   145,   153,    -1,    81,   144,
      -1,   150,   149,    -1,   150,    99,   257,   120,    -1,   151,
     149,    -1,   151,    99,   257,   120,    -1,    66,   153,    -1,
      67,   153,    -1,    45,    -1,    62,    -1,    61,    -1,   149,
      -1,    99,   257,   120,   153,    -1,   153,    -1,   154,    89,
     154,    -1,   154,    90,   154,    -1,   154,    91,   154,    -1,
     154,    92,   154,    -1,   154,    93,   154,    -1,   154,    88,
     154,    -1,   154,    87,   154,    -1,   154,    86,   154,    -1,
     154,    85,   154,    -1,   154,    84,   154,    -1,   154,    82,
     154,    -1,   154,    83,   154,    -1,    -1,   154,    81,   155,
     154,    -1,    -1,   154,    80,   156,   154,    -1,    -1,    -1,
     154,    78,   157,   146,    79,   158,   154,    -1,    -1,   154,
      78,   159,    79,   154,    -1,   154,    76,   154,    -1,   154,
      77,   154,    -1,     3,    -1,     9,    -1,    10,    -1,    75,
      -1,    -1,    99,   257,   120,   126,   161,   217,   122,    -1,
      99,   146,   120,    -1,    99,     1,   120,    -1,   284,   282,
     120,    -1,   284,     1,   120,    -1,   160,    99,   147,   120,
      -1,    68,    99,   154,   125,   257,   120,    -1,    69,    99,
     154,   125,   154,   125,   154,   120,    -1,    70,    99,   257,
     125,   257,   120,    -1,   160,   100,   146,   127,    -1,   160,
      98,   144,    -1,   160,   101,   144,    -1,   160,    95,    -1,
     160,    94,    -1,   163,    -1,    -1,   165,    -1,   291,   292,
     166,    -1,   164,    -1,   272,    -1,   165,   164,    -1,   164,
     272,    -1,   189,   168,   201,   121,    -1,   190,   168,   202,
     121,    -1,   189,   121,    -1,   190,   121,    -1,   291,   292,
     170,    -1,    -1,   208,    -1,   187,   168,   201,   121,    -1,
     188,   168,   202,   121,    -1,   187,   168,   225,    -1,   188,
     168,   228,    -1,   194,   121,    -1,   410,   170,    -1,     8,
      -1,   171,     8,    -1,   172,     8,    -1,   171,   209,    -1,
     173,     8,    -1,   174,     8,    -1,   209,    -1,   173,   209,
      -1,   196,    -1,   175,     8,    -1,   176,     8,    -1,   175,
     198,    -1,   176,   198,    -1,   171,   196,    -1,   172,   196,
      -1,   197,    -1,   175,   209,    -1,   175,   199,    -1,   176,
     199,    -1,   171,   197,    -1,   172,   197,    -1,   177,     8,
      -1,   178,     8,    -1,   177,   198,    -1,   178,   198,    -1,
     173,   196,    -1,   174,   196,    -1,   177,   209,    -1,   177,
     199,    -1,   178,   199,    -1,   173,   197,    -1,   174,   197,
      -1,   214,    -1,   179,     8,    -1,   180,     8,    -1,   171,
     214,    -1,   172,   214,    -1,   179,   214,    -1,   180,   214,
      -1,   179,   209,    -1,   181,     8,    -1,   182,     8,    -1,
     173,   214,    -1,   174,   214,    -1,   181,   214,    -1,   182,
     214,    -1,   181,   209,    -1,   183,     8,    -1,   184,     8,
      -1,   183,   198,    -1,   184,   198,    -1,   179,   196,    -1,
     180,   196,    -1,   175,   214,    -1,   176,   214,    -1,   183,
     214,    -1,   184,   214,    -1,   183,   209,    -1,   183,   199,
      -1,   184,   199,    -1,   179,   197,    -1,   180,   197,    -1,
     185,     8,    -1,   186,     8,    -1,   185,   198,    -1,   186,
     198,    -1,   181,   196,    -1,   182,   196,    -1,   177,   214,
      -1,   178,   214,    -1,   185,   214,    -1,   186,   214,    -1,
     185,   209,    -1,   185,   199,    -1,   186,   199,    -1,   181,
     197,    -1,   182,   197,    -1,   175,    -1,   176,    -1,   177,
      -1,   178,    -1,   183,    -1,   184,    -1,   185,    -1,   186,
      -1,   171,    -1,   172,    -1,   173,    -1,   174,    -1,   179,
      -1,   180,    -1,   181,    -1,   182,    -1,   175,    -1,   176,
      -1,   183,    -1,   184,    -1,   171,    -1,   172,    -1,   179,
      -1,   180,    -1,   175,    -1,   176,    -1,   177,    -1,   178,
      -1,   171,    -1,   172,    -1,   173,    -1,   174,    -1,   175,
      -1,   176,    -1,   177,    -1,   178,    -1,   171,    -1,   172,
      -1,   173,    -1,   174,    -1,   171,    -1,   172,    -1,   173,
      -1,   174,    -1,   175,    -1,   176,    -1,   177,    -1,   178,
      -1,   179,    -1,   180,    -1,   181,    -1,   182,    -1,   183,
      -1,   184,    -1,   185,    -1,   186,    -1,    -1,   192,    -1,
     198,    -1,   200,    -1,   199,    -1,     7,    -1,   245,    -1,
     240,    -1,     4,    -1,   152,    99,   146,   120,    -1,   152,
      99,   257,   120,    -1,   204,    -1,   201,   125,   169,   204,
      -1,   206,    -1,   202,   125,   169,   206,    -1,    -1,    60,
      99,    10,   120,    -1,    -1,   231,   203,   208,    76,   205,
     215,    -1,   231,   203,   208,    -1,    -1,   236,   203,   208,
      76,   207,   215,    -1,   236,   203,   208,    -1,    -1,   209,
      -1,   210,    -1,   209,   210,    -1,    63,    99,    99,   211,
     120,   120,    -1,   212,    -1,   211,   125,   212,    -1,    -1,
     213,    -1,   213,    99,     3,   120,    -1,   213,    99,     3,
     125,   148,   120,    -1,   213,    99,   147,   120,    -1,   144,
      -1,   214,    -1,     7,    -1,     8,    -1,     6,    -1,     5,
      -1,   154,    -1,    -1,   126,   216,   217,   122,    -1,     1,
      -1,    -1,   218,   246,    -1,   219,    -1,   218,   125,   219,
      -1,   223,    76,   221,    -1,   224,   221,    -1,    -1,   144,
      79,   220,   221,    -1,   221,    -1,    -1,   126,   222,   217,
     122,    -1,   154,    -1,     1,    -1,   224,    -1,   223,   224,
      -1,    98,   144,    -1,   100,   154,    11,   154,   127,    -1,
     100,   154,   127,    -1,    -1,    -1,   231,   226,   162,   227,
     291,   292,   285,    -1,    -1,    -1,   236,   229,   162,   230,
     291,   292,   285,    -1,   232,    -1,   236,    -1,    99,   208,
     232,   120,    -1,   232,    99,   405,    -1,   232,   265,    -1,
      91,   195,   232,    -1,     4,    -1,   234,    -1,   235,    -1,
     234,    99,   405,    -1,   234,   265,    -1,     4,    -1,   235,
      99,   405,    -1,   235,   265,    -1,    91,   195,   234,    -1,
      91,   195,   235,    -1,    99,   208,   235,   120,    -1,   236,
      99,   405,    -1,    99,   208,   236,   120,    -1,    91,   195,
     236,    -1,   236,   265,    -1,     3,    -1,    47,    -1,    47,
     209,    -1,    48,    -1,    48,   209,    -1,    46,    -1,    46,
     209,    -1,    -1,   237,   144,   126,   241,   248,   122,   208,
      -1,   237,   126,   248,   122,   208,    -1,    -1,   238,   144,
     126,   242,   248,   122,   208,    -1,   238,   126,   248,   122,
     208,    -1,    -1,   239,   144,   126,   243,   255,   247,   122,
     208,    -1,    -1,   239,   126,   244,   255,   247,   122,   208,
      -1,   237,   144,    -1,   238,   144,    -1,   239,   144,    -1,
      -1,   125,    -1,    -1,   125,    -1,   249,    -1,   249,   250,
      -1,    -1,   249,   250,   121,    -1,   249,   121,    -1,   191,
     168,   251,    -1,   191,   168,   291,   292,    -1,   192,   168,
     252,    -1,   192,    -1,     1,    -1,   410,   250,    -1,   253,
      -1,   251,   125,   169,   253,    -1,   254,    -1,   252,   125,
     169,   254,    -1,   291,   292,   231,   208,    -1,   291,   292,
     231,    79,   154,   208,    -1,   291,   292,    79,   154,   208,
      -1,   291,   292,   236,   208,    -1,   291,   292,   236,    79,
     154,   208,    -1,   291,   292,    79,   154,   208,    -1,   256,
      -1,   255,   125,   256,    -1,     1,    -1,   144,    -1,   144,
      76,   154,    -1,    -1,   193,   258,   259,    -1,    -1,   261,
      -1,    -1,   261,    -1,   262,   209,    -1,   263,    -1,   262,
      -1,   264,    -1,    91,   195,   262,    -1,    91,   195,    -1,
      91,   195,   263,    -1,    99,   208,   261,   120,    -1,   264,
      99,   395,    -1,   264,   265,    -1,    99,   395,    -1,   265,
      -1,   100,   195,   146,   127,    -1,   100,   195,   127,    -1,
     100,   195,    91,   127,    -1,   100,     6,   195,   146,   127,
      -1,   100,   192,     6,   146,   127,    -1,   267,    -1,   268,
      -1,   269,    -1,   270,    -1,   295,    -1,   267,   295,    -1,
     268,   295,    -1,   269,   295,    -1,   270,   295,    -1,   167,
      -1,   267,   167,    -1,   268,   167,    -1,   270,   167,    -1,
     296,    -1,   267,   296,    -1,   268,   296,    -1,   269,   296,
      -1,   270,   296,    -1,   272,    -1,   271,   272,    -1,   267,
      -1,   268,    -1,   269,    -1,   270,    -1,     1,   121,    -1,
      -1,    -1,    -1,    -1,    -1,   278,    -1,   279,    -1,   278,
     279,    -1,    65,   409,   121,    -1,   285,    -1,     1,   285,
      -1,   126,    -1,   122,    -1,   273,   277,   283,   122,   274,
      -1,   266,    -1,     1,    -1,    99,   126,    -1,   281,   282,
      -1,   287,   294,    -1,   287,     1,    -1,    -1,    49,   288,
      99,   146,   120,    -1,    -1,    52,   290,   294,    51,    -1,
      -1,    -1,   295,    -1,   296,   293,    -1,   275,   293,   276,
      -1,   291,   292,   387,    -1,   291,   292,   388,    -1,    -1,
     286,    50,   298,   294,    -1,   286,    -1,   286,    50,     1,
      -1,    -1,    -1,    51,   299,    99,   146,   120,   300,   294,
      -1,   289,    99,   146,   120,   121,    -1,   289,     1,    -1,
      -1,    -1,    -1,    -1,    53,   301,    99,   306,   302,   390,
     121,   303,   390,   120,   304,   294,    -1,    -1,    54,    99,
     146,   120,   305,   294,    -1,   390,   121,    -1,   170,    -1,
     326,    -1,   331,    -1,   342,    -1,   355,    -1,   360,    -1,
     365,    -1,   370,    -1,   373,    -1,   378,    -1,   381,    -1,
     308,    -1,    -1,   118,   115,   128,   309,   311,    -1,    -1,
     118,   116,   128,   310,   311,    -1,   126,   312,   122,    -1,
     314,    -1,   313,    -1,   313,   314,    -1,   325,    -1,   315,
      -1,   314,   315,    -1,    -1,   118,   117,   128,   316,   325,
      -1,    -1,   118,   119,   128,   317,   325,    -1,   377,    -1,
     380,    -1,   384,    -1,   319,    -1,   322,    -1,   324,    -1,
      12,    10,   128,    -1,    13,   321,     3,   128,    -1,    14,
      -1,    15,    -1,    16,    -1,    13,   323,   128,    -1,    14,
      -1,    15,    -1,    16,    -1,    17,   128,    -1,    17,     9,
     128,    -1,   387,    -1,    -1,   328,   327,   325,    -1,    33,
      34,   128,    -1,    33,    34,   329,   128,    -1,   330,    -1,
     329,   330,    -1,    49,    99,   154,   120,    -1,    35,    99,
     154,   120,    -1,    18,    99,   386,   120,    -1,    20,    99,
     386,   120,    -1,    22,    99,   386,   120,    -1,    23,    99,
      22,   120,    -1,    23,    99,    24,   120,    -1,    25,    99,
     385,    79,   386,   120,    -1,    26,    99,   386,   120,    -1,
      -1,   338,   332,   333,    -1,    -1,    -1,    -1,    -1,    53,
     334,    99,   306,   335,   390,   121,   336,   390,   120,   337,
     294,    -1,    33,    53,   128,    -1,    33,    53,   339,   128,
      -1,   340,    -1,   339,   340,    -1,    18,    99,   386,   120,
      -1,    20,    99,   386,   120,    -1,    21,    99,   386,   120,
      -1,    25,    99,   385,    79,   386,   120,    -1,    31,    99,
     341,   120,    -1,    31,    99,   341,   125,   154,   120,    -1,
      30,    -1,    32,    -1,     6,    -1,    27,    -1,    28,    -1,
      29,    -1,    -1,   344,   343,   347,    -1,    33,    36,   128,
      -1,    33,    36,   345,   128,    -1,   346,    -1,   345,   346,
      -1,    18,    99,   386,   120,    -1,    20,    99,   386,   120,
      -1,    21,    99,   386,   120,    -1,    25,    99,   385,    79,
     386,   120,    -1,    32,    -1,    -1,   126,   348,   349,   122,
      -1,   351,    -1,   350,    -1,   350,   351,    -1,   325,    -1,
     352,    -1,   351,   352,    -1,    -1,   354,   353,   325,    -1,
      33,    37,   128,    -1,    -1,   357,   356,   325,    -1,    33,
      38,   128,    -1,    33,    38,   358,   128,    -1,   359,    -1,
     358,   359,    -1,    18,    99,   386,   120,    -1,    20,    99,
     386,   120,    -1,    19,    99,   386,   120,    -1,    32,    -1,
      -1,   362,   361,   333,    -1,    33,    34,    53,   128,    -1,
      33,    34,    53,   363,   128,    -1,   364,    -1,   363,   364,
      -1,    49,    99,   154,   120,    -1,    35,    99,   154,   120,
      -1,    18,    99,   386,   120,    -1,    19,    99,   386,   120,
      -1,    20,    99,   386,   120,    -1,    21,    99,   386,   120,
      -1,    22,    99,   386,   120,    -1,    23,    99,    22,   120,
      -1,    23,    99,    24,   120,    -1,    25,    99,   385,    79,
     386,   120,    -1,    26,    99,   386,   120,    -1,    31,    99,
     341,   120,    -1,    31,    99,   341,   125,   154,   120,    -1,
      30,    -1,    -1,   367,   366,   347,    -1,    33,    34,    36,
     128,    -1,    33,    34,    36,   368,   128,    -1,   369,    -1,
     368,   369,    -1,    49,    99,   154,   120,    -1,    35,    99,
     154,   120,    -1,    18,    99,   386,   120,    -1,    19,    99,
     386,   120,    -1,    20,    99,   386,   120,    -1,    21,    99,
     386,   120,    -1,    22,    99,   386,   120,    -1,    23,    99,
      22,   120,    -1,    23,    99,    24,   120,    -1,    25,    99,
     385,    79,   386,   120,    -1,    26,    99,   386,   120,    -1,
      -1,   372,   371,   325,    -1,    33,    39,   128,    -1,    -1,
     375,   374,   325,    -1,    33,    40,   128,    -1,    33,    40,
      99,   376,   120,   128,    -1,     3,    -1,    33,    41,   128,
      -1,   379,   154,   121,    -1,    33,    42,   128,    -1,    33,
      43,   128,    -1,    33,    43,    99,   386,   120,   128,    -1,
      -1,   383,   382,   325,    -1,    33,    30,   128,    -1,    33,
      44,    99,   386,   120,   128,    -1,    89,    -1,    91,    -1,
      90,    -1,    84,    -1,    83,    -1,    82,    -1,    81,    -1,
      80,    -1,     3,    -1,   386,   125,     3,    -1,   318,    -1,
     307,    -1,   285,    -1,   146,   121,    -1,   275,   297,   276,
      -1,    56,   121,    -1,    57,   121,    -1,    58,   121,    -1,
      58,   146,   121,    -1,    60,   389,    99,   146,   120,   121,
      -1,    60,   389,    99,   146,    79,   391,   120,   121,    -1,
      60,   389,    99,   146,    79,   391,    79,   391,   120,   121,
      -1,    60,   389,    99,   146,    79,   391,    79,   391,    79,
     394,   120,   121,    -1,    59,   144,   121,    -1,    59,    91,
     146,   121,    -1,   121,    -1,    55,   154,    79,    -1,    55,
     154,    11,   154,    79,    -1,    23,    79,    -1,   144,   291,
     292,    79,   208,    -1,    -1,     8,    -1,    -1,   146,    -1,
      -1,   392,    -1,   393,    -1,   392,   125,   393,    -1,    10,
      99,   146,   120,    -1,   100,   144,   127,    10,    99,   146,
     120,    -1,    10,    -1,   394,   125,    10,    -1,    -1,   208,
     396,   397,    -1,   400,   120,    -1,    -1,    -1,   401,   121,
     398,   208,   399,   397,    -1,     1,   120,    -1,    -1,    11,
      -1,   401,    -1,   401,   125,    11,    -1,   403,    -1,   401,
     125,   402,    -1,   187,   168,   233,   208,    -1,   187,   168,
     236,   208,    -1,   187,   168,   260,    -1,   188,   168,   236,
     208,    -1,   188,   168,   260,    -1,   189,   404,   233,   208,
      -1,   189,   404,   236,   208,    -1,   189,   404,   260,    -1,
     190,   404,   236,   208,    -1,   190,   404,   260,    -1,   168,
      -1,    -1,   208,   406,   407,    -1,   397,    -1,   408,   120,
      -1,     3,    -1,   408,   125,     3,    -1,   144,    -1,   409,
     125,   144,    -1,    64,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   389,   389,   393,   412,   412,   413,   413,   417,   422,
     423,   424,   432,   434,   435,   440,   447,   449,   451,   453,
     454,   455,   462,   467,   461,   473,   476,   481,   475,   487,
     490,   495,   489,   501,   506,   507,   510,   512,   514,   519,
     521,   523,   525,   529,   535,   536,   540,   542,   547,   548,
     551,   554,   558,   560,   566,   569,   572,   575,   577,   582,
     586,   590,   594,   595,   600,   601,   603,   605,   607,   609,
     611,   613,   615,   617,   619,   621,   623,   626,   625,   633,
     632,   640,   644,   639,   650,   649,   660,   667,   679,   685,
     686,   688,   691,   690,   703,   708,   710,   726,   733,   735,
     738,   748,   758,   760,   764,   770,   772,   778,   786,   792,
     799,   804,   805,   806,   807,   815,   817,   819,   822,   831,
     840,   850,   855,   857,   859,   861,   863,   865,   922,   925,
     928,   934,   940,   943,   949,   952,   958,   961,   964,   967,
     970,   973,   976,   982,   985,   988,   991,   994,   997,  1003,
    1006,  1009,  1012,  1015,  1018,  1024,  1027,  1030,  1033,  1036,
    1042,  1045,  1048,  1051,  1057,  1063,  1069,  1078,  1084,  1087,
    1090,  1096,  1102,  1108,  1117,  1123,  1126,  1129,  1132,  1135,
    1138,  1141,  1147,  1153,  1159,  1168,  1171,  1174,  1177,  1180,
    1186,  1189,  1192,  1195,  1198,  1201,  1204,  1210,  1216,  1222,
    1231,  1234,  1237,  1240,  1243,  1250,  1251,  1252,  1253,  1254,
    1255,  1256,  1257,  1261,  1262,  1263,  1264,  1265,  1266,  1267,
    1268,  1272,  1273,  1274,  1275,  1279,  1280,  1281,  1282,  1286,
    1287,  1288,  1289,  1293,  1294,  1295,  1296,  1300,  1301,  1302,
    1303,  1304,  1305,  1306,  1307,  1311,  1312,  1313,  1314,  1315,
    1316,  1317,  1318,  1319,  1320,  1321,  1322,  1323,  1324,  1325,
    1326,  1332,  1333,  1359,  1360,  1364,  1368,  1370,  1374,  1378,
    1382,  1384,  1391,  1392,  1396,  1397,  1402,  1403,  1409,  1408,
    1419,  1430,  1429,  1440,  1452,  1453,  1458,  1460,  1465,  1470,
    1472,  1478,  1479,  1481,  1483,  1485,  1493,  1494,  1495,  1496,
    1500,  1501,  1507,  1509,  1508,  1512,  1519,  1521,  1525,  1526,
    1532,  1535,  1539,  1538,  1544,  1549,  1548,  1552,  1554,  1558,
    1559,  1563,  1565,  1569,  1575,  1588,  1574,  1606,  1619,  1605,
    1639,  1640,  1646,  1648,  1653,  1655,  1657,  1665,  1666,  1670,
    1675,  1677,  1681,  1686,  1688,  1690,  1692,  1700,  1705,  1707,
    1709,  1711,  1715,  1717,  1722,  1724,  1729,  1731,  1743,  1742,
    1748,  1753,  1752,  1756,  1761,  1760,  1766,  1765,  1773,  1775,
    1777,  1785,  1787,  1790,  1792,  1798,  1800,  1806,  1807,  1809,
    1815,  1818,  1828,  1831,  1836,  1838,  1844,  1845,  1850,  1851,
    1856,  1859,  1863,  1869,  1872,  1876,  1887,  1888,  1893,  1899,
    1901,  1907,  1906,  1915,  1916,  1921,  1924,  1928,  1935,  1936,
    1940,  1941,  1946,  1948,  1953,  1955,  1957,  1959,  1961,  1968,
    1970,  1972,  1974,  1977,  1988,  1989,  1990,  1994,  1998,  1999,
    2000,  2001,  2002,  2006,  2007,  2013,  2014,  2018,  2019,  2020,
    2021,  2022,  2026,  2027,  2031,  2032,  2033,  2034,  2037,  2041,
    2048,  2053,  2069,  2083,  2085,  2091,  2092,  2096,  2110,  2112,
    2115,  2119,  2121,  2129,  2130,  2134,  2151,  2159,  2164,  2177,
    2176,  2191,  2190,  2210,  2216,  2222,  2223,  2228,  2234,  2248,
    2258,  2257,  2265,  2277,  2288,  2291,  2287,  2297,  2300,  2303,
    2307,  2310,  2314,  2302,  2318,  2317,  2325,  2327,  2334,  2335,
    2336,  2337,  2338,  2339,  2340,  2341,  2342,  2343,  2344,  2349,
    2348,  2362,  2361,  2377,  2383,  2384,  2385,  2389,  2393,  2394,
    2399,  2398,  2414,  2413,  2432,  2433,  2434,  2436,  2437,  2438,
    2442,  2448,  2453,  2453,  2453,  2457,  2462,  2463,  2464,  2468,
    2470,  2475,  2480,  2479,  2510,  2512,  2517,  2519,  2524,  2526,
    2528,  2530,  2532,  2534,  2536,  2538,  2540,  2546,  2545,  2558,
    2563,  2566,  2570,  2557,  2576,  2578,  2583,  2585,  2590,  2592,
    2594,  2596,  2598,  2600,  2602,  2604,  2609,  2615,  2617,  2619,
    2626,  2625,  2635,  2637,  2642,  2644,  2649,  2651,  2653,  2655,
    2657,  2664,  2663,  2672,  2673,  2674,  2678,  2686,  2687,  2692,
    2691,  2705,  2710,  2709,  2719,  2721,  2726,  2728,  2733,  2735,
    2737,  2739,  2745,  2744,  2775,  2777,  2782,  2784,  2789,  2791,
    2793,  2795,  2797,  2799,  2801,  2803,  2805,  2807,  2809,  2811,
    2813,  2815,  2821,  2820,  2851,  2853,  2858,  2860,  2865,  2867,
    2869,  2871,  2873,  2875,  2877,  2879,  2881,  2883,  2885,  2891,
    2890,  2897,  2902,  2901,  2908,  2910,  2915,  2920,  2925,  2933,
    2937,  2940,  2946,  2945,  2952,  2956,  2961,  2963,  2965,  2967,
    2969,  2971,  2973,  2975,  2980,  2986,  2999,  3000,  3001,  3003,
    3006,  3010,  3013,  3016,  3019,  3022,  3026,  3030,  3035,  3039,
    3051,  3057,  3065,  3068,  3071,  3074,  3091,  3093,  3099,  3100,
    3106,  3107,  3111,  3112,  3117,  3119,  3126,  3128,  3139,  3138,
    3149,  3151,  3159,  3150,  3163,  3170,  3171,  3181,  3185,  3190,
    3192,  3199,  3204,  3209,  3212,  3218,  3226,  3231,  3236,  3239,
    3245,  3251,  3261,  3260,  3271,  3272,  3290,  3292,  3298,  3300,
    3305
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals. */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPENAME", "SCSPEC",
  "STATIC", "TYPESPEC", "TYPE_QUAL", "CONSTANT", "STRING", "ELLIPSIS",
  "PRAGMA_OPTIONS", "PRAGMA_EXEC_FREQ", "FREQ_NEVER", "FREQ_INIT",
  "FREQ_FREQUENT", "PRAGMA_UNROLL", "PRIVATE", "COPYPRIVATE",
  "FIRSTPRIVATE", "LASTPRIVATE", "SHARED", "DEFAULT", "NONE", "REDUCTION",
  "COPYIN", "DYNAMIC", "GUIDED", "RUNTIME", "ORDERED", "SCHEDULE",
  "NOWAIT", "PRAGMA_OMP", "PARALLEL", "NUM_THREADS", "SECTIONS", "SECTION",
  "SINGLE", "MASTER", "CRITICAL", "BARRIER", "ATOMIC", "FLUSH",
  "THREADPRIVATE", "SIZEOF", "ENUM", "STRUCT", "UNION", "IF", "ELSE",
  "WHILE", "DO", "FOR", "SWITCH", "CASE", "BREAK", "CONTINUE", "RETURN",
  "GOTO", "ASM_KEYWORD", "TYPEOF", "ALIGNOF", "ATTRIBUTE", "EXTENSION",
  "LABEL", "REALPART", "IMAGPART", "VA_ARG", "CHOOSE_EXPR",
  "TYPES_COMPATIBLE_P", "PTR_VALUE", "PTR_BASE", "PTR_EXTENT",
  "STRING_FUNC_NAME", "VAR_FUNC_NAME", "'='", "ASSIGN", "'?'", "':'",
  "OROR", "ANDAND", "'|'", "'^'", "'&'", "EQCOMPARE", "ARITHCOMPARE",
  "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'", "'%'", "MINUSMINUS",
  "PLUSPLUS", "UNARY", "HYPERUNARY", "'.'", "'('", "'['", "POINTSAT",
  "INTERFACE", "IMPLEMENTATION", "END", "SELECTOR", "DEFS", "ENCODE",
  "CLASSNAME", "PUBLIC", "PROTECTED", "PROTOCOL", "OBJECTNAME", "CLASS",
  "ALIAS", "SL2_SECTIONS", "SL2_MINOR_SECTIONS", "SL2_SECTION",
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
  "unroll_directive", "structured_block", "parallel_construct", "@43",
  "parallel_directive", "parallel_clause_list", "parallel_clause",
  "for_construct", "@44", "iteration_statement", "@45", "@46", "@47",
  "@48", "for_directive", "for_clause_list", "for_clause", "schedule_kind",
  "sections_construct", "@49", "sections_directive",
  "sections_clause_list", "sections_clause", "section_scope", "@50",
  "maybe_section_sequence", "maybe_structured_block", "section_sequence",
  "section_construct", "@51", "section_directive", "single_construct",
  "@52", "single_directive", "single_clause_list", "single_clause",
  "parallel_for_construct", "@53", "parallel_for_directive",
  "parallel_for_clause_list", "parallel_for_clause",
  "parallel_sections_construct", "@54", "parallel_sections_directive",
  "parallel_sections_clause_list", "parallel_sections_clause",
  "master_construct", "@55", "master_directive", "critical_construct",
  "@56", "critical_directive", "region_phrase", "barrier_directive",
  "atomic_construct", "atomic_directive", "flush_directive",
  "ordered_construct", "@57", "ordered_directive",
  "threadprivate_directive", "reduction_operator", "variable_list", "stmt",
  "label", "maybe_type_qual", "xexpr", "asm_operands",
  "nonnull_asm_operands", "asm_operand", "asm_clobbers", "parmlist", "@58",
  "parmlist_1", "@59", "@60", "parmlist_2", "parms", "parm", "firstparm",
  "setspecs_fp", "parmlist_or_identifiers", "@61",
  "parmlist_or_identifiers_1", "identifiers", "identifiers_or_typenames",
  "extension", 0
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
     325,   326,   327,   328,   329,   330,    61,   331,    63,    58,
     332,   333,   124,    94,    38,   334,   335,   336,   337,    43,
      45,    42,    47,    37,   338,   339,   340,   341,    46,    40,
      91,   342,   343,   344,   345,   346,   347,   348,   349,   350,
     351,   352,   353,   354,   355,   356,   357,   358,   359,   360,
      41,    59,   125,   126,    33,    44,   123,    93,    10
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const unsigned short int yyr1[] =
{
       0,   129,   130,   130,   132,   131,   133,   131,   134,   135,
     135,   135,   135,   135,   135,   136,   136,   136,   136,   136,
     136,   136,   138,   139,   137,   137,   140,   141,   137,   137,
     142,   143,   137,   137,   144,   144,   145,   145,   145,   145,
     145,   145,   145,   146,   147,   147,   148,   148,   149,   149,
     149,   149,   149,   149,   149,   149,   149,   149,   149,   150,
     151,   152,   153,   153,   154,   154,   154,   154,   154,   154,
     154,   154,   154,   154,   154,   154,   154,   155,   154,   156,
     154,   157,   158,   154,   159,   154,   154,   154,   160,   160,
     160,   160,   161,   160,   160,   160,   160,   160,   160,   160,
     160,   160,   160,   160,   160,   160,   160,   162,   163,   163,
     164,   165,   165,   165,   165,   166,   166,   166,   166,   167,
     168,   169,   170,   170,   170,   170,   170,   170,   171,   171,
     171,   172,   173,   173,   174,   174,   175,   175,   175,   175,
     175,   175,   175,   176,   176,   176,   176,   176,   176,   177,
     177,   177,   177,   177,   177,   178,   178,   178,   178,   178,
     179,   179,   179,   179,   179,   179,   179,   180,   181,   181,
     181,   181,   181,   181,   182,   183,   183,   183,   183,   183,
     183,   183,   183,   183,   183,   184,   184,   184,   184,   184,
     185,   185,   185,   185,   185,   185,   185,   185,   185,   185,
     186,   186,   186,   186,   186,   187,   187,   187,   187,   187,
     187,   187,   187,   188,   188,   188,   188,   188,   188,   188,
     188,   189,   189,   189,   189,   190,   190,   190,   190,   191,
     191,   191,   191,   192,   192,   192,   192,   193,   193,   193,
     193,   193,   193,   193,   193,   194,   194,   194,   194,   194,
     194,   194,   194,   194,   194,   194,   194,   194,   194,   194,
     194,   195,   195,   196,   196,   197,   198,   198,   199,   200,
     200,   200,   201,   201,   202,   202,   203,   203,   205,   204,
     204,   207,   206,   206,   208,   208,   209,   209,   210,   211,
     211,   212,   212,   212,   212,   212,   213,   213,   213,   213,
     214,   214,   215,   216,   215,   215,   217,   217,   218,   218,
     219,   219,   220,   219,   219,   222,   221,   221,   221,   223,
     223,   224,   224,   224,   226,   227,   225,   229,   230,   228,
     231,   231,   232,   232,   232,   232,   232,   233,   233,   234,
     234,   234,   235,   235,   235,   235,   235,   236,   236,   236,
     236,   236,   237,   237,   238,   238,   239,   239,   241,   240,
     240,   242,   240,   240,   243,   240,   244,   240,   245,   245,
     245,   246,   246,   247,   247,   248,   248,   249,   249,   249,
     250,   250,   250,   250,   250,   250,   251,   251,   252,   252,
     253,   253,   253,   254,   254,   254,   255,   255,   255,   256,
     256,   258,   257,   259,   259,   260,   260,   260,   261,   261,
     262,   262,   263,   263,   264,   264,   264,   264,   264,   265,
     265,   265,   265,   265,   266,   266,   266,   266,   267,   267,
     267,   267,   267,   268,   268,   268,   268,   269,   269,   269,
     269,   269,   270,   270,   271,   271,   271,   271,   272,   273,
     274,   275,   276,   277,   277,   278,   278,   279,   280,   280,
     281,   282,   282,   283,   283,   284,   285,   286,   286,   288,
     287,   290,   289,   291,   292,   293,   293,   294,   295,   296,
     298,   297,   297,   297,   299,   300,   297,   297,   297,   301,
     302,   303,   304,   297,   305,   297,   306,   306,   307,   307,
     307,   307,   307,   307,   307,   307,   307,   307,   307,   309,
     308,   310,   308,   311,   312,   312,   312,   313,   314,   314,
     316,   315,   317,   315,   318,   318,   318,   318,   318,   318,
     319,   320,   321,   321,   321,   322,   323,   323,   323,   324,
     324,   325,   327,   326,   328,   328,   329,   329,   330,   330,
     330,   330,   330,   330,   330,   330,   330,   332,   331,   334,
     335,   336,   337,   333,   338,   338,   339,   339,   340,   340,
     340,   340,   340,   340,   340,   340,   341,   341,   341,   341,
     343,   342,   344,   344,   345,   345,   346,   346,   346,   346,
     346,   348,   347,   349,   349,   349,   350,   351,   351,   353,
     352,   354,   356,   355,   357,   357,   358,   358,   359,   359,
     359,   359,   361,   360,   362,   362,   363,   363,   364,   364,
     364,   364,   364,   364,   364,   364,   364,   364,   364,   364,
     364,   364,   366,   365,   367,   367,   368,   368,   369,   369,
     369,   369,   369,   369,   369,   369,   369,   369,   369,   371,
     370,   372,   374,   373,   375,   375,   376,   377,   378,   379,
     380,   380,   382,   381,   383,   384,   385,   385,   385,   385,
     385,   385,   385,   385,   386,   386,   387,   387,   387,   387,
     387,   387,   387,   387,   387,   387,   387,   387,   387,   387,
     387,   387,   388,   388,   388,   388,   389,   389,   390,   390,
     391,   391,   392,   392,   393,   393,   394,   394,   396,   395,
     397,   398,   399,   397,   397,   400,   400,   400,   400,   401,
     401,   402,   402,   402,   402,   402,   403,   403,   403,   403,
     403,   404,   406,   405,   407,   407,   408,   408,   409,   409,
     410
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const unsigned char yyr2[] =
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
       0,     5,     0,     5,     1,     1,     1,     1,     1,     1,
       3,     4,     1,     1,     1,     3,     1,     1,     1,     2,
       3,     1,     0,     3,     3,     4,     1,     2,     4,     4,
       4,     4,     4,     4,     4,     6,     4,     0,     3,     0,
       0,     0,     0,    12,     3,     4,     1,     2,     4,     4,
       4,     6,     4,     6,     1,     1,     1,     1,     1,     1,
       0,     3,     3,     4,     1,     2,     4,     4,     4,     6,
       1,     0,     4,     1,     1,     2,     1,     1,     2,     0,
       3,     3,     0,     3,     3,     4,     1,     2,     4,     4,
       4,     1,     0,     3,     4,     5,     1,     2,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     6,     4,     4,
       6,     1,     0,     3,     4,     5,     1,     2,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     6,     4,     0,
       3,     3,     0,     3,     3,     6,     1,     3,     3,     3,
       3,     6,     0,     3,     3,     6,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     1,     1,     2,
       3,     2,     2,     2,     3,     6,     8,    10,    12,     3,
       4,     1,     3,     5,     2,     5,     0,     1,     0,     1,
       0,     1,     1,     3,     4,     7,     1,     3,     0,     3,
       2,     0,     0,     6,     2,     0,     1,     1,     3,     1,
       3,     4,     4,     3,     4,     3,     4,     4,     3,     4,
       3,     1,     0,     3,     1,     2,     1,     3,     1,     3,
       1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const unsigned short int yydefact[] =
{
       4,     0,     6,     0,     1,     0,     0,   269,   301,   300,
     266,   128,     0,     0,   356,   352,   354,     0,    61,     0,
     740,    21,     5,     8,    10,     9,     0,     0,   213,   214,
     215,   216,   205,   206,   207,   208,   217,   218,   219,   220,
     209,   210,   211,   212,   120,   120,     0,   136,   143,   263,
     265,   264,   134,   286,   160,     0,     0,     0,   268,   267,
      14,    13,     0,     7,    19,    20,   532,   533,   534,     0,
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
       0,     0,     0,   358,     0,   361,     0,   364,   531,   674,
       0,    57,    58,     0,     0,     0,    52,    49,     0,   465,
       0,     0,    51,     0,     0,     0,    53,     0,    55,     0,
       0,    81,    79,    77,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   106,   105,     0,    44,
       0,     0,     0,   461,   453,     0,    50,   298,   299,   296,
       0,   289,   292,   297,   270,   403,   271,   349,     0,     0,
     121,     0,   732,   347,   261,   262,     0,     0,    31,   107,
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
       0,   363,     0,     0,   374,     0,   373,   665,   675,     0,
       0,     0,    92,    63,    54,    56,     0,     0,    80,    78,
      98,   102,   738,     0,   464,   433,   463,   473,   473,   473,
     473,     0,   442,     0,   474,   428,   437,   456,   288,   290,
      88,     0,   412,   708,   417,   284,   416,   277,     0,   736,
     716,   225,   226,   221,   222,   227,   228,   223,   224,   120,
     120,   734,     0,   717,   719,   733,     0,     0,     0,   421,
     419,   474,   110,   120,   120,     0,   332,   273,   276,   473,
     278,   473,   380,   386,   474,   382,   388,   474,   284,   284,
     400,   397,   284,     0,     0,     0,     0,     0,    82,    85,
     457,     0,   434,   429,   438,   435,   430,   439,   474,   431,
     440,   436,   432,   441,   443,   450,   451,   293,     0,   295,
     411,   413,     0,     0,   708,   415,   714,   731,   405,   405,
     710,   711,     0,   735,     0,   422,   423,     0,   117,     0,
     118,     0,   305,   303,   302,   282,   474,     0,   474,   284,
     381,   284,     0,   359,   362,   367,   284,    99,     0,   101,
     318,    88,     0,     0,   315,     0,   317,     0,   371,   308,
     314,     0,     0,     0,   739,   451,   462,   269,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   696,     0,
     691,   460,   473,     0,   119,   120,   120,     0,     0,   449,
     678,   677,   508,   676,   527,   528,   529,   498,   542,   499,
     557,   500,   580,   501,   602,   502,   612,   503,   632,   504,
     649,   505,   652,   524,   506,     0,   525,   507,   662,   526,
     478,   479,     0,     0,   414,   709,   341,   261,   284,   284,
     337,   338,   284,   728,   406,   409,   261,   284,   284,   730,
     284,   718,   213,   214,   215,   216,   205,   206,   207,   208,
     217,   218,   219,   220,   209,   210,   211,   212,   120,   120,
     720,   737,     0,    32,   458,     0,     0,     0,     0,   279,
       0,   473,     0,   284,   473,     0,   284,   365,     0,   321,
       0,     0,   312,    93,     0,   307,     0,   320,   311,    83,
       0,   536,   537,   538,     0,     0,   539,   694,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   681,
     682,   683,     0,     0,     0,   697,     0,     0,     0,   474,
     679,     0,     0,   126,   469,   484,   471,   489,     0,   482,
       0,     0,   452,   466,   451,     0,     0,   451,     0,     0,
     451,   451,     0,   451,   127,   294,   412,   708,   726,   284,
     340,   284,   343,   727,   407,   412,   708,   729,   712,   405,
     405,   459,   115,   116,     0,    24,    28,   387,   474,   284,
       0,   390,   389,   284,     0,   393,   100,     0,   323,     0,
       0,   309,   310,   530,   535,   540,   664,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   544,     0,   546,
       0,     0,     0,     0,   590,   582,     0,   584,     0,     0,
       0,   611,   604,     0,   606,   651,     0,   654,   657,   659,
       0,   660,     0,     0,     0,     0,   574,     0,   575,   564,
       0,   566,     0,   692,   684,     0,   689,     0,   509,   511,
       0,     0,   124,   324,     0,   125,   327,     0,     0,   451,
       0,     0,     0,   468,   473,   467,   488,     0,   680,   543,
     541,   559,   558,   591,   581,   603,   613,   633,   650,   653,
     658,   663,   344,   345,     0,   339,   342,     0,   284,   284,
     723,   284,   725,   304,     0,   392,   284,   395,   284,     0,
     316,   313,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   634,
       0,   636,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   631,     0,     0,     0,   614,     0,   616,   545,   547,
       0,     0,     0,     0,   583,   585,     0,     0,     0,   605,
     607,   656,     0,     0,     0,     0,     0,     0,     0,   565,
     567,     0,   690,     0,     0,     0,   284,   122,     0,   123,
       0,     0,     0,     0,   698,     0,   483,   451,   452,   475,
     473,     0,     0,   451,   346,   713,   721,   722,   724,   391,
     394,   322,     0,     0,     0,     0,     0,   673,   672,   671,
     670,   669,   666,   668,   667,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   635,   637,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   615,   617,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   576,   577,   578,
     579,     0,   693,   700,     0,   451,   510,   512,   695,   325,
     328,     0,     0,   472,   699,   497,   490,     0,   494,   481,
     477,   476,     0,   698,     0,   596,     0,   594,   593,   597,
     599,   550,   551,   552,   553,   554,     0,   556,   549,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     548,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   586,   587,   588,     0,   608,   610,   609,
     655,   661,   568,   569,   570,     0,   572,     0,     0,     0,
       0,   701,   702,   685,     0,     0,   515,   514,   518,   517,
     473,   473,   470,   485,   698,   496,   451,   487,   560,     0,
     592,     0,   595,   598,   451,     0,   640,   641,   642,   643,
     644,   645,   646,     0,   648,   639,   638,   620,   621,   622,
     623,   624,   625,   626,     0,   628,   629,     0,   619,   618,
       0,     0,     0,     0,     0,   700,     0,     0,     0,     0,
     513,     0,   516,   519,   474,   474,   451,     0,   495,   698,
     601,   600,   555,     0,     0,     0,   589,   571,   573,     0,
       0,     0,   686,   703,   520,   522,     0,     0,   486,   491,
       0,   647,   627,   630,   704,     0,     0,     0,   451,   451,
     326,   329,   698,   561,     0,   706,     0,   687,   521,   523,
       0,   698,     0,     0,     0,   492,     0,   705,   688,   707,
     451,   562,   493,   451,   563
};

/* YYDEFGOTO[NTERM-NUM]. */
static const short int yydefgoto[] =
{
      -1,     1,     2,     3,     5,    22,    23,    24,    25,   330,
     519,   336,   521,   228,   423,   605,   191,   633,   391,   193,
     194,   195,   196,    26,   197,   198,   377,   376,   374,   613,
     375,   199,   537,   318,   319,   320,   321,   512,   465,    27,
     309,  1105,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    42,    43,   635,   636,
     499,   500,   348,   218,   212,   637,   219,    47,    48,    49,
      50,    51,   234,    80,   229,   235,   587,    81,   515,   310,
     221,    53,   300,   301,   302,    54,   585,   717,   607,   608,
     609,   830,   610,   731,   611,   612,   892,  1008,  1180,   895,
    1010,  1181,   518,   237,   679,   680,   681,   238,    55,    56,
      57,    58,   352,   354,   359,   246,    59,   735,   445,   241,
     242,   350,   522,   525,   523,   526,   357,   358,   213,   305,
     406,   683,   684,   408,   409,   410,   230,   466,   467,   468,
     469,   470,   471,   322,   294,   616,   638,   908,   397,   398,
     399,   713,   639,   295,   473,   200,   640,   779,   780,   897,
     781,   899,   323,   426,  1018,   905,  1019,  1020,   782,  1017,
     898,  1236,   900,  1184,  1272,  1290,  1186,  1106,   641,   642,
    1004,  1005,  1096,  1175,  1176,  1177,  1178,  1268,  1269,   643,
     644,    60,    69,   645,   744,   646,   909,   647,   784,   648,
     848,   849,   649,   785,   912,  1022,  1239,  1281,  1293,   650,
     880,   881,  1091,   651,   786,   652,   856,   857,   914,  1023,
    1116,  1117,  1118,  1119,  1194,  1120,   653,   787,   654,   863,
     864,   655,   788,   656,   976,   977,   657,   789,   658,   960,
     961,   659,   790,   660,   661,   791,   662,   992,   663,   664,
     665,   666,   667,   793,   668,   669,  1045,   250,   910,   671,
     766,  1107,  1170,  1171,  1172,  1276,   484,   563,   501,   690,
     927,   502,   503,   710,   504,   568,   313,   416,   505,   506,
     463,   201
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -1048
static const short int yypact[] =
{
      39,    99,   139,  3466, -1048,  3466,    -5, -1048, -1048, -1048,
   -1048, -1048,   948,    35,    81,    81,    81,    68, -1048,   113,
   -1048, -1048, -1048, -1048, -1048, -1048,   124,    80,   774,   745,
    1374,  2254,   635,   393,   921,   588,  1436,  2359,  2062,  2364,
    1234,   985,  1596,  2469, -1048, -1048,   133, -1048, -1048, -1048,
   -1048, -1048,    81, -1048, -1048,    87,   101,   103, -1048, -1048,
   -1048, -1048,  3466, -1048, -1048, -1048, -1048, -1048, -1048,   379,
     295,    81,    81,    81,  3225,   308,  3116, -1048,   107,    81,
     178, -1048,  1130, -1048, -1048, -1048,    81, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,    81, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048,    81, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048,    81, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048,    81, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048,    81, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
      81, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,    81,
   -1048, -1048, -1048, -1048, -1048,   266,    80, -1048, -1048, -1048,
   -1048, -1048,   284, -1048,   299, -1048,   334, -1048,   288,   484,
   -1048, -1048, -1048, -1048, -1048,  3225,  3225,   382,   411,   464,
   -1048,   231, -1048, -1048, -1048,  3225, -1048, -1048,  2012, -1048,
   -1048,  3225,   461,   465, -1048,  3263,  3301, -1048,  3891,  1069,
    1624,  3225,  1574,   481,  1265,  1112,  1524,  1850,   521,   539,
     907,  1048, -1048,   487,   210,   619,   249,   629, -1048,    80,
      80,    81, -1048,    81, -1048,   511,    81,   244,  1053,    81,
   -1048, -1048,   107,    81,   283, -1048,  1400,   332,   439,   383,
    1313,   523,   723, -1048,   537, -1048,  1033, -1048, -1048, -1048,
     181, -1048, -1048,  3225,  3225,  2464, -1048, -1048,   565, -1048,
     585,   615, -1048,   625,  3225,  2012, -1048,  2012, -1048,  3225,
    3225,   669, -1048, -1048,  3225,  3225,  3225,  3225,  3225,  3225,
    3225,  3225,  3225,  3225,  3225,  3225, -1048, -1048,   231,  3225,
    3225,   231,   622, -1048,   690,   656, -1048, -1048, -1048, -1048,
     229, -1048,   711, -1048, -1048,   358, -1048,   439,   314,    80,
   -1048,   804, -1048, -1048,   107,   811,  2371,   715, -1048, -1048,
    1149,    36, -1048, -1048,   750,   266,   266, -1048,    81, -1048,
    1053,    81,    81, -1048, -1048, -1048,  1053,    81, -1048, -1048,
    1265,  1112,  1524,  1850,   521,   539,   907,  1048, -1048,   453,
     722,  3020, -1048,    81, -1048, -1048,   756,   769, -1048,  1033,
     720,   867,  3554,  3584,   771, -1048, -1048,  2950, -1048,  3891,
     798,   819,  3891,  3891,  3225,   864,  3225,  3225,  1340,  2780,
    3172,  2400,  2874,  1304,  1304,   982,   982, -1048, -1048, -1048,
   -1048,   822,   465,   818, -1048, -1048,   231,  1721,   690, -1048,
   -1048,   857,  1574,  3369,   107,    81, -1048, -1048, -1048, -1048,
     578, -1048, -1048, -1048,   286,   860,  1001,  3225,  3225,  2439,
   -1048,   883, -1048, -1048, -1048, -1048,  2661, -1048,   332,   500,
     266, -1048,   911, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
     872, -1048,   889,  3225,   231,   895,   769, -1048, -1048,  2464,
    3225,  2464, -1048, -1048,   897,   897,   942,  3225,  3066,  3319,
   -1048, -1048, -1048,   452,   715, -1048, -1048,    34,    67,    72,
      79,  1027, -1048,   922, -1048, -1048, -1048, -1048, -1048, -1048,
     330,   909,   358,   358, -1048,    81, -1048, -1048,   923, -1048,
   -1048,  1604,  2755,  1751,  1134,  3503,  2849,  1945,  1284, -1048,
   -1048, -1048,   933,   566, -1048, -1048,   357,   936,   937, -1048,
   -1048, -1048, -1048,   955,   965,  2263, -1048, -1048,  1030, -1048,
   -1048, -1048,   962, -1048, -1048,   977, -1048, -1048,    81,    81,
    3891, -1048,    81,   981,   984,  3604,   989,  2082, -1048,  3907,
   -1048,   231, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048,  2536, -1048,  3225, -1048,
   -1048, -1048,   993,  1297, -1048, -1048, -1048, -1048,   373,    82,
   -1048, -1048,  3441, -1048,  1102, -1048, -1048,    40, -1048,   266,
   -1048,    80, -1048, -1048,  3891, -1048, -1048,  2263, -1048,    81,
     324,    81,   290, -1048, -1048, -1048,    81, -1048,  3225, -1048,
   -1048,  1036,   231,  3225, -1048,  1043,  3891,  1002,  1005, -1048,
   -1048,    49,  2222,  3225, -1048,  2630, -1048,  1054,  1122,  1067,
      48,  1064,  2734,  3225,  1023,  1045,  3157,   105,  1163,   658,
   -1048, -1048, -1048,  1051, -1048, -1048, -1048,  1062,   621,  1066,
   -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,  3225, -1048, -1048, -1048, -1048,
   -1048, -1048,  3047,   374, -1048, -1048, -1048,   107,    81,    81,
     758,   808,   348, -1048, -1048,    81,   107,    81,   348, -1048,
      81, -1048,  1604,  2755,  3512,  2943,  1751,  1134,  2042,  1655,
    3503,  2849,  3548,  3057,  1945,  1284,  2566,  2602, -1048, -1048,
   -1048, -1048,  1063, -1048, -1048,   586,   592,  2082,    40, -1048,
      40, -1048,  3225,    64, -1048,  3225,   234, -1048,  3650, -1048,
    1425,  2082, -1048, -1048,  2152, -1048,  2333, -1048, -1048,  3907,
    1071, -1048, -1048, -1048,  1077,  1081, -1048, -1048,  1083,  1830,
     637,   246,  1084,   110,  1089,  1090,   146,   995,  3455, -1048,
   -1048, -1048,  1073,  3225,  1104, -1048,  1093,  1100,  1107, -1048,
   -1048,   266,    80, -1048, -1048, -1048, -1048, -1048,  1138,  1188,
    1818,    69, -1048, -1048,  2724,  1190,  1118,  2724,  1190,  1118,
    2724,  2724,  3630,  2724, -1048, -1048,   373,   115, -1048,    81,
   -1048,    81, -1048, -1048,    81,    82,    82, -1048, -1048,   373,
      82, -1048, -1048, -1048,  1123, -1048, -1048, -1048, -1048,  3855,
    3225, -1048, -1048,  3855,  3225, -1048, -1048,  3225, -1048,  1125,
    2333, -1048, -1048, -1048, -1048, -1048, -1048,  1150,  1153,  1154,
    1155,  1158,  1160,  1161,  2005,  1166,  1201, -1048,  1455, -1048,
    1167,  1168,  1169,  1177, -1048, -1048,   791, -1048,  1178,  1179,
    1180, -1048, -1048,   443, -1048, -1048,  1245, -1048, -1048, -1048,
     484, -1048,  1184,  1185,  1200,  1207, -1048,  1208, -1048, -1048,
    1020, -1048,  3225, -1048, -1048,  1189, -1048,  3225, -1048, -1048,
    1221,   594, -1048,   440,   639, -1048,   742,  1210,  1216, -1048,
    1217,  3225,  1915, -1048, -1048, -1048, -1048,  3225, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048,   758,   808,   505, -1048, -1048,  1297,    81,   348,
   -1048,   348, -1048, -1048,   324, -1048,  3855, -1048,  3855,  3536,
   -1048, -1048,   484,   484,   484,   420,  1509,   484,  3225,  1223,
    1226,  1228,  1235,  1250,  1251,  1255,  1266,  1273,  1276, -1048,
    2096, -1048,  3225,  1278,  1288,  1289,  1303,  1310,  1317,  1319,
    1320, -1048,  1346,  1350,  1351, -1048,  2168, -1048, -1048, -1048,
     484,   484,   484,  1509, -1048, -1048,   484,   484,   484, -1048,
   -1048, -1048,  1213,   412,   484,   484,   484,  1509,   490, -1048,
   -1048,  3873, -1048,   -43,  1238,  1238,    81, -1048,  1053, -1048,
    1053,  3225,  3225,  1332,  3047,  1283, -1048, -1048, -1048, -1048,
   -1048,  1331,  1358,  2818, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048,   428,   430,   488,  1338,  1342, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,  1385,   513,  3672,   484,   484,
     484,   484,   484,   473,  1509,   484,  3225,  3225, -1048, -1048,
    3691,   484,   484,   484,   484,   484,   624,  1509,   484,   490,
    3225,  3225, -1048, -1048,   536,   543,   559,  1391,   575,   579,
     601,  1343,  1357,   608,   609,   616,  1395, -1048, -1048, -1048,
   -1048,   634, -1048,    24,  1365,  2912, -1048, -1048, -1048, -1048,
   -1048,  1359,  1367, -1048, -1048, -1048, -1048,  1368, -1048, -1048,
   -1048, -1048,  1372,  3047,  2640, -1048,  1366,  1461,  1461, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048,   484, -1048, -1048,   642,
     663,   670,   676,   704,  1376,  1378,  1421,   705,  3713,  3732,
   -1048,   714,   731,   734,   744,   768,  1399,  1402,  1441,   796,
     797,  3754,  3773, -1048, -1048, -1048,   484, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,   484, -1048,  3225,  1424,   231,
     160,  1404, -1048, -1048,   406,  1405,  1406,  1406, -1048, -1048,
   -1048, -1048, -1048, -1048,  3225, -1048, -1048, -1048, -1048,  1407,
   -1048,  1496,  1461, -1048,  2724,   800, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048,   484, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048,   484, -1048, -1048,  3225, -1048, -1048,
     821,   836,  3795,  3225,  1431,    24,  1413,    24,  1456,  1458,
   -1048,   219,  1406, -1048, -1048, -1048, -1048,  1438, -1048,  3225,
   -1048, -1048, -1048,   851,   863,  3814, -1048, -1048, -1048,  1468,
    1584,   168, -1048, -1048, -1048, -1048,  1063,  1063, -1048, -1048,
    1474, -1048, -1048, -1048, -1048,  1518,  1609,  1499,  2724,  2724,
   -1048, -1048,  3225, -1048,  3225, -1048,   894, -1048, -1048, -1048,
    1506,  3225,  1515,  1517,  1629, -1048,  1520, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048
};

/* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
   -1048, -1048, -1048, -1048, -1048,   135, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,   -51, -1048,   -74,  1242,  -249,
     736, -1048, -1048, -1048,   -53,    41, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048,  -318, -1048,  1325, -1048, -1048,   148,    31,
    -300,  -492,    17,   108,   919,   920,   -14,    20,    37,   573,
    -400,  -373,  1076,  1082,  -365,  -361,  1086,  1092,    10,    19,
    1227,  1229, -1048,  -168, -1048,   126,  -194,   593,   861,   869,
     917, -1048,  -550,  -155,  -228,  1219, -1048,  1347, -1048,   -76,
      16,    15, -1048,  1264, -1048,   844,  1087, -1048,  -353, -1048,
     934, -1048,  -567, -1048, -1048,  1085, -1048, -1048, -1048, -1048,
   -1048, -1048,  -145,   478,   886,   901,   204,   176, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,  1252,  -121,
   -1048,  1349, -1048, -1048,   983,   986,  1348,  1262,   -90, -1048,
   -1048,  -542,  -291,  -457,  -413, -1048,   169, -1048, -1048, -1048,
   -1048, -1048, -1048,  -271, -1048, -1048,  -757,   691, -1048, -1048,
    1314,  -348, -1048,  1072, -1048, -1048,  -560, -1048, -1048, -1048,
   -1048, -1048,  -334,  -427,   696,  -839,    73,   602, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048, -1048,   607, -1048, -1048,
   -1048, -1048,   716, -1048, -1048,   556,  -891, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048, -1048,  -363, -1048, -1048, -1048,
   -1048,   887, -1048, -1048,   949, -1048, -1048, -1048, -1048, -1048,
   -1048,   856,   671, -1048, -1048, -1048, -1048,   885,   950, -1048,
   -1048, -1048,   626, -1047, -1048, -1048, -1048, -1048, -1048, -1048,
     888, -1048, -1048, -1048, -1048,   773, -1048, -1048, -1048, -1048,
     792, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048, -1048,
   -1048, -1048, -1048, -1048, -1048,   214,  -578,   404,  -474, -1048,
   -1048,  -746,   528, -1048,   533, -1048,  1270, -1048,  -543, -1048,
   -1048, -1048, -1048, -1048, -1048,  1261,  -321, -1048, -1048, -1048,
   -1048,     4
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -716
static const short int yytable[] =
{
     192,   239,   203,   220,   162,   164,   166,    62,   331,    62,
     236,   433,   431,    44,   407,    44,   495,   714,   434,    52,
     675,    52,    45,   904,    45,   560,   495,   689,   430,   715,
      71,    72,    73,   316,  1168,  -444,  1093,  -109,   325,    -2,
     392,   712,   244,   496,    86,   738,    95,   556,   104,   424,
     113,   497,   122,   496,   131,   498,   140,   745,   149,   315,
    1013,   497,   208,   474,   634,   498,    62,   158,  -445,   561,
     906,  1193,    44,  -446,   349,   155,   156,  1094,    52,    70,
    -447,    45,   670,    77,   577,    77,   158,   158,   158,   511,
     159,   160,    52,   204,    52,   214,   209,   590,   261,     4,
     592,   158,   524,   527,   159,   160,   159,   160,   159,   160,
     158,   685,   685,   210,   260,    11,    64,    65,    77,   158,
     417,   615,   251,   252,  1169,   736,   472,    19,   158,    46,
     256,    46,   257,   474,   474,   548,   474,   158,   262,    -3,
      63,   670,   904,   820,    19,  1193,   158,   602,   296,   603,
     312,   299,   811,   324,   392,   158,  -424,   326,   714,   718,
     714,   720,  -109,   495,   158,   364,   631,    74,   907,   832,
      19,    78,   700,   686,   208,   370,   746,   371,  1109,    79,
     794,   687,   227,   349,   205,   586,   215,   588,    46,  -425,
     496,   260,   562,   260,  -426,   356,   763,   167,   497,   701,
     554,  -427,   498,    82,    52,   204,   677,   704,   209,   866,
     482,   705,    75,   161,   678,   227,   393,    61,    83,    61,
      86,   891,    95,    76,   104,   210,   113,   163,   344,   165,
      86,   440,    95,   442,   159,   160,   158,   390,   867,  1225,
     394,   208,   421,    52,   214,   870,   351,  1266,    52,   214,
     314,   208,    11,   208,   157,   432,   312,    92,    52,   340,
     904,   435,   345,   941,   858,   859,   860,   930,   932,    77,
     231,    52,   204,    19,   871,   209,    61,   441,   861,   346,
    1226,    52,   204,    52,   204,   209,  1233,   209,  1267,   721,
     331,   724,   210,    77,   362,   363,   205,    19,   769,   222,
     456,   360,   210,   223,   210,   369,   361,    19,   356,   673,
     372,   373,    19,   824,   453,   378,   379,   380,   381,   382,
     383,   384,   385,   386,   387,   388,   389,    77,   231,   483,
      52,   214,   240,   226,   227,   215,  1228,   344,  1229,   560,
     215,  1233,   890,   507,   508,   462,   225,  1238,   560,   401,
     341,   299,   685,   685,   402,   351,    86,   232,    95,   534,
     104,   536,   113,   205,   814,   233,   257,    52,   340,   725,
     815,   345,   816,   205,   862,   205,    77,   676,   829,   436,
     437,    78,   168,   561,  1025,   226,   227,   818,   346,    79,
     527,   934,   561,   356,   169,   307,   308,  1258,     8,     9,
      10,   106,   493,   722,   327,  1077,   333,   202,   328,   564,
     243,    19,   493,   226,   227,   232,   248,   458,   459,  1086,
      52,   214,   215,   233,   915,   245,   716,   918,   919,   904,
     921,   332,   227,   491,   412,   208,   494,   208,  1237,    14,
      15,    16,  1035,   491,  1036,   723,   494,   226,   227,   404,
     557,  1292,   593,   594,  1294,   558,   595,   405,   227,   341,
     247,   858,   859,   860,   677,    52,   204,    52,   204,   209,
     475,   209,   678,   227,   411,   861,  1136,   573,   925,   904,
     926,   253,   574,   796,   530,   414,   210,   249,   210,  1148,
     614,   535,   805,  1260,   795,  1134,  1087,  1135,   539,   264,
     225,   307,   308,  -276,   334,   632,   562,    86,   223,   104,
     254,   122,   215,   140,  -250,   562,  -276,  1088,  1089,  1090,
     727,   767,   768,  1228,   492,  1229,  1280,   495,    10,   101,
     567,   567,  1082,   904,   492,  1286,   904,   361,   226,   227,
     543,   546,   549,   552,   579,   581,    10,   106,  1121,   493,
    1122,   729,   762,   361,   496,   361,   584,   205,   696,   205,
     672,  -276,   497,   255,   632,  -276,   498,    14,    15,    16,
     548,   989,    52,   540,  -383,  -383,   764,   541,   606,   486,
     491,   263,   708,   494,    19,    14,    15,    16,    52,   692,
     264,   709,   697,     8,     9,    10,   115,   333,   333,   332,
     227,   304,   797,   798,   801,   227,   803,   306,  1123,   698,
     311,   806,   807,   361,   808,   542,   545,   894,   551,   296,
     516,    84,    89,    93,    98,  1024,   893,    88,   584,   120,
     125,   129,   134,  1127,    14,    15,    16,    97,   361,   728,
       8,     9,    10,   101,   730,   337,  1146,   821,  1147,   211,
     825,   411,   411,   606,   739,   850,  1153,   851,   852,   353,
    1115,   361,   853,  1154,   758,   331,   771,   772,   361,   854,
     774,   492,   775,   776,   777,   778,   672,   485,   227,  1155,
     693,    14,    15,    16,   361,   365,   548,   571,    52,   885,
    1099,   572,  1100,    52,   214,  1157,  1270,  1271,    19,  1158,
     361,   804,    52,   214,   361,   366,   792,   812,    86,  -252,
      95,   328,   104,   813,   113,  1007,   122,   223,   131,   328,
     140,  1159,   149,   312,   338,   312,   361,     7,  1162,  1163,
      10,    11,  1179,   361,   361,   367,  1164,   411,   411,   809,
     810,   361,   395,   935,   682,   688,   368,   937,   -84,     7,
       8,     9,    10,    88,  1166,   396,  -249,   414,   606,  1167,
    1009,   211,  1196,   819,   223,   855,   823,   361,   726,    14,
      15,    16,   606,   767,   768,   606,   400,   606,     7,     8,
       9,    10,    83,  1197,    18,   215,    19,    20,   361,   723,
    1198,    14,    15,    16,   215,   361,  1199,    84,    89,    93,
      98,   361,   225,   428,   429,  -276,    18,  1256,  1257,   850,
     403,   851,   852,  1003,   415,   347,   853,   418,  -276,   158,
      14,    15,    16,   854,  1200,  1204,   427,  1015,   211,   361,
     361,  1241,   443,  1021,  1207,    18,   422,    19,   211,   361,
     211,   226,   227,   438,   339,  -375,  1234,  1235,   447,   800,
     802,  1208,  1026,  1027,  1209,  1028,   361,   799,   227,   361,
    1029,   936,  1030,  -276,  1210,   938,  -246,  -276,   939,   361,
     448,   606,    87,    91,    96,   100,   105,   109,   114,   118,
     123,   127,   132,   136,   141,   145,   150,   154,  1211,    85,
      90,    94,    99,   361,   444,  -245,   451,   121,   126,   130,
     135,   102,   107,   111,   116,  1278,  1279,   801,   227,   138,
     143,   147,   152,   493,    10,   110,  1215,  1216,   454,   984,
    1242,   361,  1217,  1001,   347,   361,     8,     9,    10,   110,
    1098,   266,   268,    84,    89,    93,    98,  1101,  1102,   455,
    1104,  1246,   460,   457,   491,   461,   361,   494,   896,   103,
     108,   112,   117,    14,    15,    16,  1247,   139,   144,   148,
     153,   361,    66,    67,    68,   411,   411,    14,    15,    16,
      19,  1261,   307,   308,   411,   411,   361,   478,   411,   411,
     487,   307,   308,  1262,    19,   929,   931,   520,   361,  1047,
       8,     9,    10,   142,   528,   206,   207,   216,   217,   476,
     923,   924,   488,  1060,   489,     7,     8,     9,    10,    11,
     510,   529,   490,   872,  1283,   873,   874,   532,   672,  1284,
     875,   538,   211,   452,   211,   876,   877,   878,   317,   559,
      52,    14,    15,    16,   355,   492,   159,   160,   872,  1104,
     873,   874,  -251,   566,   555,   875,   303,    14,    15,    16,
     876,   877,   878,   570,   317,    10,   115,  -473,  -473,  -473,
    -473,  -473,    18,   575,   576,    85,    90,    94,    99,   544,
     547,   550,   553,   283,   284,   285,   578,   102,   107,   111,
     116,   741,   742,   743,    84,    89,   580,   589,   120,   125,
     225,   800,   802,   802,    14,    15,    16,  1138,  1139,  -473,
    -473,  -473,   591,   596,   597,   711,  -258,   206,   207,   599,
    1104,  1151,  1152,   674,  -473,   -34,     7,   672,  1224,    10,
      88,  -715,   732,   879,   733,   103,   108,   112,   117,    52,
     734,   224,   740,   -35,   -30,   -30,   -30,   -30,   -30,     8,
       9,    10,   106,   747,   759,   699,   216,   217,   999,  1249,
     317,   216,   217,  -111,  -111,  -111,  -111,  -111,    14,    15,
      16,   342,   343,   286,   287,  1104,   760,   288,   289,   290,
     291,   765,   770,    18,   206,   207,   -30,   -30,   -30,  -108,
      14,    15,    16,   773,   206,   207,   206,   207,   293,   631,
     225,   -30,   887,  -276,   884,  -111,  -111,  -111,  1104,   833,
    1282,    85,    90,    94,    99,   834,  -276,  1104,  1222,   835,
    -111,   836,   865,   102,   107,   111,   116,   868,   869,   963,
     964,   965,   966,   967,   968,   886,   969,   970,   888,   226,
     227,   971,   972,   216,   217,   889,   973,   901,   902,     8,
       9,    10,   137,   911,   913,   933,   303,   940,   991,   942,
     974,  -276,   943,   944,   945,  -276,   -30,   946,  1245,   947,
     948,   103,   108,   112,   117,   962,   980,   981,   982,     7,
     342,   343,    10,    83,   993,  -111,   983,   986,   987,   988,
      14,    15,    16,   994,   995,    84,    89,    93,    98,     8,
       9,    10,   142,   120,   125,   129,   134,    19,   488,   996,
    1006,     7,     8,     9,    10,    11,   997,   998,   490,  1011,
    1002,    14,    15,    16,   335,  1012,  1014,   -26,   -26,   -26,
     -26,   -26,  1048,   216,   217,  1049,    18,  1050,    19,   975,
      14,    15,    16,  1081,  1051,    87,    91,   105,   109,   123,
     127,   141,   145,    14,    15,    16,  1032,  1033,  1034,  1052,
    1053,  1046,    85,    90,  1054,  -257,   121,   126,    18,   -26,
     -26,   -26,   102,   107,  1095,  1055,   138,   143,   206,   207,
     206,   207,  1056,   225,   -26,  1057,  -276,  1061,     7,     8,
       9,    10,    92,  1103,  1074,  1075,  1076,  1062,  1063,  -276,
    1078,  1079,  1080,   281,   282,   283,   284,   285,  1083,  1084,
    1085,   329,  1064,  1108,   -22,   -22,   -22,   -22,   -22,  1065,
     103,   108,   226,   227,   139,   144,  1066,  -715,  1067,  1068,
      14,    15,    16,   275,   276,   277,   278,   279,   280,   281,
     282,   283,   284,   285,  -276,    18,   827,    19,  -276,   -26,
       7,     8,     9,    10,   119,  1069,   -22,   -22,   -22,  1070,
    1071,  1112,  1129,  1130,  1131,  1132,  1133,  1113,  1124,  1137,
     225,   -22,  1125,  -276,  1126,  1141,  1142,  1143,  1144,  1145,
    1156,  1160,  1149,   837,  1165,   838,  -276,   839,   840,  1182,
     841,   842,    14,    15,    16,  1161,  1173,  1183,  1190,  1185,
     843,   694,   695,  1187,  1191,  -247,  1201,    18,  1202,    19,
    1203,   269,   270,   271,   845,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,  1212,
    1214,  -276,  1213,  1223,  1231,  -276,   -22,  1230,     7,  1227,
    1195,    10,    92,  1189,  1252,  1240,    87,    91,    96,   100,
     105,   109,   114,   118,   123,   127,   132,   136,   141,   145,
     150,   154,   828,    85,    90,    94,    99,  -253,  1250,  1259,
    1220,   121,   126,   130,   135,   102,   107,   111,   116,  1221,
      14,    15,    16,   138,   143,   147,   152,   159,   160,     8,
       9,   297,   298,   978,  1254,    18,  1255,    19,  1264,  1037,
    1038,  1039,  1040,  1041,  1265,  1273,   216,   217,  1042,  1043,
    1044,     8,     9,    10,   146,   216,   217,  1243,     7,     8,
       9,    10,    83,   103,   108,   112,   117,  1274,  1244,  1275,
    1277,   139,   144,   148,   153,   292,  1285,  -449,  -449,  -449,
    -449,  -449,  -449,  -449,  -449,  1287,  -449,  -449,  1288,  1289,
    1291,  -449,    14,    15,    16,   481,   425,  -449,   702,   517,
      14,    15,    16,   513,   703,   514,   413,  -449,   706,    19,
       8,     9,    10,   115,   707,    18,   479,    19,   831,  -449,
    -449,  -449,  -449,  -449,   719,  -449,  -449,  -449,  -449,  -449,
    -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,  -449,
    -449,  -449,  -449,  -449,  -449,   928,   737,   922,   533,  -449,
     439,    14,    15,    16,   817,  -449,   531,   446,  -449,  1110,
     822,   783,   477,  -449,  -449,  -449,  1111,  -259,  -449,  -449,
    1188,  1097,   464,  -449,  -473,  -473,  -473,  -473,  -473,  -473,
    -473,  -473,  1232,  -473,  -473,   979,  1000,   916,  -473,   917,
    1150,   985,  -449,  1192,  -473,  -449,   293,  -449,  -449,  1073,
    -449,   990,  1059,  1251,  -473,   565,     8,     9,    10,   101,
    1253,   569,     0,     0,     0,     0,  -473,  -473,  -473,  -473,
    -473,     0,  -473,  -473,  -473,  -473,  -473,  -473,  -473,  -473,
    -473,  -473,  -473,  -473,  -473,  -473,     0,  -473,  -473,  -473,
    -473,  -473,     0,     0,     0,     0,  -473,    14,    15,    16,
       0,     0,  -473,     0,     0,  -473,     0,     0,     0,     0,
    -473,  -473,  -473,     0,    19,  -473,  -473,     0,     0,   903,
    -473,  -451,  -451,     0,     0,     0,     0,  -451,  -451,     0,
    -451,  -451,     0,     0,     0,  -451,     0,     0,     0,  -473,
       0,  -451,  -473,     0,  -473,  -473,     0,  -473,   837,     0,
     838,  -451,   839,   840,     7,   841,   842,    10,    97,     0,
       0,     0,     0,  -451,     0,   843,   844,  -451,     0,  -451,
    -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,   845,
    -451,     0,  -451,   846,  -451,  -451,  -451,  -451,  -451,     0,
       0,     0,     0,  -451,     0,     0,    14,    15,    16,  -451,
       0,     0,  -451,     0,     0,     0,     0,  -451,  -451,  -451,
       0,    18,  -451,  -451,     0,     0,  1016,  -451,  -480,  -480,
       0,     0,     0,     0,  -480,  -480,     0,  -480,  -480,     0,
       0,     0,  -480,     0,     0,     0,  -451,     0,  -480,  -451,
       0,  -451,  -451,     0,  -451,     0,     0,     0,  -480,     0,
       8,     9,    10,   137,     0,     0,     0,     0,   847,     0,
    -480,     0,     0,     0,  -480,     0,  -480,  -480,  -480,  -480,
    -480,  -480,  -480,  -480,  -480,  -480,     0,  -480,     0,  -480,
       0,  -480,  -480,  -480,  -480,  -480,     0,     0,     0,     0,
    -480,    14,    15,    16,     0,     0,  -480,     0,     0,  -480,
       0,     0,     0,     0,  -480,  -480,  -480,     0,    19,  -480,
    -480,     0,     0,   258,  -480,   170,     7,     0,     0,    10,
      11,   171,   172,   949,   950,   951,   952,   953,   954,     0,
     955,   956,     0,  -480,     0,     0,  -480,     0,  -480,  -480,
     957,  -480,     0,     0,     0,     0,     0,     8,     9,    10,
     110,     0,     0,     0,   958,     0,     0,   173,    14,    15,
      16,     0,     0,     0,     0,     0,     7,     8,     9,    10,
     128,     0,     0,    18,   174,    19,    20,     0,   175,   176,
     177,   178,   179,   600,     0,   601,   160,   180,    14,    15,
      16,   171,   172,   181,     0,     0,   182,     0,     0,     0,
       0,   183,   184,   185,     0,    19,   186,   187,    14,    15,
      16,   188,     0,     0,   949,   950,   951,   952,   953,   954,
       0,   955,   956,    18,     0,    19,     0,   173,     0,     0,
       0,   957,     0,   959,     0,   189,   190,     0,   259,     0,
       0,     0,     0,     0,   174,   958,    20,     0,   175,   176,
     177,   178,   179,   600,     0,   601,   160,   180,     0,     0,
       0,   171,   172,   181,     0,     0,   182,     0,     0,     0,
       0,   183,   184,   185,     0,     0,   186,   187,     0,     0,
     602,   188,   603,  -255,     0,     0,   963,   964,   965,   966,
     967,   968,     0,   969,   970,     0,     0,   173,   971,   972,
       0,     0,     0,   973,  -306,   189,   190,     0,   604,     0,
       0,     0,     0,     0,   174,     0,    20,   974,   175,   176,
     177,   178,   179,   600,  1058,   170,     0,   180,     0,     0,
       0,   171,   172,   181,     0,     0,   182,     0,     0,     0,
       0,   183,   184,   185,     0,     0,   186,   187,     0,     0,
     602,   188,   603,     0,     0,     0,     0,     0,     7,     8,
       9,    10,    97,     0,   582,     0,   170,   173,     0,     0,
       0,     0,   171,   172,  -372,   189,   190,     0,   604,     0,
       0,     0,     0,     0,   174,     0,    20,     0,   175,   176,
     177,   178,   179,     0,     0,     0,  1072,   180,  -319,     0,
      14,    15,    16,   181,     0,     0,   182,     0,   173,     0,
       0,   183,   184,   185,     0,    18,   186,   187,     0,     0,
    -319,   188,  -319,     0,     0,   174,     0,    20,     0,   175,
     176,   177,   178,   179,   600,     0,   170,     0,   180,     0,
       0,     0,   171,   172,   181,   189,   190,   182,   604,     0,
       0,     0,   183,   184,   185,     0,     0,   186,   187,     0,
       0,     0,   188,     7,     8,     9,    10,   124,     7,     8,
       9,    10,   133,     0,   170,  -248,     0,     0,   173,     0,
     171,   172,     0,     0,     0,     0,   189,   190,     0,   583,
       0,     0,     0,     0,     0,   174,     0,    20,     0,   175,
     176,   177,   178,   179,     0,    14,    15,    16,   180,     0,
      14,    15,    16,     0,   181,     0,   173,   182,     0,     0,
      18,     0,   183,   184,   185,    18,     0,   186,   187,     0,
       0,     0,   188,   174,     0,    20,     0,   175,   176,   177,
     178,   179,   170,     0,     0,     0,   180,     0,   171,   172,
       0,     0,   181,     0,     0,   182,   189,   190,     0,   604,
     183,   184,   419,     0,     0,   186,   187,     0,     7,     0,
     188,    10,    11,     0,     8,     9,    10,   151,     0,     0,
    -254,     0,     0,     0,   173,  -256,   278,   279,   280,   281,
     282,   283,   284,   285,   189,   190,     0,     0,   420,     0,
       0,   174,     0,    20,     0,   175,   176,   177,   178,   179,
      14,    15,    16,     0,   180,    14,    15,    16,     0,     0,
     181,     0,     0,   182,     0,    18,     0,    19,   183,   184,
     185,     0,     0,   186,   187,     0,     0,     0,   188,   601,
     617,     8,     9,    10,    11,   171,   172,     0,   618,   619,
       0,     0,     0,   620,     0,     0,     0,     0,     0,   621,
       0,     0,   189,   190,     0,     0,   509,     0,     0,   622,
       0,     8,     9,    10,   146,     0,     0,     0,     0,     0,
       0,   173,    14,    15,    16,     0,     0,     0,     0,     0,
    -260,   623,   624,   625,   626,   627,   628,    18,   174,    19,
      20,     0,   175,   176,   177,   178,   179,     8,     9,    10,
     151,   180,    14,    15,    16,     0,     0,   181,     0,     0,
     182,     0,     0,     0,     0,   183,   184,   185,     0,    19,
     186,   187,     0,   601,   160,   188,     0,     0,     0,   171,
     172,     0,   618,   619,     0,     0,     0,   620,    14,    15,
      16,     0,     0,   621,   629,     0,     0,   630,     0,   189,
     190,     0,   631,   622,     0,     7,     8,     9,    10,    11,
     748,     0,     0,     0,   749,   173,   750,  1189,   751,   752,
     753,   754,   755,   756,    70,   623,   624,   625,   626,   627,
     628,     0,   174,   757,    20,     0,   175,   176,   177,   178,
     179,     0,     0,     0,     0,   180,     0,    14,    15,    16,
       0,   181,     0,     0,   182,     0,     0,     0,     0,   183,
     184,   185,    18,     0,   186,   187,     0,   170,     0,   188,
       0,     0,     0,   171,   172,     0,   618,   619,     0,     0,
       0,   620,     0,     0,     0,     0,     0,     0,   629,     0,
       0,   630,     0,   189,   190,     0,   631,   622,     0,     7,
       8,     9,    10,    88,   748,     0,     0,     0,   749,   173,
     750,     0,   751,   752,   753,   754,   755,   756,    70,     0,
     624,   625,   626,   627,   628,     0,   174,   757,    20,     0,
     175,   176,   177,   178,   179,     0,     0,     0,     0,   180,
       0,    14,    15,    16,     0,   181,     0,     0,   182,     0,
       0,     0,     0,   183,   184,   185,    18,     0,   186,   187,
       0,   170,     0,   188,     0,     0,     0,   171,   172,     0,
     618,   619,     0,     0,     0,   620,     0,     0,     0,     0,
       0,     0,   629,     0,     0,   630,     0,   189,   190,     0,
     631,  1114,     0,     7,     8,     9,    10,   124,     0,     0,
       0,     0,     0,   173,   276,   277,   278,   279,   280,   281,
     282,   283,   284,   285,   624,   625,   626,   627,   628,     0,
     174,     0,    20,     0,   175,   176,   177,   178,   179,     0,
       0,     0,     0,   180,     0,    14,    15,    16,     0,   181,
       0,     0,   182,     0,     0,     0,     0,   183,   184,   185,
      18,     0,   186,   187,     0,   170,     0,   188,     0,     0,
       0,   171,   172,     0,   618,   619,     0,     0,     0,   620,
       0,     0,     0,     0,     0,     0,   629,     0,     0,   630,
       0,   189,   190,     0,   631,   622,     0,     7,     8,     9,
      10,    97,     0,   170,     0,     0,     0,   173,     0,   171,
     172,   279,   280,   281,   282,   283,   284,   285,   624,   625,
     626,   627,   628,     0,   174,     0,    20,     0,   175,   176,
     177,   178,   179,     0,     0,     0,     0,   180,     0,    14,
      15,    16,     0,   181,     0,   173,   182,     0,     0,     0,
       0,   183,   184,   185,    18,     0,   186,   187,     0,     0,
       0,   188,   174,     0,    20,     0,   175,   176,   177,   178,
     179,   338,     0,     0,     7,   180,     0,    10,    11,     0,
    1174,   181,     0,   630,   182,   189,   190,     0,   631,   183,
     184,   185,     0,     0,   186,   187,     0,     0,     0,   188,
     170,     7,     8,     9,    10,    11,   171,   172,     0,     0,
       0,     7,     8,     9,    10,   133,    14,    15,    16,     0,
       0,     0,     0,   189,   190,     0,   452,     0,     0,     0,
       0,    18,     0,    19,    20,     0,     0,     0,     0,     0,
       0,     0,   173,    14,    15,    16,     0,     0,     0,     0,
       0,     0,     0,    14,    15,    16,     0,     0,    18,   174,
      19,    20,     0,   175,   176,   177,   178,   179,    18,   170,
       7,     0,   180,    10,    11,   171,   172,     0,   181,     0,
       0,   182,     0,     0,     0,     0,   183,   184,   185,     0,
       0,   186,   187,     0,     0,     0,   188,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
     170,   173,    14,    15,    16,     0,   171,   172,     0,     0,
     189,   190,     0,     0,     0,     0,     0,    18,   174,    19,
      20,     0,   175,   176,   177,   178,   179,     0,     0,     0,
       0,   180,     0,     0,     0,     0,     0,   181,     0,     0,
     182,     0,   173,     0,     0,   183,   184,   185,     0,     0,
     186,   187,     0,     0,     0,   188,     0,     0,     0,   174,
       0,    20,     0,   175,   176,   177,   178,   179,   170,     0,
       0,     0,   180,     0,   171,   172,     0,     0,   181,   189,
     190,   182,     0,     0,     0,     0,   183,   184,   185,     0,
       0,   186,   187,     0,     0,     0,   188,   277,   278,   279,
     280,   281,   282,   283,   284,   285,   170,     0,     0,     0,
     173,     0,   171,   172,     0,     0,     0,     0,   761,     0,
     189,   190,     0,     0,     0,     0,     0,   174,     0,    20,
       0,   175,   176,   177,   178,   179,     0,     0,     0,     0,
     180,     0,     0,     0,   170,     0,   181,     0,   173,   182,
     171,   172,     0,     0,   183,   184,   185,     0,     0,   186,
     187,     0,     0,     0,   188,   174,     0,    20,     0,   175,
     176,   177,   178,   179,     0,     0,     0,     0,   180,     0,
       0,     0,     0,     0,   181,     0,   173,   182,   189,   190,
       0,     0,   183,   184,   185,     0,     0,   186,   187,     0,
       0,     0,   265,   174,     0,    20,     0,   175,   176,   177,
     178,   179,   480,     0,     0,     0,   180,     0,   171,   172,
       0,     0,   181,     0,     0,   182,   189,   190,     0,     0,
     183,   184,   185,     0,     0,   186,   187,     0,     0,     0,
     267,   274,   275,   276,   277,   278,   279,   280,   281,   282,
     283,   284,   285,     0,   173,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   189,   190,     0,     0,     0,     0,
       0,   174,     0,    20,     0,   175,   176,   177,   178,   179,
       0,     0,     0,     0,   180,     7,     8,     9,    10,    11,
     181,     0,   691,   182,     0,     0,     0,     0,   183,   184,
     185,     0,     0,   186,   187,     0,   882,     6,   188,  -120,
       7,     8,     9,    10,    11,     0,     0,     0,     0,    12,
       0,     0,     0,     0,     0,     0,     0,    14,    15,    16,
       0,     0,   189,   190,     0,     0,     0,     0,     0,    13,
       0,     0,    18,     0,    19,     0,     0,     7,     8,     9,
      10,   119,    14,    15,    16,     0,     7,     8,     9,    10,
      92,     0,     0,     0,     0,     0,    17,    18,     0,    19,
      20,   269,   270,   271,   883,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,    14,
      15,    16,     7,     8,     9,    10,   128,  -120,    14,    15,
      16,     0,     0,     0,    18,  -120,    19,     0,     0,     0,
       0,     0,     0,    18,     0,    19,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    21,     0,     0,
       0,     0,     0,     0,    14,    15,    16,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    18,
       0,    19,   269,   270,   271,     0,   272,   273,   274,   275,
     276,   277,   278,   279,   280,   281,   282,   283,   284,   285,
     269,   270,   271,     0,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     269,   270,   271,  1031,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,   449,
     269,   270,   271,     0,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,     0,
       0,     0,     0,     0,     0,     0,   269,   270,   271,   450,
     272,   273,   274,   275,   276,   277,   278,   279,   280,   281,
     282,   283,   284,   285,     0,     0,   269,   270,   271,   598,
     272,   273,   274,   275,   276,   277,   278,   279,   280,   281,
     282,   283,   284,   285,     0,     0,     0,     0,   269,   270,
     271,   920,   272,   273,   274,   275,   276,   277,   278,   279,
     280,   281,   282,   283,   284,   285,     0,   269,   270,   271,
     826,   272,   273,   274,   275,   276,   277,   278,   279,   280,
     281,   282,   283,   284,   285,     0,     0,     0,     0,   269,
     270,   271,  1128,   272,   273,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,     0,   269,   270,
     271,  1140,   272,   273,   274,   275,   276,   277,   278,   279,
     280,   281,   282,   283,   284,   285,     0,     0,     0,     0,
     269,   270,   271,  1205,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,   269,
     270,   271,  1206,   272,   273,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,     0,     0,     0,
       0,   269,   270,   271,  1218,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,     0,
     269,   270,   271,  1219,   272,   273,   274,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,     0,     0,
       0,     0,     0,     0,     0,  1248,     0,     0,    19,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   269,   270,   271,  1263,   272,   273,   274,   275,   276,
     277,   278,   279,   280,   281,   282,   283,   284,   285,   269,
     270,   271,  1092,   272,   273,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,   269,   270,   271,
       0,   272,   273,   274,   275,   276,   277,   278,   279,   280,
     281,   282,   283,   284,   285,   271,     0,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285
};

static const short int yycheck[] =
{
      74,   156,    76,    79,    55,    56,    57,     3,   236,     5,
     155,   332,   330,     3,   305,     5,   416,   577,   336,     3,
     563,     5,     3,   780,     5,   482,   426,   569,   328,   579,
      14,    15,    16,   227,    10,     1,    79,     1,   232,     0,
     289,     1,   163,   416,    28,   612,    30,   474,    32,   320,
      34,   416,    36,   426,    38,   416,    40,     9,    42,   227,
     899,   426,    76,   397,   556,   426,    62,    52,     1,   482,
       1,  1118,    62,     1,   242,    44,    45,   120,    62,    44,
       1,    62,   556,     3,   511,     3,    71,    72,    73,   423,
       3,     4,    76,    76,    78,    78,    76,   524,   188,     0,
     527,    86,   436,   437,     3,     4,     3,     4,     3,     4,
      95,   568,   569,    76,   188,     8,   121,   122,     3,   104,
     314,   548,   175,   176,   100,    76,   397,    63,   113,     3,
     181,     5,   185,   467,   468,   469,   470,   122,   191,     0,
       5,   615,   899,    79,    63,  1192,   131,    98,   201,   100,
     226,   202,   712,   229,   403,   140,   122,   233,   718,   586,
     720,   588,   126,   563,   149,   255,   126,    99,    99,   736,
      63,    91,   572,    91,   188,   265,   128,   267,  1017,    99,
     672,    99,   100,   351,    76,   519,    78,   521,    62,   122,
     563,   265,   483,   267,   122,   246,    91,    62,   563,   572,
     471,   122,   563,    27,   188,   188,    91,   572,   188,    99,
     404,   572,    99,   126,    99,   100,   290,     3,     8,     5,
     204,   771,   206,    99,   208,   188,   210,   126,   242,   126,
     214,   352,   216,   354,     3,     4,   221,   288,   128,    79,
     291,   255,   316,   227,   227,    99,   242,    79,   232,   232,
       6,   265,     8,   267,   121,   331,   332,     8,   242,   242,
    1017,   337,   242,   830,    18,    19,    20,   809,   810,     3,
       4,   255,   255,    63,   128,   255,    62,   353,    32,   242,
     120,   265,   265,   267,   267,   265,  1177,   267,   120,   589,
     518,   591,   255,     3,   253,   254,   188,    63,   632,   121,
     374,   120,   265,   125,   267,   264,   125,    63,   359,   558,
     269,   270,    63,    79,   367,   274,   275,   276,   277,   278,
     279,   280,   281,   282,   283,   284,   285,     3,     4,   405,
     314,   314,   156,    99,   100,   227,   117,   351,   119,   796,
     232,  1232,   769,   417,   418,   396,    60,  1186,   805,   120,
     242,   402,   809,   810,   125,   351,   340,    91,   342,   449,
     344,   451,   346,   255,   717,    99,   419,   351,   351,    79,
     718,   351,   720,   265,   128,   267,     3,     4,   731,   348,
     349,    91,     3,   796,   927,    99,   100,   721,   351,    99,
     724,   818,   805,   444,    99,   219,   220,  1236,     5,     6,
       7,     8,   416,    79,   121,   983,   237,    99,   125,   485,
     126,    63,   426,    99,   100,    91,   128,   376,   377,   997,
     404,   404,   314,    99,   787,   126,   581,   790,   791,  1186,
     793,    99,   100,   416,   120,   449,   416,   451,  1184,    46,
      47,    48,    22,   426,    24,   590,   426,    99,   100,    91,
     120,  1290,   528,   529,  1293,   125,   532,    99,   100,   351,
     126,    18,    19,    20,    91,   449,   449,   451,   451,   449,
     397,   451,    99,   100,   305,    32,  1054,   120,   799,  1236,
     801,    99,   125,   677,   443,   309,   449,     3,   451,  1067,
     541,   450,   686,  1239,   120,    22,     6,    24,   457,   125,
      60,   325,   326,    63,   121,   556,   797,   491,   125,   493,
      99,   495,   404,   497,   121,   806,    76,    27,    28,    29,
     596,   115,   116,   117,   416,   119,  1272,   927,     7,     8,
     499,   500,   120,  1290,   426,  1281,  1293,   125,    99,   100,
     467,   468,   469,   470,   513,   514,     7,     8,   120,   563,
     120,   602,   626,   125,   927,   125,   515,   449,   572,   451,
     556,   121,   927,    99,   615,   125,   927,    46,    47,    48,
     904,   128,   556,   121,   121,   122,   627,   125,   537,   410,
     563,   120,   572,   563,    63,    46,    47,    48,   572,   572,
     125,   572,   572,     5,     6,     7,     8,   428,   429,    99,
     100,   120,   678,   679,    99,   100,   682,   120,   120,   572,
      99,   687,   688,   125,   690,   467,   468,   772,   470,   672,
     120,    28,    29,    30,    31,   120,   771,     8,   587,    36,
      37,    38,    39,   120,    46,    47,    48,     8,   125,   598,
       5,     6,     7,     8,   603,   122,    22,   723,    24,    76,
     726,   482,   483,   612,   613,    18,   120,    20,    21,   122,
    1023,   125,    25,   120,   623,   893,   635,   636,   125,    32,
      49,   563,    51,    52,    53,    54,   672,    99,   100,   120,
     572,    46,    47,    48,   125,   120,  1020,   121,   672,   763,
    1008,   125,  1010,   677,   677,   120,  1256,  1257,    63,   120,
     125,   685,   686,   686,   125,   120,   665,   121,   692,   121,
     694,   125,   696,   121,   698,   121,   700,   125,   702,   125,
     704,   120,   706,   799,     1,   801,   125,     4,   120,   120,
       7,     8,  1095,   125,   125,   120,   120,   568,   569,   708,
     709,   125,   120,   819,   568,   569,   121,   823,    79,     4,
       5,     6,     7,     8,   120,    65,   121,   581,   717,   125,
     121,   188,   120,   722,   125,   128,   725,   125,   592,    46,
      47,    48,   731,   115,   116,   734,   120,   736,     4,     5,
       6,     7,     8,   120,    61,   677,    63,    64,   125,   934,
     120,    46,    47,    48,   686,   125,   120,   204,   205,   206,
     207,   125,    60,   325,   326,    63,    61,  1234,  1235,    18,
      99,    20,    21,   887,    10,   242,    25,     6,    76,   804,
      46,    47,    48,    32,   120,   120,    76,   901,   255,   125,
     125,  1194,    76,   907,   120,    61,   121,    63,   265,   125,
     267,    99,   100,   121,   121,   122,  1180,  1181,   128,   680,
     681,   120,   928,   929,   120,   931,   125,    99,   100,   125,
     936,   820,   938,   121,   120,   824,   121,   125,   827,   125,
       3,   830,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    42,    43,   120,    28,
      29,    30,    31,   125,   125,   121,   125,    36,    37,    38,
      39,    32,    33,    34,    35,  1268,  1269,    99,   100,    40,
      41,    42,    43,   927,     7,     8,   120,   120,   120,   128,
     120,   125,   125,   882,   351,   125,     5,     6,     7,     8,
    1006,   195,   196,   340,   341,   342,   343,  1011,  1012,   120,
    1014,   120,   120,    79,   927,   127,   125,   927,   772,    32,
      33,    34,    35,    46,    47,    48,   120,    40,    41,    42,
      43,   125,    14,    15,    16,   796,   797,    46,    47,    48,
      63,   120,   796,   797,   805,   806,   125,   120,   809,   810,
     120,   805,   806,   120,    63,   809,   810,    76,   125,   948,
       5,     6,     7,     8,   122,    76,    76,    78,    78,   397,
     796,   797,     1,   962,     3,     4,     5,     6,     7,     8,
     127,   122,    11,    18,   120,    20,    21,   122,  1014,   125,
      25,    79,   449,   126,   451,    30,    31,    32,     1,   120,
    1014,    46,    47,    48,     1,   927,     3,     4,    18,  1113,
      20,    21,   121,   120,   122,    25,   202,    46,    47,    48,
      30,    31,    32,   120,     1,     7,     8,     4,     5,     6,
       7,     8,    61,   127,   127,   204,   205,   206,   207,   467,
     468,   469,   470,    91,    92,    93,   121,   208,   209,   210,
     211,    14,    15,    16,   491,   492,   121,   125,   495,   496,
      60,   922,   923,   924,    46,    47,    48,  1056,  1057,    46,
      47,    48,   125,   122,   120,     3,   121,   188,   188,   120,
    1184,  1070,  1071,   120,    61,    79,     4,  1113,  1169,     7,
       8,   120,    79,   128,   122,   208,   209,   210,   211,  1113,
     125,     1,    10,    79,     4,     5,     6,     7,     8,     5,
       6,     7,     8,    79,   121,   572,   227,   227,   128,  1223,
       1,   232,   232,     4,     5,     6,     7,     8,    46,    47,
      48,   242,   242,    94,    95,  1239,   121,    98,    99,   100,
     101,     8,   121,    61,   255,   255,    46,    47,    48,   126,
      46,    47,    48,   121,   265,   265,   267,   267,   122,   126,
      60,    61,    99,    63,   121,    46,    47,    48,  1272,   128,
    1274,   340,   341,   342,   343,   128,    76,  1281,  1167,   128,
      61,   128,   128,   344,   345,   346,   347,   128,   128,    18,
      19,    20,    21,    22,    23,   121,    25,    26,   128,    99,
     100,    30,    31,   314,   314,   128,    35,    99,    50,     5,
       6,     7,     8,    53,   126,   122,   402,   122,     3,    99,
      49,   121,    99,    99,    99,   125,   126,    99,  1217,    99,
      99,   344,   345,   346,   347,    99,    99,    99,    99,     4,
     351,   351,     7,     8,   870,   126,    99,    99,    99,    99,
      46,    47,    48,    99,    99,   692,   693,   694,   695,     5,
       6,     7,     8,   700,   701,   702,   703,    63,     1,    99,
      79,     4,     5,     6,     7,     8,    99,    99,    11,    99,
     121,    46,    47,    48,     1,    99,    99,     4,     5,     6,
       7,     8,    99,   404,   404,    99,    61,    99,    63,   128,
      46,    47,    48,   120,    99,   491,   492,   493,   494,   495,
     496,   497,   498,    46,    47,    48,   942,   943,   944,    99,
      99,   947,   491,   492,    99,   121,   495,   496,    61,    46,
      47,    48,   493,   494,   126,    99,   497,   498,   449,   449,
     451,   451,    99,    60,    61,    99,    63,    99,     4,     5,
       6,     7,     8,    51,   980,   981,   982,    99,    99,    76,
     986,   987,   988,    89,    90,    91,    92,    93,   994,   995,
     996,     1,    99,   120,     4,     5,     6,     7,     8,    99,
     493,   494,    99,   100,   497,   498,    99,   120,    99,    99,
      46,    47,    48,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,   121,    61,    11,    63,   125,   126,
       4,     5,     6,     7,     8,    99,    46,    47,    48,    99,
      99,   120,  1048,  1049,  1050,  1051,  1052,    99,   120,  1055,
      60,    61,   120,    63,    79,  1061,  1062,  1063,  1064,  1065,
      79,   128,  1068,    18,    79,    20,    76,    22,    23,   120,
      25,    26,    46,    47,    48,   128,   121,   120,   122,   121,
      35,   572,   572,   121,    33,   121,   120,    61,   120,    63,
      79,    76,    77,    78,    49,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,   120,
      79,   121,   120,    99,   118,   125,   126,   122,     4,   125,
    1126,     7,     8,    37,   121,   128,   692,   693,   694,   695,
     696,   697,   698,   699,   700,   701,   702,   703,   704,   705,
     706,   707,   127,   692,   693,   694,   695,   121,   127,   121,
    1156,   700,   701,   702,   703,   696,   697,   698,   699,  1165,
      46,    47,    48,   704,   705,   706,   707,     3,     4,     5,
       6,     7,     8,   128,   128,    61,   128,    63,   120,    80,
      81,    82,    83,    84,    10,   121,   677,   677,    89,    90,
      91,     5,     6,     7,     8,   686,   686,  1203,     4,     5,
       6,     7,     8,   696,   697,   698,   699,    99,  1214,    10,
     121,   704,   705,   706,   707,     1,   120,     3,     4,     5,
       6,     7,     8,     9,    10,   120,    12,    13,   121,    10,
     120,    17,    46,    47,    48,   403,   321,    23,   572,   430,
      46,    47,    48,   426,   572,   426,   309,    33,   572,    63,
       5,     6,     7,     8,   572,    61,   402,    63,   734,    45,
      46,    47,    48,    49,   587,    51,    52,    53,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,   809,   611,   796,   446,    75,
     351,    46,    47,    48,   721,    81,   444,   359,    84,  1018,
     724,   639,   398,    89,    90,    91,  1020,   121,    94,    95,
    1113,  1005,     1,    99,     3,     4,     5,     6,     7,     8,
       9,    10,  1176,    12,    13,   848,   880,   788,    17,   789,
    1069,   856,   118,  1117,    23,   121,   122,   123,   124,   976,
     126,   863,   960,  1225,    33,   485,     5,     6,     7,     8,
    1227,   500,    -1,    -1,    -1,    -1,    45,    46,    47,    48,
      49,    -1,    51,    52,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    -1,    66,    67,    68,
      69,    70,    -1,    -1,    -1,    -1,    75,    46,    47,    48,
      -1,    -1,    81,    -1,    -1,    84,    -1,    -1,    -1,    -1,
      89,    90,    91,    -1,    63,    94,    95,    -1,    -1,     1,
      99,     3,     4,    -1,    -1,    -1,    -1,     9,    10,    -1,
      12,    13,    -1,    -1,    -1,    17,    -1,    -1,    -1,   118,
      -1,    23,   121,    -1,   123,   124,    -1,   126,    18,    -1,
      20,    33,    22,    23,     4,    25,    26,     7,     8,    -1,
      -1,    -1,    -1,    45,    -1,    35,    36,    49,    -1,    51,
      52,    53,    54,    55,    56,    57,    58,    59,    60,    49,
      62,    -1,    64,    53,    66,    67,    68,    69,    70,    -1,
      -1,    -1,    -1,    75,    -1,    -1,    46,    47,    48,    81,
      -1,    -1,    84,    -1,    -1,    -1,    -1,    89,    90,    91,
      -1,    61,    94,    95,    -1,    -1,     1,    99,     3,     4,
      -1,    -1,    -1,    -1,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    17,    -1,    -1,    -1,   118,    -1,    23,   121,
      -1,   123,   124,    -1,   126,    -1,    -1,    -1,    33,    -1,
       5,     6,     7,     8,    -1,    -1,    -1,    -1,   128,    -1,
      45,    -1,    -1,    -1,    49,    -1,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    -1,    62,    -1,    64,
      -1,    66,    67,    68,    69,    70,    -1,    -1,    -1,    -1,
      75,    46,    47,    48,    -1,    -1,    81,    -1,    -1,    84,
      -1,    -1,    -1,    -1,    89,    90,    91,    -1,    63,    94,
      95,    -1,    -1,     1,    99,     3,     4,    -1,    -1,     7,
       8,     9,    10,    18,    19,    20,    21,    22,    23,    -1,
      25,    26,    -1,   118,    -1,    -1,   121,    -1,   123,   124,
      35,   126,    -1,    -1,    -1,    -1,    -1,     5,     6,     7,
       8,    -1,    -1,    -1,    49,    -1,    -1,    45,    46,    47,
      48,    -1,    -1,    -1,    -1,    -1,     4,     5,     6,     7,
       8,    -1,    -1,    61,    62,    63,    64,    -1,    66,    67,
      68,    69,    70,     1,    -1,     3,     4,    75,    46,    47,
      48,     9,    10,    81,    -1,    -1,    84,    -1,    -1,    -1,
      -1,    89,    90,    91,    -1,    63,    94,    95,    46,    47,
      48,    99,    -1,    -1,    18,    19,    20,    21,    22,    23,
      -1,    25,    26,    61,    -1,    63,    -1,    45,    -1,    -1,
      -1,    35,    -1,   128,    -1,   123,   124,    -1,   126,    -1,
      -1,    -1,    -1,    -1,    62,    49,    64,    -1,    66,    67,
      68,    69,    70,     1,    -1,     3,     4,    75,    -1,    -1,
      -1,     9,    10,    81,    -1,    -1,    84,    -1,    -1,    -1,
      -1,    89,    90,    91,    -1,    -1,    94,    95,    -1,    -1,
      98,    99,   100,   121,    -1,    -1,    18,    19,    20,    21,
      22,    23,    -1,    25,    26,    -1,    -1,    45,    30,    31,
      -1,    -1,    -1,    35,   122,   123,   124,    -1,   126,    -1,
      -1,    -1,    -1,    -1,    62,    -1,    64,    49,    66,    67,
      68,    69,    70,     1,   128,     3,    -1,    75,    -1,    -1,
      -1,     9,    10,    81,    -1,    -1,    84,    -1,    -1,    -1,
      -1,    89,    90,    91,    -1,    -1,    94,    95,    -1,    -1,
      98,    99,   100,    -1,    -1,    -1,    -1,    -1,     4,     5,
       6,     7,     8,    -1,     1,    -1,     3,    45,    -1,    -1,
      -1,    -1,     9,    10,   122,   123,   124,    -1,   126,    -1,
      -1,    -1,    -1,    -1,    62,    -1,    64,    -1,    66,    67,
      68,    69,    70,    -1,    -1,    -1,   128,    75,    76,    -1,
      46,    47,    48,    81,    -1,    -1,    84,    -1,    45,    -1,
      -1,    89,    90,    91,    -1,    61,    94,    95,    -1,    -1,
      98,    99,   100,    -1,    -1,    62,    -1,    64,    -1,    66,
      67,    68,    69,    70,     1,    -1,     3,    -1,    75,    -1,
      -1,    -1,     9,    10,    81,   123,   124,    84,   126,    -1,
      -1,    -1,    89,    90,    91,    -1,    -1,    94,    95,    -1,
      -1,    -1,    99,     4,     5,     6,     7,     8,     4,     5,
       6,     7,     8,    -1,     3,   121,    -1,    -1,    45,    -1,
       9,    10,    -1,    -1,    -1,    -1,   123,   124,    -1,   126,
      -1,    -1,    -1,    -1,    -1,    62,    -1,    64,    -1,    66,
      67,    68,    69,    70,    -1,    46,    47,    48,    75,    -1,
      46,    47,    48,    -1,    81,    -1,    45,    84,    -1,    -1,
      61,    -1,    89,    90,    91,    61,    -1,    94,    95,    -1,
      -1,    -1,    99,    62,    -1,    64,    -1,    66,    67,    68,
      69,    70,     3,    -1,    -1,    -1,    75,    -1,     9,    10,
      -1,    -1,    81,    -1,    -1,    84,   123,   124,    -1,   126,
      89,    90,    91,    -1,    -1,    94,    95,    -1,     4,    -1,
      99,     7,     8,    -1,     5,     6,     7,     8,    -1,    -1,
     121,    -1,    -1,    -1,    45,   121,    86,    87,    88,    89,
      90,    91,    92,    93,   123,   124,    -1,    -1,   127,    -1,
      -1,    62,    -1,    64,    -1,    66,    67,    68,    69,    70,
      46,    47,    48,    -1,    75,    46,    47,    48,    -1,    -1,
      81,    -1,    -1,    84,    -1,    61,    -1,    63,    89,    90,
      91,    -1,    -1,    94,    95,    -1,    -1,    -1,    99,     3,
       4,     5,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,    -1,    23,
      -1,    -1,   123,   124,    -1,    -1,   127,    -1,    -1,    33,
      -1,     5,     6,     7,     8,    -1,    -1,    -1,    -1,    -1,
      -1,    45,    46,    47,    48,    -1,    -1,    -1,    -1,    -1,
     121,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    -1,    66,    67,    68,    69,    70,     5,     6,     7,
       8,    75,    46,    47,    48,    -1,    -1,    81,    -1,    -1,
      84,    -1,    -1,    -1,    -1,    89,    90,    91,    -1,    63,
      94,    95,    -1,     3,     4,    99,    -1,    -1,    -1,     9,
      10,    -1,    12,    13,    -1,    -1,    -1,    17,    46,    47,
      48,    -1,    -1,    23,   118,    -1,    -1,   121,    -1,   123,
     124,    -1,   126,    33,    -1,     4,     5,     6,     7,     8,
      30,    -1,    -1,    -1,    34,    45,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    55,    56,    57,    58,    59,
      60,    -1,    62,    53,    64,    -1,    66,    67,    68,    69,
      70,    -1,    -1,    -1,    -1,    75,    -1,    46,    47,    48,
      -1,    81,    -1,    -1,    84,    -1,    -1,    -1,    -1,    89,
      90,    91,    61,    -1,    94,    95,    -1,     3,    -1,    99,
      -1,    -1,    -1,     9,    10,    -1,    12,    13,    -1,    -1,
      -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,   118,    -1,
      -1,   121,    -1,   123,   124,    -1,   126,    33,    -1,     4,
       5,     6,     7,     8,    30,    -1,    -1,    -1,    34,    45,
      36,    -1,    38,    39,    40,    41,    42,    43,    44,    -1,
      56,    57,    58,    59,    60,    -1,    62,    53,    64,    -1,
      66,    67,    68,    69,    70,    -1,    -1,    -1,    -1,    75,
      -1,    46,    47,    48,    -1,    81,    -1,    -1,    84,    -1,
      -1,    -1,    -1,    89,    90,    91,    61,    -1,    94,    95,
      -1,     3,    -1,    99,    -1,    -1,    -1,     9,    10,    -1,
      12,    13,    -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,
      -1,    -1,   118,    -1,    -1,   121,    -1,   123,   124,    -1,
     126,    33,    -1,     4,     5,     6,     7,     8,    -1,    -1,
      -1,    -1,    -1,    45,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    56,    57,    58,    59,    60,    -1,
      62,    -1,    64,    -1,    66,    67,    68,    69,    70,    -1,
      -1,    -1,    -1,    75,    -1,    46,    47,    48,    -1,    81,
      -1,    -1,    84,    -1,    -1,    -1,    -1,    89,    90,    91,
      61,    -1,    94,    95,    -1,     3,    -1,    99,    -1,    -1,
      -1,     9,    10,    -1,    12,    13,    -1,    -1,    -1,    17,
      -1,    -1,    -1,    -1,    -1,    -1,   118,    -1,    -1,   121,
      -1,   123,   124,    -1,   126,    33,    -1,     4,     5,     6,
       7,     8,    -1,     3,    -1,    -1,    -1,    45,    -1,     9,
      10,    87,    88,    89,    90,    91,    92,    93,    56,    57,
      58,    59,    60,    -1,    62,    -1,    64,    -1,    66,    67,
      68,    69,    70,    -1,    -1,    -1,    -1,    75,    -1,    46,
      47,    48,    -1,    81,    -1,    45,    84,    -1,    -1,    -1,
      -1,    89,    90,    91,    61,    -1,    94,    95,    -1,    -1,
      -1,    99,    62,    -1,    64,    -1,    66,    67,    68,    69,
      70,     1,    -1,    -1,     4,    75,    -1,     7,     8,    -1,
     118,    81,    -1,   121,    84,   123,   124,    -1,   126,    89,
      90,    91,    -1,    -1,    94,    95,    -1,    -1,    -1,    99,
       3,     4,     5,     6,     7,     8,     9,    10,    -1,    -1,
      -1,     4,     5,     6,     7,     8,    46,    47,    48,    -1,
      -1,    -1,    -1,   123,   124,    -1,   126,    -1,    -1,    -1,
      -1,    61,    -1,    63,    64,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    45,    46,    47,    48,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    46,    47,    48,    -1,    -1,    61,    62,
      63,    64,    -1,    66,    67,    68,    69,    70,    61,     3,
       4,    -1,    75,     7,     8,     9,    10,    -1,    81,    -1,
      -1,    84,    -1,    -1,    -1,    -1,    89,    90,    91,    -1,
      -1,    94,    95,    -1,    -1,    -1,    99,    81,    82,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
       3,    45,    46,    47,    48,    -1,     9,    10,    -1,    -1,
     123,   124,    -1,    -1,    -1,    -1,    -1,    61,    62,    63,
      64,    -1,    66,    67,    68,    69,    70,    -1,    -1,    -1,
      -1,    75,    -1,    -1,    -1,    -1,    -1,    81,    -1,    -1,
      84,    -1,    45,    -1,    -1,    89,    90,    91,    -1,    -1,
      94,    95,    -1,    -1,    -1,    99,    -1,    -1,    -1,    62,
      -1,    64,    -1,    66,    67,    68,    69,    70,     3,    -1,
      -1,    -1,    75,    -1,     9,    10,    -1,    -1,    81,   123,
     124,    84,    -1,    -1,    -1,    -1,    89,    90,    91,    -1,
      -1,    94,    95,    -1,    -1,    -1,    99,    85,    86,    87,
      88,    89,    90,    91,    92,    93,     3,    -1,    -1,    -1,
      45,    -1,     9,    10,    -1,    -1,    -1,    -1,   121,    -1,
     123,   124,    -1,    -1,    -1,    -1,    -1,    62,    -1,    64,
      -1,    66,    67,    68,    69,    70,    -1,    -1,    -1,    -1,
      75,    -1,    -1,    -1,     3,    -1,    81,    -1,    45,    84,
       9,    10,    -1,    -1,    89,    90,    91,    -1,    -1,    94,
      95,    -1,    -1,    -1,    99,    62,    -1,    64,    -1,    66,
      67,    68,    69,    70,    -1,    -1,    -1,    -1,    75,    -1,
      -1,    -1,    -1,    -1,    81,    -1,    45,    84,   123,   124,
      -1,    -1,    89,    90,    91,    -1,    -1,    94,    95,    -1,
      -1,    -1,    99,    62,    -1,    64,    -1,    66,    67,    68,
      69,    70,     3,    -1,    -1,    -1,    75,    -1,     9,    10,
      -1,    -1,    81,    -1,    -1,    84,   123,   124,    -1,    -1,
      89,    90,    91,    -1,    -1,    94,    95,    -1,    -1,    -1,
      99,    82,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    -1,    45,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   123,   124,    -1,    -1,    -1,    -1,
      -1,    62,    -1,    64,    -1,    66,    67,    68,    69,    70,
      -1,    -1,    -1,    -1,    75,     4,     5,     6,     7,     8,
      81,    -1,    11,    84,    -1,    -1,    -1,    -1,    89,    90,
      91,    -1,    -1,    94,    95,    -1,    11,     1,    99,     3,
       4,     5,     6,     7,     8,    -1,    -1,    -1,    -1,    13,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,    47,    48,
      -1,    -1,   123,   124,    -1,    -1,    -1,    -1,    -1,    33,
      -1,    -1,    61,    -1,    63,    -1,    -1,     4,     5,     6,
       7,     8,    46,    47,    48,    -1,     4,     5,     6,     7,
       8,    -1,    -1,    -1,    -1,    -1,    60,    61,    -1,    63,
      64,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    46,
      47,    48,     4,     5,     6,     7,     8,    91,    46,    47,
      48,    -1,    -1,    -1,    61,    99,    63,    -1,    -1,    -1,
      -1,    -1,    -1,    61,    -1,    63,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   121,    -1,    -1,
      -1,    -1,    -1,    -1,    46,    47,    48,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,
      -1,    63,    76,    77,    78,    -1,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      76,    77,    78,    -1,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      76,    77,    78,   127,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    -1,   125,
      76,    77,    78,    -1,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    76,    77,    78,   125,
      80,    81,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    -1,    -1,    76,    77,    78,   125,
      80,    81,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    -1,    -1,    -1,    -1,    76,    77,
      78,   121,    80,    81,    82,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    -1,    76,    77,    78,
     120,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    -1,    -1,    -1,    -1,    76,
      77,    78,   120,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    -1,    76,    77,
      78,   120,    80,    81,    82,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    -1,    -1,    -1,    -1,
      76,    77,    78,   120,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    -1,    76,
      77,    78,   120,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    -1,    -1,    -1,
      -1,    76,    77,    78,   120,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    -1,
      76,    77,    78,   120,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   120,    -1,    -1,    63,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    76,    77,    78,   120,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    76,
      77,    78,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    76,    77,    78,
      -1,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    78,    -1,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const unsigned short int yystos[] =
{
       0,   130,   131,   132,     0,   133,     1,     4,     5,     6,
       7,     8,    13,    33,    46,    47,    48,    60,    61,    63,
      64,   121,   134,   135,   136,   137,   152,   168,   171,   172,
     173,   174,   175,   176,   177,   178,   179,   180,   181,   182,
     183,   184,   185,   186,   187,   188,   194,   196,   197,   198,
     199,   200,   209,   210,   214,   237,   238,   239,   240,   245,
     320,   384,   410,   134,   121,   122,    14,    15,    16,   321,
      44,   209,   209,   209,    99,    99,    99,     3,    91,    99,
     202,   206,   236,     8,   196,   197,   209,   214,     8,   196,
     197,   214,     8,   196,   197,   209,   214,     8,   196,   197,
     214,     8,   198,   199,   209,   214,     8,   198,   199,   214,
       8,   198,   199,   209,   214,     8,   198,   199,   214,     8,
     196,   197,   209,   214,     8,   196,   197,   214,     8,   196,
     197,   209,   214,     8,   196,   197,   214,     8,   198,   199,
     209,   214,     8,   198,   199,   214,     8,   198,   199,   209,
     214,     8,   198,   199,   214,   168,   168,   121,   210,     3,
       4,   126,   144,   126,   144,   126,   144,   134,     3,    99,
       3,     9,    10,    45,    62,    66,    67,    68,    69,    70,
      75,    81,    84,    89,    90,    91,    94,    95,    99,   123,
     124,   145,   146,   148,   149,   150,   151,   153,   154,   160,
     284,   410,    99,   146,   171,   172,   173,   174,   175,   176,
     177,   178,   193,   257,   171,   172,   173,   174,   192,   195,
     208,   209,   121,   125,     1,    60,    99,   100,   142,   203,
     265,     4,    91,    99,   201,   204,   231,   232,   236,   202,
     236,   248,   249,   126,   248,   126,   244,   126,   128,     3,
     386,   153,   153,    99,    99,    99,   144,   153,     1,   126,
     146,   257,   153,   120,   125,    99,   149,    99,   149,    76,
      77,    78,    80,    81,    82,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,    98,    99,
     100,   101,     1,   122,   273,   282,   153,     7,     8,   144,
     211,   212,   213,   214,   120,   258,   120,   236,   236,   169,
     208,    99,   208,   405,     6,   192,   195,     1,   162,   163,
     164,   165,   272,   291,   208,   195,   208,   121,   125,     1,
     138,   203,    99,   265,   121,     1,   140,   122,     1,   121,
     171,   172,   173,   174,   175,   176,   177,   178,   191,   192,
     250,   410,   241,   122,   242,     1,   144,   255,   256,   243,
     120,   125,   154,   154,   257,   120,   120,   120,   121,   154,
     257,   257,   154,   154,   157,   159,   156,   155,   154,   154,
     154,   154,   154,   154,   154,   154,   154,   154,   154,   154,
     144,   147,   148,   146,   144,   120,    65,   277,   278,   279,
     120,   120,   125,    99,    91,    99,   259,   261,   262,   263,
     264,   265,   120,   206,   236,    10,   406,   195,     6,    91,
     127,   146,   121,   143,   272,   164,   292,    76,   232,   232,
     169,   162,   208,   405,   162,   208,   168,   168,   121,   250,
     248,   208,   248,    76,   125,   247,   255,   128,     3,   125,
     125,   125,   126,   153,   120,   120,   146,    79,   154,   154,
     120,   127,   144,   409,     1,   167,   266,   267,   268,   269,
     270,   271,   272,   283,   291,   295,   296,   279,   120,   212,
       3,   147,   195,   208,   395,    99,   265,   120,     1,     3,
      11,   171,   172,   175,   176,   179,   180,   183,   184,   189,
     190,   397,   400,   401,   403,   407,   408,   146,   146,   127,
     127,   291,   166,   189,   190,   207,   120,   204,   231,   139,
      76,   141,   251,   253,   291,   252,   254,   291,   122,   122,
     154,   256,   122,   247,   257,   154,   257,   161,    79,   154,
     121,   125,   167,   295,   296,   167,   295,   296,   291,   295,
     296,   167,   295,   296,   272,   122,   292,   120,   125,   120,
     262,   263,   261,   396,   208,   395,   120,   168,   404,   404,
     120,   121,   125,   120,   125,   127,   127,   292,   121,   168,
     121,   168,     1,   126,   154,   215,   291,   205,   291,   125,
     292,   125,   292,   208,   208,   208,   122,   120,   125,   120,
       1,     3,    98,   100,   126,   144,   154,   217,   218,   219,
     221,   223,   224,   158,   144,   292,   274,     4,    12,    13,
      17,    23,    33,    55,    56,    57,    58,    59,    60,   118,
     121,   126,   144,   146,   170,   187,   188,   194,   275,   281,
     285,   307,   308,   318,   319,   322,   324,   326,   328,   331,
     338,   342,   344,   355,   357,   360,   362,   365,   367,   370,
     372,   373,   375,   377,   378,   379,   380,   381,   383,   384,
     387,   388,   410,   148,   120,   397,     4,    91,    99,   233,
     234,   235,   236,   260,   261,   262,    91,    99,   236,   260,
     398,    11,   171,   172,   173,   174,   175,   176,   177,   178,
     179,   180,   181,   182,   183,   184,   185,   186,   187,   188,
     402,     3,     1,   280,   285,   201,   202,   216,   292,   215,
     292,   169,    79,   231,   169,    79,   236,   208,   154,   144,
     154,   222,    79,   122,   125,   246,    76,   224,   221,   154,
      10,    14,    15,    16,   323,     9,   128,    79,    30,    34,
      36,    38,    39,    40,    41,    42,    43,    53,   154,   121,
     121,   121,   146,    91,   144,     8,   389,   115,   116,   291,
     121,   168,   168,   121,    49,    51,    52,    53,    54,   286,
     287,   289,   297,   282,   327,   332,   343,   356,   361,   366,
     371,   374,   154,   382,   170,   120,   195,   208,   208,    99,
     265,    99,   265,   208,   209,   195,   208,   208,   208,   168,
     168,   285,   121,   121,   217,   280,   280,   253,   291,   154,
      79,   208,   254,   154,    79,   208,   120,    11,   127,   217,
     220,   219,   221,   128,   128,   128,   128,    18,    20,    22,
      23,    25,    26,    35,    36,    49,    53,   128,   329,   330,
      18,    20,    21,    25,    32,   128,   345,   346,    18,    19,
      20,    32,   128,   358,   359,   128,    99,   128,   128,   128,
      99,   128,    18,    20,    21,    25,    30,    31,    32,   128,
     339,   340,    11,    79,   121,   146,   121,    99,   128,   128,
     292,   201,   225,   231,   202,   228,   236,   288,   299,   290,
     301,    99,    50,     1,   275,   294,     1,    99,   276,   325,
     387,    53,   333,   126,   347,   325,   333,   347,   325,   325,
     121,   325,   234,   235,   235,   405,   405,   399,   233,   236,
     260,   236,   260,   122,   292,   208,   154,   208,   154,   154,
     122,   221,    99,    99,    99,    99,    99,    99,    99,    18,
      19,    20,    21,    22,    23,    25,    26,    35,    49,   128,
     368,   369,    99,    18,    19,    20,    21,    22,    23,    25,
      26,    30,    31,    35,    49,   128,   363,   364,   128,   330,
      99,    99,    99,    99,   128,   346,    99,    99,    99,   128,
     359,     3,   376,   386,    99,    99,    99,    99,    99,   128,
     340,   154,   121,   146,   309,   310,    79,   121,   226,   121,
     229,    99,    99,   294,    99,   146,     1,   298,   293,   295,
     296,   146,   334,   348,   120,   397,   208,   208,   208,   208,
     208,   127,   386,   386,   386,    22,    24,    80,    81,    82,
      83,    84,    89,    90,    91,   385,   386,   154,    99,    99,
      99,    99,    99,    99,    99,    99,    99,    99,   128,   369,
     154,    99,    99,    99,    99,    99,    99,    99,    99,    99,
      99,    99,   128,   364,   386,   386,   386,   385,   386,   386,
     386,   120,   120,   386,   386,   386,   385,     6,    27,    28,
      29,   341,    79,    79,   120,   126,   311,   311,   208,   162,
     162,   146,   146,    51,   146,   170,   306,   390,   120,   294,
     276,   293,   120,    99,    33,   325,   349,   350,   351,   352,
     354,   120,   120,   120,   120,   120,    79,   120,   120,   386,
     386,   386,   386,   386,    22,    24,   385,   386,   154,   154,
     120,   386,   386,   386,   386,   386,    22,    24,   385,   386,
     341,   154,   154,   120,   120,   120,    79,   120,   120,   120,
     128,   128,   120,   120,   120,    79,   120,   125,    10,   100,
     391,   392,   393,   121,   118,   312,   313,   314,   315,   325,
     227,   230,   120,   120,   302,   121,   305,   121,   306,    37,
     122,    33,   351,   352,   353,   386,   120,   120,   120,   120,
     120,   120,   120,    79,   120,   120,   120,   120,   120,   120,
     120,   120,   120,   120,    79,   120,   120,   125,   120,   120,
     386,   386,   154,    99,   144,    79,   120,   125,   117,   119,
     122,   118,   314,   315,   291,   291,   300,   390,   294,   335,
     128,   325,   120,   386,   386,   154,   120,   120,   120,   146,
     127,   391,   121,   393,   128,   128,   292,   292,   294,   121,
     390,   120,   120,   120,   120,    10,    79,   120,   316,   317,
     285,   285,   303,   121,    99,    10,   394,   121,   325,   325,
     390,   336,   146,   120,   125,   120,   390,   120,   121,    10,
     304,   120,   294,   337,   294
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
#line 389 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids an empty source file");
		  finish_file ();
		;}
    break;

  case 3:
#line 394 "../../../kgccfe/gnu/c-parse.y"
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
#line 412 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.ttype) = NULL_TREE; ;}
    break;

  case 6:
#line 413 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.ttype) = NULL_TREE; ggc_collect(); ;}
    break;

  case 8:
#line 418 "../../../kgccfe/gnu/c-parse.y"
    { parsing_iso_function_signature = false; ;}
    break;

  case 11:
#line 425 "../../../kgccfe/gnu/c-parse.y"
    { STRIP_NOPS ((yyvsp[-2].ttype));
		  if ((TREE_CODE ((yyvsp[-2].ttype)) == ADDR_EXPR
		       && TREE_CODE (TREE_OPERAND ((yyvsp[-2].ttype), 0)) == STRING_CST)
		      || TREE_CODE ((yyvsp[-2].ttype)) == STRING_CST)
		    assemble_asm ((yyvsp[-2].ttype));
		  else
		    error ("argument of `asm' is not a constant string"); ;}
    break;

  case 12:
#line 433 "../../../kgccfe/gnu/c-parse.y"
    { RESTORE_EXT_FLAGS ((yyvsp[-1].ttype)); ;}
    break;

  case 14:
#line 436 "../../../kgccfe/gnu/c-parse.y"
    {;}
    break;

  case 15:
#line 441 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    error ("ISO C forbids data definition with no type or storage class");
		  else
		    warning ("data definition has no type or storage class");

		  POP_DECLSPEC_STACK; ;}
    break;

  case 16:
#line 448 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 17:
#line 450 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 18:
#line 452 "../../../kgccfe/gnu/c-parse.y"
    { shadow_tag ((yyvsp[-1].ttype)); ;}
    break;

  case 21:
#line 456 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C does not allow extra `;' outside of a function"); ;}
    break;

  case 22:
#line 462 "../../../kgccfe/gnu/c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[0].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 23:
#line 467 "../../../kgccfe/gnu/c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 24:
#line 469 "../../../kgccfe/gnu/c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[-2].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[-1].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 25:
#line 474 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 26:
#line 476 "../../../kgccfe/gnu/c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[0].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 27:
#line 481 "../../../kgccfe/gnu/c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 28:
#line 483 "../../../kgccfe/gnu/c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[-2].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[-1].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 29:
#line 488 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 30:
#line 490 "../../../kgccfe/gnu/c-parse.y"
    { if (! start_function (NULL_TREE, (yyvsp[0].ttype),
					all_prefix_attributes))
		    YYERROR1;
		;}
    break;

  case 31:
#line 495 "../../../kgccfe/gnu/c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 32:
#line 497 "../../../kgccfe/gnu/c-parse.y"
    { DECL_SOURCE_FILE (current_function_decl) = (yyvsp[-2].filename);
		  DECL_SOURCE_LINE (current_function_decl) = (yyvsp[-1].lineno);
		  finish_function (0, 1);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 33:
#line 502 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 36:
#line 511 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = ADDR_EXPR; ;}
    break;

  case 37:
#line 513 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = NEGATE_EXPR; ;}
    break;

  case 38:
#line 515 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = CONVERT_EXPR;
  if (warn_traditional && !in_system_header)
    warning ("traditional C rejects the unary plus operator");
		;}
    break;

  case 39:
#line 520 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = PREINCREMENT_EXPR; ;}
    break;

  case 40:
#line 522 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = PREDECREMENT_EXPR; ;}
    break;

  case 41:
#line 524 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = BIT_NOT_EXPR; ;}
    break;

  case 42:
#line 526 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.code) = TRUTH_NOT_EXPR; ;}
    break;

  case 43:
#line 530 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_compound_expr ((yyvsp[0].ttype)); ;}
    break;

  case 44:
#line 535 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 46:
#line 541 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 47:
#line 543 "../../../kgccfe/gnu/c-parse.y"
    { chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 49:
#line 549 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_indirect_ref ((yyvsp[0].ttype), "unary *"); ;}
    break;

  case 50:
#line 552 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  RESTORE_EXT_FLAGS ((yyvsp[-1].ttype)); ;}
    break;

  case 51:
#line 555 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_unary_op ((yyvsp[-1].code), (yyvsp[0].ttype), 0);
		  overflow_warning ((yyval.ttype)); ;}
    break;

  case 52:
#line 559 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_label_address_expr ((yyvsp[0].ttype)); ;}
    break;

  case 53:
#line 561 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--;
		  if (TREE_CODE ((yyvsp[0].ttype)) == COMPONENT_REF
		      && DECL_C_BIT_FIELD (TREE_OPERAND ((yyvsp[0].ttype), 1)))
		    error ("`sizeof' applied to a bit-field");
		  (yyval.ttype) = c_sizeof (TREE_TYPE ((yyvsp[0].ttype))); ;}
    break;

  case 54:
#line 567 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_sizeof (groktypename ((yyvsp[-1].ttype))); ;}
    break;

  case 55:
#line 570 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_alignof_expr ((yyvsp[0].ttype)); ;}
    break;

  case 56:
#line 573 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--;
		  (yyval.ttype) = c_alignof (groktypename ((yyvsp[-1].ttype))); ;}
    break;

  case 57:
#line 576 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_unary_op (REALPART_EXPR, (yyvsp[0].ttype), 0); ;}
    break;

  case 58:
#line 578 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_unary_op (IMAGPART_EXPR, (yyvsp[0].ttype), 0); ;}
    break;

  case 59:
#line 582 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 60:
#line 586 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 61:
#line 590 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 63:
#line 596 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = c_cast_expr ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 65:
#line 602 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 66:
#line 604 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 67:
#line 606 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 68:
#line 608 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 69:
#line 610 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 70:
#line 612 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 71:
#line 614 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 72:
#line 616 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 73:
#line 618 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 74:
#line 620 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 75:
#line 622 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 76:
#line 624 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[-1].code), (yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 77:
#line 626 "../../../kgccfe/gnu/c-parse.y"
    { (yyvsp[-1].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[-1].ttype)));
		  skip_evaluation += (yyvsp[-1].ttype) == boolean_false_node; ;}
    break;

  case 78:
#line 630 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation -= (yyvsp[-3].ttype) == boolean_false_node;
		  (yyval.ttype) = parser_build_binary_op (TRUTH_ANDIF_EXPR, (yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 79:
#line 633 "../../../kgccfe/gnu/c-parse.y"
    { (yyvsp[-1].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[-1].ttype)));
		  skip_evaluation += (yyvsp[-1].ttype) == boolean_true_node; ;}
    break;

  case 80:
#line 637 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation -= (yyvsp[-3].ttype) == boolean_true_node;
		  (yyval.ttype) = parser_build_binary_op (TRUTH_ORIF_EXPR, (yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 81:
#line 640 "../../../kgccfe/gnu/c-parse.y"
    { (yyvsp[-1].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[-1].ttype)));
		  skip_evaluation += (yyvsp[-1].ttype) == boolean_false_node; ;}
    break;

  case 82:
#line 644 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation += (((yyvsp[-4].ttype) == boolean_true_node)
				      - ((yyvsp[-4].ttype) == boolean_false_node)); ;}
    break;

  case 83:
#line 647 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation -= (yyvsp[-6].ttype) == boolean_true_node;
		  (yyval.ttype) = build_conditional_expr ((yyvsp[-6].ttype), (yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 84:
#line 650 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids omitting the middle term of a ?: expression");
		  /* Make sure first operand is calculated only once.  */
		  (yyvsp[0].ttype) = save_expr ((yyvsp[-1].ttype));
		  (yyvsp[-1].ttype) = c_common_truthvalue_conversion
		    (default_conversion ((yyvsp[0].ttype)));
		  skip_evaluation += (yyvsp[-1].ttype) == boolean_true_node; ;}
    break;

  case 85:
#line 658 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation -= (yyvsp[-4].ttype) == boolean_true_node;
		  (yyval.ttype) = build_conditional_expr ((yyvsp[-4].ttype), (yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 86:
#line 661 "../../../kgccfe/gnu/c-parse.y"
    { char class;
		  (yyval.ttype) = build_modify_expr ((yyvsp[-2].ttype), NOP_EXPR, (yyvsp[0].ttype));
		  class = TREE_CODE_CLASS (TREE_CODE ((yyval.ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), MODIFY_EXPR);
		;}
    break;

  case 87:
#line 668 "../../../kgccfe/gnu/c-parse.y"
    { char class;
		  (yyval.ttype) = build_modify_expr ((yyvsp[-2].ttype), (yyvsp[-1].code), (yyvsp[0].ttype));
		  /* This inhibits warnings in
		     c_common_truthvalue_conversion.  */
		  class = TREE_CODE_CLASS (TREE_CODE ((yyval.ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyval.ttype), ERROR_MARK);
		;}
    break;

  case 88:
#line 680 "../../../kgccfe/gnu/c-parse.y"
    {
		  if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.ttype) = build_external_ref ((yyvsp[0].ttype), yychar == '(');
		;}
    break;

  case 90:
#line 687 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = fix_string_type ((yyval.ttype)); ;}
    break;

  case 91:
#line 689 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = fname_decl (C_RID_CODE ((yyval.ttype)), (yyval.ttype)); ;}
    break;

  case 92:
#line 691 "../../../kgccfe/gnu/c-parse.y"
    { start_init (NULL_TREE, NULL, 0);
		  (yyvsp[-2].ttype) = groktypename ((yyvsp[-2].ttype));
		  really_start_incremental_init ((yyvsp[-2].ttype)); ;}
    break;

  case 93:
#line 695 "../../../kgccfe/gnu/c-parse.y"
    { tree constructor = pop_init_level (0);
		  tree type = (yyvsp[-5].ttype);
		  finish_init ();

		  if (pedantic && ! flag_isoc99)
		    pedwarn ("ISO C89 forbids compound literals");
		  (yyval.ttype) = build_compound_literal (type, constructor);
		;}
    break;

  case 94:
#line 704 "../../../kgccfe/gnu/c-parse.y"
    { char class = TREE_CODE_CLASS (TREE_CODE ((yyvsp[-1].ttype)));
		  if (IS_EXPR_CODE_CLASS (class))
		    C_SET_EXP_ORIGINAL_CODE ((yyvsp[-1].ttype), ERROR_MARK);
		  (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 95:
#line 709 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 96:
#line 711 "../../../kgccfe/gnu/c-parse.y"
    { tree saved_last_tree;

		   if (pedantic)
		     pedwarn ("ISO C forbids braced-groups within expressions");
		  pop_label_level ();

		  saved_last_tree = COMPOUND_BODY ((yyvsp[-2].ttype));
		  RECHAIN_STMTS ((yyvsp[-2].ttype), COMPOUND_BODY ((yyvsp[-2].ttype)));
		  last_tree = saved_last_tree;
		  TREE_CHAIN (last_tree) = NULL_TREE;
		  if (!last_expr_type)
		    last_expr_type = void_type_node;
		  (yyval.ttype) = build1 (STMT_EXPR, last_expr_type, (yyvsp[-2].ttype));
		  TREE_SIDE_EFFECTS ((yyval.ttype)) = 1;
		;}
    break;

  case 97:
#line 727 "../../../kgccfe/gnu/c-parse.y"
    {
		  pop_label_level ();
		  last_tree = COMPOUND_BODY ((yyvsp[-2].ttype));
		  TREE_CHAIN (last_tree) = NULL_TREE;
		  (yyval.ttype) = error_mark_node;
		;}
    break;

  case 98:
#line 734 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_function_call ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 99:
#line 736 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_va_arg ((yyvsp[-3].ttype), groktypename ((yyvsp[-1].ttype))); ;}
    break;

  case 100:
#line 739 "../../../kgccfe/gnu/c-parse.y"
    {
                  tree c;

                  c = fold ((yyvsp[-5].ttype));
                  STRIP_NOPS (c);
                  if (TREE_CODE (c) != INTEGER_CST)
                    error ("first argument to __builtin_choose_expr not a constant");
                  (yyval.ttype) = integer_zerop (c) ? (yyvsp[-1].ttype) : (yyvsp[-3].ttype);
		;}
    break;

  case 101:
#line 749 "../../../kgccfe/gnu/c-parse.y"
    {
		  tree e1, e2;

		  e1 = TYPE_MAIN_VARIANT (groktypename ((yyvsp[-3].ttype)));
		  e2 = TYPE_MAIN_VARIANT (groktypename ((yyvsp[-1].ttype)));

		  (yyval.ttype) = comptypes (e1, e2)
		    ? build_int_2 (1, 0) : build_int_2 (0, 0);
		;}
    break;

  case 102:
#line 759 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_ref ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 103:
#line 761 "../../../kgccfe/gnu/c-parse.y"
    {
		      (yyval.ttype) = build_component_ref ((yyvsp[-2].ttype), (yyvsp[0].ttype));
		;}
    break;

  case 104:
#line 765 "../../../kgccfe/gnu/c-parse.y"
    {
                  tree expr = build_indirect_ref ((yyvsp[-2].ttype), "->");

			(yyval.ttype) = build_component_ref (expr, (yyvsp[0].ttype));
		;}
    break;

  case 105:
#line 771 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTINCREMENT_EXPR, (yyvsp[-1].ttype), 0); ;}
    break;

  case 106:
#line 773 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTDECREMENT_EXPR, (yyvsp[-1].ttype), 0); ;}
    break;

  case 107:
#line 779 "../../../kgccfe/gnu/c-parse.y"
    {
	  parsing_iso_function_signature = false; /* Reset after decls.  */
	;}
    break;

  case 108:
#line 786 "../../../kgccfe/gnu/c-parse.y"
    {
	  if (warn_traditional && !in_system_header
	      && parsing_iso_function_signature)
	    warning ("traditional C rejects ISO C style function definitions");
	  parsing_iso_function_signature = false; /* Reset after warning.  */
	;}
    break;

  case 110:
#line 800 "../../../kgccfe/gnu/c-parse.y"
    { ;}
    break;

  case 115:
#line 816 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 116:
#line 818 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 117:
#line 820 "../../../kgccfe/gnu/c-parse.y"
    { shadow_tag_warned ((yyvsp[-1].ttype), 1);
		  pedwarn ("empty declaration"); ;}
    break;

  case 118:
#line 823 "../../../kgccfe/gnu/c-parse.y"
    { pedwarn ("empty declaration"); ;}
    break;

  case 119:
#line 832 "../../../kgccfe/gnu/c-parse.y"
    { ;}
    break;

  case 120:
#line 840 "../../../kgccfe/gnu/c-parse.y"
    { pending_xref_error ();
		  PUSH_DECLSPEC_STACK;
		  split_specs_attrs ((yyvsp[0].ttype),
				     &current_declspecs, &prefix_attributes);
		  all_prefix_attributes = prefix_attributes; ;}
    break;

  case 121:
#line 851 "../../../kgccfe/gnu/c-parse.y"
    { all_prefix_attributes = chainon ((yyvsp[0].ttype), prefix_attributes); ;}
    break;

  case 122:
#line 856 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 123:
#line 858 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 124:
#line 860 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 125:
#line 862 "../../../kgccfe/gnu/c-parse.y"
    { POP_DECLSPEC_STACK; ;}
    break;

  case 126:
#line 864 "../../../kgccfe/gnu/c-parse.y"
    { shadow_tag ((yyvsp[-1].ttype)); ;}
    break;

  case 127:
#line 866 "../../../kgccfe/gnu/c-parse.y"
    { RESTORE_EXT_FLAGS ((yyvsp[-1].ttype)); ;}
    break;

  case 128:
#line 923 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 129:
#line 926 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 130:
#line 929 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 131:
#line 935 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 132:
#line 941 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 133:
#line 944 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 134:
#line 950 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 0; ;}
    break;

  case 135:
#line 953 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 136:
#line 959 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 137:
#line 962 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 138:
#line 965 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 139:
#line 968 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 140:
#line 971 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 141:
#line 974 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 142:
#line 977 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 143:
#line 983 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 144:
#line 986 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 145:
#line 989 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 146:
#line 992 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 147:
#line 995 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 148:
#line 998 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 149:
#line 1004 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 150:
#line 1007 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 151:
#line 1010 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 152:
#line 1013 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 153:
#line 1016 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 154:
#line 1019 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 155:
#line 1025 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 156:
#line 1028 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 157:
#line 1031 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 158:
#line 1034 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 159:
#line 1037 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 160:
#line 1043 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE);
		  TREE_STATIC ((yyval.ttype)) = 0; ;}
    break;

  case 161:
#line 1046 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 162:
#line 1049 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 163:
#line 1052 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 164:
#line 1058 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 165:
#line 1064 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 166:
#line 1070 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 167:
#line 1079 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 168:
#line 1085 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 169:
#line 1088 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 170:
#line 1091 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 171:
#line 1097 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 172:
#line 1103 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 173:
#line 1109 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 174:
#line 1118 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 175:
#line 1124 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 176:
#line 1127 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 177:
#line 1130 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 178:
#line 1133 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 179:
#line 1136 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 180:
#line 1139 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 181:
#line 1142 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 182:
#line 1148 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 183:
#line 1154 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 184:
#line 1160 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 185:
#line 1169 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 186:
#line 1172 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 187:
#line 1175 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 188:
#line 1178 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 189:
#line 1181 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 190:
#line 1187 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 191:
#line 1190 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 192:
#line 1193 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 193:
#line 1196 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 194:
#line 1199 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 195:
#line 1202 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 196:
#line 1205 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 197:
#line 1211 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 198:
#line 1217 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 199:
#line 1223 "../../../kgccfe/gnu/c-parse.y"
    { if (extra_warnings && TREE_STATIC ((yyvsp[-1].ttype)))
		    warning ("`%s' is not at beginning of declaration",
			     IDENTIFIER_POINTER ((yyvsp[0].ttype)));
		  (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 200:
#line 1232 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[0].ttype), NULL_TREE, (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = TREE_STATIC ((yyvsp[-1].ttype)); ;}
    break;

  case 201:
#line 1235 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 202:
#line 1238 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 203:
#line 1241 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 204:
#line 1244 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-1].ttype));
		  TREE_STATIC ((yyval.ttype)) = 1; ;}
    break;

  case 261:
#line 1332 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 262:
#line 1334 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 266:
#line 1369 "../../../kgccfe/gnu/c-parse.y"
    { OBJC_NEED_RAW_IDENTIFIER (1);	;}
    break;

  case 269:
#line 1379 "../../../kgccfe/gnu/c-parse.y"
    { /* For a typedef name, record the meaning, not the name.
		     In case of `foo foo, bar;'.  */
		  (yyval.ttype) = lookup_name ((yyvsp[0].ttype)); ;}
    break;

  case 270:
#line 1383 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--; (yyval.ttype) = TREE_TYPE ((yyvsp[-1].ttype)); ;}
    break;

  case 271:
#line 1385 "../../../kgccfe/gnu/c-parse.y"
    { skip_evaluation--; (yyval.ttype) = groktypename ((yyvsp[-1].ttype)); ;}
    break;

  case 276:
#line 1402 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 277:
#line 1404 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 278:
#line 1409 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[-3].ttype), current_declspecs, 1,
					  chainon ((yyvsp[-1].ttype), all_prefix_attributes));
		  start_init ((yyval.ttype), (yyvsp[-2].ttype), global_bindings_p ()); ;}
    break;

  case 279:
#line 1414 "../../../kgccfe/gnu/c-parse.y"
    { finish_init ();
		  finish_decl ((yyvsp[-1].ttype), (yyvsp[0].ttype), (yyvsp[-4].ttype));
		  if (In_MP_Region && Is_shared_mp_var ((yyvsp[-1].ttype)))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, (yyvsp[-1].ttype)));
		;}
    break;

  case 280:
#line 1420 "../../../kgccfe/gnu/c-parse.y"
    { tree d = start_decl ((yyvsp[-2].ttype), current_declspecs, 0,
				       chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  finish_decl (d, NULL_TREE, (yyvsp[-1].ttype));
		  if (In_MP_Region && Is_shared_mp_var (d))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, d));
                ;}
    break;

  case 281:
#line 1430 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[-3].ttype), current_declspecs, 1,
					  chainon ((yyvsp[-1].ttype), all_prefix_attributes));
		  start_init ((yyval.ttype), (yyvsp[-2].ttype), global_bindings_p ()); ;}
    break;

  case 282:
#line 1435 "../../../kgccfe/gnu/c-parse.y"
    { finish_init ();
		  finish_decl ((yyvsp[-1].ttype), (yyvsp[0].ttype), (yyvsp[-4].ttype));
		  if (In_MP_Region && Is_shared_mp_var ((yyvsp[-1].ttype)))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, (yyvsp[-1].ttype)));
		;}
    break;

  case 283:
#line 1441 "../../../kgccfe/gnu/c-parse.y"
    { tree d = start_decl ((yyvsp[-2].ttype), current_declspecs, 0,
				       chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  finish_decl (d, NULL_TREE, (yyvsp[-1].ttype));
		  if (In_MP_Region && Is_shared_mp_var (d))
		    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (NULL, d));
		;}
    break;

  case 284:
#line 1452 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 285:
#line 1454 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 286:
#line 1459 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 287:
#line 1461 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 288:
#line 1466 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype); ;}
    break;

  case 289:
#line 1471 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 290:
#line 1473 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 291:
#line 1478 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 292:
#line 1480 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 293:
#line 1482 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-3].ttype), build_tree_list (NULL_TREE, (yyvsp[-1].ttype))); ;}
    break;

  case 294:
#line 1484 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-5].ttype), tree_cons (NULL_TREE, (yyvsp[-3].ttype), (yyvsp[-1].ttype))); ;}
    break;

  case 295:
#line 1486 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 303:
#line 1509 "../../../kgccfe/gnu/c-parse.y"
    { really_start_incremental_init (NULL_TREE); ;}
    break;

  case 304:
#line 1511 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = pop_init_level (0); ;}
    break;

  case 305:
#line 1513 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 306:
#line 1519 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids empty initializer braces"); ;}
    break;

  case 310:
#line 1533 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic && ! flag_isoc99)
		    pedwarn ("ISO C89 forbids specifying subobject to initialize"); ;}
    break;

  case 311:
#line 1536 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("obsolete use of designated initializer without `='"); ;}
    break;

  case 312:
#line 1539 "../../../kgccfe/gnu/c-parse.y"
    { set_init_label ((yyvsp[-1].ttype));
		  if (pedantic)
		    pedwarn ("obsolete use of designated initializer with `:'"); ;}
    break;

  case 313:
#line 1543 "../../../kgccfe/gnu/c-parse.y"
    {;}
    break;

  case 315:
#line 1549 "../../../kgccfe/gnu/c-parse.y"
    { push_init_level (0); ;}
    break;

  case 316:
#line 1551 "../../../kgccfe/gnu/c-parse.y"
    { process_init_element (pop_init_level (0)); ;}
    break;

  case 317:
#line 1553 "../../../kgccfe/gnu/c-parse.y"
    { process_init_element ((yyvsp[0].ttype)); ;}
    break;

  case 321:
#line 1564 "../../../kgccfe/gnu/c-parse.y"
    { set_init_label ((yyvsp[0].ttype)); ;}
    break;

  case 322:
#line 1566 "../../../kgccfe/gnu/c-parse.y"
    { set_init_index ((yyvsp[-3].ttype), (yyvsp[-1].ttype));
		  if (pedantic)
		    pedwarn ("ISO C forbids specifying range of elements to initialize"); ;}
    break;

  case 323:
#line 1570 "../../../kgccfe/gnu/c-parse.y"
    { set_init_index ((yyvsp[-1].ttype), NULL_TREE); ;}
    break;

  case 324:
#line 1575 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids nested functions");

		  push_function_context ();
		  if (! start_function (current_declspecs, (yyvsp[0].ttype),
					all_prefix_attributes))
		    {
		      pop_function_context ();
		      YYERROR1;
		    }
		  parsing_iso_function_signature = false; /* Don't warn about nested functions.  */
		;}
    break;

  case 325:
#line 1588 "../../../kgccfe/gnu/c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 326:
#line 1596 "../../../kgccfe/gnu/c-parse.y"
    { tree decl = current_function_decl;
		  DECL_SOURCE_FILE (decl) = (yyvsp[-2].filename);
		  DECL_SOURCE_LINE (decl) = (yyvsp[-1].lineno);
		  finish_function (1, 1);
		  pop_function_context ();
		  add_decl_stmt (decl); ;}
    break;

  case 327:
#line 1606 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids nested functions");

		  push_function_context ();
		  if (! start_function (current_declspecs, (yyvsp[0].ttype),
					all_prefix_attributes))
		    {
		      pop_function_context ();
		      YYERROR1;
		    }
		  parsing_iso_function_signature = false; /* Don't warn about nested functions.  */
		;}
    break;

  case 328:
#line 1619 "../../../kgccfe/gnu/c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 329:
#line 1627 "../../../kgccfe/gnu/c-parse.y"
    { tree decl = current_function_decl;
		  DECL_SOURCE_FILE (decl) = (yyvsp[-2].filename);
		  DECL_SOURCE_LINE (decl) = (yyvsp[-1].lineno);
		  finish_function (1, 1);
		  pop_function_context ();
		  add_decl_stmt (decl); ;}
    break;

  case 332:
#line 1647 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype) ? tree_cons ((yyvsp[-2].ttype), (yyvsp[-1].ttype), NULL_TREE) : (yyvsp[-1].ttype); ;}
    break;

  case 333:
#line 1649 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[-2].ttype), (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 334:
#line 1654 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 335:
#line 1656 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 339:
#line 1671 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[-2].ttype), (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 340:
#line 1676 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 342:
#line 1682 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[-2].ttype), (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 343:
#line 1687 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 344:
#line 1689 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 345:
#line 1691 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 346:
#line 1693 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype) ? tree_cons ((yyvsp[-2].ttype), (yyvsp[-1].ttype), NULL_TREE) : (yyvsp[-1].ttype); ;}
    break;

  case 347:
#line 1701 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[-2].ttype), (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 348:
#line 1706 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype) ? tree_cons ((yyvsp[-2].ttype), (yyvsp[-1].ttype), NULL_TREE) : (yyvsp[-1].ttype); ;}
    break;

  case 349:
#line 1708 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 350:
#line 1710 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), (yyvsp[-1].ttype), 0); ;}
    break;

  case 352:
#line 1716 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 353:
#line 1718 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 354:
#line 1723 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 355:
#line 1725 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 356:
#line 1730 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 357:
#line 1732 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 358:
#line 1743 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_struct (RECORD_TYPE, (yyvsp[-1].ttype));
		  /* Start scope of tag before parsing components.  */
		;}
    break;

  case 359:
#line 1747 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[-3].ttype), (yyvsp[-2].ttype), chainon ((yyvsp[-6].ttype), (yyvsp[0].ttype))); ;}
    break;

  case 360:
#line 1749 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (RECORD_TYPE, NULL_TREE),
				      (yyvsp[-2].ttype), chainon ((yyvsp[-4].ttype), (yyvsp[0].ttype)));
		;}
    break;

  case 361:
#line 1753 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_struct (UNION_TYPE, (yyvsp[-1].ttype)); ;}
    break;

  case 362:
#line 1755 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[-3].ttype), (yyvsp[-2].ttype), chainon ((yyvsp[-6].ttype), (yyvsp[0].ttype))); ;}
    break;

  case 363:
#line 1757 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (UNION_TYPE, NULL_TREE),
				      (yyvsp[-2].ttype), chainon ((yyvsp[-4].ttype), (yyvsp[0].ttype)));
		;}
    break;

  case 364:
#line 1761 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_enum ((yyvsp[-1].ttype)); ;}
    break;

  case 365:
#line 1763 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[-4].ttype), nreverse ((yyvsp[-3].ttype)),
				    chainon ((yyvsp[-7].ttype), (yyvsp[0].ttype))); ;}
    break;

  case 366:
#line 1766 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = start_enum (NULL_TREE); ;}
    break;

  case 367:
#line 1768 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[-4].ttype), nreverse ((yyvsp[-3].ttype)),
				    chainon ((yyvsp[-6].ttype), (yyvsp[0].ttype))); ;}
    break;

  case 368:
#line 1774 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = xref_tag (RECORD_TYPE, (yyvsp[0].ttype)); ;}
    break;

  case 369:
#line 1776 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = xref_tag (UNION_TYPE, (yyvsp[0].ttype)); ;}
    break;

  case 370:
#line 1778 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = xref_tag (ENUMERAL_TYPE, (yyvsp[0].ttype));
		  /* In ISO C, enumerated types can be referred to
		     only if already defined.  */
		  if (pedantic && !COMPLETE_TYPE_P ((yyval.ttype)))
		    pedwarn ("ISO C forbids forward references to `enum' types"); ;}
    break;

  case 374:
#line 1793 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic && ! flag_isoc99)
		    pedwarn ("comma at end of enumerator list"); ;}
    break;

  case 375:
#line 1799 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 376:
#line 1801 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-1].ttype), (yyvsp[0].ttype));
		  pedwarn ("no semicolon at end of struct or union"); ;}
    break;

  case 377:
#line 1806 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 378:
#line 1808 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 379:
#line 1810 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("extra semicolon in struct or union specified"); ;}
    break;

  case 380:
#line 1816 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 381:
#line 1819 "../../../kgccfe/gnu/c-parse.y"
    {
		  /* Support for unnamed structs or unions as members of
		     structs or unions (which is [a] useful and [b] supports
		     MS P-SDK).  */
		  if (pedantic)
		    pedwarn ("ISO C doesn't support unnamed structs/unions");

		  (yyval.ttype) = grokfield((yyvsp[-1].filename), (yyvsp[0].lineno), NULL, current_declspecs, NULL_TREE);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 382:
#line 1829 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 383:
#line 1832 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids member declarations with no members");
		  shadow_tag((yyvsp[0].ttype));
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 384:
#line 1837 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 385:
#line 1839 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  RESTORE_EXT_FLAGS ((yyvsp[-1].ttype)); ;}
    break;

  case 387:
#line 1846 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 389:
#line 1852 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-3].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 390:
#line 1857 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-3].filename), (yyvsp[-2].lineno), (yyvsp[-1].ttype), current_declspecs, NULL_TREE);
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 391:
#line 1861 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-5].filename), (yyvsp[-4].lineno), (yyvsp[-3].ttype), current_declspecs, (yyvsp[-1].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 392:
#line 1864 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-4].filename), (yyvsp[-3].lineno), NULL_TREE, current_declspecs, (yyvsp[-1].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 393:
#line 1870 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-3].filename), (yyvsp[-2].lineno), (yyvsp[-1].ttype), current_declspecs, NULL_TREE);
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 394:
#line 1874 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-5].filename), (yyvsp[-4].lineno), (yyvsp[-3].ttype), current_declspecs, (yyvsp[-1].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 395:
#line 1877 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[-4].filename), (yyvsp[-3].lineno), NULL_TREE, current_declspecs, (yyvsp[-1].ttype));
		  decl_attributes (&(yyval.ttype), chainon ((yyvsp[0].ttype), all_prefix_attributes), 0); ;}
    break;

  case 397:
#line 1889 "../../../kgccfe/gnu/c-parse.y"
    { if ((yyvsp[-2].ttype) == error_mark_node)
		    (yyval.ttype) = (yyvsp[-2].ttype);
		  else
		    (yyval.ttype) = chainon ((yyvsp[0].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 398:
#line 1894 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = error_mark_node; ;}
    break;

  case 399:
#line 1900 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 400:
#line 1902 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 401:
#line 1907 "../../../kgccfe/gnu/c-parse.y"
    { pending_xref_error ();
		  (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 402:
#line 1910 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 403:
#line 1915 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 405:
#line 1921 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 NULL_TREE),
					all_prefix_attributes); ;}
    break;

  case 406:
#line 1925 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[0].ttype)),
					all_prefix_attributes); ;}
    break;

  case 407:
#line 1929 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes)); ;}
    break;

  case 411:
#line 1942 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 412:
#line 1947 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 413:
#line 1949 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[-1].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 414:
#line 1954 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype) ? tree_cons ((yyvsp[-2].ttype), (yyvsp[-1].ttype), NULL_TREE) : (yyvsp[-1].ttype); ;}
    break;

  case 415:
#line 1956 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[-2].ttype), (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 416:
#line 1958 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), (yyvsp[-1].ttype), 1); ;}
    break;

  case 417:
#line 1960 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, NULL_TREE, (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 418:
#line 1962 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[0].ttype), NULL_TREE, 1); ;}
    break;

  case 419:
#line 1969 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[-1].ttype), (yyvsp[-2].ttype), 0, 0); ;}
    break;

  case 420:
#line 1971 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_declarator (NULL_TREE, (yyvsp[-1].ttype), 0, 0); ;}
    break;

  case 421:
#line 1973 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_declarator (NULL_TREE, (yyvsp[-2].ttype), 0, 1); ;}
    break;

  case 422:
#line 1975 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[-1].ttype), (yyvsp[-2].ttype), 1, 0); ;}
    break;

  case 423:
#line 1978 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[-1].ttype), (yyvsp[-3].ttype), 1, 0); ;}
    break;

  case 426:
#line 1991 "../../../kgccfe/gnu/c-parse.y"
    {
		  pedwarn ("deprecated use of label at end of compound statement");
		;}
    break;

  case 434:
#line 2008 "../../../kgccfe/gnu/c-parse.y"
    {
		  if ((pedantic && !flag_isoc99)
		      || warn_declaration_after_statement)
		    pedwarn_c90 ("ISO C90 forbids mixed declarations and code");
		;}
    break;

  case 449:
#line 2041 "../../../kgccfe/gnu/c-parse.y"
    { pushlevel (0);
		  clear_last_expr ();
		  add_scope_stmt (/*begin_p=*/1, /*partial_p=*/0);
		;}
    break;

  case 450:
#line 2048 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = add_scope_stmt (/*begin_p=*/0, /*partial_p=*/0); ;}
    break;

  case 451:
#line 2053 "../../../kgccfe/gnu/c-parse.y"
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
#line 2069 "../../../kgccfe/gnu/c-parse.y"
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
#line 2086 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids label declarations"); ;}
    break;

  case 457:
#line 2097 "../../../kgccfe/gnu/c-parse.y"
    { tree link;
		  for (link = (yyvsp[-1].ttype); link; link = TREE_CHAIN (link))
		    {
		      tree label = shadow_label (TREE_VALUE (link));
		      C_DECLARED_LABEL_FLAG (label) = 1;
		      add_decl_stmt (label);
		    }
		;}
    break;

  case 458:
#line 2111 "../../../kgccfe/gnu/c-parse.y"
    {;}
    break;

  case 460:
#line 2115 "../../../kgccfe/gnu/c-parse.y"
    { compstmt_count++;
                      (yyval.ttype) = c_begin_compound_stmt (); ;}
    break;

  case 461:
#line 2120 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = convert (void_type_node, integer_zero_node); ;}
    break;

  case 462:
#line 2122 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = poplevel (kept_level_p (), 1, 0);
		  SCOPE_STMT_BLOCK (TREE_PURPOSE ((yyvsp[0].ttype)))
		    = SCOPE_STMT_BLOCK (TREE_VALUE ((yyvsp[0].ttype)))
		    = (yyval.ttype); ;}
    break;

  case 465:
#line 2135 "../../../kgccfe/gnu/c-parse.y"
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
#line 2152 "../../../kgccfe/gnu/c-parse.y"
    { RECHAIN_STMTS ((yyvsp[-1].ttype), COMPOUND_BODY ((yyvsp[-1].ttype)));
		  last_expr_type = NULL_TREE;
                  (yyval.ttype) = (yyvsp[-1].ttype); ;}
    break;

  case 467:
#line 2160 "../../../kgccfe/gnu/c-parse.y"
    { c_finish_then (); ;}
    break;

  case 469:
#line 2177 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = c_begin_if_stmt (); ;}
    break;

  case 470:
#line 2179 "../../../kgccfe/gnu/c-parse.y"
    { c_expand_start_cond (c_common_truthvalue_conversion ((yyvsp[-1].ttype)),
				       compstmt_count,(yyvsp[-3].ttype));
		  (yyval.itype) = stmt_count;
		  if_stmt_file = (yyvsp[-7].filename);
		  if_stmt_line = (yyvsp[-6].lineno); ;}
    break;

  case 471:
#line 2191 "../../../kgccfe/gnu/c-parse.y"
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
#line 2202 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype);
		  RECHAIN_STMTS ((yyval.ttype), DO_BODY ((yyval.ttype))); ;}
    break;

  case 473:
#line 2210 "../../../kgccfe/gnu/c-parse.y"
    { if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.filename) = input_filename; ;}
    break;

  case 474:
#line 2216 "../../../kgccfe/gnu/c-parse.y"
    { if (yychar == YYEMPTY)
		    yychar = YYLEX;
		  (yyval.lineno) = lineno; ;}
    break;

  case 477:
#line 2229 "../../../kgccfe/gnu/c-parse.y"
    { if (flag_isoc99)
		    RECHAIN_STMTS ((yyvsp[-2].ttype), COMPOUND_BODY ((yyvsp[-2].ttype))); ;}
    break;

  case 478:
#line 2235 "../../../kgccfe/gnu/c-parse.y"
    { if ((yyvsp[0].ttype))
		    {
		      STMT_LINENO ((yyvsp[0].ttype)) = (yyvsp[-1].lineno);
		      /* ??? We currently have no way of recording
			 the filename for a statement.  This probably
			 matters little in practice at the moment,
			 but I suspect that problems will occur when
			 doing inlining at the tree level.  */
		    }
		;}
    break;

  case 479:
#line 2249 "../../../kgccfe/gnu/c-parse.y"
    { if ((yyvsp[0].ttype))
		    {
		      STMT_LINENO ((yyvsp[0].ttype)) = (yyvsp[-1].lineno);
		    }
		;}
    break;

  case 480:
#line 2258 "../../../kgccfe/gnu/c-parse.y"
    { c_expand_start_else ();
		  (yyvsp[-1].itype) = stmt_count; ;}
    break;

  case 481:
#line 2261 "../../../kgccfe/gnu/c-parse.y"
    { c_finish_else ();
		  c_expand_end_cond ();
		  if (extra_warnings && stmt_count == (yyvsp[-3].itype))
		    warning ("empty body in an else-statement"); ;}
    break;

  case 482:
#line 2266 "../../../kgccfe/gnu/c-parse.y"
    { c_expand_end_cond ();
		  /* This warning is here instead of in simple_if, because we
		     do not want a warning if an empty if is followed by an
		     else statement.  Increment stmt_count so we don't
		     give a second error if this is a nested `if'.  */
		  if (extra_warnings && stmt_count++ == (yyvsp[0].itype))
		    warning_with_file_and_line (if_stmt_file, if_stmt_line,
						"empty body in an if-statement"); ;}
    break;

  case 483:
#line 2278 "../../../kgccfe/gnu/c-parse.y"
    { c_expand_end_cond (); ;}
    break;

  case 484:
#line 2288 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_begin_while_stmt (); ;}
    break;

  case 485:
#line 2291 "../../../kgccfe/gnu/c-parse.y"
    { (yyvsp[-1].ttype) = c_common_truthvalue_conversion ((yyvsp[-1].ttype));
		  c_finish_while_stmt_cond
		    (c_common_truthvalue_conversion ((yyvsp[-1].ttype)), (yyvsp[-3].ttype));
		  (yyval.ttype) = add_stmt ((yyvsp[-3].ttype)); ;}
    break;

  case 486:
#line 2296 "../../../kgccfe/gnu/c-parse.y"
    { RECHAIN_STMTS ((yyvsp[-1].ttype), WHILE_BODY ((yyvsp[-1].ttype))); ;}
    break;

  case 487:
#line 2299 "../../../kgccfe/gnu/c-parse.y"
    { DO_COND ((yyvsp[-4].ttype)) = c_common_truthvalue_conversion ((yyvsp[-2].ttype)); ;}
    break;

  case 488:
#line 2301 "../../../kgccfe/gnu/c-parse.y"
    { ;}
    break;

  case 489:
#line 2303 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, NULL_TREE, NULL_TREE,
					  NULL_TREE, NULL_TREE);
		  add_stmt ((yyval.ttype)); ;}
    break;

  case 490:
#line 2307 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  RECHAIN_STMTS ((yyvsp[-2].ttype), FOR_INIT_STMT ((yyvsp[-2].ttype))); ;}
    break;

  case 491:
#line 2310 "../../../kgccfe/gnu/c-parse.y"
    { if ((yyvsp[-1].ttype))
		    FOR_COND ((yyvsp[-5].ttype))
		      = c_common_truthvalue_conversion ((yyvsp[-1].ttype)); ;}
    break;

  case 492:
#line 2314 "../../../kgccfe/gnu/c-parse.y"
    { FOR_EXPR ((yyvsp[-8].ttype)) = (yyvsp[-1].ttype); ;}
    break;

  case 493:
#line 2316 "../../../kgccfe/gnu/c-parse.y"
    { RECHAIN_STMTS ((yyvsp[-10].ttype), FOR_BODY ((yyvsp[-10].ttype))); ;}
    break;

  case 494:
#line 2318 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_start_case ((yyvsp[-1].ttype)); ;}
    break;

  case 495:
#line 2321 "../../../kgccfe/gnu/c-parse.y"
    { c_finish_case (); ;}
    break;

  case 496:
#line 2326 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_stmt (EXPR_STMT, (yyvsp[-1].ttype))); ;}
    break;

  case 497:
#line 2328 "../../../kgccfe/gnu/c-parse.y"
    { check_for_loop_decls (); ;}
    break;

  case 509:
#line 2349 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
           add_stmt(build_omp_stmt(sl2_sections_cons_b, NULL));
#endif
	 ;}
    break;

  case 510:
#line 2356 "../../../kgccfe/gnu/c-parse.y"
    { 
#ifdef TARG_SL
	   add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;
#endif
;}
    break;

  case 511:
#line 2362 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
           add_stmt(build_omp_stmt(sl2_minor_sections_cons_b, NULL));
#endif
	 ;}
    break;

  case 512:
#line 2368 "../../../kgccfe/gnu/c-parse.y"
    { 
#ifdef TARG_SL
	   add_stmt(build_omp_stmt(sl2_sections_cons_e, NULL)); (yyval.ttype)=NULL;
#endif
;}
    break;

  case 520:
#line 2399 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
#endif
        ;}
    break;

  case 521:
#line 2408 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
	  add_stmt (build_omp_stmt (sl2_section_cons_e, NULL));
#endif
        ;}
    break;

  case 522:
#line 2414 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (sl2_minor_section_cons_b, NULL));
	  else
	    In_MP_Section = false;
#endif
        ;}
    break;

  case 523:
#line 2423 "../../../kgccfe/gnu/c-parse.y"
    {
#ifdef TARG_SL
	  add_stmt (build_omp_stmt (sl2_minor_section_cons_e, NULL));
#endif
        ;}
    break;

  case 526:
#line 2435 "../../../kgccfe/gnu/c-parse.y"
    {;}
    break;

  case 530:
#line 2443 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (options_dir, (yyvsp[-1].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 531:
#line 2449 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 535:
#line 2458 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (exec_freq_dir, (yyvsp[-1].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 536:
#line 2462 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_string (6, "never"); ;}
    break;

  case 537:
#line 2463 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_string (5, "init"); ;}
    break;

  case 538:
#line 2464 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_string (9, "frequent"); ;}
    break;

  case 539:
#line 2469 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (unroll_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 540:
#line 2471 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (unroll_dir, (yyvsp[-1].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 542:
#line 2480 "../../../kgccfe/gnu/c-parse.y"
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

  case 543:
#line 2493 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (parallel_dir_e, NULL));
	    (yyval.ttype)=NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[-1].ttype)->omp.omp_clause_list =
	        chain_parallel_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
		          build_parallel_clause_list (mp_locals[mp_nesting],
			                              p_private, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 544:
#line 2511 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = NULL; ;}
    break;

  case 545:
#line 2513 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = (yyvsp[-1].pclause_type); ;}
    break;

  case 546:
#line 2518 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = (yyvsp[0].pclause_type); ;}
    break;

  case 547:
#line 2520 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = chain_parallel_list_on ((yyvsp[-1].pclause_type), (yyvsp[0].pclause_type)); ;}
    break;

  case 548:
#line 2525 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_if, 0, 0); ;}
    break;

  case 549:
#line 2527 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_num_threads, 0, 0); ;}
    break;

  case 550:
#line 2529 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_private, 0, 0); ;}
    break;

  case 551:
#line 2531 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_firstprivate, 0, 0); ;}
    break;

  case 552:
#line 2533 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_shared, 0, 0); ;}
    break;

  case 553:
#line 2535 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_shared, 0); ;}
    break;

  case 554:
#line 2537 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(NULL, p_default, default_none, 0); ;}
    break;

  case 555:
#line 2539 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 556:
#line 2541 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[-1].ttype), p_copyin, 0, 0); ;}
    break;

  case 557:
#line 2546 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (for_dir_b, (yyvsp[0].for_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 558:
#line 2552 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (for_dir_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 559:
#line 2558 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, NULL_TREE, NULL_TREE,
					  NULL_TREE, NULL_TREE);
		  TREE_ADDRESSABLE ((yyval.ttype)) = 1; // generate do-loop
		  add_stmt ((yyval.ttype)); ;}
    break;

  case 560:
#line 2563 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  RECHAIN_STMTS ((yyvsp[-2].ttype), FOR_INIT_STMT ((yyvsp[-2].ttype))); ;}
    break;

  case 561:
#line 2566 "../../../kgccfe/gnu/c-parse.y"
    { if ((yyvsp[-1].ttype))
		    FOR_COND ((yyvsp[-5].ttype))
		      = c_common_truthvalue_conversion ((yyvsp[-1].ttype)); ;}
    break;

  case 562:
#line 2570 "../../../kgccfe/gnu/c-parse.y"
    { FOR_EXPR ((yyvsp[-8].ttype)) = (yyvsp[-1].ttype); ;}
    break;

  case 563:
#line 2572 "../../../kgccfe/gnu/c-parse.y"
    { RECHAIN_STMTS ((yyvsp[-10].ttype), FOR_BODY ((yyvsp[-10].ttype))); ;}
    break;

  case 564:
#line 2577 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = NULL; ;}
    break;

  case 565:
#line 2579 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[-1].for_clause_type); ;}
    break;

  case 566:
#line 2584 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[0].for_clause_type); ;}
    break;

  case 567:
#line 2586 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = chain_for_list_on ((yyvsp[-1].for_clause_type), (yyvsp[0].for_clause_type)); ;}
    break;

  case 568:
#line 2591 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_private, 0, 0); ;}
    break;

  case 569:
#line 2593 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_firstprivate, 0, 0); ;}
    break;

  case 570:
#line 2595 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_lastprivate, 0, 0); ;}
    break;

  case 571:
#line 2597 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 572:
#line 2599 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_schedule_1, (yyvsp[-1].sch_k_type), 0); ;}
    break;

  case 573:
#line 2601 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[-1].ttype), f_schedule_2, (yyvsp[-3].sch_k_type), 0); ;}
    break;

  case 574:
#line 2603 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_ordered, 0, 0); ;}
    break;

  case 575:
#line 2605 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(NULL, f_nowait, 0, 0); ;}
    break;

  case 576:
#line 2610 "../../../kgccfe/gnu/c-parse.y"
    {
       if (strcmp (IDENTIFIER_POINTER ((yyvsp[0].ttype)), "static"))
              error ("'%s' is not a valid schedule kind\n",  IDENTIFIER_POINTER ((yyvsp[0].ttype)));
       else
              (yyval.sch_k_type)=SK_STATIC; ;}
    break;

  case 577:
#line 2616 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sch_k_type)=SK_DYNAMIC; ;}
    break;

  case 578:
#line 2618 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sch_k_type)=SK_GUIDED; ;}
    break;

  case 579:
#line 2620 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sch_k_type)=SK_RUNTIME; ;}
    break;

  case 580:
#line 2626 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (sections_cons_b, (yyvsp[0].sections_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 581:
#line 2631 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (sections_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 582:
#line 2636 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = NULL; ;}
    break;

  case 583:
#line 2638 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[-1].sections_clause_type); ;}
    break;

  case 584:
#line 2643 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[0].sections_clause_type); ;}
    break;

  case 585:
#line 2645 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = chain_sections_list_on ((yyvsp[-1].sections_clause_type), (yyvsp[0].sections_clause_type)); ;}
    break;

  case 586:
#line 2650 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_private, 0); ;}
    break;

  case 587:
#line 2652 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_firstprivate, 0); ;}
    break;

  case 588:
#line 2654 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_lastprivate, 0); ;}
    break;

  case 589:
#line 2656 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[-1].ttype), sections_reduction, (yyvsp[-3].red_op_type)); ;}
    break;

  case 590:
#line 2658 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list(NULL, sections_nowait, 0); ;}
    break;

  case 591:
#line 2664 "../../../kgccfe/gnu/c-parse.y"
    {
           In_MP_Section = true;
           add_stmt (build_omp_stmt (section_cons_b, NULL));
        ;}
    break;

  case 596:
#line 2679 "../../../kgccfe/gnu/c-parse.y"
    {
	  In_MP_Section = false;
	  add_stmt (build_omp_stmt (section_cons_e, NULL));
	;}
    break;

  case 599:
#line 2692 "../../../kgccfe/gnu/c-parse.y"
    {
	  if (!In_MP_Section)
	    add_stmt (build_omp_stmt (section_cons_b, NULL));
	  else
	    In_MP_Section = false;
        ;}
    break;

  case 600:
#line 2699 "../../../kgccfe/gnu/c-parse.y"
    {
	  add_stmt (build_omp_stmt (section_cons_e, NULL));
        ;}
    break;

  case 602:
#line 2710 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (single_cons_b, (yyvsp[0].single_clause_type)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 603:
#line 2715 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (single_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 604:
#line 2720 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.single_clause_type) = NULL;;}
    break;

  case 605:
#line 2722 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.single_clause_type) = (yyvsp[-1].single_clause_type);;}
    break;

  case 606:
#line 2727 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = (yyvsp[0].single_clause_type); ;}
    break;

  case 607:
#line 2729 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = chain_single_list_on ((yyvsp[-1].single_clause_type), (yyvsp[0].single_clause_type)); ;}
    break;

  case 608:
#line 2734 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_private); ;}
    break;

  case 609:
#line 2736 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_firstprivate); ;}
    break;

  case 610:
#line 2738 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[-1].ttype), single_copyprivate); ;}
    break;

  case 611:
#line 2740 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list(NULL, single_nowait); ;}
    break;

  case 612:
#line 2745 "../../../kgccfe/gnu/c-parse.y"
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

  case 613:
#line 2758 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (par_for_cons_e, NULL));
	    (yyval.ttype) = NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[-1].ttype)->omp.omp_clause_list =
	        chain_parallel_for_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
		          build_parallel_for_clause_list (mp_locals[mp_nesting],
			                              p_for_private, 0, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 614:
#line 2776 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.parallel_for_clause_type) = NULL;;}
    break;

  case 615:
#line 2778 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.parallel_for_clause_type) = (yyvsp[-1].parallel_for_clause_type);;}
    break;

  case 616:
#line 2783 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = (yyvsp[0].parallel_for_clause_type); ;}
    break;

  case 617:
#line 2785 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = chain_parallel_for_list_on ((yyvsp[-1].parallel_for_clause_type), (yyvsp[0].parallel_for_clause_type)); ;}
    break;

  case 618:
#line 2790 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_if, 0, 0, 0); ;}
    break;

  case 619:
#line 2792 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_num_threads, 0, 0, 0); ;}
    break;

  case 620:
#line 2794 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_private, 0, 0, 0); ;}
    break;

  case 621:
#line 2796 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_copyprivate, 0, 0, 0); ;}
    break;

  case 622:
#line 2798 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_firstprivate, 0, 0, 0); ;}
    break;

  case 623:
#line 2800 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_lastprivate, 0, 0, 0); ;}
    break;

  case 624:
#line 2802 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_shared, 0, 0, 0); ;}
    break;

  case 625:
#line 2804 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_shared, 0, 0); ;}
    break;

  case 626:
#line 2806 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_default, default_none, 0, 0); ;}
    break;

  case 627:
#line 2808 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_reduction, 0, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 628:
#line 2810 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_copyin, 0, 0, 0); ;}
    break;

  case 629:
#line 2812 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_schedule_1, 0, (yyvsp[-1].sch_k_type), 0); ;}
    break;

  case 630:
#line 2814 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[-1].ttype), p_for_schedule_2, 0, (yyvsp[-3].sch_k_type), 0); ;}
    break;

  case 631:
#line 2816 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(NULL, p_for_ordered, 0, 0, 0); ;}
    break;

  case 632:
#line 2821 "../../../kgccfe/gnu/c-parse.y"
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

  case 633:
#line 2834 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (par_sctn_cons_e, NULL));
	    (yyval.ttype) = NULL;
	    In_MP_Region = false;
	    if (mp_locals[mp_nesting])
	    {
	      (yyvsp[-1].ttype)->omp.omp_clause_list =
	        chain_parallel_sections_list_on ((yyvsp[-1].ttype)->omp.omp_clause_list,
		   build_parallel_sections_clause_list (mp_locals[mp_nesting],
		   p_sections_private, 0, 0));
	    }
	    mp_locals[mp_nesting] = NULL;
	    mp_nesting--;
	;}
    break;

  case 634:
#line 2852 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.parallel_sections_clause_type) = NULL;;}
    break;

  case 635:
#line 2854 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.parallel_sections_clause_type) = (yyvsp[-1].parallel_sections_clause_type);;}
    break;

  case 636:
#line 2859 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type)=(yyvsp[0].parallel_sections_clause_type); ;}
    break;

  case 637:
#line 2861 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = chain_parallel_sections_list_on ((yyvsp[-1].parallel_sections_clause_type), (yyvsp[0].parallel_sections_clause_type)); ;}
    break;

  case 638:
#line 2866 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_if, 0, 0); ;}
    break;

  case 639:
#line 2868 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_num_threads, 0, 0); ;}
    break;

  case 640:
#line 2870 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_private, 0, 0); ;}
    break;

  case 641:
#line 2872 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_copyprivate, 0, 0); ;}
    break;

  case 642:
#line 2874 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_firstprivate, 0, 0); ;}
    break;

  case 643:
#line 2876 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_lastprivate, 0, 0); ;}
    break;

  case 644:
#line 2878 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_shared, 0, 0); ;}
    break;

  case 645:
#line 2880 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_shared, 0); ;}
    break;

  case 646:
#line 2882 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(NULL, p_sections_default, default_none, 0); ;}
    break;

  case 647:
#line 2884 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_reduction, 0, (yyvsp[-3].red_op_type)); ;}
    break;

  case 648:
#line 2886 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[-1].ttype), p_sections_copyin, 0, 0); ;}
    break;

  case 649:
#line 2891 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 650:
#line 2893 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 652:
#line 2902 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_b, (yyvsp[0].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 653:
#line 2904 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 654:
#line 2909 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL; ;}
    break;

  case 655:
#line 2911 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[-2].ttype); ;}
    break;

  case 656:
#line 2916 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 657:
#line 2921 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (barrier_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 658:
#line 2926 "../../../kgccfe/gnu/c-parse.y"
    {
	    add_stmt (build_omp_stmt (atomic_cons, (yyvsp[-1].ttype)));
	    (yyval.ttype) = NULL;
        ;}
    break;

  case 660:
#line 2938 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 661:
#line 2941 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, (yyvsp[-2].ttype))); (yyval.ttype) = NULL; ;}
    break;

  case 662:
#line 2946 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_b, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 663:
#line 2948 "../../../kgccfe/gnu/c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_e, NULL)); (yyval.ttype) = NULL; ;}
    break;

  case 665:
#line 2957 "../../../kgccfe/gnu/c-parse.y"
    { expand_threadprivate((yyvsp[-2].ttype)); ;}
    break;

  case 666:
#line 2962 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_ADD;;}
    break;

  case 667:
#line 2964 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_MPY;;}
    break;

  case 668:
#line 2966 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_SUB;;}
    break;

  case 669:
#line 2968 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BAND;;}
    break;

  case 670:
#line 2970 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BXOR;;}
    break;

  case 671:
#line 2972 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BIOR;;}
    break;

  case 672:
#line 2974 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CAND;;}
    break;

  case 673:
#line 2976 "../../../kgccfe/gnu/c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CIOR;;}
    break;

  case 674:
#line 2981 "../../../kgccfe/gnu/c-parse.y"
    {
           if(lookup_name((yyvsp[0].ttype))==0)
                        error("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[0].ttype)));
          (yyval.ttype) = build_tree_list (NULL_TREE, lookup_name ((yyvsp[0].ttype)));
        ;}
    break;

  case 675:
#line 2987 "../../../kgccfe/gnu/c-parse.y"
    {
      if (lookup_name ((yyvsp[0].ttype)) == 0)
        error ("Undefined variable %s", IDENTIFIER_POINTER((yyvsp[0].ttype)));
      (yyval.ttype) = chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, lookup_name ((yyvsp[0].ttype))));
    ;}
    break;

  case 678:
#line 3002 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++; (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 679:
#line 3004 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_expr_stmt ((yyvsp[-1].ttype)); ;}
    break;

  case 680:
#line 3007 "../../../kgccfe/gnu/c-parse.y"
    { if (flag_isoc99)
		    RECHAIN_STMTS ((yyvsp[-2].ttype), COMPOUND_BODY ((yyvsp[-2].ttype)));
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 681:
#line 3011 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = add_stmt (build_break_stmt ()); ;}
    break;

  case 682:
#line 3014 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = add_stmt (build_continue_stmt ()); ;}
    break;

  case 683:
#line 3017 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_return (NULL_TREE); ;}
    break;

  case 684:
#line 3020 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = c_expand_return ((yyvsp[-1].ttype)); ;}
    break;

  case 685:
#line 3023 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = simple_asm_stmt ((yyvsp[-2].ttype)); ;}
    break;

  case 686:
#line 3027 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype), NULL_TREE, NULL_TREE); ;}
    break;

  case 687:
#line 3032 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[-8].ttype), (yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype), NULL_TREE); ;}
    break;

  case 688:
#line 3037 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = build_asm_stmt ((yyvsp[-10].ttype), (yyvsp[-8].ttype), (yyvsp[-6].ttype), (yyvsp[-4].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 689:
#line 3040 "../../../kgccfe/gnu/c-parse.y"
    { tree decl;
		  stmt_count++;
		  decl = lookup_label ((yyvsp[-1].ttype));
		  if (decl != 0)
		    {
		      TREE_USED (decl) = 1;
		      (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, decl));
		    }
		  else
		    (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 690:
#line 3052 "../../../kgccfe/gnu/c-parse.y"
    { if (pedantic)
		    pedwarn ("ISO C forbids `goto *expr;'");
		  stmt_count++;
		  (yyvsp[-1].ttype) = convert (ptr_type_node, (yyvsp[-1].ttype));
		  (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, (yyvsp[-1].ttype))); ;}
    break;

  case 691:
#line 3058 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 692:
#line 3066 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case ((yyvsp[-1].ttype), NULL_TREE); ;}
    break;

  case 693:
#line 3069 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case ((yyvsp[-3].ttype), (yyvsp[-1].ttype)); ;}
    break;

  case 694:
#line 3072 "../../../kgccfe/gnu/c-parse.y"
    { stmt_count++;
		  (yyval.ttype) = do_case (NULL_TREE, NULL_TREE); ;}
    break;

  case 695:
#line 3075 "../../../kgccfe/gnu/c-parse.y"
    { tree label = define_label ((yyvsp[-3].filename), (yyvsp[-2].lineno), (yyvsp[-4].ttype));
		  stmt_count++;
		  if (label)
		    {
		      decl_attributes (&label, (yyvsp[0].ttype), 0);
		      (yyval.ttype) = add_stmt (build_stmt (LABEL_STMT, label));
		    }
		  else
		    (yyval.ttype) = NULL_TREE;
		;}
    break;

  case 696:
#line 3091 "../../../kgccfe/gnu/c-parse.y"
    { emit_line_note (input_filename, lineno);
		  (yyval.ttype) = NULL_TREE; ;}
    break;

  case 697:
#line 3094 "../../../kgccfe/gnu/c-parse.y"
    { emit_line_note (input_filename, lineno); ;}
    break;

  case 698:
#line 3099 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 700:
#line 3106 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = NULL_TREE; ;}
    break;

  case 703:
#line 3113 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), (yyvsp[0].ttype)); ;}
    break;

  case 704:
#line 3118 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (NULL_TREE, (yyvsp[-3].ttype)), (yyvsp[-1].ttype)); ;}
    break;

  case 705:
#line 3120 "../../../kgccfe/gnu/c-parse.y"
    { (yyvsp[-5].ttype) = build_string (IDENTIFIER_LENGTH ((yyvsp[-5].ttype)),
				     IDENTIFIER_POINTER ((yyvsp[-5].ttype)));
		  (yyval.ttype) = build_tree_list (build_tree_list ((yyvsp[-5].ttype), (yyvsp[-3].ttype)), (yyvsp[-1].ttype)); ;}
    break;

  case 706:
#line 3127 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), NULL_TREE); ;}
    break;

  case 707:
#line 3129 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, (yyvsp[0].ttype), (yyvsp[-2].ttype)); ;}
    break;

  case 708:
#line 3139 "../../../kgccfe/gnu/c-parse.y"
    { pushlevel (0);
		  clear_parm_order ();
		  declare_parm_level (0); ;}
    break;

  case 709:
#line 3143 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  parmlist_tags_warning ();
		  poplevel (0, 0, 0); ;}
    break;

  case 711:
#line 3151 "../../../kgccfe/gnu/c-parse.y"
    { tree parm;
		  if (pedantic)
		    pedwarn ("ISO C forbids forward parameter declarations");
		  /* Mark the forward decls as such.  */
		  for (parm = getdecls (); parm; parm = TREE_CHAIN (parm))
		    TREE_ASM_WRITTEN (parm) = 1;
		  clear_parm_order (); ;}
    break;

  case 712:
#line 3159 "../../../kgccfe/gnu/c-parse.y"
    { /* Dummy action so attributes are in known place
		     on parser stack.  */ ;}
    break;

  case 713:
#line 3162 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype); ;}
    break;

  case 714:
#line 3164 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = tree_cons (NULL_TREE, NULL_TREE, NULL_TREE); ;}
    break;

  case 715:
#line 3170 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 716:
#line 3172 "../../../kgccfe/gnu/c-parse.y"
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

  case 717:
#line 3182 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = get_parm_info (1);
		  parsing_iso_function_signature = true;
		;}
    break;

  case 718:
#line 3186 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 719:
#line 3191 "../../../kgccfe/gnu/c-parse.y"
    { push_parm_decl ((yyvsp[0].ttype)); ;}
    break;

  case 720:
#line 3193 "../../../kgccfe/gnu/c-parse.y"
    { push_parm_decl ((yyvsp[0].ttype)); ;}
    break;

  case 721:
#line 3200 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 722:
#line 3205 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 723:
#line 3210 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 724:
#line 3213 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 725:
#line 3219 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 726:
#line 3227 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 727:
#line 3232 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 728:
#line 3237 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 729:
#line 3240 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
							 (yyvsp[-1].ttype)),
					chainon ((yyvsp[0].ttype), all_prefix_attributes));
		  POP_DECLSPEC_STACK; ;}
    break;

  case 730:
#line 3246 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  POP_DECLSPEC_STACK; ;}
    break;

  case 731:
#line 3252 "../../../kgccfe/gnu/c-parse.y"
    { prefix_attributes = chainon (prefix_attributes, (yyvsp[-3].ttype));
		  all_prefix_attributes = prefix_attributes; ;}
    break;

  case 732:
#line 3261 "../../../kgccfe/gnu/c-parse.y"
    { pushlevel (0);
		  clear_parm_order ();
		  declare_parm_level (1); ;}
    break;

  case 733:
#line 3265 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = (yyvsp[0].ttype);
		  parmlist_tags_warning ();
		  poplevel (0, 0, 0); ;}
    break;

  case 735:
#line 3273 "../../../kgccfe/gnu/c-parse.y"
    { tree t;
		  for (t = (yyvsp[-1].ttype); t; t = TREE_CHAIN (t))
		    if (TREE_VALUE (t) == NULL_TREE)
		      error ("`...' in old-style identifier list");
		  (yyval.ttype) = tree_cons (NULL_TREE, NULL_TREE, (yyvsp[-1].ttype));

		  /* Make sure we have a parmlist after attributes.  */
		  if ((yyvsp[-3].ttype) != 0
		      && (TREE_CODE ((yyval.ttype)) != TREE_LIST
			  || TREE_PURPOSE ((yyval.ttype)) == 0
			  || TREE_CODE (TREE_PURPOSE ((yyval.ttype))) != PARM_DECL))
		    YYERROR1;
		;}
    break;

  case 736:
#line 3291 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 737:
#line 3293 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 738:
#line 3299 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = build_tree_list (NULL_TREE, (yyvsp[0].ttype)); ;}
    break;

  case 739:
#line 3301 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[-2].ttype), build_tree_list (NULL_TREE, (yyvsp[0].ttype))); ;}
    break;

  case 740:
#line 3306 "../../../kgccfe/gnu/c-parse.y"
    { (yyval.ttype) = SAVE_EXT_FLAGS();
		  pedantic = 0;
		  warn_pointer_arith = 0;
		  warn_traditional = 0;
		  flag_iso = 0; ;}
    break;


      default: break;
    }

/* Line 1126 of yacc.c.  */
#line 6834 "c-parse.c"

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


#line 3313 "../../../kgccfe/gnu/c-parse.y"


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
#ifdef TARG_SL
  { "__sbuf",           RID_SBUF,       0 },
  { "__sdram",          RID_SDRAM,      0 },
  { "__v1buf",          RID_V1BUF,      0 },
  { "__v2buf",          RID_V2BUF,      0 },
  { "__v4buf",          RID_V4BUF,      0 },
#endif
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

#ifdef TARG_SL
  /* RID_SBUF */     TYPE_QUAL,
  /* RID_SDRAM */    TYPE_QUAL,
  /* RID_V1BUF */ TYPE_QUAL, 
  /* RID_V2BUF */ TYPE_QUAL, 
  /* RID_V4BUF */ TYPE_QUAL, 
#endif

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

  /* Windows systems use \r\n not \n, so check for that
   * but return \n since that is what grammar is checking for.
   */
  if (!strcmp (s, "\n") || !strcmp(s,"\r"))
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
  if (!strcmp (s, "unroll") && !seen_omp_paren)
    return PRAGMA_UNROLL;
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

#ifdef TARG_SL //fork_joint
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
 	  char *omp_name;
	  bool valid = false;
	  int code;
          if (TREE_CODE (yylval.ttype) != IDENTIFIER_NODE) abort();
	  omp_name = IDENTIFIER_POINTER (yylval.ttype);
	  code = check_omp_string (omp_name, &valid);
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

