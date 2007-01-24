/* A Bison parser, made by GNU Bison 1.875c.  */

/* Skeleton parser for Yacc-like parsing with Bison,
   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003 Free Software Foundation, Inc.

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
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

/* As a special exception, when this file is copied by Bison into a
   Bison output file, you may use that output file without restriction.
   This special exception was added by the Free Software Foundation
   in version 1.24 of Bison.  */

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
     ALIAS = 354
   };
#endif
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
/* Line 1275 of yacc.c.  */
#line 247 "c-parse.h"
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;



#define YYEMPTY		(-2)
