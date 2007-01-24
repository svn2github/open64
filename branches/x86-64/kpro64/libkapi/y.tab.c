#ifndef lint
static char const 
yyrcsid[] = "$FreeBSD: src/usr.bin/yacc/skeleton.c,v 1.28 2000/01/17 02:04:06 bde Exp $";
#endif
#include <stdlib.h>
#define YYBYACC 1
#define YYMAJOR 1
#define YYMINOR 9
#define YYLEX yylex()
#define YYEMPTY -1
#define yyclearin (yychar=(YYEMPTY))
#define yyerrok (yyerrflag=0)
#define YYRECOVERING() (yyerrflag!=0)
static int yygrowstack();
#define YYPREFIX "yy"
#line 25 "kapi_parser.y"

/* static char sccs_id[] = "%W%  %G%  %U%"; */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "kapi_internal.h"
#include "kapi_util.h"
#include "kapi_error.h"
#include "kapi_parse.h"

extern knobs_t *kapi_pknobsCurrent;
extern char yytext[];

static vfi_t vfi_gl;
#line 34 "y.tab.c"
#define YYERRCODE 256
#define ENDMARKER 0
#define tokARRAY 257
#define tokBITMASK 258
#define tokEXPECT 259
#define tokENUM 260
#define tokLIMIT 261
#define tokUSE 262
#define tokTYPE 263
#define tokVARIABLE 264
#define tokATTRIBUTE 265
#define tokNOREDEFINE 266
#define tokOF 267
#define tokIMPLICIT 268
#define tokNONE 269
#define tokLCBRACK 270
#define tokRCBRACK 271
#define tokLABRACK 272
#define tokRABRACK 273
#define tokLSBRACK 274
#define tokRSBRACK 275
#define tokLPAREN 276
#define tokRPAREN 277
#define tokINT 278
#define tokREAL 279
#define tokSTRING 280
#define tokREALCONST 281
#define tokINTCONST 282
#define tokSTRINGCONST 283
#define tokEQUALS 284
#define tokCOMMA 285
#define tokCOLON 286
#define tokSEMICOLON 287
#define tokCOLONEQUALS 288
#define tokPLUSEQUALS 289
#define tokSTAR 290
#define tokDOT 291
#define tokDDOT 292
#define tokVERTBAR 293
#define tokCOMMENT 294
#define tokIDENT 295
#define tokPLUS 296
#define tokDIV 297
#define tokAPPEND 298
const short yylhs[] = {                                        -1,
    0,    0,   32,   32,   33,   33,   34,   34,   34,   34,
   34,   34,   34,   34,   34,   42,   42,   35,   36,   37,
   38,    9,    9,    9,    9,   39,   40,    7,    7,    8,
    8,    8,   41,   10,   10,   11,   11,   11,   12,   12,
   12,   12,   12,   27,   27,   26,   28,   28,   22,   31,
   31,   24,   24,   23,   30,   30,   25,   29,   29,    2,
    2,    2,    2,    2,    3,    6,    6,    4,    4,    5,
    5,    1,   18,   18,   14,   14,   17,   17,   13,   13,
   16,   15,   19,   19,   19,   21,   21,   21,   21,   20,
   20,
};
const short yylen[] = {                                         2,
    0,    1,    1,    2,    2,    2,    1,    1,    1,    1,
    1,    1,    1,    1,    1,    3,    2,    8,    3,    7,
    2,    1,    1,    1,    1,    5,    4,    3,    0,    1,
    1,    1,    2,    2,    0,    1,    6,    6,    1,    1,
    1,    1,    4,    0,    1,    1,    1,    3,    1,    1,
    3,    1,    0,    1,    1,    3,    1,    1,    3,    1,
    1,    1,    1,    2,    3,    1,    3,    1,    2,    1,
    1,    4,    1,    0,    1,    0,    1,    2,    1,    2,
    5,    5,    1,    3,    3,    1,    1,    1,    1,    3,
    3,
};
const short yydefred[] = {                                      0,
   15,    0,    0,    0,    0,    0,    0,    0,    3,    0,
    7,    8,    9,   10,   11,   12,   13,   14,   24,   22,
   23,   25,    0,    0,   21,    0,   17,    0,    0,    0,
   33,    0,    4,    5,    6,   55,   19,    0,    0,   32,
   31,   30,    0,    0,    0,   40,   41,   39,   42,   34,
   36,   16,    0,    0,    0,    0,   28,    0,    0,    0,
   62,    0,   60,    0,   63,    0,   27,   66,    0,    0,
   56,    0,    0,    0,    0,    0,    0,    0,   77,    0,
   26,   70,   71,    0,    0,    0,    0,    0,   43,    0,
    0,    0,   78,   68,    0,    0,    0,    0,    0,    0,
   72,   47,   45,    0,    0,   69,   20,    0,    0,   18,
   79,   38,   37,    0,    0,    0,   80,   83,    0,   81,
   48,    0,   50,    0,    0,    0,    0,   88,   86,   87,
   89,    0,    0,    0,    0,    0,   85,   84,    0,    0,
   82,   91,   90,   59,   51,
};
const short yydgoto[] = {                                       7,
   65,   66,   67,   68,   84,   69,   30,   43,   23,   31,
   50,   51,  109,  110,  111,   79,   80,   81,  120,  126,
  127,  128,   37,   90,  130,  103,  104,  105,  132,   38,
  133,    8,    9,   10,   11,   12,   13,   14,   15,   16,
   17,   18,
};
const short yysindex[] = {                                   -253,
    0, -182, -287, -244, -228, -267,    0, -253,    0, -254,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0, -239, -227,    0, -223,    0, -241, -224, -226,
    0, -216,    0,    0,    0,    0,    0, -212, -191,    0,
    0,    0, -201, -199, -196,    0,    0,    0,    0,    0,
    0,    0, -247, -176, -210, -189,    0, -276, -207, -187,
    0,    0,    0, -184,    0, -170,    0,    0, -273, -183,
    0, -239, -181, -180, -179, -239,    0, -175,    0, -170,
    0,    0,    0, -264, -239, -178, -171, -167,    0, -174,
 -212, -177,    0,    0, -184,    0, -173, -160, -229, -229,
    0,    0,    0, -168, -172,    0,    0, -165, -160,    0,
    0,    0,    0, -246, -169, -177,    0,    0, -218,    0,
    0, -164,    0, -190, -163, -166, -162,    0,    0,    0,
    0, -161, -158, -156, -159, -157,    0,    0, -154, -151,
    0,    0,    0,    0,    0,
};
const short yyrindex[] = {                                    108,
    0,    0,    0,    0,   76,    0,    0,  112,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,   92,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    1,    0,    7,    0,   86,    0,    0,    0,    0,
    0,    0,    0,    0,    0, -155,   21,    0,    0,  126,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
 -152, -153,    0,    0,   27,   70,    0,  132,    0,    0,
    0,    0,    0,    0, -251,    0,    0,    0,  142,    0,
    0,    0,    0,    0,    0, -153,    0,    0,    0,    0,
    0,    0,    0, -245, -206,    0,    0,    0,    0,    0,
    0, -146, -144,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,
};
const short yygindex[] = {                                      0,
    0,    0,    0,   32,    0,    0,  -52,    0,    0,    0,
    0,  -47,    0,    0,    8,   38,    0,    0,    0,    0,
    0,    0,  -72,    0,    0,    2,    3,    0,    0,   58,
    0,    0,  127,  129,    0,    0,    0,    0,    0,    0,
    0,    0,
};
#define YYTABLESIZE 440
const short yytable[] = {                                      86,
   61,    1,    1,   73,    2,    2,   29,   24,    3,    3,
   60,   77,   97,    4,    4,   44,   45,   94,   74,  118,
   64,   46,   82,   83,   25,   46,   29,   32,   45,  119,
   95,   58,   34,   61,   62,   63,   46,   47,   48,   58,
    5,    5,  106,    6,    6,   26,  129,   64,   46,   47,
   48,  112,  113,   49,   27,   36,   39,   28,   52,   40,
   29,   53,  123,  124,  102,   49,   41,   54,   56,   65,
   55,   42,   55,   57,   58,   35,  125,   19,   55,   59,
   20,   21,   22,   70,   71,   74,   72,   75,   76,   26,
   78,   54,   85,   87,   88,   99,   92,   89,   98,  100,
  108,  135,  101,  107,  114,  102,  116,    1,  134,  141,
  137,    2,  115,  121,  138,   96,  117,   93,  122,   44,
  131,   53,  142,  139,   52,   73,  140,  144,  136,  145,
   57,   76,   49,   91,   33,    0,    0,  143,   35,    0,
    0,   75,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,   61,    0,    0,   61,
    0,   61,   29,   61,    0,   29,    0,   29,   61,   29,
    0,    0,    0,    0,   29,    0,   64,    0,    0,   64,
    0,   64,   29,   64,    0,   29,    0,   61,   64,   29,
    0,    0,    0,   29,   29,   61,   68,   68,   61,    0,
    0,   29,   29,   29,   29,    0,    0,   64,    0,    0,
    0,    0,    0,   29,    0,   64,   69,   69,   64,    0,
    0,   29,   29,   29,   29,   65,    0,    0,   65,    0,
    0,   35,   65,    0,   35,    0,    0,   65,   35,    0,
    0,   74,    0,   35,   74,    0,    0,   54,   74,    0,
   54,    0,    0,   74,   54,    0,   65,    0,    0,   54,
    0,    0,   35,   29,   65,   67,   67,   65,   54,    0,
   35,    0,   74,   35,    0,    0,    0,    0,   54,    0,
   74,   73,    0,   74,   73,    0,   54,   76,   73,   54,
   76,    0,    0,   73,   76,    0,    0,   75,    0,   76,
   75,    0,    0,    0,   75,    0,    0,    0,    0,   75,
    0,    0,   73,    0,    0,    0,    0,    0,   76,    0,
   73,    0,    0,   73,    0,    0,   76,    0,   75,   76,
    0,    0,    0,    0,    0,    0,   75,    0,    0,   75,
};
const short yycheck[] = {                                      72,
    0,  256,  256,  280,  259,  259,    0,  295,  263,  263,
  258,   64,   85,  268,  268,  257,  258,  282,  295,  266,
    0,  273,  296,  297,  269,  277,    0,  295,  258,  276,
  295,  277,  287,  281,  282,  283,  278,  279,  280,  285,
  295,  295,   95,  298,  298,  274,  119,  295,  278,  279,
  280,   99,  100,  295,  283,  295,  284,  286,  283,  283,
  289,  288,  281,  282,  283,  295,  290,  284,  260,    0,
  277,  295,  285,  275,  274,    0,  295,  260,  285,  276,
  263,  264,  265,  260,  295,    0,  276,  295,  276,  274,
  261,    0,  276,  275,  275,  267,  272,  277,  277,  267,
  261,  292,  277,  277,  273,  283,  272,    0,  273,  266,
  277,    0,  285,  283,  277,   84,  109,   80,  116,  273,
  119,  277,  282,  285,  277,    0,  285,  282,  292,  281,
  277,    0,  277,   76,    8,   -1,   -1,  295,   10,   -1,
   -1,    0,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,  256,   -1,   -1,  259,
   -1,  261,  256,  263,   -1,  259,   -1,  261,  268,  263,
   -1,   -1,   -1,   -1,  268,   -1,  256,   -1,   -1,  259,
   -1,  261,  256,  263,   -1,  259,   -1,  287,  268,  263,
   -1,   -1,   -1,  287,  268,  295,  296,  297,  298,   -1,
   -1,  295,  296,  297,  298,   -1,   -1,  287,   -1,   -1,
   -1,   -1,   -1,  287,   -1,  295,  296,  297,  298,   -1,
   -1,  295,  296,  297,  298,  256,   -1,   -1,  259,   -1,
   -1,  256,  263,   -1,  259,   -1,   -1,  268,  263,   -1,
   -1,  256,   -1,  268,  259,   -1,   -1,  256,  263,   -1,
  259,   -1,   -1,  268,  263,   -1,  287,   -1,   -1,  268,
   -1,   -1,  287,  288,  295,  296,  297,  298,  277,   -1,
  295,   -1,  287,  298,   -1,   -1,   -1,   -1,  287,   -1,
  295,  256,   -1,  298,  259,   -1,  295,  256,  263,  298,
  259,   -1,   -1,  268,  263,   -1,   -1,  256,   -1,  268,
  259,   -1,   -1,   -1,  263,   -1,   -1,   -1,   -1,  268,
   -1,   -1,  287,   -1,   -1,   -1,   -1,   -1,  287,   -1,
  295,   -1,   -1,  298,   -1,   -1,  295,   -1,  287,  298,
   -1,   -1,   -1,   -1,   -1,   -1,  295,   -1,   -1,  298,
};
#define YYFINAL 7
#ifndef YYDEBUG
#define YYDEBUG 0
#endif
#define YYMAXTOKEN 298
#if YYDEBUG
const char * const yyname[] = {
"end-of-file",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"tokARRAY","tokBITMASK",
"tokEXPECT","tokENUM","tokLIMIT","tokUSE","tokTYPE","tokVARIABLE",
"tokATTRIBUTE","tokNOREDEFINE","tokOF","tokIMPLICIT","tokNONE","tokLCBRACK",
"tokRCBRACK","tokLABRACK","tokRABRACK","tokLSBRACK","tokRSBRACK","tokLPAREN",
"tokRPAREN","tokINT","tokREAL","tokSTRING","tokREALCONST","tokINTCONST",
"tokSTRINGCONST","tokEQUALS","tokCOMMA","tokCOLON","tokSEMICOLON",
"tokCOLONEQUALS","tokPLUSEQUALS","tokSTAR","tokDOT","tokDDOT","tokVERTBAR",
"tokCOMMENT","tokIDENT","tokPLUS","tokDIV","tokAPPEND",
};
const char * const yyrule[] = {
"$accept : file",
"file :",
"file : stmtlist",
"stmtlist : stmt",
"stmtlist : stmtlist stmt",
"stmt : stmt0 tokSEMICOLON",
"stmt : stmt0 stmt0",
"stmt0 : typestmt",
"stmt0 : expectstmt",
"stmt0 : appendstmt",
"stmt0 : implicitstmt",
"stmt0 : assignstmt",
"stmt0 : arithmeticassignstmt",
"stmt0 : vardeclstmt",
"stmt0 : attrstmt",
"stmt0 : error",
"attrstmt : tokIDENT tokPLUSEQUALS tokSTRINGCONST",
"attrstmt : tokIDENT tokSTRINGCONST",
"typestmt : tokTYPE tokIDENT tokEQUALS tokENUM tokLPAREN idlist tokRPAREN nlimittypelist",
"expectstmt : tokEXPECT typeexpect idlist",
"appendstmt : tokAPPEND tokIDENT tokEQUALS tokENUM tokLPAREN idlist tokRPAREN",
"implicitstmt : tokIMPLICIT tokNONE",
"typeexpect : tokTYPE",
"typeexpect : tokVARIABLE",
"typeexpect : tokENUM",
"typeexpect : tokATTRIBUTE",
"assignstmt : tokIDENT lhsindexexp tokCOLONEQUALS rhs nlimitassignlist",
"arithmeticassignstmt : tokIDENT lhsindexexp tokCOLONEQUALS arithmeticrhs",
"lhsindexexp : tokLSBRACK lhsindex tokRSBRACK",
"lhsindexexp :",
"lhsindex : tokIDENT",
"lhsindex : tokSTAR",
"lhsindex : tokSTRINGCONST",
"vardeclstmt : tokIDENT typespecclause",
"typespecclause : tokCOLON fulltypespec",
"typespecclause :",
"fulltypespec : simpletypespec",
"fulltypespec : tokARRAY tokLSBRACK tokIDENT tokRSBRACK tokOF simpletypespec",
"fulltypespec : tokARRAY tokLSBRACK tokSTRING tokRSBRACK tokOF simpletypespec",
"simpletypespec : tokSTRING",
"simpletypespec : tokINT",
"simpletypespec : tokREAL",
"simpletypespec : tokIDENT",
"simpletypespec : tokBITMASK tokLPAREN tokIDENT tokRPAREN",
"nstringlist :",
"nstringlist : stringlist",
"stringlist : revstringlist",
"revstringlist : tokSTRINGCONST",
"revstringlist : revstringlist tokCOMMA tokSTRINGCONST",
"reallist : revreallist",
"revreallist : tokREALCONST",
"revreallist : revreallist tokCOMMA tokREALCONST",
"nidlist : revidlist",
"nidlist :",
"idlist : revidlist",
"revidlist : tokIDENT",
"revidlist : revidlist tokCOMMA tokIDENT",
"intlist : revintlist",
"revintlist : tokINTCONST",
"revintlist : revintlist tokCOMMA tokINTCONST",
"rhs : tokSTRINGCONST",
"rhs : tokINTCONST",
"rhs : tokREALCONST",
"rhs : bitmaskexpr",
"rhs : tokIDENT lhsindexexp",
"arithmeticrhs : arithmeticrhsrest arithmeticop intrhs",
"arithmeticrhsrest : intrhs",
"arithmeticrhsrest : arithmeticrhsrest arithmeticop intrhs",
"intrhs : tokINTCONST",
"intrhs : tokIDENT lhsindexexp",
"arithmeticop : tokPLUS",
"arithmeticop : tokDIV",
"bitmaskexpr : tokBITMASK tokLPAREN nidlist tokRPAREN",
"nlimitassignlist : limitassignlist",
"nlimitassignlist :",
"nlimittypelist : limittypelist",
"nlimittypelist :",
"limitassignlist : limitassign",
"limitassignlist : limitassignlist limitassign",
"limittypelist : limittype",
"limittypelist : limittypelist limittype",
"limitassign : tokLIMIT tokLABRACK nstringlist tokRABRACK limitassignval",
"limittype : tokLIMIT tokLABRACK nstringlist tokRABRACK tokNOREDEFINE",
"limitassignval : tokNOREDEFINE",
"limitassignval : tokLPAREN valuelist tokRPAREN",
"limitassignval : tokLPAREN valuerange tokRPAREN",
"valuelist : idlist",
"valuelist : intlist",
"valuelist : reallist",
"valuelist : stringlist",
"valuerange : tokIDENT tokDDOT tokIDENT",
"valuerange : tokINTCONST tokDDOT tokINTCONST",
};
#endif
#if YYDEBUG
#include <stdio.h>
#endif
#ifdef YYSTACKSIZE
#undef YYMAXDEPTH
#define YYMAXDEPTH YYSTACKSIZE
#else
#ifdef YYMAXDEPTH
#define YYSTACKSIZE YYMAXDEPTH
#else
#define YYSTACKSIZE 10000
#define YYMAXDEPTH 10000
#endif
#endif
#define YYINITSTACKSIZE 200
int yydebug;
int yynerrs;
int yyerrflag;
int yychar;
short *yyssp;
YYSTYPE *yyvsp;
YYSTYPE yyval;
YYSTYPE yylval;
short *yyss;
short *yysslim;
YYSTYPE *yyvs;
int yystacksize;
#line 764 "kapi_parser.y"

#line 407 "y.tab.c"
/* allocate initial stack or double stack size, up to YYMAXDEPTH */
static int yygrowstack()
{
    int newsize, i;
    short *newss;
    YYSTYPE *newvs;

    if ((newsize = yystacksize) == 0)
        newsize = YYINITSTACKSIZE;
    else if (newsize >= YYMAXDEPTH)
        return -1;
    else if ((newsize *= 2) > YYMAXDEPTH)
        newsize = YYMAXDEPTH;
    i = yyssp - yyss;
    newss = yyss ? (short *)realloc(yyss, newsize * sizeof *newss) :
      (short *)malloc(newsize * sizeof *newss);
    if (newss == NULL)
        return -1;
    yyss = newss;
    yyssp = newss + i;
    newvs = yyvs ? (YYSTYPE *)realloc(yyvs, newsize * sizeof *newvs) :
      (YYSTYPE *)malloc(newsize * sizeof *newvs);
    if (newvs == NULL)
        return -1;
    yyvs = newvs;
    yyvsp = newvs + i;
    yystacksize = newsize;
    yysslim = yyss + newsize - 1;
    return 0;
}

#define YYABORT goto yyabort
#define YYREJECT goto yyabort
#define YYACCEPT goto yyaccept
#define YYERROR goto yyerrlab

#ifndef YYPARSE_PARAM
#if defined(__cplusplus) || __STDC__
#define YYPARSE_PARAM_ARG void
#define YYPARSE_PARAM_DECL
#else	/* ! ANSI-C/C++ */
#define YYPARSE_PARAM_ARG
#define YYPARSE_PARAM_DECL
#endif	/* ANSI-C/C++ */
#else	/* YYPARSE_PARAM */
#ifndef YYPARSE_PARAM_TYPE
#define YYPARSE_PARAM_TYPE void *
#endif
#if defined(__cplusplus) || __STDC__
#define YYPARSE_PARAM_ARG YYPARSE_PARAM_TYPE YYPARSE_PARAM
#define YYPARSE_PARAM_DECL
#else	/* ! ANSI-C/C++ */
#define YYPARSE_PARAM_ARG YYPARSE_PARAM
#define YYPARSE_PARAM_DECL YYPARSE_PARAM_TYPE YYPARSE_PARAM;
#endif	/* ANSI-C/C++ */
#endif	/* ! YYPARSE_PARAM */

int
yyparse (YYPARSE_PARAM_ARG)
    YYPARSE_PARAM_DECL
{
    register int yym, yyn, yystate;
#if YYDEBUG
    register const char *yys;

    if ((yys = getenv("YYDEBUG")))
    {
        yyn = *yys;
        if (yyn >= '0' && yyn <= '9')
            yydebug = yyn - '0';
    }
#endif

    yynerrs = 0;
    yyerrflag = 0;
    yychar = (-1);

    if (yyss == NULL && yygrowstack()) goto yyoverflow;
    yyssp = yyss;
    yyvsp = yyvs;
    *yyssp = yystate = 0;

yyloop:
    if ((yyn = yydefred[yystate])) goto yyreduce;
    if (yychar < 0)
    {
        if ((yychar = yylex()) < 0) yychar = 0;
#if YYDEBUG
        if (yydebug)
        {
            yys = 0;
            if (yychar <= YYMAXTOKEN) yys = yyname[yychar];
            if (!yys) yys = "illegal-symbol";
            printf("%sdebug: state %d, reading %d (%s)\n",
                    YYPREFIX, yystate, yychar, yys);
        }
#endif
    }
    if ((yyn = yysindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
    {
#if YYDEBUG
        if (yydebug)
            printf("%sdebug: state %d, shifting to state %d\n",
                    YYPREFIX, yystate, yytable[yyn]);
#endif
        if (yyssp >= yysslim && yygrowstack())
        {
            goto yyoverflow;
        }
        *++yyssp = yystate = yytable[yyn];
        *++yyvsp = yylval;
        yychar = (-1);
        if (yyerrflag > 0)  --yyerrflag;
        goto yyloop;
    }
    if ((yyn = yyrindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
    {
        yyn = yytable[yyn];
        goto yyreduce;
    }
    if (yyerrflag) goto yyinrecovery;
#if defined(lint) || defined(__GNUC__)
    goto yynewerror;
#endif
yynewerror:
    yyerror("syntax error");
#if defined(lint) || defined(__GNUC__)
    goto yyerrlab;
#endif
yyerrlab:
    ++yynerrs;
yyinrecovery:
    if (yyerrflag < 3)
    {
        yyerrflag = 3;
        for (;;)
        {
            if ((yyn = yysindex[*yyssp]) && (yyn += YYERRCODE) >= 0 &&
                    yyn <= YYTABLESIZE && yycheck[yyn] == YYERRCODE)
            {
#if YYDEBUG
                if (yydebug)
                    printf("%sdebug: state %d, error recovery shifting\
 to state %d\n", YYPREFIX, *yyssp, yytable[yyn]);
#endif
                if (yyssp >= yysslim && yygrowstack())
                {
                    goto yyoverflow;
                }
                *++yyssp = yystate = yytable[yyn];
                *++yyvsp = yylval;
                goto yyloop;
            }
            else
            {
#if YYDEBUG
                if (yydebug)
                    printf("%sdebug: error recovery discarding state %d\n",
                            YYPREFIX, *yyssp);
#endif
                if (yyssp <= yyss) goto yyabort;
                --yyssp;
                --yyvsp;
            }
        }
    }
    else
    {
        if (yychar == 0) goto yyabort;
#if YYDEBUG
        if (yydebug)
        {
            yys = 0;
            if (yychar <= YYMAXTOKEN) yys = yyname[yychar];
            if (!yys) yys = "illegal-symbol";
            printf("%sdebug: state %d, error recovery discards token %d (%s)\n",
                    YYPREFIX, yystate, yychar, yys);
        }
#endif
        yychar = (-1);
        goto yyloop;
    }
yyreduce:
#if YYDEBUG
    if (yydebug)
        printf("%sdebug: state %d, reducing by rule %d (%s)\n",
                YYPREFIX, yystate, yyn, yyrule[yyn]);
#endif
    yym = yylen[yyn];
    yyval = yyvsp[1-yym];
    switch (yyn)
    {
case 6:
#line 153 "kapi_parser.y"
{
            kapi_Error( kapi_cLine, 1, "Missing semicolon here or above" );
	}
break;
case 15:
#line 167 "kapi_parser.y"
{
            kapi_Error( kapi_cLine, 1, "Unknown error here or above" );
	}
break;
case 16:
#line 176 "kapi_parser.y"
{
	   stn_t *pstn;
           char *pchName, *pchString;

           /* 
              If this is an old KAPI2x BYPASS spec, translate it
              to an INTRACLUSTER bypass NO LONGER SUPPORTED
            */
           if ( 0 == strcmp( yyvsp[-2].pch, "BYPASS" ) ) {
			  kapi_Warning(kapi_cLine,0,"kapi 2.x BYPASS compatability not supported!");
           } 

       pchName = yyvsp[-2].pch;
       pchString = yyvsp[0].pch;
           
	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, pchName );
           kapi_ProcessAttrDecl( pstn, pchString );
	   free(pchName);
	   free(pchString);
	}
break;
case 17:
#line 196 "kapi_parser.y"
{
            kapi_Error( kapi_cLine, 1, "Missing += or := in stmt" );
	}
break;
case 18:
#line 205 "kapi_parser.y"
{
	   stn_t *pstn;

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-6].pch );
           kapi_ProcessTypeDecl( pstn, yyvsp[-2].pvalhdr, yyvsp[0].plimp ); 
	}
break;
case 19:
#line 214 "kapi_parser.y"
{
	   kapi_ProcessExpect( yyvsp[0].pvalhdr, yyvsp[-1].iValue );
	}
break;
case 20:
#line 221 "kapi_parser.y"
{
	   stn_t *pstn;

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-5].pch );
           kapi_ProcessAppendDecl( pstn, yyvsp[-1].pvalhdr); 
	}
break;
case 21:
#line 230 "kapi_parser.y"
{
	   kapi_pknobsCurrent->fImplicitNone = 1;
	}
break;
case 22:
#line 236 "kapi_parser.y"
{ yyval.iValue = 0; }
break;
case 23:
#line 237 "kapi_parser.y"
{ yyval.iValue = 1; }
break;
case 24:
#line 238 "kapi_parser.y"
{ yyval.iValue = 2; }
break;
case 25:
#line 239 "kapi_parser.y"
{ yyval.iValue = 3; }
break;
case 26:
#line 243 "kapi_parser.y"
{
	   stn_t *pstn;
           char *pchIdent, *pchIndex, mpchIndex[ 200 ];
 
           if ( 0 == strcmp( yyvsp[-4].pch, "MaxBundleIssue" ) ) {
              pchIdent = kapi_pchCopy( "cluster0MaxBundleIssue" );
              pchIndex = NULL;
           } else if ( 0 == strcmp( yyvsp[-4].pch, "PortMask" ) ) {
              pchIdent = kapi_pchCopy( "cluster0CportMask" );
              sprintf( mpchIndex, "%%%c%s", 'c', yyvsp[-3].pch );
              pchIndex = kapi_pchCopy( mpchIndex );
           } else {
              pchIdent = yyvsp[-4].pch;
              pchIndex = yyvsp[-3].pch;
           }

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, pchIdent );
	   kapi_ProcessAssignment( pstn, pchIndex, yyvsp[-1].pvalhdr, yyvsp[0].plimp );
	}
break;
case 27:
#line 266 "kapi_parser.y"
{
	   stn_t *pstn;
           char *pchIdent, *pchIndex, mpchIndex[ 200 ];
 
           if ( 0 == strcmp( yyvsp[-3].pch, "MaxBundleIssue" ) ) {
              pchIdent = kapi_pchCopy( "cluster0MaxBundleIssue" );
              pchIndex = NULL;
           } else if ( 0 == strcmp( yyvsp[-3].pch, "PortMask" ) ) {
              pchIdent = kapi_pchCopy( "cluster0CportMask" );
              sprintf( mpchIndex, "%%%c%s", 'c', yyvsp[-2].pch );
              pchIndex = kapi_pchCopy( mpchIndex );
           } else {
              pchIdent = yyvsp[-3].pch;
              pchIndex = yyvsp[-2].pch;
           }

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, pchIdent );
	   kapi_ProcessArithmeticAssignment( pstn, pchIndex, yyvsp[0].pvalhdr );
	}
break;
case 28:
#line 289 "kapi_parser.y"
{
	   yyval.pch = yyvsp[-1].pch;
	}
break;
case 29:
#line 292 "kapi_parser.y"
{
	   yyval.pch = NULL;
    	}
break;
case 30:
#line 298 "kapi_parser.y"
{
	   yyval.pch = yyvsp[0].pch;
	}
break;
case 31:
#line 301 "kapi_parser.y"
{
 	   yyval.pch = kapi_pchCopy( "*" );
	}
break;
case 32:
#line 304 "kapi_parser.y"
{
           char *pchTmp;
           
           pchTmp = (char *)malloc( sizeof(char)*strlen(yyvsp[0].pch) + 2 );
 	   sprintf( pchTmp, "%%%s", yyvsp[0].pch );
 	   yyval.pch = pchTmp;
	}
break;
case 33:
#line 314 "kapi_parser.y"
{
	   stn_t *pstn;

           if ( 0 == strcmp( yyvsp[-1].pch, "PortMask" ) ) {
	      pstn = kapi_pstnLookup( kapi_pknobsCurrent, "cluster0CportMask" );
              Declare_cluster0CportMask( pstn );
           } else {
   	      pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-1].pch );
	      kapi_ProcessVarDecl( pstn, yyvsp[0].ptfi );
           }
	}
break;
case 34:
#line 329 "kapi_parser.y"
{
	   yyval.ptfi = yyvsp[0].ptfi;
	}
break;
case 35:
#line 332 "kapi_parser.y"
{
 	   yyval.ptfi = NULL;
	}
break;
case 36:
#line 338 "kapi_parser.y"
{
	   yyval.ptfi = yyvsp[0].ptfi;
	}
break;
case 37:
#line 341 "kapi_parser.y"
{
	   stn_t *pstn;
 
	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-3].pch );
           yyval.ptfi = ptfiProcessArrayTypeSpec( pstn, yyvsp[0].ptfi );
 	}
break;
case 38:
#line 347 "kapi_parser.y"
{
           yyval.ptfi = ptfiProcessArrayTypeSpec( yyvsp[-3].pstnA, yyvsp[0].ptfi );
 	}
break;
case 39:
#line 353 "kapi_parser.y"
{
           yyval.ptfi = &(yyvsp[0].pstnA->u.tfi);
	}
break;
case 40:
#line 356 "kapi_parser.y"
{
           yyval.ptfi = &(yyvsp[0].pstnA->u.tfi);
	}
break;
case 41:
#line 359 "kapi_parser.y"
{
           yyval.ptfi = &(yyvsp[0].pstnA->u.tfi);
	}
break;
case 42:
#line 362 "kapi_parser.y"
{
	   stn_t *pstn;
 
	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[0].pch );
	   yyval.ptfi = kapi_ptfiCheckDeclaredType( pstn );
	}
break;
case 43:
#line 368 "kapi_parser.y"
{
	   stn_t *pstn;
 
	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-1].pch );
           if ( pstn->ity == ityTYPENAME 
                && pstn->u.tfi.tty == ttyENUM ) {
	      yyval.ptfi = kapi_ptfiConstructBitmask( &(pstn->u.tfi) );
           } else {
              kapi_Error_pch1( kapi_cLine, 1, 
                               "Base type (%s) of bitmask specification bad", 
                                pstn->pchName );
              yyval.ptfi = NULL;
	   }
	}
break;
case 44:
#line 386 "kapi_parser.y"
{
	  yyval.pvalhdr = NULL;
	}
break;
case 45:
#line 389 "kapi_parser.y"
{
 	  yyval.pvalhdr = yyvsp[0].pvalhdr;
 	}
break;
case 46:
#line 395 "kapi_parser.y"
{
 	   yyval.pvalhdr = pvalhdrMake( ttySTRING, valsLIST, kapi_pvalnReverseTmp( yyvsp[0].pvaln ) );
	}
break;
case 47:
#line 401 "kapi_parser.y"
{
	   yyval.pvaln = pvalnMakeString( yyvsp[0].pch );
	}
break;
case 48:
#line 404 "kapi_parser.y"
{
           valn_t *pvaln;

	   pvaln = pvalnMakeString( yyvsp[0].pch );
	   pvaln->pvalnNext = yyvsp[-2].pvaln;
           yyval.pvaln = pvaln;
	}
break;
case 49:
#line 414 "kapi_parser.y"
{
 	   yyval.pvalhdr = pvalhdrMake( ttyREAL, valsLIST, kapi_pvalnReverseTmp( yyvsp[0].pvaln ) );
	}
break;
case 50:
#line 421 "kapi_parser.y"
{
	   yyval.pvaln = pvalnMakeReal( yyvsp[0].rValue );
	}
break;
case 51:
#line 424 "kapi_parser.y"
{
           valn_t *pvaln;

	   pvaln = pvalnMakeReal( yyvsp[0].rValue );
	   pvaln->pvalnNext = yyvsp[-2].pvaln;
           yyval.pvaln = pvaln;
	}
break;
case 52:
#line 434 "kapi_parser.y"
{
 	   yyval.pvalhdr = pvalhdrMake( ttyIDENT, valsLIST, kapi_pvalnReverseTmp( yyvsp[0].pvaln ) );
	}
break;
case 53:
#line 437 "kapi_parser.y"
{
	   yyval.pvalhdr = NULL;
	}
break;
case 54:
#line 442 "kapi_parser.y"
{
 	   yyval.pvalhdr = pvalhdrMake( ttyIDENT, valsLIST, kapi_pvalnReverseTmp( yyvsp[0].pvaln ) );
	}
break;
case 55:
#line 449 "kapi_parser.y"
{
	   yyval.pvaln = pvalnMakeString( yyvsp[0].pch );
	}
break;
case 56:
#line 452 "kapi_parser.y"
{
           valn_t *pvaln;

	   pvaln = pvalnMakeString( yyvsp[0].pch );
	   pvaln->pvalnNext = yyvsp[-2].pvaln;
           yyval.pvaln = pvaln;
	}
break;
case 57:
#line 462 "kapi_parser.y"
{
 	   yyval.pvalhdr = pvalhdrMake( ttyINT, valsLIST, kapi_pvalnReverseTmp( yyvsp[0].pvaln ) );
	}
break;
case 58:
#line 468 "kapi_parser.y"
{
	   yyval.pvaln = pvalnMakeInt( yyvsp[0].iValue );
	}
break;
case 59:
#line 471 "kapi_parser.y"
{
           valn_t *pvaln;

	   pvaln = pvalnMakeInt( yyvsp[0].iValue );
	   pvaln->pvalnNext = yyvsp[-2].pvaln;
           yyval.pvaln = pvaln;
	}
break;
case 60:
#line 482 "kapi_parser.y"
{
           valhdr_t *pvalhdr;
 
           pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
           pvalhdr->pvalnList = pvalnMakeString( yyvsp[0].pch );
           pvalhdr->tty = ttySTRING;
           pvalhdr->vals = valsSCALAR;
		   pvalhdr->fRHS=0;

	   yyval.pvalhdr = pvalhdr;
	}
break;
case 61:
#line 493 "kapi_parser.y"
{
           valhdr_t *pvalhdr;
 
           pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
           pvalhdr->pvalnList = pvalnMakeInt( yyvsp[0].iValue );
           pvalhdr->tty = ttyINT;
           pvalhdr->vals = valsSCALAR;
		   pvalhdr->fRHS=0;

	   yyval.pvalhdr = pvalhdr;
	}
break;
case 62:
#line 504 "kapi_parser.y"
{
           valhdr_t *pvalhdr;
 
           pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
           pvalhdr->pvalnList = pvalnMakeReal( yyvsp[0].rValue );
           pvalhdr->tty = ttyREAL;
           pvalhdr->vals = valsSCALAR;
		   pvalhdr->fRHS=0;

	   yyval.pvalhdr = pvalhdr;
	}
break;
case 63:
#line 515 "kapi_parser.y"
{
	   yyval.pvalhdr = yyvsp[0].pvalhdr;
	}
break;
case 64:
#line 518 "kapi_parser.y"
{
           stn_t *pstn;

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-1].pch );
           if ( pstn->ity == ityUNKNOWN ) {
              kapi_Error_pch1( kapi_cLine, 0, "'%s' unknown identifier", yyvsp[-1].pch );
	      yyval.pvalhdr = NULL;
           } else {
              valhdr_t *pvalhdr;
    
              pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
			  pvalhdr->fRHS=1;
              pvalhdr->tty = ttyIDENT;

		    if (yyvsp[0].pch != NULL ) /* if array, get item */  
			{
				ed_t *pedElement;
				pedElement=pedLookup4pstn(pstn,yyvsp[0].pch);
				pvalhdrCopy(pvalhdr,&pedElement->valhdrValue);
				pedElement->valhdrValue.fRHS=1;
			} else
			{
              kapi_LookUpIdent_valhdr( pstn, pvalhdr, 0 );
			}
   
   	      yyval.pvalhdr = pvalhdr;
           }
	}
break;
case 65:
#line 549 "kapi_parser.y"
{
              valhdr_t *pvalhdr;
			  valn_t *pvalnOp, *pvalnExp, *pvalnVal;

              pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
              pvalhdr->tty = ttyEXPRESSION;
			  pvalhdr->vals = valsLIST;
			  pvalnVal=yyvsp[0].pvaln;
			  pvalnOp=yyvsp[-1].pvaln;
			  pvalnExp=yyvsp[-2].pvaln;
			  pvalnVal->pvalnNext=pvalnOp;
			  pvalnOp->pvalnNext=pvalnExp;

			  pvalhdr->pvalnList=pvalnVal;
       	      yyval.pvalhdr = pvalhdr;
	}
break;
case 66:
#line 568 "kapi_parser.y"
{ 
		yyval.pvaln=yyvsp[0].pvaln;
	}
break;
case 67:
#line 571 "kapi_parser.y"
{
			  valn_t *pvalnOp, *pvalnExp, *pvalnVal;

			  pvalnVal=yyvsp[0].pvaln;
			  pvalnOp=yyvsp[-1].pvaln;
			  pvalnExp=yyvsp[-2].pvaln;
			  pvalnVal->pvalnNext=pvalnOp;
			  pvalnOp->pvalnNext=pvalnExp;

       	      yyval.pvaln = pvalnVal;
	}
break;
case 68:
#line 586 "kapi_parser.y"
{
           valn_t *pvaln;
 
           pvaln = pvalnMakeInt( yyvsp[0].iValue );

	   yyval.pvaln = pvaln;
	}
break;
case 69:
#line 593 "kapi_parser.y"
{
           stn_t *pstn;

	   pstn = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-1].pch );
           if ( pstn->ity == ityUNKNOWN ) {
              kapi_Error_pch1( kapi_cLine, 0, "'%s' unknown identifier", yyvsp[-1].pch );
	          yyval.pvaln = NULL;
           } else 
		   {
              valhdr_t *pvalhdr;
			  pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );

		    if (pstn->u.vfi.ptfi->tty == ttyARRAY) /* if array, get item */  
			{
				ed_t *pedElement;
				pedElement=pedLookup4pstn(pstn,yyvsp[0].pch);
				pvalhdrCopy(pvalhdr,&pedElement->valhdrValue);
				pedElement->valhdrValue.fRHS=1;
			} else
			{
              kapi_LookUpIdent_valhdr( pstn, pvalhdr, 0 );
			}

			  /* now pvalhdr holds the value for the variable */
			  if ((pvalhdr->tty!=ttyINT) || (pvalhdr->vals!=valsSCALAR)) {
                 kapi_Error_pch1( kapi_cLine, 0, "'%s' is non integer used in arithmetic expression", yyvsp[-1].pch );
				 yyval.pvaln = NULL;
			  } else
			  {
				 valn_t *pvaln;
				 pvaln = pvalnMakeInt(pvalhdr->pvalnList->val.i);
				 /* mark value as used on RHS of equation */
				 pstn->fRHS=1;
   				 yyval.pvaln = pvaln;
			  }
           }
	}
break;
case 70:
#line 633 "kapi_parser.y"
{
		valn_t *pvaln;
		pvaln=pvalnMakeArithmeticOp(yyvsp[0].pch);

	   yyval.pvaln = pvaln;
	}
break;
case 71:
#line 639 "kapi_parser.y"
{
		valn_t *pvaln;
		pvaln=pvalnMakeArithmeticOp(yyvsp[0].pch);

	   yyval.pvaln = pvaln;
	}
break;
case 72:
#line 648 "kapi_parser.y"
{
           valhdr_t *pvalhdr;
    
           pvalhdr = (valhdr_t *)malloc( sizeof( valhdr_t ) );
           ProcessBitmaskExpr( pvalhdr, yyvsp[-1].pvalhdr );
	   yyval.pvalhdr = pvalhdr;
	}
break;
case 73:
#line 658 "kapi_parser.y"
{
           yyval.plimp = yyvsp[0].plimp;
	}
break;
case 74:
#line 661 "kapi_parser.y"
{
           yyval.plimp = NULL;
 	}
break;
case 75:
#line 667 "kapi_parser.y"
{ 
           yyval.plimp = yyvsp[0].plimp; 
 	}
break;
case 76:
#line 670 "kapi_parser.y"
{ 
           yyval.plimp = NULL; 
        }
break;
case 77:
#line 677 "kapi_parser.y"
{ 
           yyvsp[0].plimp->plimpNext = NULL; 
           yyval.plimp = yyvsp[0].plimp; 
	}
break;
case 78:
#line 681 "kapi_parser.y"
{
           limp_t *plimpTmp;
  
           plimpTmp = yyvsp[0].plimp;
           plimpTmp->plimpNext = yyvsp[-1].plimp;
	   yyval.plimp = plimpTmp;
 	}
break;
case 79:
#line 691 "kapi_parser.y"
{ 
           yyvsp[0].plimp->plimpNext = NULL; 
           yyval.plimp = yyvsp[0].plimp; 
	}
break;
case 80:
#line 695 "kapi_parser.y"
{
           limp_t *plimpTmp;
  
           plimpTmp = yyvsp[0].plimp;
           plimpTmp->plimpNext = yyvsp[-1].plimp;
	   yyval.plimp = plimpTmp;
 	}
break;
case 81:
#line 706 "kapi_parser.y"
{
  	   yyval.plimp = plimpProcessLimitVariable( yyvsp[-2].pvalhdr, yyvsp[0].pvalhdr );
        }
break;
case 82:
#line 712 "kapi_parser.y"
{
  	   yyval.plimp = plimpProcessLimitType( yyvsp[-2].pvalhdr );
   	}
break;
case 83:
#line 719 "kapi_parser.y"
{
	   yyval.pvalhdr = pvalhdrMake( ttyUNKNOWN, valsNOREDEFINE, NULL );
	}
break;
case 84:
#line 722 "kapi_parser.y"
{
	   yyval.pvalhdr = yyvsp[-1].pvalhdr;
	}
break;
case 85:
#line 725 "kapi_parser.y"
{
	   yyval.pvalhdr = yyvsp[-1].pvalhdr;
	}
break;
case 86:
#line 731 "kapi_parser.y"
{ yyval.pvalhdr = yyvsp[0].pvalhdr; }
break;
case 87:
#line 732 "kapi_parser.y"
{ yyval.pvalhdr = yyvsp[0].pvalhdr; }
break;
case 88:
#line 733 "kapi_parser.y"
{ yyval.pvalhdr = yyvsp[0].pvalhdr; }
break;
case 89:
#line 734 "kapi_parser.y"
{ yyval.pvalhdr = yyvsp[0].pvalhdr; }
break;
case 90:
#line 738 "kapi_parser.y"
{
           valn_t *pvaln1, *pvaln2;
           stn_t *pstn1, *pstn2;

           /* create entries, but do not use pointers */
           pstn1 = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[-2].pch );
           pstn2 = kapi_pstnLookup( kapi_pknobsCurrent, yyvsp[0].pch );

           pvaln1 = pvalnMakeIdent( yyvsp[-2].pch );
           pvaln2 = pvalnMakeIdent( yyvsp[0].pch );
           pvaln1->pvalnNext = pvaln2;
           pvaln2->pvalnNext = NULL;
	   yyval.pvalhdr = pvalhdrMake( ttyIDENT, valsRANGE, pvaln1 );
        }
break;
case 91:
#line 752 "kapi_parser.y"
{
           valn_t *pvaln1, *pvaln2;

           pvaln1 = pvalnMakeInt( yyvsp[-2].iValue );
           pvaln2 = pvalnMakeInt( yyvsp[0].iValue );
           pvaln1->pvalnNext = pvaln2;
           pvaln2->pvalnNext = NULL;
	   yyval.pvalhdr = pvalhdrMake( ttyINT, valsRANGE, pvaln1 );
        }
break;
#line 1299 "y.tab.c"
    }
    yyssp -= yym;
    yystate = *yyssp;
    yyvsp -= yym;
    yym = yylhs[yyn];
    if (yystate == 0 && yym == 0)
    {
#if YYDEBUG
        if (yydebug)
            printf("%sdebug: after reduction, shifting from state 0 to\
 state %d\n", YYPREFIX, YYFINAL);
#endif
        yystate = YYFINAL;
        *++yyssp = YYFINAL;
        *++yyvsp = yyval;
        if (yychar < 0)
        {
            if ((yychar = yylex()) < 0) yychar = 0;
#if YYDEBUG
            if (yydebug)
            {
                yys = 0;
                if (yychar <= YYMAXTOKEN) yys = yyname[yychar];
                if (!yys) yys = "illegal-symbol";
                printf("%sdebug: state %d, reading %d (%s)\n",
                        YYPREFIX, YYFINAL, yychar, yys);
            }
#endif
        }
        if (yychar == 0) goto yyaccept;
        goto yyloop;
    }
    if ((yyn = yygindex[yym]) && (yyn += yystate) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yystate)
        yystate = yytable[yyn];
    else
        yystate = yydgoto[yym];
#if YYDEBUG
    if (yydebug)
        printf("%sdebug: after reduction, shifting from state %d \
to state %d\n", YYPREFIX, *yyssp, yystate);
#endif
    if (yyssp >= yysslim && yygrowstack())
    {
        goto yyoverflow;
    }
    *++yyssp = yystate;
    *++yyvsp = yyval;
    goto yyloop;
yyoverflow:
    yyerror("yacc stack overflow");
yyabort:
    return (1);
yyaccept:
    return (0);
}
