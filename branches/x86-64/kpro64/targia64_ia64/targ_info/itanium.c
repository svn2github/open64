#include "ti_si.h"
SI_RESOURCE resource4 = {"issue",0,6,0,0};
SI_RESOURCE resource5 = {"sem",1,1,0,4};
SI_RESOURCE resource6 = {"integer_or_memory",2,4,0,6};
SI_RESOURCE resource7 = {"memory",3,2,0,10};
SI_RESOURCE resource8 = {"memory0",4,1,0,13};
SI_RESOURCE resource9 = {"floating-point",5,2,0,15};
SI_RESOURCE resource10 = {"floating-point0",6,1,0,18};
SI_RESOURCE resource11 = {"integer",7,2,0,20};
SI_RESOURCE resource12 = {"integer0",8,1,0,23};
SI_RESOURCE resource13 = {"branch",9,3,0,25};
SI_RESOURCE resource14 = {"B0_or_B1",10,2,0,28};
SI_RESOURCE resource15 = {"B0_or_B2",11,2,0,31};
SI_RESOURCE resource16 = {"B2",12,1,0,34};
const int SI_resource_count = 13;
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
};
const SI_RRW SI_RRW_initializer = 0x901084c1LL;
const SI_RRW SI_RRW_overuse_mask = 0xa494a5228LL;
const int SI_issue_slot_count = 0;
SI_ISSUE_SLOT * const SI_issue_slots[1] = {0};

/* Instruction group IALU */
static const SI_RRW res_req17[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname18[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname19[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency21[] = {0,0,0,0,0,0};
static const mUINT8 latency22[] = {1,1,1};
static SI varname20 = {
  "IALU",
  0              , /* id */
  latency21      , /* operand latency */
  latency22      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req17      , /* resource requirement */
  varname18      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname19      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ICMP */
static const SI_RRW res_req23[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname24[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname25[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency27[] = {0,0,0,0,0,0};
static const mUINT8 latency28[] = {0,0,0};
static SI varname26 = {
  "ICMP",
  1              , /* id */
  latency27      , /* operand latency */
  latency28      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req23      , /* resource requirement */
  varname24      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname25      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ILOG */
static const SI_RRW res_req29[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname30[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname31[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency33[] = {0,0,0,0,0,0};
static const mUINT8 latency34[] = {1,1,1};
static SI varname32 = {
  "ILOG",
  2              , /* id */
  latency33      , /* operand latency */
  latency34      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req29      , /* resource requirement */
  varname30      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname31      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group PNT */
static const SI_RRW res_req35[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname36[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname37[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency39[] = {0,0,0,0,0,0};
static const mUINT8 latency40[] = {1,1,1};
static SI varname38 = {
  "PNT",
  3              , /* id */
  latency39      , /* operand latency */
  latency40      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req35      , /* resource requirement */
  varname36      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname37      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ISHF */
static const SI_RRW res_req41[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname42[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname43[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency45[] = {0,0,0,0,0,0};
static const mUINT8 latency46[] = {1,1,1};
static SI varname44 = {
  "ISHF",
  4              , /* id */
  latency45      , /* operand latency */
  latency46      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req41      , /* resource requirement */
  varname42      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname43      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TBIT */
static const SI_RRW res_req47[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname48[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname49[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency51[] = {0,0,0,0,0,0};
static const mUINT8 latency52[] = {0,0,0};
static SI varname50 = {
  "TBIT",
  5              , /* id */
  latency51      , /* operand latency */
  latency52      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req47      , /* resource requirement */
  varname48      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname49      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_M */
static const SI_RRW res_req53[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname54[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname55[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency57[] = {0,0,0,0,0,0};
static const mUINT8 latency58[] = {1,1,1};
static SI varname56 = {
  "SYST_M",
  6              , /* id */
  latency57      , /* operand latency */
  latency58      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req53      , /* resource requirement */
  varname54      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname55      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_M0 */
static const SI_RRW res_req59[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname60[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname61[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency63[] = {0,0,0,0,0,0};
static const mUINT8 latency64[] = {1,1,1};
static SI varname62 = {
  "SYST_M0",
  7              , /* id */
  latency63      , /* operand latency */
  latency64      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req59      , /* resource requirement */
  varname60      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname61      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_I */
static const SI_RRW res_req65[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname66[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname67[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency69[] = {0,0,0,0,0,0};
static const mUINT8 latency70[] = {1,1,1};
static SI varname68 = {
  "SYST_I",
  8              , /* id */
  latency69      , /* operand latency */
  latency70      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req65      , /* resource requirement */
  varname66      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname67      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_I0 */
static const SI_RRW res_req71[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname72[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname73[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency75[] = {0,0,0,0,0,0};
static const mUINT8 latency76[] = {1,1,1};
static SI varname74 = {
  "SYST_I0",
  9              , /* id */
  latency75      , /* operand latency */
  latency76      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req71      , /* resource requirement */
  varname72      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname73      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B */
static const SI_RRW res_req77[] = {
  1,
  0x2000001LL
};
static const SI_RESOURCE_ID_SET varname78[] = {
  0x201LL
};

static SI_RESOURCE_TOTAL varname79[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */
};

static const mUINT8 latency81[] = {0,0,0,0,0,0};
static const mUINT8 latency82[] = {1,1,1};
static SI varname80 = {
  "SYST_B",
  10             , /* id */
  latency81      , /* operand latency */
  latency82      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req77      , /* resource requirement */
  varname78      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname79      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B0 */
static const SI_RRW res_req83[] = {
  1,
  0x92000001LL
};
static const SI_RESOURCE_ID_SET varname84[] = {
  0xe01LL
};

static SI_RESOURCE_TOTAL varname85[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */,
  {&resource14,1}/* B0_or_B1 */,
  {&resource15,1}/* B0_or_B2 */
};

static const mUINT8 latency87[] = {0,0,0,0,0,0};
static const mUINT8 latency88[] = {1,1,1};
static SI varname86 = {
  "SYST_B0",
  11             , /* id */
  latency87      , /* operand latency */
  latency88      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req83      , /* resource requirement */
  varname84      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname85      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SYST_B2 */
static const SI_RRW res_req89[] = {
  1,
  0x482000001LL
};
static const SI_RESOURCE_ID_SET varname90[] = {
  0x1a01LL
};

static SI_RESOURCE_TOTAL varname91[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */,
  {&resource15,1}/* B0_or_B2 */,
  {&resource16,1}/* B2 */
};

static const mUINT8 latency93[] = {0,0,0,0,0,0};
static const mUINT8 latency94[] = {1,1,1};
static SI varname92 = {
  "SYST_B2",
  12             , /* id */
  latency93      , /* operand latency */
  latency94      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req89      , /* resource requirement */
  varname90      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname91      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group XTD */
static const SI_RRW res_req95[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname96[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname97[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency99[] = {0,0,0,0,0,0};
static const mUINT8 latency100[] = {1,1,1};
static SI varname98 = {
  "XTD",
  13             , /* id */
  latency99      , /* operand latency */
  latency100     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req95      , /* resource requirement */
  varname96      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname97      , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LONG_I */
static const SI_RRW res_req101[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname102[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname103[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency105[] = {0,0,0,0,0,0};
static const mUINT8 latency106[] = {1,1,1};
static SI varname104 = {
  "LONG_I",
  14             , /* id */
  latency105     , /* operand latency */
  latency106     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req101     , /* resource requirement */
  varname102     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname103     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LFETCH */
static const SI_RRW res_req107[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname108[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname109[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency111[] = {0,0,0,0,0,0};
static const mUINT8 latency112[] = {6,6,6};
static SI varname110 = {
  "LFETCH",
  15             , /* id */
  latency111     , /* operand latency */
  latency112     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req107     , /* resource requirement */
  varname108     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname109     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group LD */
static const SI_RRW res_req113[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname114[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname115[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency117[] = {0,0,0,0,0,0};
static const mUINT8 latency118[] = {2,2,2};
static SI varname116 = {
  "LD",
  16             , /* id */
  latency117     , /* operand latency */
  latency118     , /* result latency */
  2              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req113     , /* resource requirement */
  varname114     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname115     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FLD */
static const SI_RRW res_req119[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname120[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname121[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency123[] = {0,0,0,0,0,0};
static const mUINT8 latency124[] = {9,9,9};
static SI varname122 = {
  "FLD",
  17             , /* id */
  latency123     , /* operand latency */
  latency124     , /* result latency */
  9              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req119     , /* resource requirement */
  varname120     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname121     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FLDP */
static const SI_RRW res_req125[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname126[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname127[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency129[] = {0,0,0,0,0,0};
static const mUINT8 latency130[] = {9,9,9};
static SI varname128 = {
  "FLDP",
  18             , /* id */
  latency129     , /* operand latency */
  latency130     , /* result latency */
  9              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req125     , /* resource requirement */
  varname126     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname127     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CLD */
static const SI_RRW res_req131[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname132[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname133[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency135[] = {0,0,0,0,0,0};
static const mUINT8 latency136[] = {0,0,0};
static SI varname134 = {
  "CLD",
  19             , /* id */
  latency135     , /* operand latency */
  latency136     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req131     , /* resource requirement */
  varname132     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname133     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCLD */
static const SI_RRW res_req137[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname138[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname139[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency141[] = {0,0,0,0,0,0};
static const mUINT8 latency142[] = {0,0,0};
static SI varname140 = {
  "FCLD",
  20             , /* id */
  latency141     , /* operand latency */
  latency142     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req137     , /* resource requirement */
  varname138     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname139     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group ST */
static const SI_RRW res_req143[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname144[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname145[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency147[] = {0,0,0,0,0,0};
static const mUINT8 latency148[] = {1,1,1};
static SI varname146 = {
  "ST",
  21             , /* id */
  latency147     , /* operand latency */
  latency148     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  1              , /* store available time */
  res_req143     , /* resource requirement */
  varname144     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname145     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SEM */
static const SI_RRW res_req149[] = {
  10,
  0x2451LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL,
  0x10LL
};
static const SI_RESOURCE_ID_SET varname150[] = {
  0x1fLL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL,
  0x2LL
};

static SI_RESOURCE_TOTAL varname151[] = {
  {&resource4,1}/* issue */,
  {&resource5,1}/* sem */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency153[] = {0,0,0,0,0,0};
static const mUINT8 latency154[] = {10,10,10};
static SI varname152 = {
  "SEM",
  22             , /* id */
  latency153     , /* operand latency */
  latency154     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req149     , /* resource requirement */
  varname150     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  5              , /* resource count vec size */
  varname151     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCVTFX */
static const SI_RRW res_req155[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname156[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname157[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency159[] = {0,0,0,0,0,0};
static const mUINT8 latency160[] = {7,7,7};
static SI varname158 = {
  "FCVTFX",
  23             , /* id */
  latency159     , /* operand latency */
  latency160     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req155     , /* resource requirement */
  varname156     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname157     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCVTXF */
static const SI_RRW res_req161[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname162[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname163[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency165[] = {0,0,0,0,0,0};
static const mUINT8 latency166[] = {5,5,5};
static SI varname164 = {
  "FCVTXF",
  24             , /* id */
  latency165     , /* operand latency */
  latency166     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req161     , /* resource requirement */
  varname162     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname163     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FMAC */
static const SI_RRW res_req167[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname168[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname169[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency171[] = {0,0,0,0,0,0};
static const mUINT8 latency172[] = {5,5,5};
static SI varname170 = {
  "FMAC",
  25             , /* id */
  latency171     , /* operand latency */
  latency172     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req167     , /* resource requirement */
  varname168     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname169     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group XMA */
static const SI_RRW res_req173[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname174[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname175[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency177[] = {0,0,0,0,0,0};
static const mUINT8 latency178[] = {7,7,7};
static SI varname176 = {
  "XMA",
  26             , /* id */
  latency177     , /* operand latency */
  latency178     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req173     , /* resource requirement */
  varname174     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname175     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FMISC */
static const SI_RRW res_req179[] = {
  1,
  0x48001LL
};
static const SI_RESOURCE_ID_SET varname180[] = {
  0x61LL
};

static SI_RESOURCE_TOTAL varname181[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */,
  {&resource10,1}/* floating-point0 */
};

static const mUINT8 latency183[] = {0,0,0,0,0,0};
static const mUINT8 latency184[] = {5,5,5};
static SI varname182 = {
  "FMISC",
  27             , /* id */
  latency183     , /* operand latency */
  latency184     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req179     , /* resource requirement */
  varname180     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname181     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMAC */
static const SI_RRW res_req185[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname186[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname187[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency189[] = {0,0,0,0,0,0};
static const mUINT8 latency190[] = {5,5,5};
static SI varname188 = {
  "SFMAC",
  28             , /* id */
  latency189     , /* operand latency */
  latency190     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req185     , /* resource requirement */
  varname186     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname187     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFCVTFX */
static const SI_RRW res_req191[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname192[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname193[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency195[] = {0,0,0,0,0,0};
static const mUINT8 latency196[] = {7,7,7};
static SI varname194 = {
  "SFCVTFX",
  29             , /* id */
  latency195     , /* operand latency */
  latency196     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req191     , /* resource requirement */
  varname192     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname193     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMISC */
static const SI_RRW res_req197[] = {
  1,
  0x48001LL
};
static const SI_RESOURCE_ID_SET varname198[] = {
  0x61LL
};

static SI_RESOURCE_TOTAL varname199[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */,
  {&resource10,1}/* floating-point0 */
};

static const mUINT8 latency201[] = {0,0,0,0,0,0};
static const mUINT8 latency202[] = {5,5,5};
static SI varname200 = {
  "SFMISC",
  30             , /* id */
  latency201     , /* operand latency */
  latency202     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req197     , /* resource requirement */
  varname198     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname199     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group SFMERGESE */
static const SI_RRW res_req203[] = {
  1,
  0x48001LL
};
static const SI_RESOURCE_ID_SET varname204[] = {
  0x61LL
};

static SI_RESOURCE_TOTAL varname205[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */,
  {&resource10,1}/* floating-point0 */
};

static const mUINT8 latency207[] = {0,0,0,0,0,0};
static const mUINT8 latency208[] = {7,7,7};
static SI varname206 = {
  "SFMERGESE",
  31             , /* id */
  latency207     , /* operand latency */
  latency208     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req203     , /* resource requirement */
  varname204     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname205     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group STF */
static const SI_RRW res_req209[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname210[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname211[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency213[] = {0,0,0,0,0,0};
static const mUINT8 latency214[] = {1,1,1};
static SI varname212 = {
  "STF",
  32             , /* id */
  latency213     , /* operand latency */
  latency214     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  1              , /* store available time */
  res_req209     , /* resource requirement */
  varname210     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname211     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FCMP */
static const SI_RRW res_req215[] = {
  1,
  0x48001LL
};
static const SI_RESOURCE_ID_SET varname216[] = {
  0x61LL
};

static SI_RESOURCE_TOTAL varname217[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */,
  {&resource10,1}/* floating-point0 */
};

static const mUINT8 latency219[] = {0,0,0,0,0,0};
static const mUINT8 latency220[] = {1,1,1};
static SI varname218 = {
  "FCMP",
  33             , /* id */
  latency219     , /* operand latency */
  latency220     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req215     , /* resource requirement */
  varname216     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname217     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FOTHER */
static const SI_RRW res_req221[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname222[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname223[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency225[] = {0,0,0,0,0,0};
static const mUINT8 latency226[] = {0,0,0};
static SI varname224 = {
  "FOTHER",
  34             , /* id */
  latency225     , /* operand latency */
  latency226     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req221     , /* resource requirement */
  varname222     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname223     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOFR */
static const SI_RRW res_req227[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname228[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname229[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency231[] = {0,0,0,0,0,0};
static const mUINT8 latency232[] = {9,9,9};
static SI varname230 = {
  "TOFR",
  35             , /* id */
  latency231     , /* operand latency */
  latency232     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req227     , /* resource requirement */
  varname228     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname229     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRFR */
static const SI_RRW res_req233[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname234[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname235[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency237[] = {0,0,0,0,0,0};
static const mUINT8 latency238[] = {2,2,2};
static SI varname236 = {
  "FRFR",
  36             , /* id */
  latency237     , /* operand latency */
  latency238     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req233     , /* resource requirement */
  varname234     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname235     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOPR */
static const SI_RRW res_req239[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname240[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname241[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency243[] = {0,0,0,0,0,0};
static const mUINT8 latency244[] = {1,1,1};
static SI varname242 = {
  "TOPR",
  37             , /* id */
  latency243     , /* operand latency */
  latency244     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req239     , /* resource requirement */
  varname240     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname241     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRPR */
static const SI_RRW res_req245[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname246[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname247[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency249[] = {0,0,0,0,0,0};
static const mUINT8 latency250[] = {2,2,2};
static SI varname248 = {
  "FRPR",
  38             , /* id */
  latency249     , /* operand latency */
  latency250     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req245     , /* resource requirement */
  varname246     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname247     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOBR */
static const SI_RRW res_req251[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname252[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname253[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency255[] = {0,0,0,0,0,0};
static const mUINT8 latency256[] = {0,0,0};
static SI varname254 = {
  "TOBR",
  39             , /* id */
  latency255     , /* operand latency */
  latency256     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req251     , /* resource requirement */
  varname252     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname253     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRBR */
static const SI_RRW res_req257[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname258[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname259[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency261[] = {0,0,0,0,0,0};
static const mUINT8 latency262[] = {2,2,2};
static SI varname260 = {
  "FRBR",
  40             , /* id */
  latency261     , /* operand latency */
  latency262     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req257     , /* resource requirement */
  varname258     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname259     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOAR_M */
static const SI_RRW res_req263[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname264[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname265[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency267[] = {0,0,0,0,0,0};
static const mUINT8 latency268[] = {1,1,1};
static SI varname266 = {
  "TOAR_M",
  41             , /* id */
  latency267     , /* operand latency */
  latency268     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req263     , /* resource requirement */
  varname264     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname265     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOAR_I */
static const SI_RRW res_req269[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname270[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname271[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency273[] = {0,0,0,0,0,0};
static const mUINT8 latency274[] = {1,1,1};
static SI varname272 = {
  "TOAR_I",
  42             , /* id */
  latency273     , /* operand latency */
  latency274     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req269     , /* resource requirement */
  varname270     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname271     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRAR_M */
static const SI_RRW res_req275[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname276[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname277[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency279[] = {0,0,0,0,0,0};
static const mUINT8 latency280[] = {1,1,1};
static SI varname278 = {
  "FRAR_M",
  43             , /* id */
  latency279     , /* operand latency */
  latency280     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req275     , /* resource requirement */
  varname276     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname277     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRAR_I */
static const SI_RRW res_req281[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname282[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname283[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency285[] = {0,0,0,0,0,0};
static const mUINT8 latency286[] = {1,1,1};
static SI varname284 = {
  "FRAR_I",
  44             , /* id */
  latency285     , /* operand latency */
  latency286     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req281     , /* resource requirement */
  varname282     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname283     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group TOCR */
static const SI_RRW res_req287[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname288[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname289[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency291[] = {0,0,0,0,0,0};
static const mUINT8 latency292[] = {1,1,1};
static SI varname290 = {
  "TOCR",
  45             , /* id */
  latency291     , /* operand latency */
  latency292     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req287     , /* resource requirement */
  varname288     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname289     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRCR */
static const SI_RRW res_req293[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname294[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname295[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency297[] = {0,0,0,0,0,0};
static const mUINT8 latency298[] = {1,1,1};
static SI varname296 = {
  "FRCR",
  46             , /* id */
  latency297     , /* operand latency */
  latency298     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req293     , /* resource requirement */
  varname294     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname295     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_I */
static const SI_RRW res_req299[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname300[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname301[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency303[] = {0,0,0,0,0,0};
static const mUINT8 latency304[] = {0,0,0};
static SI varname302 = {
  "NOP_I",
  47             , /* id */
  latency303     , /* operand latency */
  latency304     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req299     , /* resource requirement */
  varname300     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname301     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_M */
static const SI_RRW res_req305[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname306[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname307[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency309[] = {0,0,0,0,0,0};
static const mUINT8 latency310[] = {0,0,0};
static SI varname308 = {
  "NOP_M",
  48             , /* id */
  latency309     , /* operand latency */
  latency310     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req305     , /* resource requirement */
  varname306     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname307     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_B */
static const SI_RRW res_req311[] = {
  1,
  0x2000001LL
};
static const SI_RESOURCE_ID_SET varname312[] = {
  0x201LL
};

static SI_RESOURCE_TOTAL varname313[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */
};

static const mUINT8 latency315[] = {0,0,0,0,0,0};
static const mUINT8 latency316[] = {0,0,0};
static SI varname314 = {
  "NOP_B",
  49             , /* id */
  latency315     , /* operand latency */
  latency316     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req311     , /* resource requirement */
  varname312     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname313     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_X */
static const SI_RRW res_req317[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname318[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname319[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency321[] = {0,0,0,0,0,0};
static const mUINT8 latency322[] = {0,0,0};
static SI varname320 = {
  "NOP_X",
  50             , /* id */
  latency321     , /* operand latency */
  latency322     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req317     , /* resource requirement */
  varname318     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname319     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group NOP_F */
static const SI_RRW res_req323[] = {
  1,
  0x8001LL
};
static const SI_RESOURCE_ID_SET varname324[] = {
  0x21LL
};

static SI_RESOURCE_TOTAL varname325[] = {
  {&resource4,1}/* issue */,
  {&resource9,1}/* floating-point */
};

static const mUINT8 latency327[] = {0,0,0,0,0,0};
static const mUINT8 latency328[] = {0,0,0};
static SI varname326 = {
  "NOP_F",
  51             , /* id */
  latency327     , /* operand latency */
  latency328     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req323     , /* resource requirement */
  varname324     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname325     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group RSE_M */
static const SI_RRW res_req329[] = {
  1,
  0x2441LL
};
static const SI_RESOURCE_ID_SET varname330[] = {
  0x1dLL
};

static SI_RESOURCE_TOTAL varname331[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */,
  {&resource8,1}/* memory0 */
};

static const mUINT8 latency333[] = {0,0,0,0,0,0};
static const mUINT8 latency334[] = {1,1,1};
static SI varname332 = {
  "RSE_M",
  52             , /* id */
  latency333     , /* operand latency */
  latency334     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req329     , /* resource requirement */
  varname330     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname331     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group RSE_B */
static const SI_RRW res_req335[] = {
  1,
  0x482000001LL
};
static const SI_RESOURCE_ID_SET varname336[] = {
  0x1a01LL
};

static SI_RESOURCE_TOTAL varname337[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */,
  {&resource15,1}/* B0_or_B2 */,
  {&resource16,1}/* B2 */
};

static const mUINT8 latency339[] = {0,0,0,0,0,0};
static const mUINT8 latency340[] = {1,1,1};
static SI varname338 = {
  "RSE_B",
  53             , /* id */
  latency339     , /* operand latency */
  latency340     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req335     , /* resource requirement */
  varname336     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname337     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BR */
static const SI_RRW res_req341[] = {
  1,
  0x2000001LL
};
static const SI_RESOURCE_ID_SET varname342[] = {
  0x201LL
};

static SI_RESOURCE_TOTAL varname343[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */
};

static const mUINT8 latency345[] = {0,0,0,0,0,0};
static const mUINT8 latency346[] = {1,1,1};
static SI varname344 = {
  "BR",
  54             , /* id */
  latency345     , /* operand latency */
  latency346     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req341     , /* resource requirement */
  varname342     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname343     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BR_B2 */
static const SI_RRW res_req347[] = {
  1,
  0x482000001LL
};
static const SI_RESOURCE_ID_SET varname348[] = {
  0x1a01LL
};

static SI_RESOURCE_TOTAL varname349[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */,
  {&resource15,1}/* B0_or_B2 */,
  {&resource16,1}/* B2 */
};

static const mUINT8 latency351[] = {0,0,0,0,0,0};
static const mUINT8 latency352[] = {1,1,1};
static SI varname350 = {
  "BR_B2",
  55             , /* id */
  latency351     , /* operand latency */
  latency352     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req347     , /* resource requirement */
  varname348     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname349     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group BRP */
static const SI_RRW res_req353[] = {
  1,
  0x82000001LL
};
static const SI_RESOURCE_ID_SET varname354[] = {
  0xa01LL
};

static SI_RESOURCE_TOTAL varname355[] = {
  {&resource4,1}/* issue */,
  {&resource13,1}/* branch */,
  {&resource15,1}/* B0_or_B2 */
};

static const mUINT8 latency357[] = {0,0,0,0,0,0};
static const mUINT8 latency358[] = {1,1,1};
static SI varname356 = {
  "BRP",
  56             , /* id */
  latency357     , /* operand latency */
  latency358     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req353     , /* resource requirement */
  varname354     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname355     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group FRIP */
static const SI_RRW res_req359[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname360[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname361[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency363[] = {0,0,0,0,0,0};
static const mUINT8 latency364[] = {1,1,1};
static SI varname362 = {
  "FRIP",
  57             , /* id */
  latency363     , /* operand latency */
  latency364     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req359     , /* resource requirement */
  varname360     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname361     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_ALAT */
static const SI_RRW res_req365[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname366[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname367[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency369[] = {0,0,0,0,0,0};
static const mUINT8 latency370[] = {0,0,0};
static SI varname368 = {
  "CHK_ALAT",
  58             , /* id */
  latency369     , /* operand latency */
  latency370     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req365     , /* resource requirement */
  varname366     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname367     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_I */
static const SI_RRW res_req371[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname372[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname373[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency375[] = {0,0,0,0,0,0};
static const mUINT8 latency376[] = {0,0,0};
static SI varname374 = {
  "CHK_I",
  59             , /* id */
  latency375     , /* operand latency */
  latency376     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req371     , /* resource requirement */
  varname372     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname373     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group CHK_M */
static const SI_RRW res_req377[] = {
  1,
  0x441LL
};
static const SI_RESOURCE_ID_SET varname378[] = {
  0xdLL
};

static SI_RESOURCE_TOTAL varname379[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource7,1}/* memory */
};

static const mUINT8 latency381[] = {0,0,0,0,0,0};
static const mUINT8 latency382[] = {0,0,0};
static SI varname380 = {
  "CHK_M",
  60             , /* id */
  latency381     , /* operand latency */
  latency382     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req377     , /* resource requirement */
  varname378     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname379     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMALU_A */
static const SI_RRW res_req383[] = {
  1,
  0x41LL
};
static const SI_RESOURCE_ID_SET varname384[] = {
  0x5LL
};

static SI_RESOURCE_TOTAL varname385[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */
};

static const mUINT8 latency387[] = {0,0,0,0,0,0};
static const mUINT8 latency388[] = {2,2,2};
static SI varname386 = {
  "MMALU_A",
  61             , /* id */
  latency387     , /* operand latency */
  latency388     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req383     , /* resource requirement */
  varname384     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  varname385     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMALU_I */
static const SI_RRW res_req389[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname390[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname391[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency393[] = {0,0,0,0,0,0};
static const mUINT8 latency394[] = {2,2,2};
static SI varname392 = {
  "MMALU_I",
  62             , /* id */
  latency393     , /* operand latency */
  latency394     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req389     , /* resource requirement */
  varname390     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname391     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMSHF */
static const SI_RRW res_req395[] = {
  1,
  0x100041LL
};
static const SI_RESOURCE_ID_SET varname396[] = {
  0x85LL
};

static SI_RESOURCE_TOTAL varname397[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */
};

static const mUINT8 latency399[] = {0,0,0,0,0,0};
static const mUINT8 latency400[] = {2,2,2};
static SI varname398 = {
  "MMSHF",
  63             , /* id */
  latency399     , /* operand latency */
  latency400     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req395     , /* resource requirement */
  varname396     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  varname397     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group MMMUL */
static const SI_RRW res_req401[] = {
  1,
  0x900041LL
};
static const SI_RESOURCE_ID_SET varname402[] = {
  0x185LL
};

static SI_RESOURCE_TOTAL varname403[] = {
  {&resource4,1}/* issue */,
  {&resource6,1}/* integer_or_memory */,
  {&resource11,1}/* integer */,
  {&resource12,1}/* integer0 */
};

static const mUINT8 latency405[] = {0,0,0,0,0,0};
static const mUINT8 latency406[] = {2,2,2};
static SI varname404 = {
  "MMMUL",
  64             , /* id */
  latency405     , /* operand latency */
  latency406     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req401     , /* resource requirement */
  varname402     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  varname403     , /* resource count vec */
  0                /* write-write interlock */
};
/* Instruction group UNIMP */
static const SI_RRW res_req407[] = {
  0};
static const mUINT8 latency411[] = {0,0,0,0,0,0};
static const mUINT8 latency412[] = {0,0,0};
static SI varname410 = {
  "UNIMP",
  65             , /* id */
  latency411     , /* operand latency */
  latency412     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req407     , /* resource requirement */
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
static const SI_RRW res_req413[] = {
  0};
static const mUINT8 latency417[] = {0,0,0,0,0,0};
static const mUINT8 latency418[] = {1,1,1};
static SI varname416 = {
  "LAST",
  66             , /* id */
  latency417     , /* operand latency */
  latency418     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req413     , /* resource requirement */
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
static const SI_RRW res_req419[] = {
  0};
static const mUINT8 latency423[] = {0,0,0,0,0,0};
static const mUINT8 latency424[] = {0,0,0};
static SI varname422 = {
  "Dummy instructions",
  67             , /* id */
  latency423     , /* operand latency */
  latency424     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req419     , /* resource requirement */
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
static const SI_RRW res_req425[] = {
  1,
  0x1LL
};
static const SI_RESOURCE_ID_SET varname426[] = {
  0x1LL
};

static SI_RESOURCE_TOTAL varname427[] = {
  {&resource4,1}/* issue */
};

static const mUINT8 latency429[] = {0,0,0,0,0,0};
static const mUINT8 latency430[] = {0,0,0};
static SI varname428 = {
  "dummy",
  68             , /* id */
  latency429     , /* operand latency */
  latency430     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req425     , /* resource requirement */
  varname426     , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  varname427     , /* resource count vec */
  0                /* write-write interlock */
};
SI * const SI_ID_si[] = {
  &varname20,
  &varname26,
  &varname32,
  &varname38,
  &varname44,
  &varname50,
  &varname56,
  &varname62,
  &varname68,
  &varname74,
  &varname80,
  &varname86,
  &varname92,
  &varname98,
  &varname104,
  &varname110,
  &varname116,
  &varname122,
  &varname128,
  &varname134,
  &varname140,
  &varname146,
  &varname152,
  &varname158,
  &varname164,
  &varname170,
  &varname176,
  &varname182,
  &varname188,
  &varname194,
  &varname200,
  &varname206,
  &varname212,
  &varname218,
  &varname224,
  &varname230,
  &varname236,
  &varname242,
  &varname248,
  &varname254,
  &varname260,
  &varname266,
  &varname272,
  &varname278,
  &varname284,
  &varname290,
  &varname296,
  &varname302,
  &varname308,
  &varname314,
  &varname320,
  &varname326,
  &varname332,
  &varname338,
  &varname344,
  &varname350,
  &varname356,
  &varname362,
  &varname368,
  &varname374,
  &varname380,
  &varname386,
  &varname392,
  &varname398,
  &varname404,
  &varname410,
  &varname416,
  &varname422,
  &varname428,
};
const int SI_ID_count = 69;

SI * const SI_top_si[759] = {
  &varname20   /* add */,
  &varname20   /* add_1 */,
  &varname20   /* adds */,
  &varname20   /* addl */,
  &varname38   /* addp4 */,
  &varname38   /* addp4_i */,
  &varname62   /* alloc_3 */,
  &varname32   /* and */,
  &varname32   /* and_i */,
  &varname32   /* andcm */,
  &varname32   /* andcm_i */,
  &varname344  /* br.cond */,
  &varname344  /* br_r.cond */,
  &varname344  /* br.call */,
  &varname344  /* br_r.call */,
  &varname344  /* br.ret */,
  &varname344  /* br.ia */,
  &varname350  /* br.cloop */,
  &varname350  /* br.ctop */,
  &varname350  /* br.cexit */,
  &varname350  /* br.wtop */,
  &varname350  /* br.wexit */,
  &varname302  /* break.i */,
  &varname314  /* break.b */,
  &varname308  /* break.m */,
  &varname326  /* break.f */,
  &varname320  /* break.x */,
  &varname344  /* brl.cond */,
  &varname344  /* brl.call */,
  &varname356  /* brp */,
  &varname356  /* brp_r */,
  &varname356  /* brp.ret */,
  &varname92   /* bsw.0 */,
  &varname92   /* bsw.1 */,
  &varname374  /* chk.s.i */,
  &varname380  /* chk.s.m */,
  &varname380  /* chk_f.s */,
  &varname368  /* chk.a */,
  &varname368  /* chk_f.a */,
  &varname338  /* clrrrb */,
  &varname338  /* clrrrb.pr */,
  &varname26   /* cmp.eq */,
  &varname26   /* cmp.eq.unc */,
  &varname26   /* cmp.eq.and */,
  &varname26   /* cmp.eq.or */,
  &varname26   /* cmp.eq.or.andcm */,
  &varname26   /* cmp.ne.and */,
  &varname26   /* cmp.ne.or */,
  &varname26   /* cmp.ne.or.andcm */,
  &varname26   /* cmp.lt */,
  &varname26   /* cmp.lt.unc */,
  &varname26   /* cmp.ltu */,
  &varname26   /* cmp.ltu.unc */,
  &varname26   /* cmp_z1.lt.and */,
  &varname26   /* cmp_z1.lt.or */,
  &varname26   /* cmp_z1.lt.or.andcm */,
  &varname26   /* cmp_z1.le.and */,
  &varname26   /* cmp_z1.le.or */,
  &varname26   /* cmp_z1.le.or.andcm */,
  &varname26   /* cmp_z1.gt.and */,
  &varname26   /* cmp_z1.gt.or */,
  &varname26   /* cmp_z1.gt.or.andcm */,
  &varname26   /* cmp_z1.ge.and */,
  &varname26   /* cmp_z1.ge.or */,
  &varname26   /* cmp_z1.ge.or.andcm */,
  &varname26   /* cmp_i.eq */,
  &varname26   /* cmp_i.eq.unc */,
  &varname26   /* cmp_i.eq.and */,
  &varname26   /* cmp_i.eq.or */,
  &varname26   /* cmp_i.eq.or.andcm */,
  &varname26   /* cmp_i.ne.and */,
  &varname26   /* cmp_i.ne.or */,
  &varname26   /* cmp_i.ne.or.andcm */,
  &varname26   /* cmp_i.lt */,
  &varname26   /* cmp_i.lt.unc */,
  &varname26   /* cmp_i.ltu */,
  &varname26   /* cmp_i.ltu.unc */,
  &varname26   /* cmp4.eq */,
  &varname26   /* cmp4.eq.unc */,
  &varname26   /* cmp4.eq.and */,
  &varname26   /* cmp4.eq.or */,
  &varname26   /* cmp4.eq.or.andcm */,
  &varname26   /* cmp4.ne.and */,
  &varname26   /* cmp4.ne.or */,
  &varname26   /* cmp4.ne.or.andcm */,
  &varname26   /* cmp4.lt */,
  &varname26   /* cmp4.lt.unc */,
  &varname26   /* cmp4.ltu */,
  &varname26   /* cmp4.ltu.unc */,
  &varname26   /* cmp4_z1.lt.and */,
  &varname26   /* cmp4_z1.lt.or */,
  &varname26   /* cmp4_z1.lt.or.andcm */,
  &varname26   /* cmp4_z1.le.and */,
  &varname26   /* cmp4_z1.le.or */,
  &varname26   /* cmp4_z1.le.or.andcm */,
  &varname26   /* cmp4_z1.gt.and */,
  &varname26   /* cmp4_z1.gt.or */,
  &varname26   /* cmp4_z1.gt.or.andcm */,
  &varname26   /* cmp4_z1.ge.and */,
  &varname26   /* cmp4_z1.ge.or */,
  &varname26   /* cmp4_z1.ge.or.andcm */,
  &varname26   /* cmp4_i.eq */,
  &varname26   /* cmp4_i.eq.unc */,
  &varname26   /* cmp4_i.eq.and */,
  &varname26   /* cmp4_i.eq.or */,
  &varname26   /* cmp4_i.eq.or.andcm */,
  &varname26   /* cmp4_i.ne.and */,
  &varname26   /* cmp4_i.ne.or */,
  &varname26   /* cmp4_i.ne.or.andcm */,
  &varname26   /* cmp4_i.lt */,
  &varname26   /* cmp4_i.lt.unc */,
  &varname26   /* cmp4_i.ltu */,
  &varname26   /* cmp4_i.ltu.unc */,
  &varname152  /* cmpxchg1 */,
  &varname152  /* cmpxchg2 */,
  &varname152  /* cmpxchg4 */,
  &varname152  /* cmpxchg8 */,
  &varname338  /* cover */,
  &varname98   /* czx1.l */,
  &varname98   /* czx1.r */,
  &varname98   /* czx2.l */,
  &varname98   /* czx2.r */,
  &varname44   /* dep */,
  &varname44   /* dep.z */,
  &varname44   /* dep_i */,
  &varname44   /* dep_i.z */,
  &varname80   /* epc */,
  &varname44   /* extr */,
  &varname44   /* extr.u */,
  &varname182  /* famax */,
  &varname182  /* famin */,
  &varname182  /* fand */,
  &varname182  /* fandcm */,
  &varname62   /* fc */,
  &varname224  /* fchkf */,
  &varname218  /* fclass.m */,
  &varname218  /* fclass.m.unc */,
  &varname224  /* fclrf */,
  &varname218  /* fcmp.eq */,
  &varname218  /* fcmp.eq.unc */,
  &varname218  /* fcmp.lt */,
  &varname218  /* fcmp.lt.unc */,
  &varname218  /* fcmp.le */,
  &varname218  /* fcmp.le.unc */,
  &varname218  /* fcmp.unord */,
  &varname218  /* fcmp.unord.unc */,
  &varname158  /* fcvt.fx */,
  &varname158  /* fcvt.fx.trunc */,
  &varname158  /* fcvt.fxu */,
  &varname158  /* fcvt.fxu.trunc */,
  &varname158  /* fcvt.xf */,
  &varname152  /* fetchadd4 */,
  &varname152  /* fetchadd8 */,
  &varname332  /* flushrs */,
  &varname170  /* fma */,
  &varname170  /* fma.s */,
  &varname170  /* fma.d */,
  &varname182  /* fmax */,
  &varname182  /* fmerge.ns */,
  &varname182  /* fmerge.s */,
  &varname182  /* fmerge.se */,
  &varname182  /* fmin */,
  &varname182  /* fmix.l */,
  &varname182  /* fmix.r */,
  &varname182  /* fmix.lr */,
  &varname170  /* fms */,
  &varname170  /* fms.s */,
  &varname170  /* fms.d */,
  &varname170  /* fnma */,
  &varname170  /* fnma.s */,
  &varname170  /* fnma.d */,
  &varname182  /* for */,
  &varname182  /* fpack */,
  &varname200  /* fpamax */,
  &varname200  /* fpamin */,
  &varname200  /* fpcmp.eq */,
  &varname200  /* fpcmp.lt */,
  &varname200  /* fpcmp.le */,
  &varname200  /* fpcmp.unord */,
  &varname200  /* fpcmp.neq */,
  &varname200  /* fpcmp.nlt */,
  &varname200  /* fpcmp.nle */,
  &varname200  /* fpcmp.ord */,
  &varname194  /* fpcvt.fx */,
  &varname194  /* fpcvt.fx.trunc */,
  &varname194  /* fpcvt.fxu */,
  &varname194  /* fpcvt.fxu.trunc */,
  &varname188  /* fpma */,
  &varname200  /* fpmax */,
  &varname200  /* fpmerge.ns */,
  &varname200  /* fpmerge.s */,
  &varname206  /* fpmerge.se */,
  &varname200  /* fpmin */,
  &varname188  /* fpms */,
  &varname188  /* fpnma */,
  &varname200  /* fprcpa */,
  &varname200  /* fprsqrta */,
  &varname182  /* frcpa */,
  &varname182  /* frsqrta */,
  &varname182  /* fselect */,
  &varname224  /* fsetc */,
  &varname182  /* fswap */,
  &varname182  /* fswap.nl */,
  &varname182  /* fswap.nr */,
  &varname182  /* fsxt.l */,
  &varname182  /* fsxt.r */,
  &varname56   /* fwb */,
  &varname182  /* fxor */,
  &varname236  /* getf.s */,
  &varname236  /* getf.d */,
  &varname236  /* getf.exp */,
  &varname236  /* getf.sig */,
  &varname56   /* invala */,
  &varname56   /* invala.e */,
  &varname56   /* invala_f.e */,
  &varname62   /* itc.i */,
  &varname62   /* itc.d */,
  &varname62   /* itr.i */,
  &varname62   /* itr.d */,
  &varname116  /* ld1 */,
  &varname116  /* ld1_r */,
  &varname116  /* ld1_i */,
  &varname116  /* ld2 */,
  &varname116  /* ld2_r */,
  &varname116  /* ld2_i */,
  &varname116  /* ld4 */,
  &varname116  /* ld4_r */,
  &varname116  /* ld4_i */,
  &varname116  /* ld8 */,
  &varname116  /* ld8_r */,
  &varname116  /* ld8_i */,
  &varname116  /* ld8.fill */,
  &varname116  /* ld8_r.fill */,
  &varname116  /* ld8_i.fill */,
  &varname122  /* ldfs */,
  &varname122  /* ldfs_r */,
  &varname122  /* ldfs_i */,
  &varname122  /* ldfd */,
  &varname122  /* ldfd_r */,
  &varname122  /* ldfd_i */,
  &varname122  /* ldfe */,
  &varname122  /* ldfe_r */,
  &varname122  /* ldfe_i */,
  &varname122  /* ldf8 */,
  &varname122  /* ldf8_r */,
  &varname122  /* ldf8_i */,
  &varname122  /* ldf.fill */,
  &varname122  /* ldf_r.fill */,
  &varname122  /* ldf_i.fill */,
  &varname128  /* ldfps */,
  &varname128  /* ldfps_i */,
  &varname128  /* ldfpd */,
  &varname128  /* ldfpd_i */,
  &varname128  /* ldfp8 */,
  &varname128  /* ldfp8_i */,
  &varname110  /* lfetch */,
  &varname110  /* lfetch.excl */,
  &varname110  /* lfetch.fault */,
  &varname110  /* lfetch.fault.excl */,
  &varname110  /* lfetch_r */,
  &varname110  /* lfetch_r.excl */,
  &varname110  /* lfetch_r.fault */,
  &varname110  /* lfetch_r.fault.excl */,
  &varname110  /* lfetch_i */,
  &varname110  /* lfetch_i.excl */,
  &varname110  /* lfetch_i.fault */,
  &varname110  /* lfetch_i.fault.excl */,
  &varname332  /* loadrs */,
  &varname56   /* mf */,
  &varname62   /* mf.a */,
  &varname398  /* mix1.l */,
  &varname398  /* mix1.r */,
  &varname398  /* mix2.l */,
  &varname398  /* mix2.r */,
  &varname398  /* mix4.l */,
  &varname398  /* mix4.r */,
  &varname284  /* mov_f_ar.i */,
  &varname272  /* mov_t_ar_r.i */,
  &varname272  /* mov_t_ar_i.i */,
  &varname278  /* mov_f_ar.m */,
  &varname266  /* mov_t_ar_r.m */,
  &varname266  /* mov_t_ar_i.m */,
  &varname260  /* mov_f_br */,
  &varname254  /* mov_t_br_i */,
  &varname254  /* mov_t_br.ret */,
  &varname290  /* mov_t_cr */,
  &varname296  /* mov_f_cr */,
  &varname62   /* mov_f_cpuid */,
  &varname62   /* mov_t_dbr */,
  &varname62   /* mov_f_dbr */,
  &varname62   /* mov_t_ibr */,
  &varname62   /* mov_f_ibr */,
  &varname62   /* mov_t_msr */,
  &varname62   /* mov_f_msr */,
  &varname62   /* mov_t_pkr */,
  &varname62   /* mov_f_pkr */,
  &varname62   /* mov_t_pmc */,
  &varname62   /* mov_f_pmc */,
  &varname62   /* mov_t_pmd */,
  &varname62   /* mov_f_pmd */,
  &varname62   /* mov_t_rr */,
  &varname62   /* mov_f_rr */,
  &varname362  /* mov_f_ip */,
  &varname248  /* mov_f_pr */,
  &varname242  /* mov_t_pr */,
  &varname242  /* mov_t_pr_i */,
  &varname62   /* mov_t_psr */,
  &varname62   /* mov_f_psr */,
  &varname62   /* mov_t_psrum */,
  &varname62   /* mov_f_psrum */,
  &varname104  /* movl */,
  &varname398  /* mux1 */,
  &varname398  /* mux2 */,
  &varname302  /* nop.i */,
  &varname314  /* nop.b */,
  &varname308  /* nop.m */,
  &varname326  /* nop.f */,
  &varname320  /* nop.x */,
  &varname32   /* or */,
  &varname32   /* or_i */,
  &varname398  /* pack2.sss */,
  &varname398  /* pack2.uss */,
  &varname398  /* pack4.sss */,
  &varname386  /* padd1 */,
  &varname386  /* padd1.sss */,
  &varname386  /* padd1.uus */,
  &varname386  /* padd1.uuu */,
  &varname386  /* padd2 */,
  &varname386  /* padd2.sss */,
  &varname386  /* padd2.uus */,
  &varname386  /* padd2.uuu */,
  &varname386  /* padd4 */,
  &varname386  /* pavg1 */,
  &varname386  /* pavg1.raz */,
  &varname386  /* pavg2 */,
  &varname386  /* pavg2.raz */,
  &varname386  /* pavgsub1 */,
  &varname386  /* pavgsub2 */,
  &varname386  /* pcmp1.eq */,
  &varname386  /* pcmp1.gt */,
  &varname386  /* pcmp2.eq */,
  &varname386  /* pcmp2.gt */,
  &varname386  /* pcmp4.eq */,
  &varname386  /* pcmp4.gt */,
  &varname392  /* pmax1.u */,
  &varname392  /* pmax2 */,
  &varname392  /* pmin1.u */,
  &varname392  /* pmin2 */,
  &varname404  /* pmpy2.r */,
  &varname404  /* pmpy2.l */,
  &varname404  /* pmpyshr2 */,
  &varname404  /* pmpyshr2.u */,
  &varname404  /* popcnt */,
  &varname62   /* probe.r */,
  &varname62   /* probe.w */,
  &varname62   /* probe_i.r */,
  &varname62   /* probe_i.w */,
  &varname62   /* probe.r.fault */,
  &varname62   /* probe.w.fault */,
  &varname62   /* probe.rw.fault */,
  &varname392  /* psad1 */,
  &varname398  /* pshl2 */,
  &varname398  /* pshl4 */,
  &varname398  /* pshl2_i */,
  &varname398  /* pshl4_i */,
  &varname386  /* pshladd2 */,
  &varname398  /* pshr2 */,
  &varname398  /* pshr2.u */,
  &varname398  /* pshr4 */,
  &varname398  /* pshr4.u */,
  &varname398  /* pshr2_i */,
  &varname398  /* pshr2_i.u */,
  &varname398  /* pshr4_i */,
  &varname398  /* pshr4_i.u */,
  &varname386  /* pshradd2 */,
  &varname386  /* psub1 */,
  &varname386  /* psub2 */,
  &varname386  /* psub4 */,
  &varname386  /* psub1.sss */,
  &varname386  /* psub1.uus */,
  &varname386  /* psub1.uuu */,
  &varname386  /* psub2.sss */,
  &varname386  /* psub2.uus */,
  &varname386  /* psub2.uuu */,
  &varname62   /* ptc.e */,
  &varname62   /* ptc.g */,
  &varname62   /* ptc.ga */,
  &varname62   /* ptc.l */,
  &varname62   /* ptr.d */,
  &varname62   /* ptr.i */,
  &varname92   /* rfi */,
  &varname62   /* rsm */,
  &varname62   /* rum */,
  &varname230  /* setf.s */,
  &varname230  /* setf.d */,
  &varname230  /* setf.exp */,
  &varname230  /* setf.sig */,
  &varname398  /* shl */,
  &varname20   /* shladd */,
  &varname38   /* shladdp4 */,
  &varname398  /* shr */,
  &varname398  /* shr.u */,
  &varname44   /* shrp */,
  &varname56   /* srlz.i */,
  &varname56   /* srlz.d */,
  &varname62   /* ssm */,
  &varname146  /* st1 */,
  &varname146  /* st1_i */,
  &varname146  /* st2 */,
  &varname146  /* st2_i */,
  &varname146  /* st4 */,
  &varname146  /* st4_i */,
  &varname146  /* st8 */,
  &varname146  /* st8_i */,
  &varname146  /* st8.spill */,
  &varname146  /* st8_i.spill */,
  &varname212  /* stfs */,
  &varname212  /* stfs_i */,
  &varname212  /* stfd */,
  &varname212  /* stfd_i */,
  &varname212  /* stfe */,
  &varname212  /* stfe_i */,
  &varname212  /* stf8 */,
  &varname212  /* stf8_i */,
  &varname212  /* stf.spill */,
  &varname212  /* stf_i.spill */,
  &varname20   /* sub */,
  &varname20   /* sub_1 */,
  &varname20   /* sub_i */,
  &varname62   /* sum */,
  &varname98   /* sxt1 */,
  &varname98   /* sxt2 */,
  &varname98   /* sxt4 */,
  &varname56   /* sync.i */,
  &varname62   /* tak */,
  &varname50   /* tbit.z */,
  &varname50   /* tbit.z.unc */,
  &varname50   /* tbit.z.and */,
  &varname50   /* tbit.z.or */,
  &varname50   /* tbit.z.or.andcm */,
  &varname50   /* tbit.nz.and */,
  &varname50   /* tbit.nz.or */,
  &varname50   /* tbit.nz.or.andcm */,
  &varname62   /* thash */,
  &varname50   /* tnat.z */,
  &varname50   /* tnat.z.unc */,
  &varname50   /* tnat.z.and */,
  &varname50   /* tnat.z.or */,
  &varname50   /* tnat.z.or.andcm */,
  &varname50   /* tnat.nz.and */,
  &varname50   /* tnat.nz.or */,
  &varname50   /* tnat.nz.or.andcm */,
  &varname62   /* tpa */,
  &varname62   /* ttag */,
  &varname398  /* unpack1.l */,
  &varname398  /* unpack1.h */,
  &varname398  /* unpack2.l */,
  &varname398  /* unpack2.h */,
  &varname398  /* unpack4.l */,
  &varname398  /* unpack4.h */,
  &varname152  /* xchg1 */,
  &varname152  /* xchg2 */,
  &varname152  /* xchg4 */,
  &varname152  /* xchg8 */,
  &varname176  /* xma.l */,
  &varname176  /* xma.h */,
  &varname176  /* xma.hu */,
  &varname32   /* xor */,
  &varname32   /* xor_i */,
  &varname98   /* zxt1 */,
  &varname98   /* zxt2 */,
  &varname98   /* zxt4 */,
  &varname62   /* alloc */,
  &varname344  /* br */,
  &varname344  /* br_r */,
  &varname344  /* brl */,
  &varname26   /* cmp.eq.orcm */,
  &varname26   /* cmp.eq.andcm */,
  &varname26   /* cmp.eq.and.orcm */,
  &varname26   /* cmp.ne */,
  &varname26   /* cmp.ne.unc */,
  &varname26   /* cmp.ne.orcm */,
  &varname26   /* cmp.ne.andcm */,
  &varname26   /* cmp.ne.and.orcm */,
  &varname26   /* cmp.le */,
  &varname26   /* cmp.le.unc */,
  &varname26   /* cmp.gt */,
  &varname26   /* cmp.gt.unc */,
  &varname26   /* cmp.ge */,
  &varname26   /* cmp.ge.unc */,
  &varname26   /* cmp.leu */,
  &varname26   /* cmp.leu.unc */,
  &varname26   /* cmp.gtu */,
  &varname26   /* cmp.gtu.unc */,
  &varname26   /* cmp.geu */,
  &varname26   /* cmp.geu.unc */,
  &varname26   /* cmp_z1.lt.orcm */,
  &varname26   /* cmp_z1.lt.andcm */,
  &varname26   /* cmp_z1.lt.and.orcm */,
  &varname26   /* cmp_z1.le.orcm */,
  &varname26   /* cmp_z1.le.andcm */,
  &varname26   /* cmp_z1.le.and.orcm */,
  &varname26   /* cmp_z1.gt.orcm */,
  &varname26   /* cmp_z1.gt.andcm */,
  &varname26   /* cmp_z1.gt.and.orcm */,
  &varname26   /* cmp_z1.ge.orcm */,
  &varname26   /* cmp_z1.ge.andcm */,
  &varname26   /* cmp_z1.ge.and.orcm */,
  &varname26   /* cmp_z2.lt.orcm */,
  &varname26   /* cmp_z2.lt.andcm */,
  &varname26   /* cmp_z2.lt.and.orcm */,
  &varname26   /* cmp_z2.le.orcm */,
  &varname26   /* cmp_z2.le.andcm */,
  &varname26   /* cmp_z2.le.and.orcm */,
  &varname26   /* cmp_z2.gt.orcm */,
  &varname26   /* cmp_z2.gt.andcm */,
  &varname26   /* cmp_z2.gt.and.orcm */,
  &varname26   /* cmp_z2.ge.orcm */,
  &varname26   /* cmp_z2.ge.andcm */,
  &varname26   /* cmp_z2.ge.and.orcm */,
  &varname26   /* cmp_z2.lt.and */,
  &varname26   /* cmp_z2.lt.or */,
  &varname26   /* cmp_z2.lt.or.andcm */,
  &varname26   /* cmp_z2.le.and */,
  &varname26   /* cmp_z2.le.or */,
  &varname26   /* cmp_z2.le.or.andcm */,
  &varname26   /* cmp_z2.gt.and */,
  &varname26   /* cmp_z2.gt.or */,
  &varname26   /* cmp_z2.gt.or.andcm */,
  &varname26   /* cmp_z2.ge.and */,
  &varname26   /* cmp_z2.ge.or */,
  &varname26   /* cmp_z2.ge.or.andcm */,
  &varname26   /* cmp_i.eq.orcm */,
  &varname26   /* cmp_i.eq.andcm */,
  &varname26   /* cmp_i.eq.and.orcm */,
  &varname26   /* cmp_i.ne */,
  &varname26   /* cmp_i.ne.unc */,
  &varname26   /* cmp_i.ne.orcm */,
  &varname26   /* cmp_i.ne.andcm */,
  &varname26   /* cmp_i.ne.and.orcm */,
  &varname26   /* cmp_i.le */,
  &varname26   /* cmp_i.le.unc */,
  &varname26   /* cmp_i.gt */,
  &varname26   /* cmp_i.gt.unc */,
  &varname26   /* cmp_i.ge */,
  &varname26   /* cmp_i.ge.unc */,
  &varname26   /* cmp_i.leu */,
  &varname26   /* cmp_i.leu.unc */,
  &varname26   /* cmp_i.gtu */,
  &varname26   /* cmp_i.gtu.unc */,
  &varname26   /* cmp_i.geu */,
  &varname26   /* cmp_i.geu.unc */,
  &varname26   /* cmp4.eq.orcm */,
  &varname26   /* cmp4.eq.andcm */,
  &varname26   /* cmp4.eq.and.orcm */,
  &varname26   /* cmp4.ne */,
  &varname26   /* cmp4.ne.unc */,
  &varname26   /* cmp4.ne.orcm */,
  &varname26   /* cmp4.ne.andcm */,
  &varname26   /* cmp4.ne.and.orcm */,
  &varname26   /* cmp4.le */,
  &varname26   /* cmp4.le.unc */,
  &varname26   /* cmp4.gt */,
  &varname26   /* cmp4.gt.unc */,
  &varname26   /* cmp4.ge */,
  &varname26   /* cmp4.ge.unc */,
  &varname26   /* cmp4.leu */,
  &varname26   /* cmp4.leu.unc */,
  &varname26   /* cmp4.gtu */,
  &varname26   /* cmp4.gtu.unc */,
  &varname26   /* cmp4.geu */,
  &varname26   /* cmp4.geu.unc */,
  &varname26   /* cmp4_z1.lt.orcm */,
  &varname26   /* cmp4_z1.lt.andcm */,
  &varname26   /* cmp4_z1.lt.and.orcm */,
  &varname26   /* cmp4_z1.le.orcm */,
  &varname26   /* cmp4_z1.le.andcm */,
  &varname26   /* cmp4_z1.le.and.orcm */,
  &varname26   /* cmp4_z1.gt.orcm */,
  &varname26   /* cmp4_z1.gt.andcm */,
  &varname26   /* cmp4_z1.gt.and.orcm */,
  &varname26   /* cmp4_z1.ge.orcm */,
  &varname26   /* cmp4_z1.ge.andcm */,
  &varname26   /* cmp4_z1.ge.and.orcm */,
  &varname26   /* cmp4_z2.lt.orcm */,
  &varname26   /* cmp4_z2.lt.andcm */,
  &varname26   /* cmp4_z2.lt.and.orcm */,
  &varname26   /* cmp4_z2.le.orcm */,
  &varname26   /* cmp4_z2.le.andcm */,
  &varname26   /* cmp4_z2.le.and.orcm */,
  &varname26   /* cmp4_z2.gt.orcm */,
  &varname26   /* cmp4_z2.gt.andcm */,
  &varname26   /* cmp4_z2.gt.and.orcm */,
  &varname26   /* cmp4_z2.ge.orcm */,
  &varname26   /* cmp4_z2.ge.andcm */,
  &varname26   /* cmp4_z2.ge.and.orcm */,
  &varname26   /* cmp4_z2.lt.and */,
  &varname26   /* cmp4_z2.lt.or */,
  &varname26   /* cmp4_z2.lt.or.andcm */,
  &varname26   /* cmp4_z2.le.and */,
  &varname26   /* cmp4_z2.le.or */,
  &varname26   /* cmp4_z2.le.or.andcm */,
  &varname26   /* cmp4_z2.gt.and */,
  &varname26   /* cmp4_z2.gt.or */,
  &varname26   /* cmp4_z2.gt.or.andcm */,
  &varname26   /* cmp4_z2.ge.and */,
  &varname26   /* cmp4_z2.ge.or */,
  &varname26   /* cmp4_z2.ge.or.andcm */,
  &varname26   /* cmp4_i.eq.orcm */,
  &varname26   /* cmp4_i.eq.andcm */,
  &varname26   /* cmp4_i.eq.and.orcm */,
  &varname26   /* cmp4_i.ne */,
  &varname26   /* cmp4_i.ne.unc */,
  &varname26   /* cmp4_i.ne.orcm */,
  &varname26   /* cmp4_i.ne.andcm */,
  &varname26   /* cmp4_i.ne.and.orcm */,
  &varname26   /* cmp4_i.le */,
  &varname26   /* cmp4_i.le.unc */,
  &varname26   /* cmp4_i.gt */,
  &varname26   /* cmp4_i.gt.unc */,
  &varname26   /* cmp4_i.ge */,
  &varname26   /* cmp4_i.ge.unc */,
  &varname26   /* cmp4_i.leu */,
  &varname26   /* cmp4_i.leu.unc */,
  &varname26   /* cmp4_i.gtu */,
  &varname26   /* cmp4_i.gtu.unc */,
  &varname26   /* cmp4_i.geu */,
  &varname26   /* cmp4_i.geu.unc */,
  &varname182  /* fabs */,
  &varname170  /* fadd */,
  &varname170  /* fadd.s */,
  &varname170  /* fadd.d */,
  &varname218  /* fclass.nm */,
  &varname218  /* fclass.nm.unc */,
  &varname218  /* fcmp.gt */,
  &varname218  /* fcmp.gt.unc */,
  &varname218  /* fcmp.ge */,
  &varname218  /* fcmp.ge.unc */,
  &varname218  /* fcmp.neq */,
  &varname218  /* fcmp.neq.unc */,
  &varname218  /* fcmp.nlt */,
  &varname218  /* fcmp.nlt.unc */,
  &varname218  /* fcmp.nle */,
  &varname218  /* fcmp.nle.unc */,
  &varname218  /* fcmp.ngt */,
  &varname218  /* fcmp.ngt.unc */,
  &varname218  /* fcmp.nge */,
  &varname218  /* fcmp.nge.unc */,
  &varname218  /* fcmp.ord */,
  &varname218  /* fcmp.ord.unc */,
  &varname170  /* fcvt.xuf */,
  &varname170  /* fcvt.xuf.s */,
  &varname170  /* fcvt.xuf.d */,
  &varname170  /* fmpy */,
  &varname170  /* fmpy.s */,
  &varname170  /* fmpy.d */,
  &varname182  /* fneg */,
  &varname182  /* fnegabs */,
  &varname170  /* fnmpy */,
  &varname170  /* fnmpy.s */,
  &varname170  /* fnmpy.d */,
  &varname170  /* fnorm */,
  &varname170  /* fnorm.s */,
  &varname170  /* fnorm.d */,
  &varname200  /* fpabs */,
  &varname200  /* fpcmp.gt */,
  &varname200  /* fpcmp.ge */,
  &varname200  /* fpcmp.ngt */,
  &varname200  /* fpcmp.nge */,
  &varname188  /* fpmpy */,
  &varname200  /* fpneg */,
  &varname200  /* fpnegabs */,
  &varname188  /* fpnmpy */,
  &varname170  /* fsub */,
  &varname170  /* fsub.s */,
  &varname170  /* fsub.d */,
  &varname254  /* mov_t_br */,
  &varname182  /* mov_f */,
  &varname20   /* mov */,
  &varname20   /* mov_i */,
  &varname44   /* shl_i */,
  &varname44   /* shr_i */,
  &varname44   /* shr_i.u */,
  &varname50   /* tbit.nz */,
  &varname50   /* tbit.nz.unc */,
  &varname50   /* tnat.nz */,
  &varname50   /* tnat.nz.unc */,
  &varname176  /* xma.lu */,
  &varname176  /* xmpy.l */,
  &varname176  /* xmpy.lu */,
  &varname176  /* xmpy.h */,
  &varname176  /* xmpy.hu */,
  &varname428  /* break */,
  &varname428  /* chk.s */,
  &varname26   /* cmp.lt.and */,
  &varname26   /* cmp.lt.or */,
  &varname26   /* cmp.lt.or.andcm */,
  &varname26   /* cmp.le.and */,
  &varname26   /* cmp.le.or */,
  &varname26   /* cmp.le.or.andcm */,
  &varname26   /* cmp.gt.and */,
  &varname26   /* cmp.gt.or */,
  &varname26   /* cmp.gt.or.andcm */,
  &varname26   /* cmp.ge.and */,
  &varname26   /* cmp.ge.or */,
  &varname26   /* cmp.ge.or.andcm */,
  &varname26   /* cmp.lt.orcm */,
  &varname26   /* cmp.lt.andcm */,
  &varname26   /* cmp.lt.and.orcm */,
  &varname26   /* cmp.le.orcm */,
  &varname26   /* cmp.le.andcm */,
  &varname26   /* cmp.le.and.orcm */,
  &varname26   /* cmp.gt.orcm */,
  &varname26   /* cmp.gt.andcm */,
  &varname26   /* cmp.gt.and.orcm */,
  &varname26   /* cmp.ge.orcm */,
  &varname26   /* cmp.ge.andcm */,
  &varname26   /* cmp.ge.and.orcm */,
  &varname26   /* cmp4.lt.and */,
  &varname26   /* cmp4.lt.or */,
  &varname26   /* cmp4.lt.or.andcm */,
  &varname26   /* cmp4.le.and */,
  &varname26   /* cmp4.le.or */,
  &varname26   /* cmp4.le.or.andcm */,
  &varname26   /* cmp4.gt.and */,
  &varname26   /* cmp4.gt.or */,
  &varname26   /* cmp4.gt.or.andcm */,
  &varname26   /* cmp4.ge.and */,
  &varname26   /* cmp4.ge.or */,
  &varname26   /* cmp4.ge.or.andcm */,
  &varname26   /* cmp4.lt.orcm */,
  &varname26   /* cmp4.lt.andcm */,
  &varname26   /* cmp4.lt.and.orcm */,
  &varname26   /* cmp4.le.orcm */,
  &varname26   /* cmp4.le.andcm */,
  &varname26   /* cmp4.le.and.orcm */,
  &varname26   /* cmp4.gt.orcm */,
  &varname26   /* cmp4.gt.andcm */,
  &varname26   /* cmp4.gt.and.orcm */,
  &varname26   /* cmp4.ge.orcm */,
  &varname26   /* cmp4.ge.andcm */,
  &varname26   /* cmp4.ge.and.orcm */,
  &varname428  /* mov_f_ar */,
  &varname428  /* mov_t_ar_r */,
  &varname428  /* mov_t_ar_i */,
  &varname428  /* nop */,
  &varname428  /* asm */,
  &varname428  /* intrncall */,
  &varname428  /* spadjust */,
  &varname428  /* copy.br */,
  &varname422  /* begin.pregtn */,
  &varname422  /* end.pregtn */,
  &varname422  /* bwd.bar */,
  &varname422  /* fwd.bar */,
  &varname422  /* dfixup */,
  &varname422  /* ffixup */,
  &varname422  /* ifixup */,
  &varname422  /* label */,
  &varname422  /* noop */,
};
