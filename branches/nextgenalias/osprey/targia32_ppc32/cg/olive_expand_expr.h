#ifndef __OLIVE_HEADER_INCLUDED__
#define __OLIVE_HEADER_INCLUDED__
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

#define burm_expr_NT 1
#define burm_null_NT 2
#define burm_reg_NT 3
#define burm_simm16_NT 4
#define burm_uimm16_NT 5
#define burm_f4reg_NT 6
#define burm_f8reg_NT 7
#define burm_reg64_NT 8
extern int burm_max_nt;

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

struct burm_state *burm_label(NODEPTR);
struct burm_state *burm_label1(NODEPTR);

void dumpCover(NODEPTR,int,int);

#endif
