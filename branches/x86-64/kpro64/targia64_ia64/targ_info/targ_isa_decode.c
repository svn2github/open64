#include "topcode.h"
#include "targ_isa_bundle.h"
#include "targ_isa_pack.h"
#include "targ_isa_decode.h"


static const mUINT16 state_indirect_predict_tab[64] = {
   314,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
    30,   31,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_indirect_branch_tab[8] = {
    12,   16,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_indirect_return_tab[64] = {
   759,  759,  759,  759,   15,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_misc_branch_tab[64] = {
    23,  759,  117,  759,   39,   40,  759,  759,
   390,  759,  759,  759,   32,   33,  759,  759,
   126,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   760,  761,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_relative_branch_tab[8] = {
    11,  759,   21,   20,  759,   17,   19,   18,
};

static const mUINT16 state_branch_tab[16] = {
   761,   14,  760,  759,  762,   13,  759,   29,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_fma_8_tab[2] = {
   154,  155,
};

static const mUINT16 state_fma_9_tab[2] = {
   156,  187,
};

static const mUINT16 state_fma_a_tab[2] = {
   165,  166,
};

static const mUINT16 state_fma_b_tab[2] = {
   167,  193,
};

static const mUINT16 state_fma_c_tab[2] = {
   168,  169,
};

static const mUINT16 state_fma_d_tab[2] = {
   170,  194,
};

static const mUINT16 state_fp_class_tab[2] = {
   135,  136,
};

static const mUINT16 state_fp_compare_00_tab[2] = {
   138,  139,
};

static const mUINT16 state_fp_compare_01_tab[2] = {
   140,  141,
};

static const mUINT16 state_fp_compare_0_tab[2] = {
   760,  761,
};

static const mUINT16 state_fp_compare_10_tab[2] = {
   142,  143,
};

static const mUINT16 state_fp_compare_11_tab[2] = {
   144,  145,
};

static const mUINT16 state_fp_compare_1_tab[2] = {
   760,  761,
};

static const mUINT16 state_fp_compare_tab[2] = {
   760,  761,
};

static const mUINT16 state_fp_misc_00_tab[64] = {
    25,  316,  759,  759,  200,  137,  759,  759,
   134,  759,  759,  759,  759,  759,  759,  759,
   159,  158,  160,  759,  161,  157,  130,  129,
   146,  148,  147,  149,  150,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   172,  759,  759,  759,  131,  132,  171,  207,
   759,  759,  759,  759,  201,  202,  203,  759,
   759,  164,  163,  162,  205,  204,  759,  759,
};

static const mUINT16 state_fp_misc_01_tab[2] = {
   197,  198,
};

static const mUINT16 state_fp_misc_0_tab[2] = {
   760,  761,
};

static const mUINT16 state_fp_misc_10_tab[64] = {
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   190,  189,  191,  759,  192,  188,  174,  173,
   183,  185,  184,  186,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   175,  176,  177,  178,  179,  180,  181,  182,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_fp_misc_11_tab[2] = {
   195,  196,
};

static const mUINT16 state_fp_misc_1_tab[2] = {
   760,  761,
};

static const mUINT16 state_fselect_tab[8] = {
   199,  199,  199,  199,  464,  759,  466,  465,
};

static const mUINT16 state_floating_tab[16] = {
   768,  769,  759,  759,  767,  766,  759,  759,
   760,  761,  762,  763,  764,  765,  770,  759,
};

static const mUINT16 state_integer_alu_tab[64] = {
     0,    1,  759,  759,  427,  426,  759,  759,
     4,  759,  759,  759,    7,    9,  318,  467,
   398,  398,  398,  398,  759,  759,  759,  759,
   399,  399,  399,  399,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  428,  759,  759,
   759,  759,  759,  759,    8,   10,  319,  468,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mm_alu_1_2_tab[128] = {
   323,  324,  326,  325,  375,  378,  380,  379,
   759,  759,  332,  333,  759,  759,  336,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  338,  339,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   327,  328,  330,  329,  376,  381,  383,  382,
   759,  759,  334,  335,  759,  759,  337,  759,
   365,  365,  365,  365,  759,  759,  759,  759,
   374,  374,  374,  374,  759,  759,  759,  759,
   759,  759,  759,  759,  340,  341,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mm_alu_4_tab[64] = {
   331,  759,  759,  759,  377,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  342,  343,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mm_alu_tab[2] = {
   760,  761,
};

static const mUINT16 state_alu_mm_tab[8] = {
   760,  759,  762,  762,    2,  759,    5,  759,
};

static const mUINT16 state_compare_c0_tab[16] = {
    49,   43,   85,   79,   73,   67,  109,  103,
    59,   62,   95,   98,   73,   67,  109,  103,
};

static const mUINT16 state_compare_c1_tab[16] = {
    50,   46,   86,   82,   74,   70,  110,  106,
    56,   53,   92,   89,   74,   70,  110,  106,
};

static const mUINT16 state_compare_c_tab[2] = {
   760,  761,
};

static const mUINT16 state_compare_d0_tab[16] = {
    51,   44,   87,   80,   75,   68,  111,  104,
    60,   63,   96,   99,   75,   68,  111,  104,
};

static const mUINT16 state_compare_d1_tab[16] = {
    52,   47,   88,   83,   76,   71,  112,  107,
    57,   54,   93,   90,   76,   71,  112,  107,
};

static const mUINT16 state_compare_d_tab[2] = {
   760,  761,
};

static const mUINT16 state_compare_e0_tab[16] = {
    41,   45,   77,   81,   65,   69,  101,  105,
    61,   64,   97,  100,   65,   69,  101,  105,
};

static const mUINT16 state_compare_e1_tab[16] = {
    42,   48,   78,   84,   66,   72,  102,  108,
    58,   55,   94,   91,   66,   72,  102,  108,
};

static const mUINT16 state_compare_e_tab[2] = {
   760,  761,
};

static const mUINT16 state_alu_tab[8] = {
   760,    3,  759,  759,  761,  762,  763,  759,
};

static const mUINT16 state_misc_0_tab[64] = {
    22,  313,  759,  759,  759,  759,  759,  759,
   759,  759,  278,  759,  759,  759,  759,  759,
   469,  470,  471,  759,  430,  431,  432,  759,
   118,  120,  759,  759,  119,  121,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  277,  759,  759,  759,  759,  759,
   302,  282,  276,  303,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_move_to_br_tab[2] = {
   283,  284,
};

static const mUINT16 state_misc_tab[8] = {
   760,   34,  305,  304,  759,  759,  759,  761,
};

static const mUINT16 state_movl_tab[2] = {
   310,  759,
};

static const mUINT16 state_mpy_shift_10_tab[16] = {
   321,  759,  320,  347,  457,  759,  456,  345,
   273,  759,  272,  759,  759,  348,  759,  349,
};

static const mUINT16 state_mpy_shift_12_tab[16] = {
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  311,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_14_tab[16] = {
   759,  759,  759,  759,  759,  363,  759,  759,
   759,  759,  312,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_16_tab[16] = {
   369,  759,  368,  759,  362,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_18_tab[16] = {
   401,  759,  400,  759,  397,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_2_tab[16] = {
   367,  351,  366,  350,  361,  351,  759,  350,
   759,  351,  759,  350,  759,  351,  759,  350,
};

static const mUINT16 state_mpy_shift_20_tab[16] = {
   759,  373,  759,  372,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_24_tab[16] = {
   759,  759,  322,  759,  459,  759,  458,  759,
   275,  759,  274,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_28_tab[16] = {
   759,  759,  759,  759,  759,  364,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_6_tab[16] = {
   759,  371,  759,  370,  759,  759,  759,  759,
   759,  352,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_8_tab[16] = {
   759,  346,  759,  759,  455,  344,  454,  759,
   271,  759,  270,  360,  759,  759,  759,  759,
};

static const mUINT16 state_mpy_shift_tab[32] = {
   759,  759,  765,  759,  759,  759,  769,  759,
   770,  759,  760,  759,  761,  759,  762,  759,
   763,  759,  764,  759,  766,  759,  759,  759,
   767,  759,  759,  759,  768,  759,  759,  759,
};

static const mUINT16 state_deposit_tab[2] = {
   123,  125,
};

static const mUINT16 state_extract_tab[2] = {
   128,  127,
};

static const mUINT16 state_tbit_tnat_00_tab[4] = {
   435,  436,  444,  445,
};

static const mUINT16 state_tbit_tnat_01_tab[4] = {
   437,  440,  446,  449,
};

static const mUINT16 state_tbit_tnat_0_tab[2] = {
   760,  761,
};

static const mUINT16 state_tbit_tnat_10_tab[4] = {
   438,  441,  447,  450,
};

static const mUINT16 state_tbit_tnat_11_tab[4] = {
   439,  442,  448,  451,
};

static const mUINT16 state_tbit_tnat_1_tab[2] = {
   760,  761,
};

static const mUINT16 state_shift_test_tab[8] = {
   762,  763,  761,  760,  759,  759,  402,  124,
};

static const mUINT16 state_integer_tab[8] = {
   760,  759,  759,  759,  122,  763,  761,  762,
};

static const mUINT16 state_integer_or_alu_tab[2] = {
   761,  760,
};

static const mUINT16 state_misc_lx_tab[64] = {
    26,  317,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_lx_unit_tab[16] = {
   760,  759,  759,  759,  759,  759,  310,  759,
   759,  759,  759,  759,   27,   28,  759,  759,
};

static const mUINT16 state_fp_load_pair_nobase_tab[64] = {
   759,  253,  249,  251,  759,  253,  249,  251,
   759,  253,  249,  251,  759,  253,  249,  251,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  396,  395,  393,  394,
   759,  253,  249,  251,  759,  253,  249,  251,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_fp_load_store_nobase_tab[64] = {
   240,  243,  234,  237,  240,  243,  234,  237,
   240,  243,  234,  237,  240,  243,  234,  237,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  246,  759,  759,  759,  759,
   240,  243,  234,  237,  240,  243,  234,  237,
   759,  759,  759,  759,  255,  256,  257,  258,
   420,  422,  416,  418,  759,  759,  759,  759,
   759,  759,  759,  424,  759,  759,  759,  759,
};

static const mUINT16 state_fp_load_store_0_tab[2] = {
   761,  760,
};

static const mUINT16 state_fp_load_pair_imm_tab[64] = {
   759,  254,  250,  252,  759,  254,  250,  252,
   759,  254,  250,  252,  759,  254,  250,  252,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  254,  250,  252,  759,  254,  250,  252,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_fp_load_reg_tab[64] = {
   241,  244,  235,  238,  241,  244,  235,  238,
   241,  244,  235,  238,  241,  244,  235,  238,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  247,  759,  759,  759,  759,
   241,  244,  235,  238,  241,  244,  235,  238,
   759,  759,  759,  759,  259,  260,  261,  262,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_fp_load_store_1_tab[2] = {
   761,  760,
};

static const mUINT16 state_fp_load_store_tab[2] = {
   760,  761,
};

static const mUINT16 state_fp_load_store_imm_tab[64] = {
   242,  245,  236,  239,  242,  245,  236,  239,
   242,  245,  236,  239,  242,  245,  236,  239,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  248,  759,  759,  759,  759,
   242,  245,  236,  239,  242,  245,  236,  239,
   759,  759,  759,  759,  263,  264,  265,  266,
   421,  423,  417,  419,  759,  759,  759,  759,
   759,  759,  759,  425,  759,  759,  759,  759,
};

static const mUINT16 state_int_load_store_nobase_tab[64] = {
   219,  222,  225,  228,  219,  222,  225,  228,
   219,  222,  225,  228,  219,  222,  225,  228,
   219,  222,  225,  228,  219,  222,  225,  228,
   759,  759,  759,  231,  759,  759,  759,  759,
   219,  222,  225,  228,  219,  222,  225,  228,
   219,  222,  225,  228,  759,  759,  759,  759,
   406,  408,  410,  412,  406,  408,  410,  412,
   759,  759,  759,  414,  759,  759,  759,  759,
};

static const mUINT16 state_sem_get_fr_tab[64] = {
   113,  114,  115,  116,  113,  114,  115,  116,
   460,  461,  462,  463,  759,  759,  759,  759,
   759,  759,  151,  152,  759,  759,  151,  152,
   759,  759,  759,  759,  211,  210,  208,  209,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_int_load_store_0_tab[2] = {
   760,  761,
};

static const mUINT16 state_int_load_store_reg_tab[64] = {
   220,  223,  226,  229,  220,  223,  226,  229,
   220,  223,  226,  229,  220,  223,  226,  229,
   220,  223,  226,  229,  220,  223,  226,  229,
   759,  759,  759,  232,  759,  759,  759,  759,
   220,  223,  226,  229,  220,  223,  226,  229,
   220,  223,  226,  229,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_int_load_store_1_tab[2] = {
   760,  759,
};

static const mUINT16 state_int_load_store_tab[2] = {
   760,  761,
};

static const mUINT16 state_int_load_store_imm_tab[64] = {
   221,  224,  227,  230,  221,  224,  227,  230,
   221,  224,  227,  230,  221,  224,  227,  230,
   221,  224,  227,  230,  221,  224,  227,  230,
   759,  759,  759,  233,  759,  759,  759,  759,
   221,  224,  227,  230,  221,  224,  227,  230,
   221,  224,  227,  230,  759,  759,  759,  759,
   407,  409,  411,  413,  407,  409,  411,  413,
   759,  759,  759,  415,  759,  759,  759,  759,
};

static const mUINT16 state_sys_mem_00_tab[64] = {
    24,  315,  759,  759,  429,  392,  405,  391,
   759,  759,  267,  759,  153,  759,  759,  759,
   212,  759,  213,  214,  429,  392,  405,  391,
   759,  759,  759,  759,  759,  759,  759,  759,
   206,  759,  268,  269,  429,  392,  405,  391,
   281,  759,  759,  759,  759,  759,  759,  759,
   404,  403,  759,  433,  429,  392,  405,  391,
   759,  759,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_sys_mem_0_tab[8] = {
   760,  759,  759,  759,   37,   37,   38,   38,
};

static const mUINT16 state_sys_mem_10_tab[64] = {
   300,  288,  290,  294,  296,  298,  292,  759,
   759,  387,  385,  386,  388,  389,  218,  217,
   301,  289,  291,  295,  297,  299,  293,  287,
   355,  356,  443,  453,  759,  759,  452,  434,
   759,  309,  279,  759,  286,  307,  759,  759,
   759,  308,  280,  759,  285,  306,  216,  215,
   133,  359,  357,  358,  384,  759,  759,  759,
   353,  354,  759,  759,  759,  759,  759,  759,
};

static const mUINT16 state_sys_mem_1_tab[8] = {
   760,   35,  759,   36,  759,  759,    6,  759,
};

static const mUINT16 state_memory_tab[8] = {
   764,  765,  759,  759,  762,  763,  760,  761,
};

static const mUINT16 state_memory_or_alu_tab[2] = {
   761,  760,
};

static const mUINT16 state_ex_unit_tab[8] = {
   759,  762,  764,  760,  761,  763,  759,  759,
};

TOP ISA_Decode_Inst(const ISA_PACK_INST *pinst, ISA_EXEC_UNIT unit)
{
  INT top;
  INT opc;
  opc = (unit >> 0) & 0x7;
  top = state_ex_unit_tab[opc];
  switch (top) {
  case 760: /* branch */
    opc = (pinst[0] >> 37) & 0xf;
    top = state_branch_tab[opc];
    switch (top) {
    case 760: /* indirect_predict */
      opc = (pinst[0] >> 27) & 0x3f;
      top = state_indirect_predict_tab[opc];
      break;
    case 761: /* misc_branch */
      opc = (pinst[0] >> 27) & 0x3f;
      top = state_misc_branch_tab[opc];
      switch (top) {
      case 760: /* indirect_branch */
        opc = (pinst[0] >> 6) & 0x7;
        top = state_indirect_branch_tab[opc];
        break;
      case 761: /* indirect_return */
        opc = (pinst[0] >> 6) & 0x3f;
        top = state_indirect_return_tab[opc];
        break;
      }
      break;
    case 762: /* relative_branch */
      opc = (pinst[0] >> 6) & 0x7;
      top = state_relative_branch_tab[opc];
      break;
    }
    break;
  case 761: /* floating */
    opc = (pinst[0] >> 37) & 0xf;
    top = state_floating_tab[opc];
    switch (top) {
    case 760: /* fma_8 */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_8_tab[opc];
      break;
    case 761: /* fma_9 */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_9_tab[opc];
      break;
    case 762: /* fma_a */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_a_tab[opc];
      break;
    case 763: /* fma_b */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_b_tab[opc];
      break;
    case 764: /* fma_c */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_c_tab[opc];
      break;
    case 765: /* fma_d */
      opc = (pinst[0] >> 36) & 0x1;
      top = state_fma_d_tab[opc];
      break;
    case 766: /* fp_class */
      opc = (pinst[0] >> 12) & 0x1;
      top = state_fp_class_tab[opc];
      break;
    case 767: /* fp_compare */
      opc = (pinst[0] >> 33) & 0x1;
      top = state_fp_compare_tab[opc];
      switch (top) {
      case 760: /* fp_compare_0 */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_fp_compare_0_tab[opc];
        switch (top) {
        case 760: /* fp_compare_00 */
          opc = (pinst[0] >> 12) & 0x1;
          top = state_fp_compare_00_tab[opc];
          break;
        case 761: /* fp_compare_01 */
          opc = (pinst[0] >> 12) & 0x1;
          top = state_fp_compare_01_tab[opc];
          break;
        }
        break;
      case 761: /* fp_compare_1 */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_fp_compare_1_tab[opc];
        switch (top) {
        case 760: /* fp_compare_10 */
          opc = (pinst[0] >> 12) & 0x1;
          top = state_fp_compare_10_tab[opc];
          break;
        case 761: /* fp_compare_11 */
          opc = (pinst[0] >> 12) & 0x1;
          top = state_fp_compare_11_tab[opc];
          break;
        }
        break;
      }
      break;
    case 768: /* fp_misc_0 */
      opc = (pinst[0] >> 33) & 0x1;
      top = state_fp_misc_0_tab[opc];
      switch (top) {
      case 760: /* fp_misc_00 */
        opc = (pinst[0] >> 27) & 0x3f;
        top = state_fp_misc_00_tab[opc];
        break;
      case 761: /* fp_misc_01 */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_fp_misc_01_tab[opc];
        break;
      }
      break;
    case 769: /* fp_misc_1 */
      opc = (pinst[0] >> 33) & 0x1;
      top = state_fp_misc_1_tab[opc];
      switch (top) {
      case 760: /* fp_misc_10 */
        opc = (pinst[0] >> 27) & 0x3f;
        top = state_fp_misc_10_tab[opc];
        break;
      case 761: /* fp_misc_11 */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_fp_misc_11_tab[opc];
        break;
      }
      break;
    case 770: /* fselect */
      opc = (pinst[0] >> 34) & 0x7;
      top = state_fselect_tab[opc];
      break;
    }
    break;
  case 762: /* integer_or_alu */
    opc = (pinst[0] >> 40) & 0x1;
    top = state_integer_or_alu_tab[opc];
    switch (top) {
    case 760: /* alu */
      opc = (pinst[0] >> 37) & 0x7;
      top = state_alu_tab[opc];
      switch (top) {
      case 760: /* alu_mm */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_alu_mm_tab[opc];
        switch (top) {
        case 760: /* integer_alu */
          opc = (pinst[0] >> 27) & 0x3f;
          top = state_integer_alu_tab[opc];
          break;
        case 761: /* mm_alu */
        case 762: /* mm_alu */
          opc = (pinst[0] >> 36) & 0x1;
          top = state_mm_alu_tab[opc];
          switch (top) {
          case 760: /* mm_alu_1_2 */
            opc = (pinst[0] >> 27) & 0x7f;
            top = state_mm_alu_1_2_tab[opc];
            break;
          case 761: /* mm_alu_4 */
            opc = (pinst[0] >> 27) & 0x3f;
            top = state_mm_alu_4_tab[opc];
            break;
          }
          break;
        }
        break;
      case 761: /* compare_c */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_c_tab[opc];
        switch (top) {
        case 760: /* compare_c0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_c0_tab[opc];
          break;
        case 761: /* compare_c1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_c1_tab[opc];
          break;
        }
        break;
      case 762: /* compare_d */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_d_tab[opc];
        switch (top) {
        case 760: /* compare_d0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_d0_tab[opc];
          break;
        case 761: /* compare_d1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_d1_tab[opc];
          break;
        }
        break;
      case 763: /* compare_e */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_e_tab[opc];
        switch (top) {
        case 760: /* compare_e0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_e0_tab[opc];
          break;
        case 761: /* compare_e1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_e1_tab[opc];
          break;
        }
        break;
      }
      break;
    case 761: /* integer */
      opc = (pinst[0] >> 37) & 0x7;
      top = state_integer_tab[opc];
      switch (top) {
      case 760: /* misc */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_misc_tab[opc];
        switch (top) {
        case 760: /* misc_0 */
          opc = (pinst[0] >> 27) & 0x3f;
          top = state_misc_0_tab[opc];
          break;
        case 761: /* move_to_br */
          opc = (pinst[0] >> 22) & 0x1;
          top = state_move_to_br_tab[opc];
          break;
        }
        break;
      case 761: /* movl */
        opc = (pinst[0] >> 20) & 0x1;
        top = state_movl_tab[opc];
        break;
      case 762: /* mpy_shift */
        opc = (pinst[0] >> 32) & 0x1f;
        top = state_mpy_shift_tab[opc];
        switch (top) {
        case 760: /* mpy_shift_10 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_10_tab[opc];
          break;
        case 761: /* mpy_shift_12 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_12_tab[opc];
          break;
        case 762: /* mpy_shift_14 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_14_tab[opc];
          break;
        case 763: /* mpy_shift_16 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_16_tab[opc];
          break;
        case 764: /* mpy_shift_18 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_18_tab[opc];
          break;
        case 765: /* mpy_shift_2 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_2_tab[opc];
          break;
        case 766: /* mpy_shift_20 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_20_tab[opc];
          break;
        case 767: /* mpy_shift_24 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_24_tab[opc];
          break;
        case 768: /* mpy_shift_28 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_28_tab[opc];
          break;
        case 769: /* mpy_shift_6 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_6_tab[opc];
          break;
        case 770: /* mpy_shift_8 */
          opc = (pinst[0] >> 28) & 0xf;
          top = state_mpy_shift_8_tab[opc];
          break;
        }
        break;
      case 763: /* shift_test */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_shift_test_tab[opc];
        switch (top) {
        case 760: /* deposit */
          opc = (pinst[0] >> 26) & 0x1;
          top = state_deposit_tab[opc];
          break;
        case 761: /* extract */
          opc = (pinst[0] >> 13) & 0x1;
          top = state_extract_tab[opc];
          break;
        case 762: /* tbit_tnat_0 */
          opc = (pinst[0] >> 36) & 0x1;
          top = state_tbit_tnat_0_tab[opc];
          switch (top) {
          case 760: /* tbit_tnat_00 */
            opc = (pinst[0] >> 12) & 0x3;
            top = state_tbit_tnat_00_tab[opc];
            break;
          case 761: /* tbit_tnat_01 */
            opc = (pinst[0] >> 12) & 0x3;
            top = state_tbit_tnat_01_tab[opc];
            break;
          }
          break;
        case 763: /* tbit_tnat_1 */
          opc = (pinst[0] >> 36) & 0x1;
          top = state_tbit_tnat_1_tab[opc];
          switch (top) {
          case 760: /* tbit_tnat_10 */
            opc = (pinst[0] >> 12) & 0x3;
            top = state_tbit_tnat_10_tab[opc];
            break;
          case 761: /* tbit_tnat_11 */
            opc = (pinst[0] >> 12) & 0x3;
            top = state_tbit_tnat_11_tab[opc];
            break;
          }
          break;
        }
        break;
      }
      break;
    }
    break;
  case 763: /* lx_unit */
    opc = (pinst[1] >> 37) & 0xf;
    top = state_lx_unit_tab[opc];
    switch (top) {
    case 760: /* misc_lx */
      opc = (pinst[1] >> 27) & 0x3f;
      top = state_misc_lx_tab[opc];
      break;
    }
    break;
  case 764: /* memory_or_alu */
    opc = (pinst[0] >> 40) & 0x1;
    top = state_memory_or_alu_tab[opc];
    switch (top) {
    case 760: /* alu */
      opc = (pinst[0] >> 37) & 0x7;
      top = state_alu_tab[opc];
      switch (top) {
      case 760: /* alu_mm */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_alu_mm_tab[opc];
        switch (top) {
        case 760: /* integer_alu */
          opc = (pinst[0] >> 27) & 0x3f;
          top = state_integer_alu_tab[opc];
          break;
        case 761: /* mm_alu */
        case 762: /* mm_alu */
          opc = (pinst[0] >> 36) & 0x1;
          top = state_mm_alu_tab[opc];
          switch (top) {
          case 760: /* mm_alu_1_2 */
            opc = (pinst[0] >> 27) & 0x7f;
            top = state_mm_alu_1_2_tab[opc];
            break;
          case 761: /* mm_alu_4 */
            opc = (pinst[0] >> 27) & 0x3f;
            top = state_mm_alu_4_tab[opc];
            break;
          }
          break;
        }
        break;
      case 761: /* compare_c */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_c_tab[opc];
        switch (top) {
        case 760: /* compare_c0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_c0_tab[opc];
          break;
        case 761: /* compare_c1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_c1_tab[opc];
          break;
        }
        break;
      case 762: /* compare_d */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_d_tab[opc];
        switch (top) {
        case 760: /* compare_d0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_d0_tab[opc];
          break;
        case 761: /* compare_d1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_d1_tab[opc];
          break;
        }
        break;
      case 763: /* compare_e */
        opc = (pinst[0] >> 12) & 0x1;
        top = state_compare_e_tab[opc];
        switch (top) {
        case 760: /* compare_e0 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_e0_tab[opc];
          break;
        case 761: /* compare_e1 */
          opc = (pinst[0] >> 33) & 0xf;
          top = state_compare_e1_tab[opc];
          break;
        }
        break;
      }
      break;
    case 761: /* memory */
      opc = (pinst[0] >> 37) & 0x7;
      top = state_memory_tab[opc];
      switch (top) {
      case 760: /* fp_load_store */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_fp_load_store_tab[opc];
        switch (top) {
        case 760: /* fp_load_store_0 */
          opc = (pinst[0] >> 27) & 0x1;
          top = state_fp_load_store_0_tab[opc];
          switch (top) {
          case 760: /* fp_load_pair_nobase */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_fp_load_pair_nobase_tab[opc];
            break;
          case 761: /* fp_load_store_nobase */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_fp_load_store_nobase_tab[opc];
            break;
          }
          break;
        case 761: /* fp_load_store_1 */
          opc = (pinst[0] >> 27) & 0x1;
          top = state_fp_load_store_1_tab[opc];
          switch (top) {
          case 760: /* fp_load_pair_imm */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_fp_load_pair_imm_tab[opc];
            break;
          case 761: /* fp_load_reg */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_fp_load_reg_tab[opc];
            break;
          }
          break;
        }
        break;
      case 761: /* fp_load_store_imm */
        opc = (pinst[0] >> 30) & 0x3f;
        top = state_fp_load_store_imm_tab[opc];
        break;
      case 762: /* int_load_store */
        opc = (pinst[0] >> 36) & 0x1;
        top = state_int_load_store_tab[opc];
        switch (top) {
        case 760: /* int_load_store_0 */
          opc = (pinst[0] >> 27) & 0x1;
          top = state_int_load_store_0_tab[opc];
          switch (top) {
          case 760: /* int_load_store_nobase */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_int_load_store_nobase_tab[opc];
            break;
          case 761: /* sem_get_fr */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_sem_get_fr_tab[opc];
            break;
          }
          break;
        case 761: /* int_load_store_1 */
          opc = (pinst[0] >> 27) & 0x1;
          top = state_int_load_store_1_tab[opc];
          switch (top) {
          case 760: /* int_load_store_reg */
            opc = (pinst[0] >> 30) & 0x3f;
            top = state_int_load_store_reg_tab[opc];
            break;
          }
          break;
        }
        break;
      case 763: /* int_load_store_imm */
        opc = (pinst[0] >> 30) & 0x3f;
        top = state_int_load_store_imm_tab[opc];
        break;
      case 764: /* sys_mem_0 */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_sys_mem_0_tab[opc];
        switch (top) {
        case 760: /* sys_mem_00 */
          opc = (pinst[0] >> 27) & 0x3f;
          top = state_sys_mem_00_tab[opc];
          break;
        }
        break;
      case 765: /* sys_mem_1 */
        opc = (pinst[0] >> 33) & 0x7;
        top = state_sys_mem_1_tab[opc];
        switch (top) {
        case 760: /* sys_mem_10 */
          opc = (pinst[0] >> 27) & 0x3f;
          top = state_sys_mem_10_tab[opc];
          break;
        }
        break;
      }
      break;
    }
    break;
  }
  return (TOP)top;
}
