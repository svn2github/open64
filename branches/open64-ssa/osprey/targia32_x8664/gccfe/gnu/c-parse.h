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
/* Line 1447 of yacc.c.  */
#line 260 "c-parse.h"
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;



#define YYEMPTY		(-2)
