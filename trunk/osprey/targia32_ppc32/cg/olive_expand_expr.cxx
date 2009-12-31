#define __OLIVE_HEADER_INCLUDED__
/* line 1 ../../be/cg/ppc32/olive_expand_expr.brg */
#include "olive_convert_wn.h"
#define I4INTCONST 0
#define I4ABS 1
#define I4NEG 2
#define I4ADD 3
#define I4SUB 4
#define I4MPY 5
#define I4HIGHMPY 6
#define I4DIV 7
#define I4REM 8
#define I4MOD 9
#define U4INTCONST 10
#define U4NEG 11
#define U4ADD 12
#define U4SUB 13
#define U4MPY 14
#define U4HIGHMPY 15
#define U4DIV 16
#define U4REM 17
#define U4MOD 18
#define BINTCONST 19
#define BLNOT 20
#define BLAND 21
#define BLIOR 22
#define I4LNOT 23
#define I4LIOR 24
#define I4LAND 25
#define I4BIOR 26
#define I4BNOT 27
#define I4BAND 28
#define I4BXOR 29
#define I4BNOR 30
#define U4BNOT 31
#define U4BIOR 32
#define U4BAND 33
#define U4BXOR 34
#define U4BNOR 35
#define BBEQ 36
#define BBNE 37
#define BI4LT 38
#define BI4LE 39
#define BI4EQ 40
#define BI4NE 41
#define BI4GE 42
#define BI4GT 43
#define I4I4LT 44
#define I4I4LE 45
#define I4I4EQ 46
#define I4I4NE 47
#define I4I4GE 48
#define I4I4GT 49
#define U4I4LT 50
#define U4I4LE 51
#define U4I4EQ 52
#define U4I4NE 53
#define U4I4GE 54
#define U4I4GT 55
#define I4MAX 56
#define I4MIN 57
#define I4SHL 58
#define I4ASHR 59
#define I4LSHR 60
#define BU4LT 61
#define BU4LE 62
#define BU4EQ 63
#define BU4NE 64
#define BU4GE 65
#define BU4GT 66
#define I4U4LT 67
#define I4U4LE 68
#define I4U4EQ 69
#define I4U4NE 70
#define I4U4GE 71
#define I4U4GT 72
#define U4U4LT 73
#define U4U4LE 74
#define U4U4EQ 75
#define U4U4NE 76
#define U4U4GE 77
#define U4U4GT 78
#define U4MAX 79
#define U4MIN 80
#define U4SHL 81
#define U4ASHR 82
#define U4LSHR 83
#define F4CONST 84
#define F4ADD 85
#define F4SUB 86
#define F4MPY 87
#define F4DIV 88
#define F4MADD 89
#define F4NMADD 90
#define F4MSUB 91
#define F4NMSUB 92
#define F4NEG 93
#define F4ABS 94
#define F4RECIP 95
#define F4SQRT 96
#define F4RSQRT 97
#define F8CONST 98
#define F8ADD 99
#define F8SUB 100
#define F8MPY 101
#define F8DIV 102
#define F8MADD 103
#define F8NMADD 104
#define F8MSUB 105
#define F8NMSUB 106
#define F8NEG 107
#define F8ABS 108
#define F8RECIP 109
#define F8SQRT 110
#define F8RSQRT 111
#define BF4LT 112
#define BF4LE 113
#define BF4EQ 114
#define BF4NE 115
#define BF4GE 116
#define BF4GT 117
#define I4F4LT 118
#define I4F4LE 119
#define I4F4EQ 120
#define I4F4NE 121
#define I4F4GE 122
#define I4F4GT 123
#define U4F4LT 124
#define U4F4LE 125
#define U4F4EQ 126
#define U4F4NE 127
#define U4F4GE 128
#define U4F4GT 129
#define F4MAX 130
#define F4MIN 131
#define BF8LT 132
#define BF8LE 133
#define BF8EQ 134
#define BF8NE 135
#define BF8GE 136
#define BF8GT 137
#define I4F8LT 138
#define I4F8LE 139
#define I4F8EQ 140
#define I4F8NE 141
#define I4F8GE 142
#define I4F8GT 143
#define U4F8LT 144
#define U4F8LE 145
#define U4F8EQ 146
#define U4F8NE 147
#define U4F8GE 148
#define U4F8GT 149
#define F8MAX 150
#define F8MIN 151
#define I1STID 152
#define I2STID 153
#define U1STID 154
#define U2STID 155
#define I4I1LDID 156
#define I4I2LDID 157
#define I4I4LDID 158
#define I4I8LDID 159
#define I4BSLDID 160
#define I4STID 161
#define U4U1LDID 162
#define U4U2LDID 163
#define U4U4LDID 164
#define U4U8LDID 165
#define U4BSLDID 166
#define U4STID 167
#define F4F4LDID 168
#define F4STID 169
#define F8F8LDID 170
#define F8STID 171
#define I4BCVT 172
#define I4U4CVT 173
#define I4F4CVT 174
#define I4F8CVT 175
#define I4F4RND 176
#define I4F4TRUNC 177
#define I4F4CEIL 178
#define I4F4FLOOR 179
#define I4F8RND 180
#define I4F8TRUNC 181
#define I4F8CEIL 182
#define I4F8FLOOR 183
#define U4BCVT 184
#define U4I4CVT 185
#define U4F4CVT 186
#define U4F8CVT 187
#define U4F4RND 188
#define U4F4TRUNC 189
#define U4F4CEIL 190
#define U4F4FLOOR 191
#define U4F8RND 192
#define U4F8TRUNC 193
#define U4F8CEIL 194
#define U4F8FLOOR 195
#define F4I4CVT 196
#define F4U4CVT 197
#define F4F8CVT 198
#define F8I4CVT 199
#define F8U4CVT 200
#define F8F4CVT 201
#define I8I1LDID 202
#define I8I2LDID 203
#define I8I4LDID 204
#define I8I8LDID 205
#define I8BSLDID 206
#define I8STID 207
#define U8U1LDID 208
#define U8U2LDID 209
#define U8U4LDID 210
#define U8U8LDID 211
#define U8BSLDID 212
#define U8STID 213
#define I8INTCONST 214
#define I8ABS 215
#define I8NEG 216
#define I8ADD 217
#define I8SUB 218
#define I8MPY 219
#define I8HIGHMPY 220
#define I8DIV 221
#define I8REM 222
#define I8MOD 223
#define U8INTCONST 224
#define U8NEG 225
#define U8ADD 226
#define U8SUB 227
#define U8MPY 228
#define U8HIGHMPY 229
#define U8DIV 230
#define U8REM 231
#define U8MOD 232
#define I8BIOR 233
#define I8BNOT 234
#define I8BAND 235
#define I8BXOR 236
#define I8BNOR 237
#define U8BNOT 238
#define U8BIOR 239
#define U8BAND 240
#define U8BXOR 241
#define U8BNOR 242
#define BI8LT 243
#define BI8LE 244
#define BI8EQ 245
#define BI8NE 246
#define BI8GE 247
#define BI8GT 248
#define I4I8LT 249
#define I4I8LE 250
#define I4I8EQ 251
#define I4I8NE 252
#define I4I8GE 253
#define I4I8GT 254
#define U4I8LT 255
#define U4I8LE 256
#define U4I8EQ 257
#define U4I8NE 258
#define U4I8GE 259
#define U4I8GT 260
#define I8I8LT 261
#define I8I8LE 262
#define I8I8EQ 263
#define I8I8NE 264
#define I8I8GE 265
#define I8I8GT 266
#define U8I8LT 267
#define U8I8LE 268
#define U8I8EQ 269
#define U8I8NE 270
#define U8I8GE 271
#define U8I8GT 272
#define I8MAX 273
#define I8MIN 274
#define BU8LT 275
#define BU8LE 276
#define BU8EQ 277
#define BU8NE 278
#define BU8GE 279
#define BU8GT 280
#define I4U8LT 281
#define I4U8LE 282
#define I4U8EQ 283
#define I4U8NE 284
#define I4U8GE 285
#define I4U8GT 286
#define U4U8LT 287
#define U4U8LE 288
#define U4U8EQ 289
#define U4U8NE 290
#define U4U8GE 291
#define U4U8GT 292
#define I8U8LT 293
#define I8U8LE 294
#define I8U8EQ 295
#define I8U8NE 296
#define I8U8GE 297
#define I8U8GT 298
#define U8U8LT 299
#define U8U8LE 300
#define U8U8EQ 301
#define U8U8NE 302
#define U8U8GE 303
#define U8U8GT 304
#define U8MAX 305
#define U8MIN 306
#define I8I4LT 307
#define I8I4LE 308
#define I8I4EQ 309
#define I8I4NE 310
#define I8I4GE 311
#define I8I4GT 312
#define U8I4LT 313
#define U8I4LE 314
#define U8I4EQ 315
#define U8I4NE 316
#define U8I4GE 317
#define U8I4GT 318
#define I8U4LT 319
#define I8U4LE 320
#define I8U4EQ 321
#define I8U4NE 322
#define I8U4GE 323
#define I8U4GT 324
#define U8U4LT 325
#define U8U4LE 326
#define U8U4EQ 327
#define U8U4NE 328
#define U8U4GE 329
#define U8U4GT 330
#define I8SHL 331
#define I8ASHR 332
#define I8LSHR 333
#define U8SHL 334
#define U8ASHR 335
#define U8LSHR 336
#define I8F4LT 337
#define I8F4LE 338
#define I8F4EQ 339
#define I8F4NE 340
#define I8F4GE 341
#define I8F4GT 342
#define U8F4LT 343
#define U8F4LE 344
#define U8F4EQ 345
#define U8F4NE 346
#define U8F4GE 347
#define U8F4GT 348
#define I8F8LT 349
#define I8F8LE 350
#define I8F8EQ 351
#define I8F8NE 352
#define I8F8GE 353
#define I8F8GT 354
#define U8F8LT 355
#define U8F8LE 356
#define U8F8EQ 357
#define U8F8NE 358
#define U8F8GE 359
#define U8F8GT 360
#define I4I8CVT 361
#define U4U8CVT 362
#define I8I4CVT 363
#define U8U4CVT 364
#define I8U8CVT 365
#define U8I8CVT 366
#define I4CVTL 367
#define I8CVTL 368
#define U4CVTL 369
#define U8CVTL 370
#define F8U8CVT 371
#define F4U8CVT 372
#define I4PARM 373
#define U4PARM 374
#define I8PARM 375
#define U8PARM 376
#define F4PARM 377
#define F8PARM 378
#define CALL 379

struct burm_state {
  int op;
  NODEPTR node;
  struct burm_state **kids;
  COST cost[9];
  struct {
    unsigned burm_expr:4;
    unsigned burm_null:5;
    unsigned burm_reg:9;
    unsigned burm_simm16:1;
    unsigned burm_uimm16:1;
    unsigned burm_f4reg:5;
    unsigned burm_f8reg:5;
    unsigned burm_reg64:8;
  } rule;
};

#ifndef ALLOC
#define ALLOC(n) malloc(n)
#endif

#ifndef burm_assert
#define burm_assert(x,y) if (!(x)) {  y; abort(); }
#endif

#define burm_expr_NT 1
#define burm_null_NT 2
#define burm_reg_NT 3
#define burm_simm16_NT 4
#define burm_uimm16_NT 5
#define burm_f4reg_NT 6
#define burm_f8reg_NT 7
#define burm_reg64_NT 8
extern int burm_max_nt;
int burm_max_nt = 8;

char *burm_ntname[] = {
  0,
  "expr",
  "null",
  "reg",
  "simm16",
  "uimm16",
  "f4reg",
  "f8reg",
  "reg64",
  0
};

static short burm_nts_0[] = { burm_reg_NT, 0 };
static short burm_nts_1[] = { burm_null_NT, 0 };
static short burm_nts_2[] = { burm_f4reg_NT, 0 };
static short burm_nts_3[] = { burm_f8reg_NT, 0 };
static short burm_nts_4[] = { burm_reg64_NT, 0 };
static short burm_nts_5[] = { burm_simm16_NT, 0 };
static short burm_nts_6[] = { burm_uimm16_NT, 0 };
static short burm_nts_7[] = { 0 };
static short burm_nts_8[] = { burm_reg_NT, burm_reg_NT, 0 };
static short burm_nts_9[] = { burm_reg_NT, burm_simm16_NT, 0 };
static short burm_nts_10[] = { burm_reg_NT, burm_uimm16_NT, 0 };
static short burm_nts_11[] = { burm_f4reg_NT, burm_f4reg_NT, 0 };
static short burm_nts_12[] = { burm_f4reg_NT, burm_f4reg_NT, burm_f4reg_NT, 0 };
static short burm_nts_13[] = { burm_f8reg_NT, burm_f8reg_NT, 0 };
static short burm_nts_14[] = { burm_f8reg_NT, burm_f8reg_NT, burm_f8reg_NT, 0 };
static short burm_nts_15[] = { burm_reg64_NT, burm_reg64_NT, 0 };
static short burm_nts_16[] = { burm_reg64_NT, burm_reg_NT, 0 };

short *burm_nts[] = {
  burm_nts_0,  /* 0 */
  burm_nts_1,  /* 1 */
  burm_nts_2,  /* 2 */
  burm_nts_3,  /* 3 */
  burm_nts_4,  /* 4 */
  burm_nts_5,  /* 5 */
  burm_nts_6,  /* 6 */
  burm_nts_7,  /* 7 */
  burm_nts_7,  /* 8 */
  burm_nts_7,  /* 9 */
  burm_nts_7,  /* 10 */
  burm_nts_0,  /* 11 */
  burm_nts_0,  /* 12 */
  burm_nts_0,  /* 13 */
  burm_nts_8,  /* 14 */
  burm_nts_8,  /* 15 */
  burm_nts_0,  /* 16 */
  burm_nts_0,  /* 17 */
  burm_nts_8,  /* 18 */
  burm_nts_8,  /* 19 */
  burm_nts_0,  /* 20 */
  burm_nts_0,  /* 21 */
  burm_nts_0,  /* 22 */
  burm_nts_0,  /* 23 */
  burm_nts_8,  /* 24 */
  burm_nts_8,  /* 25 */
  burm_nts_8,  /* 26 */
  burm_nts_8,  /* 27 */
  burm_nts_8,  /* 28 */
  burm_nts_8,  /* 29 */
  burm_nts_0,  /* 30 */
  burm_nts_8,  /* 31 */
  burm_nts_8,  /* 32 */
  burm_nts_8,  /* 33 */
  burm_nts_8,  /* 34 */
  burm_nts_7,  /* 35 */
  burm_nts_7,  /* 36 */
  burm_nts_7,  /* 37 */
  burm_nts_7,  /* 38 */
  burm_nts_0,  /* 39 */
  burm_nts_0,  /* 40 */
  burm_nts_4,  /* 41 */
  burm_nts_4,  /* 42 */
  burm_nts_0,  /* 43 */
  burm_nts_0,  /* 44 */
  burm_nts_4,  /* 45 */
  burm_nts_4,  /* 46 */
  burm_nts_0,  /* 47 */
  burm_nts_0,  /* 48 */
  burm_nts_4,  /* 49 */
  burm_nts_4,  /* 50 */
  burm_nts_7,  /* 51 */
  burm_nts_7,  /* 52 */
  burm_nts_7,  /* 53 */
  burm_nts_7,  /* 54 */
  burm_nts_7,  /* 55 */
  burm_nts_7,  /* 56 */
  burm_nts_0,  /* 57 */
  burm_nts_0,  /* 58 */
  burm_nts_8,  /* 59 */
  burm_nts_0,  /* 60 */
  burm_nts_8,  /* 61 */
  burm_nts_0,  /* 62 */
  burm_nts_0,  /* 63 */
  burm_nts_0,  /* 64 */
  burm_nts_0,  /* 65 */
  burm_nts_0,  /* 66 */
  burm_nts_0,  /* 67 */
  burm_nts_8,  /* 68 */
  burm_nts_8,  /* 69 */
  burm_nts_8,  /* 70 */
  burm_nts_0,  /* 71 */
  burm_nts_0,  /* 72 */
  burm_nts_0,  /* 73 */
  burm_nts_8,  /* 74 */
  burm_nts_8,  /* 75 */
  burm_nts_8,  /* 76 */
  burm_nts_0,  /* 77 */
  burm_nts_0,  /* 78 */
  burm_nts_8,  /* 79 */
  burm_nts_8,  /* 80 */
  burm_nts_8,  /* 81 */
  burm_nts_8,  /* 82 */
  burm_nts_8,  /* 83 */
  burm_nts_8,  /* 84 */
  burm_nts_8,  /* 85 */
  burm_nts_8,  /* 86 */
  burm_nts_8,  /* 87 */
  burm_nts_8,  /* 88 */
  burm_nts_8,  /* 89 */
  burm_nts_8,  /* 90 */
  burm_nts_8,  /* 91 */
  burm_nts_8,  /* 92 */
  burm_nts_0,  /* 93 */
  burm_nts_8,  /* 94 */
  burm_nts_0,  /* 95 */
  burm_nts_8,  /* 96 */
  burm_nts_9,  /* 97 */
  burm_nts_9,  /* 98 */
  burm_nts_9,  /* 99 */
  burm_nts_8,  /* 100 */
  burm_nts_8,  /* 101 */
  burm_nts_8,  /* 102 */
  burm_nts_9,  /* 103 */
  burm_nts_9,  /* 104 */
  burm_nts_9,  /* 105 */
  burm_nts_8,  /* 106 */
  burm_nts_8,  /* 107 */
  burm_nts_8,  /* 108 */
  burm_nts_9,  /* 109 */
  burm_nts_9,  /* 110 */
  burm_nts_9,  /* 111 */
  burm_nts_8,  /* 112 */
  burm_nts_8,  /* 113 */
  burm_nts_8,  /* 114 */
  burm_nts_9,  /* 115 */
  burm_nts_9,  /* 116 */
  burm_nts_9,  /* 117 */
  burm_nts_8,  /* 118 */
  burm_nts_8,  /* 119 */
  burm_nts_8,  /* 120 */
  burm_nts_9,  /* 121 */
  burm_nts_9,  /* 122 */
  burm_nts_9,  /* 123 */
  burm_nts_8,  /* 124 */
  burm_nts_8,  /* 125 */
  burm_nts_8,  /* 126 */
  burm_nts_9,  /* 127 */
  burm_nts_9,  /* 128 */
  burm_nts_9,  /* 129 */
  burm_nts_8,  /* 130 */
  burm_nts_8,  /* 131 */
  burm_nts_8,  /* 132 */
  burm_nts_8,  /* 133 */
  burm_nts_8,  /* 134 */
  burm_nts_8,  /* 135 */
  burm_nts_8,  /* 136 */
  burm_nts_0,  /* 137 */
  burm_nts_8,  /* 138 */
  burm_nts_8,  /* 139 */
  burm_nts_8,  /* 140 */
  burm_nts_8,  /* 141 */
  burm_nts_10,  /* 142 */
  burm_nts_10,  /* 143 */
  burm_nts_10,  /* 144 */
  burm_nts_8,  /* 145 */
  burm_nts_8,  /* 146 */
  burm_nts_8,  /* 147 */
  burm_nts_10,  /* 148 */
  burm_nts_10,  /* 149 */
  burm_nts_10,  /* 150 */
  burm_nts_8,  /* 151 */
  burm_nts_8,  /* 152 */
  burm_nts_8,  /* 153 */
  burm_nts_10,  /* 154 */
  burm_nts_10,  /* 155 */
  burm_nts_10,  /* 156 */
  burm_nts_8,  /* 157 */
  burm_nts_8,  /* 158 */
  burm_nts_8,  /* 159 */
  burm_nts_10,  /* 160 */
  burm_nts_10,  /* 161 */
  burm_nts_10,  /* 162 */
  burm_nts_8,  /* 163 */
  burm_nts_8,  /* 164 */
  burm_nts_8,  /* 165 */
  burm_nts_10,  /* 166 */
  burm_nts_10,  /* 167 */
  burm_nts_10,  /* 168 */
  burm_nts_8,  /* 169 */
  burm_nts_8,  /* 170 */
  burm_nts_8,  /* 171 */
  burm_nts_10,  /* 172 */
  burm_nts_10,  /* 173 */
  burm_nts_10,  /* 174 */
  burm_nts_8,  /* 175 */
  burm_nts_8,  /* 176 */
  burm_nts_8,  /* 177 */
  burm_nts_8,  /* 178 */
  burm_nts_8,  /* 179 */
  burm_nts_7,  /* 180 */
  burm_nts_11,  /* 181 */
  burm_nts_11,  /* 182 */
  burm_nts_11,  /* 183 */
  burm_nts_11,  /* 184 */
  burm_nts_12,  /* 185 */
  burm_nts_12,  /* 186 */
  burm_nts_12,  /* 187 */
  burm_nts_12,  /* 188 */
  burm_nts_12,  /* 189 */
  burm_nts_12,  /* 190 */
  burm_nts_2,  /* 191 */
  burm_nts_2,  /* 192 */
  burm_nts_2,  /* 193 */
  burm_nts_7,  /* 194 */
  burm_nts_2,  /* 195 */
  burm_nts_7,  /* 196 */
  burm_nts_3,  /* 197 */
  burm_nts_3,  /* 198 */
  burm_nts_3,  /* 199 */
  burm_nts_13,  /* 200 */
  burm_nts_13,  /* 201 */
  burm_nts_13,  /* 202 */
  burm_nts_13,  /* 203 */
  burm_nts_14,  /* 204 */
  burm_nts_14,  /* 205 */
  burm_nts_14,  /* 206 */
  burm_nts_14,  /* 207 */
  burm_nts_14,  /* 208 */
  burm_nts_14,  /* 209 */
  burm_nts_7,  /* 210 */
  burm_nts_3,  /* 211 */
  burm_nts_11,  /* 212 */
  burm_nts_11,  /* 213 */
  burm_nts_11,  /* 214 */
  burm_nts_13,  /* 215 */
  burm_nts_13,  /* 216 */
  burm_nts_13,  /* 217 */
  burm_nts_11,  /* 218 */
  burm_nts_11,  /* 219 */
  burm_nts_11,  /* 220 */
  burm_nts_13,  /* 221 */
  burm_nts_13,  /* 222 */
  burm_nts_13,  /* 223 */
  burm_nts_11,  /* 224 */
  burm_nts_11,  /* 225 */
  burm_nts_11,  /* 226 */
  burm_nts_13,  /* 227 */
  burm_nts_13,  /* 228 */
  burm_nts_13,  /* 229 */
  burm_nts_11,  /* 230 */
  burm_nts_11,  /* 231 */
  burm_nts_11,  /* 232 */
  burm_nts_13,  /* 233 */
  burm_nts_13,  /* 234 */
  burm_nts_13,  /* 235 */
  burm_nts_11,  /* 236 */
  burm_nts_11,  /* 237 */
  burm_nts_11,  /* 238 */
  burm_nts_13,  /* 239 */
  burm_nts_13,  /* 240 */
  burm_nts_13,  /* 241 */
  burm_nts_11,  /* 242 */
  burm_nts_11,  /* 243 */
  burm_nts_11,  /* 244 */
  burm_nts_13,  /* 245 */
  burm_nts_13,  /* 246 */
  burm_nts_13,  /* 247 */
  burm_nts_11,  /* 248 */
  burm_nts_11,  /* 249 */
  burm_nts_13,  /* 250 */
  burm_nts_13,  /* 251 */
  burm_nts_0,  /* 252 */
  burm_nts_0,  /* 253 */
  burm_nts_0,  /* 254 */
  burm_nts_0,  /* 255 */
  burm_nts_2,  /* 256 */
  burm_nts_3,  /* 257 */
  burm_nts_2,  /* 258 */
  burm_nts_3,  /* 259 */
  burm_nts_2,  /* 260 */
  burm_nts_3,  /* 261 */
  burm_nts_2,  /* 262 */
  burm_nts_3,  /* 263 */
  burm_nts_2,  /* 264 */
  burm_nts_3,  /* 265 */
  burm_nts_2,  /* 266 */
  burm_nts_3,  /* 267 */
  burm_nts_2,  /* 268 */
  burm_nts_3,  /* 269 */
  burm_nts_2,  /* 270 */
  burm_nts_3,  /* 271 */
  burm_nts_2,  /* 272 */
  burm_nts_3,  /* 273 */
  burm_nts_2,  /* 274 */
  burm_nts_3,  /* 275 */
  burm_nts_0,  /* 276 */
  burm_nts_0,  /* 277 */
  burm_nts_3,  /* 278 */
  burm_nts_0,  /* 279 */
  burm_nts_0,  /* 280 */
  burm_nts_2,  /* 281 */
  burm_nts_0,  /* 282 */
  burm_nts_0,  /* 283 */
  burm_nts_4,  /* 284 */
  burm_nts_4,  /* 285 */
  burm_nts_4,  /* 286 */
  burm_nts_4,  /* 287 */
  burm_nts_0,  /* 288 */
  burm_nts_0,  /* 289 */
  burm_nts_4,  /* 290 */
  burm_nts_4,  /* 291 */
  burm_nts_4,  /* 292 */
  burm_nts_4,  /* 293 */
  burm_nts_4,  /* 294 */
  burm_nts_4,  /* 295 */
  burm_nts_4,  /* 296 */
  burm_nts_4,  /* 297 */
  burm_nts_4,  /* 298 */
  burm_nts_15,  /* 299 */
  burm_nts_15,  /* 300 */
  burm_nts_15,  /* 301 */
  burm_nts_15,  /* 302 */
  burm_nts_15,  /* 303 */
  burm_nts_15,  /* 304 */
  burm_nts_15,  /* 305 */
  burm_nts_15,  /* 306 */
  burm_nts_15,  /* 307 */
  burm_nts_15,  /* 308 */
  burm_nts_15,  /* 309 */
  burm_nts_15,  /* 310 */
  burm_nts_15,  /* 311 */
  burm_nts_7,  /* 312 */
  burm_nts_7,  /* 313 */
  burm_nts_7,  /* 314 */
  burm_nts_7,  /* 315 */
  burm_nts_7,  /* 316 */
  burm_nts_7,  /* 317 */
  burm_nts_4,  /* 318 */
  burm_nts_4,  /* 319 */
  burm_nts_7,  /* 320 */
  burm_nts_7,  /* 321 */
  burm_nts_7,  /* 322 */
  burm_nts_7,  /* 323 */
  burm_nts_4,  /* 324 */
  burm_nts_4,  /* 325 */
  burm_nts_15,  /* 326 */
  burm_nts_15,  /* 327 */
  burm_nts_15,  /* 328 */
  burm_nts_15,  /* 329 */
  burm_nts_15,  /* 330 */
  burm_nts_15,  /* 331 */
  burm_nts_15,  /* 332 */
  burm_nts_15,  /* 333 */
  burm_nts_15,  /* 334 */
  burm_nts_15,  /* 335 */
  burm_nts_15,  /* 336 */
  burm_nts_15,  /* 337 */
  burm_nts_15,  /* 338 */
  burm_nts_15,  /* 339 */
  burm_nts_15,  /* 340 */
  burm_nts_15,  /* 341 */
  burm_nts_15,  /* 342 */
  burm_nts_15,  /* 343 */
  burm_nts_15,  /* 344 */
  burm_nts_15,  /* 345 */
  burm_nts_15,  /* 346 */
  burm_nts_15,  /* 347 */
  burm_nts_15,  /* 348 */
  burm_nts_15,  /* 349 */
  burm_nts_15,  /* 350 */
  burm_nts_15,  /* 351 */
  burm_nts_15,  /* 352 */
  burm_nts_15,  /* 353 */
  burm_nts_15,  /* 354 */
  burm_nts_15,  /* 355 */
  burm_nts_15,  /* 356 */
  burm_nts_15,  /* 357 */
  burm_nts_15,  /* 358 */
  burm_nts_15,  /* 359 */
  burm_nts_15,  /* 360 */
  burm_nts_15,  /* 361 */
  burm_nts_15,  /* 362 */
  burm_nts_15,  /* 363 */
  burm_nts_15,  /* 364 */
  burm_nts_15,  /* 365 */
  burm_nts_15,  /* 366 */
  burm_nts_15,  /* 367 */
  burm_nts_15,  /* 368 */
  burm_nts_15,  /* 369 */
  burm_nts_15,  /* 370 */
  burm_nts_15,  /* 371 */
  burm_nts_15,  /* 372 */
  burm_nts_15,  /* 373 */
  burm_nts_15,  /* 374 */
  burm_nts_15,  /* 375 */
  burm_nts_15,  /* 376 */
  burm_nts_15,  /* 377 */
  burm_nts_15,  /* 378 */
  burm_nts_15,  /* 379 */
  burm_nts_15,  /* 380 */
  burm_nts_15,  /* 381 */
  burm_nts_15,  /* 382 */
  burm_nts_15,  /* 383 */
  burm_nts_9,  /* 384 */
  burm_nts_9,  /* 385 */
  burm_nts_8,  /* 386 */
  burm_nts_8,  /* 387 */
  burm_nts_9,  /* 388 */
  burm_nts_9,  /* 389 */
  burm_nts_8,  /* 390 */
  burm_nts_8,  /* 391 */
  burm_nts_9,  /* 392 */
  burm_nts_9,  /* 393 */
  burm_nts_8,  /* 394 */
  burm_nts_8,  /* 395 */
  burm_nts_9,  /* 396 */
  burm_nts_9,  /* 397 */
  burm_nts_8,  /* 398 */
  burm_nts_8,  /* 399 */
  burm_nts_9,  /* 400 */
  burm_nts_9,  /* 401 */
  burm_nts_8,  /* 402 */
  burm_nts_8,  /* 403 */
  burm_nts_9,  /* 404 */
  burm_nts_9,  /* 405 */
  burm_nts_8,  /* 406 */
  burm_nts_8,  /* 407 */
  burm_nts_9,  /* 408 */
  burm_nts_9,  /* 409 */
  burm_nts_8,  /* 410 */
  burm_nts_8,  /* 411 */
  burm_nts_9,  /* 412 */
  burm_nts_9,  /* 413 */
  burm_nts_8,  /* 414 */
  burm_nts_8,  /* 415 */
  burm_nts_9,  /* 416 */
  burm_nts_9,  /* 417 */
  burm_nts_8,  /* 418 */
  burm_nts_8,  /* 419 */
  burm_nts_9,  /* 420 */
  burm_nts_9,  /* 421 */
  burm_nts_8,  /* 422 */
  burm_nts_8,  /* 423 */
  burm_nts_9,  /* 424 */
  burm_nts_9,  /* 425 */
  burm_nts_8,  /* 426 */
  burm_nts_8,  /* 427 */
  burm_nts_9,  /* 428 */
  burm_nts_9,  /* 429 */
  burm_nts_8,  /* 430 */
  burm_nts_8,  /* 431 */
  burm_nts_11,  /* 432 */
  burm_nts_11,  /* 433 */
  burm_nts_13,  /* 434 */
  burm_nts_13,  /* 435 */
  burm_nts_11,  /* 436 */
  burm_nts_11,  /* 437 */
  burm_nts_13,  /* 438 */
  burm_nts_13,  /* 439 */
  burm_nts_11,  /* 440 */
  burm_nts_11,  /* 441 */
  burm_nts_13,  /* 442 */
  burm_nts_13,  /* 443 */
  burm_nts_11,  /* 444 */
  burm_nts_11,  /* 445 */
  burm_nts_13,  /* 446 */
  burm_nts_13,  /* 447 */
  burm_nts_11,  /* 448 */
  burm_nts_11,  /* 449 */
  burm_nts_13,  /* 450 */
  burm_nts_13,  /* 451 */
  burm_nts_11,  /* 452 */
  burm_nts_11,  /* 453 */
  burm_nts_13,  /* 454 */
  burm_nts_13,  /* 455 */
  burm_nts_15,  /* 456 */
  burm_nts_15,  /* 457 */
  burm_nts_15,  /* 458 */
  burm_nts_15,  /* 459 */
  burm_nts_15,  /* 460 */
  burm_nts_15,  /* 461 */
  burm_nts_15,  /* 462 */
  burm_nts_15,  /* 463 */
  burm_nts_15,  /* 464 */
  burm_nts_15,  /* 465 */
  burm_nts_15,  /* 466 */
  burm_nts_15,  /* 467 */
  burm_nts_15,  /* 468 */
  burm_nts_15,  /* 469 */
  burm_nts_15,  /* 470 */
  burm_nts_15,  /* 471 */
  burm_nts_15,  /* 472 */
  burm_nts_15,  /* 473 */
  burm_nts_15,  /* 474 */
  burm_nts_15,  /* 475 */
  burm_nts_15,  /* 476 */
  burm_nts_15,  /* 477 */
  burm_nts_15,  /* 478 */
  burm_nts_15,  /* 479 */
  burm_nts_16,  /* 480 */
  burm_nts_16,  /* 481 */
  burm_nts_16,  /* 482 */
  burm_nts_16,  /* 483 */
  burm_nts_16,  /* 484 */
  burm_nts_16,  /* 485 */
  burm_nts_0,  /* 486 */
  burm_nts_0,  /* 487 */
  burm_nts_4,  /* 488 */
  burm_nts_4,  /* 489 */
  burm_nts_2,  /* 490 */
  burm_nts_3,  /* 491 */
  burm_nts_7,  /* 492 */
};

char burm_arity[] = {
  0,  /* 0=I4INTCONST */
  1,  /* 1=I4ABS */
  1,  /* 2=I4NEG */
  2,  /* 3=I4ADD */
  2,  /* 4=I4SUB */
  2,  /* 5=I4MPY */
  2,  /* 6=I4HIGHMPY */
  2,  /* 7=I4DIV */
  2,  /* 8=I4REM */
  2,  /* 9=I4MOD */
  0,  /* 10=U4INTCONST */
  1,  /* 11=U4NEG */
  2,  /* 12=U4ADD */
  2,  /* 13=U4SUB */
  2,  /* 14=U4MPY */
  2,  /* 15=U4HIGHMPY */
  2,  /* 16=U4DIV */
  2,  /* 17=U4REM */
  2,  /* 18=U4MOD */
  0,  /* 19=BINTCONST */
  1,  /* 20=BLNOT */
  2,  /* 21=BLAND */
  2,  /* 22=BLIOR */
  1,  /* 23=I4LNOT */
  2,  /* 24=I4LIOR */
  2,  /* 25=I4LAND */
  2,  /* 26=I4BIOR */
  1,  /* 27=I4BNOT */
  2,  /* 28=I4BAND */
  2,  /* 29=I4BXOR */
  2,  /* 30=I4BNOR */
  1,  /* 31=U4BNOT */
  2,  /* 32=U4BIOR */
  2,  /* 33=U4BAND */
  2,  /* 34=U4BXOR */
  2,  /* 35=U4BNOR */
  2,  /* 36=BBEQ */
  2,  /* 37=BBNE */
  2,  /* 38=BI4LT */
  2,  /* 39=BI4LE */
  2,  /* 40=BI4EQ */
  2,  /* 41=BI4NE */
  2,  /* 42=BI4GE */
  2,  /* 43=BI4GT */
  2,  /* 44=I4I4LT */
  2,  /* 45=I4I4LE */
  2,  /* 46=I4I4EQ */
  2,  /* 47=I4I4NE */
  2,  /* 48=I4I4GE */
  2,  /* 49=I4I4GT */
  2,  /* 50=U4I4LT */
  2,  /* 51=U4I4LE */
  2,  /* 52=U4I4EQ */
  2,  /* 53=U4I4NE */
  2,  /* 54=U4I4GE */
  2,  /* 55=U4I4GT */
  2,  /* 56=I4MAX */
  2,  /* 57=I4MIN */
  2,  /* 58=I4SHL */
  2,  /* 59=I4ASHR */
  2,  /* 60=I4LSHR */
  2,  /* 61=BU4LT */
  2,  /* 62=BU4LE */
  2,  /* 63=BU4EQ */
  2,  /* 64=BU4NE */
  2,  /* 65=BU4GE */
  2,  /* 66=BU4GT */
  2,  /* 67=I4U4LT */
  2,  /* 68=I4U4LE */
  2,  /* 69=I4U4EQ */
  2,  /* 70=I4U4NE */
  2,  /* 71=I4U4GE */
  2,  /* 72=I4U4GT */
  2,  /* 73=U4U4LT */
  2,  /* 74=U4U4LE */
  2,  /* 75=U4U4EQ */
  2,  /* 76=U4U4NE */
  2,  /* 77=U4U4GE */
  2,  /* 78=U4U4GT */
  2,  /* 79=U4MAX */
  2,  /* 80=U4MIN */
  2,  /* 81=U4SHL */
  2,  /* 82=U4ASHR */
  2,  /* 83=U4LSHR */
  0,  /* 84=F4CONST */
  2,  /* 85=F4ADD */
  2,  /* 86=F4SUB */
  2,  /* 87=F4MPY */
  2,  /* 88=F4DIV */
  3,  /* 89=F4MADD */
  3,  /* 90=F4NMADD */
  3,  /* 91=F4MSUB */
  3,  /* 92=F4NMSUB */
  1,  /* 93=F4NEG */
  1,  /* 94=F4ABS */
  0,  /* 95=F4RECIP */
  0,  /* 96=F4SQRT */
  0,  /* 97=F4RSQRT */
  0,  /* 98=F8CONST */
  2,  /* 99=F8ADD */
  2,  /* 100=F8SUB */
  2,  /* 101=F8MPY */
  2,  /* 102=F8DIV */
  3,  /* 103=F8MADD */
  3,  /* 104=F8NMADD */
  3,  /* 105=F8MSUB */
  3,  /* 106=F8NMSUB */
  1,  /* 107=F8NEG */
  1,  /* 108=F8ABS */
  0,  /* 109=F8RECIP */
  0,  /* 110=F8SQRT */
  0,  /* 111=F8RSQRT */
  2,  /* 112=BF4LT */
  2,  /* 113=BF4LE */
  2,  /* 114=BF4EQ */
  2,  /* 115=BF4NE */
  2,  /* 116=BF4GE */
  2,  /* 117=BF4GT */
  2,  /* 118=I4F4LT */
  2,  /* 119=I4F4LE */
  2,  /* 120=I4F4EQ */
  2,  /* 121=I4F4NE */
  2,  /* 122=I4F4GE */
  2,  /* 123=I4F4GT */
  2,  /* 124=U4F4LT */
  2,  /* 125=U4F4LE */
  2,  /* 126=U4F4EQ */
  2,  /* 127=U4F4NE */
  2,  /* 128=U4F4GE */
  2,  /* 129=U4F4GT */
  2,  /* 130=F4MAX */
  2,  /* 131=F4MIN */
  2,  /* 132=BF8LT */
  2,  /* 133=BF8LE */
  2,  /* 134=BF8EQ */
  2,  /* 135=BF8NE */
  2,  /* 136=BF8GE */
  2,  /* 137=BF8GT */
  2,  /* 138=I4F8LT */
  2,  /* 139=I4F8LE */
  2,  /* 140=I4F8EQ */
  2,  /* 141=I4F8NE */
  2,  /* 142=I4F8GE */
  2,  /* 143=I4F8GT */
  2,  /* 144=U4F8LT */
  2,  /* 145=U4F8LE */
  2,  /* 146=U4F8EQ */
  2,  /* 147=U4F8NE */
  2,  /* 148=U4F8GE */
  2,  /* 149=U4F8GT */
  2,  /* 150=F8MAX */
  2,  /* 151=F8MIN */
  1,  /* 152=I1STID */
  1,  /* 153=I2STID */
  1,  /* 154=U1STID */
  1,  /* 155=U2STID */
  0,  /* 156=I4I1LDID */
  0,  /* 157=I4I2LDID */
  0,  /* 158=I4I4LDID */
  0,  /* 159=I4I8LDID */
  0,  /* 160=I4BSLDID */
  1,  /* 161=I4STID */
  0,  /* 162=U4U1LDID */
  0,  /* 163=U4U2LDID */
  0,  /* 164=U4U4LDID */
  0,  /* 165=U4U8LDID */
  0,  /* 166=U4BSLDID */
  1,  /* 167=U4STID */
  0,  /* 168=F4F4LDID */
  1,  /* 169=F4STID */
  0,  /* 170=F8F8LDID */
  1,  /* 171=F8STID */
  1,  /* 172=I4BCVT */
  1,  /* 173=I4U4CVT */
  1,  /* 174=I4F4CVT */
  1,  /* 175=I4F8CVT */
  1,  /* 176=I4F4RND */
  1,  /* 177=I4F4TRUNC */
  1,  /* 178=I4F4CEIL */
  1,  /* 179=I4F4FLOOR */
  1,  /* 180=I4F8RND */
  1,  /* 181=I4F8TRUNC */
  1,  /* 182=I4F8CEIL */
  1,  /* 183=I4F8FLOOR */
  1,  /* 184=U4BCVT */
  1,  /* 185=U4I4CVT */
  1,  /* 186=U4F4CVT */
  1,  /* 187=U4F8CVT */
  1,  /* 188=U4F4RND */
  1,  /* 189=U4F4TRUNC */
  1,  /* 190=U4F4CEIL */
  1,  /* 191=U4F4FLOOR */
  1,  /* 192=U4F8RND */
  1,  /* 193=U4F8TRUNC */
  1,  /* 194=U4F8CEIL */
  1,  /* 195=U4F8FLOOR */
  1,  /* 196=F4I4CVT */
  1,  /* 197=F4U4CVT */
  1,  /* 198=F4F8CVT */
  1,  /* 199=F8I4CVT */
  1,  /* 200=F8U4CVT */
  1,  /* 201=F8F4CVT */
  0,  /* 202=I8I1LDID */
  0,  /* 203=I8I2LDID */
  0,  /* 204=I8I4LDID */
  0,  /* 205=I8I8LDID */
  0,  /* 206=I8BSLDID */
  1,  /* 207=I8STID */
  0,  /* 208=U8U1LDID */
  0,  /* 209=U8U2LDID */
  0,  /* 210=U8U4LDID */
  0,  /* 211=U8U8LDID */
  0,  /* 212=U8BSLDID */
  1,  /* 213=U8STID */
  0,  /* 214=I8INTCONST */
  1,  /* 215=I8ABS */
  1,  /* 216=I8NEG */
  2,  /* 217=I8ADD */
  2,  /* 218=I8SUB */
  2,  /* 219=I8MPY */
  2,  /* 220=I8HIGHMPY */
  2,  /* 221=I8DIV */
  2,  /* 222=I8REM */
  2,  /* 223=I8MOD */
  0,  /* 224=U8INTCONST */
  1,  /* 225=U8NEG */
  2,  /* 226=U8ADD */
  2,  /* 227=U8SUB */
  2,  /* 228=U8MPY */
  2,  /* 229=U8HIGHMPY */
  0,  /* 230=U8DIV */
  2,  /* 231=U8REM */
  2,  /* 232=U8MOD */
  2,  /* 233=I8BIOR */
  1,  /* 234=I8BNOT */
  2,  /* 235=I8BAND */
  2,  /* 236=I8BXOR */
  2,  /* 237=I8BNOR */
  1,  /* 238=U8BNOT */
  2,  /* 239=U8BIOR */
  2,  /* 240=U8BAND */
  2,  /* 241=U8BXOR */
  2,  /* 242=U8BNOR */
  2,  /* 243=BI8LT */
  2,  /* 244=BI8LE */
  2,  /* 245=BI8EQ */
  2,  /* 246=BI8NE */
  2,  /* 247=BI8GE */
  2,  /* 248=BI8GT */
  2,  /* 249=I4I8LT */
  2,  /* 250=I4I8LE */
  2,  /* 251=I4I8EQ */
  2,  /* 252=I4I8NE */
  2,  /* 253=I4I8GE */
  2,  /* 254=I4I8GT */
  2,  /* 255=U4I8LT */
  2,  /* 256=U4I8LE */
  2,  /* 257=U4I8EQ */
  2,  /* 258=U4I8NE */
  2,  /* 259=U4I8GE */
  2,  /* 260=U4I8GT */
  2,  /* 261=I8I8LT */
  2,  /* 262=I8I8LE */
  2,  /* 263=I8I8EQ */
  2,  /* 264=I8I8NE */
  2,  /* 265=I8I8GE */
  2,  /* 266=I8I8GT */
  2,  /* 267=U8I8LT */
  2,  /* 268=U8I8LE */
  2,  /* 269=U8I8EQ */
  2,  /* 270=U8I8NE */
  2,  /* 271=U8I8GE */
  2,  /* 272=U8I8GT */
  2,  /* 273=I8MAX */
  2,  /* 274=I8MIN */
  2,  /* 275=BU8LT */
  2,  /* 276=BU8LE */
  2,  /* 277=BU8EQ */
  2,  /* 278=BU8NE */
  2,  /* 279=BU8GE */
  2,  /* 280=BU8GT */
  2,  /* 281=I4U8LT */
  2,  /* 282=I4U8LE */
  2,  /* 283=I4U8EQ */
  2,  /* 284=I4U8NE */
  2,  /* 285=I4U8GE */
  2,  /* 286=I4U8GT */
  2,  /* 287=U4U8LT */
  2,  /* 288=U4U8LE */
  2,  /* 289=U4U8EQ */
  2,  /* 290=U4U8NE */
  2,  /* 291=U4U8GE */
  2,  /* 292=U4U8GT */
  2,  /* 293=I8U8LT */
  2,  /* 294=I8U8LE */
  2,  /* 295=I8U8EQ */
  2,  /* 296=I8U8NE */
  2,  /* 297=I8U8GE */
  2,  /* 298=I8U8GT */
  2,  /* 299=U8U8LT */
  2,  /* 300=U8U8LE */
  2,  /* 301=U8U8EQ */
  2,  /* 302=U8U8NE */
  2,  /* 303=U8U8GE */
  2,  /* 304=U8U8GT */
  2,  /* 305=U8MAX */
  2,  /* 306=U8MIN */
  2,  /* 307=I8I4LT */
  2,  /* 308=I8I4LE */
  2,  /* 309=I8I4EQ */
  2,  /* 310=I8I4NE */
  2,  /* 311=I8I4GE */
  2,  /* 312=I8I4GT */
  2,  /* 313=U8I4LT */
  2,  /* 314=U8I4LE */
  2,  /* 315=U8I4EQ */
  2,  /* 316=U8I4NE */
  2,  /* 317=U8I4GE */
  2,  /* 318=U8I4GT */
  2,  /* 319=I8U4LT */
  2,  /* 320=I8U4LE */
  2,  /* 321=I8U4EQ */
  2,  /* 322=I8U4NE */
  2,  /* 323=I8U4GE */
  2,  /* 324=I8U4GT */
  2,  /* 325=U8U4LT */
  2,  /* 326=U8U4LE */
  2,  /* 327=U8U4EQ */
  2,  /* 328=U8U4NE */
  2,  /* 329=U8U4GE */
  2,  /* 330=U8U4GT */
  2,  /* 331=I8SHL */
  2,  /* 332=I8ASHR */
  2,  /* 333=I8LSHR */
  2,  /* 334=U8SHL */
  2,  /* 335=U8ASHR */
  2,  /* 336=U8LSHR */
  2,  /* 337=I8F4LT */
  2,  /* 338=I8F4LE */
  2,  /* 339=I8F4EQ */
  2,  /* 340=I8F4NE */
  2,  /* 341=I8F4GE */
  2,  /* 342=I8F4GT */
  2,  /* 343=U8F4LT */
  2,  /* 344=U8F4LE */
  2,  /* 345=U8F4EQ */
  2,  /* 346=U8F4NE */
  2,  /* 347=U8F4GE */
  2,  /* 348=U8F4GT */
  2,  /* 349=I8F8LT */
  2,  /* 350=I8F8LE */
  2,  /* 351=I8F8EQ */
  2,  /* 352=I8F8NE */
  2,  /* 353=I8F8GE */
  2,  /* 354=I8F8GT */
  2,  /* 355=U8F8LT */
  2,  /* 356=U8F8LE */
  2,  /* 357=U8F8EQ */
  2,  /* 358=U8F8NE */
  2,  /* 359=U8F8GE */
  2,  /* 360=U8F8GT */
  1,  /* 361=I4I8CVT */
  1,  /* 362=U4U8CVT */
  1,  /* 363=I8I4CVT */
  1,  /* 364=U8U4CVT */
  1,  /* 365=I8U8CVT */
  1,  /* 366=U8I8CVT */
  1,  /* 367=I4CVTL */
  1,  /* 368=I8CVTL */
  1,  /* 369=U4CVTL */
  1,  /* 370=U8CVTL */
  1,  /* 371=F8U8CVT */
  1,  /* 372=F4U8CVT */
  1,  /* 373=I4PARM */
  1,  /* 374=U4PARM */
  1,  /* 375=I8PARM */
  1,  /* 376=U8PARM */
  1,  /* 377=F4PARM */
  1,  /* 378=F8PARM */
  0,  /* 379=CALL */
};

char *burm_opname[] = {
  /* 0 */  "I4INTCONST",
  /* 1 */  "I4ABS",
  /* 2 */  "I4NEG",
  /* 3 */  "I4ADD",
  /* 4 */  "I4SUB",
  /* 5 */  "I4MPY",
  /* 6 */  "I4HIGHMPY",
  /* 7 */  "I4DIV",
  /* 8 */  "I4REM",
  /* 9 */  "I4MOD",
  /* 10 */  "U4INTCONST",
  /* 11 */  "U4NEG",
  /* 12 */  "U4ADD",
  /* 13 */  "U4SUB",
  /* 14 */  "U4MPY",
  /* 15 */  "U4HIGHMPY",
  /* 16 */  "U4DIV",
  /* 17 */  "U4REM",
  /* 18 */  "U4MOD",
  /* 19 */  "BINTCONST",
  /* 20 */  "BLNOT",
  /* 21 */  "BLAND",
  /* 22 */  "BLIOR",
  /* 23 */  "I4LNOT",
  /* 24 */  "I4LIOR",
  /* 25 */  "I4LAND",
  /* 26 */  "I4BIOR",
  /* 27 */  "I4BNOT",
  /* 28 */  "I4BAND",
  /* 29 */  "I4BXOR",
  /* 30 */  "I4BNOR",
  /* 31 */  "U4BNOT",
  /* 32 */  "U4BIOR",
  /* 33 */  "U4BAND",
  /* 34 */  "U4BXOR",
  /* 35 */  "U4BNOR",
  /* 36 */  "BBEQ",
  /* 37 */  "BBNE",
  /* 38 */  "BI4LT",
  /* 39 */  "BI4LE",
  /* 40 */  "BI4EQ",
  /* 41 */  "BI4NE",
  /* 42 */  "BI4GE",
  /* 43 */  "BI4GT",
  /* 44 */  "I4I4LT",
  /* 45 */  "I4I4LE",
  /* 46 */  "I4I4EQ",
  /* 47 */  "I4I4NE",
  /* 48 */  "I4I4GE",
  /* 49 */  "I4I4GT",
  /* 50 */  "U4I4LT",
  /* 51 */  "U4I4LE",
  /* 52 */  "U4I4EQ",
  /* 53 */  "U4I4NE",
  /* 54 */  "U4I4GE",
  /* 55 */  "U4I4GT",
  /* 56 */  "I4MAX",
  /* 57 */  "I4MIN",
  /* 58 */  "I4SHL",
  /* 59 */  "I4ASHR",
  /* 60 */  "I4LSHR",
  /* 61 */  "BU4LT",
  /* 62 */  "BU4LE",
  /* 63 */  "BU4EQ",
  /* 64 */  "BU4NE",
  /* 65 */  "BU4GE",
  /* 66 */  "BU4GT",
  /* 67 */  "I4U4LT",
  /* 68 */  "I4U4LE",
  /* 69 */  "I4U4EQ",
  /* 70 */  "I4U4NE",
  /* 71 */  "I4U4GE",
  /* 72 */  "I4U4GT",
  /* 73 */  "U4U4LT",
  /* 74 */  "U4U4LE",
  /* 75 */  "U4U4EQ",
  /* 76 */  "U4U4NE",
  /* 77 */  "U4U4GE",
  /* 78 */  "U4U4GT",
  /* 79 */  "U4MAX",
  /* 80 */  "U4MIN",
  /* 81 */  "U4SHL",
  /* 82 */  "U4ASHR",
  /* 83 */  "U4LSHR",
  /* 84 */  "F4CONST",
  /* 85 */  "F4ADD",
  /* 86 */  "F4SUB",
  /* 87 */  "F4MPY",
  /* 88 */  "F4DIV",
  /* 89 */  "F4MADD",
  /* 90 */  "F4NMADD",
  /* 91 */  "F4MSUB",
  /* 92 */  "F4NMSUB",
  /* 93 */  "F4NEG",
  /* 94 */  "F4ABS",
  /* 95 */  "F4RECIP",
  /* 96 */  "F4SQRT",
  /* 97 */  "F4RSQRT",
  /* 98 */  "F8CONST",
  /* 99 */  "F8ADD",
  /* 100 */  "F8SUB",
  /* 101 */  "F8MPY",
  /* 102 */  "F8DIV",
  /* 103 */  "F8MADD",
  /* 104 */  "F8NMADD",
  /* 105 */  "F8MSUB",
  /* 106 */  "F8NMSUB",
  /* 107 */  "F8NEG",
  /* 108 */  "F8ABS",
  /* 109 */  "F8RECIP",
  /* 110 */  "F8SQRT",
  /* 111 */  "F8RSQRT",
  /* 112 */  "BF4LT",
  /* 113 */  "BF4LE",
  /* 114 */  "BF4EQ",
  /* 115 */  "BF4NE",
  /* 116 */  "BF4GE",
  /* 117 */  "BF4GT",
  /* 118 */  "I4F4LT",
  /* 119 */  "I4F4LE",
  /* 120 */  "I4F4EQ",
  /* 121 */  "I4F4NE",
  /* 122 */  "I4F4GE",
  /* 123 */  "I4F4GT",
  /* 124 */  "U4F4LT",
  /* 125 */  "U4F4LE",
  /* 126 */  "U4F4EQ",
  /* 127 */  "U4F4NE",
  /* 128 */  "U4F4GE",
  /* 129 */  "U4F4GT",
  /* 130 */  "F4MAX",
  /* 131 */  "F4MIN",
  /* 132 */  "BF8LT",
  /* 133 */  "BF8LE",
  /* 134 */  "BF8EQ",
  /* 135 */  "BF8NE",
  /* 136 */  "BF8GE",
  /* 137 */  "BF8GT",
  /* 138 */  "I4F8LT",
  /* 139 */  "I4F8LE",
  /* 140 */  "I4F8EQ",
  /* 141 */  "I4F8NE",
  /* 142 */  "I4F8GE",
  /* 143 */  "I4F8GT",
  /* 144 */  "U4F8LT",
  /* 145 */  "U4F8LE",
  /* 146 */  "U4F8EQ",
  /* 147 */  "U4F8NE",
  /* 148 */  "U4F8GE",
  /* 149 */  "U4F8GT",
  /* 150 */  "F8MAX",
  /* 151 */  "F8MIN",
  /* 152 */  "I1STID",
  /* 153 */  "I2STID",
  /* 154 */  "U1STID",
  /* 155 */  "U2STID",
  /* 156 */  "I4I1LDID",
  /* 157 */  "I4I2LDID",
  /* 158 */  "I4I4LDID",
  /* 159 */  "I4I8LDID",
  /* 160 */  "I4BSLDID",
  /* 161 */  "I4STID",
  /* 162 */  "U4U1LDID",
  /* 163 */  "U4U2LDID",
  /* 164 */  "U4U4LDID",
  /* 165 */  "U4U8LDID",
  /* 166 */  "U4BSLDID",
  /* 167 */  "U4STID",
  /* 168 */  "F4F4LDID",
  /* 169 */  "F4STID",
  /* 170 */  "F8F8LDID",
  /* 171 */  "F8STID",
  /* 172 */  "I4BCVT",
  /* 173 */  "I4U4CVT",
  /* 174 */  "I4F4CVT",
  /* 175 */  "I4F8CVT",
  /* 176 */  "I4F4RND",
  /* 177 */  "I4F4TRUNC",
  /* 178 */  "I4F4CEIL",
  /* 179 */  "I4F4FLOOR",
  /* 180 */  "I4F8RND",
  /* 181 */  "I4F8TRUNC",
  /* 182 */  "I4F8CEIL",
  /* 183 */  "I4F8FLOOR",
  /* 184 */  "U4BCVT",
  /* 185 */  "U4I4CVT",
  /* 186 */  "U4F4CVT",
  /* 187 */  "U4F8CVT",
  /* 188 */  "U4F4RND",
  /* 189 */  "U4F4TRUNC",
  /* 190 */  "U4F4CEIL",
  /* 191 */  "U4F4FLOOR",
  /* 192 */  "U4F8RND",
  /* 193 */  "U4F8TRUNC",
  /* 194 */  "U4F8CEIL",
  /* 195 */  "U4F8FLOOR",
  /* 196 */  "F4I4CVT",
  /* 197 */  "F4U4CVT",
  /* 198 */  "F4F8CVT",
  /* 199 */  "F8I4CVT",
  /* 200 */  "F8U4CVT",
  /* 201 */  "F8F4CVT",
  /* 202 */  "I8I1LDID",
  /* 203 */  "I8I2LDID",
  /* 204 */  "I8I4LDID",
  /* 205 */  "I8I8LDID",
  /* 206 */  "I8BSLDID",
  /* 207 */  "I8STID",
  /* 208 */  "U8U1LDID",
  /* 209 */  "U8U2LDID",
  /* 210 */  "U8U4LDID",
  /* 211 */  "U8U8LDID",
  /* 212 */  "U8BSLDID",
  /* 213 */  "U8STID",
  /* 214 */  "I8INTCONST",
  /* 215 */  "I8ABS",
  /* 216 */  "I8NEG",
  /* 217 */  "I8ADD",
  /* 218 */  "I8SUB",
  /* 219 */  "I8MPY",
  /* 220 */  "I8HIGHMPY",
  /* 221 */  "I8DIV",
  /* 222 */  "I8REM",
  /* 223 */  "I8MOD",
  /* 224 */  "U8INTCONST",
  /* 225 */  "U8NEG",
  /* 226 */  "U8ADD",
  /* 227 */  "U8SUB",
  /* 228 */  "U8MPY",
  /* 229 */  "U8HIGHMPY",
  /* 230 */  "U8DIV",
  /* 231 */  "U8REM",
  /* 232 */  "U8MOD",
  /* 233 */  "I8BIOR",
  /* 234 */  "I8BNOT",
  /* 235 */  "I8BAND",
  /* 236 */  "I8BXOR",
  /* 237 */  "I8BNOR",
  /* 238 */  "U8BNOT",
  /* 239 */  "U8BIOR",
  /* 240 */  "U8BAND",
  /* 241 */  "U8BXOR",
  /* 242 */  "U8BNOR",
  /* 243 */  "BI8LT",
  /* 244 */  "BI8LE",
  /* 245 */  "BI8EQ",
  /* 246 */  "BI8NE",
  /* 247 */  "BI8GE",
  /* 248 */  "BI8GT",
  /* 249 */  "I4I8LT",
  /* 250 */  "I4I8LE",
  /* 251 */  "I4I8EQ",
  /* 252 */  "I4I8NE",
  /* 253 */  "I4I8GE",
  /* 254 */  "I4I8GT",
  /* 255 */  "U4I8LT",
  /* 256 */  "U4I8LE",
  /* 257 */  "U4I8EQ",
  /* 258 */  "U4I8NE",
  /* 259 */  "U4I8GE",
  /* 260 */  "U4I8GT",
  /* 261 */  "I8I8LT",
  /* 262 */  "I8I8LE",
  /* 263 */  "I8I8EQ",
  /* 264 */  "I8I8NE",
  /* 265 */  "I8I8GE",
  /* 266 */  "I8I8GT",
  /* 267 */  "U8I8LT",
  /* 268 */  "U8I8LE",
  /* 269 */  "U8I8EQ",
  /* 270 */  "U8I8NE",
  /* 271 */  "U8I8GE",
  /* 272 */  "U8I8GT",
  /* 273 */  "I8MAX",
  /* 274 */  "I8MIN",
  /* 275 */  "BU8LT",
  /* 276 */  "BU8LE",
  /* 277 */  "BU8EQ",
  /* 278 */  "BU8NE",
  /* 279 */  "BU8GE",
  /* 280 */  "BU8GT",
  /* 281 */  "I4U8LT",
  /* 282 */  "I4U8LE",
  /* 283 */  "I4U8EQ",
  /* 284 */  "I4U8NE",
  /* 285 */  "I4U8GE",
  /* 286 */  "I4U8GT",
  /* 287 */  "U4U8LT",
  /* 288 */  "U4U8LE",
  /* 289 */  "U4U8EQ",
  /* 290 */  "U4U8NE",
  /* 291 */  "U4U8GE",
  /* 292 */  "U4U8GT",
  /* 293 */  "I8U8LT",
  /* 294 */  "I8U8LE",
  /* 295 */  "I8U8EQ",
  /* 296 */  "I8U8NE",
  /* 297 */  "I8U8GE",
  /* 298 */  "I8U8GT",
  /* 299 */  "U8U8LT",
  /* 300 */  "U8U8LE",
  /* 301 */  "U8U8EQ",
  /* 302 */  "U8U8NE",
  /* 303 */  "U8U8GE",
  /* 304 */  "U8U8GT",
  /* 305 */  "U8MAX",
  /* 306 */  "U8MIN",
  /* 307 */  "I8I4LT",
  /* 308 */  "I8I4LE",
  /* 309 */  "I8I4EQ",
  /* 310 */  "I8I4NE",
  /* 311 */  "I8I4GE",
  /* 312 */  "I8I4GT",
  /* 313 */  "U8I4LT",
  /* 314 */  "U8I4LE",
  /* 315 */  "U8I4EQ",
  /* 316 */  "U8I4NE",
  /* 317 */  "U8I4GE",
  /* 318 */  "U8I4GT",
  /* 319 */  "I8U4LT",
  /* 320 */  "I8U4LE",
  /* 321 */  "I8U4EQ",
  /* 322 */  "I8U4NE",
  /* 323 */  "I8U4GE",
  /* 324 */  "I8U4GT",
  /* 325 */  "U8U4LT",
  /* 326 */  "U8U4LE",
  /* 327 */  "U8U4EQ",
  /* 328 */  "U8U4NE",
  /* 329 */  "U8U4GE",
  /* 330 */  "U8U4GT",
  /* 331 */  "I8SHL",
  /* 332 */  "I8ASHR",
  /* 333 */  "I8LSHR",
  /* 334 */  "U8SHL",
  /* 335 */  "U8ASHR",
  /* 336 */  "U8LSHR",
  /* 337 */  "I8F4LT",
  /* 338 */  "I8F4LE",
  /* 339 */  "I8F4EQ",
  /* 340 */  "I8F4NE",
  /* 341 */  "I8F4GE",
  /* 342 */  "I8F4GT",
  /* 343 */  "U8F4LT",
  /* 344 */  "U8F4LE",
  /* 345 */  "U8F4EQ",
  /* 346 */  "U8F4NE",
  /* 347 */  "U8F4GE",
  /* 348 */  "U8F4GT",
  /* 349 */  "I8F8LT",
  /* 350 */  "I8F8LE",
  /* 351 */  "I8F8EQ",
  /* 352 */  "I8F8NE",
  /* 353 */  "I8F8GE",
  /* 354 */  "I8F8GT",
  /* 355 */  "U8F8LT",
  /* 356 */  "U8F8LE",
  /* 357 */  "U8F8EQ",
  /* 358 */  "U8F8NE",
  /* 359 */  "U8F8GE",
  /* 360 */  "U8F8GT",
  /* 361 */  "I4I8CVT",
  /* 362 */  "U4U8CVT",
  /* 363 */  "I8I4CVT",
  /* 364 */  "U8U4CVT",
  /* 365 */  "I8U8CVT",
  /* 366 */  "U8I8CVT",
  /* 367 */  "I4CVTL",
  /* 368 */  "I8CVTL",
  /* 369 */  "U4CVTL",
  /* 370 */  "U8CVTL",
  /* 371 */  "F8U8CVT",
  /* 372 */  "F4U8CVT",
  /* 373 */  "I4PARM",
  /* 374 */  "U4PARM",
  /* 375 */  "I8PARM",
  /* 376 */  "U8PARM",
  /* 377 */  "F4PARM",
  /* 378 */  "F8PARM",
  /* 379 */  "CALL",
};


char *burm_string[] = {
  /* 0 */  "expr: reg",
  /* 1 */  "expr: null",
  /* 2 */  "expr: f4reg",
  /* 3 */  "expr: f8reg",
  /* 4 */  "expr: reg64",
  /* 5 */  "expr: simm16",
  /* 6 */  "expr: uimm16",
  /* 7 */  "expr: I8INTCONST",
  /* 8 */  "expr: U8INTCONST",
  /* 9 */  "simm16: I4INTCONST",
  /* 10 */  "uimm16: U4INTCONST",
  /* 11 */  "reg: I4ABS(reg)",
  /* 12 */  "reg: I4NEG(reg)",
  /* 13 */  "reg: U4NEG(reg)",
  /* 14 */  "reg: I4ADD(reg,reg)",
  /* 15 */  "reg: U4ADD(reg,reg)",
  /* 16 */  "reg: I4ADD(reg,I4INTCONST)",
  /* 17 */  "reg: U4ADD(reg,U4INTCONST)",
  /* 18 */  "reg: I4SUB(reg,reg)",
  /* 19 */  "reg: U4SUB(reg,reg)",
  /* 20 */  "reg: I4SUB(I4INTCONST,reg)",
  /* 21 */  "reg: U4SUB(U4INTCONST,reg)",
  /* 22 */  "reg: I4MPY(reg,I4INTCONST)",
  /* 23 */  "reg: U4MPY(reg,U4INTCONST)",
  /* 24 */  "reg: I4MPY(reg,reg)",
  /* 25 */  "reg: U4MPY(reg,reg)",
  /* 26 */  "reg: I4HIGHMPY(reg,reg)",
  /* 27 */  "reg: I4DIV(reg,reg)",
  /* 28 */  "reg: I4REM(reg,reg)",
  /* 29 */  "reg: I4MOD(reg,reg)",
  /* 30 */  "reg: U4SUB(reg,U4INTCONST)",
  /* 31 */  "reg: U4HIGHMPY(reg,reg)",
  /* 32 */  "reg: U4DIV(reg,reg)",
  /* 33 */  "reg: U4REM(reg,reg)",
  /* 34 */  "reg: U4MOD(reg,reg)",
  /* 35 */  "reg: I4I1LDID",
  /* 36 */  "reg: I4I2LDID",
  /* 37 */  "reg: I4I4LDID",
  /* 38 */  "reg: U4U4LDID",
  /* 39 */  "null: I1STID(reg)",
  /* 40 */  "null: U1STID(reg)",
  /* 41 */  "null: I1STID(reg64)",
  /* 42 */  "null: U1STID(reg64)",
  /* 43 */  "null: I2STID(reg)",
  /* 44 */  "null: U2STID(reg)",
  /* 45 */  "null: I2STID(reg64)",
  /* 46 */  "null: U2STID(reg64)",
  /* 47 */  "null: I4STID(reg)",
  /* 48 */  "null: U4STID(reg)",
  /* 49 */  "null: I4STID(reg64)",
  /* 50 */  "null: U4STID(reg64)",
  /* 51 */  "reg: I4INTCONST",
  /* 52 */  "reg: I4INTCONST",
  /* 53 */  "reg: U4INTCONST",
  /* 54 */  "reg: U4INTCONST",
  /* 55 */  "reg: U4U1LDID",
  /* 56 */  "reg: U4U2LDID",
  /* 57 */  "reg: BLNOT(reg)",
  /* 58 */  "reg: BLAND(reg,BINTCONST)",
  /* 59 */  "reg: BLAND(reg,reg)",
  /* 60 */  "reg: BLIOR(reg,BINTCONST)",
  /* 61 */  "reg: BLIOR(reg,reg)",
  /* 62 */  "reg: I4BNOT(reg)",
  /* 63 */  "reg: U4BNOT(reg)",
  /* 64 */  "reg: I4LNOT(reg)",
  /* 65 */  "reg: I4BAND(reg,I4INTCONST)",
  /* 66 */  "reg: U4BAND(reg,U4INTCONST)",
  /* 67 */  "reg: I4LAND(reg,I4INTCONST)",
  /* 68 */  "reg: I4BAND(reg,reg)",
  /* 69 */  "reg: U4BAND(reg,reg)",
  /* 70 */  "reg: I4LAND(reg,reg)",
  /* 71 */  "reg: I4BIOR(reg,I4INTCONST)",
  /* 72 */  "reg: U4BIOR(reg,U4INTCONST)",
  /* 73 */  "reg: I4LIOR(reg,I4INTCONST)",
  /* 74 */  "reg: I4BIOR(reg,reg)",
  /* 75 */  "reg: U4BIOR(reg,reg)",
  /* 76 */  "reg: I4LIOR(reg,reg)",
  /* 77 */  "reg: I4BXOR(reg,I4INTCONST)",
  /* 78 */  "reg: U4BXOR(reg,U4INTCONST)",
  /* 79 */  "reg: I4BXOR(reg,reg)",
  /* 80 */  "reg: U4BXOR(reg,reg)",
  /* 81 */  "reg: I4BNOR(reg,reg)",
  /* 82 */  "reg: U4BNOR(reg,reg)",
  /* 83 */  "reg: I4BNOT(I4BAND(reg,reg))",
  /* 84 */  "reg: U4BNOT(U4BAND(reg,reg))",
  /* 85 */  "reg: I4BNOT(I4BIOR(reg,reg))",
  /* 86 */  "reg: U4BNOT(U4BIOR(reg,reg))",
  /* 87 */  "reg: I4BNOT(I4BXOR(reg,reg))",
  /* 88 */  "reg: U4BNOT(U4BXOR(reg,reg))",
  /* 89 */  "reg: I4BAND(reg,I4BNOT(reg))",
  /* 90 */  "reg: U4BAND(reg,U4BNOT(reg))",
  /* 91 */  "reg: I4BIOR(reg,I4BNOT(reg))",
  /* 92 */  "reg: U4BIOR(reg,U4BNOT(reg))",
  /* 93 */  "reg: BBEQ(reg,BINTCONST)",
  /* 94 */  "reg: BBEQ(reg,reg)",
  /* 95 */  "reg: BBNE(reg,BINTCONST)",
  /* 96 */  "reg: BBNE(reg,reg)",
  /* 97 */  "reg: BI4LT(reg,simm16)",
  /* 98 */  "reg: I4I4LT(reg,simm16)",
  /* 99 */  "reg: U4I4LT(reg,simm16)",
  /* 100 */  "reg: BI4LT(reg,reg)",
  /* 101 */  "reg: I4I4LT(reg,reg)",
  /* 102 */  "reg: U4I4LT(reg,reg)",
  /* 103 */  "reg: BI4LE(reg,simm16)",
  /* 104 */  "reg: I4I4LE(reg,simm16)",
  /* 105 */  "reg: U4I4LE(reg,simm16)",
  /* 106 */  "reg: BI4LE(reg,reg)",
  /* 107 */  "reg: I4I4LE(reg,reg)",
  /* 108 */  "reg: U4I4LE(reg,reg)",
  /* 109 */  "reg: BI4EQ(reg,simm16)",
  /* 110 */  "reg: I4I4EQ(reg,simm16)",
  /* 111 */  "reg: U4I4EQ(reg,simm16)",
  /* 112 */  "reg: BI4EQ(reg,reg)",
  /* 113 */  "reg: I4I4EQ(reg,reg)",
  /* 114 */  "reg: U4I4EQ(reg,reg)",
  /* 115 */  "reg: BI4NE(reg,simm16)",
  /* 116 */  "reg: I4I4NE(reg,simm16)",
  /* 117 */  "reg: U4I4NE(reg,simm16)",
  /* 118 */  "reg: BI4NE(reg,reg)",
  /* 119 */  "reg: I4I4NE(reg,reg)",
  /* 120 */  "reg: U4I4NE(reg,reg)",
  /* 121 */  "reg: BI4GE(reg,simm16)",
  /* 122 */  "reg: I4I4GE(reg,simm16)",
  /* 123 */  "reg: U4I4GE(reg,simm16)",
  /* 124 */  "reg: BI4GE(reg,reg)",
  /* 125 */  "reg: I4I4GE(reg,reg)",
  /* 126 */  "reg: U4I4GE(reg,reg)",
  /* 127 */  "reg: BI4GT(reg,simm16)",
  /* 128 */  "reg: I4I4GT(reg,simm16)",
  /* 129 */  "reg: U4I4GT(reg,simm16)",
  /* 130 */  "reg: BI4GT(reg,reg)",
  /* 131 */  "reg: I4I4GT(reg,reg)",
  /* 132 */  "reg: U4I4GT(reg,reg)",
  /* 133 */  "reg: I4MAX(reg,reg)",
  /* 134 */  "reg: I4MIN(reg,reg)",
  /* 135 */  "reg: I4SHL(reg,reg)",
  /* 136 */  "reg: U4SHL(reg,reg)",
  /* 137 */  "reg: I4ASHR(reg,I4INTCONST)",
  /* 138 */  "reg: I4ASHR(reg,reg)",
  /* 139 */  "reg: I4LSHR(reg,reg)",
  /* 140 */  "reg: U4LSHR(reg,reg)",
  /* 141 */  "reg: U4ASHR(reg,reg)",
  /* 142 */  "reg: BU4LT(reg,uimm16)",
  /* 143 */  "reg: I4U4LT(reg,uimm16)",
  /* 144 */  "reg: U4U4LT(reg,uimm16)",
  /* 145 */  "reg: BU4LT(reg,reg)",
  /* 146 */  "reg: I4U4LT(reg,reg)",
  /* 147 */  "reg: U4U4LT(reg,reg)",
  /* 148 */  "reg: BU4LE(reg,uimm16)",
  /* 149 */  "reg: I4U4LE(reg,uimm16)",
  /* 150 */  "reg: U4U4LE(reg,uimm16)",
  /* 151 */  "reg: BU4LE(reg,reg)",
  /* 152 */  "reg: I4U4LE(reg,reg)",
  /* 153 */  "reg: U4U4LE(reg,reg)",
  /* 154 */  "reg: BU4EQ(reg,uimm16)",
  /* 155 */  "reg: I4U4EQ(reg,uimm16)",
  /* 156 */  "reg: U4U4EQ(reg,uimm16)",
  /* 157 */  "reg: BU4EQ(reg,reg)",
  /* 158 */  "reg: I4U4EQ(reg,reg)",
  /* 159 */  "reg: U4U4EQ(reg,reg)",
  /* 160 */  "reg: BU4NE(reg,uimm16)",
  /* 161 */  "reg: I4U4NE(reg,uimm16)",
  /* 162 */  "reg: U4U4NE(reg,uimm16)",
  /* 163 */  "reg: BU4NE(reg,reg)",
  /* 164 */  "reg: I4U4NE(reg,reg)",
  /* 165 */  "reg: U4U4NE(reg,reg)",
  /* 166 */  "reg: BU4GE(reg,uimm16)",
  /* 167 */  "reg: I4U4GE(reg,uimm16)",
  /* 168 */  "reg: U4U4GE(reg,uimm16)",
  /* 169 */  "reg: BU4GE(reg,reg)",
  /* 170 */  "reg: I4U4GE(reg,reg)",
  /* 171 */  "reg: U4U4GE(reg,reg)",
  /* 172 */  "reg: BU4GT(reg,uimm16)",
  /* 173 */  "reg: I4U4GT(reg,uimm16)",
  /* 174 */  "reg: U4U4GT(reg,uimm16)",
  /* 175 */  "reg: BU4GT(reg,reg)",
  /* 176 */  "reg: I4U4GT(reg,reg)",
  /* 177 */  "reg: U4U4GT(reg,reg)",
  /* 178 */  "reg: U4MAX(reg,reg)",
  /* 179 */  "reg: U4MIN(reg,reg)",
  /* 180 */  "f4reg: F4CONST",
  /* 181 */  "f4reg: F4ADD(f4reg,f4reg)",
  /* 182 */  "f4reg: F4SUB(f4reg,f4reg)",
  /* 183 */  "f4reg: F4MPY(f4reg,f4reg)",
  /* 184 */  "f4reg: F4DIV(f4reg,f4reg)",
  /* 185 */  "f4reg: F4MADD(f4reg,f4reg,f4reg)",
  /* 186 */  "f4reg: F4NMADD(f4reg,f4reg,f4reg)",
  /* 187 */  "f4reg: F4NEG(F4MADD(f4reg,f4reg,f4reg))",
  /* 188 */  "f4reg: F4MSUB(f4reg,f4reg,f4reg)",
  /* 189 */  "f4reg: F4NMSUB(f4reg,f4reg,f4reg)",
  /* 190 */  "f4reg: F4NEG(F4MSUB(f4reg,f4reg,f4reg))",
  /* 191 */  "f4reg: F4NEG(f4reg)",
  /* 192 */  "f4reg: F4ABS(f4reg)",
  /* 193 */  "f4reg: F4NEG(F4ABS(f4reg))",
  /* 194 */  "f4reg: F4F4LDID",
  /* 195 */  "null: F4STID(f4reg)",
  /* 196 */  "f8reg: F8CONST",
  /* 197 */  "f8reg: F8NEG(f8reg)",
  /* 198 */  "f8reg: F8ABS(f8reg)",
  /* 199 */  "f8reg: F8NEG(F8ABS(f8reg))",
  /* 200 */  "f8reg: F8ADD(f8reg,f8reg)",
  /* 201 */  "f8reg: F8SUB(f8reg,f8reg)",
  /* 202 */  "f8reg: F8MPY(f8reg,f8reg)",
  /* 203 */  "f8reg: F8DIV(f8reg,f8reg)",
  /* 204 */  "f8reg: F8MADD(f8reg,f8reg,f8reg)",
  /* 205 */  "f8reg: F8NMADD(f8reg,f8reg,f8reg)",
  /* 206 */  "f8reg: F8NEG(F8MADD(f8reg,f8reg,f8reg))",
  /* 207 */  "f8reg: F8MSUB(f8reg,f8reg,f8reg)",
  /* 208 */  "f8reg: F8NMSUB(f8reg,f8reg,f8reg)",
  /* 209 */  "f8reg: F8NEG(F8MSUB(f8reg,f8reg,f8reg))",
  /* 210 */  "f8reg: F8F8LDID",
  /* 211 */  "null: F8STID(f8reg)",
  /* 212 */  "reg: BF4LT(f4reg,f4reg)",
  /* 213 */  "reg: I4F4LT(f4reg,f4reg)",
  /* 214 */  "reg: U4F4LT(f4reg,f4reg)",
  /* 215 */  "reg: BF8LT(f8reg,f8reg)",
  /* 216 */  "reg: I4F8LT(f8reg,f8reg)",
  /* 217 */  "reg: U4F8LT(f8reg,f8reg)",
  /* 218 */  "reg: BF4LE(f4reg,f4reg)",
  /* 219 */  "reg: I4F4LE(f4reg,f4reg)",
  /* 220 */  "reg: U4F4LE(f4reg,f4reg)",
  /* 221 */  "reg: BF8LE(f8reg,f8reg)",
  /* 222 */  "reg: I4F8LE(f8reg,f8reg)",
  /* 223 */  "reg: U4F8LE(f8reg,f8reg)",
  /* 224 */  "reg: BF4EQ(f4reg,f4reg)",
  /* 225 */  "reg: I4F4EQ(f4reg,f4reg)",
  /* 226 */  "reg: U4F4EQ(f4reg,f4reg)",
  /* 227 */  "reg: BF8EQ(f8reg,f8reg)",
  /* 228 */  "reg: I4F8EQ(f8reg,f8reg)",
  /* 229 */  "reg: U4F8EQ(f8reg,f8reg)",
  /* 230 */  "reg: BF4NE(f4reg,f4reg)",
  /* 231 */  "reg: I4F4NE(f4reg,f4reg)",
  /* 232 */  "reg: U4F4NE(f4reg,f4reg)",
  /* 233 */  "reg: BF8NE(f8reg,f8reg)",
  /* 234 */  "reg: I4F8NE(f8reg,f8reg)",
  /* 235 */  "reg: U4F8NE(f8reg,f8reg)",
  /* 236 */  "reg: BF4GE(f4reg,f4reg)",
  /* 237 */  "reg: I4F4GE(f4reg,f4reg)",
  /* 238 */  "reg: U4F4GE(f4reg,f4reg)",
  /* 239 */  "reg: BF8GE(f8reg,f8reg)",
  /* 240 */  "reg: I4F8GE(f8reg,f8reg)",
  /* 241 */  "reg: U4F8GE(f8reg,f8reg)",
  /* 242 */  "reg: BF4GT(f4reg,f4reg)",
  /* 243 */  "reg: I4F4GT(f4reg,f4reg)",
  /* 244 */  "reg: U4F4GT(f4reg,f4reg)",
  /* 245 */  "reg: BF8GT(f8reg,f8reg)",
  /* 246 */  "reg: I4F8GT(f8reg,f8reg)",
  /* 247 */  "reg: U4F8GT(f8reg,f8reg)",
  /* 248 */  "f4reg: F4MAX(f4reg,f4reg)",
  /* 249 */  "f4reg: F4MIN(f4reg,f4reg)",
  /* 250 */  "f8reg: F8MAX(f8reg,f8reg)",
  /* 251 */  "f8reg: F8MIN(f8reg,f8reg)",
  /* 252 */  "reg: I4BCVT(reg)",
  /* 253 */  "reg: I4U4CVT(reg)",
  /* 254 */  "reg: U4BCVT(reg)",
  /* 255 */  "reg: U4I4CVT(reg)",
  /* 256 */  "reg: I4F4RND(f4reg)",
  /* 257 */  "reg: I4F8RND(f8reg)",
  /* 258 */  "reg: I4F4CVT(f4reg)",
  /* 259 */  "reg: I4F8CVT(f8reg)",
  /* 260 */  "reg: I4F4TRUNC(f4reg)",
  /* 261 */  "reg: I4F8TRUNC(f8reg)",
  /* 262 */  "reg: I4F4CEIL(f4reg)",
  /* 263 */  "reg: I4F8CEIL(f8reg)",
  /* 264 */  "reg: I4F4FLOOR(f4reg)",
  /* 265 */  "reg: I4F8FLOOR(f8reg)",
  /* 266 */  "reg: U4F4RND(f4reg)",
  /* 267 */  "reg: U4F8RND(f8reg)",
  /* 268 */  "reg: U4F4CVT(f4reg)",
  /* 269 */  "reg: U4F8CVT(f8reg)",
  /* 270 */  "reg: U4F4TRUNC(f4reg)",
  /* 271 */  "reg: U4F8TRUNC(f8reg)",
  /* 272 */  "reg: U4F4CEIL(f4reg)",
  /* 273 */  "reg: U4F8CEIL(f8reg)",
  /* 274 */  "reg: U4F4FLOOR(f4reg)",
  /* 275 */  "reg: U4F8FLOOR(f8reg)",
  /* 276 */  "f4reg: F4I4CVT(reg)",
  /* 277 */  "f4reg: F4U4CVT(reg)",
  /* 278 */  "f4reg: F4F8CVT(f8reg)",
  /* 279 */  "f8reg: F8I4CVT(reg)",
  /* 280 */  "f8reg: F8U4CVT(reg)",
  /* 281 */  "f8reg: F8F4CVT(f4reg)",
  /* 282 */  "reg: I4CVTL(reg)",
  /* 283 */  "reg: U4CVTL(reg)",
  /* 284 */  "reg64: I8CVTL(reg64)",
  /* 285 */  "reg64: U8CVTL(reg64)",
  /* 286 */  "reg: I4I8CVT(reg64)",
  /* 287 */  "reg: U4U8CVT(reg64)",
  /* 288 */  "reg64: I8I4CVT(reg)",
  /* 289 */  "reg64: U8U4CVT(reg)",
  /* 290 */  "reg64: I8U8CVT(reg64)",
  /* 291 */  "reg64: U8I8CVT(reg64)",
  /* 292 */  "f4reg: F4U8CVT(reg64)",
  /* 293 */  "f8reg: F8U8CVT(reg64)",
  /* 294 */  "reg64: I8ABS(reg64)",
  /* 295 */  "reg64: I8NEG(reg64)",
  /* 296 */  "reg64: U8NEG(reg64)",
  /* 297 */  "reg64: I8ADD(reg64,I8INTCONST)",
  /* 298 */  "reg64: U8ADD(reg64,U8INTCONST)",
  /* 299 */  "reg64: I8ADD(reg64,reg64)",
  /* 300 */  "reg64: U8ADD(reg64,reg64)",
  /* 301 */  "reg64: I8SUB(reg64,reg64)",
  /* 302 */  "reg64: U8SUB(reg64,reg64)",
  /* 303 */  "reg64: I8MPY(reg64,reg64)",
  /* 304 */  "reg64: U8MPY(reg64,reg64)",
  /* 305 */  "reg64: I8HIGHMPY(reg64,reg64)",
  /* 306 */  "reg64: I8DIV(reg64,reg64)",
  /* 307 */  "reg64: I8REM(reg64,reg64)",
  /* 308 */  "reg64: I8MOD(reg64,reg64)",
  /* 309 */  "reg64: U8HIGHMPY(reg64,reg64)",
  /* 310 */  "reg64: U8REM(reg64,reg64)",
  /* 311 */  "reg64: U8MOD(reg64,reg64)",
  /* 312 */  "reg64: I8I1LDID",
  /* 313 */  "reg64: I8I2LDID",
  /* 314 */  "reg64: I8I4LDID",
  /* 315 */  "reg64: U8U4LDID",
  /* 316 */  "reg64: I8I8LDID",
  /* 317 */  "reg64: U8U8LDID",
  /* 318 */  "null: I8STID(reg64)",
  /* 319 */  "null: U8STID(reg64)",
  /* 320 */  "reg64: I8INTCONST",
  /* 321 */  "reg64: U8INTCONST",
  /* 322 */  "reg64: U8U1LDID",
  /* 323 */  "reg64: U8U2LDID",
  /* 324 */  "reg64: I8BNOT(reg64)",
  /* 325 */  "reg64: U8BNOT(reg64)",
  /* 326 */  "reg64: I8BAND(reg64,reg64)",
  /* 327 */  "reg64: U8BAND(reg64,reg64)",
  /* 328 */  "reg64: I8BIOR(reg64,reg64)",
  /* 329 */  "reg64: U8BIOR(reg64,reg64)",
  /* 330 */  "reg64: I8BXOR(reg64,reg64)",
  /* 331 */  "reg64: U8BXOR(reg64,reg64)",
  /* 332 */  "reg64: I8BNOR(reg64,reg64)",
  /* 333 */  "reg64: U8BNOR(reg64,reg64)",
  /* 334 */  "reg64: I8BNOT(I8BAND(reg64,reg64))",
  /* 335 */  "reg64: U8BNOT(U8BAND(reg64,reg64))",
  /* 336 */  "reg64: I8BNOT(I8BIOR(reg64,reg64))",
  /* 337 */  "reg64: U8BNOT(U8BIOR(reg64,reg64))",
  /* 338 */  "reg64: I8BNOT(I8BXOR(reg64,reg64))",
  /* 339 */  "reg64: U8BNOT(U8BXOR(reg64,reg64))",
  /* 340 */  "reg64: I8BAND(reg64,I8BNOT(reg64))",
  /* 341 */  "reg64: U8BAND(reg64,U8BNOT(reg64))",
  /* 342 */  "reg64: I8BIOR(reg64,I8BNOT(reg64))",
  /* 343 */  "reg64: U8BIOR(reg64,U8BNOT(reg64))",
  /* 344 */  "reg: BI8LT(reg64,reg64)",
  /* 345 */  "reg: I4I8LT(reg64,reg64)",
  /* 346 */  "reg: U4I8LT(reg64,reg64)",
  /* 347 */  "reg: BI8LE(reg64,reg64)",
  /* 348 */  "reg: I4I8LE(reg64,reg64)",
  /* 349 */  "reg: U4I8LE(reg64,reg64)",
  /* 350 */  "reg: BI8EQ(reg64,reg64)",
  /* 351 */  "reg: I4I8EQ(reg64,reg64)",
  /* 352 */  "reg: U4I8EQ(reg64,reg64)",
  /* 353 */  "reg: BI8NE(reg64,reg64)",
  /* 354 */  "reg: I4I8NE(reg64,reg64)",
  /* 355 */  "reg: U4I8NE(reg64,reg64)",
  /* 356 */  "reg: BI8GE(reg64,reg64)",
  /* 357 */  "reg: I4I8GE(reg64,reg64)",
  /* 358 */  "reg: U4I8GE(reg64,reg64)",
  /* 359 */  "reg: BI8GT(reg64,reg64)",
  /* 360 */  "reg: I4I8GT(reg64,reg64)",
  /* 361 */  "reg: U4I8GT(reg64,reg64)",
  /* 362 */  "reg64: I8MAX(reg64,reg64)",
  /* 363 */  "reg64: I8MIN(reg64,reg64)",
  /* 364 */  "reg: BU8LT(reg64,reg64)",
  /* 365 */  "reg: I4U8LT(reg64,reg64)",
  /* 366 */  "reg: U4U8LT(reg64,reg64)",
  /* 367 */  "reg: BU8LE(reg64,reg64)",
  /* 368 */  "reg: I4U8LE(reg64,reg64)",
  /* 369 */  "reg: U4U8LE(reg64,reg64)",
  /* 370 */  "reg: BU8EQ(reg64,reg64)",
  /* 371 */  "reg: I4U8EQ(reg64,reg64)",
  /* 372 */  "reg: U4U8EQ(reg64,reg64)",
  /* 373 */  "reg: BU8NE(reg64,reg64)",
  /* 374 */  "reg: I4U8NE(reg64,reg64)",
  /* 375 */  "reg: U4U8NE(reg64,reg64)",
  /* 376 */  "reg: BU8GE(reg64,reg64)",
  /* 377 */  "reg: I4U8GE(reg64,reg64)",
  /* 378 */  "reg: U4U8GE(reg64,reg64)",
  /* 379 */  "reg: BU8GT(reg64,reg64)",
  /* 380 */  "reg: I4U8GT(reg64,reg64)",
  /* 381 */  "reg: U4U8GT(reg64,reg64)",
  /* 382 */  "reg64: U8MAX(reg64,reg64)",
  /* 383 */  "reg64: U8MIN(reg64,reg64)",
  /* 384 */  "reg64: I8I4LT(reg,simm16)",
  /* 385 */  "reg64: U8I4LT(reg,simm16)",
  /* 386 */  "reg64: I8I4LT(reg,reg)",
  /* 387 */  "reg64: U8I4LT(reg,reg)",
  /* 388 */  "reg64: I8I4LE(reg,simm16)",
  /* 389 */  "reg64: U8I4LE(reg,simm16)",
  /* 390 */  "reg64: I8I4LE(reg,reg)",
  /* 391 */  "reg64: U8I4LE(reg,reg)",
  /* 392 */  "reg64: I8I4EQ(reg,simm16)",
  /* 393 */  "reg64: U8I4EQ(reg,simm16)",
  /* 394 */  "reg64: I8I4EQ(reg,reg)",
  /* 395 */  "reg64: U8I4EQ(reg,reg)",
  /* 396 */  "reg64: I8I4NE(reg,simm16)",
  /* 397 */  "reg64: U8I4NE(reg,simm16)",
  /* 398 */  "reg64: I8I4NE(reg,reg)",
  /* 399 */  "reg64: U8I4NE(reg,reg)",
  /* 400 */  "reg64: I8I4GE(reg,simm16)",
  /* 401 */  "reg64: U8I4GE(reg,simm16)",
  /* 402 */  "reg64: I8I4GE(reg,reg)",
  /* 403 */  "reg64: U8I4GE(reg,reg)",
  /* 404 */  "reg64: I8I4GT(reg,simm16)",
  /* 405 */  "reg64: U8I4GT(reg,simm16)",
  /* 406 */  "reg64: I8I4GT(reg,reg)",
  /* 407 */  "reg64: U8I4GT(reg,reg)",
  /* 408 */  "reg64: I8U4LT(reg,simm16)",
  /* 409 */  "reg64: U8U4LT(reg,simm16)",
  /* 410 */  "reg64: I8U4LT(reg,reg)",
  /* 411 */  "reg64: U8U4LT(reg,reg)",
  /* 412 */  "reg64: I8U4LE(reg,simm16)",
  /* 413 */  "reg64: U8U4LE(reg,simm16)",
  /* 414 */  "reg64: I8U4LE(reg,reg)",
  /* 415 */  "reg64: U8U4LE(reg,reg)",
  /* 416 */  "reg64: I8U4EQ(reg,simm16)",
  /* 417 */  "reg64: U8U4EQ(reg,simm16)",
  /* 418 */  "reg64: I8U4EQ(reg,reg)",
  /* 419 */  "reg64: U8U4EQ(reg,reg)",
  /* 420 */  "reg64: I8U4NE(reg,simm16)",
  /* 421 */  "reg64: U8U4NE(reg,simm16)",
  /* 422 */  "reg64: I8U4NE(reg,reg)",
  /* 423 */  "reg64: U8U4NE(reg,reg)",
  /* 424 */  "reg64: I8U4GE(reg,simm16)",
  /* 425 */  "reg64: U8U4GE(reg,simm16)",
  /* 426 */  "reg64: I8U4GE(reg,reg)",
  /* 427 */  "reg64: U8U4GE(reg,reg)",
  /* 428 */  "reg64: I8U4GT(reg,simm16)",
  /* 429 */  "reg64: U8U4GT(reg,simm16)",
  /* 430 */  "reg64: I8U4GT(reg,reg)",
  /* 431 */  "reg64: U8U4GT(reg,reg)",
  /* 432 */  "reg64: I8F4LT(f4reg,f4reg)",
  /* 433 */  "reg64: U8F4LT(f4reg,f4reg)",
  /* 434 */  "reg64: I8F8LT(f8reg,f8reg)",
  /* 435 */  "reg64: U8F8LT(f8reg,f8reg)",
  /* 436 */  "reg64: I8F4LE(f4reg,f4reg)",
  /* 437 */  "reg64: U8F4LE(f4reg,f4reg)",
  /* 438 */  "reg64: I8F8LE(f8reg,f8reg)",
  /* 439 */  "reg64: U8F8LE(f8reg,f8reg)",
  /* 440 */  "reg64: I8F4EQ(f4reg,f4reg)",
  /* 441 */  "reg64: U8F4EQ(f4reg,f4reg)",
  /* 442 */  "reg64: I8F8EQ(f8reg,f8reg)",
  /* 443 */  "reg64: U8F8EQ(f8reg,f8reg)",
  /* 444 */  "reg64: I8F4NE(f4reg,f4reg)",
  /* 445 */  "reg64: U8F4NE(f4reg,f4reg)",
  /* 446 */  "reg64: I8F8NE(f8reg,f8reg)",
  /* 447 */  "reg64: U8F8NE(f8reg,f8reg)",
  /* 448 */  "reg64: I8F4GE(f4reg,f4reg)",
  /* 449 */  "reg64: U8F4GE(f4reg,f4reg)",
  /* 450 */  "reg64: I8F8GE(f8reg,f8reg)",
  /* 451 */  "reg64: U8F8GE(f8reg,f8reg)",
  /* 452 */  "reg64: I8F4GT(f4reg,f4reg)",
  /* 453 */  "reg64: U8F4GT(f4reg,f4reg)",
  /* 454 */  "reg64: I8F8GT(f8reg,f8reg)",
  /* 455 */  "reg64: U8F8GT(f8reg,f8reg)",
  /* 456 */  "reg64: I8I8LT(reg64,reg64)",
  /* 457 */  "reg64: U8I8LT(reg64,reg64)",
  /* 458 */  "reg64: I8I8LE(reg64,reg64)",
  /* 459 */  "reg64: U8I8LE(reg64,reg64)",
  /* 460 */  "reg64: I8I8EQ(reg64,reg64)",
  /* 461 */  "reg64: U8I8EQ(reg64,reg64)",
  /* 462 */  "reg64: I8I8NE(reg64,reg64)",
  /* 463 */  "reg64: U8I8NE(reg64,reg64)",
  /* 464 */  "reg64: I8I8GE(reg64,reg64)",
  /* 465 */  "reg64: U8I8GE(reg64,reg64)",
  /* 466 */  "reg64: I8I8GT(reg64,reg64)",
  /* 467 */  "reg64: U8I8GT(reg64,reg64)",
  /* 468 */  "reg64: I8U8LT(reg64,reg64)",
  /* 469 */  "reg64: U8U8LT(reg64,reg64)",
  /* 470 */  "reg64: I8U8LE(reg64,reg64)",
  /* 471 */  "reg64: U8U8LE(reg64,reg64)",
  /* 472 */  "reg64: I8U8EQ(reg64,reg64)",
  /* 473 */  "reg64: U8U8EQ(reg64,reg64)",
  /* 474 */  "reg64: I8U8NE(reg64,reg64)",
  /* 475 */  "reg64: U8U8NE(reg64,reg64)",
  /* 476 */  "reg64: I8U8GE(reg64,reg64)",
  /* 477 */  "reg64: U8U8GE(reg64,reg64)",
  /* 478 */  "reg64: I8U8GT(reg64,reg64)",
  /* 479 */  "reg64: U8U8GT(reg64,reg64)",
  /* 480 */  "reg64: I8SHL(reg64,reg)",
  /* 481 */  "reg64: U8SHL(reg64,reg)",
  /* 482 */  "reg64: I8LSHR(reg64,reg)",
  /* 483 */  "reg64: U8LSHR(reg64,reg)",
  /* 484 */  "reg64: U8ASHR(reg64,reg)",
  /* 485 */  "reg64: I8ASHR(reg64,reg)",
  /* 486 */  "null: I4PARM(reg)",
  /* 487 */  "null: U4PARM(reg)",
  /* 488 */  "null: I8PARM(reg64)",
  /* 489 */  "null: U8PARM(reg64)",
  /* 490 */  "null: F4PARM(f4reg)",
  /* 491 */  "null: F8PARM(f8reg)",
  /* 492 */  "null: CALL",
};


char *burm_files[] = {
"../../be/cg/ppc32/olive_expand_expr.brg",
};

int burm_file_numbers[] = {
  /* 0 */  0,
  /* 1 */  0,
  /* 2 */  0,
  /* 3 */  0,
  /* 4 */  0,
  /* 5 */  0,
  /* 6 */  0,
  /* 7 */  0,
  /* 8 */  0,
  /* 9 */  0,
  /* 10 */  0,
  /* 11 */  0,
  /* 12 */  0,
  /* 13 */  0,
  /* 14 */  0,
  /* 15 */  0,
  /* 16 */  0,
  /* 17 */  0,
  /* 18 */  0,
  /* 19 */  0,
  /* 20 */  0,
  /* 21 */  0,
  /* 22 */  0,
  /* 23 */  0,
  /* 24 */  0,
  /* 25 */  0,
  /* 26 */  0,
  /* 27 */  0,
  /* 28 */  0,
  /* 29 */  0,
  /* 30 */  0,
  /* 31 */  0,
  /* 32 */  0,
  /* 33 */  0,
  /* 34 */  0,
  /* 35 */  0,
  /* 36 */  0,
  /* 37 */  0,
  /* 38 */  0,
  /* 39 */  0,
  /* 40 */  0,
  /* 41 */  0,
  /* 42 */  0,
  /* 43 */  0,
  /* 44 */  0,
  /* 45 */  0,
  /* 46 */  0,
  /* 47 */  0,
  /* 48 */  0,
  /* 49 */  0,
  /* 50 */  0,
  /* 51 */  0,
  /* 52 */  0,
  /* 53 */  0,
  /* 54 */  0,
  /* 55 */  0,
  /* 56 */  0,
  /* 57 */  0,
  /* 58 */  0,
  /* 59 */  0,
  /* 60 */  0,
  /* 61 */  0,
  /* 62 */  0,
  /* 63 */  0,
  /* 64 */  0,
  /* 65 */  0,
  /* 66 */  0,
  /* 67 */  0,
  /* 68 */  0,
  /* 69 */  0,
  /* 70 */  0,
  /* 71 */  0,
  /* 72 */  0,
  /* 73 */  0,
  /* 74 */  0,
  /* 75 */  0,
  /* 76 */  0,
  /* 77 */  0,
  /* 78 */  0,
  /* 79 */  0,
  /* 80 */  0,
  /* 81 */  0,
  /* 82 */  0,
  /* 83 */  0,
  /* 84 */  0,
  /* 85 */  0,
  /* 86 */  0,
  /* 87 */  0,
  /* 88 */  0,
  /* 89 */  0,
  /* 90 */  0,
  /* 91 */  0,
  /* 92 */  0,
  /* 93 */  0,
  /* 94 */  0,
  /* 95 */  0,
  /* 96 */  0,
  /* 97 */  0,
  /* 98 */  0,
  /* 99 */  0,
  /* 100 */  0,
  /* 101 */  0,
  /* 102 */  0,
  /* 103 */  0,
  /* 104 */  0,
  /* 105 */  0,
  /* 106 */  0,
  /* 107 */  0,
  /* 108 */  0,
  /* 109 */  0,
  /* 110 */  0,
  /* 111 */  0,
  /* 112 */  0,
  /* 113 */  0,
  /* 114 */  0,
  /* 115 */  0,
  /* 116 */  0,
  /* 117 */  0,
  /* 118 */  0,
  /* 119 */  0,
  /* 120 */  0,
  /* 121 */  0,
  /* 122 */  0,
  /* 123 */  0,
  /* 124 */  0,
  /* 125 */  0,
  /* 126 */  0,
  /* 127 */  0,
  /* 128 */  0,
  /* 129 */  0,
  /* 130 */  0,
  /* 131 */  0,
  /* 132 */  0,
  /* 133 */  0,
  /* 134 */  0,
  /* 135 */  0,
  /* 136 */  0,
  /* 137 */  0,
  /* 138 */  0,
  /* 139 */  0,
  /* 140 */  0,
  /* 141 */  0,
  /* 142 */  0,
  /* 143 */  0,
  /* 144 */  0,
  /* 145 */  0,
  /* 146 */  0,
  /* 147 */  0,
  /* 148 */  0,
  /* 149 */  0,
  /* 150 */  0,
  /* 151 */  0,
  /* 152 */  0,
  /* 153 */  0,
  /* 154 */  0,
  /* 155 */  0,
  /* 156 */  0,
  /* 157 */  0,
  /* 158 */  0,
  /* 159 */  0,
  /* 160 */  0,
  /* 161 */  0,
  /* 162 */  0,
  /* 163 */  0,
  /* 164 */  0,
  /* 165 */  0,
  /* 166 */  0,
  /* 167 */  0,
  /* 168 */  0,
  /* 169 */  0,
  /* 170 */  0,
  /* 171 */  0,
  /* 172 */  0,
  /* 173 */  0,
  /* 174 */  0,
  /* 175 */  0,
  /* 176 */  0,
  /* 177 */  0,
  /* 178 */  0,
  /* 179 */  0,
  /* 180 */  0,
  /* 181 */  0,
  /* 182 */  0,
  /* 183 */  0,
  /* 184 */  0,
  /* 185 */  0,
  /* 186 */  0,
  /* 187 */  0,
  /* 188 */  0,
  /* 189 */  0,
  /* 190 */  0,
  /* 191 */  0,
  /* 192 */  0,
  /* 193 */  0,
  /* 194 */  0,
  /* 195 */  0,
  /* 196 */  0,
  /* 197 */  0,
  /* 198 */  0,
  /* 199 */  0,
  /* 200 */  0,
  /* 201 */  0,
  /* 202 */  0,
  /* 203 */  0,
  /* 204 */  0,
  /* 205 */  0,
  /* 206 */  0,
  /* 207 */  0,
  /* 208 */  0,
  /* 209 */  0,
  /* 210 */  0,
  /* 211 */  0,
  /* 212 */  0,
  /* 213 */  0,
  /* 214 */  0,
  /* 215 */  0,
  /* 216 */  0,
  /* 217 */  0,
  /* 218 */  0,
  /* 219 */  0,
  /* 220 */  0,
  /* 221 */  0,
  /* 222 */  0,
  /* 223 */  0,
  /* 224 */  0,
  /* 225 */  0,
  /* 226 */  0,
  /* 227 */  0,
  /* 228 */  0,
  /* 229 */  0,
  /* 230 */  0,
  /* 231 */  0,
  /* 232 */  0,
  /* 233 */  0,
  /* 234 */  0,
  /* 235 */  0,
  /* 236 */  0,
  /* 237 */  0,
  /* 238 */  0,
  /* 239 */  0,
  /* 240 */  0,
  /* 241 */  0,
  /* 242 */  0,
  /* 243 */  0,
  /* 244 */  0,
  /* 245 */  0,
  /* 246 */  0,
  /* 247 */  0,
  /* 248 */  0,
  /* 249 */  0,
  /* 250 */  0,
  /* 251 */  0,
  /* 252 */  0,
  /* 253 */  0,
  /* 254 */  0,
  /* 255 */  0,
  /* 256 */  0,
  /* 257 */  0,
  /* 258 */  0,
  /* 259 */  0,
  /* 260 */  0,
  /* 261 */  0,
  /* 262 */  0,
  /* 263 */  0,
  /* 264 */  0,
  /* 265 */  0,
  /* 266 */  0,
  /* 267 */  0,
  /* 268 */  0,
  /* 269 */  0,
  /* 270 */  0,
  /* 271 */  0,
  /* 272 */  0,
  /* 273 */  0,
  /* 274 */  0,
  /* 275 */  0,
  /* 276 */  0,
  /* 277 */  0,
  /* 278 */  0,
  /* 279 */  0,
  /* 280 */  0,
  /* 281 */  0,
  /* 282 */  0,
  /* 283 */  0,
  /* 284 */  0,
  /* 285 */  0,
  /* 286 */  0,
  /* 287 */  0,
  /* 288 */  0,
  /* 289 */  0,
  /* 290 */  0,
  /* 291 */  0,
  /* 292 */  0,
  /* 293 */  0,
  /* 294 */  0,
  /* 295 */  0,
  /* 296 */  0,
  /* 297 */  0,
  /* 298 */  0,
  /* 299 */  0,
  /* 300 */  0,
  /* 301 */  0,
  /* 302 */  0,
  /* 303 */  0,
  /* 304 */  0,
  /* 305 */  0,
  /* 306 */  0,
  /* 307 */  0,
  /* 308 */  0,
  /* 309 */  0,
  /* 310 */  0,
  /* 311 */  0,
  /* 312 */  0,
  /* 313 */  0,
  /* 314 */  0,
  /* 315 */  0,
  /* 316 */  0,
  /* 317 */  0,
  /* 318 */  0,
  /* 319 */  0,
  /* 320 */  0,
  /* 321 */  0,
  /* 322 */  0,
  /* 323 */  0,
  /* 324 */  0,
  /* 325 */  0,
  /* 326 */  0,
  /* 327 */  0,
  /* 328 */  0,
  /* 329 */  0,
  /* 330 */  0,
  /* 331 */  0,
  /* 332 */  0,
  /* 333 */  0,
  /* 334 */  0,
  /* 335 */  0,
  /* 336 */  0,
  /* 337 */  0,
  /* 338 */  0,
  /* 339 */  0,
  /* 340 */  0,
  /* 341 */  0,
  /* 342 */  0,
  /* 343 */  0,
  /* 344 */  0,
  /* 345 */  0,
  /* 346 */  0,
  /* 347 */  0,
  /* 348 */  0,
  /* 349 */  0,
  /* 350 */  0,
  /* 351 */  0,
  /* 352 */  0,
  /* 353 */  0,
  /* 354 */  0,
  /* 355 */  0,
  /* 356 */  0,
  /* 357 */  0,
  /* 358 */  0,
  /* 359 */  0,
  /* 360 */  0,
  /* 361 */  0,
  /* 362 */  0,
  /* 363 */  0,
  /* 364 */  0,
  /* 365 */  0,
  /* 366 */  0,
  /* 367 */  0,
  /* 368 */  0,
  /* 369 */  0,
  /* 370 */  0,
  /* 371 */  0,
  /* 372 */  0,
  /* 373 */  0,
  /* 374 */  0,
  /* 375 */  0,
  /* 376 */  0,
  /* 377 */  0,
  /* 378 */  0,
  /* 379 */  0,
  /* 380 */  0,
  /* 381 */  0,
  /* 382 */  0,
  /* 383 */  0,
  /* 384 */  0,
  /* 385 */  0,
  /* 386 */  0,
  /* 387 */  0,
  /* 388 */  0,
  /* 389 */  0,
  /* 390 */  0,
  /* 391 */  0,
  /* 392 */  0,
  /* 393 */  0,
  /* 394 */  0,
  /* 395 */  0,
  /* 396 */  0,
  /* 397 */  0,
  /* 398 */  0,
  /* 399 */  0,
  /* 400 */  0,
  /* 401 */  0,
  /* 402 */  0,
  /* 403 */  0,
  /* 404 */  0,
  /* 405 */  0,
  /* 406 */  0,
  /* 407 */  0,
  /* 408 */  0,
  /* 409 */  0,
  /* 410 */  0,
  /* 411 */  0,
  /* 412 */  0,
  /* 413 */  0,
  /* 414 */  0,
  /* 415 */  0,
  /* 416 */  0,
  /* 417 */  0,
  /* 418 */  0,
  /* 419 */  0,
  /* 420 */  0,
  /* 421 */  0,
  /* 422 */  0,
  /* 423 */  0,
  /* 424 */  0,
  /* 425 */  0,
  /* 426 */  0,
  /* 427 */  0,
  /* 428 */  0,
  /* 429 */  0,
  /* 430 */  0,
  /* 431 */  0,
  /* 432 */  0,
  /* 433 */  0,
  /* 434 */  0,
  /* 435 */  0,
  /* 436 */  0,
  /* 437 */  0,
  /* 438 */  0,
  /* 439 */  0,
  /* 440 */  0,
  /* 441 */  0,
  /* 442 */  0,
  /* 443 */  0,
  /* 444 */  0,
  /* 445 */  0,
  /* 446 */  0,
  /* 447 */  0,
  /* 448 */  0,
  /* 449 */  0,
  /* 450 */  0,
  /* 451 */  0,
  /* 452 */  0,
  /* 453 */  0,
  /* 454 */  0,
  /* 455 */  0,
  /* 456 */  0,
  /* 457 */  0,
  /* 458 */  0,
  /* 459 */  0,
  /* 460 */  0,
  /* 461 */  0,
  /* 462 */  0,
  /* 463 */  0,
  /* 464 */  0,
  /* 465 */  0,
  /* 466 */  0,
  /* 467 */  0,
  /* 468 */  0,
  /* 469 */  0,
  /* 470 */  0,
  /* 471 */  0,
  /* 472 */  0,
  /* 473 */  0,
  /* 474 */  0,
  /* 475 */  0,
  /* 476 */  0,
  /* 477 */  0,
  /* 478 */  0,
  /* 479 */  0,
  /* 480 */  0,
  /* 481 */  0,
  /* 482 */  0,
  /* 483 */  0,
  /* 484 */  0,
  /* 485 */  0,
  /* 486 */  0,
  /* 487 */  0,
  /* 488 */  0,
  /* 489 */  0,
  /* 490 */  0,
  /* 491 */  0,
  /* 492 */  0,
};

int burm_line_numbers[] = {
  /* 0 */  477,
  /* 1 */  485,
  /* 2 */  493,
  /* 3 */  501,
  /* 4 */  509,
  /* 5 */  517,
  /* 6 */  525,
  /* 7 */  533,
  /* 8 */  533,
  /* 9 */  545,
  /* 10 */  554,
  /* 11 */  564,
  /* 12 */  578,
  /* 13 */  578,
  /* 14 */  591,
  /* 15 */  591,
  /* 16 */  605,
  /* 17 */  605,
  /* 18 */  615,
  /* 19 */  615,
  /* 20 */  627,
  /* 21 */  627,
  /* 22 */  638,
  /* 23 */  638,
  /* 24 */  648,
  /* 25 */  648,
  /* 26 */  659,
  /* 27 */  670,
  /* 28 */  681,
  /* 29 */  694,
  /* 30 */  718,
  /* 31 */  729,
  /* 32 */  740,
  /* 33 */  751,
  /* 34 */  751,
  /* 35 */  766,
  /* 36 */  777,
  /* 37 */  786,
  /* 38 */  786,
  /* 39 */  795,
  /* 40 */  795,
  /* 41 */  795,
  /* 42 */  795,
  /* 43 */  804,
  /* 44 */  804,
  /* 45 */  804,
  /* 46 */  804,
  /* 47 */  813,
  /* 48 */  813,
  /* 49 */  813,
  /* 50 */  813,
  /* 51 */  824,
  /* 52 */  833,
  /* 53 */  833,
  /* 54 */  844,
  /* 55 */  853,
  /* 56 */  862,
  /* 57 */  873,
  /* 58 */  883,
  /* 59 */  893,
  /* 60 */  904,
  /* 61 */  914,
  /* 62 */  925,
  /* 63 */  925,
  /* 64 */  925,
  /* 65 */  948,
  /* 66 */  948,
  /* 67 */  948,
  /* 68 */  958,
  /* 69 */  958,
  /* 70 */  958,
  /* 71 */  982,
  /* 72 */  982,
  /* 73 */  982,
  /* 74 */  992,
  /* 75 */  992,
  /* 76 */  992,
  /* 77 */  1016,
  /* 78 */  1016,
  /* 79 */  1026,
  /* 80 */  1026,
  /* 81 */  1037,
  /* 82 */  1037,
  /* 83 */  1048,
  /* 84 */  1048,
  /* 85 */  1059,
  /* 86 */  1059,
  /* 87 */  1070,
  /* 88 */  1070,
  /* 89 */  1081,
  /* 90 */  1081,
  /* 91 */  1092,
  /* 92 */  1092,
  /* 93 */  1105,
  /* 94 */  1115,
  /* 95 */  1126,
  /* 96 */  1136,
  /* 97 */  1149,
  /* 98 */  1149,
  /* 99 */  1149,
  /* 100 */  1160,
  /* 101 */  1160,
  /* 102 */  1160,
  /* 103 */  1171,
  /* 104 */  1171,
  /* 105 */  1171,
  /* 106 */  1182,
  /* 107 */  1182,
  /* 108 */  1182,
  /* 109 */  1193,
  /* 110 */  1193,
  /* 111 */  1193,
  /* 112 */  1204,
  /* 113 */  1204,
  /* 114 */  1204,
  /* 115 */  1215,
  /* 116 */  1215,
  /* 117 */  1215,
  /* 118 */  1226,
  /* 119 */  1226,
  /* 120 */  1226,
  /* 121 */  1237,
  /* 122 */  1237,
  /* 123 */  1237,
  /* 124 */  1248,
  /* 125 */  1248,
  /* 126 */  1248,
  /* 127 */  1259,
  /* 128 */  1259,
  /* 129 */  1259,
  /* 130 */  1270,
  /* 131 */  1270,
  /* 132 */  1270,
  /* 133 */  1283,
  /* 134 */  1294,
  /* 135 */  1307,
  /* 136 */  1307,
  /* 137 */  1319,
  /* 138 */  1329,
  /* 139 */  1340,
  /* 140 */  1340,
  /* 141 */  1340,
  /* 142 */  1353,
  /* 143 */  1353,
  /* 144 */  1353,
  /* 145 */  1364,
  /* 146 */  1364,
  /* 147 */  1364,
  /* 148 */  1375,
  /* 149 */  1375,
  /* 150 */  1375,
  /* 151 */  1386,
  /* 152 */  1386,
  /* 153 */  1386,
  /* 154 */  1397,
  /* 155 */  1397,
  /* 156 */  1397,
  /* 157 */  1408,
  /* 158 */  1408,
  /* 159 */  1408,
  /* 160 */  1419,
  /* 161 */  1419,
  /* 162 */  1419,
  /* 163 */  1430,
  /* 164 */  1430,
  /* 165 */  1430,
  /* 166 */  1441,
  /* 167 */  1441,
  /* 168 */  1441,
  /* 169 */  1452,
  /* 170 */  1452,
  /* 171 */  1452,
  /* 172 */  1463,
  /* 173 */  1463,
  /* 174 */  1463,
  /* 175 */  1474,
  /* 176 */  1474,
  /* 177 */  1474,
  /* 178 */  1487,
  /* 179 */  1498,
  /* 180 */  1511,
  /* 181 */  1534,
  /* 182 */  1545,
  /* 183 */  1556,
  /* 184 */  1567,
  /* 185 */  1578,
  /* 186 */  1590,
  /* 187 */  1602,
  /* 188 */  1614,
  /* 189 */  1626,
  /* 190 */  1638,
  /* 191 */  1650,
  /* 192 */  1660,
  /* 193 */  1670,
  /* 194 */  1682,
  /* 195 */  1691,
  /* 196 */  1702,
  /* 197 */  1726,
  /* 198 */  1736,
  /* 199 */  1746,
  /* 200 */  1756,
  /* 201 */  1767,
  /* 202 */  1778,
  /* 203 */  1789,
  /* 204 */  1800,
  /* 205 */  1812,
  /* 206 */  1824,
  /* 207 */  1836,
  /* 208 */  1848,
  /* 209 */  1860,
  /* 210 */  1874,
  /* 211 */  1901,
  /* 212 */  1922,
  /* 213 */  1922,
  /* 214 */  1922,
  /* 215 */  1922,
  /* 216 */  1922,
  /* 217 */  1922,
  /* 218 */  1933,
  /* 219 */  1933,
  /* 220 */  1933,
  /* 221 */  1933,
  /* 222 */  1933,
  /* 223 */  1933,
  /* 224 */  1944,
  /* 225 */  1944,
  /* 226 */  1944,
  /* 227 */  1944,
  /* 228 */  1944,
  /* 229 */  1944,
  /* 230 */  1955,
  /* 231 */  1955,
  /* 232 */  1955,
  /* 233 */  1955,
  /* 234 */  1955,
  /* 235 */  1955,
  /* 236 */  1966,
  /* 237 */  1966,
  /* 238 */  1966,
  /* 239 */  1966,
  /* 240 */  1966,
  /* 241 */  1966,
  /* 242 */  1977,
  /* 243 */  1977,
  /* 244 */  1977,
  /* 245 */  1977,
  /* 246 */  1977,
  /* 247 */  1977,
  /* 248 */  1988,
  /* 249 */  1999,
  /* 250 */  2010,
  /* 251 */  2021,
  /* 252 */  2035,
  /* 253 */  2035,
  /* 254 */  2035,
  /* 255 */  2035,
  /* 256 */  2044,
  /* 257 */  2044,
  /* 258 */  2054,
  /* 259 */  2054,
  /* 260 */  2054,
  /* 261 */  2054,
  /* 262 */  2064,
  /* 263 */  2064,
  /* 264 */  2074,
  /* 265 */  2074,
  /* 266 */  2086,
  /* 267 */  2086,
  /* 268 */  2096,
  /* 269 */  2096,
  /* 270 */  2096,
  /* 271 */  2096,
  /* 272 */  2106,
  /* 273 */  2106,
  /* 274 */  2116,
  /* 275 */  2116,
  /* 276 */  2128,
  /* 277 */  2138,
  /* 278 */  2149,
  /* 279 */  2161,
  /* 280 */  2171,
  /* 281 */  2182,
  /* 282 */  2191,
  /* 283 */  2213,
  /* 284 */  2235,
  /* 285 */  2264,
  /* 286 */  2293,
  /* 287 */  2293,
  /* 288 */  2302,
  /* 289 */  2313,
  /* 290 */  2324,
  /* 291 */  2324,
  /* 292 */  2334,
  /* 293 */  2344,
  /* 294 */  2356,
  /* 295 */  2372,
  /* 296 */  2372,
  /* 297 */  2384,
  /* 298 */  2384,
  /* 299 */  2455,
  /* 300 */  2455,
  /* 301 */  2468,
  /* 302 */  2468,
  /* 303 */  2481,
  /* 304 */  2481,
  /* 305 */  2498,
  /* 306 */  2506,
  /* 307 */  2514,
  /* 308 */  2522,
  /* 309 */  2532,
  /* 310 */  2540,
  /* 311 */  2540,
  /* 312 */  2550,
  /* 313 */  2564,
  /* 314 */  2575,
  /* 315 */  2575,
  /* 316 */  2586,
  /* 317 */  2586,
  /* 318 */  2596,
  /* 319 */  2596,
  /* 320 */  2605,
  /* 321 */  2605,
  /* 322 */  2637,
  /* 323 */  2648,
  /* 324 */  2661,
  /* 325 */  2661,
  /* 326 */  2673,
  /* 327 */  2673,
  /* 328 */  2686,
  /* 329 */  2686,
  /* 330 */  2699,
  /* 331 */  2699,
  /* 332 */  2712,
  /* 333 */  2712,
  /* 334 */  2725,
  /* 335 */  2725,
  /* 336 */  2738,
  /* 337 */  2738,
  /* 338 */  2751,
  /* 339 */  2751,
  /* 340 */  2764,
  /* 341 */  2764,
  /* 342 */  2777,
  /* 343 */  2777,
  /* 344 */  2792,
  /* 345 */  2792,
  /* 346 */  2792,
  /* 347 */  2803,
  /* 348 */  2803,
  /* 349 */  2803,
  /* 350 */  2814,
  /* 351 */  2814,
  /* 352 */  2814,
  /* 353 */  2825,
  /* 354 */  2825,
  /* 355 */  2825,
  /* 356 */  2836,
  /* 357 */  2836,
  /* 358 */  2836,
  /* 359 */  2847,
  /* 360 */  2847,
  /* 361 */  2847,
  /* 362 */  2860,
  /* 363 */  2872,
  /* 364 */  2886,
  /* 365 */  2886,
  /* 366 */  2886,
  /* 367 */  2897,
  /* 368 */  2897,
  /* 369 */  2897,
  /* 370 */  2908,
  /* 371 */  2908,
  /* 372 */  2908,
  /* 373 */  2919,
  /* 374 */  2919,
  /* 375 */  2919,
  /* 376 */  2930,
  /* 377 */  2930,
  /* 378 */  2930,
  /* 379 */  2941,
  /* 380 */  2941,
  /* 381 */  2941,
  /* 382 */  2954,
  /* 383 */  2966,
  /* 384 */  2979,
  /* 385 */  2979,
  /* 386 */  2992,
  /* 387 */  2992,
  /* 388 */  3005,
  /* 389 */  3005,
  /* 390 */  3018,
  /* 391 */  3018,
  /* 392 */  3031,
  /* 393 */  3031,
  /* 394 */  3044,
  /* 395 */  3044,
  /* 396 */  3057,
  /* 397 */  3057,
  /* 398 */  3070,
  /* 399 */  3070,
  /* 400 */  3083,
  /* 401 */  3083,
  /* 402 */  3096,
  /* 403 */  3096,
  /* 404 */  3109,
  /* 405 */  3109,
  /* 406 */  3122,
  /* 407 */  3122,
  /* 408 */  3137,
  /* 409 */  3137,
  /* 410 */  3150,
  /* 411 */  3150,
  /* 412 */  3163,
  /* 413 */  3163,
  /* 414 */  3176,
  /* 415 */  3176,
  /* 416 */  3189,
  /* 417 */  3189,
  /* 418 */  3202,
  /* 419 */  3202,
  /* 420 */  3215,
  /* 421 */  3215,
  /* 422 */  3228,
  /* 423 */  3228,
  /* 424 */  3241,
  /* 425 */  3241,
  /* 426 */  3254,
  /* 427 */  3254,
  /* 428 */  3267,
  /* 429 */  3267,
  /* 430 */  3280,
  /* 431 */  3280,
  /* 432 */  3295,
  /* 433 */  3295,
  /* 434 */  3295,
  /* 435 */  3295,
  /* 436 */  3308,
  /* 437 */  3308,
  /* 438 */  3308,
  /* 439 */  3308,
  /* 440 */  3321,
  /* 441 */  3321,
  /* 442 */  3321,
  /* 443 */  3321,
  /* 444 */  3334,
  /* 445 */  3334,
  /* 446 */  3334,
  /* 447 */  3334,
  /* 448 */  3348,
  /* 449 */  3348,
  /* 450 */  3348,
  /* 451 */  3348,
  /* 452 */  3362,
  /* 453 */  3362,
  /* 454 */  3362,
  /* 455 */  3362,
  /* 456 */  3377,
  /* 457 */  3377,
  /* 458 */  3390,
  /* 459 */  3390,
  /* 460 */  3403,
  /* 461 */  3403,
  /* 462 */  3416,
  /* 463 */  3416,
  /* 464 */  3429,
  /* 465 */  3429,
  /* 466 */  3442,
  /* 467 */  3442,
  /* 468 */  3457,
  /* 469 */  3457,
  /* 470 */  3470,
  /* 471 */  3470,
  /* 472 */  3483,
  /* 473 */  3483,
  /* 474 */  3496,
  /* 475 */  3496,
  /* 476 */  3509,
  /* 477 */  3509,
  /* 478 */  3522,
  /* 479 */  3522,
  /* 480 */  3537,
  /* 481 */  3537,
  /* 482 */  3556,
  /* 483 */  3556,
  /* 484 */  3556,
  /* 485 */  3575,
  /* 486 */  3595,
  /* 487 */  3595,
  /* 488 */  3595,
  /* 489 */  3595,
  /* 490 */  3595,
  /* 491 */  3595,
  /* 492 */  3603,
};
static short burm_decode_expr[] = {
   -1,
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
};

static short burm_decode_null[] = {
   -1,
  39,
  40,
  41,
  42,
  43,
  44,
  45,
  46,
  47,
  48,
  49,
  50,
  195,
  211,
  318,
  319,
  486,
  487,
  488,
  489,
  490,
  491,
  492,
};

static short burm_decode_reg[] = {
   -1,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30,
  31,
  32,
  33,
  34,
  35,
  36,
  37,
  38,
  51,
  52,
  53,
  54,
  55,
  56,
  57,
  58,
  59,
  60,
  61,
  62,
  63,
  64,
  65,
  66,
  67,
  68,
  69,
  70,
  71,
  72,
  73,
  74,
  75,
  76,
  77,
  78,
  79,
  80,
  81,
  82,
  83,
  84,
  85,
  86,
  87,
  88,
  89,
  90,
  91,
  92,
  93,
  94,
  95,
  96,
  97,
  98,
  99,
  100,
  101,
  102,
  103,
  104,
  105,
  106,
  107,
  108,
  109,
  110,
  111,
  112,
  113,
  114,
  115,
  116,
  117,
  118,
  119,
  120,
  121,
  122,
  123,
  124,
  125,
  126,
  127,
  128,
  129,
  130,
  131,
  132,
  133,
  134,
  135,
  136,
  137,
  138,
  139,
  140,
  141,
  142,
  143,
  144,
  145,
  146,
  147,
  148,
  149,
  150,
  151,
  152,
  153,
  154,
  155,
  156,
  157,
  158,
  159,
  160,
  161,
  162,
  163,
  164,
  165,
  166,
  167,
  168,
  169,
  170,
  171,
  172,
  173,
  174,
  175,
  176,
  177,
  178,
  179,
  212,
  213,
  214,
  215,
  216,
  217,
  218,
  219,
  220,
  221,
  222,
  223,
  224,
  225,
  226,
  227,
  228,
  229,
  230,
  231,
  232,
  233,
  234,
  235,
  236,
  237,
  238,
  239,
  240,
  241,
  242,
  243,
  244,
  245,
  246,
  247,
  252,
  253,
  254,
  255,
  256,
  257,
  258,
  259,
  260,
  261,
  262,
  263,
  264,
  265,
  266,
  267,
  268,
  269,
  270,
  271,
  272,
  273,
  274,
  275,
  282,
  283,
  286,
  287,
  344,
  345,
  346,
  347,
  348,
  349,
  350,
  351,
  352,
  353,
  354,
  355,
  356,
  357,
  358,
  359,
  360,
  361,
  364,
  365,
  366,
  367,
  368,
  369,
  370,
  371,
  372,
  373,
  374,
  375,
  376,
  377,
  378,
  379,
  380,
  381,
};

static short burm_decode_simm16[] = {
   -1,
  9,
};

static short burm_decode_uimm16[] = {
   -1,
  10,
};

static short burm_decode_f4reg[] = {
   -1,
  180,
  181,
  182,
  183,
  184,
  185,
  186,
  187,
  188,
  189,
  190,
  191,
  192,
  193,
  194,
  248,
  249,
  276,
  277,
  278,
  292,
};

static short burm_decode_f8reg[] = {
   -1,
  196,
  197,
  198,
  199,
  200,
  201,
  202,
  203,
  204,
  205,
  206,
  207,
  208,
  209,
  210,
  250,
  251,
  279,
  280,
  281,
  293,
};

static short burm_decode_reg64[] = {
   -1,
  284,
  285,
  288,
  289,
  290,
  291,
  294,
  295,
  296,
  297,
  298,
  299,
  300,
  301,
  302,
  303,
  304,
  305,
  306,
  307,
  308,
  309,
  310,
  311,
  312,
  313,
  314,
  315,
  316,
  317,
  320,
  321,
  322,
  323,
  324,
  325,
  326,
  327,
  328,
  329,
  330,
  331,
  332,
  333,
  334,
  335,
  336,
  337,
  338,
  339,
  340,
  341,
  342,
  343,
  362,
  363,
  382,
  383,
  384,
  385,
  386,
  387,
  388,
  389,
  390,
  391,
  392,
  393,
  394,
  395,
  396,
  397,
  398,
  399,
  400,
  401,
  402,
  403,
  404,
  405,
  406,
  407,
  408,
  409,
  410,
  411,
  412,
  413,
  414,
  415,
  416,
  417,
  418,
  419,
  420,
  421,
  422,
  423,
  424,
  425,
  426,
  427,
  428,
  429,
  430,
  431,
  432,
  433,
  434,
  435,
  436,
  437,
  438,
  439,
  440,
  441,
  442,
  443,
  444,
  445,
  446,
  447,
  448,
  449,
  450,
  451,
  452,
  453,
  454,
  455,
  456,
  457,
  458,
  459,
  460,
  461,
  462,
  463,
  464,
  465,
  466,
  467,
  468,
  469,
  470,
  471,
  472,
  473,
  474,
  475,
  476,
  477,
  478,
  479,
  480,
  481,
  482,
  483,
  484,
  485,
};

int burm_rule(struct burm_state *state, int goalnt) {
  burm_assert(goalnt >= 1 && goalnt <= 8,
        PANIC("Bad goal nonterminal %d in burm_rule\n", goalnt));
  if (!state)
    return 0;
  switch (goalnt) {
  case burm_expr_NT:  return burm_decode_expr[((struct burm_state *)state)->rule.burm_expr];
  case burm_null_NT:  return burm_decode_null[((struct burm_state *)state)->rule.burm_null];
  case burm_reg_NT:  return burm_decode_reg[((struct burm_state *)state)->rule.burm_reg];
  case burm_simm16_NT:  return burm_decode_simm16[((struct burm_state *)state)->rule.burm_simm16];
  case burm_uimm16_NT:  return burm_decode_uimm16[((struct burm_state *)state)->rule.burm_uimm16];
  case burm_f4reg_NT:  return burm_decode_f4reg[((struct burm_state *)state)->rule.burm_f4reg];
  case burm_f8reg_NT:  return burm_decode_f8reg[((struct burm_state *)state)->rule.burm_f8reg];
  case burm_reg64_NT:  return burm_decode_reg64[((struct burm_state *)state)->rule.burm_reg64];
  default:
    burm_assert(0, PANIC("Bad goal nonterminal %d in burm_rule\n", goalnt));
  }
  return 0;
}


struct burm_action {
  int nt;
  struct burm_state* st;
};

#ifndef RULE
#define RULE(n,s) \
    (act = (burm_action*) malloc(sizeof(struct burm_action)),act->nt=n,act->st=s,act)
#endif

int burm_cost_code(COST *_c, int _ern,struct burm_state *_s)
{
  NODEPTR *_children;
  struct burm_action *act;
  switch(_ern){
  default:
    DEFAULT_COST;
  case 0:
{


            (*_c).cost = _s->cost[burm_reg_NT].cost;
        
}
  break;
  case 1:
{


            (*_c).cost = _s->cost[burm_null_NT].cost;
        
}
  break;
  case 2:
{


            (*_c).cost = _s->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 3:
{


            (*_c).cost = _s->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 4:
{


            (*_c).cost = _s->cost[burm_reg64_NT].cost;
        
}
  break;
  case 5:
{


            (*_c).cost = 0;
        
}
  break;
  case 6:
{


            (*_c).cost = 0;
        
}
  break;
  case 7:
{


            (*_c).cost = 0;
        
}
  break;
  case 8:
{


            (*_c).cost = 0;
        
}
  break;
  case 9:
{


            CHECK(IN_RANGE(WN_const_val(_s->node->wn), SIMM16));
            (*_c).cost = 0;
        
}
  break;
  case 10:
{


            CHECK(IN_RANGE(WN_const_val(_s->node->wn), UIMM16));
            (*_c).cost = 0;
        
}
  break;
  case 11:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 12:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 13:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 14:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 15:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 16:
{


            if (IN_RANGE(WN_const_val(_s->kids[1]->node->wn), SIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
                (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 17:
{


            if (IN_RANGE(WN_const_val(_s->kids[1]->node->wn), SIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
                (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 18:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 19:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 20:
{


            CHECK(IN_RANGE(WN_const_val(_s->kids[0]->node->wn), SIMM16));
            (*_c).cost = 1 + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 21:
{


            CHECK(IN_RANGE(WN_const_val(_s->kids[0]->node->wn), SIMM16));
            (*_c).cost = 1 + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 22:
{


            CHECK(IN_RANGE(WN_const_val(_s->kids[1]->node->wn), SIMM16));
            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 23:
{


            CHECK(IN_RANGE(WN_const_val(_s->kids[1]->node->wn), SIMM16));
            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 24:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 25:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 26:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 27:
{


            (*_c).cost = 23 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 28:
{


            (*_c).cost = 28 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 29:
{


            (*_c).cost = 33 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 30:
{


            if (IN_RANGE(WN_const_val(_s->kids[1]->node->wn), SIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
                (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 31:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 32:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 33:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 34:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 35:
{


            (*_c).cost = 2;
        
}
  break;
  case 36:
{


            (*_c).cost = 2;
        
}
  break;
  case 37:
{


            (*_c).cost = 2;
        
}
  break;
  case 38:
{


            (*_c).cost = 2;
        
}
  break;
  case 39:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 40:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 41:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 42:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 43:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 44:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 45:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 46:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 47:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 48:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 49:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 50:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 51:
{


            CHECK(IN_RANGE(WN_const_val(_s->node->wn), SIMM16));
            (*_c).cost = 1;
        
}
  break;
  case 52:
{


            (*_c).cost = 2;
        
}
  break;
  case 53:
{


            (*_c).cost = 2;
        
}
  break;
  case 54:
{


            // li will extend the sign bit, so it can not work for uimm16 larger than 32767
            CHECK(IN_RANGE(WN_const_val(_s->node->wn), UIMM16A));
            (*_c).cost = 1;
        
}
  break;
  case 55:
{


            (*_c).cost = 2;
        
}
  break;
  case 56:
{


            (*_c).cost = 2;
        
}
  break;
  case 57:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 58:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 59:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 60:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 61:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 62:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 63:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 64:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 65:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 66:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 67:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 68:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 69:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 70:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 71:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 72:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 73:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 74:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 75:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 76:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 77:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 78:
{


            INT64 imm = WN_const_val(_s->kids[1]->node->wn);
            if (IN_RANGE(imm, UIMM16))
                (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
            else
            {
                unsigned short low = (unsigned short)imm;
                unsigned short high = (unsigned short)(imm >> 16);
		  if (low == 0)
		  {
		      (*_c).cost = 2 + _s->kids[0]->cost[burm_reg_NT].cost;
		  }
		  else
		  	return 0;
            }
        
}
  break;
  case 79:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 80:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 81:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 82:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 83:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 84:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 85:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 86:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 87:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 88:
{


            (*_c).cost = 1 + _s->kids[0]->kids[0]->cost[burm_reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 89:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 90:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 91:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 92:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 93:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 94:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 95:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 96:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 97:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 98:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 99:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 100:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 101:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 102:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 103:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 104:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 105:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 106:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 107:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 108:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 109:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 110:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 111:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 112:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 113:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 114:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 115:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 116:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 117:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 118:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 119:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 120:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 121:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 122:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 123:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 124:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 125:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 126:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 127:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 128:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 129:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 130:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 131:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 132:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 133:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 134:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 135:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 136:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 137:
{


            CHECK(IN_RANGE(WN_const_val(_s->kids[1]->node->wn), 0, 31));
            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 138:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 139:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 140:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 141:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 142:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 143:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 144:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 145:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 146:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 147:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 148:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 149:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 150:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 151:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 152:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 153:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 154:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 155:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 156:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 157:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 158:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 159:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 160:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 161:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 162:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 163:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 164:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 165:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 166:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost;
        
}
  break;
  case 167:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost;
        
}
  break;
  case 168:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost;
        
}
  break;
  case 169:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 170:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 171:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 172:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost + 3;
        
}
  break;
  case 173:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost + 3;
        
}
  break;
  case 174:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_uimm16_NT].cost + 3;
        
}
  break;
  case 175:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 176:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 177:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost + 3;
        
}
  break;
  case 178:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 179:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 180:
{

            
            (*_c).cost = 4;
        
}
  break;
  case 181:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 182:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 183:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 184:
{


            (*_c).cost = 21 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 185:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 186:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 187:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[0]->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 188:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 189:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 190:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_f4reg_NT].cost + _s->kids[0]->kids[2]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 191:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 192:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 193:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 194:
{


            (*_c).cost = 4;
        
}
  break;
  case 195:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 196:
{


            (*_c).cost = 4;
        
}
  break;
  case 197:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 198:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 199:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 200:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 201:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 202:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 203:
{


            (*_c).cost = 35 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 204:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 205:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 206:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[0]->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 207:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 208:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 209:
{


            (*_c).cost = 5 + _s->kids[0]->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[0]->kids[1]->cost[burm_f8reg_NT].cost + _s->kids[0]->kids[2]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 210:
{


            (*_c).cost = 4;
        
}
  break;
  case 211:
{


            (*_c).cost = 3 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 212:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 213:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 214:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 215:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 216:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 217:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 218:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 219:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 220:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 221:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 222:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 223:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 224:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 225:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 226:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 227:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 228:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 229:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 230:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 231:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 232:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 233:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 234:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 235:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 236:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 237:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 238:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 239:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 240:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 241:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 242:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 243:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 244:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 245:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 246:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 247:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 248:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 249:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 250:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 251:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 252:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 253:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 254:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 255:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 256:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 257:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 258:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 259:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 260:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 261:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 262:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 263:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 264:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 265:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 266:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 267:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 268:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 269:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 270:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 271:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 272:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 273:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 274:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 275:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 276:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 277:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 278:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 279:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 280:
{


            (*_c).cost = 13 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 281:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 282:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 283:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 284:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 285:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 286:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 287:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 288:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 289:
{


            (*_c).cost = 1 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 290:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 291:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 292:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 293:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 294:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 295:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 296:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 297:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 298:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 299:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 300:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 301:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 302:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 303:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 304:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 305:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 306:
{


            (*_c).cost = 64 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 307:
{


            (*_c).cost = 64 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 308:
{


            (*_c).cost = 64 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 309:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 310:
{


            (*_c).cost = 64 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 311:
{


            (*_c).cost = 64 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 312:
{


            (*_c).cost = 8;
        
}
  break;
  case 313:
{


            (*_c).cost = 8;
        
}
  break;
  case 314:
{


            (*_c).cost = 8;
        
}
  break;
  case 315:
{


            (*_c).cost = 8;
        
}
  break;
  case 316:
{


            (*_c).cost = 8;
        
}
  break;
  case 317:
{


            (*_c).cost = 8;
        
}
  break;
  case 318:
{


            (*_c).cost = 6;
        
}
  break;
  case 319:
{


            (*_c).cost = 6;
        
}
  break;
  case 320:
{


            (*_c).cost = 4;
        
}
  break;
  case 321:
{


            (*_c).cost = 4;
        
}
  break;
  case 322:
{


            (*_c).cost = 8;
        
}
  break;
  case 323:
{


            (*_c).cost = 8;
        
}
  break;
  case 324:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 325:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 326:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 327:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 328:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 329:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 330:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 331:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 332:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 333:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 334:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 335:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 336:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 337:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 338:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 339:
{


            (*_c).cost = 2 + _s->kids[0]->kids[0]->cost[burm_reg64_NT].cost + _s->kids[0]->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 340:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 341:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 342:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 343:
{


            (*_c).cost = 2 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 344:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 345:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 346:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 347:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 348:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 349:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 350:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 351:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 352:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 353:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 354:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 355:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 356:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 357:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 358:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 359:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 360:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 361:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 362:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 363:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 364:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 365:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 366:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 367:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 368:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 369:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 370:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 371:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 372:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 373:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 374:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 375:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 376:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 377:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 378:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 379:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 380:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 381:
{


            (*_c).cost = 6 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 382:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 383:
{


            (*_c).cost = 20 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 384:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 385:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 386:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 387:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 388:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 389:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 390:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 391:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 392:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 393:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 394:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 395:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 396:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 397:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 398:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 399:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 400:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 401:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 402:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 403:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 404:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 405:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 406:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 407:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 408:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 409:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 410:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 411:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 412:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 413:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 414:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 415:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 416:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 417:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 418:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 419:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 420:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 421:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 422:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 423:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 424:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 425:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 426:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 427:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 428:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 429:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 430:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 431:
{


            (*_c).cost = 4 + _s->kids[0]->cost[burm_reg_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 432:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 433:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 434:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 435:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 436:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 437:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 438:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 439:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 440:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 441:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 442:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 443:
{


            (*_c).cost = 9 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 444:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 445:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 446:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 447:
{


            (*_c).cost = 11 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 448:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 449:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 450:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 451:
{


            (*_c).cost = 10 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 452:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 453:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f4reg_NT].cost + _s->kids[1]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 454:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 455:
{


            (*_c).cost = 8 + _s->kids[0]->cost[burm_f8reg_NT].cost + _s->kids[1]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 456:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 457:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 458:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 459:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 460:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 461:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 462:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 463:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 464:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 465:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 466:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 467:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 468:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 469:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 470:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 471:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 472:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 473:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 474:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 475:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 476:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 477:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 478:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 479:
{


            (*_c).cost = 7 + _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 480:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 481:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 482:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 483:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 484:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 485:
{


            (*_c).cost = 5 + _s->kids[0]->cost[burm_reg64_NT].cost + _s->kids[1]->cost[burm_reg_NT].cost;
        
}
  break;
  case 486:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 487:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg_NT].cost;
        
}
  break;
  case 488:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 489:
{


            (*_c).cost = _s->kids[0]->cost[burm_reg64_NT].cost;
        
}
  break;
  case 490:
{


            (*_c).cost = _s->kids[0]->cost[burm_f4reg_NT].cost;
        
}
  break;
  case 491:
{


            (*_c).cost = _s->kids[0]->cost[burm_f8reg_NT].cost;
        
}
  break;
  case 492:
{


            (*_c).cost = 2;
        
}
  break;
  }
  return 1;
}

void expr_action(struct burm_state *_s, 
pOPS ops);

void null_action(struct burm_state *_s, 
pOPS ops);

void reg_action(struct burm_state *_s, 
pOPS ops);

void simm16_action(struct burm_state *_s, 
pOPS ops);

void uimm16_action(struct burm_state *_s, 
pOPS ops);

void f4reg_action(struct burm_state *_s, 
pOPS ops);

void f8reg_action(struct burm_state *_s, 
pOPS ops);

void reg64_action(struct burm_state *_s, 
pOPS ops);


#include <stdarg.h>

void burm_exec(struct burm_state *state, int nterm, ...) 
{
  va_list(ap);
  va_start(ap,nterm);

  burm_assert(nterm >= 1 && nterm <= 8,
        PANIC("Bad nonterminal %d in $exec\n", nterm));

  if (state)
    switch (nterm) {
    case burm_expr_NT:
      expr_action(state,va_arg(ap,pOPS));
      break;
    case burm_null_NT:
      null_action(state,va_arg(ap,pOPS));
      break;
    case burm_reg_NT:
      reg_action(state,va_arg(ap,pOPS));
      break;
    case burm_simm16_NT:
      simm16_action(state,va_arg(ap,pOPS));
      break;
    case burm_uimm16_NT:
      uimm16_action(state,va_arg(ap,pOPS));
      break;
    case burm_f4reg_NT:
      f4reg_action(state,va_arg(ap,pOPS));
      break;
    case burm_f8reg_NT:
      f8reg_action(state,va_arg(ap,pOPS));
      break;
    case burm_reg64_NT:
      reg64_action(state,va_arg(ap,pOPS));
      break;
    default:
      PANIC("Bad nonterminal %d in $exec\n", nterm);
      break;
    }
  else
    PANIC("Bad state for $exec in nonterminal %d \n",nterm);
  va_end(ap);
}

#define EXEC(s,n,a) ( \
  (n == burm_expr_NT)? burm_exec(s,n,a): \
  (n == burm_null_NT)? burm_exec(s,n,a): \
  (n == burm_reg_NT)? burm_exec(s,n,a): \
  (n == burm_simm16_NT)? burm_exec(s,n,a): \
  (n == burm_uimm16_NT)? burm_exec(s,n,a): \
  (n == burm_f4reg_NT)? burm_exec(s,n,a): \
  (n == burm_f8reg_NT)? burm_exec(s,n,a): \
  (n == burm_reg64_NT)? burm_exec(s,n,a): \
  PANIC("Bad nonterminal %d in $exec\n", n))

struct burm_state *burm_immed(struct burm_state *s,int n);
#ifndef NO_ACTION
#define NO_ACTION assert(0)
#endif

void expr_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_expr[_s->rule.burm_expr];
  NODEPTR *_children;
  if(_s->rule.burm_expr==0)
    NO_ACTION(expr);
  switch(_ern){
  case 0:
{


            reg_action(_s,ops);
        
}
  break;
  case 1:
{


            null_action(_s,ops);
        
}
  break;
  case 2:
{


            f4reg_action(_s,ops);
        
}
  break;
  case 3:
{


            f8reg_action(_s,ops);
        
}
  break;
  case 4:
{


            reg64_action(_s,ops);
        
}
  break;
  case 5:
{


            _s->node->result = Gen_Literal_TN(WN_const_val(_s->node->wn),  4);
        
}
  break;
  case 6:
{


            _s->node->result = Gen_Literal_TN(WN_const_val(_s->node->wn), 4);
        
}
  break;
  case 7:
{


            /* let upper functions handle the literals */
	     /* the TN_Map only support Register TN, so we can't separate it here */
            _s->node->result = Gen_Literal_TN(WN_const_val(_s->node->wn), 8);
        
}
  break;
  case 8:
{


            /* let upper functions handle the literals */
	     /* the TN_Map only support Register TN, so we can't separate it here */
            _s->node->result = Gen_Literal_TN(WN_const_val(_s->node->wn), 8);
        
}
  break;
  }
}

void null_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_null[_s->rule.burm_null];
  NODEPTR *_children;
  if(_s->rule.burm_null==0)
    NO_ACTION(null);
  switch(_ern){
  case 39:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stb, ops);            
        
}
  break;
  case 40:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stb, ops);            
        
}
  break;
  case 41:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stb, ops);            
        
}
  break;
  case 42:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stb, ops);            
        
}
  break;
  case 43:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_sth, ops);            
        
}
  break;
  case 44:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_sth, ops);            
        
}
  break;
  case 45:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_sth, ops);            
        
}
  break;
  case 46:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_sth, ops);            
        
}
  break;
  case 47:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stw, ops);            
        
}
  break;
  case 48:
{


            reg_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stw, ops);            
        
}
  break;
  case 49:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stw, ops);            
        
}
  break;
  case 50:
{


            reg64_action(_s->kids[0],ops);
            Handle_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stw, ops);            
        
}
  break;
  case 195:
{


            f4reg_action(_s->kids[0],ops);
            Handle_Float_Store(_s->node->wn, _s->kids[0]->node->result, TOP_stfs, ops);
        
}
  break;
  case 211:
{


            f8reg_action(_s->kids[0],ops);

            TN * base_tn;
            TN * ofst_tn;
            OPS newops;
            OPS_Init(&newops);
            
            Expand_Load_Address(_s->node->wn, &base_tn, &ofst_tn, &newops);
            
            Build_OP(TOP_stfd, _s->kids[0]->node->result, base_tn, ofst_tn, &newops);    
            OPS_Append_Ops(ops, &newops);
            
        
}
  break;
  case 318:
{


            reg64_action(_s->kids[0],ops);
            Handle_Longlong_Ldst(_s->node->wn, TOP_stw, _s->kids[0]->node->result, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 319:
{


            reg64_action(_s->kids[0],ops);
            Handle_Longlong_Ldst(_s->node->wn, TOP_stw, _s->kids[0]->node->result, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 486:
{


            reg_action(_s->kids[0],ops);
        
}
  break;
  case 487:
{


            reg_action(_s->kids[0],ops);
        
}
  break;
  case 488:
{


            reg64_action(_s->kids[0],ops);
        
}
  break;
  case 489:
{


            reg64_action(_s->kids[0],ops);
        
}
  break;
  case 490:
{


            f4reg_action(_s->kids[0],ops);
        
}
  break;
  case 491:
{


            f8reg_action(_s->kids[0],ops);
        
}
  break;
  case 492:
{

        
            Handle_Call(_s->node->wn, _s->node->opr);
        
}
  break;
  }
}

void reg_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_reg[_s->rule.burm_reg];
  NODEPTR *_children;
  if(_s->rule.burm_reg==0)
    NO_ACTION(reg);
  switch(_ern){
  case 11:
{


            reg_action(_s->kids[0],ops);
            TN* tmp_tn1 = Build_TN_Of_Mtype(MTYPE_I4);
            Build_OP(TOP_srawi, tmp_tn1, _s->kids[0]->node->result, Gen_Literal_TN(31, 4), ops);
            TN* tmp_tn2 = Build_TN_Of_Mtype(MTYPE_I4);
            Build_OP(TOP_xor, tmp_tn2, tmp_tn1, _s->kids[0]->node->result, ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_subf, _s->node->result, tmp_tn1, tmp_tn2, ops);
        
}
  break;
  case 12:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_neg, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 13:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_neg, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 14:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_add, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 15:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_add, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 16:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Add_Imm(_s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 17:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Add_Imm(_s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 18:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_subf, _s->node->result, _s->kids[1]->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 19:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_subf, _s->node->result, _s->kids[1]->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 20:
{


            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_subfic, _s->node->result, _s->kids[1]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[0]->node->wn), 4), ops);
        
}
  break;
  case 21:
{


            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_subfic, _s->node->result, _s->kids[1]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[0]->node->wn), 4), ops);
        
}
  break;
  case 22:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mulli, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 23:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mulli, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 24:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 25:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 26:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mulhw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 27:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_divw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 28:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_divw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subf, _s->node->result, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 29:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_divw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subf, _s->node->result, _s->node->result, _s->kids[0]->node->result, ops);
            TN* tmp_tn = Build_TN_Of_Mtype(MTYPE_I4);
            Build_OP(TOP_xor, tmp_tn, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_neg, tmp_tn, tmp_tn, ops);
            Build_OP(TOP_srawi, tmp_tn, tmp_tn, Gen_Literal_TN(31, 4), ops);
            Build_OP(TOP_and, tmp_tn, tmp_tn, _s->kids[1]->node->result, ops);
            Build_OP(TOP_add, _s->node->result, _s->node->result, tmp_tn, ops);
        
}
  break;
  case 30:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            //treat as signed
            Handle_Add_Imm(_s->node->result, _s->kids[0]->node->result, -WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 31:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_mulhwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 32:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_divwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 33:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_divwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subf, _s->node->result, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 34:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));  
            Build_OP(TOP_divwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subf, _s->node->result, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 35:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lbz, ops);
            // lbz will not extend the sign bit, we need to do it ourselves
            Build_OP(TOP_extsb, _s->node->result, _s->node->result, ops);
        
}
  break;
  case 36:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lha, ops);
        
}
  break;
  case 37:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lwz, ops);
        
}
  break;
  case 38:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lwz, ops);
        
}
  break;
  case 51:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(WN_const_val(_s->node->wn), 4), ops);
        
}
  break;
  case 52:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Imm32(_s->node->result, WN_const_val(_s->node->wn), ops);
        
}
  break;
  case 53:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Imm32(_s->node->result, WN_const_val(_s->node->wn), ops);
        
}
  break;
  case 54:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(WN_const_val(_s->node->wn), 4), ops);
        
}
  break;
  case 55:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lbz, ops);
        
}
  break;
  case 56:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Load(_s->node->wn, _s->node->result, TOP_lhz, ops);                      
        
}
  break;
  case 57:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_subfic, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(1, 4), ops);
        
}
  break;
  case 58:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 59:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 60:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_ori, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 61:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 62:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 63:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 64:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 65:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_andi_, TOP_andis_, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 66:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_andi_, TOP_andis_, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 67:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_andi_, TOP_andis_, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 68:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 69:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 70:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 71:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_ori, TOP_oris, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 72:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_ori, TOP_oris, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 73:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_ori, TOP_oris, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 74:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 75:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 76:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 77:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_xori, TOP_xoris, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 78:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Logic_Imm(TOP_xori, TOP_xoris, _s->node->result, _s->kids[0]->node->result, WN_const_val(_s->kids[1]->node->wn), ops);
        
}
  break;
  case 79:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 80:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 81:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 82:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 83:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 84:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 85:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 86:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 87:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_eqv, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 88:
{


            reg_action(_s->kids[0]->kids[0],ops);
            reg_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_eqv, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
        
}
  break;
  case 89:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_andc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
        
}
  break;
  case 90:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_andc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
        
}
  break;
  case 91:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_orc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
        
}
  break;
  case 92:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_orc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
        
}
  break;
  case 93:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_xori, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(1 - WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 94:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_eqv, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 95:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_xori, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 96:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 97:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 98:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 99:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 100:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 101:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 102:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 103:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 104:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 105:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 106:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 107:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 108:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 109:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 110:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 111:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 112:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 113:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 114:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 115:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 116:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 117:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 118:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 119:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 120:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 121:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 122:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 123:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 124:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 125:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 126:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 127:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 128:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 129:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 130:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 131:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 132:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 133:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Int(true, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 134:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Int(false, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 135:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_slw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 136:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_slw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 137:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_srawi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 138:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_sraw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 139:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 140:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 141:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 142:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 143:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 144:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 145:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 146:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 147:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 148:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 149:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 150:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 151:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 152:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 153:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 154:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 155:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 156:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 157:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 158:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 159:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 160:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 161:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 162:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 163:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 164:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 165:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 166:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 167:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 168:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 169:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 170:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 171:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 172:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 173:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 174:
{


            reg_action(_s->kids[0],ops);
            uimm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
        
}
  break;
  case 175:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 176:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 177:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 178:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Uint(true, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 179:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Uint(false, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 212:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 213:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 214:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 215:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 216:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 217:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 218:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 219:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 220:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 221:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 222:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 223:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 224:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 225:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 226:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 227:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 228:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 229:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 230:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 231:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 232:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 233:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 234:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 235:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 236:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 237:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 238:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 239:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 240:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 241:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 242:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 243:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 244:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 245:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 246:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 247:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 252:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 253:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 254:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 255:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 256:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(RND, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 257:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(RND, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 258:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 259:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 260:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 261:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 262:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(CEIL, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 263:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(CEIL, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 264:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(FLOOR, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 265:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Int_Cvt(FLOOR, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 266:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(RND, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 267:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(RND, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 268:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 269:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 270:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 271:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(TRUNC, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 272:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(CEIL, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 273:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(CEIL, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 274:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(FLOOR, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 275:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Uint_Cvt(FLOOR, WN_rtype(_s->kids[0]->node->wn), _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 282:
{


            reg_action(_s->kids[0],ops);
            INT16 bits = WN_cvtl_bits(_s->node->wn);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            switch (bits)
            {
                case 8:
                    Build_OP(TOP_extsb, _s->node->result, _s->kids[0]->node->result, ops);
                    break;
                case 16:
                    Build_OP(TOP_extsh, _s->node->result, _s->kids[0]->node->result, ops);
                    break;
                default:
                    FmtAssert(false, ("invalid cvtl bits"));
            }
            
        
}
  break;
  case 283:
{


            reg_action(_s->kids[0],ops);
            INT16 bits = WN_cvtl_bits(_s->node->wn);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            switch (bits)
            {
                case 8:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0xff, 4), ops);
                    break;
                case 16:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0xffff, 4), ops);
                    break;
                default:
                    FmtAssert(false, ("invalid cvtl bits"));
            }
            
        
}
  break;
  case 286:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 287:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 344:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 345:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 346:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 347:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 348:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 349:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 350:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 351:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 352:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 353:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 354:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 355:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 356:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 357:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 358:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 359:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 360:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 361:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 364:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 365:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 366:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 367:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 368:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 369:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 370:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 371:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 372:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 373:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 374:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 375:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 376:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 377:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 378:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 379:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 380:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 381:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Cond_Longlong(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  }
}

void simm16_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_simm16[_s->rule.burm_simm16];
  NODEPTR *_children;
  if(_s->rule.burm_simm16==0)
    NO_ACTION(simm16);
  switch(_ern){
  case 9:
{


            _s->node= _s->node;
        
}
  break;
  }
}

void uimm16_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_uimm16[_s->rule.burm_uimm16];
  NODEPTR *_children;
  if(_s->rule.burm_uimm16==0)
    NO_ACTION(uimm16);
  switch(_ern){
  case 10:
{


            _s->node= _s->node;
        
}
  break;
  }
}

void f4reg_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_f4reg[_s->rule.burm_f4reg];
  NODEPTR *_children;
  if(_s->rule.burm_f4reg==0)
    NO_ACTION(f4reg);
  switch(_ern){
  case 180:
{


            ST * base_sym;
            INT64 base_ofst;
            TN * base_tn;
            TN * ofst_tn;
            
            ST * sym   = WN_st(_s->node->wn);
            INT64 ofst = WN_store_offset(_s->node->wn);
        
            Allocate_Object(sym);         /* make sure sym is allocated */
            Base_Symbol_And_Offset_For_Addressing(sym, ofst, &base_sym, &base_ofst);
                        
            base_tn = Build_TN_Of_Mtype(Pointer_Mtype);
            Build_OP(TOP_lis, base_tn, Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_HIGH16), ops);
            ofst_tn = Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_LOW16);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_lfs, _s->node->result, base_tn, ofst_tn, ops);
        
}
  break;
  case 181:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fadds, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 182:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fsubs, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 183:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fmuls, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 184:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fdivs, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 185:
{


                f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  f4reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fmadds, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 186:
{


                f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  f4reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmadds, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 187:
{


                f4reg_action(_s->kids[0]->kids[0],ops);
        	  f4reg_action(_s->kids[0]->kids[1],ops);
        	  f4reg_action(_s->kids[0]->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmadds, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, _s->kids[0]->kids[2]->node->result, ops);
        
}
  break;
  case 188:
{


                f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  f4reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fmsubs, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 189:
{


                f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  f4reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmsubs, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 190:
{


                f4reg_action(_s->kids[0]->kids[0],ops);
        	  f4reg_action(_s->kids[0]->kids[1],ops);
        	  f4reg_action(_s->kids[0]->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmsubs, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, _s->kids[0]->kids[2]->node->result, ops);
        
}
  break;
  case 191:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fneg, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 192:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fabs, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 193:
{


            f4reg_action(_s->kids[0]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fnabs, _s->node->result, _s->kids[0]->kids[0]->node->result, ops);
        
}
  break;
  case 194:
{


            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Float_Load(_s->node->wn, _s->node->result, TOP_lfs, ops);         
        
}
  break;
  case 248:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Float(true, MTYPE_F4, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 249:
{


            f4reg_action(_s->kids[0],ops);
            f4reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Float(false, MTYPE_F4, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 276:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Int_Float_Cvt(_s->node->result, _s->kids[0]->node->result, ops, false, false);
        
}
  break;
  case 277:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Int_Float_Cvt(_s->node->result, _s->kids[0]->node->result, ops, true, false);
        
}
  break;
  case 278:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_mtfsb0, Gen_Literal_TN(30, 4), ops);
            Build_OP(TOP_mtfsb1, Gen_Literal_TN(31, 4), ops);
            Build_OP(TOP_frsp, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 292:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_F4);
            Handle_ULonglong_Float_Cvt(_s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, ops, false);
        
}
  break;
  }
}

void f8reg_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_f8reg[_s->rule.burm_f8reg];
  NODEPTR *_children;
  if(_s->rule.burm_f8reg==0)
    NO_ACTION(f8reg);
  switch(_ern){
  case 196:
{


            ST * base_sym;
            INT64 base_ofst;
            TN * base_tn;
            TN * ofst_tn;
            
            ST * sym   = WN_st(_s->node->wn);
            INT64 ofst = WN_store_offset(_s->node->wn);
        
            Allocate_Object(sym);         /* make sure sym is allocated */
            Base_Symbol_And_Offset_For_Addressing(sym, ofst, &base_sym, &base_ofst);
            
            
            base_tn = Build_TN_Of_Mtype(Pointer_Mtype);
            Build_OP(TOP_lis, base_tn, Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_HIGH16), ops);
            ofst_tn = Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_LOW16);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_lfd, _s->node->result, base_tn, ofst_tn, ops);
        
}
  break;
  case 197:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fneg, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 198:
{


            f8reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fabs, _s->node->result, _s->kids[0]->node->result, ops);
        
}
  break;
  case 199:
{


            f8reg_action(_s->kids[0]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fnabs, _s->node->result, _s->kids[0]->kids[0]->node->result, ops);
        
}
  break;
  case 200:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fadd, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 201:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fsub, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 202:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fmul, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 203:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_fdiv, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 204:
{


                f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  f8reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fmadd, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 205:
{


            f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  f8reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmadd, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 206:
{


                f8reg_action(_s->kids[0]->kids[0],ops);
        	  f8reg_action(_s->kids[0]->kids[1],ops);
        	  f8reg_action(_s->kids[0]->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmadd, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, _s->kids[0]->kids[2]->node->result, ops);
        
}
  break;
  case 207:
{


                f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  f8reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fmsub, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 208:
{


                f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  f8reg_action(_s->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmsub, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, _s->kids[2]->node->result, ops);
        
}
  break;
  case 209:
{


                f8reg_action(_s->kids[0]->kids[0],ops);
        	  f8reg_action(_s->kids[0]->kids[1],ops);
        	  f8reg_action(_s->kids[0]->kids[2],ops);
        	  _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
        	  Build_OP(TOP_fnmsub, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, _s->kids[0]->kids[2]->node->result, ops);
        
}
  break;
  case 210:
{


            TN * base_tn;
            TN * ofst_tn;
            OPS newops;
            OP *op;
            OPS_Init(&newops);
        
            Expand_Load_Address(_s->node->wn, &base_tn, &ofst_tn, &newops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Build_OP(TOP_lfd, _s->node->result, base_tn, ofst_tn, &newops);
            
            ST * sym   = WN_st(_s->node->wn);
            
            FOR_ALL_OPS_OPs (&newops, op) {
                if (ST_is_constant(sym) && OP_load(op)) {
                    Set_OP_no_alias(op);
                }        
            }
        
            /* Add the new OPs to the end of the list passed in */
            OPS_Append_Ops(ops, &newops);  
        
}
  break;
  case 250:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Float(true, MTYPE_F8, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 251:
{


            f8reg_action(_s->kids[0],ops);
            f8reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_MaxMin_Float(false, MTYPE_F8, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 279:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Int_Float_Cvt(_s->node->result, _s->kids[0]->node->result, ops, false, true);
        
}
  break;
  case 280:
{


            reg_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (WN_rtype(_s->node->wn));
            Handle_Int_Float_Cvt(_s->node->result, _s->kids[0]->node->result, ops, true, true);
        
}
  break;
  case 281:
{


            f4reg_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 293:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_F8);
            Handle_ULonglong_Float_Cvt(_s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, ops, true);
        
}
  break;
  }
}

void reg64_action(struct burm_state *_s, 
pOPS ops)
{
  struct burm_state *_t;
  int _ern=burm_decode_reg64[_s->rule.burm_reg64];
  NODEPTR *_children;
  if(_s->rule.burm_reg64==0)
    NO_ACTION(reg64);
  switch(_ern){
  case 284:
{


            reg64_action(_s->kids[0],ops);
            INT16 bits = WN_cvtl_bits(_s->node->wn);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            switch (bits)
            {
                case 1:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(1, 4), ops); // do we need to extend sign bits?
                    break;
                case 8:
                    Build_OP(TOP_extsb, _s->node->result, _s->kids[0]->node->result, ops);
                    break;
                case 16:
                    Build_OP(TOP_extsh, _s->node->result, _s->kids[0]->node->result, ops);
                    break;
                case 32:
                    _s->node->result = _s->kids[0]->node->result;
                    break;
                default:
                    FmtAssert(false, ("invalid cvtl bits"));
            }
            Build_OP(TOP_srawi, _s->node->result_high, _s->node->result, Gen_Literal_TN(31, 4), ops);
        
}
  break;
  case 285:
{


            reg64_action(_s->kids[0],ops);
            INT16 bits = WN_cvtl_bits(_s->node->wn);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            switch (bits)
            {
                case 1:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(1, 4), ops);
                    break;
                case 8:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0xff, 4), ops);
                    break;
                case 16:
                    Build_OP(TOP_andi_, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0xffff, 4), ops);
                    break;
                case 32:
                    _s->node->result = _s->kids[0]->node->result;
                    break;
                default:
                    FmtAssert(false, ("invalid cvtl bits"));
            }
        
}
  break;
  case 288:
{


            reg_action(_s->kids[0],ops);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_srawi, _s->node->result_high, _s->kids[0]->node->result, Gen_Literal_TN(31, 4), ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 289:
{


            reg_action(_s->kids[0],ops);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            _s->node->result = _s->kids[0]->node->result;
        
}
  break;
  case 290:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
            _s->node->result_high = _s->kids[0]->node->result_high;
        
}
  break;
  case 291:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = _s->kids[0]->node->result;
            _s->node->result_high = _s->kids[0]->node->result_high;
        
}
  break;
  case 294:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            TN* mask = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_srawi, mask, _s->kids[0]->node->result_high, Gen_Literal_TN(31, 4), ops);
            Build_OP(TOP_xor, _s->node->result_high, _s->kids[0]->node->result_high, mask, ops);
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, mask, ops);
            Build_OP(TOP_subfc, _s->node->result, mask, _s->node->result, ops);
            Build_OP(TOP_subfe, _s->node->result_high, mask, _s->node->result_high, ops);
        
}
  break;
  case 295:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0, 4), ops);
            Build_OP(TOP_subfze, _s->node->result_high, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 296:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(0, 4), ops);
            Build_OP(TOP_subfze, _s->node->result_high, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 297:
{


            reg64_action(_s->kids[0],ops);
            INT64 val = WN_const_val(_s->kids[1]->node->wn);
            short low_low = (short)val;
            short low_high = (short)(val >> 16);
            short high_low = (short)(val >> 32);
            short high_high = (short)(val >> 48);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            if (low_low == 0)
            {
                if (low_high != 0)
                {
                    Build_OP(TOP_lis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
                    Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->node->result, ops);
                }
                    
            }
            else {
                low_high += low_low < 0 ? 1 : 0;
                if (low_high == 0)
                    Build_OP(TOP_addic, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(low_low, 4), ops);
                else
                {
                    Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(low_low, 4), ops);
                    Build_OP(TOP_addis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
                    Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->node->result, ops);
                }
            }
            if (low_low != 0 || low_high != 0)
            {
                if (high_low == 0)
                {
                    if (high_high != 0)
                    {
                        Build_OP(TOP_lis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                        Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->node->result_high, ops);
                    }
                    else
                    {
                        Build_OP(TOP_addze, _s->node->result_high, _s->kids[0]->node->result_high, ops);
                    }
                }
                else
                {
                    high_high += high_low < 0 ? 1 : 0;
                    Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                    if (high_high != 0)
                        Build_OP(TOP_addis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                    Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->node->result_high, ops);
                }
            }
            else
            {
                if (high_low == 0)
                    Build_OP(TOP_addis, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                else
                {
                    high_high += high_low < 0 ? 1 : 0;
                    Build_OP(TOP_addi, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                    if (high_high != 0)
                        Build_OP(TOP_addis, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                }
            }
            
        
}
  break;
  case 298:
{


            reg64_action(_s->kids[0],ops);
            INT64 val = WN_const_val(_s->kids[1]->node->wn);
            short low_low = (short)val;
            short low_high = (short)(val >> 16);
            short high_low = (short)(val >> 32);
            short high_high = (short)(val >> 48);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            if (low_low == 0)
            {
                if (low_high != 0)
                {
                    Build_OP(TOP_lis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
                    Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->node->result, ops);
                }
                    
            }
            else {
                low_high += low_low < 0 ? 1 : 0;
                if (low_high == 0)
                    Build_OP(TOP_addic, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(low_low, 4), ops);
                else
                {
                    Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(low_low, 4), ops);
                    Build_OP(TOP_addis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
                    Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->node->result, ops);
                }
            }
            if (low_low != 0 || low_high != 0)
            {
                if (high_low == 0)
                {
                    if (high_high != 0)
                    {
                        Build_OP(TOP_lis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                        Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->node->result_high, ops);
                    }
                    else
                    {
                        Build_OP(TOP_addze, _s->node->result_high, _s->kids[0]->node->result_high, ops);
                    }
                }
                else
                {
                    high_high += high_low < 0 ? 1 : 0;
                    Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                    if (high_high != 0)
                        Build_OP(TOP_addis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                    Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->node->result_high, ops);
                }
            }
            else
            {
                if (high_low == 0)
                    Build_OP(TOP_addis, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                else
                {
                    high_high += high_low < 0 ? 1 : 0;
                    Build_OP(TOP_addi, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                    if (high_high != 0)
                        Build_OP(TOP_addis, _s->node->result_high, _s->kids[0]->node->result_high, Gen_Literal_TN(high_high, 4), ops);
                }
            }
            
        
}
  break;
  case 299:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 300:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_addc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_adde, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 301:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subfe, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 302:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_subfe, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 303:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_mullw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result_high, ops);
            Build_OP(TOP_add, _s->node->result_high, _s->node->result_high, _s->node->result, ops);
            Build_OP(TOP_mulhwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_add, _s->node->result_high, _s->node->result_high, _s->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 304:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_mullw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result_high, ops);
            Build_OP(TOP_add, _s->node->result_high, _s->node->result_high, _s->node->result, ops);
            Build_OP(TOP_mulhwu, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_add, _s->node->result_high, _s->node->result_high, _s->node->result, ops);
            Build_OP(TOP_mullw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
        
}
  break;
  case 305:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 306:
{


            FmtAssert(false, ("call build-in lib"));
        
}
  break;
  case 307:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 308:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 309:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 310:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 311:
{


            FmtAssert(false, ("Not Implemented"));
        
}
  break;
  case 312:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lbz, ops);
            // lbz will not extend the sign bit, we need to do it ourselves
            Build_OP(TOP_extsb, _s->node->result, _s->node->result, ops);
            // FIXME
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 313:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lha, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 314:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lwz, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 315:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lwz, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 316:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Longlong_Ldst(_s->node->wn, TOP_lwz, _s->node->result, _s->node->result_high, ops);
        
}
  break;
  case 317:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Longlong_Ldst(_s->node->wn, TOP_lwz, _s->node->result, _s->node->result_high, ops);
        
}
  break;
  case 320:
{


            INT64 val = WN_const_val(_s->node->wn);
            short low_low = (short)val;
            short low_high = (short)(val >> 16);
            short high_low = (short)(val >> 32);
            short high_high = (short)(val >> 48);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            if (low_low == 0)
                Build_OP(TOP_lis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
            else
            {
                low_high += low_low < 0 ? 1 : 0;
                Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(low_low, 4), ops);
                if (low_high != 0)
                    Build_OP(TOP_addis, _s->node->result, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
            }
            if (high_low == 0)
                Build_OP(TOP_lis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
            else
            {
                high_high += high_low < 0 ? 1 : 0;
                Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                if (low_high != 0)
                    Build_OP(TOP_addis, _s->node->result_high, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
            }
        
}
  break;
  case 321:
{


            INT64 val = WN_const_val(_s->node->wn);
            short low_low = (short)val;
            short low_high = (short)(val >> 16);
            short high_low = (short)(val >> 32);
            short high_high = (short)(val >> 48);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            if (low_low == 0)
                Build_OP(TOP_lis, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
            else
            {
                low_high += low_low < 0 ? 1 : 0;
                Build_OP(TOP_li, _s->node->result, Gen_Literal_TN(low_low, 4), ops);
                if (low_high != 0)
                    Build_OP(TOP_addis, _s->node->result, _s->node->result, Gen_Literal_TN(low_high, 4), ops);
            }
            if (high_low == 0)
                Build_OP(TOP_lis, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
            else
            {
                high_high += high_low < 0 ? 1 : 0;
                Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(high_low, 4), ops);
                if (low_high != 0)
                    Build_OP(TOP_addis, _s->node->result_high, _s->node->result_high, Gen_Literal_TN(high_high, 4), ops);
            }
        
}
  break;
  case 322:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lbz, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 323:
{


            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Load(_s->node->wn, _s->node->result, TOP_lhz, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 324:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->node->result, _s->kids[0]->node->result, ops);
            Build_OP(TOP_nand, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 325:
{


            reg64_action(_s->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->node->result, _s->kids[0]->node->result, ops);
            Build_OP(TOP_nand, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[0]->node->result_high, ops);
        
}
  break;
  case 326:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_and, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 327:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_and, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_and, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 328:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 329:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_or, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 330:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_xor, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 331:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_xor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_xor, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 332:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_nor, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 333:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_nor, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result_high, ops);
        
}
  break;
  case 334:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_nand, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 335:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nand, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_nand, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 336:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_nor, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 337:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_nor, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_nor, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 338:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_eqv, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_eqv, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 339:
{


            reg64_action(_s->kids[0]->kids[0],ops);
            reg64_action(_s->kids[0]->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_eqv, _s->node->result, _s->kids[0]->kids[0]->node->result, _s->kids[0]->kids[1]->node->result, ops);
            Build_OP(TOP_eqv, _s->node->result_high, _s->kids[0]->kids[0]->node->result_high, _s->kids[0]->kids[1]->node->result_high, ops);
        
}
  break;
  case 340:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_andc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
            Build_OP(TOP_andc, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->kids[0]->node->result_high, ops);
        
}
  break;
  case 341:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_andc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
            Build_OP(TOP_andc, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->kids[0]->node->result_high, ops);
        
}
  break;
  case 342:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_orc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
            Build_OP(TOP_orc, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->kids[0]->node->result_high, ops);
        
}
  break;
  case 343:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1]->kids[0],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_orc, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->kids[0]->node->result, ops);
            Build_OP(TOP_orc, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->kids[0]->node->result_high, ops);
        
}
  break;
  case 362:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_MaxMin_Longlong(true, TOP_cmpw, _s->node->result_high, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 363:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_MaxMin_Longlong(false, TOP_cmpw, _s->node->result_high, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 382:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_MaxMin_Longlong(true, TOP_cmplw, _s->node->result_high, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 383:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_MaxMin_Longlong(false, TOP_cmplw, _s->node->result_high, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
        
}
  break;
  case 384:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 385:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 386:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 387:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 388:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 389:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 390:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 391:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 392:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 393:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 394:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 395:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 396:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 397:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 398:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 399:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 400:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 401:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 402:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 403:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 404:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 405:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 406:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 407:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 408:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 409:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 410:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 411:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 412:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 413:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 414:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 415:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 416:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 417:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 418:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 419:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 420:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 421:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 422:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 423:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 424:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 425:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 426:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 427:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 428:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 429:
{


            reg_action(_s->kids[0],ops);
            simm16_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplwi, _s->node->result, _s->kids[0]->node->result, Gen_Literal_TN(WN_const_val(_s->kids[1]->node->wn), 4), ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 430:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 431:
{


            reg_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Int(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 432:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 433:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 434:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 435:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 436:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 437:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 438:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 439:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_LE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 440:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 441:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 442:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 443:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_EQ, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 444:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
        	  Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 445:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
        	  Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 446:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
        	  Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 447:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
        	  Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            Handle_Cond_Move_Float(OPR_NE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 448:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            
        
}
  break;
  case 449:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            
        
}
  break;
  case 450:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            
        
}
  break;
  case 451:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GE, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
            
        
}
  break;
  case 452:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 453:
{


        	  f4reg_action(_s->kids[0],ops);
        	  f4reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 454:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 455:
{


        	  f8reg_action(_s->kids[0],ops);
        	  f8reg_action(_s->kids[1],ops);
        	  _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
        	  _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Move_Float(OPR_GT, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 456:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 457:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 458:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 459:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 460:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 461:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 462:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 463:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 464:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 465:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 466:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 467:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmpw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 468:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 469:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 470:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 471:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_LE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 472:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 473:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_EQ, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 474:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 475:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_NE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 476:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 477:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GE, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 478:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 479:
{


            reg64_action(_s->kids[0],ops);
            reg64_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            Handle_Cond_Longlong(OPR_GT, TOP_cmplw, _s->node->result, _s->kids[0]->node->result_high, _s->kids[0]->node->result, _s->kids[1]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_li, _s->node->result_high, Gen_Literal_TN(0, 4), ops);
        
}
  break;
  case 480:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            
            TN* shr = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shr, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_srw, tn, _s->kids[0]->node->result, shr, ops);            
            Build_OP(TOP_slw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);           
            Build_OP(TOP_slw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result_high, _s->node->result_high, tn, ops);
        
}
  break;
  case 481:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            
            TN* shr = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shr, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_srw, tn, _s->kids[0]->node->result, shr, ops);            
            Build_OP(TOP_slw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);           
            Build_OP(TOP_slw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result_high, _s->node->result_high, tn, ops);
        
}
  break;
  case 482:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            
            TN* shl = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shl, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_slw, tn, _s->kids[0]->node->result_high, shl, ops);
            Build_OP(TOP_srw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result, _s->node->result, tn, ops);
        
}
  break;
  case 483:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            
            TN* shl = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shl, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_slw, tn, _s->kids[0]->node->result_high, shl, ops);
            Build_OP(TOP_srw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result, _s->node->result, tn, ops);
        
}
  break;
  case 484:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            
            TN* shl = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shl, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_slw, tn, _s->kids[0]->node->result_high, shl, ops);
            Build_OP(TOP_srw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result, _s->node->result, tn, ops);
        
}
  break;
  case 485:
{


            reg64_action(_s->kids[0],ops);
            reg_action(_s->kids[1],ops);
            _s->node->result = Build_TN_Of_Mtype (MTYPE_I4);
            _s->node->result_high = Build_TN_Of_Mtype (MTYPE_I4);
            TN* shl = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_subfic, shl, _s->kids[1]->node->result, Gen_Literal_TN(32, 4), ops);
            TN* tn = Build_TN_Of_Mtype (MTYPE_I4);
            Build_OP(TOP_slw, tn, _s->kids[0]->node->result_high, shl, ops);
            Build_OP(TOP_sraw, _s->node->result_high, _s->kids[0]->node->result_high, _s->kids[1]->node->result, ops);
            Build_OP(TOP_srw, _s->node->result, _s->kids[0]->node->result, _s->kids[1]->node->result, ops);
            Build_OP(TOP_or, _s->node->result, _s->node->result, tn, ops);
        
}
  break;
  }
}
static void burm_closure_null(struct burm_state *, COST);
static void burm_closure_reg(struct burm_state *, COST);
static void burm_closure_simm16(struct burm_state *, COST);
static void burm_closure_uimm16(struct burm_state *, COST);
static void burm_closure_f4reg(struct burm_state *, COST);
static void burm_closure_f8reg(struct burm_state *, COST);
static void burm_closure_reg64(struct burm_state *, COST);

static void burm_closure_null(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,1,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 2;
  }
}

static void burm_closure_reg(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,0,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 1;
  }
}

static void burm_closure_simm16(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,5,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 6;
  }
}

static void burm_closure_uimm16(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,6,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 7;
  }
}

static void burm_closure_f4reg(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,2,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 3;
  }
}

static void burm_closure_f8reg(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,3,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 4;
  }
}

static void burm_closure_reg64(struct burm_state *s, COST c) {
  if(burm_cost_code(&c,4,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
    s->cost[burm_expr_NT] = c ;
    s->rule.burm_expr = 5;
  }
}

struct burm_state *burm_alloc_state(NODEPTR u,int op,int arity)
{
  struct burm_state *p, **k;
  p = (struct burm_state *)ALLOC(sizeof *p);
  burm_assert(p, PANIC("1:ALLOC returned NULL in burm_alloc_state\n"));
  p->op = op;
  p->node = u;
  if(arity){
    k=(struct burm_state **)ALLOC(arity*sizeof (struct burm_state *));
    burm_assert(k, PANIC("2:ALLOC returned NULL in burm_alloc_state\n"));
    p->kids=k;
  }else
    p->kids=0;
  p->rule.burm_expr =
  p->rule.burm_null =
  p->rule.burm_reg =
  p->rule.burm_simm16 =
  p->rule.burm_uimm16 =
  p->rule.burm_f4reg =
  p->rule.burm_f8reg =
  p->rule.burm_reg64 =
    0;
  p->cost[1] =
  p->cost[2] =
  p->cost[3] =
  p->cost[4] =
  p->cost[5] =
  p->cost[6] =
  p->cost[7] =
  p->cost[8] =
    COST_INFINITY;
  return p;
}
struct burm_state *burm_label1(NODEPTR u) {
  int op, arity, i, immed_matched=0;
  COST c=COST_ZERO;
  struct burm_state *s,**k;
  NODEPTR *children;
  burm_assert(sizeof (int) >= sizeof (void *),PANIC("implementation failure"));
  op=OP_LABEL(u);
  arity=burm_arity[op];
  switch(op){
  case 0:		/* I4INTCONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: I4INTCONST */
      if(burm_cost_code(&c,52,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 30;
        burm_closure_reg(s, c );
      }
    }
    {  		/* reg: I4INTCONST */
      if(burm_cost_code(&c,51,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 29;
        burm_closure_reg(s, c );
      }
    }
    {  		/* simm16: I4INTCONST */
      if(burm_cost_code(&c,9,s) && COST_LESS(c,s->cost[burm_simm16_NT])) {
        s->cost[burm_simm16_NT] = c ;
        s->rule.burm_simm16 = 1;
        burm_closure_simm16(s, c );
      }
    }
    break;
  case 1:		/* I4ABS */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4ABS(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,11,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 1;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 2:		/* I4NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4NEG(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,12,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 2;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 3:		/* I4ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4ADD(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,16,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 6;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4ADD(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,14,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 4;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 4:		/* I4SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4SUB(I4INTCONST,reg) */
      k[0]->op == 0 && 	/* I4INTCONST */
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,20,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 10;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4SUB(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,18,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 8;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 5:		/* I4MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4MPY(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,24,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 14;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4MPY(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,22,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 12;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 6:		/* I4HIGHMPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4HIGHMPY(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,26,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 16;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 7:		/* I4DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4DIV(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,27,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 17;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 8:		/* I4REM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4REM(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,28,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 18;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 9:		/* I4MOD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4MOD(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,29,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 19;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 10:		/* U4INTCONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: U4INTCONST */
      if(burm_cost_code(&c,54,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 32;
        burm_closure_reg(s, c );
      }
    }
    {  		/* reg: U4INTCONST */
      if(burm_cost_code(&c,53,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 31;
        burm_closure_reg(s, c );
      }
    }
    {  		/* uimm16: U4INTCONST */
      if(burm_cost_code(&c,10,s) && COST_LESS(c,s->cost[burm_uimm16_NT])) {
        s->cost[burm_uimm16_NT] = c ;
        s->rule.burm_uimm16 = 1;
        burm_closure_uimm16(s, c );
      }
    }
    break;
  case 11:		/* U4NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4NEG(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,13,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 3;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 12:		/* U4ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4ADD(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,17,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 7;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4ADD(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,15,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 5;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 13:		/* U4SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4SUB(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,30,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 20;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4SUB(U4INTCONST,reg) */
      k[0]->op == 10 && 	/* U4INTCONST */
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,21,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 11;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4SUB(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,19,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 9;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 14:		/* U4MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4MPY(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,25,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 15;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4MPY(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,23,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 13;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 15:		/* U4HIGHMPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4HIGHMPY(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,31,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 21;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 16:		/* U4DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4DIV(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,32,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 22;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 17:		/* U4REM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4REM(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,33,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 23;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 18:		/* U4MOD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4MOD(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,34,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 24;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 19:		/* BINTCONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    break;
  case 20:		/* BLNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BLNOT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,57,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 35;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 21:		/* BLAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BLAND(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,59,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 37;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BLAND(reg,BINTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 19	/* BINTCONST */
    ) {
      if(burm_cost_code(&c,58,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 36;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 22:		/* BLIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BLIOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,61,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 39;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BLIOR(reg,BINTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 19	/* BINTCONST */
    ) {
      if(burm_cost_code(&c,60,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 38;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 23:		/* I4LNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4LNOT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,64,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 42;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 24:		/* I4LIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4LIOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,76,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 54;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4LIOR(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,73,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 51;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 25:		/* I4LAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4LAND(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,70,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 48;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4LAND(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,67,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 45;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 26:		/* I4BIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BIOR(reg,I4BNOT(reg)) */
      k[0]->rule.burm_reg && 
      k[1]->op == 27 && 	/* I4BNOT */
      k[1]->kids[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,91,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 69;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BIOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,74,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 52;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BIOR(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,71,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 49;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 27:		/* I4BNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BNOT(I4BXOR(reg,reg)) */
      k[0]->op == 29 && 	/* I4BXOR */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,87,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 65;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BNOT(I4BIOR(reg,reg)) */
      k[0]->op == 26 && 	/* I4BIOR */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,85,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 63;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BNOT(I4BAND(reg,reg)) */
      k[0]->op == 28 && 	/* I4BAND */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,83,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 61;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BNOT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,62,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 40;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 28:		/* I4BAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BAND(reg,I4BNOT(reg)) */
      k[0]->rule.burm_reg && 
      k[1]->op == 27 && 	/* I4BNOT */
      k[1]->kids[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,89,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 67;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BAND(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,68,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 46;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BAND(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,65,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 43;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 29:		/* I4BXOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BXOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,79,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 57;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4BXOR(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,77,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 55;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 30:		/* I4BNOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BNOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,81,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 59;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 31:		/* U4BNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BNOT(U4BXOR(reg,reg)) */
      k[0]->op == 34 && 	/* U4BXOR */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,88,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 66;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BNOT(U4BIOR(reg,reg)) */
      k[0]->op == 32 && 	/* U4BIOR */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,86,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 64;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BNOT(U4BAND(reg,reg)) */
      k[0]->op == 33 && 	/* U4BAND */
      k[0]->kids[0]->rule.burm_reg&&
      k[0]->kids[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,84,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 62;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BNOT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,63,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 41;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 32:		/* U4BIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BIOR(reg,U4BNOT(reg)) */
      k[0]->rule.burm_reg && 
      k[1]->op == 31 && 	/* U4BNOT */
      k[1]->kids[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,92,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 70;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BIOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,75,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 53;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BIOR(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,72,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 50;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 33:		/* U4BAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BAND(reg,U4BNOT(reg)) */
      k[0]->rule.burm_reg && 
      k[1]->op == 31 && 	/* U4BNOT */
      k[1]->kids[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,90,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 68;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BAND(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,69,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 47;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BAND(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,66,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 44;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 34:		/* U4BXOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BXOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,80,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 58;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4BXOR(reg,U4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 10	/* U4INTCONST */
    ) {
      if(burm_cost_code(&c,78,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 56;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 35:		/* U4BNOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BNOR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,82,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 60;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 36:		/* BBEQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BBEQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,94,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 72;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BBEQ(reg,BINTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 19	/* BINTCONST */
    ) {
      if(burm_cost_code(&c,93,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 71;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 37:		/* BBNE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BBNE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,96,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 74;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BBNE(reg,BINTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 19	/* BINTCONST */
    ) {
      if(burm_cost_code(&c,95,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 73;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 38:		/* BI4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,100,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 78;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,97,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 75;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 39:		/* BI4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,106,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 84;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,103,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 81;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 40:		/* BI4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,112,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 90;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,109,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 87;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 41:		/* BI4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,118,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 96;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,115,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 93;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 42:		/* BI4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,124,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 102;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,121,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 99;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 43:		/* BI4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,130,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 108;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BI4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,127,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 105;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 44:		/* I4I4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,101,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 79;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,98,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 76;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 45:		/* I4I4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,107,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 85;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,104,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 82;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 46:		/* I4I4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,113,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 91;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,110,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 88;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 47:		/* I4I4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,119,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 97;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,116,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 94;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 48:		/* I4I4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,125,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 103;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,122,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 100;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 49:		/* I4I4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,131,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 109;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4I4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,128,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 106;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 50:		/* U4I4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,102,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 80;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,99,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 77;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 51:		/* U4I4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,108,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 86;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,105,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 83;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 52:		/* U4I4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,114,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 92;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,111,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 89;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 53:		/* U4I4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,120,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 98;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,117,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 95;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 54:		/* U4I4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,126,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 104;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,123,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 101;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 55:		/* U4I4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,132,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 110;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4I4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,129,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 107;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 56:		/* I4MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4MAX(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,133,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 111;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 57:		/* I4MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4MIN(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,134,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 112;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 58:		/* I4SHL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4SHL(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,135,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 113;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 59:		/* I4ASHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4ASHR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,138,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 116;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4ASHR(reg,I4INTCONST) */
      k[0]->rule.burm_reg && 
      k[1]->op == 0	/* I4INTCONST */
    ) {
      if(burm_cost_code(&c,137,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 115;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 60:		/* I4LSHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4LSHR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,139,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 117;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 61:		/* BU4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,145,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 123;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4LT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,142,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 120;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 62:		/* BU4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,151,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 129;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4LE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,148,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 126;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 63:		/* BU4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,157,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 135;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4EQ(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,154,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 132;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 64:		/* BU4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,163,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 141;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4NE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,160,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 138;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 65:		/* BU4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,169,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 147;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4GE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,166,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 144;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 66:		/* BU4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,175,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 153;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: BU4GT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,172,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 150;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 67:		/* I4U4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,146,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 124;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4LT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,143,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 121;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 68:		/* I4U4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,152,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 130;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4LE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,149,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 127;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 69:		/* I4U4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,158,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 136;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4EQ(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,155,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 133;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 70:		/* I4U4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,164,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 142;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4NE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,161,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 139;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 71:		/* I4U4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,170,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 148;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4GE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,167,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 145;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 72:		/* I4U4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,176,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 154;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: I4U4GT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,173,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 151;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 73:		/* U4U4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,147,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 125;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4LT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,144,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 122;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 74:		/* U4U4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,153,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 131;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4LE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,150,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 128;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 75:		/* U4U4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,159,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 137;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4EQ(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,156,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 134;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 76:		/* U4U4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,165,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 143;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4NE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,162,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 140;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 77:		/* U4U4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,171,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 149;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4GE(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,168,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 146;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 78:		/* U4U4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,177,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 155;
        burm_closure_reg(s, c );
      }
    }
    if (   /* reg: U4U4GT(reg,uimm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_uimm16
    ) {
      if(burm_cost_code(&c,174,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 152;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 79:		/* U4MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4MAX(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,178,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 156;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 80:		/* U4MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4MIN(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,179,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 157;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 81:		/* U4SHL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4SHL(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,136,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 114;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 82:		/* U4ASHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4ASHR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,141,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 119;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 83:		/* U4LSHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4LSHR(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,140,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 118;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 84:		/* F4CONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* f4reg: F4CONST */
      if(burm_cost_code(&c,180,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 1;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 85:		/* F4ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4ADD(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,181,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 2;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 86:		/* F4SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4SUB(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,182,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 3;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 87:		/* F4MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4MPY(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,183,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 4;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 88:		/* F4DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4DIV(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,184,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 5;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 89:		/* F4MADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4MADD(f4reg,f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg && 
      k[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,185,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 6;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 90:		/* F4NMADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4NMADD(f4reg,f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg && 
      k[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,186,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 7;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 91:		/* F4MSUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4MSUB(f4reg,f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg && 
      k[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,188,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 9;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 92:		/* F4NMSUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4NMSUB(f4reg,f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg && 
      k[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,189,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 10;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 93:		/* F4NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4NEG(F4ABS(f4reg)) */
      k[0]->op == 94 && 	/* F4ABS */
      k[0]->kids[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,193,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 14;
        burm_closure_f4reg(s, c );
      }
    }
    if (   /* f4reg: F4NEG(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,191,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 12;
        burm_closure_f4reg(s, c );
      }
    }
    if (   /* f4reg: F4NEG(F4MSUB(f4reg,f4reg,f4reg)) */
      k[0]->op == 91 && 	/* F4MSUB */
      k[0]->kids[0]->rule.burm_f4reg&&
      k[0]->kids[1]->rule.burm_f4reg&&
      k[0]->kids[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,190,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 11;
        burm_closure_f4reg(s, c );
      }
    }
    if (   /* f4reg: F4NEG(F4MADD(f4reg,f4reg,f4reg)) */
      k[0]->op == 89 && 	/* F4MADD */
      k[0]->kids[0]->rule.burm_f4reg&&
      k[0]->kids[1]->rule.burm_f4reg&&
      k[0]->kids[2]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,187,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 8;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 94:		/* F4ABS */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4ABS(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,192,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 13;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 95:		/* F4RECIP */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 96:		/* F4SQRT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 97:		/* F4RSQRT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 98:		/* F8CONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* f8reg: F8CONST */
      if(burm_cost_code(&c,196,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 1;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 99:		/* F8ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8ADD(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,200,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 5;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 100:		/* F8SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8SUB(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,201,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 6;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 101:		/* F8MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8MPY(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,202,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 7;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 102:		/* F8DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8DIV(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,203,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 8;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 103:		/* F8MADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8MADD(f8reg,f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg && 
      k[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,204,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 9;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 104:		/* F8NMADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8NMADD(f8reg,f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg && 
      k[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,205,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 10;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 105:		/* F8MSUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8MSUB(f8reg,f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg && 
      k[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,207,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 12;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 106:		/* F8NMSUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8NMSUB(f8reg,f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg && 
      k[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,208,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 13;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 107:		/* F8NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8NEG(F8MSUB(f8reg,f8reg,f8reg)) */
      k[0]->op == 105 && 	/* F8MSUB */
      k[0]->kids[0]->rule.burm_f8reg&&
      k[0]->kids[1]->rule.burm_f8reg&&
      k[0]->kids[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,209,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 14;
        burm_closure_f8reg(s, c );
      }
    }
    if (   /* f8reg: F8NEG(F8MADD(f8reg,f8reg,f8reg)) */
      k[0]->op == 103 && 	/* F8MADD */
      k[0]->kids[0]->rule.burm_f8reg&&
      k[0]->kids[1]->rule.burm_f8reg&&
      k[0]->kids[2]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,206,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 11;
        burm_closure_f8reg(s, c );
      }
    }
    if (   /* f8reg: F8NEG(F8ABS(f8reg)) */
      k[0]->op == 108 && 	/* F8ABS */
      k[0]->kids[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,199,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 4;
        burm_closure_f8reg(s, c );
      }
    }
    if (   /* f8reg: F8NEG(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,197,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 2;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 108:		/* F8ABS */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8ABS(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,198,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 3;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 109:		/* F8RECIP */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 110:		/* F8SQRT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 111:		/* F8RSQRT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 112:		/* BF4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4LT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,212,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 158;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 113:		/* BF4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4LE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,218,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 164;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 114:		/* BF4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4EQ(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,224,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 170;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 115:		/* BF4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4NE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,230,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 176;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 116:		/* BF4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4GE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,236,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 182;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 117:		/* BF4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF4GT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,242,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 188;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 118:		/* I4F4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4LT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,213,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 159;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 119:		/* I4F4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4LE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,219,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 165;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 120:		/* I4F4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4EQ(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,225,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 171;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 121:		/* I4F4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4NE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,231,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 177;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 122:		/* I4F4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4GE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,237,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 183;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 123:		/* I4F4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4GT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,243,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 189;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 124:		/* U4F4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4LT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,214,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 160;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 125:		/* U4F4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4LE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,220,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 166;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 126:		/* U4F4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4EQ(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,226,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 172;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 127:		/* U4F4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4NE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,232,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 178;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 128:		/* U4F4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4GE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,238,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 184;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 129:		/* U4F4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4GT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,244,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 190;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 130:		/* F4MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4MAX(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,248,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 16;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 131:		/* F4MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4MIN(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,249,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 17;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 132:		/* BF8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8LT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,215,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 161;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 133:		/* BF8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8LE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,221,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 167;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 134:		/* BF8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8EQ(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,227,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 173;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 135:		/* BF8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8NE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,233,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 179;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 136:		/* BF8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8GE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,239,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 185;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 137:		/* BF8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BF8GT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,245,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 191;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 138:		/* I4F8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8LT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,216,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 162;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 139:		/* I4F8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8LE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,222,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 168;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 140:		/* I4F8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8EQ(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,228,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 174;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 141:		/* I4F8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8NE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,234,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 180;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 142:		/* I4F8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8GE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,240,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 186;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 143:		/* I4F8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8GT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,246,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 192;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 144:		/* U4F8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8LT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,217,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 163;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 145:		/* U4F8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8LE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,223,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 169;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 146:		/* U4F8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8EQ(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,229,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 175;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 147:		/* U4F8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8NE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,235,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 181;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 148:		/* U4F8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8GE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,241,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 187;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 149:		/* U4F8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8GT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,247,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 193;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 150:		/* F8MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8MAX(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,250,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 16;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 151:		/* F8MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8MIN(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,251,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 17;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 152:		/* I1STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I1STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,41,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 3;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: I1STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,39,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 1;
        burm_closure_null(s, c );
      }
    }
    break;
  case 153:		/* I2STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I2STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,45,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 7;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: I2STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,43,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 5;
        burm_closure_null(s, c );
      }
    }
    break;
  case 154:		/* U1STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U1STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,42,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 4;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: U1STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,40,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 2;
        burm_closure_null(s, c );
      }
    }
    break;
  case 155:		/* U2STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U2STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,46,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 8;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: U2STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,44,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 6;
        burm_closure_null(s, c );
      }
    }
    break;
  case 156:		/* I4I1LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: I4I1LDID */
      if(burm_cost_code(&c,35,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 25;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 157:		/* I4I2LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: I4I2LDID */
      if(burm_cost_code(&c,36,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 26;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 158:		/* I4I4LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: I4I4LDID */
      if(burm_cost_code(&c,37,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 27;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 159:		/* I4I8LDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 160:		/* I4BSLDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 161:		/* I4STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I4STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,49,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 11;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: I4STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,47,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 9;
        burm_closure_null(s, c );
      }
    }
    break;
  case 162:		/* U4U1LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: U4U1LDID */
      if(burm_cost_code(&c,55,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 33;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 163:		/* U4U2LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: U4U2LDID */
      if(burm_cost_code(&c,56,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 34;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 164:		/* U4U4LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg: U4U4LDID */
      if(burm_cost_code(&c,38,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 28;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 165:		/* U4U8LDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 166:		/* U4BSLDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 167:		/* U4STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U4STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,50,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 12;
        burm_closure_null(s, c );
      }
    }
    if (   /* null: U4STID(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,48,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 10;
        burm_closure_null(s, c );
      }
    }
    break;
  case 168:		/* F4F4LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* f4reg: F4F4LDID */
      if(burm_cost_code(&c,194,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 15;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 169:		/* F4STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: F4STID(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,195,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 13;
        burm_closure_null(s, c );
      }
    }
    break;
  case 170:		/* F8F8LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* f8reg: F8F8LDID */
      if(burm_cost_code(&c,210,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 15;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 171:		/* F8STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: F8STID(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,211,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 14;
        burm_closure_null(s, c );
      }
    }
    break;
  case 172:		/* I4BCVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4BCVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,252,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 194;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 173:		/* I4U4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,253,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 195;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 174:		/* I4F4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4CVT(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,258,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 200;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 175:		/* I4F8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8CVT(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,259,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 201;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 176:		/* I4F4RND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4RND(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,256,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 198;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 177:		/* I4F4TRUNC */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4TRUNC(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,260,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 202;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 178:		/* I4F4CEIL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4CEIL(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,262,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 204;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 179:		/* I4F4FLOOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F4FLOOR(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,264,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 206;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 180:		/* I4F8RND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8RND(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,257,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 199;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 181:		/* I4F8TRUNC */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8TRUNC(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,261,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 203;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 182:		/* I4F8CEIL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8CEIL(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,263,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 205;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 183:		/* I4F8FLOOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4F8FLOOR(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,265,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 207;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 184:		/* U4BCVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4BCVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,254,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 196;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 185:		/* U4I4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,255,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 197;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 186:		/* U4F4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4CVT(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,268,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 210;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 187:		/* U4F8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8CVT(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,269,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 211;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 188:		/* U4F4RND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4RND(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,266,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 208;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 189:		/* U4F4TRUNC */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4TRUNC(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,270,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 212;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 190:		/* U4F4CEIL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4CEIL(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,272,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 214;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 191:		/* U4F4FLOOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F4FLOOR(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,274,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 216;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 192:		/* U4F8RND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8RND(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,267,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 209;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 193:		/* U4F8TRUNC */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8TRUNC(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,271,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 213;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 194:		/* U4F8CEIL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8CEIL(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,273,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 215;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 195:		/* U4F8FLOOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4F8FLOOR(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,275,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 217;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 196:		/* F4I4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4I4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,276,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 18;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 197:		/* F4U4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4U4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,277,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 19;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 198:		/* F4F8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4F8CVT(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,278,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 20;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 199:		/* F8I4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8I4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,279,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 18;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 200:		/* F8U4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8U4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,280,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 19;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 201:		/* F8F4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8F4CVT(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,281,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 20;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 202:		/* I8I1LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: I8I1LDID */
      if(burm_cost_code(&c,312,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 25;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 203:		/* I8I2LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: I8I2LDID */
      if(burm_cost_code(&c,313,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 26;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 204:		/* I8I4LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: I8I4LDID */
      if(burm_cost_code(&c,314,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 27;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 205:		/* I8I8LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: I8I8LDID */
      if(burm_cost_code(&c,316,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 29;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 206:		/* I8BSLDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 207:		/* I8STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I8STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,318,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 15;
        burm_closure_null(s, c );
      }
    }
    break;
  case 208:		/* U8U1LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: U8U1LDID */
      if(burm_cost_code(&c,322,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 33;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 209:		/* U8U2LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: U8U2LDID */
      if(burm_cost_code(&c,323,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 34;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 210:		/* U8U4LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: U8U4LDID */
      if(burm_cost_code(&c,315,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 28;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 211:		/* U8U8LDID */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: U8U8LDID */
      if(burm_cost_code(&c,317,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 30;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 212:		/* U8BSLDID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 213:		/* U8STID */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U8STID(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,319,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 16;
        burm_closure_null(s, c );
      }
    }
    break;
  case 214:		/* I8INTCONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: I8INTCONST */
      if(burm_cost_code(&c,320,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 31;
        burm_closure_reg64(s, c );
      }
    }
    {  		/* expr: I8INTCONST */
      if(burm_cost_code(&c,7,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
        s->cost[burm_expr_NT] = c ;
        s->rule.burm_expr = 8;
      }
    }
    break;
  case 215:		/* I8ABS */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8ABS(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,294,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 7;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 216:		/* I8NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8NEG(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,295,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 8;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 217:		/* I8ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8ADD(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,299,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 12;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8ADD(reg64,I8INTCONST) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 214	/* I8INTCONST */
    ) {
      if(burm_cost_code(&c,297,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 10;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 218:		/* I8SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8SUB(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,301,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 14;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 219:		/* I8MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8MPY(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,303,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 16;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 220:		/* I8HIGHMPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8HIGHMPY(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,305,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 18;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 221:		/* I8DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8DIV(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,306,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 19;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 222:		/* I8REM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8REM(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,307,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 20;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 223:		/* I8MOD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8MOD(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,308,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 21;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 224:		/* U8INTCONST */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* reg64: U8INTCONST */
      if(burm_cost_code(&c,321,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 32;
        burm_closure_reg64(s, c );
      }
    }
    {  		/* expr: U8INTCONST */
      if(burm_cost_code(&c,8,s) && COST_LESS(c,s->cost[burm_expr_NT])) {
        s->cost[burm_expr_NT] = c ;
        s->rule.burm_expr = 9;
      }
    }
    break;
  case 225:		/* U8NEG */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8NEG(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,296,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 9;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 226:		/* U8ADD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8ADD(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,300,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 13;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8ADD(reg64,U8INTCONST) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 224	/* U8INTCONST */
    ) {
      if(burm_cost_code(&c,298,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 11;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 227:		/* U8SUB */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8SUB(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,302,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 15;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 228:		/* U8MPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8MPY(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,304,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 17;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 229:		/* U8HIGHMPY */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8HIGHMPY(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,309,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 22;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 230:		/* U8DIV */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    break;
  case 231:		/* U8REM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8REM(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,310,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 23;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 232:		/* U8MOD */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8MOD(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,311,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 24;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 233:		/* I8BIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8BIOR(reg64,I8BNOT(reg64)) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 234 && 	/* I8BNOT */
      k[1]->kids[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,342,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 53;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8BIOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,328,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 39;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 234:		/* I8BNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8BNOT(I8BXOR(reg64,reg64)) */
      k[0]->op == 236 && 	/* I8BXOR */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,338,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 49;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8BNOT(I8BIOR(reg64,reg64)) */
      k[0]->op == 233 && 	/* I8BIOR */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,336,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 47;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8BNOT(I8BAND(reg64,reg64)) */
      k[0]->op == 235 && 	/* I8BAND */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,334,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 45;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8BNOT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,324,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 35;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 235:		/* I8BAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8BAND(reg64,I8BNOT(reg64)) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 234 && 	/* I8BNOT */
      k[1]->kids[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,340,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 51;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8BAND(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,326,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 37;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 236:		/* I8BXOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8BXOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,330,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 41;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 237:		/* I8BNOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8BNOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,332,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 43;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 238:		/* U8BNOT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8BNOT(U8BXOR(reg64,reg64)) */
      k[0]->op == 241 && 	/* U8BXOR */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,339,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 50;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8BNOT(U8BIOR(reg64,reg64)) */
      k[0]->op == 239 && 	/* U8BIOR */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,337,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 48;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8BNOT(U8BAND(reg64,reg64)) */
      k[0]->op == 240 && 	/* U8BAND */
      k[0]->kids[0]->rule.burm_reg64&&
      k[0]->kids[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,335,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 46;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8BNOT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,325,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 36;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 239:		/* U8BIOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8BIOR(reg64,U8BNOT(reg64)) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 238 && 	/* U8BNOT */
      k[1]->kids[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,343,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 54;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8BIOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,329,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 40;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 240:		/* U8BAND */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8BAND(reg64,U8BNOT(reg64)) */
      k[0]->rule.burm_reg64 && 
      k[1]->op == 238 && 	/* U8BNOT */
      k[1]->kids[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,341,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 52;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8BAND(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,327,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 38;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 241:		/* U8BXOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8BXOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,331,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 42;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 242:		/* U8BNOR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8BNOR(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,333,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 44;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 243:		/* BI8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,344,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 222;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 244:		/* BI8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,347,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 225;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 245:		/* BI8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,350,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 228;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 246:		/* BI8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,353,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 231;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 247:		/* BI8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,356,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 234;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 248:		/* BI8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BI8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,359,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 237;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 249:		/* I4I8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,345,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 223;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 250:		/* I4I8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,348,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 226;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 251:		/* I4I8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,351,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 229;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 252:		/* I4I8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,354,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 232;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 253:		/* I4I8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,357,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 235;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 254:		/* I4I8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,360,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 238;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 255:		/* U4I8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,346,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 224;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 256:		/* U4I8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,349,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 227;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 257:		/* U4I8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,352,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 230;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 258:		/* U4I8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,355,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 233;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 259:		/* U4I8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,358,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 236;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 260:		/* U4I8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4I8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,361,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 239;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 261:		/* I8I8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,456,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 131;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 262:		/* I8I8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,458,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 133;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 263:		/* I8I8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,460,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 135;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 264:		/* I8I8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,462,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 137;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 265:		/* I8I8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,464,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 139;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 266:		/* I8I8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,466,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 141;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 267:		/* U8I8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,457,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 132;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 268:		/* U8I8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,459,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 134;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 269:		/* U8I8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,461,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 136;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 270:		/* U8I8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,463,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 138;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 271:		/* U8I8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,465,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 140;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 272:		/* U8I8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,467,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 142;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 273:		/* I8MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8MAX(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,362,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 55;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 274:		/* I8MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8MIN(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,363,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 56;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 275:		/* BU8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,364,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 240;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 276:		/* BU8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,367,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 243;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 277:		/* BU8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,370,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 246;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 278:		/* BU8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,373,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 249;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 279:		/* BU8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,376,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 252;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 280:		/* BU8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: BU8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,379,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 255;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 281:		/* I4U8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,365,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 241;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 282:		/* I4U8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,368,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 244;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 283:		/* I4U8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,371,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 247;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 284:		/* I4U8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,374,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 250;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 285:		/* I4U8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,377,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 253;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 286:		/* I4U8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4U8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,380,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 256;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 287:		/* U4U8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,366,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 242;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 288:		/* U4U8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,369,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 245;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 289:		/* U4U8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,372,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 248;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 290:		/* U4U8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,375,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 251;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 291:		/* U4U8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,378,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 254;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 292:		/* U4U8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,381,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 257;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 293:		/* I8U8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,468,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 143;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 294:		/* I8U8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,470,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 145;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 295:		/* I8U8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,472,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 147;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 296:		/* I8U8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,474,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 149;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 297:		/* I8U8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,476,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 151;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 298:		/* I8U8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,478,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 153;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 299:		/* U8U8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8LT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,469,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 144;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 300:		/* U8U8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8LE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,471,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 146;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 301:		/* U8U8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8EQ(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,473,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 148;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 302:		/* U8U8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8NE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,475,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 150;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 303:		/* U8U8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8GE(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,477,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 152;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 304:		/* U8U8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U8GT(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,479,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 154;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 305:		/* U8MAX */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8MAX(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,382,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 57;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 306:		/* U8MIN */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8MIN(reg64,reg64) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,383,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 58;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 307:		/* I8I4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,386,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 61;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,384,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 59;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 308:		/* I8I4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,390,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 65;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,388,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 63;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 309:		/* I8I4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,394,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 69;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,392,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 67;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 310:		/* I8I4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,398,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 73;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,396,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 71;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 311:		/* I8I4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,402,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 77;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,400,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 75;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 312:		/* I8I4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,406,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 81;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8I4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,404,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 79;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 313:		/* U8I4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,387,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 62;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,385,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 60;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 314:		/* U8I4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,391,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 66;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,389,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 64;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 315:		/* U8I4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,395,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 70;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,393,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 68;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 316:		/* U8I4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,399,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 74;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,397,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 72;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 317:		/* U8I4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,403,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 78;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,401,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 76;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 318:		/* U8I4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,407,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 82;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8I4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,405,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 80;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 319:		/* I8U4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,410,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 85;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,408,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 83;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 320:		/* I8U4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,414,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 89;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,412,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 87;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 321:		/* I8U4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,418,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 93;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,416,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 91;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 322:		/* I8U4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,422,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 97;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,420,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 95;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 323:		/* I8U4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,426,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 101;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,424,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 99;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 324:		/* I8U4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,430,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 105;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: I8U4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,428,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 103;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 325:		/* U8U4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4LT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,411,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 86;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4LT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,409,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 84;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 326:		/* U8U4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4LE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,415,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 90;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4LE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,413,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 88;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 327:		/* U8U4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4EQ(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,419,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 94;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4EQ(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,417,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 92;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 328:		/* U8U4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4NE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,423,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 98;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4NE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,421,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 96;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 329:		/* U8U4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4GE(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,427,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 102;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4GE(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,425,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 100;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 330:		/* U8U4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4GT(reg,reg) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,431,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 106;
        burm_closure_reg64(s, c );
      }
    }
    if (   /* reg64: U8U4GT(reg,simm16) */
      k[0]->rule.burm_reg && 
      k[1]->rule.burm_simm16
    ) {
      if(burm_cost_code(&c,429,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 104;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 331:		/* I8SHL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8SHL(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,480,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 155;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 332:		/* I8ASHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8ASHR(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,485,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 160;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 333:		/* I8LSHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8LSHR(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,482,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 157;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 334:		/* U8SHL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8SHL(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,481,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 156;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 335:		/* U8ASHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8ASHR(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,484,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 159;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 336:		/* U8LSHR */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8LSHR(reg64,reg) */
      k[0]->rule.burm_reg64 && 
      k[1]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,483,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 158;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 337:		/* I8F4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4LT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,432,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 107;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 338:		/* I8F4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4LE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,436,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 111;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 339:		/* I8F4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4EQ(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,440,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 115;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 340:		/* I8F4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4NE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,444,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 119;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 341:		/* I8F4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4GE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,448,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 123;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 342:		/* I8F4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F4GT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,452,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 127;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 343:		/* U8F4LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4LT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,433,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 108;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 344:		/* U8F4LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4LE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,437,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 112;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 345:		/* U8F4EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4EQ(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,441,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 116;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 346:		/* U8F4NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4NE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,445,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 120;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 347:		/* U8F4GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4GE(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,449,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 124;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 348:		/* U8F4GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F4GT(f4reg,f4reg) */
      k[0]->rule.burm_f4reg && 
      k[1]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,453,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 128;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 349:		/* I8F8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8LT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,434,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 109;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 350:		/* I8F8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8LE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,438,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 113;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 351:		/* I8F8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8EQ(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,442,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 117;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 352:		/* I8F8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8NE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,446,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 121;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 353:		/* I8F8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8GE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,450,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 125;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 354:		/* I8F8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8F8GT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,454,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 129;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 355:		/* U8F8LT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8LT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,435,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 110;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 356:		/* U8F8LE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8LE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,439,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 114;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 357:		/* U8F8EQ */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8EQ(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,443,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 118;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 358:		/* U8F8NE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8NE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,447,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 122;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 359:		/* U8F8GE */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8GE(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,451,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 126;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 360:		/* U8F8GT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8F8GT(f8reg,f8reg) */
      k[0]->rule.burm_f8reg && 
      k[1]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,455,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 130;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 361:		/* I4I8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4I8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,286,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 220;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 362:		/* U4U8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4U8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,287,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 221;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 363:		/* I8I4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8I4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,288,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 3;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 364:		/* U8U4CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8U4CVT(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,289,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 4;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 365:		/* I8U8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8U8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,290,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 5;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 366:		/* U8I8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8I8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,291,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 6;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 367:		/* I4CVTL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: I4CVTL(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,282,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 218;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 368:		/* I8CVTL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: I8CVTL(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,284,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 1;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 369:		/* U4CVTL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg: U4CVTL(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,283,s) && COST_LESS(c,s->cost[burm_reg_NT])) {
        s->cost[burm_reg_NT] = c ;
        s->rule.burm_reg = 219;
        burm_closure_reg(s, c );
      }
    }
    break;
  case 370:		/* U8CVTL */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* reg64: U8CVTL(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,285,s) && COST_LESS(c,s->cost[burm_reg64_NT])) {
        s->cost[burm_reg64_NT] = c ;
        s->rule.burm_reg64 = 2;
        burm_closure_reg64(s, c );
      }
    }
    break;
  case 371:		/* F8U8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f8reg: F8U8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,293,s) && COST_LESS(c,s->cost[burm_f8reg_NT])) {
        s->cost[burm_f8reg_NT] = c ;
        s->rule.burm_f8reg = 21;
        burm_closure_f8reg(s, c );
      }
    }
    break;
  case 372:		/* F4U8CVT */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* f4reg: F4U8CVT(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,292,s) && COST_LESS(c,s->cost[burm_f4reg_NT])) {
        s->cost[burm_f4reg_NT] = c ;
        s->rule.burm_f4reg = 21;
        burm_closure_f4reg(s, c );
      }
    }
    break;
  case 373:		/* I4PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I4PARM(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,486,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 17;
        burm_closure_null(s, c );
      }
    }
    break;
  case 374:		/* U4PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U4PARM(reg) */
      k[0]->rule.burm_reg
    ) {
      if(burm_cost_code(&c,487,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 18;
        burm_closure_null(s, c );
      }
    }
    break;
  case 375:		/* I8PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: I8PARM(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,488,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 19;
        burm_closure_null(s, c );
      }
    }
    break;
  case 376:		/* U8PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: U8PARM(reg64) */
      k[0]->rule.burm_reg64
    ) {
      if(burm_cost_code(&c,489,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 20;
        burm_closure_null(s, c );
      }
    }
    break;
  case 377:		/* F4PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: F4PARM(f4reg) */
      k[0]->rule.burm_f4reg
    ) {
      if(burm_cost_code(&c,490,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 21;
        burm_closure_null(s, c );
      }
    }
    break;
  case 378:		/* F8PARM */
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=s->kids;
    children=GET_KIDS(u);
    for(i=0;i<arity;i++)
      k[i]=burm_label1(children[i]);
    if (   /* null: F8PARM(f8reg) */
      k[0]->rule.burm_f8reg
    ) {
      if(burm_cost_code(&c,491,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 22;
        burm_closure_null(s, c );
      }
    }
    break;
  case 379:		/* CALL */
#ifdef LEAF_TRAP
    if(s=LEAF_TRAP(u,op))
      return s;
#endif
    s=burm_alloc_state(u,op,arity);
    SET_STATE(u,s);
    k=0;
    {  		/* null: CALL */
      if(burm_cost_code(&c,492,s) && COST_LESS(c,s->cost[burm_null_NT])) {
        s->cost[burm_null_NT] = c ;
        s->rule.burm_null = 23;
        burm_closure_null(s, c );
      }
    }
    break;
  default:
    burm_assert(0, PANIC("Bad operator %d in burm_state\n", op));
  }
  return s;
}

struct burm_state *burm_label(NODEPTR p) {
  burm_label1(p);
  return ((struct burm_state *)STATE_LABEL(p))->rule.burm_expr ? STATE_LABEL(p) : 0;
}

void burm_free(struct burm_state *s)
{
  int i,arity=burm_arity[s->op];
  if(s->kids==0)
    free(s);
  else {
    for(i=0;i<arity;i++)
      burm_free(s->kids[i]);
    free(s->kids);
  }
}
struct burm_state *burm_immed(struct burm_state *s,int n)
{
  NODEPTR *children = GET_KIDS(s->node);
  if(s->kids[n])
    return s->kids[n];
  else
  return s->kids[n]=burm_label1(children[n]);
}
int burm_op_label(NODEPTR p) {
  burm_assert(p, PANIC("NULL tree in burm_op_label\n"));
  return OP_LABEL(p);
}

struct burm_state *burm_state_label(NODEPTR p) {
  burm_assert(p, PANIC("NULL tree in burm_state_label\n"));
  return STATE_LABEL(p);
}

NODEPTR burm_child(NODEPTR p, int index) {
  NODEPTR *kids;
  burm_assert(p, PANIC("NULL tree in burm_child\n"));
  kids=GET_KIDS(p);
  burm_assert((0<=index && index<burm_arity[OP_LABEL(p)]),
    PANIC("Bad index %d in burm_child\n", index));

  return kids[index];
}
NODEPTR *burm_kids(NODEPTR p, int eruleno, NODEPTR kids[]) {
  burm_assert(p, PANIC("NULL tree in burm_kids\n"));
  burm_assert(kids, PANIC("NULL kids in burm_kids\n"));
  switch (eruleno) {
  case 6: /* expr: uimm16 */
  case 5: /* expr: simm16 */
  case 4: /* expr: reg64 */
  case 3: /* expr: f8reg */
  case 2: /* expr: f4reg */
  case 1: /* expr: null */
  case 0: /* expr: reg */
    kids[0] = p;
    break;
  case 492: /* null: CALL */
  case 323: /* reg64: U8U2LDID */
  case 322: /* reg64: U8U1LDID */
  case 321: /* reg64: U8INTCONST */
  case 320: /* reg64: I8INTCONST */
  case 317: /* reg64: U8U8LDID */
  case 316: /* reg64: I8I8LDID */
  case 315: /* reg64: U8U4LDID */
  case 314: /* reg64: I8I4LDID */
  case 313: /* reg64: I8I2LDID */
  case 312: /* reg64: I8I1LDID */
  case 210: /* f8reg: F8F8LDID */
  case 196: /* f8reg: F8CONST */
  case 194: /* f4reg: F4F4LDID */
  case 180: /* f4reg: F4CONST */
  case 56: /* reg: U4U2LDID */
  case 55: /* reg: U4U1LDID */
  case 54: /* reg: U4INTCONST */
  case 53: /* reg: U4INTCONST */
  case 52: /* reg: I4INTCONST */
  case 51: /* reg: I4INTCONST */
  case 38: /* reg: U4U4LDID */
  case 37: /* reg: I4I4LDID */
  case 36: /* reg: I4I2LDID */
  case 35: /* reg: I4I1LDID */
  case 10: /* uimm16: U4INTCONST */
  case 9: /* simm16: I4INTCONST */
  case 8: /* expr: U8INTCONST */
  case 7: /* expr: I8INTCONST */
    break;
  case 491: /* null: F8PARM(f8reg) */
  case 490: /* null: F4PARM(f4reg) */
  case 489: /* null: U8PARM(reg64) */
  case 488: /* null: I8PARM(reg64) */
  case 487: /* null: U4PARM(reg) */
  case 486: /* null: I4PARM(reg) */
  case 325: /* reg64: U8BNOT(reg64) */
  case 324: /* reg64: I8BNOT(reg64) */
  case 319: /* null: U8STID(reg64) */
  case 318: /* null: I8STID(reg64) */
  case 298: /* reg64: U8ADD(reg64,U8INTCONST) */
  case 297: /* reg64: I8ADD(reg64,I8INTCONST) */
  case 296: /* reg64: U8NEG(reg64) */
  case 295: /* reg64: I8NEG(reg64) */
  case 294: /* reg64: I8ABS(reg64) */
  case 293: /* f8reg: F8U8CVT(reg64) */
  case 292: /* f4reg: F4U8CVT(reg64) */
  case 291: /* reg64: U8I8CVT(reg64) */
  case 290: /* reg64: I8U8CVT(reg64) */
  case 289: /* reg64: U8U4CVT(reg) */
  case 288: /* reg64: I8I4CVT(reg) */
  case 287: /* reg: U4U8CVT(reg64) */
  case 286: /* reg: I4I8CVT(reg64) */
  case 285: /* reg64: U8CVTL(reg64) */
  case 284: /* reg64: I8CVTL(reg64) */
  case 283: /* reg: U4CVTL(reg) */
  case 282: /* reg: I4CVTL(reg) */
  case 281: /* f8reg: F8F4CVT(f4reg) */
  case 280: /* f8reg: F8U4CVT(reg) */
  case 279: /* f8reg: F8I4CVT(reg) */
  case 278: /* f4reg: F4F8CVT(f8reg) */
  case 277: /* f4reg: F4U4CVT(reg) */
  case 276: /* f4reg: F4I4CVT(reg) */
  case 275: /* reg: U4F8FLOOR(f8reg) */
  case 274: /* reg: U4F4FLOOR(f4reg) */
  case 273: /* reg: U4F8CEIL(f8reg) */
  case 272: /* reg: U4F4CEIL(f4reg) */
  case 271: /* reg: U4F8TRUNC(f8reg) */
  case 270: /* reg: U4F4TRUNC(f4reg) */
  case 269: /* reg: U4F8CVT(f8reg) */
  case 268: /* reg: U4F4CVT(f4reg) */
  case 267: /* reg: U4F8RND(f8reg) */
  case 266: /* reg: U4F4RND(f4reg) */
  case 265: /* reg: I4F8FLOOR(f8reg) */
  case 264: /* reg: I4F4FLOOR(f4reg) */
  case 263: /* reg: I4F8CEIL(f8reg) */
  case 262: /* reg: I4F4CEIL(f4reg) */
  case 261: /* reg: I4F8TRUNC(f8reg) */
  case 260: /* reg: I4F4TRUNC(f4reg) */
  case 259: /* reg: I4F8CVT(f8reg) */
  case 258: /* reg: I4F4CVT(f4reg) */
  case 257: /* reg: I4F8RND(f8reg) */
  case 256: /* reg: I4F4RND(f4reg) */
  case 255: /* reg: U4I4CVT(reg) */
  case 254: /* reg: U4BCVT(reg) */
  case 253: /* reg: I4U4CVT(reg) */
  case 252: /* reg: I4BCVT(reg) */
  case 211: /* null: F8STID(f8reg) */
  case 198: /* f8reg: F8ABS(f8reg) */
  case 197: /* f8reg: F8NEG(f8reg) */
  case 195: /* null: F4STID(f4reg) */
  case 192: /* f4reg: F4ABS(f4reg) */
  case 191: /* f4reg: F4NEG(f4reg) */
  case 137: /* reg: I4ASHR(reg,I4INTCONST) */
  case 95: /* reg: BBNE(reg,BINTCONST) */
  case 93: /* reg: BBEQ(reg,BINTCONST) */
  case 78: /* reg: U4BXOR(reg,U4INTCONST) */
  case 77: /* reg: I4BXOR(reg,I4INTCONST) */
  case 73: /* reg: I4LIOR(reg,I4INTCONST) */
  case 72: /* reg: U4BIOR(reg,U4INTCONST) */
  case 71: /* reg: I4BIOR(reg,I4INTCONST) */
  case 67: /* reg: I4LAND(reg,I4INTCONST) */
  case 66: /* reg: U4BAND(reg,U4INTCONST) */
  case 65: /* reg: I4BAND(reg,I4INTCONST) */
  case 64: /* reg: I4LNOT(reg) */
  case 63: /* reg: U4BNOT(reg) */
  case 62: /* reg: I4BNOT(reg) */
  case 60: /* reg: BLIOR(reg,BINTCONST) */
  case 58: /* reg: BLAND(reg,BINTCONST) */
  case 57: /* reg: BLNOT(reg) */
  case 50: /* null: U4STID(reg64) */
  case 49: /* null: I4STID(reg64) */
  case 48: /* null: U4STID(reg) */
  case 47: /* null: I4STID(reg) */
  case 46: /* null: U2STID(reg64) */
  case 45: /* null: I2STID(reg64) */
  case 44: /* null: U2STID(reg) */
  case 43: /* null: I2STID(reg) */
  case 42: /* null: U1STID(reg64) */
  case 41: /* null: I1STID(reg64) */
  case 40: /* null: U1STID(reg) */
  case 39: /* null: I1STID(reg) */
  case 30: /* reg: U4SUB(reg,U4INTCONST) */
  case 23: /* reg: U4MPY(reg,U4INTCONST) */
  case 22: /* reg: I4MPY(reg,I4INTCONST) */
  case 17: /* reg: U4ADD(reg,U4INTCONST) */
  case 16: /* reg: I4ADD(reg,I4INTCONST) */
  case 13: /* reg: U4NEG(reg) */
  case 12: /* reg: I4NEG(reg) */
  case 11: /* reg: I4ABS(reg) */
    kids[0] = burm_child(p,0);
    break;
  case 485: /* reg64: I8ASHR(reg64,reg) */
  case 484: /* reg64: U8ASHR(reg64,reg) */
  case 483: /* reg64: U8LSHR(reg64,reg) */
  case 482: /* reg64: I8LSHR(reg64,reg) */
  case 481: /* reg64: U8SHL(reg64,reg) */
  case 480: /* reg64: I8SHL(reg64,reg) */
  case 479: /* reg64: U8U8GT(reg64,reg64) */
  case 478: /* reg64: I8U8GT(reg64,reg64) */
  case 477: /* reg64: U8U8GE(reg64,reg64) */
  case 476: /* reg64: I8U8GE(reg64,reg64) */
  case 475: /* reg64: U8U8NE(reg64,reg64) */
  case 474: /* reg64: I8U8NE(reg64,reg64) */
  case 473: /* reg64: U8U8EQ(reg64,reg64) */
  case 472: /* reg64: I8U8EQ(reg64,reg64) */
  case 471: /* reg64: U8U8LE(reg64,reg64) */
  case 470: /* reg64: I8U8LE(reg64,reg64) */
  case 469: /* reg64: U8U8LT(reg64,reg64) */
  case 468: /* reg64: I8U8LT(reg64,reg64) */
  case 467: /* reg64: U8I8GT(reg64,reg64) */
  case 466: /* reg64: I8I8GT(reg64,reg64) */
  case 465: /* reg64: U8I8GE(reg64,reg64) */
  case 464: /* reg64: I8I8GE(reg64,reg64) */
  case 463: /* reg64: U8I8NE(reg64,reg64) */
  case 462: /* reg64: I8I8NE(reg64,reg64) */
  case 461: /* reg64: U8I8EQ(reg64,reg64) */
  case 460: /* reg64: I8I8EQ(reg64,reg64) */
  case 459: /* reg64: U8I8LE(reg64,reg64) */
  case 458: /* reg64: I8I8LE(reg64,reg64) */
  case 457: /* reg64: U8I8LT(reg64,reg64) */
  case 456: /* reg64: I8I8LT(reg64,reg64) */
  case 455: /* reg64: U8F8GT(f8reg,f8reg) */
  case 454: /* reg64: I8F8GT(f8reg,f8reg) */
  case 453: /* reg64: U8F4GT(f4reg,f4reg) */
  case 452: /* reg64: I8F4GT(f4reg,f4reg) */
  case 451: /* reg64: U8F8GE(f8reg,f8reg) */
  case 450: /* reg64: I8F8GE(f8reg,f8reg) */
  case 449: /* reg64: U8F4GE(f4reg,f4reg) */
  case 448: /* reg64: I8F4GE(f4reg,f4reg) */
  case 447: /* reg64: U8F8NE(f8reg,f8reg) */
  case 446: /* reg64: I8F8NE(f8reg,f8reg) */
  case 445: /* reg64: U8F4NE(f4reg,f4reg) */
  case 444: /* reg64: I8F4NE(f4reg,f4reg) */
  case 443: /* reg64: U8F8EQ(f8reg,f8reg) */
  case 442: /* reg64: I8F8EQ(f8reg,f8reg) */
  case 441: /* reg64: U8F4EQ(f4reg,f4reg) */
  case 440: /* reg64: I8F4EQ(f4reg,f4reg) */
  case 439: /* reg64: U8F8LE(f8reg,f8reg) */
  case 438: /* reg64: I8F8LE(f8reg,f8reg) */
  case 437: /* reg64: U8F4LE(f4reg,f4reg) */
  case 436: /* reg64: I8F4LE(f4reg,f4reg) */
  case 435: /* reg64: U8F8LT(f8reg,f8reg) */
  case 434: /* reg64: I8F8LT(f8reg,f8reg) */
  case 433: /* reg64: U8F4LT(f4reg,f4reg) */
  case 432: /* reg64: I8F4LT(f4reg,f4reg) */
  case 431: /* reg64: U8U4GT(reg,reg) */
  case 430: /* reg64: I8U4GT(reg,reg) */
  case 429: /* reg64: U8U4GT(reg,simm16) */
  case 428: /* reg64: I8U4GT(reg,simm16) */
  case 427: /* reg64: U8U4GE(reg,reg) */
  case 426: /* reg64: I8U4GE(reg,reg) */
  case 425: /* reg64: U8U4GE(reg,simm16) */
  case 424: /* reg64: I8U4GE(reg,simm16) */
  case 423: /* reg64: U8U4NE(reg,reg) */
  case 422: /* reg64: I8U4NE(reg,reg) */
  case 421: /* reg64: U8U4NE(reg,simm16) */
  case 420: /* reg64: I8U4NE(reg,simm16) */
  case 419: /* reg64: U8U4EQ(reg,reg) */
  case 418: /* reg64: I8U4EQ(reg,reg) */
  case 417: /* reg64: U8U4EQ(reg,simm16) */
  case 416: /* reg64: I8U4EQ(reg,simm16) */
  case 415: /* reg64: U8U4LE(reg,reg) */
  case 414: /* reg64: I8U4LE(reg,reg) */
  case 413: /* reg64: U8U4LE(reg,simm16) */
  case 412: /* reg64: I8U4LE(reg,simm16) */
  case 411: /* reg64: U8U4LT(reg,reg) */
  case 410: /* reg64: I8U4LT(reg,reg) */
  case 409: /* reg64: U8U4LT(reg,simm16) */
  case 408: /* reg64: I8U4LT(reg,simm16) */
  case 407: /* reg64: U8I4GT(reg,reg) */
  case 406: /* reg64: I8I4GT(reg,reg) */
  case 405: /* reg64: U8I4GT(reg,simm16) */
  case 404: /* reg64: I8I4GT(reg,simm16) */
  case 403: /* reg64: U8I4GE(reg,reg) */
  case 402: /* reg64: I8I4GE(reg,reg) */
  case 401: /* reg64: U8I4GE(reg,simm16) */
  case 400: /* reg64: I8I4GE(reg,simm16) */
  case 399: /* reg64: U8I4NE(reg,reg) */
  case 398: /* reg64: I8I4NE(reg,reg) */
  case 397: /* reg64: U8I4NE(reg,simm16) */
  case 396: /* reg64: I8I4NE(reg,simm16) */
  case 395: /* reg64: U8I4EQ(reg,reg) */
  case 394: /* reg64: I8I4EQ(reg,reg) */
  case 393: /* reg64: U8I4EQ(reg,simm16) */
  case 392: /* reg64: I8I4EQ(reg,simm16) */
  case 391: /* reg64: U8I4LE(reg,reg) */
  case 390: /* reg64: I8I4LE(reg,reg) */
  case 389: /* reg64: U8I4LE(reg,simm16) */
  case 388: /* reg64: I8I4LE(reg,simm16) */
  case 387: /* reg64: U8I4LT(reg,reg) */
  case 386: /* reg64: I8I4LT(reg,reg) */
  case 385: /* reg64: U8I4LT(reg,simm16) */
  case 384: /* reg64: I8I4LT(reg,simm16) */
  case 383: /* reg64: U8MIN(reg64,reg64) */
  case 382: /* reg64: U8MAX(reg64,reg64) */
  case 381: /* reg: U4U8GT(reg64,reg64) */
  case 380: /* reg: I4U8GT(reg64,reg64) */
  case 379: /* reg: BU8GT(reg64,reg64) */
  case 378: /* reg: U4U8GE(reg64,reg64) */
  case 377: /* reg: I4U8GE(reg64,reg64) */
  case 376: /* reg: BU8GE(reg64,reg64) */
  case 375: /* reg: U4U8NE(reg64,reg64) */
  case 374: /* reg: I4U8NE(reg64,reg64) */
  case 373: /* reg: BU8NE(reg64,reg64) */
  case 372: /* reg: U4U8EQ(reg64,reg64) */
  case 371: /* reg: I4U8EQ(reg64,reg64) */
  case 370: /* reg: BU8EQ(reg64,reg64) */
  case 369: /* reg: U4U8LE(reg64,reg64) */
  case 368: /* reg: I4U8LE(reg64,reg64) */
  case 367: /* reg: BU8LE(reg64,reg64) */
  case 366: /* reg: U4U8LT(reg64,reg64) */
  case 365: /* reg: I4U8LT(reg64,reg64) */
  case 364: /* reg: BU8LT(reg64,reg64) */
  case 363: /* reg64: I8MIN(reg64,reg64) */
  case 362: /* reg64: I8MAX(reg64,reg64) */
  case 361: /* reg: U4I8GT(reg64,reg64) */
  case 360: /* reg: I4I8GT(reg64,reg64) */
  case 359: /* reg: BI8GT(reg64,reg64) */
  case 358: /* reg: U4I8GE(reg64,reg64) */
  case 357: /* reg: I4I8GE(reg64,reg64) */
  case 356: /* reg: BI8GE(reg64,reg64) */
  case 355: /* reg: U4I8NE(reg64,reg64) */
  case 354: /* reg: I4I8NE(reg64,reg64) */
  case 353: /* reg: BI8NE(reg64,reg64) */
  case 352: /* reg: U4I8EQ(reg64,reg64) */
  case 351: /* reg: I4I8EQ(reg64,reg64) */
  case 350: /* reg: BI8EQ(reg64,reg64) */
  case 349: /* reg: U4I8LE(reg64,reg64) */
  case 348: /* reg: I4I8LE(reg64,reg64) */
  case 347: /* reg: BI8LE(reg64,reg64) */
  case 346: /* reg: U4I8LT(reg64,reg64) */
  case 345: /* reg: I4I8LT(reg64,reg64) */
  case 344: /* reg: BI8LT(reg64,reg64) */
  case 333: /* reg64: U8BNOR(reg64,reg64) */
  case 332: /* reg64: I8BNOR(reg64,reg64) */
  case 331: /* reg64: U8BXOR(reg64,reg64) */
  case 330: /* reg64: I8BXOR(reg64,reg64) */
  case 329: /* reg64: U8BIOR(reg64,reg64) */
  case 328: /* reg64: I8BIOR(reg64,reg64) */
  case 327: /* reg64: U8BAND(reg64,reg64) */
  case 326: /* reg64: I8BAND(reg64,reg64) */
  case 311: /* reg64: U8MOD(reg64,reg64) */
  case 310: /* reg64: U8REM(reg64,reg64) */
  case 309: /* reg64: U8HIGHMPY(reg64,reg64) */
  case 308: /* reg64: I8MOD(reg64,reg64) */
  case 307: /* reg64: I8REM(reg64,reg64) */
  case 306: /* reg64: I8DIV(reg64,reg64) */
  case 305: /* reg64: I8HIGHMPY(reg64,reg64) */
  case 304: /* reg64: U8MPY(reg64,reg64) */
  case 303: /* reg64: I8MPY(reg64,reg64) */
  case 302: /* reg64: U8SUB(reg64,reg64) */
  case 301: /* reg64: I8SUB(reg64,reg64) */
  case 300: /* reg64: U8ADD(reg64,reg64) */
  case 299: /* reg64: I8ADD(reg64,reg64) */
  case 251: /* f8reg: F8MIN(f8reg,f8reg) */
  case 250: /* f8reg: F8MAX(f8reg,f8reg) */
  case 249: /* f4reg: F4MIN(f4reg,f4reg) */
  case 248: /* f4reg: F4MAX(f4reg,f4reg) */
  case 247: /* reg: U4F8GT(f8reg,f8reg) */
  case 246: /* reg: I4F8GT(f8reg,f8reg) */
  case 245: /* reg: BF8GT(f8reg,f8reg) */
  case 244: /* reg: U4F4GT(f4reg,f4reg) */
  case 243: /* reg: I4F4GT(f4reg,f4reg) */
  case 242: /* reg: BF4GT(f4reg,f4reg) */
  case 241: /* reg: U4F8GE(f8reg,f8reg) */
  case 240: /* reg: I4F8GE(f8reg,f8reg) */
  case 239: /* reg: BF8GE(f8reg,f8reg) */
  case 238: /* reg: U4F4GE(f4reg,f4reg) */
  case 237: /* reg: I4F4GE(f4reg,f4reg) */
  case 236: /* reg: BF4GE(f4reg,f4reg) */
  case 235: /* reg: U4F8NE(f8reg,f8reg) */
  case 234: /* reg: I4F8NE(f8reg,f8reg) */
  case 233: /* reg: BF8NE(f8reg,f8reg) */
  case 232: /* reg: U4F4NE(f4reg,f4reg) */
  case 231: /* reg: I4F4NE(f4reg,f4reg) */
  case 230: /* reg: BF4NE(f4reg,f4reg) */
  case 229: /* reg: U4F8EQ(f8reg,f8reg) */
  case 228: /* reg: I4F8EQ(f8reg,f8reg) */
  case 227: /* reg: BF8EQ(f8reg,f8reg) */
  case 226: /* reg: U4F4EQ(f4reg,f4reg) */
  case 225: /* reg: I4F4EQ(f4reg,f4reg) */
  case 224: /* reg: BF4EQ(f4reg,f4reg) */
  case 223: /* reg: U4F8LE(f8reg,f8reg) */
  case 222: /* reg: I4F8LE(f8reg,f8reg) */
  case 221: /* reg: BF8LE(f8reg,f8reg) */
  case 220: /* reg: U4F4LE(f4reg,f4reg) */
  case 219: /* reg: I4F4LE(f4reg,f4reg) */
  case 218: /* reg: BF4LE(f4reg,f4reg) */
  case 217: /* reg: U4F8LT(f8reg,f8reg) */
  case 216: /* reg: I4F8LT(f8reg,f8reg) */
  case 215: /* reg: BF8LT(f8reg,f8reg) */
  case 214: /* reg: U4F4LT(f4reg,f4reg) */
  case 213: /* reg: I4F4LT(f4reg,f4reg) */
  case 212: /* reg: BF4LT(f4reg,f4reg) */
  case 203: /* f8reg: F8DIV(f8reg,f8reg) */
  case 202: /* f8reg: F8MPY(f8reg,f8reg) */
  case 201: /* f8reg: F8SUB(f8reg,f8reg) */
  case 200: /* f8reg: F8ADD(f8reg,f8reg) */
  case 184: /* f4reg: F4DIV(f4reg,f4reg) */
  case 183: /* f4reg: F4MPY(f4reg,f4reg) */
  case 182: /* f4reg: F4SUB(f4reg,f4reg) */
  case 181: /* f4reg: F4ADD(f4reg,f4reg) */
  case 179: /* reg: U4MIN(reg,reg) */
  case 178: /* reg: U4MAX(reg,reg) */
  case 177: /* reg: U4U4GT(reg,reg) */
  case 176: /* reg: I4U4GT(reg,reg) */
  case 175: /* reg: BU4GT(reg,reg) */
  case 174: /* reg: U4U4GT(reg,uimm16) */
  case 173: /* reg: I4U4GT(reg,uimm16) */
  case 172: /* reg: BU4GT(reg,uimm16) */
  case 171: /* reg: U4U4GE(reg,reg) */
  case 170: /* reg: I4U4GE(reg,reg) */
  case 169: /* reg: BU4GE(reg,reg) */
  case 168: /* reg: U4U4GE(reg,uimm16) */
  case 167: /* reg: I4U4GE(reg,uimm16) */
  case 166: /* reg: BU4GE(reg,uimm16) */
  case 165: /* reg: U4U4NE(reg,reg) */
  case 164: /* reg: I4U4NE(reg,reg) */
  case 163: /* reg: BU4NE(reg,reg) */
  case 162: /* reg: U4U4NE(reg,uimm16) */
  case 161: /* reg: I4U4NE(reg,uimm16) */
  case 160: /* reg: BU4NE(reg,uimm16) */
  case 159: /* reg: U4U4EQ(reg,reg) */
  case 158: /* reg: I4U4EQ(reg,reg) */
  case 157: /* reg: BU4EQ(reg,reg) */
  case 156: /* reg: U4U4EQ(reg,uimm16) */
  case 155: /* reg: I4U4EQ(reg,uimm16) */
  case 154: /* reg: BU4EQ(reg,uimm16) */
  case 153: /* reg: U4U4LE(reg,reg) */
  case 152: /* reg: I4U4LE(reg,reg) */
  case 151: /* reg: BU4LE(reg,reg) */
  case 150: /* reg: U4U4LE(reg,uimm16) */
  case 149: /* reg: I4U4LE(reg,uimm16) */
  case 148: /* reg: BU4LE(reg,uimm16) */
  case 147: /* reg: U4U4LT(reg,reg) */
  case 146: /* reg: I4U4LT(reg,reg) */
  case 145: /* reg: BU4LT(reg,reg) */
  case 144: /* reg: U4U4LT(reg,uimm16) */
  case 143: /* reg: I4U4LT(reg,uimm16) */
  case 142: /* reg: BU4LT(reg,uimm16) */
  case 141: /* reg: U4ASHR(reg,reg) */
  case 140: /* reg: U4LSHR(reg,reg) */
  case 139: /* reg: I4LSHR(reg,reg) */
  case 138: /* reg: I4ASHR(reg,reg) */
  case 136: /* reg: U4SHL(reg,reg) */
  case 135: /* reg: I4SHL(reg,reg) */
  case 134: /* reg: I4MIN(reg,reg) */
  case 133: /* reg: I4MAX(reg,reg) */
  case 132: /* reg: U4I4GT(reg,reg) */
  case 131: /* reg: I4I4GT(reg,reg) */
  case 130: /* reg: BI4GT(reg,reg) */
  case 129: /* reg: U4I4GT(reg,simm16) */
  case 128: /* reg: I4I4GT(reg,simm16) */
  case 127: /* reg: BI4GT(reg,simm16) */
  case 126: /* reg: U4I4GE(reg,reg) */
  case 125: /* reg: I4I4GE(reg,reg) */
  case 124: /* reg: BI4GE(reg,reg) */
  case 123: /* reg: U4I4GE(reg,simm16) */
  case 122: /* reg: I4I4GE(reg,simm16) */
  case 121: /* reg: BI4GE(reg,simm16) */
  case 120: /* reg: U4I4NE(reg,reg) */
  case 119: /* reg: I4I4NE(reg,reg) */
  case 118: /* reg: BI4NE(reg,reg) */
  case 117: /* reg: U4I4NE(reg,simm16) */
  case 116: /* reg: I4I4NE(reg,simm16) */
  case 115: /* reg: BI4NE(reg,simm16) */
  case 114: /* reg: U4I4EQ(reg,reg) */
  case 113: /* reg: I4I4EQ(reg,reg) */
  case 112: /* reg: BI4EQ(reg,reg) */
  case 111: /* reg: U4I4EQ(reg,simm16) */
  case 110: /* reg: I4I4EQ(reg,simm16) */
  case 109: /* reg: BI4EQ(reg,simm16) */
  case 108: /* reg: U4I4LE(reg,reg) */
  case 107: /* reg: I4I4LE(reg,reg) */
  case 106: /* reg: BI4LE(reg,reg) */
  case 105: /* reg: U4I4LE(reg,simm16) */
  case 104: /* reg: I4I4LE(reg,simm16) */
  case 103: /* reg: BI4LE(reg,simm16) */
  case 102: /* reg: U4I4LT(reg,reg) */
  case 101: /* reg: I4I4LT(reg,reg) */
  case 100: /* reg: BI4LT(reg,reg) */
  case 99: /* reg: U4I4LT(reg,simm16) */
  case 98: /* reg: I4I4LT(reg,simm16) */
  case 97: /* reg: BI4LT(reg,simm16) */
  case 96: /* reg: BBNE(reg,reg) */
  case 94: /* reg: BBEQ(reg,reg) */
  case 82: /* reg: U4BNOR(reg,reg) */
  case 81: /* reg: I4BNOR(reg,reg) */
  case 80: /* reg: U4BXOR(reg,reg) */
  case 79: /* reg: I4BXOR(reg,reg) */
  case 76: /* reg: I4LIOR(reg,reg) */
  case 75: /* reg: U4BIOR(reg,reg) */
  case 74: /* reg: I4BIOR(reg,reg) */
  case 70: /* reg: I4LAND(reg,reg) */
  case 69: /* reg: U4BAND(reg,reg) */
  case 68: /* reg: I4BAND(reg,reg) */
  case 61: /* reg: BLIOR(reg,reg) */
  case 59: /* reg: BLAND(reg,reg) */
  case 34: /* reg: U4MOD(reg,reg) */
  case 33: /* reg: U4REM(reg,reg) */
  case 32: /* reg: U4DIV(reg,reg) */
  case 31: /* reg: U4HIGHMPY(reg,reg) */
  case 29: /* reg: I4MOD(reg,reg) */
  case 28: /* reg: I4REM(reg,reg) */
  case 27: /* reg: I4DIV(reg,reg) */
  case 26: /* reg: I4HIGHMPY(reg,reg) */
  case 25: /* reg: U4MPY(reg,reg) */
  case 24: /* reg: I4MPY(reg,reg) */
  case 19: /* reg: U4SUB(reg,reg) */
  case 18: /* reg: I4SUB(reg,reg) */
  case 15: /* reg: U4ADD(reg,reg) */
  case 14: /* reg: I4ADD(reg,reg) */
    kids[0] = burm_child(p,0);
    kids[1] = burm_child(p,1);
    break;
  case 21: /* reg: U4SUB(U4INTCONST,reg) */
  case 20: /* reg: I4SUB(I4INTCONST,reg) */
    kids[0] = burm_child(p,1);
    break;
  case 339: /* reg64: U8BNOT(U8BXOR(reg64,reg64)) */
  case 338: /* reg64: I8BNOT(I8BXOR(reg64,reg64)) */
  case 337: /* reg64: U8BNOT(U8BIOR(reg64,reg64)) */
  case 336: /* reg64: I8BNOT(I8BIOR(reg64,reg64)) */
  case 335: /* reg64: U8BNOT(U8BAND(reg64,reg64)) */
  case 334: /* reg64: I8BNOT(I8BAND(reg64,reg64)) */
  case 88: /* reg: U4BNOT(U4BXOR(reg,reg)) */
  case 87: /* reg: I4BNOT(I4BXOR(reg,reg)) */
  case 86: /* reg: U4BNOT(U4BIOR(reg,reg)) */
  case 85: /* reg: I4BNOT(I4BIOR(reg,reg)) */
  case 84: /* reg: U4BNOT(U4BAND(reg,reg)) */
  case 83: /* reg: I4BNOT(I4BAND(reg,reg)) */
    kids[0] = burm_child(burm_child(p,0),0);
    kids[1] = burm_child(burm_child(p,0),1);
    break;
  case 343: /* reg64: U8BIOR(reg64,U8BNOT(reg64)) */
  case 342: /* reg64: I8BIOR(reg64,I8BNOT(reg64)) */
  case 341: /* reg64: U8BAND(reg64,U8BNOT(reg64)) */
  case 340: /* reg64: I8BAND(reg64,I8BNOT(reg64)) */
  case 92: /* reg: U4BIOR(reg,U4BNOT(reg)) */
  case 91: /* reg: I4BIOR(reg,I4BNOT(reg)) */
  case 90: /* reg: U4BAND(reg,U4BNOT(reg)) */
  case 89: /* reg: I4BAND(reg,I4BNOT(reg)) */
    kids[0] = burm_child(p,0);
    kids[1] = burm_child(burm_child(p,1),0);
    break;
  case 208: /* f8reg: F8NMSUB(f8reg,f8reg,f8reg) */
  case 207: /* f8reg: F8MSUB(f8reg,f8reg,f8reg) */
  case 205: /* f8reg: F8NMADD(f8reg,f8reg,f8reg) */
  case 204: /* f8reg: F8MADD(f8reg,f8reg,f8reg) */
  case 189: /* f4reg: F4NMSUB(f4reg,f4reg,f4reg) */
  case 188: /* f4reg: F4MSUB(f4reg,f4reg,f4reg) */
  case 186: /* f4reg: F4NMADD(f4reg,f4reg,f4reg) */
  case 185: /* f4reg: F4MADD(f4reg,f4reg,f4reg) */
    kids[0] = burm_child(p,0);
    kids[1] = burm_child(p,1);
    kids[2] = burm_child(p,2);
    break;
  case 209: /* f8reg: F8NEG(F8MSUB(f8reg,f8reg,f8reg)) */
  case 206: /* f8reg: F8NEG(F8MADD(f8reg,f8reg,f8reg)) */
  case 190: /* f4reg: F4NEG(F4MSUB(f4reg,f4reg,f4reg)) */
  case 187: /* f4reg: F4NEG(F4MADD(f4reg,f4reg,f4reg)) */
    kids[0] = burm_child(burm_child(p,0),0);
    kids[1] = burm_child(burm_child(p,0),1);
    kids[2] = burm_child(burm_child(p,0),2);
    break;
  case 199: /* f8reg: F8NEG(F8ABS(f8reg)) */
  case 193: /* f4reg: F4NEG(F4ABS(f4reg)) */
    kids[0] = burm_child(burm_child(p,0),0);
    break;
  default:
    burm_assert(0, PANIC("Bad external rule number %d in burm_kids\n", eruleno));
  }
  return kids;
}

void dumpCover(NODEPTR p, int goalnt, int indent)
{
  int eruleno = burm_rule(STATE_LABEL(p), goalnt);
  short *nts = burm_nts[eruleno];
  NODEPTR kids[10];
  int i;

  fprintf(stderr, "\t\t");
  for (i = 0; i < indent; i++)
    fprintf(stderr, " ");
  fprintf(stderr, "%s\n", burm_string[eruleno]);
  burm_kids(p, eruleno, kids);
  for (i = 0; nts[i]; i++)
    dumpCover(kids[i], nts[i], indent + 1);
}

/* line 3607 ../../be/cg/ppc32/olive_expand_expr.brg */


extern void Add_TN_Pair(TN* key, TN* pair);
extern TN* Get_TN_Pair(TN* key);

TN * Burm_Expand_Expr (WN *expr, WN *parent, TN *result, INTRINSIC intrn_id)
{
    TREE  ptree = new olive_node(expr, parent, result, intrn_id);
    STATE state = new burm_state;
    
    SET_STATE(ptree, state);    
    if (burm_label(ptree) == 0) {
        printf("\n\nERROR: olive no cover\n\n\n");
        dump_tree(expr);
    } else {
        expr_action(ptree->state_label(), &New_OPs);
    }
    if (result == NULL) {  
        result = ptree->result;  
    }
    if (ptree->result_high != NULL && Get_TN_Pair(result) == NULL) {
        Add_TN_Pair(result, ptree->result_high);
    }
    delete ptree;   // ptree->result is still valid  
    delete state;
    Set_OP_To_WN_Map(expr);
    return result;    
}

