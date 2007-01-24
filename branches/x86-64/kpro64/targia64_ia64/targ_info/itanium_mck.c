#include "ti_si.h"
SI_RESOURCE resource4 = {"issue",0,6,0,0};
SI_RESOURCE resource5 = {"sem",1,1,0,4};
SI_RESOURCE resource6 = {"integer_or_memory",2,6,0,6};
SI_RESOURCE resource7 = {"memory",3,4,0,10};
SI_RESOURCE resource8 = {"memory_ld",4,2,0,14};
SI_RESOURCE resource9 = {"memory_st",5,2,0,17};
SI_RESOURCE resource10 = {"memory0",6,1,0,20};
SI_RESOURCE resource11 = {"memory2",7,1,0,22};
SI_RESOURCE resource12 = {"floating-point",8,2,0,24};
SI_RESOURCE resource13 = {"floating-point0",9,1,0,27};
SI_RESOURCE resource14 = {"integer",10,2,0,29};
SI_RESOURCE resource15 = {"integer0",11,1,0,32};
SI_RESOURCE resource16 = {"branch",12,3,0,34};
SI_RESOURCE resource17 = {"B0_or_B1",13,2,0,37};
SI_RESOURCE resource18 = {"B0_or_B2",14,2,0,40};
SI_RESOURCE resource19 = {"B2",15,1,0,43};
const int SI_resource_count = 16;
SI_RESOURCE * const SI_resources[] = {
  &resource4,
  &resource5,
  &resource6,
  &resource7,
  &resource8,
  &resource9,
  &resource10,
  &resource11,
  &resource12,
  &resource13,
  &resource14,
  &resource15,
  &resource16,
  &resource17,
  &resource18,
  &resource19,
};
const SI_RRW SI_RRW_initializer = 0x12021024c41LL;
const SI_RRW SI_RRW_overuse_mask = 0x149294a92228LL;
const int SI_issue_slot_count = 0;
SI_ISSUE_SLOT * const SI_issue_slots[1] = {0};

/* Instruction group IALU */
static const SI_RRW res_req20[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname21[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname22[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency24[] = {0,0,0,0,0,0};
static const mUINT8 latency25[] = {1,1,1};
static SI varname23 = {
  "IALU",
  0              , /* id */
  latency24      , /* operand latency */
  latency25      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req20      , /* resource requirement */
  varname21      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname22      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ICMP */
static const SI_RRW res_req26[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname27[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname28[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency30[] = {0,0,0,0,0,0};
static const mUINT8 latency31[] = {0,0,0};
static SI varname29 = {
  "ICMP",
  1              , /* id */
  latency30      , /* operand latency */
  latency31      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req26      , /* resource requirement */
  varname27      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname28      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ILOG */
static const SI_RRW res_req32[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname33[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname34[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency36[] = {0,0,0,0,0,0};
static const mUINT8 latency37[] = {1,1,1};
static SI varname35 = {
  "ILOG",
  2              , /* id */
  latency36      , /* operand latency */
  latency37      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req32      , /* resource requirement */
  varname33      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname34      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group PNT */
static const SI_RRW res_req38[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname39[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname40[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency42[] = {0,0,0,0,0,0};
static const mUINT8 latency43[] = {1,1,1};
static SI varname41 = {
  "PNT",
  3              , /* id */
  latency42      , /* operand latency */
  latency43      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req38      , /* resource requirement */
  varname39      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname40      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ISHF */
static const SI_RRW res_req44[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname45[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname46[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency48[] = {0,0,0,0,0,0};
static const mUINT8 latency49[] = {1,1,1};
static SI varname47 = {
  "ISHF",
  4              , /* id */
  latency48      , /* operand latency */
  latency49      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req44      , /* resource requirement */
  varname45      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname46      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TBIT */
static const SI_RRW res_req50[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname51[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname52[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency54[] = {0,0,0,0,0,0};
static const mUINT8 latency55[] = {0,0,0};
static SI varname53 = {
  "TBIT",
  5              , /* id */
  latency54      , /* operand latency */
  latency55      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req50      , /* resource requirement */
  varname51      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname52      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_M */
static const SI_RRW res_req56[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname57[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname58[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency60[] = {0,0,0,0,0,0};
static const mUINT8 latency61[] = {1,1,1};
static SI varname59 = {
  "SYST_M",
  6              , /* id */
  latency60      , /* operand latency */
  latency61      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req56      , /* resource requirement */
  varname57      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname58      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_M0 */
static const SI_RRW res_req62[] = {
  1,
  0x104441LL
};
static const SI_RESOURCE_ID_SET varname63[] = {
  0x5dLL
};

static SI_RESOURCE_TOTAL varname64[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */,
  {&resource10,1}/* memory0 */
};

static const mUINT8 latency66[] = {0,0,0,0,0,0};
static const mUINT8 latency67[] = {1,1,1};
static SI varname65 = {
  "SYST_M0",
  7              , /* id */
  latency66      , /* operand latency */
  latency67      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req62      , /* resource requirement */
  varname63      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname64      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_M2 */
static const SI_RRW res_req68[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname69[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname70[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency72[] = {0,0,0,0,0,0};
static const mUINT8 latency73[] = {1,1,1};
static SI varname71 = {
  "SYST_M2",
  8              , /* id */
  latency72      , /* operand latency */
  latency73      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req68      , /* resource requirement */
  varname69      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname70      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_I */
static const SI_RRW res_req74[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname75[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname76[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency78[] = {0,0,0,0,0,0};
static const mUINT8 latency79[] = {1,1,1};
static SI varname77 = {
  "SYST_I",
  9              , /* id */
  latency78      , /* operand latency */
  latency79      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req74      , /* resource requirement */
  varname75      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname76      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_I0 */
static const SI_RRW res_req80[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname81[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname82[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency84[] = {0,0,0,0,0,0};
static const mUINT8 latency85[] = {1,1,1};
static SI varname83 = {
  "SYST_I0",
  10             , /* id */
  latency84      , /* operand latency */
  latency85      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req80      , /* resource requirement */
  varname81      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname82      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B */
static const SI_RRW res_req86[] = {
  1,
  0x2400000001LL
};
static const SI_RESOURCE_ID_SET varname87[] = {
  0x3001LL
};

static SI_RESOURCE_TOTAL varname88[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */,
  {&resource17,1}/* B0_or_B1 */
};

static const mUINT8 latency90[] = {0,0,0,0,0,0};
static const mUINT8 latency91[] = {1,1,1};
static SI varname89 = {
  "SYST_B",
  11             , /* id */
  latency90      , /* operand latency */
  latency91      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req86      , /* resource requirement */
  varname87      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname88      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B0 */
static const SI_RRW res_req92[] = {
  1,
  0x12400000001LL
};
static const SI_RESOURCE_ID_SET varname93[] = {
  0x7001LL
};

static SI_RESOURCE_TOTAL varname94[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */,
  {&resource17,1}/* B0_or_B1 */,
  {&resource18,1}/* B0_or_B2 */
};

static const mUINT8 latency96[] = {0,0,0,0,0,0};
static const mUINT8 latency97[] = {1,1,1};
static SI varname95 = {
  "SYST_B0",
  12             , /* id */
  latency96      , /* operand latency */
  latency97      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req92      , /* resource requirement */
  varname93      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname94      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B2 */
static const SI_RRW res_req98[] = {
  1,
  0x90400000001LL
};
static const SI_RESOURCE_ID_SET varname99[] = {
  0xd001LL
};

static SI_RESOURCE_TOTAL varname100[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */,
  {&resource18,1}/* B0_or_B2 */,
  {&resource19,1}/* B2 */
};

static const mUINT8 latency102[] = {0,0,0,0,0,0};
static const mUINT8 latency103[] = {1,1,1};
static SI varname101 = {
  "SYST_B2",
  13             , /* id */
  latency102     , /* operand latency */
  latency103     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req98      , /* resource requirement */
  varname99      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname100     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group XTD */
static const SI_RRW res_req104[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname105[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname106[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency108[] = {0,0,0,0,0,0};
static const mUINT8 latency109[] = {1,1,1};
static SI varname107 = {
  "XTD",
  14             , /* id */
  latency108     , /* operand latency */
  latency109     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req104     , /* resource requirement */
  varname105     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname106     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LONG_I */
static const SI_RRW res_req110[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname111[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname112[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency114[] = {0,0,0,0,0,0};
static const mUINT8 latency115[] = {1,1,1};
static SI varname113 = {
  "LONG_I",
  15             , /* id */
  latency114     , /* operand latency */
  latency115     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req110     , /* resource requirement */
  varname111     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname112     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LFETCH */
static const SI_RRW res_req116[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname117[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname118[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency120[] = {0,0,0,0,0,0};
static const mUINT8 latency121[] = {5,5,5};
static SI varname119 = {
  "LFETCH",
  16             , /* id */
  latency120     , /* operand latency */
  latency121     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req116     , /* resource requirement */
  varname117     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname118     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LD */
static const SI_RRW res_req122[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname123[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname124[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency126[] = {0,0,0,0,0,0};
static const mUINT8 latency127[] = {1,1,1};
static SI varname125 = {
  "LD",
  17             , /* id */
  latency126     , /* operand latency */
  latency127     , /* result latency */
  1              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req122     , /* resource requirement */
  varname123     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname124     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FLD */
static const SI_RRW res_req128[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname129[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname130[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency132[] = {0,0,0,0,0,0};
static const mUINT8 latency133[] = {6,6,6};
static SI varname131 = {
  "FLD",
  18             , /* id */
  latency132     , /* operand latency */
  latency133     , /* result latency */
  6              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req128     , /* resource requirement */
  varname129     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname130     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FLDA */
static const SI_RRW res_req134[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname135[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname136[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency138[] = {0,0,0,0,0,0};
static const mUINT8 latency139[] = {6,6,6};
static SI varname137 = {
  "FLDA",
  19             , /* id */
  latency138     , /* operand latency */
  latency139     , /* result latency */
  6              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req134     , /* resource requirement */
  varname135     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname136     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FLDP */
static const SI_RRW res_req140[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname141[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname142[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency144[] = {0,0,0,0,0,0};
static const mUINT8 latency145[] = {6,6,6};
static SI varname143 = {
  "FLDP",
  20             , /* id */
  latency144     , /* operand latency */
  latency145     , /* result latency */
  6              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req140     , /* resource requirement */
  varname141     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname142     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CLD */
static const SI_RRW res_req146[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname147[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname148[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency150[] = {0,0,0,0,0,0};
static const mUINT8 latency151[] = {0,0,0};
static SI varname149 = {
  "CLD",
  21             , /* id */
  latency150     , /* operand latency */
  latency151     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req146     , /* resource requirement */
  varname147     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname148     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCLD */
static const SI_RRW res_req152[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname153[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname154[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency156[] = {0,0,0,0,0,0};
static const mUINT8 latency157[] = {0,0,0};
static SI varname155 = {
  "FCLD",
  22             , /* id */
  latency156     , /* operand latency */
  latency157     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req152     , /* resource requirement */
  varname153     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname154     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ST */
static const SI_RRW res_req158[] = {
  1,
  0x20441LL
};
static const SI_RESOURCE_ID_SET varname159[] = {
  0x2dLL
};

static SI_RESOURCE_TOTAL varname160[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */
};

static const mUINT8 latency162[] = {0,0,0,0,0,0};
static const mUINT8 latency163[] = {1,1,1};
static SI varname161 = {
  "ST",
  23             , /* id */
  latency162     , /* operand latency */
  latency163     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  1              , /* store available time */
  res_req158     , /* resource requirement */
  varname159     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname160     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SEM */
static const SI_RRW res_req164[] = {
  6,
  0x20451LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL
};
static const SI_RESOURCE_ID_SET varname165[] = {
  0x2fLL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL
};

static SI_RESOURCE_TOTAL varname166[] = {
  {&resource4,1}/* issue */,
  {&resource5,1}/* sem */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */
};

static const mUINT8 latency168[] = {0,0,0,0,0,0};
static const mUINT8 latency169[] = {6,6,6};
static SI varname167 = {
  "SEM",
  24             , /* id */
  latency168     , /* operand latency */
  latency169     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req164     , /* resource requirement */
  varname165     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname166     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCVTFX */
static const SI_RRW res_req170[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname171[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname172[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency174[] = {0,0,0,0,0,0};
static const mUINT8 latency175[] = {4,4,4};
static SI varname173 = {
  "FCVTFX",
  25             , /* id */
  latency174     , /* operand latency */
  latency175     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req170     , /* resource requirement */
  varname171     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname172     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCVTXF */
static const SI_RRW res_req176[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname177[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname178[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency180[] = {0,0,0,0,0,0};
static const mUINT8 latency181[] = {4,4,4};
static SI varname179 = {
  "FCVTXF",
  26             , /* id */
  latency180     , /* operand latency */
  latency181     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req176     , /* resource requirement */
  varname177     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname178     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FMAC */
static const SI_RRW res_req182[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname183[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname184[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency186[] = {0,0,0,0,0,0};
static const mUINT8 latency187[] = {4,4,4};
static SI varname185 = {
  "FMAC",
  27             , /* id */
  latency186     , /* operand latency */
  latency187     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req182     , /* resource requirement */
  varname183     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname184     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group XMA */
static const SI_RRW res_req188[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname189[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname190[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency192[] = {0,0,0,0,0,0};
static const mUINT8 latency193[] = {4,4,4};
static SI varname191 = {
  "XMA",
  28             , /* id */
  latency192     , /* operand latency */
  latency193     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req188     , /* resource requirement */
  varname189     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname190     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FMISC */
static const SI_RRW res_req194[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname195[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname196[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency198[] = {0,0,0,0,0,0};
static const mUINT8 latency199[] = {4,4,4};
static SI varname197 = {
  "FMISC",
  29             , /* id */
  latency198     , /* operand latency */
  latency199     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req194     , /* resource requirement */
  varname195     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname196     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMAC */
static const SI_RRW res_req200[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname201[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname202[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency204[] = {0,0,0,0,0,0};
static const mUINT8 latency205[] = {4,4,4};
static SI varname203 = {
  "SFMAC",
  30             , /* id */
  latency204     , /* operand latency */
  latency205     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req200     , /* resource requirement */
  varname201     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname202     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFCVTFX */
static const SI_RRW res_req206[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname207[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname208[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency210[] = {0,0,0,0,0,0};
static const mUINT8 latency211[] = {4,4,4};
static SI varname209 = {
  "SFCVTFX",
  31             , /* id */
  latency210     , /* operand latency */
  latency211     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req206     , /* resource requirement */
  varname207     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname208     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMISC */
static const SI_RRW res_req212[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname213[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname214[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency216[] = {0,0,0,0,0,0};
static const mUINT8 latency217[] = {4,4,4};
static SI varname215 = {
  "SFMISC",
  32             , /* id */
  latency216     , /* operand latency */
  latency217     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req212     , /* resource requirement */
  varname213     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname214     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMERGESE */
static const SI_RRW res_req218[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname219[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname220[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency222[] = {0,0,0,0,0,0};
static const mUINT8 latency223[] = {4,4,4};
static SI varname221 = {
  "SFMERGESE",
  33             , /* id */
  latency222     , /* operand latency */
  latency223     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req218     , /* resource requirement */
  varname219     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname220     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group STF */
static const SI_RRW res_req224[] = {
  1,
  0x20441LL
};
static const SI_RESOURCE_ID_SET varname225[] = {
  0x2dLL
};

static SI_RESOURCE_TOTAL varname226[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */
};

static const mUINT8 latency228[] = {0,0,0,0,0,0};
static const mUINT8 latency229[] = {1,1,1};
static SI varname227 = {
  "STF",
  34             , /* id */
  latency228     , /* operand latency */
  latency229     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  1              , /* store available time */
  res_req224     , /* resource requirement */
  varname225     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname226     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCMP */
static const SI_RRW res_req230[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname231[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname232[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency234[] = {0,0,0,0,0,0};
static const mUINT8 latency235[] = {2,2,2};
static SI varname233 = {
  "FCMP",
  35             , /* id */
  latency234     , /* operand latency */
  latency235     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req230     , /* resource requirement */
  varname231     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname232     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FOTHER */
static const SI_RRW res_req236[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname237[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname238[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency240[] = {0,0,0,0,0,0};
static const mUINT8 latency241[] = {0,0,0};
static SI varname239 = {
  "FOTHER",
  36             , /* id */
  latency240     , /* operand latency */
  latency241     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req236     , /* resource requirement */
  varname237     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname238     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOFR */
static const SI_RRW res_req242[] = {
  1,
  0x20441LL
};
static const SI_RESOURCE_ID_SET varname243[] = {
  0x2dLL
};

static SI_RESOURCE_TOTAL varname244[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */
};

static const mUINT8 latency246[] = {0,0,0,0,0,0};
static const mUINT8 latency247[] = {5,5,5};
static SI varname245 = {
  "TOFR",
  37             , /* id */
  latency246     , /* operand latency */
  latency247     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req242     , /* resource requirement */
  varname243     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname244     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRFR */
static const SI_RRW res_req248[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname249[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname250[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency252[] = {0,0,0,0,0,0};
static const mUINT8 latency253[] = {5,5,5};
static SI varname251 = {
  "FRFR",
  38             , /* id */
  latency252     , /* operand latency */
  latency253     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req248     , /* resource requirement */
  varname249     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname250     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOPR */
static const SI_RRW res_req254[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname255[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname256[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency258[] = {0,0,0,0,0,0};
static const mUINT8 latency259[] = {1,1,1};
static SI varname257 = {
  "TOPR",
  39             , /* id */
  latency258     , /* operand latency */
  latency259     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req254     , /* resource requirement */
  varname255     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname256     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRPR */
static const SI_RRW res_req260[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname261[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname262[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency264[] = {0,0,0,0,0,0};
static const mUINT8 latency265[] = {2,2,2};
static SI varname263 = {
  "FRPR",
  40             , /* id */
  latency264     , /* operand latency */
  latency265     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req260     , /* resource requirement */
  varname261     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname262     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOBR */
static const SI_RRW res_req266[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname267[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname268[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency270[] = {0,0,0,0,0,0};
static const mUINT8 latency271[] = {0,0,0};
static SI varname269 = {
  "TOBR",
  41             , /* id */
  latency270     , /* operand latency */
  latency271     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req266     , /* resource requirement */
  varname267     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname268     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRBR */
static const SI_RRW res_req272[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname273[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname274[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency276[] = {0,0,0,0,0,0};
static const mUINT8 latency277[] = {2,2,2};
static SI varname275 = {
  "FRBR",
  42             , /* id */
  latency276     , /* operand latency */
  latency277     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req272     , /* resource requirement */
  varname273     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname274     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOAR_M */
static const SI_RRW res_req278[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname279[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname280[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency282[] = {0,0,0,0,0,0};
static const mUINT8 latency283[] = {1,1,1};
static SI varname281 = {
  "TOAR_M",
  43             , /* id */
  latency282     , /* operand latency */
  latency283     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req278     , /* resource requirement */
  varname279     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname280     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOAR_I */
static const SI_RRW res_req284[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname285[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname286[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency288[] = {0,0,0,0,0,0};
static const mUINT8 latency289[] = {1,1,1};
static SI varname287 = {
  "TOAR_I",
  44             , /* id */
  latency288     , /* operand latency */
  latency289     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req284     , /* resource requirement */
  varname285     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname286     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRAR_M */
static const SI_RRW res_req290[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname291[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname292[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency294[] = {0,0,0,0,0,0};
static const mUINT8 latency295[] = {1,1,1};
static SI varname293 = {
  "FRAR_M",
  45             , /* id */
  latency294     , /* operand latency */
  latency295     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req290     , /* resource requirement */
  varname291     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname292     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRAR_I */
static const SI_RRW res_req296[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname297[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname298[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency300[] = {0,0,0,0,0,0};
static const mUINT8 latency301[] = {1,1,1};
static SI varname299 = {
  "FRAR_I",
  46             , /* id */
  latency300     , /* operand latency */
  latency301     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req296     , /* resource requirement */
  varname297     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname298     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOCR */
static const SI_RRW res_req302[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname303[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname304[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency306[] = {0,0,0,0,0,0};
static const mUINT8 latency307[] = {1,1,1};
static SI varname305 = {
  "TOCR",
  47             , /* id */
  latency306     , /* operand latency */
  latency307     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req302     , /* resource requirement */
  varname303     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname304     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRCR */
static const SI_RRW res_req308[] = {
  1,
  0x420441LL
};
static const SI_RESOURCE_ID_SET varname309[] = {
  0xadLL
};

static SI_RESOURCE_TOTAL varname310[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource9,1}/* memory_st */,
  {&resource11,1}/* memory2 */
};

static const mUINT8 latency312[] = {0,0,0,0,0,0};
static const mUINT8 latency313[] = {1,1,1};
static SI varname311 = {
  "FRCR",
  48             , /* id */
  latency312     , /* operand latency */
  latency313     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req308     , /* resource requirement */
  varname309     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname310     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_I */
static const SI_RRW res_req314[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname315[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname316[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency318[] = {0,0,0,0,0,0};
static const mUINT8 latency319[] = {0,0,0};
static SI varname317 = {
  "NOP_I",
  49             , /* id */
  latency318     , /* operand latency */
  latency319     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req314     , /* resource requirement */
  varname315     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname316     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_M */
static const SI_RRW res_req320[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname321[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname322[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency324[] = {0,0,0,0,0,0};
static const mUINT8 latency325[] = {0,0,0};
static SI varname323 = {
  "NOP_M",
  50             , /* id */
  latency324     , /* operand latency */
  latency325     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req320     , /* resource requirement */
  varname321     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname322     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_B */
static const SI_RRW res_req326[] = {
  1,
  0x400000001LL
};
static const SI_RESOURCE_ID_SET varname327[] = {
  0x1001LL
};

static SI_RESOURCE_TOTAL varname328[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */
};

static const mUINT8 latency330[] = {0,0,0,0,0,0};
static const mUINT8 latency331[] = {0,0,0};
static SI varname329 = {
  "NOP_B",
  51             , /* id */
  latency330     , /* operand latency */
  latency331     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req326     , /* resource requirement */
  varname327     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname328     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_X */
static const SI_RRW res_req332[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname333[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname334[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency336[] = {0,0,0,0,0,0};
static const mUINT8 latency337[] = {0,0,0};
static SI varname335 = {
  "NOP_X",
  52             , /* id */
  latency336     , /* operand latency */
  latency337     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req332     , /* resource requirement */
  varname333     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname334     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_F */
static const SI_RRW res_req338[] = {
  1,
  0x1000001LL
};
static const SI_RESOURCE_ID_SET varname339[] = {
  0x101LL
};

static SI_RESOURCE_TOTAL varname340[] = {
  {&resource4,1}/* issue */,
  {&resource12,1}/* floating-point */
};

static const mUINT8 latency342[] = {0,0,0,0,0,0};
static const mUINT8 latency343[] = {0,0,0};
static SI varname341 = {
  "NOP_F",
  53             , /* id */
  latency342     , /* operand latency */
  latency343     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req338     , /* resource requirement */
  varname339     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname340     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group RSE_M */
static const SI_RRW res_req344[] = {
  1,
  0x104441LL
};
static const SI_RESOURCE_ID_SET varname345[] = {
  0x5dLL
};

static SI_RESOURCE_TOTAL varname346[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */,
  {&resource10,1}/* memory0 */
};

static const mUINT8 latency348[] = {0,0,0,0,0,0};
static const mUINT8 latency349[] = {1,1,1};
static SI varname347 = {
  "RSE_M",
  54             , /* id */
  latency348     , /* operand latency */
  latency349     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req344     , /* resource requirement */
  varname345     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname346     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group RSE_B */
static const SI_RRW res_req350[] = {
  1,
  0x90400000001LL
};
static const SI_RESOURCE_ID_SET varname351[] = {
  0xd001LL
};

static SI_RESOURCE_TOTAL varname352[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */,
  {&resource18,1}/* B0_or_B2 */,
  {&resource19,1}/* B2 */
};

static const mUINT8 latency354[] = {0,0,0,0,0,0};
static const mUINT8 latency355[] = {1,1,1};
static SI varname353 = {
  "RSE_B",
  55             , /* id */
  latency354     , /* operand latency */
  latency355     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req350     , /* resource requirement */
  varname351     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname352     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BR */
static const SI_RRW res_req356[] = {
  1,
  0x400000001LL
};
static const SI_RESOURCE_ID_SET varname357[] = {
  0x1001LL
};

static SI_RESOURCE_TOTAL varname358[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */
};

static const mUINT8 latency360[] = {0,0,0,0,0,0};
static const mUINT8 latency361[] = {1,1,1};
static SI varname359 = {
  "BR",
  56             , /* id */
  latency360     , /* operand latency */
  latency361     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req356     , /* resource requirement */
  varname357     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname358     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BR_B2 */
static const SI_RRW res_req362[] = {
  1,
  0x90400000001LL
};
static const SI_RESOURCE_ID_SET varname363[] = {
  0xd001LL
};

static SI_RESOURCE_TOTAL varname364[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */,
  {&resource18,1}/* B0_or_B2 */,
  {&resource19,1}/* B2 */
};

static const mUINT8 latency366[] = {0,0,0,0,0,0};
static const mUINT8 latency367[] = {1,1,1};
static SI varname365 = {
  "BR_B2",
  57             , /* id */
  latency366     , /* operand latency */
  latency367     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req362     , /* resource requirement */
  varname363     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname364     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BRP */
static const SI_RRW res_req368[] = {
  1,
  0x400000001LL
};
static const SI_RESOURCE_ID_SET varname369[] = {
  0x1001LL
};

static SI_RESOURCE_TOTAL varname370[] = {
  {&resource4,1}/* issue */,
  {&resource16,1}/* branch */
};

static const mUINT8 latency372[] = {0,0,0,0,0,0};
static const mUINT8 latency373[] = {1,1,1};
static SI varname371 = {
  "BRP",
  58             , /* id */
  latency372     , /* operand latency */
  latency373     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req368     , /* resource requirement */
  varname369     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname370     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRIP */
static const SI_RRW res_req374[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname375[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname376[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency378[] = {0,0,0,0,0,0};
static const mUINT8 latency379[] = {1,1,1};
static SI varname377 = {
  "FRIP",
  59             , /* id */
  latency378     , /* operand latency */
  latency379     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req374     , /* resource requirement */
  varname375     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname376     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_ALAT */
static const SI_RRW res_req380[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname381[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname382[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency384[] = {0,0,0,0,0,0};
static const mUINT8 latency385[] = {0,0,0};
static SI varname383 = {
  "CHK_ALAT",
  60             , /* id */
  latency384     , /* operand latency */
  latency385     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req380     , /* resource requirement */
  varname381     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname382     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_I */
static const SI_RRW res_req386[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname387[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname388[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency390[] = {0,0,0,0,0,0};
static const mUINT8 latency391[] = {0,0,0};
static SI varname389 = {
  "CHK_I",
  61             , /* id */
  latency390     , /* operand latency */
  latency391     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req386     , /* resource requirement */
  varname387     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname388     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_M */
static const SI_RRW res_req392[] = {
  1,
  0x4441LL
};
static const SI_RESOURCE_ID_SET varname393[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname394[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory_ld */
};

static const mUINT8 latency396[] = {0,0,0,0,0,0};
static const mUINT8 latency397[] = {0,0,0};
static SI varname395 = {
  "CHK_M",
  62             , /* id */
  latency396     , /* operand latency */
  latency397     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req392     , /* resource requirement */
  varname393     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname394     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMALU_A */
static const SI_RRW res_req398[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname399[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname400[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency402[] = {0,0,0,0,0,0};
static const mUINT8 latency403[] = {2,2,2};
static SI varname401 = {
  "MMALU_A",
  63             , /* id */
  latency402     , /* operand latency */
  latency403     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req398     , /* resource requirement */
  varname399     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname400     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMALU_I */
static const SI_RRW res_req404[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname405[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname406[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency408[] = {0,0,0,0,0,0};
static const mUINT8 latency409[] = {2,2,2};
static SI varname407 = {
  "MMALU_I",
  64             , /* id */
  latency408     , /* operand latency */
  latency409     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req404     , /* resource requirement */
  varname405     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname406     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMSHF */
static const SI_RRW res_req410[] = {
  1,
  0x20000041LL
};
static const SI_RESOURCE_ID_SET varname411[] = {
  0x405LL
};

static SI_RESOURCE_TOTAL varname412[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */
};

static const mUINT8 latency414[] = {0,0,0,0,0,0};
static const mUINT8 latency415[] = {2,2,2};
static SI varname413 = {
  "MMSHF",
  65             , /* id */
  latency414     , /* operand latency */
  latency415     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req410     , /* resource requirement */
  varname411     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname412     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMMUL */
static const SI_RRW res_req416[] = {
  1,
  0x120000041LL
};
static const SI_RESOURCE_ID_SET varname417[] = {
  0xc05LL
};

static SI_RESOURCE_TOTAL varname418[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource14,1}/* integer */,
  {&resource15,1}/* integer0 */
};

static const mUINT8 latency420[] = {0,0,0,0,0,0};
static const mUINT8 latency421[] = {2,2,2};
static SI varname419 = {
  "MMMUL",
  66             , /* id */
  latency420     , /* operand latency */
  latency421     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req416     , /* resource requirement */
  varname417     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname418     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group UNIMP */
static const SI_RRW res_req422[] = {
  0};
static const mUINT8 latency426[] = {0,0,0,0,0,0};
static const mUINT8 latency427[] = {0,0,0};
static SI varname425 = {
  "UNIMP",
  67             , /* id */
  latency426     , /* operand latency */
  latency427     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req422     , /* resource requirement */
  0              , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  0              , /* resource count vec size */
  0              , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LAST */
static const SI_RRW res_req428[] = {
  0};
static const mUINT8 latency432[] = {0,0,0,0,0,0};
static const mUINT8 latency433[] = {1,1,1};
static SI varname431 = {
  "LAST",
  68             , /* id */
  latency432     , /* operand latency */
  latency433     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req428     , /* resource requirement */
  0              , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  0              , /* resource count vec size */
  0              , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group Dummy instructions */
static const SI_RRW res_req434[] = {
  0};
static const mUINT8 latency438[] = {0,0,0,0,0,0};
static const mUINT8 latency439[] = {0,0,0};
static SI varname437 = {
  "Dummy instructions",
  69             , /* id */
  latency438     , /* operand latency */
  latency439     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req434     , /* resource requirement */
  0              , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  0              , /* resource count vec size */
  0              , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group dummy */
static const SI_RRW res_req440[] = {
  1,
  0x1LL
};
static const SI_RESOURCE_ID_SET varname441[] = {
  0x1LL
};

static SI_RESOURCE_TOTAL varname442[] = {
  {&resource4,1}/* issue */
};

static const mUINT8 latency444[] = {0,0,0,0,0,0};
static const mUINT8 latency445[] = {0,0,0};
static SI varname443 = {
  "dummy",
  70             , /* id */
  latency444     , /* operand latency */
  latency445     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req440     , /* resource requirement */
  varname441     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  varname442     , /* resource count vec */
  0                /* write-write interlock */
};
SI * const SI_ID_si[] = {
  &varname23,
  &varname29,
  &varname35,
  &varname41,
  &varname47,
  &varname53,
  &varname59,
  &varname65,
  &varname71,
  &varname77,
  &varname83,
  &varname89,
  &varname95,
  &varname101,
  &varname107,
  &varname113,
  &varname119,
  &varname125,
  &varname131,
  &varname137,
  &varname143,
  &varname149,
  &varname155,
  &varname161,
  &varname167,
  &varname173,
  &varname179,
  &varname185,
  &varname191,
  &varname197,
  &varname203,
  &varname209,
  &varname215,
  &varname221,
  &varname227,
  &varname233,
  &varname239,
  &varname245,
  &varname251,
  &varname257,
  &varname263,
  &varname269,
  &varname275,
  &varname281,
  &varname287,
  &varname293,
  &varname299,
  &varname305,
  &varname311,
  &varname317,
  &varname323,
  &varname329,
  &varname335,
  &varname341,
  &varname347,
  &varname353,
  &varname359,
  &varname365,
  &varname371,
  &varname377,
  &varname383,
  &varname389,
  &varname395,
  &varname401,
  &varname407,
  &varname413,
  &varname419,
  &varname425,
  &varname431,
  &varname437,
  &varname443,
};
const int SI_ID_count = 71;

SI * const SI_top_si[759] = {
  &varname23   /* add */,
  &varname23   /* add_1 */,
  &varname23   /* adds */,
  &varname23   /* addl */,
  &varname41   /* addp4 */,
  &varname41   /* addp4_i */,
  &varname71   /* alloc_3 */,
  &varname35   /* and */,
  &varname35   /* and_i */,
  &varname35   /* andcm */,
  &varname35   /* andcm_i */,
  &varname359  /* br.cond */,
  &varname359  /* br_r.cond */,
  &varname359  /* br.call */,
  &varname359  /* br_r.call */,
  &varname359  /* br.ret */,
  &varname359  /* br.ia */,
  &varname365  /* br.cloop */,
  &varname365  /* br.ctop */,
  &varname365  /* br.cexit */,
  &varname365  /* br.wtop */,
  &varname365  /* br.wexit */,
  &varname317  /* break.i */,
  &varname329  /* break.b */,
  &varname323  /* break.m */,
  &varname341  /* break.f */,
  &varname335  /* break.x */,
  &varname359  /* brl.cond */,
  &varname359  /* brl.call */,
  &varname371  /* brp */,
  &varname371  /* brp_r */,
  &varname371  /* brp.ret */,
  &varname101  /* bsw.0 */,
  &varname101  /* bsw.1 */,
  &varname389  /* chk.s.i */,
  &varname395  /* chk.s.m */,
  &varname395  /* chk_f.s */,
  &varname383  /* chk.a */,
  &varname383  /* chk_f.a */,
  &varname353  /* clrrrb */,
  &varname353  /* clrrrb.pr */,
  &varname29   /* cmp.eq */,
  &varname29   /* cmp.eq.unc */,
  &varname29   /* cmp.eq.and */,
  &varname29   /* cmp.eq.or */,
  &varname29   /* cmp.eq.or.andcm */,
  &varname29   /* cmp.ne.and */,
  &varname29   /* cmp.ne.or */,
  &varname29   /* cmp.ne.or.andcm */,
  &varname29   /* cmp.lt */,
  &varname29   /* cmp.lt.unc */,
  &varname29   /* cmp.ltu */,
  &varname29   /* cmp.ltu.unc */,
  &varname29   /* cmp_z1.lt.and */,
  &varname29   /* cmp_z1.lt.or */,
  &varname29   /* cmp_z1.lt.or.andcm */,
  &varname29   /* cmp_z1.le.and */,
  &varname29   /* cmp_z1.le.or */,
  &varname29   /* cmp_z1.le.or.andcm */,
  &varname29   /* cmp_z1.gt.and */,
  &varname29   /* cmp_z1.gt.or */,
  &varname29   /* cmp_z1.gt.or.andcm */,
  &varname29   /* cmp_z1.ge.and */,
  &varname29   /* cmp_z1.ge.or */,
  &varname29   /* cmp_z1.ge.or.andcm */,
  &varname29   /* cmp_i.eq */,
  &varname29   /* cmp_i.eq.unc */,
  &varname29   /* cmp_i.eq.and */,
  &varname29   /* cmp_i.eq.or */,
  &varname29   /* cmp_i.eq.or.andcm */,
  &varname29   /* cmp_i.ne.and */,
  &varname29   /* cmp_i.ne.or */,
  &varname29   /* cmp_i.ne.or.andcm */,
  &varname29   /* cmp_i.lt */,
  &varname29   /* cmp_i.lt.unc */,
  &varname29   /* cmp_i.ltu */,
  &varname29   /* cmp_i.ltu.unc */,
  &varname29   /* cmp4.eq */,
  &varname29   /* cmp4.eq.unc */,
  &varname29   /* cmp4.eq.and */,
  &varname29   /* cmp4.eq.or */,
  &varname29   /* cmp4.eq.or.andcm */,
  &varname29   /* cmp4.ne.and */,
  &varname29   /* cmp4.ne.or */,
  &varname29   /* cmp4.ne.or.andcm */,
  &varname29   /* cmp4.lt */,
  &varname29   /* cmp4.lt.unc */,
  &varname29   /* cmp4.ltu */,
  &varname29   /* cmp4.ltu.unc */,
  &varname29   /* cmp4_z1.lt.and */,
  &varname29   /* cmp4_z1.lt.or */,
  &varname29   /* cmp4_z1.lt.or.andcm */,
  &varname29   /* cmp4_z1.le.and */,
  &varname29   /* cmp4_z1.le.or */,
  &varname29   /* cmp4_z1.le.or.andcm */,
  &varname29   /* cmp4_z1.gt.and */,
  &varname29   /* cmp4_z1.gt.or */,
  &varname29   /* cmp4_z1.gt.or.andcm */,
  &varname29   /* cmp4_z1.ge.and */,
  &varname29   /* cmp4_z1.ge.or */,
  &varname29   /* cmp4_z1.ge.or.andcm */,
  &varname29   /* cmp4_i.eq */,
  &varname29   /* cmp4_i.eq.unc */,
  &varname29   /* cmp4_i.eq.and */,
  &varname29   /* cmp4_i.eq.or */,
  &varname29   /* cmp4_i.eq.or.andcm */,
  &varname29   /* cmp4_i.ne.and */,
  &varname29   /* cmp4_i.ne.or */,
  &varname29   /* cmp4_i.ne.or.andcm */,
  &varname29   /* cmp4_i.lt */,
  &varname29   /* cmp4_i.lt.unc */,
  &varname29   /* cmp4_i.ltu */,
  &varname29   /* cmp4_i.ltu.unc */,
  &varname167  /* cmpxchg1 */,
  &varname167  /* cmpxchg2 */,
  &varname167  /* cmpxchg4 */,
  &varname167  /* cmpxchg8 */,
  &varname353  /* cover */,
  &varname107  /* czx1.l */,
  &varname107  /* czx1.r */,
  &varname107  /* czx2.l */,
  &varname107  /* czx2.r */,
  &varname47   /* dep */,
  &varname47   /* dep.z */,
  &varname47   /* dep_i */,
  &varname47   /* dep_i.z */,
  &varname89   /* epc */,
  &varname47   /* extr */,
  &varname47   /* extr.u */,
  &varname197  /* famax */,
  &varname197  /* famin */,
  &varname197  /* fand */,
  &varname197  /* fandcm */,
  &varname71   /* fc */,
  &varname239  /* fchkf */,
  &varname233  /* fclass.m */,
  &varname233  /* fclass.m.unc */,
  &varname239  /* fclrf */,
  &varname233  /* fcmp.eq */,
  &varname233  /* fcmp.eq.unc */,
  &varname233  /* fcmp.lt */,
  &varname233  /* fcmp.lt.unc */,
  &varname233  /* fcmp.le */,
  &varname233  /* fcmp.le.unc */,
  &varname233  /* fcmp.unord */,
  &varname233  /* fcmp.unord.unc */,
  &varname173  /* fcvt.fx */,
  &varname173  /* fcvt.fx.trunc */,
  &varname173  /* fcvt.fxu */,
  &varname173  /* fcvt.fxu.trunc */,
  &varname173  /* fcvt.xf */,
  &varname167  /* fetchadd4 */,
  &varname167  /* fetchadd8 */,
  &varname347  /* flushrs */,
  &varname185  /* fma */,
  &varname185  /* fma.s */,
  &varname185  /* fma.d */,
  &varname197  /* fmax */,
  &varname197  /* fmerge.ns */,
  &varname197  /* fmerge.s */,
  &varname197  /* fmerge.se */,
  &varname197  /* fmin */,
  &varname197  /* fmix.l */,
  &varname197  /* fmix.r */,
  &varname197  /* fmix.lr */,
  &varname185  /* fms */,
  &varname185  /* fms.s */,
  &varname185  /* fms.d */,
  &varname185  /* fnma */,
  &varname185  /* fnma.s */,
  &varname185  /* fnma.d */,
  &varname197  /* for */,
  &varname197  /* fpack */,
  &varname215  /* fpamax */,
  &varname215  /* fpamin */,
  &varname215  /* fpcmp.eq */,
  &varname215  /* fpcmp.lt */,
  &varname215  /* fpcmp.le */,
  &varname215  /* fpcmp.unord */,
  &varname215  /* fpcmp.neq */,
  &varname215  /* fpcmp.nlt */,
  &varname215  /* fpcmp.nle */,
  &varname215  /* fpcmp.ord */,
  &varname209  /* fpcvt.fx */,
  &varname209  /* fpcvt.fx.trunc */,
  &varname209  /* fpcvt.fxu */,
  &varname209  /* fpcvt.fxu.trunc */,
  &varname203  /* fpma */,
  &varname215  /* fpmax */,
  &varname215  /* fpmerge.ns */,
  &varname215  /* fpmerge.s */,
  &varname221  /* fpmerge.se */,
  &varname215  /* fpmin */,
  &varname203  /* fpms */,
  &varname203  /* fpnma */,
  &varname215  /* fprcpa */,
  &varname215  /* fprsqrta */,
  &varname197  /* frcpa */,
  &varname197  /* frsqrta */,
  &varname197  /* fselect */,
  &varname239  /* fsetc */,
  &varname197  /* fswap */,
  &varname197  /* fswap.nl */,
  &varname197  /* fswap.nr */,
  &varname197  /* fsxt.l */,
  &varname197  /* fsxt.r */,
  &varname65   /* fwb */,
  &varname197  /* fxor */,
  &varname251  /* getf.s */,
  &varname251  /* getf.d */,
  &varname251  /* getf.exp */,
  &varname251  /* getf.sig */,
  &varname59   /* invala */,
  &varname59   /* invala.e */,
  &varname59   /* invala_f.e */,
  &varname71   /* itc.i */,
  &varname71   /* itc.d */,
  &varname71   /* itr.i */,
  &varname71   /* itr.d */,
  &varname125  /* ld1 */,
  &varname125  /* ld1_r */,
  &varname125  /* ld1_i */,
  &varname125  /* ld2 */,
  &varname125  /* ld2_r */,
  &varname125  /* ld2_i */,
  &varname125  /* ld4 */,
  &varname125  /* ld4_r */,
  &varname125  /* ld4_i */,
  &varname125  /* ld8 */,
  &varname125  /* ld8_r */,
  &varname125  /* ld8_i */,
  &varname125  /* ld8.fill */,
  &varname125  /* ld8_r.fill */,
  &varname125  /* ld8_i.fill */,
  &varname131  /* ldfs */,
  &varname131  /* ldfs_r */,
  &varname131  /* ldfs_i */,
  &varname131  /* ldfd */,
  &varname131  /* ldfd_r */,
  &varname131  /* ldfd_i */,
  &varname131  /* ldfe */,
  &varname131  /* ldfe_r */,
  &varname131  /* ldfe_i */,
  &varname131  /* ldf8 */,
  &varname131  /* ldf8_r */,
  &varname131  /* ldf8_i */,
  &varname131  /* ldf.fill */,
  &varname131  /* ldf_r.fill */,
  &varname131  /* ldf_i.fill */,
  &varname143  /* ldfps */,
  &varname143  /* ldfps_i */,
  &varname143  /* ldfpd */,
  &varname143  /* ldfpd_i */,
  &varname143  /* ldfp8 */,
  &varname143  /* ldfp8_i */,
  &varname119  /* lfetch */,
  &varname119  /* lfetch.excl */,
  &varname119  /* lfetch.fault */,
  &varname119  /* lfetch.fault.excl */,
  &varname119  /* lfetch_r */,
  &varname119  /* lfetch_r.excl */,
  &varname119  /* lfetch_r.fault */,
  &varname119  /* lfetch_r.fault.excl */,
  &varname119  /* lfetch_i */,
  &varname119  /* lfetch_i.excl */,
  &varname119  /* lfetch_i.fault */,
  &varname119  /* lfetch_i.fault.excl */,
  &varname347  /* loadrs */,
  &varname65   /* mf */,
  &varname65   /* mf.a */,
  &varname413  /* mix1.l */,
  &varname413  /* mix1.r */,
  &varname413  /* mix2.l */,
  &varname413  /* mix2.r */,
  &varname413  /* mix4.l */,
  &varname413  /* mix4.r */,
  &varname299  /* mov_f_ar.i */,
  &varname287  /* mov_t_ar_r.i */,
  &varname287  /* mov_t_ar_i.i */,
  &varname293  /* mov_f_ar.m */,
  &varname281  /* mov_t_ar_r.m */,
  &varname281  /* mov_t_ar_i.m */,
  &varname275  /* mov_f_br */,
  &varname269  /* mov_t_br_i */,
  &varname269  /* mov_t_br.ret */,
  &varname305  /* mov_t_cr */,
  &varname311  /* mov_f_cr */,
  &varname71   /* mov_f_cpuid */,
  &varname71   /* mov_t_dbr */,
  &varname71   /* mov_f_dbr */,
  &varname71   /* mov_t_ibr */,
  &varname71   /* mov_f_ibr */,
  &varname71   /* mov_t_msr */,
  &varname71   /* mov_f_msr */,
  &varname71   /* mov_t_pkr */,
  &varname71   /* mov_f_pkr */,
  &varname71   /* mov_t_pmc */,
  &varname71   /* mov_f_pmc */,
  &varname71   /* mov_t_pmd */,
  &varname71   /* mov_f_pmd */,
  &varname71   /* mov_t_rr */,
  &varname71   /* mov_f_rr */,
  &varname377  /* mov_f_ip */,
  &varname263  /* mov_f_pr */,
  &varname257  /* mov_t_pr */,
  &varname257  /* mov_t_pr_i */,
  &varname71   /* mov_t_psr */,
  &varname71   /* mov_f_psr */,
  &varname71   /* mov_t_psrum */,
  &varname71   /* mov_f_psrum */,
  &varname113  /* movl */,
  &varname413  /* mux1 */,
  &varname413  /* mux2 */,
  &varname317  /* nop.i */,
  &varname329  /* nop.b */,
  &varname323  /* nop.m */,
  &varname341  /* nop.f */,
  &varname335  /* nop.x */,
  &varname35   /* or */,
  &varname35   /* or_i */,
  &varname413  /* pack2.sss */,
  &varname413  /* pack2.uss */,
  &varname413  /* pack4.sss */,
  &varname401  /* padd1 */,
  &varname401  /* padd1.sss */,
  &varname401  /* padd1.uus */,
  &varname401  /* padd1.uuu */,
  &varname401  /* padd2 */,
  &varname401  /* padd2.sss */,
  &varname401  /* padd2.uus */,
  &varname401  /* padd2.uuu */,
  &varname401  /* padd4 */,
  &varname401  /* pavg1 */,
  &varname401  /* pavg1.raz */,
  &varname401  /* pavg2 */,
  &varname401  /* pavg2.raz */,
  &varname401  /* pavgsub1 */,
  &varname401  /* pavgsub2 */,
  &varname401  /* pcmp1.eq */,
  &varname401  /* pcmp1.gt */,
  &varname401  /* pcmp2.eq */,
  &varname401  /* pcmp2.gt */,
  &varname401  /* pcmp4.eq */,
  &varname401  /* pcmp4.gt */,
  &varname407  /* pmax1.u */,
  &varname407  /* pmax2 */,
  &varname407  /* pmin1.u */,
  &varname407  /* pmin2 */,
  &varname419  /* pmpy2.r */,
  &varname419  /* pmpy2.l */,
  &varname419  /* pmpyshr2 */,
  &varname419  /* pmpyshr2.u */,
  &varname419  /* popcnt */,
  &varname71   /* probe.r */,
  &varname71   /* probe.w */,
  &varname71   /* probe_i.r */,
  &varname71   /* probe_i.w */,
  &varname71   /* probe.r.fault */,
  &varname71   /* probe.w.fault */,
  &varname71   /* probe.rw.fault */,
  &varname407  /* psad1 */,
  &varname413  /* pshl2 */,
  &varname413  /* pshl4 */,
  &varname413  /* pshl2_i */,
  &varname413  /* pshl4_i */,
  &varname401  /* pshladd2 */,
  &varname413  /* pshr2 */,
  &varname413  /* pshr2.u */,
  &varname413  /* pshr4 */,
  &varname413  /* pshr4.u */,
  &varname413  /* pshr2_i */,
  &varname413  /* pshr2_i.u */,
  &varname413  /* pshr4_i */,
  &varname413  /* pshr4_i.u */,
  &varname401  /* pshradd2 */,
  &varname401  /* psub1 */,
  &varname401  /* psub2 */,
  &varname401  /* psub4 */,
  &varname401  /* psub1.sss */,
  &varname401  /* psub1.uus */,
  &varname401  /* psub1.uuu */,
  &varname401  /* psub2.sss */,
  &varname401  /* psub2.uus */,
  &varname401  /* psub2.uuu */,
  &varname71   /* ptc.e */,
  &varname71   /* ptc.g */,
  &varname71   /* ptc.ga */,
  &varname71   /* ptc.l */,
  &varname71   /* ptr.d */,
  &varname71   /* ptr.i */,
  &varname101  /* rfi */,
  &varname71   /* rsm */,
  &varname71   /* rum */,
  &varname245  /* setf.s */,
  &varname245  /* setf.d */,
  &varname245  /* setf.exp */,
  &varname245  /* setf.sig */,
  &varname413  /* shl */,
  &varname23   /* shladd */,
  &varname41   /* shladdp4 */,
  &varname413  /* shr */,
  &varname413  /* shr.u */,
  &varname47   /* shrp */,
  &varname65   /* srlz.i */,
  &varname65   /* srlz.d */,
  &varname71   /* ssm */,
  &varname161  /* st1 */,
  &varname161  /* st1_i */,
  &varname161  /* st2 */,
  &varname161  /* st2_i */,
  &varname161  /* st4 */,
  &varname161  /* st4_i */,
  &varname161  /* st8 */,
  &varname161  /* st8_i */,
  &varname161  /* st8.spill */,
  &varname161  /* st8_i.spill */,
  &varname227  /* stfs */,
  &varname227  /* stfs_i */,
  &varname227  /* stfd */,
  &varname227  /* stfd_i */,
  &varname227  /* stfe */,
  &varname227  /* stfe_i */,
  &varname227  /* stf8 */,
  &varname227  /* stf8_i */,
  &varname227  /* stf.spill */,
  &varname227  /* stf_i.spill */,
  &varname23   /* sub */,
  &varname23   /* sub_1 */,
  &varname23   /* sub_i */,
  &varname71   /* sum */,
  &varname107  /* sxt1 */,
  &varname107  /* sxt2 */,
  &varname107  /* sxt4 */,
  &varname65   /* sync.i */,
  &varname71   /* tak */,
  &varname53   /* tbit.z */,
  &varname53   /* tbit.z.unc */,
  &varname53   /* tbit.z.and */,
  &varname53   /* tbit.z.or */,
  &varname53   /* tbit.z.or.andcm */,
  &varname53   /* tbit.nz.and */,
  &varname53   /* tbit.nz.or */,
  &varname53   /* tbit.nz.or.andcm */,
  &varname71   /* thash */,
  &varname53   /* tnat.z */,
  &varname53   /* tnat.z.unc */,
  &varname53   /* tnat.z.and */,
  &varname53   /* tnat.z.or */,
  &varname53   /* tnat.z.or.andcm */,
  &varname53   /* tnat.nz.and */,
  &varname53   /* tnat.nz.or */,
  &varname53   /* tnat.nz.or.andcm */,
  &varname71   /* tpa */,
  &varname71   /* ttag */,
  &varname413  /* unpack1.l */,
  &varname413  /* unpack1.h */,
  &varname413  /* unpack2.l */,
  &varname413  /* unpack2.h */,
  &varname413  /* unpack4.l */,
  &varname413  /* unpack4.h */,
  &varname167  /* xchg1 */,
  &varname167  /* xchg2 */,
  &varname167  /* xchg4 */,
  &varname167  /* xchg8 */,
  &varname191  /* xma.l */,
  &varname191  /* xma.h */,
  &varname191  /* xma.hu */,
  &varname35   /* xor */,
  &varname35   /* xor_i */,
  &varname107  /* zxt1 */,
  &varname107  /* zxt2 */,
  &varname107  /* zxt4 */,
  &varname71   /* alloc */,
  &varname359  /* br */,
  &varname359  /* br_r */,
  &varname359  /* brl */,
  &varname29   /* cmp.eq.orcm */,
  &varname29   /* cmp.eq.andcm */,
  &varname29   /* cmp.eq.and.orcm */,
  &varname29   /* cmp.ne */,
  &varname29   /* cmp.ne.unc */,
  &varname29   /* cmp.ne.orcm */,
  &varname29   /* cmp.ne.andcm */,
  &varname29   /* cmp.ne.and.orcm */,
  &varname29   /* cmp.le */,
  &varname29   /* cmp.le.unc */,
  &varname29   /* cmp.gt */,
  &varname29   /* cmp.gt.unc */,
  &varname29   /* cmp.ge */,
  &varname29   /* cmp.ge.unc */,
  &varname29   /* cmp.leu */,
  &varname29   /* cmp.leu.unc */,
  &varname29   /* cmp.gtu */,
  &varname29   /* cmp.gtu.unc */,
  &varname29   /* cmp.geu */,
  &varname29   /* cmp.geu.unc */,
  &varname29   /* cmp_z1.lt.orcm */,
  &varname29   /* cmp_z1.lt.andcm */,
  &varname29   /* cmp_z1.lt.and.orcm */,
  &varname29   /* cmp_z1.le.orcm */,
  &varname29   /* cmp_z1.le.andcm */,
  &varname29   /* cmp_z1.le.and.orcm */,
  &varname29   /* cmp_z1.gt.orcm */,
  &varname29   /* cmp_z1.gt.andcm */,
  &varname29   /* cmp_z1.gt.and.orcm */,
  &varname29   /* cmp_z1.ge.orcm */,
  &varname29   /* cmp_z1.ge.andcm */,
  &varname29   /* cmp_z1.ge.and.orcm */,
  &varname29   /* cmp_z2.lt.orcm */,
  &varname29   /* cmp_z2.lt.andcm */,
  &varname29   /* cmp_z2.lt.and.orcm */,
  &varname29   /* cmp_z2.le.orcm */,
  &varname29   /* cmp_z2.le.andcm */,
  &varname29   /* cmp_z2.le.and.orcm */,
  &varname29   /* cmp_z2.gt.orcm */,
  &varname29   /* cmp_z2.gt.andcm */,
  &varname29   /* cmp_z2.gt.and.orcm */,
  &varname29   /* cmp_z2.ge.orcm */,
  &varname29   /* cmp_z2.ge.andcm */,
  &varname29   /* cmp_z2.ge.and.orcm */,
  &varname29   /* cmp_z2.lt.and */,
  &varname29   /* cmp_z2.lt.or */,
  &varname29   /* cmp_z2.lt.or.andcm */,
  &varname29   /* cmp_z2.le.and */,
  &varname29   /* cmp_z2.le.or */,
  &varname29   /* cmp_z2.le.or.andcm */,
  &varname29   /* cmp_z2.gt.and */,
  &varname29   /* cmp_z2.gt.or */,
  &varname29   /* cmp_z2.gt.or.andcm */,
  &varname29   /* cmp_z2.ge.and */,
  &varname29   /* cmp_z2.ge.or */,
  &varname29   /* cmp_z2.ge.or.andcm */,
  &varname29   /* cmp_i.eq.orcm */,
  &varname29   /* cmp_i.eq.andcm */,
  &varname29   /* cmp_i.eq.and.orcm */,
  &varname29   /* cmp_i.ne */,
  &varname29   /* cmp_i.ne.unc */,
  &varname29   /* cmp_i.ne.orcm */,
  &varname29   /* cmp_i.ne.andcm */,
  &varname29   /* cmp_i.ne.and.orcm */,
  &varname29   /* cmp_i.le */,
  &varname29   /* cmp_i.le.unc */,
  &varname29   /* cmp_i.gt */,
  &varname29   /* cmp_i.gt.unc */,
  &varname29   /* cmp_i.ge */,
  &varname29   /* cmp_i.ge.unc */,
  &varname29   /* cmp_i.leu */,
  &varname29   /* cmp_i.leu.unc */,
  &varname29   /* cmp_i.gtu */,
  &varname29   /* cmp_i.gtu.unc */,
  &varname29   /* cmp_i.geu */,
  &varname29   /* cmp_i.geu.unc */,
  &varname29   /* cmp4.eq.orcm */,
  &varname29   /* cmp4.eq.andcm */,
  &varname29   /* cmp4.eq.and.orcm */,
  &varname29   /* cmp4.ne */,
  &varname29   /* cmp4.ne.unc */,
  &varname29   /* cmp4.ne.orcm */,
  &varname29   /* cmp4.ne.andcm */,
  &varname29   /* cmp4.ne.and.orcm */,
  &varname29   /* cmp4.le */,
  &varname29   /* cmp4.le.unc */,
  &varname29   /* cmp4.gt */,
  &varname29   /* cmp4.gt.unc */,
  &varname29   /* cmp4.ge */,
  &varname29   /* cmp4.ge.unc */,
  &varname29   /* cmp4.leu */,
  &varname29   /* cmp4.leu.unc */,
  &varname29   /* cmp4.gtu */,
  &varname29   /* cmp4.gtu.unc */,
  &varname29   /* cmp4.geu */,
  &varname29   /* cmp4.geu.unc */,
  &varname29   /* cmp4_z1.lt.orcm */,
  &varname29   /* cmp4_z1.lt.andcm */,
  &varname29   /* cmp4_z1.lt.and.orcm */,
  &varname29   /* cmp4_z1.le.orcm */,
  &varname29   /* cmp4_z1.le.andcm */,
  &varname29   /* cmp4_z1.le.and.orcm */,
  &varname29   /* cmp4_z1.gt.orcm */,
  &varname29   /* cmp4_z1.gt.andcm */,
  &varname29   /* cmp4_z1.gt.and.orcm */,
  &varname29   /* cmp4_z1.ge.orcm */,
  &varname29   /* cmp4_z1.ge.andcm */,
  &varname29   /* cmp4_z1.ge.and.orcm */,
  &varname29   /* cmp4_z2.lt.orcm */,
  &varname29   /* cmp4_z2.lt.andcm */,
  &varname29   /* cmp4_z2.lt.and.orcm */,
  &varname29   /* cmp4_z2.le.orcm */,
  &varname29   /* cmp4_z2.le.andcm */,
  &varname29   /* cmp4_z2.le.and.orcm */,
  &varname29   /* cmp4_z2.gt.orcm */,
  &varname29   /* cmp4_z2.gt.andcm */,
  &varname29   /* cmp4_z2.gt.and.orcm */,
  &varname29   /* cmp4_z2.ge.orcm */,
  &varname29   /* cmp4_z2.ge.andcm */,
  &varname29   /* cmp4_z2.ge.and.orcm */,
  &varname29   /* cmp4_z2.lt.and */,
  &varname29   /* cmp4_z2.lt.or */,
  &varname29   /* cmp4_z2.lt.or.andcm */,
  &varname29   /* cmp4_z2.le.and */,
  &varname29   /* cmp4_z2.le.or */,
  &varname29   /* cmp4_z2.le.or.andcm */,
  &varname29   /* cmp4_z2.gt.and */,
  &varname29   /* cmp4_z2.gt.or */,
  &varname29   /* cmp4_z2.gt.or.andcm */,
  &varname29   /* cmp4_z2.ge.and */,
  &varname29   /* cmp4_z2.ge.or */,
  &varname29   /* cmp4_z2.ge.or.andcm */,
  &varname29   /* cmp4_i.eq.orcm */,
  &varname29   /* cmp4_i.eq.andcm */,
  &varname29   /* cmp4_i.eq.and.orcm */,
  &varname29   /* cmp4_i.ne */,
  &varname29   /* cmp4_i.ne.unc */,
  &varname29   /* cmp4_i.ne.orcm */,
  &varname29   /* cmp4_i.ne.andcm */,
  &varname29   /* cmp4_i.ne.and.orcm */,
  &varname29   /* cmp4_i.le */,
  &varname29   /* cmp4_i.le.unc */,
  &varname29   /* cmp4_i.gt */,
  &varname29   /* cmp4_i.gt.unc */,
  &varname29   /* cmp4_i.ge */,
  &varname29   /* cmp4_i.ge.unc */,
  &varname29   /* cmp4_i.leu */,
  &varname29   /* cmp4_i.leu.unc */,
  &varname29   /* cmp4_i.gtu */,
  &varname29   /* cmp4_i.gtu.unc */,
  &varname29   /* cmp4_i.geu */,
  &varname29   /* cmp4_i.geu.unc */,
  &varname197  /* fabs */,
  &varname185  /* fadd */,
  &varname185  /* fadd.s */,
  &varname185  /* fadd.d */,
  &varname233  /* fclass.nm */,
  &varname233  /* fclass.nm.unc */,
  &varname233  /* fcmp.gt */,
  &varname233  /* fcmp.gt.unc */,
  &varname233  /* fcmp.ge */,
  &varname233  /* fcmp.ge.unc */,
  &varname233  /* fcmp.neq */,
  &varname233  /* fcmp.neq.unc */,
  &varname233  /* fcmp.nlt */,
  &varname233  /* fcmp.nlt.unc */,
  &varname233  /* fcmp.nle */,
  &varname233  /* fcmp.nle.unc */,
  &varname233  /* fcmp.ngt */,
  &varname233  /* fcmp.ngt.unc */,
  &varname233  /* fcmp.nge */,
  &varname233  /* fcmp.nge.unc */,
  &varname233  /* fcmp.ord */,
  &varname233  /* fcmp.ord.unc */,
  &varname185  /* fcvt.xuf */,
  &varname185  /* fcvt.xuf.s */,
  &varname185  /* fcvt.xuf.d */,
  &varname185  /* fmpy */,
  &varname185  /* fmpy.s */,
  &varname185  /* fmpy.d */,
  &varname197  /* fneg */,
  &varname197  /* fnegabs */,
  &varname185  /* fnmpy */,
  &varname185  /* fnmpy.s */,
  &varname185  /* fnmpy.d */,
  &varname185  /* fnorm */,
  &varname185  /* fnorm.s */,
  &varname185  /* fnorm.d */,
  &varname215  /* fpabs */,
  &varname215  /* fpcmp.gt */,
  &varname215  /* fpcmp.ge */,
  &varname215  /* fpcmp.ngt */,
  &varname215  /* fpcmp.nge */,
  &varname203  /* fpmpy */,
  &varname215  /* fpneg */,
  &varname215  /* fpnegabs */,
  &varname203  /* fpnmpy */,
  &varname185  /* fsub */,
  &varname185  /* fsub.s */,
  &varname185  /* fsub.d */,
  &varname269  /* mov_t_br */,
  &varname197  /* mov_f */,
  &varname23   /* mov */,
  &varname23   /* mov_i */,
  &varname47   /* shl_i */,
  &varname47   /* shr_i */,
  &varname47   /* shr_i.u */,
  &varname53   /* tbit.nz */,
  &varname53   /* tbit.nz.unc */,
  &varname53   /* tnat.nz */,
  &varname53   /* tnat.nz.unc */,
  &varname191  /* xma.lu */,
  &varname191  /* xmpy.l */,
  &varname191  /* xmpy.lu */,
  &varname191  /* xmpy.h */,
  &varname191  /* xmpy.hu */,
  &varname443  /* break */,
  &varname443  /* chk.s */,
  &varname29   /* cmp.lt.and */,
  &varname29   /* cmp.lt.or */,
  &varname29   /* cmp.lt.or.andcm */,
  &varname29   /* cmp.le.and */,
  &varname29   /* cmp.le.or */,
  &varname29   /* cmp.le.or.andcm */,
  &varname29   /* cmp.gt.and */,
  &varname29   /* cmp.gt.or */,
  &varname29   /* cmp.gt.or.andcm */,
  &varname29   /* cmp.ge.and */,
  &varname29   /* cmp.ge.or */,
  &varname29   /* cmp.ge.or.andcm */,
  &varname29   /* cmp.lt.orcm */,
  &varname29   /* cmp.lt.andcm */,
  &varname29   /* cmp.lt.and.orcm */,
  &varname29   /* cmp.le.orcm */,
  &varname29   /* cmp.le.andcm */,
  &varname29   /* cmp.le.and.orcm */,
  &varname29   /* cmp.gt.orcm */,
  &varname29   /* cmp.gt.andcm */,
  &varname29   /* cmp.gt.and.orcm */,
  &varname29   /* cmp.ge.orcm */,
  &varname29   /* cmp.ge.andcm */,
  &varname29   /* cmp.ge.and.orcm */,
  &varname29   /* cmp4.lt.and */,
  &varname29   /* cmp4.lt.or */,
  &varname29   /* cmp4.lt.or.andcm */,
  &varname29   /* cmp4.le.and */,
  &varname29   /* cmp4.le.or */,
  &varname29   /* cmp4.le.or.andcm */,
  &varname29   /* cmp4.gt.and */,
  &varname29   /* cmp4.gt.or */,
  &varname29   /* cmp4.gt.or.andcm */,
  &varname29   /* cmp4.ge.and */,
  &varname29   /* cmp4.ge.or */,
  &varname29   /* cmp4.ge.or.andcm */,
  &varname29   /* cmp4.lt.orcm */,
  &varname29   /* cmp4.lt.andcm */,
  &varname29   /* cmp4.lt.and.orcm */,
  &varname29   /* cmp4.le.orcm */,
  &varname29   /* cmp4.le.andcm */,
  &varname29   /* cmp4.le.and.orcm */,
  &varname29   /* cmp4.gt.orcm */,
  &varname29   /* cmp4.gt.andcm */,
  &varname29   /* cmp4.gt.and.orcm */,
  &varname29   /* cmp4.ge.orcm */,
  &varname29   /* cmp4.ge.andcm */,
  &varname29   /* cmp4.ge.and.orcm */,
  &varname443  /* mov_f_ar */,
  &varname443  /* mov_t_ar_r */,
  &varname443  /* mov_t_ar_i */,
  &varname443  /* nop */,
  &varname443  /* asm */,
  &varname443  /* intrncall */,
  &varname443  /* spadjust */,
  &varname443  /* copy.br */,
  &varname437  /* begin.pregtn */,
  &varname437  /* end.pregtn */,
  &varname437  /* bwd.bar */,
  &varname437  /* fwd.bar */,
  &varname437  /* dfixup */,
  &varname437  /* ffixup */,
  &varname437  /* ifixup */,
  &varname437  /* label */,
  &varname437  /* noop */,
};
