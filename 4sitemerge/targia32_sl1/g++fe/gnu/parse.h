/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

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




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 314 "../../../kg++fe/gnu/cp/parse.y"
{ GTY(())
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
}
/* Line 1489 of yacc.c.  */
#line 322 "parse.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

#define YYEMPTY		(-2)
