#include "ti_si_types.h"
SI_RESOURCE resource9 = {"issue",0,3,0,0};
SI_RESOURCE resource10 = {"alu",1,3,0,3};
SI_RESOURCE resource11 = {"agu",2,3,0,6};
SI_RESOURCE resource12 = {"fmul",3,1,0,9};
SI_RESOURCE resource13 = {"fadd",4,1,0,11};
SI_RESOURCE resource14 = {"fstore",5,1,0,13};
const int SI_resource_count = 6;
SI_RESOURCE * const SI_resources[] = {
  &resource9,
  &resource10,
  &resource11,
  &resource12,
  &resource13,
  &resource14
};
const SI_RRW SI_RRW_initializer = 0x0;
const SI_RRW SI_RRW_overuse_mask = 0x5524;
const int SI_issue_slot_count = 0;
SI_ISSUE_SLOT * const SI_issue_slots[1] = {0};

/* Instruction group Dummy instructions */
static const SI_RRW res_req1[] = {
  0
};
static const mUINT8 latency5[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency6[] = {0,0};
static SI gname0 = {
  "Dummy instructions",
  0              , /* id */
  latency5       , /* operand latency */
  latency6       , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1       , /* resource requirement */
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

/* Instruction group em64t simple alu */
static const SI_RRW res_req16[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname18[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname17[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency20[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency21[] = {1,1};
static SI gname15 = {
  "em64t simple alu",
  1              , /* id */
  latency20      , /* operand latency */
  latency21      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req16      , /* resource requirement */
  gname18        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname17        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group simple alu w/ mem operand */
static const SI_RRW res_req25[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname27[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname26[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency29[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency30[] = {4,4};
static SI gname24 = {
  "simple alu w/ mem operand",
  2              , /* id */
  latency29      , /* operand latency */
  latency30      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req25      , /* resource requirement */
  gname27        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname26        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group packed insert */
static const SI_RRW res_req34[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname36[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname35[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency38[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency39[] = {9,9};
static SI gname33 = {
  "packed insert",
  3              , /* id */
  latency38      , /* operand latency */
  latency39      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req34      , /* resource requirement */
  gname36        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname35        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group lea */
static const SI_RRW res_req43[] = {
  1,
  0x49
};
static const SI_RESOURCE_ID_SET gname45[] = {
  0x7
};
static SI_RESOURCE_TOTAL gname44[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency47[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency48[] = {2,2};
static SI gname42 = {
  "lea",
  4              , /* id */
  latency47      , /* operand latency */
  latency48      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req43      , /* resource requirement */
  gname45        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname44        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group push/pop */
static const SI_RRW res_req52[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname54[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname53[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency56[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency57[] = {3,3};
static SI gname51 = {
  "push/pop",
  5              , /* id */
  latency56      , /* operand latency */
  latency57      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req52      , /* resource requirement */
  gname54        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname53        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ret near */
static const SI_RRW res_req61[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname63[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname62[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency65[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency66[] = {5,5};
static SI gname60 = {
  "ret near",
  6              , /* id */
  latency65      , /* operand latency */
  latency66      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req61      , /* resource requirement */
  gname63        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname62        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group call */
static const SI_RRW res_req70[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname72[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname71[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency74[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency75[] = {3,3};
static SI gname69 = {
  "call",
  7              , /* id */
  latency74      , /* operand latency */
  latency75      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req70      , /* resource requirement */
  gname72        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname71        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dynamic tls call */
static const SI_RRW res_req79[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname81[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname80[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency83[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency84[] = {5,5};
static SI gname78 = {
  "dynamic tls call",
  8              , /* id */
  latency83      , /* operand latency */
  latency84      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req79      , /* resource requirement */
  gname81        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname80        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group indirect call/jump */
static const SI_RRW res_req88[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname90[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname89[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency92[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency93[] = {4,4};
static SI gname87 = {
  "indirect call/jump",
  9              , /* id */
  latency92      , /* operand latency */
  latency93      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req88      , /* resource requirement */
  gname90        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname89        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group imult32 */
static const SI_RRW res_req97[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname99[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname98[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency101[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency102[] = {3,3};
static SI gname96 = {
  "imult32",
  10             , /* id */
  latency101     , /* operand latency */
  latency102     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req97      , /* resource requirement */
  gname99        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname98        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group imult64 */
static const SI_RRW res_req106[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname108[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname107[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency110[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency111[] = {5,5};
static SI gname105 = {
  "imult64",
  11             , /* id */
  latency110     , /* operand latency */
  latency111     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req106     , /* resource requirement */
  gname108       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname107       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group leave */
static const SI_RRW res_req115[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname117[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname116[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency119[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency120[] = {3,3};
static SI gname114 = {
  "leave",
  12             , /* id */
  latency119     , /* operand latency */
  latency120     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req115     , /* resource requirement */
  gname117       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname116       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group enter */
static const SI_RRW res_req124[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname126[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname125[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency128[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency129[] = {21,21};
static SI gname123 = {
  "enter",
  13             , /* id */
  latency128     , /* operand latency */
  latency129     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req124     , /* resource requirement */
  gname126       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname125       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group div32 */
static const SI_RRW res_req133[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname135[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname134[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency137[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency138[] = {39,39};
static SI gname132 = {
  "div32",
  14             , /* id */
  latency137     , /* operand latency */
  latency138     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req133     , /* resource requirement */
  gname135       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname134       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group div64 */
static const SI_RRW res_req142[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname144[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname143[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency146[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency147[] = {71,71};
static SI gname141 = {
  "div64",
  15             , /* id */
  latency146     , /* operand latency */
  latency147     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req142     , /* resource requirement */
  gname144       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname143       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group idiv32 */
static const SI_RRW res_req151[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname153[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname152[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency155[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency156[] = {42,42};
static SI gname150 = {
  "idiv32",
  16             , /* id */
  latency155     , /* operand latency */
  latency156     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req151     , /* resource requirement */
  gname153       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname152       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group idiv64 */
static const SI_RRW res_req160[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname162[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname161[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency164[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency165[] = {74,74};
static SI gname159 = {
  "idiv64",
  17             , /* id */
  latency164     , /* operand latency */
  latency165     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req160     , /* resource requirement */
  gname162       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname161       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group load8_16/32/64 */
static const SI_RRW res_req169[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname171[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname170[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency173[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency174[] = {4,4};
static SI gname168 = {
  "load8_16/32/64",
  18             , /* id */
  latency173     , /* operand latency */
  latency174     , /* result latency */
  4              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req169     , /* resource requirement */
  gname171       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname170       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group load32/64 */
static const SI_RRW res_req178[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname180[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname179[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency182[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency183[] = {3,3};
static SI gname177 = {
  "load32/64",
  19             , /* id */
  latency182     , /* operand latency */
  latency183     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req178     , /* resource requirement */
  gname180       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname179       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group store */
static const SI_RRW res_req187[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname189[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname188[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency191[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency192[] = {3,3};
static SI gname186 = {
  "store",
  20             , /* id */
  latency191     , /* operand latency */
  latency192     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
  res_req187     , /* resource requirement */
  gname189       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname188       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group branch */
static const SI_RRW res_req196[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname198[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname197[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency200[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency201[] = {1,1};
static SI gname195 = {
  "branch",
  21             , /* id */
  latency200     , /* operand latency */
  latency201     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req196     , /* resource requirement */
  gname198       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname197       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sqrtss */
static const SI_RRW res_req205[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname207[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname206[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency209[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency210[] = {19,19};
static SI gname204 = {
  "sqrtss",
  22             , /* id */
  latency209     , /* operand latency */
  latency210     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req205     , /* resource requirement */
  gname207       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname206       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sqrtsd */
static const SI_RRW res_req214[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname216[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname215[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency218[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency219[] = {27,27};
static SI gname213 = {
  "sqrtsd",
  23             , /* id */
  latency218     , /* operand latency */
  latency219     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req214     , /* resource requirement */
  gname216       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname215       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mov */
static const SI_RRW res_req223[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname225[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname224[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency227[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency228[] = {2,2};
static SI gname222 = {
  "float-mov",
  24             , /* id */
  latency227     , /* operand latency */
  latency228     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req223     , /* resource requirement */
  gname225       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname224       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load */
static const SI_RRW res_req232[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname234[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname233[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency236[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency237[] = {3,3};
static SI gname231 = {
  "float-load",
  25             , /* id */
  latency236     , /* operand latency */
  latency237     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req232     , /* resource requirement */
  gname234       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname233       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector */
static const SI_RRW res_req241[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname243[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname242[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency245[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency246[] = {7,7};
static SI gname240 = {
  "float-load vector",
  26             , /* id */
  latency245     , /* operand latency */
  latency246     , /* result latency */
  7              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req241     , /* resource requirement */
  gname243       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname242       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector II */
static const SI_RRW res_req250[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname252[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname251[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency254[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency255[] = {2,2};
static SI gname249 = {
  "float-load vector II",
  27             , /* id */
  latency254     , /* operand latency */
  latency255     , /* result latency */
  2              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req250     , /* resource requirement */
  gname252       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname251       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector low-high packed-single */
static const SI_RRW res_req259[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname261[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname260[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency263[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency264[] = {2,2};
static SI gname258 = {
  "float-load vector low-high packed-single",
  28             , /* id */
  latency263     , /* operand latency */
  latency264     , /* result latency */
  2              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req259     , /* resource requirement */
  gname261       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname260       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector low-high packed-single */
static const SI_RRW res_req268[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname270[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname269[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency272[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency273[] = {2,2};
static SI gname267 = {
  "float-store vector low-high packed-single",
  29             , /* id */
  latency272     , /* operand latency */
  latency273     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  2              , /* store available time */
  res_req268     , /* resource requirement */
  gname270       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname269       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector low-high packed-double */
static const SI_RRW res_req277[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname279[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname278[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency281[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency282[] = {4,4};
static SI gname276 = {
  "float-load vector low-high packed-double",
  30             , /* id */
  latency281     , /* operand latency */
  latency282     , /* result latency */
  4              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req277     , /* resource requirement */
  gname279       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname278       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector low-high packed-double */
static const SI_RRW res_req286[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname288[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname287[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency290[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency291[] = {4,4};
static SI gname285 = {
  "float-store vector low-high packed-double",
  31             , /* id */
  latency290     , /* operand latency */
  latency291     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  4              , /* store available time */
  res_req286     , /* resource requirement */
  gname288       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname287       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store */
static const SI_RRW res_req295[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname297[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname296[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency299[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency300[] = {2,2};
static SI gname294 = {
  "float-store",
  32             , /* id */
  latency299     , /* operand latency */
  latency300     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  2              , /* store available time */
  res_req295     , /* resource requirement */
  gname297       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname296       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector */
static const SI_RRW res_req304[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname306[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname305[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency308[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency309[] = {4,4};
static SI gname303 = {
  "float-store vector",
  33             , /* id */
  latency308     , /* operand latency */
  latency309     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  4              , /* store available time */
  res_req304     , /* resource requirement */
  gname306       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname305       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector II */
static const SI_RRW res_req313[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname315[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname314[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency317[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency318[] = {3,3};
static SI gname312 = {
  "float-store vector II",
  34             , /* id */
  latency317     , /* operand latency */
  latency318     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
  res_req313     , /* resource requirement */
  gname315       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname314       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I */
static const SI_RRW res_req322[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname324[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname323[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency326[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency327[] = {5,5};
static SI gname321 = {
  "vector cvt I",
  35             , /* id */
  latency326     , /* operand latency */
  latency327     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req322     , /* resource requirement */
  gname324       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname323       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt II */
static const SI_RRW res_req331[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname333[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname332[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency335[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency336[] = {3,3};
static SI gname330 = {
  "vector cvt II",
  36             , /* id */
  latency335     , /* operand latency */
  latency336     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req331     , /* resource requirement */
  gname333       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname332       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt III */
static const SI_RRW res_req340[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname342[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname341[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency344[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency345[] = {8,8};
static SI gname339 = {
  "vector cvt III",
  37             , /* id */
  latency344     , /* operand latency */
  latency345     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req340     , /* resource requirement */
  gname342       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname341       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV */
static const SI_RRW res_req349[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname351[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname350[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency353[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency354[] = {5,5};
static SI gname348 = {
  "vector cvt IV",
  38             , /* id */
  latency353     , /* operand latency */
  latency354     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req349     , /* resource requirement */
  gname351       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname350       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I w/ memory operand */
static const SI_RRW res_req358[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname360[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname359[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency362[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency363[] = {7,7};
static SI gname357 = {
  "vector cvt I w/ memory operand",
  39             , /* id */
  latency362     , /* operand latency */
  latency363     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req358     , /* resource requirement */
  gname360       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname359       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt II w/ memory operand */
static const SI_RRW res_req367[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname369[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname368[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency371[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency372[] = {5,5};
static SI gname366 = {
  "vector cvt II w/ memory operand",
  40             , /* id */
  latency371     , /* operand latency */
  latency372     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req367     , /* resource requirement */
  gname369       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname368       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt III w/ memory operand */
static const SI_RRW res_req376[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname378[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname377[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency380[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency381[] = {10,10};
static SI gname375 = {
  "vector cvt III w/ memory operand",
  41             , /* id */
  latency380     , /* operand latency */
  latency381     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req376     , /* resource requirement */
  gname378       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname377       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV w/ memory operand */
static const SI_RRW res_req385[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname387[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname386[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency389[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency390[] = {7,7};
static SI gname384 = {
  "vector cvt IV w/ memory operand",
  42             , /* id */
  latency389     , /* operand latency */
  latency390     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req385     , /* resource requirement */
  gname387       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname386       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float w/ mem */
static const SI_RRW res_req394[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname396[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname395[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency398[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency399[] = {9,9};
static SI gname393 = {
  "int-2-float w/ mem",
  43             , /* id */
  latency398     , /* operand latency */
  latency399     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req394     , /* resource requirement */
  gname396       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname395       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float */
static const SI_RRW res_req403[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname405[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname404[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency407[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency408[] = {14,14};
static SI gname402 = {
  "int-2-float",
  44             , /* id */
  latency407     , /* operand latency */
  latency408     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req403     , /* resource requirement */
  gname405       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname404       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group double-2-float */
static const SI_RRW res_req412[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname414[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname413[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency416[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency417[] = {12,12};
static SI gname411 = {
  "double-2-float",
  45             , /* id */
  latency416     , /* operand latency */
  latency417     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req412     , /* resource requirement */
  gname414       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname413       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group double-2-float w/ mem */
static const SI_RRW res_req421[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname423[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname422[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency425[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency426[] = {9,9};
static SI gname420 = {
  "double-2-float w/ mem",
  46             , /* id */
  latency425     , /* operand latency */
  latency426     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req421     , /* resource requirement */
  gname423       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname422       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-double */
static const SI_RRW res_req430[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname432[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname431[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency434[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency435[] = {11,11};
static SI gname429 = {
  "int-2-double",
  47             , /* id */
  latency434     , /* operand latency */
  latency435     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req430     , /* resource requirement */
  gname432       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname431       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-double w/ mem */
static const SI_RRW res_req439[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname441[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname440[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency443[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency444[] = {6,6};
static SI gname438 = {
  "int-2-double w/ mem",
  48             , /* id */
  latency443     , /* operand latency */
  latency444     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req439     , /* resource requirement */
  gname441       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname440       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float */
static const SI_RRW res_req448[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname450[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname449[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency452[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency453[] = {9,9};
static SI gname447 = {
  "int-2-float",
  49             , /* id */
  latency452     , /* operand latency */
  latency453     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req448     , /* resource requirement */
  gname450       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname449       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-2-int */
static const SI_RRW res_req457[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname459[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname458[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency461[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency462[] = {2,2};
static SI gname456 = {
  "float-2-int",
  50             , /* id */
  latency461     , /* operand latency */
  latency462     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req457     , /* resource requirement */
  gname459       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname458       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu */
static const SI_RRW res_req466[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname468[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname467[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency470[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency471[] = {4,4};
static SI gname465 = {
  "float-alu",
  51             , /* id */
  latency470     , /* operand latency */
  latency471     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req466     , /* resource requirement */
  gname468       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname467       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I */
static const SI_RRW res_req475[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname477[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname476[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency479[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency480[] = {5,5};
static SI gname474 = {
  "float-alu for float vector class I",
  52             , /* id */
  latency479     , /* operand latency */
  latency480     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req475     , /* resource requirement */
  gname477       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname476       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I w/ memory operand */
static const SI_RRW res_req484[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname486[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname485[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency488[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency489[] = {5,5};
static SI gname483 = {
  "float-alu for float vector class I w/ memory operand",
  53             , /* id */
  latency488     , /* operand latency */
  latency489     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req484     , /* resource requirement */
  gname486       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname485       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class II */
static const SI_RRW res_req493[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname495[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname494[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency497[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency498[] = {3,3};
static SI gname492 = {
  "float-alu for float vector class II",
  54             , /* id */
  latency497     , /* operand latency */
  latency498     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req493     , /* resource requirement */
  gname495       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname494       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class II w/ memory operand */
static const SI_RRW res_req502[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname504[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname503[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency506[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency507[] = {5,5};
static SI gname501 = {
  "float-alu for float vector class II w/ memory operand",
  55             , /* id */
  latency506     , /* operand latency */
  latency507     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req502     , /* resource requirement */
  gname504       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname503       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III */
static const SI_RRW res_req511[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname513[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname512[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency515[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency516[] = {5,5};
static SI gname510 = {
  "float-alu for float vector class III",
  56             , /* id */
  latency515     , /* operand latency */
  latency516     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req511     , /* resource requirement */
  gname513       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname512       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III w/memory operand */
static const SI_RRW res_req520[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname522[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname521[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency524[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency525[] = {7,7};
static SI gname519 = {
  "float-alu for float vector class III w/memory operand",
  57             , /* id */
  latency524     , /* operand latency */
  latency525     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req520     , /* resource requirement */
  gname522       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname521       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV */
static const SI_RRW res_req529[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname531[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname530[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency533[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency534[] = {33,33};
static SI gname528 = {
  "float-alu for float vector class IV",
  58             , /* id */
  latency533     , /* operand latency */
  latency534     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req529     , /* resource requirement */
  gname531       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname530       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 cosine */
static const SI_RRW res_req538[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname540[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname539[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency542[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency543[] = {92,92};
static SI gname537 = {
  "x87 cosine",
  59             , /* id */
  latency542     , /* operand latency */
  latency543     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req538     , /* resource requirement */
  gname540       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname539       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 sine */
static const SI_RRW res_req547[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname549[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname548[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency551[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency552[] = {93,93};
static SI gname546 = {
  "x87 sine",
  60             , /* id */
  latency551     , /* operand latency */
  latency552     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req547     , /* resource requirement */
  gname549       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname548       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV w/ memory operand */
static const SI_RRW res_req556[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname558[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname557[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency560[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency561[] = {35,35};
static SI gname555 = {
  "float-alu for float vector class IV w/ memory operand",
  61             , /* id */
  latency560     , /* operand latency */
  latency561     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req556     , /* resource requirement */
  gname558       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname557       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class V */
static const SI_RRW res_req565[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname567[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname566[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency569[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency570[] = {37,37};
static SI gname564 = {
  "float-alu for float vector class V",
  62             , /* id */
  latency569     , /* operand latency */
  latency570     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req565     , /* resource requirement */
  gname567       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname566       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class V w/ memory operand */
static const SI_RRW res_req574[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname576[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname575[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency578[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency579[] = {39,39};
static SI gname573 = {
  "float-alu for float vector class V w/ memory operand",
  63             , /* id */
  latency578     , /* operand latency */
  latency579     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req574     , /* resource requirement */
  gname576       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname575       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 */
static const SI_RRW res_req583[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname585[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname584[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency587[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency588[] = {2,2};
static SI gname582 = {
  "float-vector fma4",
  64             , /* id */
  latency587     , /* operand latency */
  latency588     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req583     , /* resource requirement */
  gname585       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname584       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd */
static const SI_RRW res_req592[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname594[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname593[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency596[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency597[] = {4,4};
static SI gname591 = {
  "float-vector fma4 mem opnd",
  65             , /* id */
  latency596     , /* operand latency */
  latency597     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req592     , /* resource requirement */
  gname594       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname593       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd  w/ scaled index  */
static const SI_RRW res_req601[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname603[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname602[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency605[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency606[] = {4,4};
static SI gname600 = {
  "float-vector fma4 mem opnd  w/ scaled index ",
  66             , /* id */
  latency605     , /* operand latency */
  latency606     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req601     , /* resource requirement */
  gname603       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname602       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd  w/ scaled index w/o base */
static const SI_RRW res_req610[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname612[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname611[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency614[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency615[] = {4,4};
static SI gname609 = {
  "float-vector fma4 mem opnd  w/ scaled index w/o base",
  67             , /* id */
  latency614     , /* operand latency */
  latency615     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req610     , /* resource requirement */
  gname612       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname611       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VI */
static const SI_RRW res_req619[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname621[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname620[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency623[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency624[] = {3,3};
static SI gname618 = {
  "float-alu for float vector class VI",
  68             , /* id */
  latency623     , /* operand latency */
  latency624     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req619     , /* resource requirement */
  gname621       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname620       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VI w/ memory operand */
static const SI_RRW res_req628[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname630[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname629[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency632[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency633[] = {5,5};
static SI gname627 = {
  "float-alu for float vector class VI w/ memory operand",
  69             , /* id */
  latency632     , /* operand latency */
  latency633     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req628     , /* resource requirement */
  gname630       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname629       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VII */
static const SI_RRW res_req637[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname639[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname638[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency641[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency642[] = {39,39};
static SI gname636 = {
  "float-alu for float vector class VII",
  70             , /* id */
  latency641     , /* operand latency */
  latency642     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req637     , /* resource requirement */
  gname639       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname638       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VIII */
static const SI_RRW res_req646[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname648[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname647[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency650[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency651[] = {51,51};
static SI gname645 = {
  "float-alu for float vector class VIII",
  71             , /* id */
  latency650     , /* operand latency */
  latency651     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req646     , /* resource requirement */
  gname648       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname647       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IX */
static const SI_RRW res_req655[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname657[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname656[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency659[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency660[] = {4,4};
static SI gname654 = {
  "float-alu for float vector class IX",
  72             , /* id */
  latency659     , /* operand latency */
  latency660     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req655     , /* resource requirement */
  gname657       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname656       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class X */
static const SI_RRW res_req664[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname666[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname665[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency668[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency669[] = {2,2};
static SI gname663 = {
  "float-alu for float vector class X",
  73             , /* id */
  latency668     , /* operand latency */
  latency669     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req664     , /* resource requirement */
  gname666       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname665       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XI */
static const SI_RRW res_req673[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname675[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname674[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency677[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency678[] = {3,3};
static SI gname672 = {
  "float-alu for float vector class XI",
  74             , /* id */
  latency677     , /* operand latency */
  latency678     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req673     , /* resource requirement */
  gname675       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname674       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XII */
static const SI_RRW res_req682[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname684[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname683[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency686[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency687[] = {4,4};
static SI gname681 = {
  "float-alu for float vector class XII",
  75             , /* id */
  latency686     , /* operand latency */
  latency687     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req682     , /* resource requirement */
  gname684       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname683       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIIa */
static const SI_RRW res_req691[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname693[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname692[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency695[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency696[] = {2,2};
static SI gname690 = {
  "float-alu for float vector class XIIa",
  76             , /* id */
  latency695     , /* operand latency */
  latency696     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req691     , /* resource requirement */
  gname693       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname692       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mmx shuffle */
static const SI_RRW res_req700[] = {
  1,
  0xa01
};
static const SI_RESOURCE_ID_SET gname702[] = {
  0x19
};
static SI_RESOURCE_TOTAL gname701[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency704[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency705[] = {2,2};
static SI gname699 = {
  "mmx shuffle",
  77             , /* id */
  latency704     , /* operand latency */
  latency705     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req700     , /* resource requirement */
  gname702       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname701       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIII */
static const SI_RRW res_req709[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname711[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname710[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency713[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency714[] = {2,2};
static SI gname708 = {
  "float-alu for float vector class XIII",
  78             , /* id */
  latency713     , /* operand latency */
  latency714     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req709     , /* resource requirement */
  gname711       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname710       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIV */
static const SI_RRW res_req718[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname720[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname719[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency722[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency723[] = {2,2};
static SI gname717 = {
  "float-alu for float vector class XIV",
  79             , /* id */
  latency722     , /* operand latency */
  latency723     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req718     , /* resource requirement */
  gname720       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname719       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XV */
static const SI_RRW res_req727[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname729[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname728[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency731[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency732[] = {3,3};
static SI gname726 = {
  "float-alu for float vector class XV",
  80             , /* id */
  latency731     , /* operand latency */
  latency732     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req727     , /* resource requirement */
  gname729       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname728       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse parallel compares */
static const SI_RRW res_req736[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname738[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname737[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency740[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency741[] = {2,2};
static SI gname735 = {
  "sse parallel compares",
  81             , /* id */
  latency740     , /* operand latency */
  latency741     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req736     , /* resource requirement */
  gname738       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname737       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XVI */
static const SI_RRW res_req745[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname747[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname746[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency749[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency750[] = {2,2};
static SI gname744 = {
  "float-alu for float vector class XVI",
  82             , /* id */
  latency749     , /* operand latency */
  latency750     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req745     , /* resource requirement */
  gname747       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname746       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XVII */
static const SI_RRW res_req754[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname756[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname755[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency758[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency759[] = {4,4};
static SI gname753 = {
  "float-alu for float vector class XVII",
  83             , /* id */
  latency758     , /* operand latency */
  latency759     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req754     , /* resource requirement */
  gname756       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname755       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int vector */
static const SI_RRW res_req763[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname765[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname764[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency767[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency768[] = {2,2};
static SI gname762 = {
  "float-alu for int vector",
  84             , /* id */
  latency767     , /* operand latency */
  latency768     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req763     , /* resource requirement */
  gname765       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname764       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int mpy vector */
static const SI_RRW res_req772[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname774[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname773[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency776[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency777[] = {6,6};
static SI gname771 = {
  "float-alu for int mpy vector",
  85             , /* id */
  latency776     , /* operand latency */
  latency777     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req772     , /* resource requirement */
  gname774       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname773       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for mmx int mpy vector */
static const SI_RRW res_req781[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname783[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname782[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency785[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency786[] = {3,3};
static SI gname780 = {
  "float-alu for mmx int mpy vector",
  86             , /* id */
  latency785     , /* operand latency */
  latency786     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req781     , /* resource requirement */
  gname783       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname782       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int vector w/ memory operand */
static const SI_RRW res_req790[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname792[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname791[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency794[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency795[] = {4,4};
static SI gname789 = {
  "float-alu for int vector w/ memory operand",
  87             , /* id */
  latency794     , /* operand latency */
  latency795     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req790     , /* resource requirement */
  gname792       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname791       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu w/ memory operand */
static const SI_RRW res_req799[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname801[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname800[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency803[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency804[] = {6,6};
static SI gname798 = {
  "float-alu w/ memory operand",
  88             , /* id */
  latency803     , /* operand latency */
  latency804     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req799     , /* resource requirement */
  gname801       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname800       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-max/min */
static const SI_RRW res_req808[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname810[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname809[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency812[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency813[] = {2,2};
static SI gname807 = {
  "float-max/min",
  89             , /* id */
  latency812     , /* operand latency */
  latency813     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req808     , /* resource requirement */
  gname810       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname809       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-xorp */
static const SI_RRW res_req817[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname819[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname818[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency821[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency822[] = {3,3};
static SI gname816 = {
  "float-xorp",
  90             , /* id */
  latency821     , /* operand latency */
  latency822     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req817     , /* resource requirement */
  gname819       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname818       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul */
static const SI_RRW res_req826[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname828[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname827[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency830[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency831[] = {4,4};
static SI gname825 = {
  "float-mul",
  91             , /* id */
  latency830     , /* operand latency */
  latency831     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req826     , /* resource requirement */
  gname828       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname827       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul w/ mem operand */
static const SI_RRW res_req835[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname837[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname836[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency839[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency840[] = {6,6};
static SI gname834 = {
  "float-mul w/ mem operand",
  92             , /* id */
  latency839     , /* operand latency */
  latency840     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req835     , /* resource requirement */
  gname837       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname836       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide */
static const SI_RRW res_req844[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname846[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname845[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency848[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency849[] = {20,20};
static SI gname843 = {
  "float-divide",
  93             , /* id */
  latency848     , /* operand latency */
  latency849     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req844     , /* resource requirement */
  gname846       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname845       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide */
static const SI_RRW res_req853[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname855[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname854[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency857[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency858[] = {22,22};
static SI gname852 = {
  "float-divide",
  94             , /* id */
  latency857     , /* operand latency */
  latency858     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req853     , /* resource requirement */
  gname855       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname854       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-others */
static const SI_RRW res_req862[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname864[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname863[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency866[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency867[] = {10,10};
static SI gname861 = {
  "float-others",
  95             , /* id */
  latency866     , /* operand latency */
  latency867     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req862     , /* resource requirement */
  gname864       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname863       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sync */
static const SI_RRW res_req871[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname873[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname872[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency875[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency876[] = {0,0};
static SI gname870 = {
  "sync",
  96             , /* id */
  latency875     , /* operand latency */
  latency876     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req871     , /* resource requirement */
  gname873       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname872       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group prefetch */
static const SI_RRW res_req880[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname882[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname881[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency884[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency885[] = {0,0};
static SI gname879 = {
  "prefetch",
  97             , /* id */
  latency884     , /* operand latency */
  latency885     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req880     , /* resource requirement */
  gname882       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname881       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group nop */
static const SI_RRW res_req889[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname891[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname890[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency893[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency894[] = {0,0};
static SI gname888 = {
  "nop",
  98             , /* id */
  latency893     , /* operand latency */
  latency894     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req889     , /* resource requirement */
  gname891       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname890       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group emms */
static const SI_RRW res_req898[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname900[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname899[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency902[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency903[] = {6,6};
static SI gname897 = {
  "emms",
  99             , /* id */
  latency902     , /* operand latency */
  latency903     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req898     , /* resource requirement */
  gname900       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  gname899       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group clflush */
static const SI_RRW res_req907[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname909[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname908[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency911[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency912[] = {0,0};
static SI gname906 = {
  "clflush",
  100            , /* id */
  latency911     , /* operand latency */
  latency912     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req907     , /* resource requirement */
  gname909       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname908       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group zeroupper */
static const SI_RRW res_req916[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname918[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname917[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency920[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency921[] = {6,6};
static SI gname915 = {
  "zeroupper",
  101            , /* id */
  latency920     , /* operand latency */
  latency921     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req916     , /* resource requirement */
  gname918       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  gname917       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-int-2-mmx */
static const SI_RRW res_req925[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname927[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname926[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency929[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency930[] = {9,9};
static SI gname924 = {
  "mov-int-2-mmx",
  102            , /* id */
  latency929     , /* operand latency */
  latency930     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req925     , /* resource requirement */
  gname927       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname926       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-int */
static const SI_RRW res_req934[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname936[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname935[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency938[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency939[] = {4,4};
static SI gname933 = {
  "mov-mmx-2-int",
  103            , /* id */
  latency938     , /* operand latency */
  latency939     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req934     , /* resource requirement */
  gname936       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname935       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-sse */
static const SI_RRW res_req943[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname945[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname944[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency947[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency948[] = {2,2};
static SI gname942 = {
  "mov-mmx-2-sse",
  104            , /* id */
  latency947     , /* operand latency */
  latency948     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req943     , /* resource requirement */
  gname945       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname944       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-sse_2_mmx */
static const SI_RRW res_req952[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname954[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname953[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency956[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency957[] = {2,2};
static SI gname951 = {
  "mov-sse_2_mmx",
  105            , /* id */
  latency956     , /* operand latency */
  latency957     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req952     , /* resource requirement */
  gname954       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname953       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx */
static const SI_RRW res_req961[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname963[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname962[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency965[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency966[] = {8,8};
static SI gname960 = {
  "vector cvt sse <-> mmx",
  106            , /* id */
  latency965     , /* operand latency */
  latency966     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req961     , /* resource requirement */
  gname963       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname962       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE movmsk */
static const SI_RRW res_req970[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname972[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname971[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency974[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency975[] = {3,3};
static SI gname969 = {
  "SSE movmsk",
  107            , /* id */
  latency974     , /* operand latency */
  latency975     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req970     , /* resource requirement */
  gname972       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname971       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A extract */
static const SI_RRW res_req979[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname981[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname980[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency983[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency984[] = {2,2};
static SI gname978 = {
  "SSE4A extract",
  108            , /* id */
  latency983     , /* operand latency */
  latency984     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req979     , /* resource requirement */
  gname981       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname980       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A insert */
static const SI_RRW res_req988[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname990[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname989[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency992[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency993[] = {5,5};
static SI gname987 = {
  "SSE4A insert",
  109            , /* id */
  latency992     , /* operand latency */
  latency993     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req988     , /* resource requirement */
  gname990       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname989       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group monitor mwait */
static const SI_RRW res_req997[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname999[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname998[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1001[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1002[] = {0,0};
static SI gname996 = {
  "monitor mwait",
  110            , /* id */
  latency1001    , /* operand latency */
  latency1002    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req997     , /* resource requirement */
  gname999       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname998       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc reg opnd */
static const SI_RRW res_req1006[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1008[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1007[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1010[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1011[] = {2,2};
static SI gname1005 = {
  "ssse3 misc reg opnd",
  111            , /* id */
  latency1010    , /* operand latency */
  latency1011    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1006    , /* resource requirement */
  gname1008      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1007      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc mem opnd */
static const SI_RRW res_req1015[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1017[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1016[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1019[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1020[] = {7,7};
static SI gname1014 = {
  "ssse3 misc mem opnd",
  112            , /* id */
  latency1019    , /* operand latency */
  latency1020    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1015    , /* resource requirement */
  gname1017      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1016      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 hadd reg opnd */
static const SI_RRW res_req1024[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1026[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1025[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1028[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1029[] = {5,5};
static SI gname1023 = {
  "ssse3 hadd reg opnd",
  113            , /* id */
  latency1028    , /* operand latency */
  latency1029    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1024    , /* resource requirement */
  gname1026      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1025      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 hadd mem opnd */
static const SI_RRW res_req1033[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1035[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1034[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1037[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1038[] = {10,10};
static SI gname1032 = {
  "ssse3 hadd mem opnd",
  114            , /* id */
  latency1037    , /* operand latency */
  latency1038    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1033    , /* resource requirement */
  gname1035      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1034      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 mul reg opnd */
static const SI_RRW res_req1042[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1044[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1043[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1046[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1047[] = {4,4};
static SI gname1041 = {
  "ssse3 mul reg opnd",
  115            , /* id */
  latency1046    , /* operand latency */
  latency1047    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1042    , /* resource requirement */
  gname1044      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1043      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 mul mem opnd */
static const SI_RRW res_req1051[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1053[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1052[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1055[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1056[] = {9,9};
static SI gname1050 = {
  "ssse3 mul mem opnd",
  116            , /* id */
  latency1055    , /* operand latency */
  latency1056    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1051    , /* resource requirement */
  gname1053      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1052      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1060[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1062[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1061[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1064[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1065[] = {2,2};
static SI gname1059 = {
  "sse4.1 pmov reg opnd",
  117            , /* id */
  latency1064    , /* operand latency */
  latency1065    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1060    , /* resource requirement */
  gname1062      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1061      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1069[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1071[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1070[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1073[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1074[] = {7,7};
static SI gname1068 = {
  "sse4.1 pmov mem opnd",
  118            , /* id */
  latency1073    , /* operand latency */
  latency1074    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1069    , /* resource requirement */
  gname1071      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1070      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1078[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1080[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1079[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1082[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1083[] = {4,4};
static SI gname1077 = {
  "sse4.1 misc reg opnd",
  119            , /* id */
  latency1082    , /* operand latency */
  latency1083    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1078    , /* resource requirement */
  gname1080      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1079      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1087[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1089[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1088[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1091[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1092[] = {9,9};
static SI gname1086 = {
  "sse4.1 misc mem opnd",
  120            , /* id */
  latency1091    , /* operand latency */
  latency1092    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1087    , /* resource requirement */
  gname1089      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1088      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend reg opnd */
static const SI_RRW res_req1096[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1098[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1097[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1100[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1101[] = {5,5};
static SI gname1095 = {
  "sse4.1 blend reg opnd",
  121            , /* id */
  latency1100    , /* operand latency */
  latency1101    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1096    , /* resource requirement */
  gname1098      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1097      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend mem opnd */
static const SI_RRW res_req1105[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1107[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1106[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1109[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1110[] = {10,10};
static SI gname1104 = {
  "sse4.1 blend mem opnd",
  122            , /* id */
  latency1109    , /* operand latency */
  latency1110    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1105    , /* resource requirement */
  gname1107      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1106      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr reg opnd */
static const SI_RRW res_req1114[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1116[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1115[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1118[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1119[] = {2,2};
static SI gname1113 = {
  "sse4.1 insr extr reg opnd",
  123            , /* id */
  latency1118    , /* operand latency */
  latency1119    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1114    , /* resource requirement */
  gname1116      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1115      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr mem opnd */
static const SI_RRW res_req1123[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1125[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1124[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1127[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1128[] = {4,4};
static SI gname1122 = {
  "sse4.1 insr extr mem opnd",
  124            , /* id */
  latency1127    , /* operand latency */
  latency1128    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1123    , /* resource requirement */
  gname1125      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1124      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1132[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1134[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1133[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1136[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1137[] = {4,4};
static SI gname1131 = {
  "sse4.1 misc reg opnd",
  125            , /* id */
  latency1136    , /* operand latency */
  latency1137    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1132    , /* resource requirement */
  gname1134      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1133      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1141[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1143[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1142[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1145[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1146[] = {9,9};
static SI gname1140 = {
  "sse4.1 misc mem opnd",
  126            , /* id */
  latency1145    , /* operand latency */
  latency1146    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1141    , /* resource requirement */
  gname1143      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1142      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr reg opnd */
static const SI_RRW res_req1150[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1152[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1151[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1154[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1155[] = {5,5};
static SI gname1149 = {
  "sse4.1 finsr fextr reg opnd",
  127            , /* id */
  latency1154    , /* operand latency */
  latency1155    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1150    , /* resource requirement */
  gname1152      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1151      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr mem opnd */
static const SI_RRW res_req1159[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1161[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1160[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1163[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1164[] = {10,10};
static SI gname1158 = {
  "sse4.1 finsr fextr mem opnd",
  128            , /* id */
  latency1163    , /* operand latency */
  latency1164    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1159    , /* resource requirement */
  gname1161      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1160      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1168[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1170[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1169[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1172[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1173[] = {4,4};
static SI gname1167 = {
  "sse4.1 misc reg opnd",
  129            , /* id */
  latency1172    , /* operand latency */
  latency1173    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1168    , /* resource requirement */
  gname1170      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1169      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1177[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1179[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1178[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1181[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1182[] = {9,9};
static SI gname1176 = {
  "sse4.1 misc mem opnd",
  130            , /* id */
  latency1181    , /* operand latency */
  latency1182    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1177    , /* resource requirement */
  gname1179      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1178      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 load ntdqa */
static const SI_RRW res_req1186[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1188[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1187[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1190[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1191[] = {2,2};
static SI gname1185 = {
  "sse4.1 load ntdqa",
  131            , /* id */
  latency1190    , /* operand latency */
  latency1191    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1186    , /* resource requirement */
  gname1188      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1187      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 store ntdqa */
static const SI_RRW res_req1195[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1197[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1196[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1199[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1200[] = {2,2};
static SI gname1194 = {
  "sse4.1 store ntdqa",
  132            , /* id */
  latency1199    , /* operand latency */
  latency1200    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1195    , /* resource requirement */
  gname1197      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1196      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1204[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1206[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1205[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1208[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1209[] = {2,2};
static SI gname1203 = {
  "sse4.1 pmov reg opnd",
  133            , /* id */
  latency1208    , /* operand latency */
  latency1209    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1204    , /* resource requirement */
  gname1206      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1205      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1213[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1215[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1214[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1217[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1218[] = {7,7};
static SI gname1212 = {
  "sse4.1 pmov mem opnd",
  134            , /* id */
  latency1217    , /* operand latency */
  latency1218    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1213    , /* resource requirement */
  gname1215      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1214      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest reg opnd */
static const SI_RRW res_req1222[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1224[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1223[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1226[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1227[] = {5,5};
static SI gname1221 = {
  "sse4.1 ptest reg opnd",
  135            , /* id */
  latency1226    , /* operand latency */
  latency1227    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1222    , /* resource requirement */
  gname1224      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1223      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest mem opnd */
static const SI_RRW res_req1231[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1233[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1232[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1235[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1236[] = {10,10};
static SI gname1230 = {
  "sse4.1 ptest mem opnd",
  136            , /* id */
  latency1235    , /* operand latency */
  latency1236    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1231    , /* resource requirement */
  gname1233      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1232      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc reg opnd */
static const SI_RRW res_req1240[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1242[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1241[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1244[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1245[] = {5,5};
static SI gname1239 = {
  "sse4.2 crc reg opnd",
  137            , /* id */
  latency1244    , /* operand latency */
  latency1245    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1240    , /* resource requirement */
  gname1242      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1241      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc mem opnd */
static const SI_RRW res_req1249[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1251[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1250[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1253[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1254[] = {10,10};
static SI gname1248 = {
  "sse4.2 crc mem opnd",
  138            , /* id */
  latency1253    , /* operand latency */
  latency1254    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1249    , /* resource requirement */
  gname1251      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1250      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1258[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1260[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1259[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1262[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1263[] = {10,10};
static SI gname1257 = {
  "sse4.2 pcmp reg opnd",
  139            , /* id */
  latency1262    , /* operand latency */
  latency1263    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1258    , /* resource requirement */
  gname1260      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1259      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1267[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1269[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1268[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1271[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1272[] = {20,20};
static SI gname1266 = {
  "sse4.2 pcmp mem opnd",
  140            , /* id */
  latency1271    , /* operand latency */
  latency1272    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1267    , /* resource requirement */
  gname1269      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1268      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1276[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1278[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1277[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1280[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1281[] = {5,5};
static SI gname1275 = {
  "sse4.2 pcmp reg opnd",
  141            , /* id */
  latency1280    , /* operand latency */
  latency1281    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1276    , /* resource requirement */
  gname1278      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1277      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1285[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1287[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1286[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1289[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1290[] = {10,10};
static SI gname1284 = {
  "sse4.2 pcmp mem opnd",
  142            , /* id */
  latency1289    , /* operand latency */
  latency1290    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1285    , /* resource requirement */
  gname1287      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1286      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes reg opnd */
static const SI_RRW res_req1294[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1296[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1295[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1298[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1299[] = {10,10};
static SI gname1293 = {
  "aes reg opnd",
  143            , /* id */
  latency1298    , /* operand latency */
  latency1299    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1294    , /* resource requirement */
  gname1296      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1295      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes mem opnd */
static const SI_RRW res_req1303[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1305[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1304[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1307[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1308[] = {20,20};
static SI gname1302 = {
  "aes mem opnd",
  144            , /* id */
  latency1307    , /* operand latency */
  latency1308    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1303    , /* resource requirement */
  gname1305      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1304      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul reg opnd */
static const SI_RRW res_req1312[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1314[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1313[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1316[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1317[] = {6,6};
static SI gname1311 = {
  "pclmul reg opnd",
  145            , /* id */
  latency1316    , /* operand latency */
  latency1317    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1312    , /* resource requirement */
  gname1314      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1313      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul mem opnd */
static const SI_RRW res_req1321[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1323[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1322[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1325[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1326[] = {11,11};
static SI gname1320 = {
  "pclmul mem opnd",
  146            , /* id */
  latency1325    , /* operand latency */
  latency1326    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1321    , /* resource requirement */
  gname1323      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1322      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1330[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1332[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1331[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1334[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1335[] = {2,2};
static SI gname1329 = {
  "xop.desc.sort_by_print reg opnd",
  147            , /* id */
  latency1334    , /* operand latency */
  latency1335    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1330    , /* resource requirement */
  gname1332      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1331      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1339[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1341[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1340[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1343[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1344[] = {7,7};
static SI gname1338 = {
  "xop.desc.sort_by_print mem opnd",
  148            , /* id */
  latency1343    , /* operand latency */
  latency1344    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1339    , /* resource requirement */
  gname1341      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1340      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma reg opnd */
static const SI_RRW res_req1348[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1350[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1349[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1352[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1353[] = {4,4};
static SI gname1347 = {
  "xop fma reg opnd",
  149            , /* id */
  latency1352    , /* operand latency */
  latency1353    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1348    , /* resource requirement */
  gname1350      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1349      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma mem opnd */
static const SI_RRW res_req1357[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1359[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1358[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1361[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1362[] = {9,9};
static SI gname1356 = {
  "xop fma mem opnd",
  150            , /* id */
  latency1361    , /* operand latency */
  latency1362    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1357    , /* resource requirement */
  gname1359      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1358      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz reg opnd */
static const SI_RRW res_req1366[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1368[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1367[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1370[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1371[] = {10,10};
static SI gname1365 = {
  "xop frcz reg opnd",
  151            , /* id */
  latency1370    , /* operand latency */
  latency1371    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1366    , /* resource requirement */
  gname1368      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1367      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz mem opnd */
static const SI_RRW res_req1375[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1377[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1376[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1379[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1380[] = {15,15};
static SI gname1374 = {
  "xop frcz mem opnd",
  152            , /* id */
  latency1379    , /* operand latency */
  latency1380    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1375    , /* resource requirement */
  gname1377      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1376      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1384[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1386[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1385[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1388[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1389[] = {2,2};
static SI gname1383 = {
  "xop.desc.sort_by_print reg opnd",
  153            , /* id */
  latency1388    , /* operand latency */
  latency1389    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1384    , /* resource requirement */
  gname1386      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1385      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1393[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1395[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1394[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1397[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1398[] = {7,7};
static SI gname1392 = {
  "xop.desc.sort_by_print mem opnd",
  154            , /* id */
  latency1397    , /* operand latency */
  latency1398    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1393    , /* resource requirement */
  gname1395      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1394      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem reg opnd */
static const SI_RRW res_req1402[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1404[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1403[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1406[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1407[] = {3,3};
static SI gname1401 = {
  "xop rotate mem reg opnd",
  155            , /* id */
  latency1406    , /* operand latency */
  latency1407    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1402    , /* resource requirement */
  gname1404      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1403      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem mem opnd */
static const SI_RRW res_req1411[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1413[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1412[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1415[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1416[] = {8,8};
static SI gname1410 = {
  "xop rotate mem mem opnd",
  156            , /* id */
  latency1415    , /* operand latency */
  latency1416    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1411    , /* resource requirement */
  gname1413      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1412      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1420[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1422[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1421[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1424[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1425[] = {2,2};
static SI gname1419 = {
  "avx int arith reg opnd",
  157            , /* id */
  latency1424    , /* operand latency */
  latency1425    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1420    , /* resource requirement */
  gname1422      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1421      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1429[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1431[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1430[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1433[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1434[] = {4,4};
static SI gname1428 = {
  "avx int arith mem opnd",
  158            , /* id */
  latency1433    , /* operand latency */
  latency1434    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1429    , /* resource requirement */
  gname1431      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1430      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1438[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1440[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1439[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1442[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1443[] = {2,2};
static SI gname1437 = {
  "avx fp arith reg opnd",
  159            , /* id */
  latency1442    , /* operand latency */
  latency1443    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1438    , /* resource requirement */
  gname1440      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1439      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1447[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1449[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1448[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1451[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1452[] = {7,7};
static SI gname1446 = {
  "avx fp arith mem opnd",
  160            , /* id */
  latency1451    , /* operand latency */
  latency1452    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1447    , /* resource requirement */
  gname1449      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1448      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1456[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1458[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1457[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1460[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1461[] = {4,4};
static SI gname1455 = {
  "avx fp mul reg opnd",
  161            , /* id */
  latency1460    , /* operand latency */
  latency1461    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1456    , /* resource requirement */
  gname1458      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1457      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1465[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1467[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1466[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1469[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1470[] = {7,7};
static SI gname1464 = {
  "avx fp mul mem opnd",
  162            , /* id */
  latency1469    , /* operand latency */
  latency1470    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1465    , /* resource requirement */
  gname1467      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1466      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt reg opnd */
static const SI_RRW res_req1474[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1476[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1475[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1478[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1479[] = {5,5};
static SI gname1473 = {
  "avx fp rsqrt reg opnd",
  163            , /* id */
  latency1478    , /* operand latency */
  latency1479    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1474    , /* resource requirement */
  gname1476      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1475      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt mem opnd */
static const SI_RRW res_req1483[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1485[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1484[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1487[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1488[] = {10,10};
static SI gname1482 = {
  "avx fp rsqrt mem opnd",
  164            , /* id */
  latency1487    , /* operand latency */
  latency1488    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1483    , /* resource requirement */
  gname1485      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1484      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt reg opnd */
static const SI_RRW res_req1492[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1494[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1493[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1496[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1497[] = {19,19};
static SI gname1491 = {
  "avx fp sqrt reg opnd",
  165            , /* id */
  latency1496    , /* operand latency */
  latency1497    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1492    , /* resource requirement */
  gname1494      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1493      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt mem opnd */
static const SI_RRW res_req1501[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1503[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1502[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1505[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1506[] = {21,21};
static SI gname1500 = {
  "avx fp sqrt mem opnd",
  166            , /* id */
  latency1505    , /* operand latency */
  latency1506    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1501    , /* resource requirement */
  gname1503      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1502      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div reg opnd */
static const SI_RRW res_req1510[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1512[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1511[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1514[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1515[] = {33,33};
static SI gname1509 = {
  "avx div reg opnd",
  167            , /* id */
  latency1514    , /* operand latency */
  latency1515    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1510    , /* resource requirement */
  gname1512      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1511      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div mem opnd */
static const SI_RRW res_req1519[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1521[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1520[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1523[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1524[] = {35,35};
static SI gname1518 = {
  "avx div mem opnd",
  168            , /* id */
  latency1523    , /* operand latency */
  latency1524    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1519    , /* resource requirement */
  gname1521      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1520      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1528[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1530[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1529[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1532[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1533[] = {4,4};
static SI gname1527 = {
  "avx fp mul reg opnd",
  169            , /* id */
  latency1532    , /* operand latency */
  latency1533    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1528    , /* resource requirement */
  gname1530      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1529      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1537[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1539[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1538[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1541[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1542[] = {7,7};
static SI gname1536 = {
  "avx fp mul mem opnd",
  170            , /* id */
  latency1541    , /* operand latency */
  latency1542    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1537    , /* resource requirement */
  gname1539      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1538      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend reg opnd */
static const SI_RRW res_req1546[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1548[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1547[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1550[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1551[] = {5,5};
static SI gname1545 = {
  "avx blend reg opnd",
  171            , /* id */
  latency1550    , /* operand latency */
  latency1551    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1546    , /* resource requirement */
  gname1548      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1547      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend mem opnd */
static const SI_RRW res_req1555[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1557[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1556[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1559[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1560[] = {10,10};
static SI gname1554 = {
  "avx blend mem opnd",
  172            , /* id */
  latency1559    , /* operand latency */
  latency1560    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1555    , /* resource requirement */
  gname1557      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1556      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul reg opnd */
static const SI_RRW res_req1564[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1566[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1565[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1568[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1569[] = {6,6};
static SI gname1563 = {
  "avx pclmul reg opnd",
  173            , /* id */
  latency1568    , /* operand latency */
  latency1569    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1564    , /* resource requirement */
  gname1566      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1565      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul mem opnd */
static const SI_RRW res_req1573[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1575[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1574[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1577[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1578[] = {11,11};
static SI gname1572 = {
  "avx pclmul mem opnd",
  174            , /* id */
  latency1577    , /* operand latency */
  latency1578    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1573    , /* resource requirement */
  gname1575      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1574      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes reg opnd */
static const SI_RRW res_req1582[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1584[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1583[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1586[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1587[] = {10,10};
static SI gname1581 = {
  "avx aes reg opnd",
  175            , /* id */
  latency1586    , /* operand latency */
  latency1587    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1582    , /* resource requirement */
  gname1584      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1583      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes mem opnd */
static const SI_RRW res_req1591[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1593[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1592[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1595[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1596[] = {20,20};
static SI gname1590 = {
  "avx aes mem opnd",
  176            , /* id */
  latency1595    , /* operand latency */
  latency1596    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1591    , /* resource requirement */
  gname1593      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1592      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align load */
static const SI_RRW res_req1600[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1602[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1601[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1604[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1605[] = {2,2};
static SI gname1599 = {
  "avx fp align load",
  177            , /* id */
  latency1604    , /* operand latency */
  latency1605    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1600    , /* resource requirement */
  gname1602      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1601      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1609[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1611[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1610[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1613[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1614[] = {2,2};
static SI gname1608 = {
  "avx int arith reg opnd",
  178            , /* id */
  latency1613    , /* operand latency */
  latency1614    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1609    , /* resource requirement */
  gname1611      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1610      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1618[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1620[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1619[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1622[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1623[] = {4,4};
static SI gname1617 = {
  "avx int arith mem opnd",
  179            , /* id */
  latency1622    , /* operand latency */
  latency1623    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1618    , /* resource requirement */
  gname1620      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1619      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1627[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1629[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1628[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1631[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1632[] = {2,2};
static SI gname1626 = {
  "avx fp arith reg opnd",
  180            , /* id */
  latency1631    , /* operand latency */
  latency1632    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1627    , /* resource requirement */
  gname1629      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1628      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1636[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1638[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1637[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1640[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1641[] = {7,7};
static SI gname1635 = {
  "avx fp arith mem opnd",
  181            , /* id */
  latency1640    , /* operand latency */
  latency1641    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1636    , /* resource requirement */
  gname1638      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1637      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align store */
static const SI_RRW res_req1645[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1647[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1646[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1649[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1650[] = {7,7};
static SI gname1644 = {
  "avx fp align store",
  182            , /* id */
  latency1649    , /* operand latency */
  latency1650    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1645    , /* resource requirement */
  gname1647      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1646      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx broadcast reg opnd */
static const SI_RRW res_req1654[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1656[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1655[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1658[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1659[] = {4,4};
static SI gname1653 = {
  "avx broadcast reg opnd",
  183            , /* id */
  latency1658    , /* operand latency */
  latency1659    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1654    , /* resource requirement */
  gname1656      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1655      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1663[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1665[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1664[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1667[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1668[] = {4,4};
static SI gname1662 = {
  "avx fp mul reg opnd",
  184            , /* id */
  latency1667    , /* operand latency */
  latency1668    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1663    , /* resource requirement */
  gname1665      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1664      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1672[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1674[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1673[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1676[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1677[] = {7,7};
static SI gname1671 = {
  "avx fp mul mem opnd",
  185            , /* id */
  latency1676    , /* operand latency */
  latency1677    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1672    , /* resource requirement */
  gname1674      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1673      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest reg opnd */
static const SI_RRW res_req1681[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1683[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1682[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1685[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1686[] = {5,5};
static SI gname1680 = {
  "avx ptest reg opnd",
  186            , /* id */
  latency1685    , /* operand latency */
  latency1686    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1681    , /* resource requirement */
  gname1683      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1682      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest mem opnd */
static const SI_RRW res_req1690[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1692[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1691[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1694[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1695[] = {10,10};
static SI gname1689 = {
  "avx ptest mem opnd",
  187            , /* id */
  latency1694    , /* operand latency */
  latency1695    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1690    , /* resource requirement */
  gname1692      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1691      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt reg opnd */
static const SI_RRW res_req1699[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1701[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1700[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1703[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1704[] = {5,5};
static SI gname1698 = {
  "avx cvt reg opnd",
  188            , /* id */
  latency1703    , /* operand latency */
  latency1704    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1699    , /* resource requirement */
  gname1701      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1700      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt mem opnd */
static const SI_RRW res_req1708[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1710[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1709[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1712[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1713[] = {7,7};
static SI gname1707 = {
  "avx cvt mem opnd",
  189            , /* id */
  latency1712    , /* operand latency */
  latency1713    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1708    , /* resource requirement */
  gname1710      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1709      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx load store mxcsr */
static const SI_RRW res_req1717[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1719[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1718[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1721[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1722[] = {14,14};
static SI gname1716 = {
  "avx load store mxcsr",
  190            , /* id */
  latency1721    , /* operand latency */
  latency1722    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1717    , /* resource requirement */
  gname1719      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1718      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx move mask */
static const SI_RRW res_req1726[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1728[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1727[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1730[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1731[] = {5,5};
static SI gname1725 = {
  "avx move mask",
  191            , /* id */
  latency1730    , /* operand latency */
  latency1731    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1726    , /* resource requirement */
  gname1728      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1727      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign store */
static const SI_RRW res_req1735[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1737[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1736[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1739[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1740[] = {8,8};
static SI gname1734 = {
  "avx unalign store",
  192            , /* id */
  latency1739    , /* operand latency */
  latency1740    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1735    , /* resource requirement */
  gname1737      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1736      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign load */
static const SI_RRW res_req1744[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1746[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1745[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1748[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1749[] = {7,7};
static SI gname1743 = {
  "avx unalign load",
  193            , /* id */
  latency1748    , /* operand latency */
  latency1749    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1744    , /* resource requirement */
  gname1746      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1745      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma reg opnd */
static const SI_RRW res_req1753[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1755[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1754[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1757[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1758[] = {6,6};
static SI gname1752 = {
  "intel avx fma reg opnd",
  194            , /* id */
  latency1757    , /* operand latency */
  latency1758    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1753    , /* resource requirement */
  gname1755      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1754      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma mem opnd */
static const SI_RRW res_req1762[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1764[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1763[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1766[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1767[] = {11,11};
static SI gname1761 = {
  "intel avx fma mem opnd",
  195            , /* id */
  latency1766    , /* operand latency */
  latency1767    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1762    , /* resource requirement */
  gname1764      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1763      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dummy */
static const SI_RRW res_req1771[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1773[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1772[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1775[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1776[] = {1,1};
static SI gname1770 = {
  "dummy",
  196            , /* id */
  latency1775    , /* operand latency */
  latency1776    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1771    , /* resource requirement */
  gname1773      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1772      , /* resource count vec */
  0                /* write-write interlock */
};
SI * const SI_ID_si[] = {
  &gname0,
  &gname15,
  &gname24,
  &gname33,
  &gname42,
  &gname51,
  &gname60,
  &gname69,
  &gname78,
  &gname87,
  &gname96,
  &gname105,
  &gname114,
  &gname123,
  &gname132,
  &gname141,
  &gname150,
  &gname159,
  &gname168,
  &gname177,
  &gname186,
  &gname195,
  &gname204,
  &gname213,
  &gname222,
  &gname231,
  &gname240,
  &gname249,
  &gname258,
  &gname267,
  &gname276,
  &gname285,
  &gname294,
  &gname303,
  &gname312,
  &gname321,
  &gname330,
  &gname339,
  &gname348,
  &gname357,
  &gname366,
  &gname375,
  &gname384,
  &gname393,
  &gname402,
  &gname411,
  &gname420,
  &gname429,
  &gname438,
  &gname447,
  &gname456,
  &gname465,
  &gname474,
  &gname483,
  &gname492,
  &gname501,
  &gname510,
  &gname519,
  &gname528,
  &gname537,
  &gname546,
  &gname555,
  &gname564,
  &gname573,
  &gname582,
  &gname591,
  &gname600,
  &gname609,
  &gname618,
  &gname627,
  &gname636,
  &gname645,
  &gname654,
  &gname663,
  &gname672,
  &gname681,
  &gname690,
  &gname699,
  &gname708,
  &gname717,
  &gname726,
  &gname735,
  &gname744,
  &gname753,
  &gname762,
  &gname771,
  &gname780,
  &gname789,
  &gname798,
  &gname807,
  &gname816,
  &gname825,
  &gname834,
  &gname843,
  &gname852,
  &gname861,
  &gname870,
  &gname879,
  &gname888,
  &gname897,
  &gname906,
  &gname915,
  &gname924,
  &gname933,
  &gname942,
  &gname951,
  &gname960,
  &gname969,
  &gname978,
  &gname987,
  &gname996,
  &gname1005,
  &gname1014,
  &gname1023,
  &gname1032,
  &gname1041,
  &gname1050,
  &gname1059,
  &gname1068,
  &gname1077,
  &gname1086,
  &gname1095,
  &gname1104,
  &gname1113,
  &gname1122,
  &gname1131,
  &gname1140,
  &gname1149,
  &gname1158,
  &gname1167,
  &gname1176,
  &gname1185,
  &gname1194,
  &gname1203,
  &gname1212,
  &gname1221,
  &gname1230,
  &gname1239,
  &gname1248,
  &gname1257,
  &gname1266,
  &gname1275,
  &gname1284,
  &gname1293,
  &gname1302,
  &gname1311,
  &gname1320,
  &gname1329,
  &gname1338,
  &gname1347,
  &gname1356,
  &gname1365,
  &gname1374,
  &gname1383,
  &gname1392,
  &gname1401,
  &gname1410,
  &gname1419,
  &gname1428,
  &gname1437,
  &gname1446,
  &gname1455,
  &gname1464,
  &gname1473,
  &gname1482,
  &gname1491,
  &gname1500,
  &gname1509,
  &gname1518,
  &gname1527,
  &gname1536,
  &gname1545,
  &gname1554,
  &gname1563,
  &gname1572,
  &gname1581,
  &gname1590,
  &gname1599,
  &gname1608,
  &gname1617,
  &gname1626,
  &gname1635,
  &gname1644,
  &gname1653,
  &gname1662,
  &gname1671,
  &gname1680,
  &gname1689,
  &gname1698,
  &gname1707,
  &gname1716,
  &gname1725,
  &gname1734,
  &gname1743,
  &gname1752,
  &gname1761,
  &gname1770
};
const int SI_ID_count = 197;

SI * const SI_top_si[3311] = {
  &gname15    /* add32 */,
  &gname15    /* adc32 */,
  &gname15    /* add64 */,
  &gname24    /* addx32 */,
  &gname24    /* addxx32 */,
  &gname24    /* addxxx32 */,
  &gname24    /* addx64 */,
  &gname24    /* addxx64 */,
  &gname24    /* addxxx64 */,
  &gname15    /* addi32 */,
  &gname15    /* adci32 */,
  &gname15    /* addi64 */,
  &gname762   /* add128v8 */,
  &gname789   /* addx128v8 */,
  &gname789   /* addxx128v8 */,
  &gname789   /* addxxx128v8 */,
  &gname762   /* add128v16 */,
  &gname789   /* addx128v16 */,
  &gname789   /* addxx128v16 */,
  &gname789   /* addxxx128v16 */,
  &gname762   /* add128v32 */,
  &gname789   /* addx128v32 */,
  &gname789   /* addxx128v32 */,
  &gname789   /* addxxx128v32 */,
  &gname762   /* add128v64 */,
  &gname789   /* addx128v64 */,
  &gname789   /* addxx128v64 */,
  &gname789   /* addxxx128v64 */,
  &gname762   /* add64v8 */,
  &gname762   /* add64v16 */,
  &gname762   /* add64v32 */,
  &gname762   /* paddsb */,
  &gname762   /* paddsw */,
  &gname762   /* paddq */,
  &gname762   /* psubsb */,
  &gname762   /* psubsw */,
  &gname762   /* psubq */,
  &gname762   /* paddusb */,
  &gname762   /* paddusw */,
  &gname762   /* psubusb */,
  &gname762   /* psubusw */,
  &gname780   /* pmullw */,
  &gname780   /* pmulhw */,
  &gname780   /* pmulhuw */,
  &gname780   /* pmuludq */,
  &gname780   /* pmaddwd */,
  &gname762   /* paddsb128 */,
  &gname762   /* paddsw128 */,
  &gname762   /* paddq128 */,
  &gname762   /* psubsb128 */,
  &gname762   /* psubsw128 */,
  &gname762   /* psubq128 */,
  &gname762   /* paddusb128 */,
  &gname762   /* paddusw128 */,
  &gname762   /* psubusb128 */,
  &gname762   /* psubusw128 */,
  &gname780   /* pmullw128 */,
  &gname780   /* pmulhw128 */,
  &gname780   /* pmulhuw128 */,
  &gname780   /* pmuludq128 */,
  &gname780   /* pmaddwd128 */,
  &gname15    /* and8 */,
  &gname15    /* and16 */,
  &gname15    /* and32 */,
  &gname24    /* andx32 */,
  &gname24    /* andxx32 */,
  &gname24    /* andxxx32 */,
  &gname15    /* and64 */,
  &gname24    /* andx64 */,
  &gname24    /* andxx64 */,
  &gname24    /* andxxx64 */,
  &gname24    /* andx8 */,
  &gname24    /* andx16 */,
  &gname24    /* andxx8 */,
  &gname24    /* andxxx8 */,
  &gname24    /* andxx16 */,
  &gname24    /* andxxx16 */,
  &gname762   /* and128v8 */,
  &gname789   /* andx128v8 */,
  &gname789   /* andxx128v8 */,
  &gname789   /* andxxx128v8 */,
  &gname762   /* and128v16 */,
  &gname789   /* andx128v16 */,
  &gname789   /* andxx128v16 */,
  &gname789   /* andxxx128v16 */,
  &gname762   /* and128v32 */,
  &gname789   /* andx128v32 */,
  &gname789   /* andxx128v32 */,
  &gname789   /* andxxx128v32 */,
  &gname762   /* and128v64 */,
  &gname789   /* andx128v64 */,
  &gname789   /* andxx128v64 */,
  &gname789   /* andxxx128v64 */,
  &gname15    /* andi32 */,
  &gname15    /* andi64 */,
  &gname69    /* call */,
  &gname87    /* icall */,
  &gname15    /* icallx */,
  &gname15    /* icallxx */,
  &gname15    /* icallxxx */,
  &gname15    /* cmp8 */,
  &gname24    /* cmpx8 */,
  &gname24    /* cmpxx8 */,
  &gname24    /* cmpxxx8 */,
  &gname15    /* cmp16 */,
  &gname24    /* cmpx16 */,
  &gname24    /* cmpxx16 */,
  &gname24    /* cmpxxx16 */,
  &gname15    /* cmp32 */,
  &gname24    /* cmpx32 */,
  &gname24    /* cmpxx32 */,
  &gname24    /* cmpxxx32 */,
  &gname15    /* cmp64 */,
  &gname24    /* cmpx64 */,
  &gname24    /* cmpxx64 */,
  &gname24    /* cmpxxx64 */,
  &gname15    /* cmpi8 */,
  &gname24    /* cmpxr8 */,
  &gname24    /* cmpxi8 */,
  &gname24    /* cmpxxr8 */,
  &gname24    /* cmpxxi8 */,
  &gname24    /* cmpxxxr8 */,
  &gname24    /* cmpxxxi8 */,
  &gname15    /* cmpi16 */,
  &gname24    /* cmpxr16 */,
  &gname24    /* cmpxi16 */,
  &gname24    /* cmpxxr16 */,
  &gname24    /* cmpxxi16 */,
  &gname24    /* cmpxxxr16 */,
  &gname24    /* cmpxxxi16 */,
  &gname15    /* cmpi32 */,
  &gname24    /* cmpxr32 */,
  &gname24    /* cmpxi32 */,
  &gname24    /* cmpxxr32 */,
  &gname24    /* cmpxxi32 */,
  &gname24    /* cmpxxxr32 */,
  &gname24    /* cmpxxxi32 */,
  &gname15    /* cmpi64 */,
  &gname24    /* cmpxr64 */,
  &gname24    /* cmpxi64 */,
  &gname24    /* cmpxxr64 */,
  &gname24    /* cmpxxi64 */,
  &gname24    /* cmpxxxr64 */,
  &gname24    /* cmpxxxi64 */,
  &gname15    /* cmovb */,
  &gname15    /* cmovae */,
  &gname15    /* cmovp */,
  &gname15    /* cmovnp */,
  &gname15    /* cmove */,
  &gname15    /* cmovne */,
  &gname15    /* cmovbe */,
  &gname15    /* cmova */,
  &gname15    /* cmovl */,
  &gname15    /* cmovge */,
  &gname15    /* cmovle */,
  &gname15    /* cmovg */,
  &gname15    /* cmovs */,
  &gname15    /* cmovns */,
  &gname132   /* div32 */,
  &gname141   /* div64 */,
  &gname123   /* enter */,
  &gname150   /* idiv32 */,
  &gname159   /* idiv64 */,
  &gname96    /* imul32 */,
  &gname96    /* imulx32 */,
  &gname105   /* imul64 */,
  &gname96    /* imuli32 */,
  &gname105   /* imuli64 */,
  &gname105   /* imulx64 */,
  &gname771   /* mul128v16 */,
  &gname15    /* inc8 */,
  &gname15    /* dec8 */,
  &gname15    /* inc16 */,
  &gname15    /* dec16 */,
  &gname15    /* inc32 */,
  &gname15    /* dec32 */,
  &gname15    /* inc64 */,
  &gname15    /* dec64 */,
  &gname195   /* jb */,
  &gname195   /* jae */,
  &gname195   /* jp */,
  &gname195   /* jnp */,
  &gname195   /* je */,
  &gname195   /* jne */,
  &gname195   /* jbe */,
  &gname195   /* ja */,
  &gname195   /* jl */,
  &gname195   /* jge */,
  &gname195   /* jle */,
  &gname195   /* jg */,
  &gname195   /* jcxz */,
  &gname195   /* jecxz */,
  &gname195   /* jrcxz */,
  &gname195   /* js */,
  &gname195   /* jns */,
  &gname195   /* jmp */,
  &gname87    /* ijmp */,
  &gname15    /* ijmpx */,
  &gname15    /* ijmpxx */,
  &gname15    /* ijmpxxx */,
  &gname177   /* ld64 */,
  &gname177   /* ldx64 */,
  &gname177   /* ldxx64 */,
  &gname177   /* ld64_2m */,
  &gname276   /* ld64_2sse */,
  &gname42    /* lea32 */,
  &gname42    /* lea64 */,
  &gname42    /* leax32 */,
  &gname42    /* leax64 */,
  &gname42    /* leaxx32 */,
  &gname42    /* leaxx64 */,
  &gname114   /* leave */,
  &gname15    /* ldc32 */,
  &gname15    /* ldc64 */,
  &gname96    /* mul32 */,
  &gname105   /* mulx64 */,
  &gname15    /* mov32 */,
  &gname15    /* mov64 */,
  &gname15    /* mov64_m */,
  &gname177   /* ld32_64_off */,
  &gname177   /* ld64_off */,
  &gname186   /* store64_off */,
  &gname168   /* ld8_32_n32 */,
  &gname168   /* ldu8_32_n32 */,
  &gname168   /* ld16_32_n32 */,
  &gname168   /* ldu16_32_n32 */,
  &gname177   /* ld32_n32 */,
  &gname231   /* ldss_n32 */,
  &gname231   /* ldsd_n32 */,
  &gname249   /* ldaps_n32 */,
  &gname249   /* ldapd_n32 */,
  &gname240   /* ldups_n32 */,
  &gname240   /* ldupd_n32 */,
  &gname231   /* lddqa_n32 */,
  &gname240   /* lddqu_n32 */,
  &gname258   /* ldlps_n32 */,
  &gname276   /* ldlpd_n32 */,
  &gname258   /* ldhps_n32 */,
  &gname276   /* ldhpd_n32 */,
  &gname177   /* ld64_2m_n32 */,
  &gname276   /* ld64_2sse_n32 */,
  &gname186   /* store8_n32 */,
  &gname186   /* store16_n32 */,
  &gname186   /* store32_n32 */,
  &gname294   /* stss_n32 */,
  &gname294   /* stsd_n32 */,
  &gname312   /* staps_n32 */,
  &gname312   /* stapd_n32 */,
  &gname294   /* stdqa_n32 */,
  &gname303   /* stdqu_n32 */,
  &gname267   /* stlps_n32 */,
  &gname267   /* sthps_n32 */,
  &gname285   /* stlpd_n32 */,
  &gname285   /* sthpd_n32 */,
  &gname186   /* store64_fm_n32 */,
  &gname285   /* store64_fsse_n32 */,
  &gname177   /* ld32_gs_seg_off */,
  &gname177   /* ld64_fs_seg_off */,
  &gname15    /* movsbl */,
  &gname168   /* ld8_32 */,
  &gname168   /* ldx8_32 */,
  &gname168   /* ldxx8_32 */,
  &gname15    /* movzbl */,
  &gname168   /* ldu8_32 */,
  &gname168   /* ldxu8_32 */,
  &gname168   /* ldxxu8_32 */,
  &gname15    /* movswl */,
  &gname168   /* ld16_32 */,
  &gname168   /* ldx16_32 */,
  &gname168   /* ldxx16_32 */,
  &gname15    /* movzwl */,
  &gname168   /* ldu16_32 */,
  &gname168   /* ldxu16_32 */,
  &gname168   /* ldxxu16_32 */,
  &gname15    /* movsbq */,
  &gname168   /* ld8_64 */,
  &gname168   /* ldx8_64 */,
  &gname168   /* ldxx8_64 */,
  &gname168   /* ld8_64_off */,
  &gname15    /* movzbq */,
  &gname168   /* ldu8_64 */,
  &gname168   /* ldxu8_64 */,
  &gname168   /* ldxxu8_64 */,
  &gname168   /* ldu8_64_off */,
  &gname15    /* movswq */,
  &gname168   /* ld16_64 */,
  &gname168   /* ldx16_64 */,
  &gname168   /* ldxx16_64 */,
  &gname168   /* ld16_64_off */,
  &gname15    /* movzwq */,
  &gname168   /* ldu16_64 */,
  &gname168   /* ldxu16_64 */,
  &gname168   /* ldxxu16_64 */,
  &gname168   /* ldu16_64_off */,
  &gname15    /* movslq */,
  &gname177   /* ld32_64 */,
  &gname177   /* ldx32_64 */,
  &gname177   /* ldxx32_64 */,
  &gname177   /* ld32 */,
  &gname177   /* ldx32 */,
  &gname177   /* ldxx32 */,
  &gname15    /* movzlq */,
  &gname15    /* neg8 */,
  &gname15    /* neg16 */,
  &gname15    /* neg32 */,
  &gname15    /* neg64 */,
  &gname15    /* not8 */,
  &gname15    /* not16 */,
  &gname15    /* not32 */,
  &gname15    /* not64 */,
  &gname15    /* or8 */,
  &gname15    /* or16 */,
  &gname15    /* or32 */,
  &gname24    /* orx32 */,
  &gname24    /* orxx32 */,
  &gname24    /* orxxx32 */,
  &gname15    /* or64 */,
  &gname24    /* orx64 */,
  &gname24    /* orxx64 */,
  &gname24    /* orxxx64 */,
  &gname24    /* orx8 */,
  &gname24    /* orx16 */,
  &gname24    /* orxx8 */,
  &gname24    /* orxxx8 */,
  &gname24    /* orxx16 */,
  &gname24    /* orxxx16 */,
  &gname762   /* or128v8 */,
  &gname789   /* orx128v8 */,
  &gname789   /* orxx128v8 */,
  &gname789   /* orxxx128v8 */,
  &gname762   /* or128v16 */,
  &gname789   /* orx128v16 */,
  &gname789   /* orxx128v16 */,
  &gname789   /* orxxx128v16 */,
  &gname762   /* or128v32 */,
  &gname789   /* orx128v32 */,
  &gname789   /* orxx128v32 */,
  &gname789   /* orxxx128v32 */,
  &gname762   /* or128v64 */,
  &gname789   /* orx128v64 */,
  &gname789   /* orxx128v64 */,
  &gname789   /* orxxx128v64 */,
  &gname15    /* ori32 */,
  &gname15    /* ori64 */,
  &gname51    /* popl */,
  &gname51    /* popq */,
  &gname51    /* pushl */,
  &gname51    /* pushq */,
  &gname60    /* ret */,
  &gname60    /* reti */,
  &gname15    /* ror8 */,
  &gname15    /* ror16 */,
  &gname15    /* ror32 */,
  &gname15    /* ror64 */,
  &gname15    /* rori8 */,
  &gname15    /* rori16 */,
  &gname15    /* rori32 */,
  &gname15    /* rori64 */,
  &gname15    /* rol8 */,
  &gname15    /* rol16 */,
  &gname15    /* rol32 */,
  &gname15    /* rol64 */,
  &gname15    /* roli8 */,
  &gname15    /* roli16 */,
  &gname15    /* roli32 */,
  &gname15    /* roli64 */,
  &gname879   /* prefetch */,
  &gname879   /* prefetchw */,
  &gname879   /* prefetcht0 */,
  &gname879   /* prefetcht1 */,
  &gname879   /* prefetchnta */,
  &gname879   /* prefetchx */,
  &gname879   /* prefetchxx */,
  &gname879   /* prefetchwx */,
  &gname879   /* prefetchwxx */,
  &gname879   /* prefetcht0x */,
  &gname879   /* prefetcht0xx */,
  &gname879   /* prefetcht1x */,
  &gname879   /* prefetcht1xx */,
  &gname879   /* prefetchntax */,
  &gname879   /* prefetchntaxx */,
  &gname15    /* setb */,
  &gname15    /* setae */,
  &gname15    /* setp */,
  &gname15    /* setnp */,
  &gname15    /* sete */,
  &gname15    /* setne */,
  &gname15    /* setbe */,
  &gname15    /* seta */,
  &gname15    /* setl */,
  &gname15    /* setge */,
  &gname15    /* setle */,
  &gname15    /* setg */,
  &gname15    /* setc */,
  &gname15    /* seto */,
  &gname15    /* sets */,
  &gname15    /* setz */,
  &gname186   /* store8 */,
  &gname186   /* storex8 */,
  &gname186   /* storexx8 */,
  &gname186   /* store16 */,
  &gname186   /* storex16 */,
  &gname186   /* storexx16 */,
  &gname186   /* store32 */,
  &gname186   /* storex32 */,
  &gname186   /* storexx32 */,
  &gname186   /* store64 */,
  &gname186   /* storex64 */,
  &gname186   /* storexx64 */,
  &gname186   /* store64_fm */,
  &gname285   /* store64_fsse */,
  &gname186   /* storenti32 */,
  &gname186   /* storentix32 */,
  &gname186   /* storentixx32 */,
  &gname186   /* storenti64 */,
  &gname186   /* storentix64 */,
  &gname186   /* storentixx64 */,
  &gname312   /* storenti128 */,
  &gname15    /* sar32 */,
  &gname15    /* sar64 */,
  &gname15    /* sari32 */,
  &gname15    /* sari64 */,
  &gname15    /* shl32 */,
  &gname15    /* shld32 */,
  &gname15    /* shldi32 */,
  &gname15    /* shrd32 */,
  &gname15    /* shrdi32 */,
  &gname15    /* shl64 */,
  &gname15    /* shli32 */,
  &gname15    /* shli64 */,
  &gname15    /* shr32 */,
  &gname15    /* shr64 */,
  &gname15    /* shri32 */,
  &gname15    /* shri64 */,
  &gname15    /* sub32 */,
  &gname15    /* sbb32 */,
  &gname15    /* sub64 */,
  &gname24    /* subx32 */,
  &gname24    /* subx64 */,
  &gname24    /* subxx32 */,
  &gname24    /* subxxx32 */,
  &gname24    /* subxx64 */,
  &gname24    /* subxxx64 */,
  &gname15    /* subi32 */,
  &gname15    /* sbbi32 */,
  &gname15    /* subi64 */,
  &gname762   /* sub128v8 */,
  &gname789   /* subx128v8 */,
  &gname789   /* subxx128v8 */,
  &gname789   /* subxxx128v8 */,
  &gname762   /* sub128v16 */,
  &gname789   /* subx128v16 */,
  &gname789   /* subxx128v16 */,
  &gname789   /* subxxx128v16 */,
  &gname762   /* sub128v32 */,
  &gname789   /* subx128v32 */,
  &gname789   /* subxx128v32 */,
  &gname789   /* subxxx128v32 */,
  &gname762   /* sub128v64 */,
  &gname789   /* subx128v64 */,
  &gname789   /* subxx128v64 */,
  &gname789   /* subxxx128v64 */,
  &gname762   /* sub64v8 */,
  &gname762   /* sub64v16 */,
  &gname762   /* sub64v32 */,
  &gname15    /* test32 */,
  &gname24    /* testx32 */,
  &gname24    /* testxx32 */,
  &gname24    /* testxxx32 */,
  &gname15    /* test64 */,
  &gname24    /* testx64 */,
  &gname24    /* testxx64 */,
  &gname24    /* testxxx64 */,
  &gname15    /* testi32 */,
  &gname15    /* testi64 */,
  &gname15    /* xor8 */,
  &gname15    /* xor16 */,
  &gname15    /* xor32 */,
  &gname24    /* xorx32 */,
  &gname24    /* xorxx32 */,
  &gname24    /* xorxxx32 */,
  &gname15    /* xor64 */,
  &gname24    /* xorx64 */,
  &gname24    /* xorxx64 */,
  &gname24    /* xorxxx64 */,
  &gname24    /* xorx8 */,
  &gname24    /* xorx16 */,
  &gname24    /* xorxx8 */,
  &gname24    /* xorxxx8 */,
  &gname24    /* xorxx16 */,
  &gname24    /* xorxxx16 */,
  &gname762   /* xor128v8 */,
  &gname789   /* xorx128v8 */,
  &gname789   /* xorxx128v8 */,
  &gname789   /* xorxxx128v8 */,
  &gname762   /* xor128v16 */,
  &gname789   /* xorx128v16 */,
  &gname789   /* xorxx128v16 */,
  &gname789   /* xorxxx128v16 */,
  &gname762   /* xor128v32 */,
  &gname789   /* xorx128v32 */,
  &gname789   /* xorxx128v32 */,
  &gname789   /* xorxxx128v32 */,
  &gname762   /* xor128v64 */,
  &gname789   /* xorx128v64 */,
  &gname789   /* xorxx128v64 */,
  &gname789   /* xorxxx128v64 */,
  &gname15    /* xori32 */,
  &gname15    /* xori64 */,
  &gname492   /* fxor128v32 */,
  &gname501   /* fxorx128v32 */,
  &gname501   /* fxorxx128v32 */,
  &gname501   /* fxorxxx128v32 */,
  &gname492   /* fxor128v64 */,
  &gname501   /* fxorx128v64 */,
  &gname501   /* fxorxx128v64 */,
  &gname501   /* fxorxxx128v64 */,
  &gname492   /* xorps */,
  &gname492   /* xorpd */,
  &gname465   /* addsd */,
  &gname465   /* addss */,
  &gname798   /* addxsd */,
  &gname798   /* addxss */,
  &gname798   /* addxxsd */,
  &gname24    /* addxxxsd */,
  &gname798   /* addxxss */,
  &gname24    /* addxxxss */,
  &gname474   /* faddsub128v32 */,
  &gname483   /* faddsubx128v32 */,
  &gname483   /* faddsubxx128v32 */,
  &gname483   /* faddsubxxx128v32 */,
  &gname474   /* faddsub128v64 */,
  &gname483   /* faddsubx128v64 */,
  &gname483   /* faddsubxx128v64 */,
  &gname483   /* faddsubxxx128v64 */,
  &gname474   /* fadd128v32 */,
  &gname483   /* faddx128v32 */,
  &gname483   /* faddxx128v32 */,
  &gname483   /* faddxxx128v32 */,
  &gname474   /* fadd128v64 */,
  &gname483   /* faddx128v64 */,
  &gname483   /* faddxx128v64 */,
  &gname483   /* faddxxx128v64 */,
  &gname474   /* fhadd128v32 */,
  &gname483   /* fhaddx128v32 */,
  &gname483   /* fhaddxx128v32 */,
  &gname483   /* fhaddxxx128v32 */,
  &gname474   /* fhadd128v64 */,
  &gname483   /* fhaddx128v64 */,
  &gname483   /* fhaddxx128v64 */,
  &gname483   /* fhaddxxx128v64 */,
  &gname492   /* fand128v32 */,
  &gname501   /* fandx128v32 */,
  &gname501   /* fandxx128v32 */,
  &gname501   /* fandxxx128v32 */,
  &gname492   /* fand128v64 */,
  &gname501   /* fandx128v64 */,
  &gname501   /* fandxx128v64 */,
  &gname501   /* fandxxx128v64 */,
  &gname492   /* andps */,
  &gname492   /* andpd */,
  &gname816   /* andnps */,
  &gname816   /* andnpd */,
  &gname492   /* for128v32 */,
  &gname501   /* forx128v32 */,
  &gname501   /* forxx128v32 */,
  &gname501   /* forxxx128v32 */,
  &gname492   /* for128v64 */,
  &gname501   /* forx128v64 */,
  &gname501   /* forxx128v64 */,
  &gname501   /* forxxx128v64 */,
  &gname492   /* orps */,
  &gname492   /* orpd */,
  &gname465   /* comisd */,
  &gname798   /* comixsd */,
  &gname798   /* comixxsd */,
  &gname798   /* comixxxsd */,
  &gname465   /* comiss */,
  &gname798   /* comixss */,
  &gname798   /* comixxss */,
  &gname798   /* comixxxss */,
  &gname222   /* cmpss */,
  &gname222   /* cmpsd */,
  &gname726   /* cmpps */,
  &gname726   /* cmppd */,
  &gname744   /* cmpeq128v8 */,
  &gname744   /* cmpeq128v16 */,
  &gname744   /* cmpeq128v32 */,
  &gname753   /* cmpeqx128v8 */,
  &gname753   /* cmpeqx128v16 */,
  &gname753   /* cmpeqx128v32 */,
  &gname753   /* cmpeqxx128v8 */,
  &gname753   /* cmpeqxx128v16 */,
  &gname753   /* cmpeqxx128v32 */,
  &gname753   /* cmpeqxxx128v8 */,
  &gname753   /* cmpeqxxx128v16 */,
  &gname753   /* cmpeqxxx128v32 */,
  &gname744   /* cmpgt128v8 */,
  &gname744   /* cmpgt128v16 */,
  &gname744   /* cmpgt128v32 */,
  &gname753   /* cmpgtx128v8 */,
  &gname753   /* cmpgtx128v16 */,
  &gname753   /* cmpgtx128v32 */,
  &gname753   /* cmpgtxx128v8 */,
  &gname753   /* cmpgtxx128v16 */,
  &gname753   /* cmpgtxx128v32 */,
  &gname753   /* cmpgtxxx128v8 */,
  &gname753   /* cmpgtxxx128v16 */,
  &gname753   /* cmpgtxxx128v32 */,
  &gname744   /* pcmpeqb */,
  &gname744   /* pcmpeqw */,
  &gname744   /* pcmpeqd */,
  &gname744   /* pcmpgtb */,
  &gname744   /* pcmpgtw */,
  &gname744   /* pcmpgtd */,
  &gname681   /* fmovsldup */,
  &gname681   /* fmovshdup */,
  &gname681   /* fmovddup */,
  &gname681   /* fmovsldupx */,
  &gname681   /* fmovshdupx */,
  &gname681   /* fmovddupx */,
  &gname681   /* fmovsldupxx */,
  &gname681   /* fmovshdupxx */,
  &gname681   /* fmovddupxx */,
  &gname681   /* fmovsldupxxx */,
  &gname681   /* fmovshdupxxx */,
  &gname681   /* fmovddupxxx */,
  &gname15    /* cltd */,
  &gname15    /* cqto */,
  &gname456   /* cvtss2sd */,
  &gname411   /* cvtsd2ss */,
  &gname420   /* cvtsd2ss_x */,
  &gname420   /* cvtsd2ss_xx */,
  &gname420   /* cvtsd2ss_xxx */,
  &gname429   /* cvtsi2sd */,
  &gname438   /* cvtsi2sd_x */,
  &gname438   /* cvtsi2sd_xx */,
  &gname438   /* cvtsi2sd_xxx */,
  &gname402   /* cvtsi2ss */,
  &gname393   /* cvtsi2ss_x */,
  &gname393   /* cvtsi2ss_xx */,
  &gname393   /* cvtsi2ss_xxx */,
  &gname429   /* cvtsi2sdq */,
  &gname438   /* cvtsi2sdq_x */,
  &gname438   /* cvtsi2sdq_xx */,
  &gname438   /* cvtsi2sdq_xxx */,
  &gname402   /* cvtsi2ssq */,
  &gname393   /* cvtsi2ssq_x */,
  &gname393   /* cvtsi2ssq_xx */,
  &gname393   /* cvtsi2ssq_xxx */,
  &gname456   /* cvtss2si */,
  &gname456   /* cvtsd2si */,
  &gname456   /* cvtss2siq */,
  &gname456   /* cvtsd2siq */,
  &gname456   /* cvttss2si */,
  &gname456   /* cvttsd2si */,
  &gname456   /* cvttss2siq */,
  &gname456   /* cvttsd2siq */,
  &gname321   /* cvtdq2pd */,
  &gname321   /* cvtdq2ps */,
  &gname330   /* cvtps2pd */,
  &gname339   /* cvtpd2ps */,
  &gname348   /* cvtps2dq */,
  &gname348   /* cvttps2dq */,
  &gname339   /* cvtpd2dq */,
  &gname339   /* cvttpd2dq */,
  &gname357   /* cvtdq2pd_x */,
  &gname357   /* cvtdq2ps_x */,
  &gname366   /* cvtps2pd_x */,
  &gname375   /* cvtpd2ps_x */,
  &gname384   /* cvtps2dq_x */,
  &gname375   /* cvtpd2dq_x */,
  &gname384   /* cvttps2dq_x */,
  &gname375   /* cvttpd2dq_x */,
  &gname357   /* cvtdq2pd_xx */,
  &gname357   /* cvtdq2ps_xx */,
  &gname366   /* cvtps2pd_xx */,
  &gname375   /* cvtpd2ps_xx */,
  &gname384   /* cvtps2dq_xx */,
  &gname375   /* cvtpd2dq_xx */,
  &gname384   /* cvttps2dq_xx */,
  &gname375   /* cvttpd2dq_xx */,
  &gname357   /* cvtdq2pd_xxx */,
  &gname357   /* cvtdq2ps_xxx */,
  &gname366   /* cvtps2pd_xxx */,
  &gname375   /* cvtpd2ps_xxx */,
  &gname384   /* cvtps2dq_xxx */,
  &gname375   /* cvtpd2dq_xxx */,
  &gname384   /* cvttps2dq_xxx */,
  &gname375   /* cvttpd2dq_xxx */,
  &gname960   /* cvtpi2ps */,
  &gname960   /* cvtps2pi */,
  &gname960   /* cvttps2pi */,
  &gname960   /* cvtpi2pd */,
  &gname960   /* cvtpd2pi */,
  &gname960   /* cvttpd2pi */,
  &gname231   /* ldsd */,
  &gname231   /* ldsdx */,
  &gname231   /* ldsdxx */,
  &gname231   /* ldss */,
  &gname231   /* ldssx */,
  &gname231   /* ldssxx */,
  &gname231   /* lddqa */,
  &gname240   /* lddqu */,
  &gname258   /* ldlps */,
  &gname258   /* ldhps */,
  &gname276   /* ldlpd */,
  &gname276   /* ldhpd */,
  &gname294   /* stdqa */,
  &gname303   /* stdqu */,
  &gname267   /* stlps */,
  &gname267   /* sthps */,
  &gname285   /* stlpd */,
  &gname285   /* storelpd */,
  &gname285   /* sthpd */,
  &gname294   /* stntpd */,
  &gname294   /* stntps */,
  &gname186   /* storent64_fm */,
  &gname231   /* lddqax */,
  &gname240   /* lddqux */,
  &gname258   /* ldlpsx */,
  &gname258   /* ldhpsx */,
  &gname276   /* ldlpdx */,
  &gname276   /* ldhpdx */,
  &gname294   /* stdqax */,
  &gname294   /* stntpdx */,
  &gname294   /* stntpsx */,
  &gname303   /* stdqux */,
  &gname267   /* stlpsx */,
  &gname267   /* sthpsx */,
  &gname285   /* stlpdx */,
  &gname285   /* sthpdx */,
  &gname231   /* lddqaxx */,
  &gname240   /* lddquxx */,
  &gname258   /* ldlpsxx */,
  &gname258   /* ldhpsxx */,
  &gname276   /* ldlpdxx */,
  &gname276   /* ldhpdxx */,
  &gname249   /* ldaps */,
  &gname249   /* ldapsx */,
  &gname249   /* ldapsxx */,
  &gname249   /* ldapd */,
  &gname249   /* ldapdx */,
  &gname249   /* ldapdxx */,
  &gname240   /* ldups */,
  &gname240   /* ldupd */,
  &gname240   /* ldupdx */,
  &gname240   /* ldupdxx */,
  &gname294   /* stdqaxx */,
  &gname294   /* stntpdxx */,
  &gname294   /* stntpsxx */,
  &gname303   /* stdquxx */,
  &gname267   /* stlpsxx */,
  &gname267   /* sthpsxx */,
  &gname285   /* stlpdxx */,
  &gname285   /* sthpdxx */,
  &gname312   /* staps */,
  &gname312   /* stapsx */,
  &gname312   /* stapsxx */,
  &gname312   /* stapd */,
  &gname312   /* stapdx */,
  &gname312   /* stapdxx */,
  &gname303   /* stups */,
  &gname303   /* stupd */,
  &gname807   /* maxsd */,
  &gname807   /* maxss */,
  &gname618   /* fmax128v32 */,
  &gname627   /* fmaxx128v32 */,
  &gname627   /* fmaxxx128v32 */,
  &gname627   /* fmaxxxx128v32 */,
  &gname618   /* fmax128v64 */,
  &gname627   /* fmaxx128v64 */,
  &gname627   /* fmaxxx128v64 */,
  &gname627   /* fmaxxxx128v64 */,
  &gname744   /* max128v16 */,
  &gname744   /* max128v8 */,
  &gname753   /* maxx128v16 */,
  &gname753   /* maxx128v8 */,
  &gname753   /* maxxx128v16 */,
  &gname753   /* maxxx128v8 */,
  &gname753   /* maxxxx128v16 */,
  &gname753   /* maxxxx128v8 */,
  &gname744   /* max64v8 */,
  &gname744   /* max64v16 */,
  &gname744   /* min128v16 */,
  &gname744   /* min128v8 */,
  &gname753   /* minx128v16 */,
  &gname753   /* minx128v8 */,
  &gname753   /* minxx128v16 */,
  &gname753   /* minxx128v8 */,
  &gname753   /* minxxx128v16 */,
  &gname753   /* minxxx128v8 */,
  &gname744   /* min64v8 */,
  &gname744   /* min64v16 */,
  &gname807   /* minsd */,
  &gname807   /* minss */,
  &gname618   /* fmin128v32 */,
  &gname627   /* fminx128v32 */,
  &gname627   /* fminxx128v32 */,
  &gname627   /* fminxxx128v32 */,
  &gname618   /* fmin128v64 */,
  &gname627   /* fminx128v64 */,
  &gname627   /* fminxx128v64 */,
  &gname627   /* fminxxx128v64 */,
  &gname456   /* movx2g64 */,
  &gname456   /* movx2g */,
  &gname447   /* movg2x64 */,
  &gname447   /* movg2x */,
  &gname222   /* movsd */,
  &gname222   /* movss */,
  &gname222   /* movdq */,
  &gname222   /* movapd */,
  &gname222   /* movaps */,
  &gname942   /* movq2dq */,
  &gname951   /* movdq2q */,
  &gname843   /* divsd */,
  &gname852   /* divxsd */,
  &gname852   /* divxxsd */,
  &gname852   /* divxxxsd */,
  &gname843   /* divss */,
  &gname852   /* divxss */,
  &gname852   /* divxxss */,
  &gname852   /* divxxxss */,
  &gname528   /* fdiv128v32 */,
  &gname555   /* fdivx128v32 */,
  &gname555   /* fdivxx128v32 */,
  &gname555   /* fdivxxx128v32 */,
  &gname564   /* fdiv128v64 */,
  &gname573   /* fdivx128v64 */,
  &gname573   /* fdivxx128v64 */,
  &gname573   /* fdivxxx128v64 */,
  &gname825   /* mulsd */,
  &gname825   /* mulss */,
  &gname510   /* fmul128v32 */,
  &gname519   /* fmulx128v32 */,
  &gname519   /* fmulxx128v32 */,
  &gname519   /* fmulxxx128v32 */,
  &gname510   /* fmul128v64 */,
  &gname519   /* fmulx128v64 */,
  &gname519   /* fmulxx128v64 */,
  &gname519   /* fmulxxx128v64 */,
  &gname834   /* mulxsd */,
  &gname834   /* mulxss */,
  &gname834   /* mulxxsd */,
  &gname834   /* mulxxxsd */,
  &gname834   /* mulxxss */,
  &gname834   /* mulxxxss */,
  &gname465   /* subsd */,
  &gname465   /* subss */,
  &gname798   /* subxsd */,
  &gname798   /* subxss */,
  &gname798   /* subxxsd */,
  &gname24    /* subxxxsd */,
  &gname798   /* subxxss */,
  &gname24    /* subxxxss */,
  &gname474   /* fsub128v32 */,
  &gname483   /* fsubx128v32 */,
  &gname483   /* fsubxx128v32 */,
  &gname483   /* fsubxxx128v32 */,
  &gname474   /* fsub128v64 */,
  &gname483   /* fsubx128v64 */,
  &gname483   /* fsubxx128v64 */,
  &gname483   /* fsubxxx128v64 */,
  &gname474   /* fhsub128v32 */,
  &gname483   /* fhsubx128v32 */,
  &gname483   /* fhsubxx128v32 */,
  &gname483   /* fhsubxxx128v32 */,
  &gname474   /* fhsub128v64 */,
  &gname483   /* fhsubx128v64 */,
  &gname483   /* fhsubxx128v64 */,
  &gname483   /* fhsubxxx128v64 */,
  &gname294   /* stss */,
  &gname294   /* stntss */,
  &gname294   /* stssx */,
  &gname294   /* stntssx */,
  &gname294   /* stssxx */,
  &gname294   /* stntssxx */,
  &gname294   /* stsd */,
  &gname294   /* stntsd */,
  &gname294   /* stsdx */,
  &gname294   /* stntsdx */,
  &gname294   /* stsdxx */,
  &gname294   /* stntsdxx */,
  &gname816   /* rcpss */,
  &gname654   /* frcp128v32 */,
  &gname213   /* sqrtsd */,
  &gname204   /* sqrtss */,
  &gname816   /* rsqrtss */,
  &gname636   /* fsqrt128v32 */,
  &gname654   /* frsqrt128v32 */,
  &gname645   /* fsqrt128v64 */,
  &gname717   /* punpcklwd */,
  &gname717   /* punpcklbw */,
  &gname717   /* punpckldq */,
  &gname717   /* punpcklbw128 */,
  &gname717   /* punpcklwd128 */,
  &gname717   /* punpckldq128 */,
  &gname717   /* punpckhbw */,
  &gname717   /* punpckhwd */,
  &gname717   /* punpckhdq */,
  &gname717   /* punpckhbw128 */,
  &gname717   /* punpckhwd128 */,
  &gname717   /* punpckhdq128 */,
  &gname717   /* punpcklqdq */,
  &gname717   /* punpckhqdq */,
  &gname717   /* packsswb */,
  &gname717   /* packssdw */,
  &gname717   /* packuswb */,
  &gname717   /* packsswb128 */,
  &gname717   /* packssdw128 */,
  &gname717   /* packuswb128 */,
  &gname681   /* pshufd */,
  &gname690   /* pshufw */,
  &gname690   /* pshuflw */,
  &gname690   /* pshufhw */,
  &gname708   /* pslldq */,
  &gname708   /* psllw */,
  &gname708   /* psllwi */,
  &gname708   /* pslld */,
  &gname708   /* pslldi */,
  &gname708   /* psllq */,
  &gname708   /* psllqi */,
  &gname708   /* psrlw */,
  &gname708   /* psrlwi */,
  &gname708   /* psrld */,
  &gname708   /* psrldi */,
  &gname708   /* psrlq */,
  &gname708   /* psrlqi */,
  &gname708   /* psraw */,
  &gname708   /* psrawi */,
  &gname708   /* psrad */,
  &gname708   /* psradi */,
  &gname699   /* psllw_mmx */,
  &gname699   /* psllwi_mmx */,
  &gname699   /* pslld_mmx */,
  &gname699   /* pslldi_mmx */,
  &gname699   /* psllq_mmx */,
  &gname699   /* psllqi_mmx */,
  &gname699   /* psrlw_mmx */,
  &gname699   /* psrlwi_mmx */,
  &gname699   /* psrld_mmx */,
  &gname699   /* psrldi_mmx */,
  &gname699   /* psrlq_mmx */,
  &gname699   /* psrlqi_mmx */,
  &gname699   /* psraw_mmx */,
  &gname699   /* psrawi_mmx */,
  &gname699   /* psrad_mmx */,
  &gname699   /* psradi_mmx */,
  &gname699   /* pand_mmx */,
  &gname699   /* pandn_mmx */,
  &gname699   /* por_mmx */,
  &gname699   /* pxor_mmx */,
  &gname762   /* pand */,
  &gname762   /* pandn */,
  &gname762   /* por */,
  &gname762   /* pxor */,
  &gname663   /* unpckhpd */,
  &gname672   /* unpckhps */,
  &gname663   /* unpcklpd */,
  &gname672   /* unpcklps */,
  &gname681   /* shufpd */,
  &gname681   /* shufps */,
  &gname222   /* movhlps */,
  &gname222   /* movlhps */,
  &gname708   /* psrldq */,
  &gname708   /* psrlq128v64 */,
  &gname762   /* subus128v16 */,
  &gname762   /* pavgb */,
  &gname762   /* pavgw */,
  &gname618   /* psadbw */,
  &gname762   /* pavgb128 */,
  &gname762   /* pavgw128 */,
  &gname618   /* psadbw128 */,
  &gname24    /* pextrw */,
  &gname33    /* pinsrw */,
  &gname933   /* pmovmskb */,
  &gname456   /* pmovmskb128 */,
  &gname924   /* movi32_2m */,
  &gname924   /* movi64_2m */,
  &gname933   /* movm_2i32 */,
  &gname933   /* movm_2i64 */,
  &gname699   /* pshufw64v16 */,
  &gname969   /* movmskps */,
  &gname969   /* movmskpd */,
  &gname303   /* maskmovdqu */,
  &gname186   /* maskmovq */,
  &gname978   /* extrq */,
  &gname987   /* insertq */,
  &gname582   /* vfmaddss */,
  &gname591   /* vfmaddxss */,
  &gname600   /* vfmaddxxss */,
  &gname609   /* vfmaddxxxss */,
  &gname591   /* vfmaddxrss */,
  &gname600   /* vfmaddxxrss */,
  &gname609   /* vfmaddxxxrss */,
  &gname582   /* vfmaddsd */,
  &gname591   /* vfmaddxsd */,
  &gname600   /* vfmaddxxsd */,
  &gname609   /* vfmaddxxxsd */,
  &gname591   /* vfmaddxrsd */,
  &gname600   /* vfmaddxxrsd */,
  &gname609   /* vfmaddxxxrsd */,
  &gname582   /* vfnmaddss */,
  &gname591   /* vfnmaddxss */,
  &gname600   /* vfnmaddxxss */,
  &gname609   /* vfnmaddxxxss */,
  &gname591   /* vfnmaddxrss */,
  &gname600   /* vfnmaddxxrss */,
  &gname609   /* vfnmaddxxxrss */,
  &gname582   /* vfnmaddsd */,
  &gname591   /* vfnmaddxsd */,
  &gname600   /* vfnmaddxxsd */,
  &gname609   /* vfnmaddxxxsd */,
  &gname591   /* vfnmaddxrsd */,
  &gname600   /* vfnmaddxxrsd */,
  &gname609   /* vfnmaddxxxrsd */,
  &gname582   /* vfmaddps */,
  &gname591   /* vfmaddxps */,
  &gname600   /* vfmaddxxps */,
  &gname609   /* vfmaddxxxps */,
  &gname591   /* vfmaddxrps */,
  &gname600   /* vfmaddxxrps */,
  &gname609   /* vfmaddxxxrps */,
  &gname582   /* vfmaddpd */,
  &gname591   /* vfmaddxpd */,
  &gname600   /* vfmaddxxpd */,
  &gname609   /* vfmaddxxxpd */,
  &gname591   /* vfmaddxrpd */,
  &gname600   /* vfmaddxxrpd */,
  &gname609   /* vfmaddxxxrpd */,
  &gname582   /* vfmaddsubps */,
  &gname591   /* vfmaddsubxps */,
  &gname600   /* vfmaddsubxxps */,
  &gname609   /* vfmaddsubxxxps */,
  &gname591   /* vfmaddsubxrps */,
  &gname600   /* vfmaddsubxxrps */,
  &gname609   /* vfmaddsubxxxrps */,
  &gname582   /* vfmaddsubpd */,
  &gname591   /* vfmaddsubxpd */,
  &gname600   /* vfmaddsubxxpd */,
  &gname609   /* vfmaddsubxxxpd */,
  &gname591   /* vfmaddsubxrpd */,
  &gname600   /* vfmaddsubxxrpd */,
  &gname609   /* vfmaddsubxxxrpd */,
  &gname582   /* vfnmaddps */,
  &gname591   /* vfnmaddxps */,
  &gname600   /* vfnmaddxxps */,
  &gname609   /* vfnmaddxxxps */,
  &gname591   /* vfnmaddxrps */,
  &gname600   /* vfnmaddxxrps */,
  &gname609   /* vfnmaddxxxrps */,
  &gname582   /* vfnmaddpd */,
  &gname591   /* vfnmaddxpd */,
  &gname600   /* vfnmaddxxpd */,
  &gname609   /* vfnmaddxxxpd */,
  &gname591   /* vfnmaddxrpd */,
  &gname600   /* vfnmaddxxrpd */,
  &gname609   /* vfnmaddxxxrpd */,
  &gname582   /* vfmsubss */,
  &gname591   /* vfmsubxss */,
  &gname600   /* vfmsubxxss */,
  &gname609   /* vfmsubxxxss */,
  &gname591   /* vfmsubxrss */,
  &gname600   /* vfmsubxxrss */,
  &gname609   /* vfmsubxxxrss */,
  &gname582   /* vfmsubsd */,
  &gname591   /* vfmsubxsd */,
  &gname600   /* vfmsubxxsd */,
  &gname609   /* vfmsubxxxsd */,
  &gname591   /* vfmsubxrsd */,
  &gname600   /* vfmsubxxrsd */,
  &gname609   /* vfmsubxxxrsd */,
  &gname582   /* vfnmsubss */,
  &gname591   /* vfnmsubxss */,
  &gname600   /* vfnmsubxxss */,
  &gname609   /* vfnmsubxxxss */,
  &gname591   /* vfnmsubxrss */,
  &gname600   /* vfnmsubxxrss */,
  &gname609   /* vfnmsubxxxrss */,
  &gname582   /* vfnmsubsd */,
  &gname591   /* vfnmsubxsd */,
  &gname600   /* vfnmsubxxsd */,
  &gname609   /* vfnmsubxxxsd */,
  &gname591   /* vfnmsubxrsd */,
  &gname600   /* vfnmsubxxrsd */,
  &gname609   /* vfnmsubxxxrsd */,
  &gname582   /* vfmsubps */,
  &gname591   /* vfmsubxps */,
  &gname600   /* vfmsubxxps */,
  &gname609   /* vfmsubxxxps */,
  &gname591   /* vfmsubxrps */,
  &gname600   /* vfmsubxxrps */,
  &gname609   /* vfmsubxxxrps */,
  &gname582   /* vfmsubpd */,
  &gname591   /* vfmsubxpd */,
  &gname600   /* vfmsubxxpd */,
  &gname609   /* vfmsubxxxpd */,
  &gname591   /* vfmsubxrpd */,
  &gname600   /* vfmsubxxrpd */,
  &gname609   /* vfmsubxxxrpd */,
  &gname582   /* vfmsubaddps */,
  &gname591   /* vfmsubaddxps */,
  &gname600   /* vfmsubaddxxps */,
  &gname609   /* vfmsubaddxxxps */,
  &gname591   /* vfmsubaddxrps */,
  &gname600   /* vfmsubaddxxrps */,
  &gname609   /* vfmsubaddxxxrps */,
  &gname582   /* vfmsubaddpd */,
  &gname591   /* vfmsubaddxpd */,
  &gname600   /* vfmsubaddxxpd */,
  &gname609   /* vfmsubaddxxxpd */,
  &gname591   /* vfmsubaddxrpd */,
  &gname600   /* vfmsubaddxxrpd */,
  &gname609   /* vfmsubaddxxxrpd */,
  &gname582   /* vfnmsubps */,
  &gname591   /* vfnmsubxps */,
  &gname600   /* vfnmsubxxps */,
  &gname609   /* vfnmsubxxxps */,
  &gname591   /* vfnmsubxrps */,
  &gname600   /* vfnmsubxxrps */,
  &gname609   /* vfnmsubxxxrps */,
  &gname582   /* vfnmsubpd */,
  &gname591   /* vfnmsubxpd */,
  &gname600   /* vfnmsubxxpd */,
  &gname609   /* vfnmsubxxxpd */,
  &gname591   /* vfnmsubxrpd */,
  &gname600   /* vfnmsubxxrpd */,
  &gname609   /* vfnmsubxxxrpd */,
  &gname915   /* vzeroupper */,
  &gname870   /* mfence */,
  &gname870   /* lfence */,
  &gname870   /* sfence */,
  &gname996   /* monitor */,
  &gname996   /* mwait */,
  &gname1770  /* asm */,
  &gname1770  /* intrncall */,
  &gname1770  /* spadjust */,
  &gname1770  /* savexmms */,
  &gname15    /* zero32 */,
  &gname15    /* zero64 */,
  &gname492   /* xzero32 */,
  &gname492   /* xzero64 */,
  &gname492   /* xzero128v32 */,
  &gname492   /* xzero128v64 */,
  &gname465   /* fadd */,
  &gname465   /* faddp */,
  &gname231   /* flds */,
  &gname231   /* flds_n32 */,
  &gname231   /* fldl */,
  &gname231   /* fldl_n32 */,
  &gname231   /* fldt */,
  &gname231   /* fldt_n32 */,
  &gname231   /* fld */,
  &gname294   /* fst */,
  &gname294   /* fstp */,
  &gname294   /* fstps */,
  &gname294   /* fstps_n32 */,
  &gname294   /* fstpl */,
  &gname294   /* fstpl_n32 */,
  &gname294   /* fstpt */,
  &gname294   /* fstpt_n32 */,
  &gname294   /* fsts */,
  &gname294   /* fsts_n32 */,
  &gname294   /* fstl */,
  &gname294   /* fstl_n32 */,
  &gname465   /* fxch */,
  &gname222   /* fmov */,
  &gname465   /* fsub */,
  &gname465   /* fsubr */,
  &gname465   /* fsubp */,
  &gname465   /* fsubrp */,
  &gname465   /* fmul */,
  &gname465   /* fmulp */,
  &gname843   /* fdiv */,
  &gname843   /* fdivp */,
  &gname843   /* fdivr */,
  &gname843   /* fdivrp */,
  &gname465   /* fucomi */,
  &gname465   /* fucomip */,
  &gname222   /* fchs */,
  &gname861   /* frndint */,
  &gname294   /* fnstcw */,
  &gname231   /* fldcw */,
  &gname465   /* fistps */,
  &gname465   /* fistpl */,
  &gname465   /* fists */,
  &gname465   /* fistl */,
  &gname465   /* fistpll */,
  &gname798   /* filds */,
  &gname798   /* fildl */,
  &gname798   /* fildll */,
  &gname465   /* fldz */,
  &gname222   /* fabs */,
  &gname528   /* fsqrt */,
  &gname60    /* fcmovb */,
  &gname60    /* fcmovbe */,
  &gname60    /* fcmovnb */,
  &gname60    /* fcmovnbe */,
  &gname60    /* fcmove */,
  &gname60    /* fcmovne */,
  &gname60    /* fcmovu */,
  &gname60    /* fcmovnu */,
  &gname537   /* fcos */,
  &gname546   /* fsin */,
  &gname735   /* cmpeqpd */,
  &gname735   /* cmpltpd */,
  &gname735   /* cmplepd */,
  &gname735   /* cmpunordpd */,
  &gname735   /* cmpneqpd */,
  &gname735   /* cmpnltpd */,
  &gname735   /* cmpnlepd */,
  &gname735   /* cmpordpd */,
  &gname735   /* cmpeqps */,
  &gname735   /* cmpltps */,
  &gname735   /* cmpleps */,
  &gname735   /* cmpunordps */,
  &gname735   /* cmpneqps */,
  &gname735   /* cmpnltps */,
  &gname735   /* cmpnleps */,
  &gname735   /* cmpordps */,
  &gname15    /* cmpeqsd */,
  &gname15    /* cmpltsd */,
  &gname15    /* cmplesd */,
  &gname15    /* cmpunordsd */,
  &gname15    /* cmpneqsd */,
  &gname15    /* cmpnltsd */,
  &gname15    /* cmpnlesd */,
  &gname15    /* cmpordsd */,
  &gname15    /* cmpeqss */,
  &gname15    /* cmpltss */,
  &gname15    /* cmpless */,
  &gname15    /* cmpunordss */,
  &gname15    /* cmpneqss */,
  &gname15    /* cmpnltss */,
  &gname15    /* cmpnless */,
  &gname15    /* cmpordss */,
  &gname897   /* emms */,
  &gname303   /* stmxcsr */,
  &gname240   /* ldmxcsr */,
  &gname906   /* clflush */,
  &gname465   /* fisttps */,
  &gname465   /* fisttpl */,
  &gname465   /* fisttpll */,
  &gname1005  /* pabs128v8 */,
  &gname1014  /* pabsx128v8 */,
  &gname1014  /* pabsxx128v8 */,
  &gname1014  /* pabsxxx128v8 */,
  &gname1005  /* pabs128v16 */,
  &gname1014  /* pabsx128v16 */,
  &gname1014  /* pabsxx128v16 */,
  &gname1014  /* pabsxxx128v16 */,
  &gname1005  /* pabs128v32 */,
  &gname1014  /* pabsx128v32 */,
  &gname1014  /* pabsxx128v32 */,
  &gname1014  /* pabsxxx128v32 */,
  &gname1005  /* psign128v8 */,
  &gname1014  /* psignx128v8 */,
  &gname1014  /* psignxx128v8 */,
  &gname1014  /* psignxxx128v8 */,
  &gname1005  /* psign128v16 */,
  &gname1014  /* psignx128v16 */,
  &gname1014  /* psignxx128v16 */,
  &gname1014  /* psignxxx128v16 */,
  &gname1005  /* psign128v32 */,
  &gname1014  /* psignx128v32 */,
  &gname1014  /* psignxx128v32 */,
  &gname1014  /* psignxxx128v32 */,
  &gname1005  /* pshuf128v8 */,
  &gname1014  /* pshufx128v8 */,
  &gname1014  /* pshufxx128v8 */,
  &gname1014  /* pshufxxx128v8 */,
  &gname1023  /* phsub128v16 */,
  &gname1032  /* phsubx128v16 */,
  &gname1032  /* phsubxx128v16 */,
  &gname1032  /* phsubxxx128v16 */,
  &gname1023  /* phsub128v32 */,
  &gname1032  /* phsubx128v32 */,
  &gname1032  /* phsubxx128v32 */,
  &gname1032  /* phsubxxx128v32 */,
  &gname1023  /* phsubs128v16 */,
  &gname1032  /* phsubsx128v16 */,
  &gname1032  /* phsubsxx128v16 */,
  &gname1032  /* phsubsxxx128v16 */,
  &gname1023  /* phadd128v16 */,
  &gname1032  /* phaddx128v16 */,
  &gname1032  /* phaddxx128v16 */,
  &gname1032  /* phaddxxx128v16 */,
  &gname1023  /* phadd128v32 */,
  &gname1032  /* phaddx128v32 */,
  &gname1032  /* phaddxx128v32 */,
  &gname1032  /* phaddxxx128v32 */,
  &gname1023  /* phadds128v16 */,
  &gname1032  /* phaddsx128v16 */,
  &gname1032  /* phaddsxx128v16 */,
  &gname1032  /* phaddsxxx128v16 */,
  &gname1041  /* pmulhrsw128 */,
  &gname1050  /* pmulhrswx128 */,
  &gname1050  /* pmulhrswxx128 */,
  &gname1050  /* pmulhrswxxx128 */,
  &gname1041  /* pmaddubsw128 */,
  &gname1050  /* pmaddubswx128 */,
  &gname1050  /* pmaddubswxx128 */,
  &gname1050  /* pmaddubswxxx128 */,
  &gname1005  /* palignr128 */,
  &gname1014  /* palignrx128 */,
  &gname1014  /* palignrxx128 */,
  &gname1014  /* palignrxxx128 */,
  &gname1167  /* muldq */,
  &gname1176  /* muldqx */,
  &gname1176  /* muldqxx */,
  &gname1176  /* muldqxxx */,
  &gname1185  /* ldntdqa */,
  &gname1185  /* ldntdqax */,
  &gname1185  /* ldntdqaxx */,
  &gname1194  /* stntdq */,
  &gname1194  /* stntdqx */,
  &gname1194  /* stntdqxx */,
  &gname1059  /* mins128v8 */,
  &gname1068  /* minsx128v8 */,
  &gname1068  /* minsxx128v8 */,
  &gname1068  /* minsxxx128v8 */,
  &gname1059  /* maxs128v8 */,
  &gname1068  /* maxsx128v8 */,
  &gname1068  /* maxsxx128v8 */,
  &gname1068  /* maxsxxx128v8 */,
  &gname1059  /* minu128v16 */,
  &gname1068  /* minux128v16 */,
  &gname1068  /* minuxx128v16 */,
  &gname1068  /* minuxxx128v16 */,
  &gname1059  /* maxu128v16 */,
  &gname1068  /* maxux128v16 */,
  &gname1068  /* maxuxx128v16 */,
  &gname1068  /* maxuxxx128v16 */,
  &gname1059  /* minu128v32 */,
  &gname1068  /* minux128v32 */,
  &gname1068  /* minuxx128v32 */,
  &gname1068  /* minuxxx128v32 */,
  &gname1059  /* maxu128v32 */,
  &gname1068  /* maxux128v32 */,
  &gname1068  /* maxuxx128v32 */,
  &gname1068  /* maxuxxx128v32 */,
  &gname1059  /* mins128v32 */,
  &gname1068  /* minsx128v32 */,
  &gname1068  /* minsxx128v32 */,
  &gname1068  /* minsxxx128v32 */,
  &gname1059  /* maxs128v32 */,
  &gname1068  /* maxsx128v32 */,
  &gname1068  /* maxsxx128v32 */,
  &gname1068  /* maxsxxx128v32 */,
  &gname1059  /* pmovsxbw */,
  &gname1068  /* pmovsxbwx */,
  &gname1068  /* pmovsxbwxx */,
  &gname1068  /* pmovsxbwxxx */,
  &gname1059  /* pmovzxbw */,
  &gname1068  /* pmovzxbwx */,
  &gname1068  /* pmovzxbwxx */,
  &gname1068  /* pmovzxbwxxx */,
  &gname1059  /* pmovsxbd */,
  &gname1068  /* pmovsxbdx */,
  &gname1068  /* pmovsxbdxx */,
  &gname1068  /* pmovsxbdxxx */,
  &gname1059  /* pmovzxbd */,
  &gname1068  /* pmovzxbdx */,
  &gname1068  /* pmovzxbdxx */,
  &gname1068  /* pmovzxbdxxx */,
  &gname1059  /* pmovsxbq */,
  &gname1068  /* pmovsxbqx */,
  &gname1068  /* pmovsxbqxx */,
  &gname1068  /* pmovsxbqxxx */,
  &gname1059  /* pmovzxbq */,
  &gname1068  /* pmovzxbqx */,
  &gname1068  /* pmovzxbqxx */,
  &gname1068  /* pmovzxbqxxx */,
  &gname1059  /* pmovsxwd */,
  &gname1068  /* pmovsxwdx */,
  &gname1068  /* pmovsxwdxx */,
  &gname1068  /* pmovsxwdxxx */,
  &gname1059  /* pmovzxwd */,
  &gname1068  /* pmovzxwdx */,
  &gname1068  /* pmovzxwdxx */,
  &gname1068  /* pmovzxwdxxx */,
  &gname1059  /* pmovsxwq */,
  &gname1068  /* pmovsxwqx */,
  &gname1068  /* pmovsxwqxx */,
  &gname1068  /* pmovsxwqxxx */,
  &gname1059  /* pmovzxwq */,
  &gname1068  /* pmovzxwqx */,
  &gname1068  /* pmovzxwqxx */,
  &gname1068  /* pmovzxwqxxx */,
  &gname1059  /* pmovsxdq */,
  &gname1068  /* pmovsxdqx */,
  &gname1068  /* pmovsxdqxx */,
  &gname1068  /* pmovsxdqxxx */,
  &gname1059  /* pmovzxdq */,
  &gname1068  /* pmovzxdqx */,
  &gname1068  /* pmovzxdqxx */,
  &gname1068  /* pmovzxdqxxx */,
  &gname1167  /* mul128v32 */,
  &gname1176  /* mulx128v32 */,
  &gname1176  /* mulxx128v32 */,
  &gname1176  /* mulxxx128v32 */,
  &gname1203  /* cmpeq128v64 */,
  &gname1212  /* cmpeqx128v64 */,
  &gname1212  /* cmpeqxx128v64 */,
  &gname1212  /* cmpeqxxx128v64 */,
  &gname1203  /* packusdw */,
  &gname1212  /* packusdwx */,
  &gname1212  /* packusdwxx */,
  &gname1212  /* packusdwxxx */,
  &gname1059  /* phminposuw */,
  &gname1068  /* phminposuwx */,
  &gname1068  /* phminposuwxx */,
  &gname1068  /* phminposuwxxx */,
  &gname1221  /* ptest128 */,
  &gname1230  /* ptestx128 */,
  &gname1230  /* ptestxx128 */,
  &gname1230  /* ptestxxx128 */,
  &gname1131  /* roundsd */,
  &gname1140  /* roundxsd */,
  &gname1140  /* roundxxsd */,
  &gname1140  /* roundxxxsd */,
  &gname1167  /* mpsadbw */,
  &gname1176  /* mpsadbwx */,
  &gname1176  /* mpsadbwxx */,
  &gname1176  /* mpsadbwxxx */,
  &gname1113  /* insr128v8 */,
  &gname1122  /* insrx128v8 */,
  &gname1122  /* insrxx128v8 */,
  &gname1122  /* insrxxx128v8 */,
  &gname1113  /* insr128v16 */,
  &gname1122  /* insrx128v16 */,
  &gname1122  /* insrxx128v16 */,
  &gname1122  /* insrxxx128v16 */,
  &gname1113  /* insr128v32 */,
  &gname1122  /* insrx128v32 */,
  &gname1122  /* insrxx128v32 */,
  &gname1122  /* insrxxx128v32 */,
  &gname1113  /* insr128v64 */,
  &gname1122  /* insrx128v64 */,
  &gname1122  /* insrxx128v64 */,
  &gname1122  /* insrxxx128v64 */,
  &gname1113  /* extr128v8 */,
  &gname1122  /* extrx128v8 */,
  &gname1122  /* extrxx128v8 */,
  &gname1122  /* extrxxx128v8 */,
  &gname1113  /* extr128v16 */,
  &gname1122  /* extrx128v16 */,
  &gname1122  /* extrxx128v16 */,
  &gname1122  /* extrxxx128v16 */,
  &gname1113  /* extr128v32 */,
  &gname1122  /* extrx128v32 */,
  &gname1122  /* extrxx128v32 */,
  &gname1122  /* extrxxx128v32 */,
  &gname1113  /* extr128v64 */,
  &gname1122  /* extrx128v64 */,
  &gname1122  /* extrxx128v64 */,
  &gname1122  /* extrxxx128v64 */,
  &gname1149  /* finsr128v32 */,
  &gname1158  /* finsrx128v32 */,
  &gname1158  /* finsrxx128v32 */,
  &gname1158  /* finsrxxx128v32 */,
  &gname1149  /* fextr128v32 */,
  &gname1158  /* fextrx128v32 */,
  &gname1158  /* fextrxx128v32 */,
  &gname1158  /* fextrxxx128v32 */,
  &gname1095  /* fblendv128v32 */,
  &gname1104  /* fblendvx128v32 */,
  &gname1104  /* fblendvxx128v32 */,
  &gname1104  /* fblendvxxx128v32 */,
  &gname1095  /* fblendv128v64 */,
  &gname1104  /* fblendvx128v64 */,
  &gname1104  /* fblendvxx128v64 */,
  &gname1104  /* fblendvxxx128v64 */,
  &gname1095  /* blendv128v8 */,
  &gname1104  /* blendvx128v8 */,
  &gname1104  /* blendvxx128v8 */,
  &gname1104  /* blendvxxx128v8 */,
  &gname1077  /* round128v32 */,
  &gname1086  /* roundx128v32 */,
  &gname1086  /* roundxx128v32 */,
  &gname1086  /* roundxxx128v32 */,
  &gname1077  /* roundss */,
  &gname1086  /* roundxss */,
  &gname1086  /* roundxxss */,
  &gname1086  /* roundxxxss */,
  &gname1095  /* fblend128v64 */,
  &gname1104  /* fblendx128v64 */,
  &gname1104  /* fblendxx128v64 */,
  &gname1104  /* fblendxxx128v64 */,
  &gname1095  /* blend128v16 */,
  &gname1104  /* blendx128v16 */,
  &gname1104  /* blendxx128v16 */,
  &gname1104  /* blendxxx128v16 */,
  &gname1167  /* fdp128v32 */,
  &gname1176  /* fdpx128v32 */,
  &gname1176  /* fdpxx128v32 */,
  &gname1176  /* fdpxxx128v32 */,
  &gname1167  /* fdp128v64 */,
  &gname1176  /* fdpx128v64 */,
  &gname1176  /* fdpxx128v64 */,
  &gname1176  /* fdpxxx128v64 */,
  &gname1077  /* round128v64 */,
  &gname1086  /* roundx128v64 */,
  &gname1086  /* roundxx128v64 */,
  &gname1086  /* roundxxx128v64 */,
  &gname1095  /* fblend128v32 */,
  &gname1104  /* fblendx128v32 */,
  &gname1104  /* fblendxx128v32 */,
  &gname1104  /* fblendxxx128v32 */,
  &gname1275  /* cmpgt128v64 */,
  &gname1284  /* cmpgtx128v64 */,
  &gname1284  /* cmpgtxx128v64 */,
  &gname1284  /* cmpgtxxx128v64 */,
  &gname1239  /* crc32w */,
  &gname1248  /* crc32wx */,
  &gname1248  /* crc32wxx */,
  &gname1248  /* crc32wxxx */,
  &gname1239  /* crc32d */,
  &gname1248  /* crc32dx */,
  &gname1248  /* crc32dxx */,
  &gname1248  /* crc32dxxx */,
  &gname1239  /* crc32q */,
  &gname1248  /* crc32qx */,
  &gname1248  /* crc32qxx */,
  &gname1248  /* crc32qxxx */,
  &gname1239  /* crc32b */,
  &gname1248  /* crc32bx */,
  &gname1248  /* crc32bxx */,
  &gname1248  /* crc32bxxx */,
  &gname1257  /* cmpestrm */,
  &gname1266  /* cmpestrmx */,
  &gname1266  /* cmpestrmxx */,
  &gname1266  /* cmpestrmxxx */,
  &gname1257  /* cmpestri */,
  &gname1266  /* cmpestrix */,
  &gname1266  /* cmpestrixx */,
  &gname1266  /* cmpestrixxx */,
  &gname1257  /* cmpistrm */,
  &gname1266  /* cmpistrmx */,
  &gname1266  /* cmpistrmxx */,
  &gname1266  /* cmpistrmxxx */,
  &gname1257  /* cmpistri */,
  &gname1266  /* cmpistrix */,
  &gname1266  /* cmpistrixx */,
  &gname1266  /* cmpistrixxx */,
  &gname1275  /* popcnt16 */,
  &gname1284  /* popcntx16 */,
  &gname1284  /* popcntxx16 */,
  &gname1284  /* popcntxxx16 */,
  &gname1275  /* popcnt32 */,
  &gname1284  /* popcntx32 */,
  &gname1284  /* popcntxx32 */,
  &gname1284  /* popcntxxx32 */,
  &gname1275  /* popcnt64 */,
  &gname1284  /* popcntx64 */,
  &gname1284  /* popcntxx64 */,
  &gname1284  /* popcntxxx64 */,
  &gname1293  /* aesimc */,
  &gname1302  /* aesimcx */,
  &gname1302  /* aesimcxx */,
  &gname1302  /* aesimcxxx */,
  &gname1293  /* aeskeygenassist */,
  &gname1302  /* aeskeygenassistx */,
  &gname1302  /* aeskeygenassistxx */,
  &gname1302  /* aeskeygenassistxxx */,
  &gname1293  /* aesenc */,
  &gname1302  /* aesencx */,
  &gname1302  /* aesencxx */,
  &gname1302  /* aesencxxx */,
  &gname1293  /* aesenclast */,
  &gname1302  /* aesenclastx */,
  &gname1302  /* aesenclastxx */,
  &gname1302  /* aesenclastxxx */,
  &gname1293  /* aesdec */,
  &gname1302  /* aesdecx */,
  &gname1302  /* aesdecxx */,
  &gname1302  /* aesdecxxx */,
  &gname1293  /* aesdeclast */,
  &gname1302  /* aesdeclastx */,
  &gname1302  /* aesdeclastxx */,
  &gname1302  /* aesdeclastxxx */,
  &gname1311  /* pclmulqdq */,
  &gname1320  /* pclmulqdqx */,
  &gname1320  /* pclmulqdqxx */,
  &gname1320  /* pclmulqdqxxx */,
  &gname1329  /* vphaddbd */,
  &gname1338  /* vphaddbdx */,
  &gname1338  /* vphaddbdxx */,
  &gname1338  /* vphaddbdxxx */,
  &gname1329  /* vphaddbq */,
  &gname1338  /* vphaddbqx */,
  &gname1338  /* vphaddbqxx */,
  &gname1338  /* vphaddbqxxx */,
  &gname1329  /* vphaddbw */,
  &gname1338  /* vphaddbwx */,
  &gname1338  /* vphaddbwxx */,
  &gname1338  /* vphaddbwxxx */,
  &gname1329  /* vphadddq */,
  &gname1338  /* vphadddqx */,
  &gname1338  /* vphadddqxx */,
  &gname1338  /* vphadddqxxx */,
  &gname1329  /* vphaddubd */,
  &gname1338  /* vphaddubdx */,
  &gname1338  /* vphaddubdxx */,
  &gname1338  /* vphaddubdxxx */,
  &gname1329  /* vphaddubq */,
  &gname1338  /* vphaddubqx */,
  &gname1338  /* vphaddubqxx */,
  &gname1338  /* vphaddubqxxx */,
  &gname1329  /* vphaddubw */,
  &gname1338  /* vphaddubwx */,
  &gname1338  /* vphaddubwxx */,
  &gname1338  /* vphaddubwxxx */,
  &gname1329  /* vphaddudq */,
  &gname1338  /* vphaddudqx */,
  &gname1338  /* vphaddudqxx */,
  &gname1338  /* vphaddudqxxx */,
  &gname1329  /* vphadduwd */,
  &gname1338  /* vphadduwdx */,
  &gname1338  /* vphadduwdxx */,
  &gname1338  /* vphadduwdxxx */,
  &gname1329  /* vphadduwq */,
  &gname1338  /* vphadduwqx */,
  &gname1338  /* vphadduwqxx */,
  &gname1338  /* vphadduwqxxx */,
  &gname1329  /* vphaddwd */,
  &gname1338  /* vphaddwdx */,
  &gname1338  /* vphaddwdxx */,
  &gname1338  /* vphaddwdxxx */,
  &gname1329  /* vphaddwq */,
  &gname1338  /* vphaddwqx */,
  &gname1338  /* vphaddwqxx */,
  &gname1338  /* vphaddwqxxx */,
  &gname1329  /* vphsubbw */,
  &gname1338  /* vphsubbwx */,
  &gname1338  /* vphsubbwxx */,
  &gname1338  /* vphsubbwxxx */,
  &gname1329  /* vphsubdq */,
  &gname1338  /* vphsubdqx */,
  &gname1338  /* vphsubdqxx */,
  &gname1338  /* vphsubdqxxx */,
  &gname1329  /* vphsubwd */,
  &gname1338  /* vphsubwdx */,
  &gname1338  /* vphsubwdxx */,
  &gname1338  /* vphsubwdxxx */,
  &gname1365  /* vfrczpd */,
  &gname1374  /* vfrczpdx */,
  &gname1374  /* vfrczpdxx */,
  &gname1374  /* vfrczpdxxx */,
  &gname1365  /* vfrczps */,
  &gname1374  /* vfrczpsx */,
  &gname1374  /* vfrczpsxx */,
  &gname1374  /* vfrczpsxxx */,
  &gname1365  /* vfrczsd */,
  &gname1374  /* vfrczsdx */,
  &gname1374  /* vfrczsdxx */,
  &gname1374  /* vfrczsdxxx */,
  &gname1365  /* vfrczss */,
  &gname1374  /* vfrczssx */,
  &gname1374  /* vfrczssxx */,
  &gname1374  /* vfrczssxxx */,
  &gname1383  /* vprotbi */,
  &gname1392  /* vprotbix */,
  &gname1392  /* vprotbixx */,
  &gname1392  /* vprotbixxx */,
  &gname1383  /* vprotdi */,
  &gname1392  /* vprotdix */,
  &gname1392  /* vprotdixx */,
  &gname1392  /* vprotdixxx */,
  &gname1383  /* vprotqi */,
  &gname1392  /* vprotqix */,
  &gname1392  /* vprotqixx */,
  &gname1392  /* vprotqixxx */,
  &gname1383  /* vprotwi */,
  &gname1392  /* vprotwix */,
  &gname1392  /* vprotwixx */,
  &gname1392  /* vprotwixxx */,
  &gname1383  /* vpcomb */,
  &gname1392  /* vpcombx */,
  &gname1392  /* vpcombxx */,
  &gname1392  /* vpcombxxx */,
  &gname1383  /* vpcomd */,
  &gname1392  /* vpcomdx */,
  &gname1392  /* vpcomdxx */,
  &gname1392  /* vpcomdxxx */,
  &gname1383  /* vpcomq */,
  &gname1392  /* vpcomqx */,
  &gname1392  /* vpcomqxx */,
  &gname1392  /* vpcomqxxx */,
  &gname1383  /* vpcomw */,
  &gname1392  /* vpcomwx */,
  &gname1392  /* vpcomwxx */,
  &gname1392  /* vpcomwxxx */,
  &gname1383  /* vpcomub */,
  &gname1392  /* vpcomubx */,
  &gname1392  /* vpcomubxx */,
  &gname1392  /* vpcomubxxx */,
  &gname1383  /* vpcomud */,
  &gname1392  /* vpcomudx */,
  &gname1392  /* vpcomudxx */,
  &gname1392  /* vpcomudxxx */,
  &gname1383  /* vpcomuq */,
  &gname1392  /* vpcomuqx */,
  &gname1392  /* vpcomuqxx */,
  &gname1392  /* vpcomuqxxx */,
  &gname1383  /* vpcomuw */,
  &gname1392  /* vpcomuwx */,
  &gname1392  /* vpcomuwxx */,
  &gname1392  /* vpcomuwxxx */,
  &gname1383  /* vpperm */,
  &gname1392  /* vppermx */,
  &gname1392  /* vppermxx */,
  &gname1392  /* vppermxxx */,
  &gname1392  /* vppermxr */,
  &gname1392  /* vppermxxr */,
  &gname1392  /* vppermxxxr */,
  &gname1401  /* vprotb */,
  &gname1410  /* vprotbx */,
  &gname1410  /* vprotbxx */,
  &gname1410  /* vprotbxxx */,
  &gname1410  /* vprotbxr */,
  &gname1410  /* vprotbxxr */,
  &gname1410  /* vprotbxxxr */,
  &gname1401  /* vprotd */,
  &gname1410  /* vprotdx */,
  &gname1410  /* vprotdxx */,
  &gname1410  /* vprotdxxx */,
  &gname1410  /* vprotdxr */,
  &gname1410  /* vprotdxxr */,
  &gname1410  /* vprotdxxxr */,
  &gname1401  /* vprotq */,
  &gname1410  /* vprotqx */,
  &gname1410  /* vprotqxx */,
  &gname1410  /* vprotqxxx */,
  &gname1410  /* vprotqxr */,
  &gname1410  /* vprotqxxr */,
  &gname1410  /* vprotqxxxr */,
  &gname1401  /* vprotw */,
  &gname1410  /* vprotwx */,
  &gname1410  /* vprotwxx */,
  &gname1410  /* vprotwxxx */,
  &gname1410  /* vprotwxr */,
  &gname1410  /* vprotwxxr */,
  &gname1410  /* vprotwxxxr */,
  &gname1401  /* vpshab */,
  &gname1410  /* vpshabx */,
  &gname1410  /* vpshabxx */,
  &gname1410  /* vpshabxxx */,
  &gname1410  /* vpshabxr */,
  &gname1410  /* vpshabxxr */,
  &gname1410  /* vpshabxxxr */,
  &gname1401  /* vpshad */,
  &gname1410  /* vpshadx */,
  &gname1410  /* vpshadxx */,
  &gname1410  /* vpshadxxx */,
  &gname1410  /* vpshadxr */,
  &gname1410  /* vpshadxxr */,
  &gname1410  /* vpshadxxxr */,
  &gname1401  /* vpshaq */,
  &gname1410  /* vpshaqx */,
  &gname1410  /* vpshaqxx */,
  &gname1410  /* vpshaqxxx */,
  &gname1410  /* vpshaqxr */,
  &gname1410  /* vpshaqxxr */,
  &gname1410  /* vpshaqxxxr */,
  &gname1401  /* vpshaw */,
  &gname1410  /* vpshawx */,
  &gname1410  /* vpshawxx */,
  &gname1410  /* vpshawxxx */,
  &gname1410  /* vpshawxr */,
  &gname1410  /* vpshawxxr */,
  &gname1410  /* vpshawxxxr */,
  &gname1401  /* vpshlb */,
  &gname1410  /* vpshlbx */,
  &gname1410  /* vpshlbxx */,
  &gname1410  /* vpshlbxxx */,
  &gname1410  /* vpshlbxr */,
  &gname1410  /* vpshlbxxr */,
  &gname1410  /* vpshlbxxxr */,
  &gname1401  /* vpshld */,
  &gname1410  /* vpshldx */,
  &gname1410  /* vpshldxx */,
  &gname1410  /* vpshldxxx */,
  &gname1410  /* vpshldxr */,
  &gname1410  /* vpshldxxr */,
  &gname1410  /* vpshldxxxr */,
  &gname1401  /* vpshlq */,
  &gname1410  /* vpshlqx */,
  &gname1410  /* vpshlqxx */,
  &gname1410  /* vpshlqxxx */,
  &gname1410  /* vpshlqxr */,
  &gname1410  /* vpshlqxxr */,
  &gname1410  /* vpshlqxxxr */,
  &gname1401  /* vpshlw */,
  &gname1410  /* vpshlwx */,
  &gname1410  /* vpshlwxx */,
  &gname1410  /* vpshlwxxx */,
  &gname1410  /* vpshlwxr */,
  &gname1410  /* vpshlwxxr */,
  &gname1410  /* vpshlwxxxr */,
  &gname1383  /* vpcmov */,
  &gname1392  /* vpcmovx */,
  &gname1392  /* vpcmovxx */,
  &gname1392  /* vpcmovxxx */,
  &gname1392  /* vpcmovxr */,
  &gname1392  /* vpcmovxxr */,
  &gname1392  /* vpcmovxxxr */,
  &gname1347  /* vpmacsdd */,
  &gname1356  /* vpmacsddx */,
  &gname1356  /* vpmacsddxx */,
  &gname1356  /* vpmacsddxxx */,
  &gname1347  /* vpmacsdqh */,
  &gname1356  /* vpmacsdqhx */,
  &gname1356  /* vpmacsdqhxx */,
  &gname1356  /* vpmacsdqhxxx */,
  &gname1347  /* vpmacsdql */,
  &gname1356  /* vpmacsdqlx */,
  &gname1356  /* vpmacsdqlxx */,
  &gname1356  /* vpmacsdqlxxx */,
  &gname1347  /* vpmacssdd */,
  &gname1356  /* vpmacssddx */,
  &gname1356  /* vpmacssddxx */,
  &gname1356  /* vpmacssddxxx */,
  &gname1347  /* vpmacssdqh */,
  &gname1356  /* vpmacssdqhx */,
  &gname1356  /* vpmacssdqhxx */,
  &gname1356  /* vpmacssdqhxxx */,
  &gname1347  /* vpmacssdql */,
  &gname1356  /* vpmacssdqlx */,
  &gname1356  /* vpmacssdqlxx */,
  &gname1356  /* vpmacssdqlxxx */,
  &gname1347  /* vpmacsswd */,
  &gname1356  /* vpmacsswdx */,
  &gname1356  /* vpmacsswdxx */,
  &gname1356  /* vpmacsswdxxx */,
  &gname1347  /* vpmacssww */,
  &gname1356  /* vpmacsswwx */,
  &gname1356  /* vpmacsswwxx */,
  &gname1356  /* vpmacsswwxxx */,
  &gname1347  /* vpmacswd */,
  &gname1356  /* vpmacswdx */,
  &gname1356  /* vpmacswdxx */,
  &gname1356  /* vpmacswdxxx */,
  &gname1347  /* vpmacsww */,
  &gname1356  /* vpmacswwx */,
  &gname1356  /* vpmacswwxx */,
  &gname1356  /* vpmacswwxxx */,
  &gname1347  /* vpmadcsswd */,
  &gname1356  /* vpmadcsswdx */,
  &gname1356  /* vpmadcsswdxx */,
  &gname1356  /* vpmadcsswdxxx */,
  &gname1347  /* vpmadcswd */,
  &gname1356  /* vpmadcswdx */,
  &gname1356  /* vpmadcswdxx */,
  &gname1356  /* vpmadcswdxxx */,
  &gname1419  /* vfadd128v64 */,
  &gname1428  /* vfaddx128v64 */,
  &gname1428  /* vfaddxx128v64 */,
  &gname1428  /* vfaddxxx128v64 */,
  &gname1419  /* vfadd128v32 */,
  &gname1428  /* vfaddx128v32 */,
  &gname1428  /* vfaddxx128v32 */,
  &gname1428  /* vfaddxxx128v32 */,
  &gname1419  /* vfaddsd */,
  &gname1428  /* vfaddxsd */,
  &gname1428  /* vfaddxxsd */,
  &gname1428  /* vfaddxxxsd */,
  &gname1419  /* vfaddss */,
  &gname1428  /* vfaddxss */,
  &gname1428  /* vfaddxxss */,
  &gname1428  /* vfaddxxxss */,
  &gname1419  /* vfaddsub128v64 */,
  &gname1428  /* vfaddsubx128v64 */,
  &gname1428  /* vfaddsubxx128v64 */,
  &gname1428  /* vfaddsubxxx128v64 */,
  &gname1419  /* vfaddsub128v32 */,
  &gname1428  /* vfaddsubx128v32 */,
  &gname1428  /* vfaddsubxx128v32 */,
  &gname1428  /* vfaddsubxxx128v32 */,
  &gname1581  /* vaesenc */,
  &gname1590  /* vaesencx */,
  &gname1590  /* vaesencxx */,
  &gname1590  /* vaesencxxx */,
  &gname1581  /* vaesenclast */,
  &gname1590  /* vaesenclastx */,
  &gname1590  /* vaesenclastxx */,
  &gname1590  /* vaesenclastxxx */,
  &gname1581  /* vaesdec */,
  &gname1590  /* vaesdecx */,
  &gname1590  /* vaesdecxx */,
  &gname1590  /* vaesdecxxx */,
  &gname1581  /* vaesdeclast */,
  &gname1590  /* vaesdeclastx */,
  &gname1590  /* vaesdeclastxx */,
  &gname1590  /* vaesdeclastxxx */,
  &gname1581  /* vaesimc */,
  &gname1590  /* vaesimcx */,
  &gname1590  /* vaesimcxx */,
  &gname1590  /* vaesimcxxx */,
  &gname1581  /* vaeskeygenassist */,
  &gname1590  /* vaeskeygenassistx */,
  &gname1590  /* vaeskeygenassistxx */,
  &gname1590  /* vaeskeygenassistxxx */,
  &gname1419  /* vandpd */,
  &gname1419  /* vfand128v64 */,
  &gname1428  /* vfandx128v64 */,
  &gname1428  /* vfandxx128v64 */,
  &gname1428  /* vfandxxx128v64 */,
  &gname1419  /* vandps */,
  &gname1419  /* vfand128v32 */,
  &gname1428  /* vfandx128v32 */,
  &gname1428  /* vfandxx128v32 */,
  &gname1428  /* vfandxxx128v32 */,
  &gname1419  /* vandnpd */,
  &gname1419  /* vfandn128v64 */,
  &gname1428  /* vfandnx128v64 */,
  &gname1428  /* vfandnxx128v64 */,
  &gname1428  /* vfandnxxx128v64 */,
  &gname1419  /* vandnps */,
  &gname1419  /* vfandn128v32 */,
  &gname1428  /* vfandnx128v32 */,
  &gname1428  /* vfandnxx128v32 */,
  &gname1428  /* vfandnxxx128v32 */,
  &gname1545  /* vfblend128v64 */,
  &gname1554  /* vfblendx128v64 */,
  &gname1554  /* vfblendxx128v64 */,
  &gname1554  /* vfblendxxx128v64 */,
  &gname1545  /* vfblend128v32 */,
  &gname1554  /* vfblendx128v32 */,
  &gname1554  /* vfblendxx128v32 */,
  &gname1554  /* vfblendxxx128v32 */,
  &gname1545  /* vfblendv128v64 */,
  &gname1554  /* vfblendvx128v64 */,
  &gname1554  /* vfblendvxx128v64 */,
  &gname1554  /* vfblendvxxx128v64 */,
  &gname1545  /* vfblendv128v32 */,
  &gname1554  /* vfblendvx128v32 */,
  &gname1554  /* vfblendvxx128v32 */,
  &gname1554  /* vfblendvxxx128v32 */,
  &gname1653  /* vfbroadcastss */,
  &gname1653  /* vfbroadcastxss */,
  &gname1653  /* vfbroadcastxxss */,
  &gname1653  /* vfbroadcastsd */,
  &gname1653  /* vfbroadcastxsd */,
  &gname1653  /* vfbroadcastxxsd */,
  &gname1653  /* vfbroadcastf128 */,
  &gname1653  /* vfbroadcastxf128 */,
  &gname1653  /* vfbroadcastxxf128 */,
  &gname1437  /* vcmppd */,
  &gname1437  /* vfcmp128v64 */,
  &gname1446  /* vfcmpx128v64 */,
  &gname1446  /* vfcmpxx128v64 */,
  &gname1446  /* vfcmpxxx128v64 */,
  &gname1437  /* vcmpps */,
  &gname1437  /* vfcmp128v32 */,
  &gname1446  /* vfcmpx128v32 */,
  &gname1446  /* vfcmpxx128v32 */,
  &gname1446  /* vfcmpxxx128v32 */,
  &gname1437  /* vfcmpsd */,
  &gname1446  /* vfcmpxsd */,
  &gname1446  /* vfcmpxxsd */,
  &gname1446  /* vfcmpxxxsd */,
  &gname1437  /* vfcmpss */,
  &gname1446  /* vfcmpxss */,
  &gname1446  /* vfcmpxxss */,
  &gname1446  /* vfcmpxxxss */,
  &gname1626  /* vcomisd */,
  &gname1635  /* vcomixsd */,
  &gname1635  /* vcomixxsd */,
  &gname1635  /* vcomixxxsd */,
  &gname1626  /* vcomiss */,
  &gname1635  /* vcomixss */,
  &gname1635  /* vcomixxss */,
  &gname1635  /* vcomixxxss */,
  &gname1698  /* vcvtdq2pd */,
  &gname1707  /* vcvtdq2pdx */,
  &gname1707  /* vcvtdq2pdxx */,
  &gname1707  /* vcvtdq2pdxxx */,
  &gname1698  /* vcvtdq2ps */,
  &gname1707  /* vcvtdq2psx */,
  &gname1707  /* vcvtdq2psxx */,
  &gname1707  /* vcvtdq2psxxx */,
  &gname1698  /* vcvtpd2dq */,
  &gname1707  /* vcvtpd2dqx */,
  &gname1707  /* vcvtpd2dqxx */,
  &gname1707  /* vcvtpd2dqxxx */,
  &gname1698  /* vcvtpd2dqy */,
  &gname1707  /* vcvtpd2dqyx */,
  &gname1707  /* vcvtpd2dqyxx */,
  &gname1707  /* vcvtpd2dqyxxx */,
  &gname1698  /* vcvtpd2ps */,
  &gname1707  /* vcvtpd2psx */,
  &gname1707  /* vcvtpd2psxx */,
  &gname1707  /* vcvtpd2psxxx */,
  &gname1698  /* vcvtpd2psy */,
  &gname1707  /* vcvtpd2psyx */,
  &gname1707  /* vcvtpd2psyxx */,
  &gname1707  /* vcvtpd2psyxxx */,
  &gname1698  /* vcvtps2dq */,
  &gname1707  /* vcvtps2dqx */,
  &gname1707  /* vcvtps2dqxx */,
  &gname1707  /* vcvtps2dqxxx */,
  &gname1698  /* vcvtps2pd */,
  &gname1707  /* vcvtps2pdx */,
  &gname1707  /* vcvtps2pdxx */,
  &gname1707  /* vcvtps2pdxxx */,
  &gname1698  /* vcvtsd2si */,
  &gname1698  /* vcvtsd2siq */,
  &gname1698  /* vcvtsd2ss */,
  &gname1707  /* vcvtsd2ssx */,
  &gname1707  /* vcvtsd2ssxx */,
  &gname1707  /* vcvtsd2ssxxx */,
  &gname1698  /* vcvtsi2sd */,
  &gname1707  /* vcvtsi2sdx */,
  &gname1707  /* vcvtsi2sdxx */,
  &gname1707  /* vcvtsi2sdxxx */,
  &gname1698  /* vcvtsi2sdq */,
  &gname1707  /* vcvtsi2sdqx */,
  &gname1707  /* vcvtsi2sdqxx */,
  &gname1707  /* vcvtsi2sdqxxx */,
  &gname1698  /* vcvtsi2ss */,
  &gname1707  /* vcvtsi2ssx */,
  &gname1707  /* vcvtsi2ssxx */,
  &gname1707  /* vcvtsi2ssxxx */,
  &gname1698  /* vcvtsi2ssq */,
  &gname1707  /* vcvtsi2ssqx */,
  &gname1707  /* vcvtsi2ssqxx */,
  &gname1707  /* vcvtsi2ssqxxx */,
  &gname1698  /* vcvtss2sd */,
  &gname1707  /* vcvtss2sdx */,
  &gname1707  /* vcvtss2sdxx */,
  &gname1707  /* vcvtss2sdxxx */,
  &gname1698  /* vcvtss2si */,
  &gname1698  /* vcvtss2siq */,
  &gname1698  /* vcvttpd2dq */,
  &gname1707  /* vcvttpd2dqx */,
  &gname1707  /* vcvttpd2dqxx */,
  &gname1707  /* vcvttpd2dqxxx */,
  &gname1698  /* vcvttpd2dqy */,
  &gname1707  /* vcvttpd2dqyx */,
  &gname1707  /* vcvttpd2dqyxx */,
  &gname1707  /* vcvttpd2dqyxxx */,
  &gname1698  /* vcvttps2dq */,
  &gname1707  /* vcvttps2dqx */,
  &gname1707  /* vcvttps2dqxx */,
  &gname1707  /* vcvttps2dqxxx */,
  &gname1698  /* vcvttsd2si */,
  &gname1698  /* vcvttsd2siq */,
  &gname1698  /* vcvttss2si */,
  &gname1698  /* vcvttss2siq */,
  &gname1509  /* vfdiv128v64 */,
  &gname1518  /* vfdivx128v64 */,
  &gname1518  /* vfdivxx128v64 */,
  &gname1518  /* vfdivxxx128v64 */,
  &gname1509  /* vfdiv128v32 */,
  &gname1518  /* vfdivx128v32 */,
  &gname1518  /* vfdivxx128v32 */,
  &gname1518  /* vfdivxxx128v32 */,
  &gname1509  /* vdivsd */,
  &gname1518  /* vdivxsd */,
  &gname1518  /* vdivxxsd */,
  &gname1518  /* vdivxxxsd */,
  &gname1509  /* vdivss */,
  &gname1518  /* vdivxss */,
  &gname1518  /* vdivxxss */,
  &gname1518  /* vdivxxxss */,
  &gname1527  /* vfdp128v64 */,
  &gname1536  /* vfdpx128v64 */,
  &gname1536  /* vfdpxx128v64 */,
  &gname1536  /* vfdpxxx128v64 */,
  &gname1527  /* vfdp128v32 */,
  &gname1536  /* vfdpx128v32 */,
  &gname1536  /* vfdpxx128v32 */,
  &gname1536  /* vfdpxxx128v32 */,
  &gname1626  /* vfextrf128 */,
  &gname1635  /* vfextrxf128 */,
  &gname1635  /* vfextrxxf128 */,
  &gname1635  /* vfextrxxxf128 */,
  &gname1626  /* vfextr128v32 */,
  &gname1635  /* vfextrx128v32 */,
  &gname1635  /* vfextrxx128v32 */,
  &gname1635  /* vfextrxxx128v32 */,
  &gname1437  /* vfhadd128v64 */,
  &gname1446  /* vfhaddx128v64 */,
  &gname1446  /* vfhaddxx128v64 */,
  &gname1446  /* vfhaddxxx128v64 */,
  &gname1437  /* vfhadd128v32 */,
  &gname1446  /* vfhaddx128v32 */,
  &gname1446  /* vfhaddxx128v32 */,
  &gname1446  /* vfhaddxxx128v32 */,
  &gname1437  /* vfhsub128v64 */,
  &gname1446  /* vfhsubx128v64 */,
  &gname1446  /* vfhsubxx128v64 */,
  &gname1446  /* vfhsubxxx128v64 */,
  &gname1437  /* vfhsub128v32 */,
  &gname1446  /* vfhsubx128v32 */,
  &gname1446  /* vfhsubxx128v32 */,
  &gname1446  /* vfhsubxxx128v32 */,
  &gname1626  /* vfinsrf128 */,
  &gname1635  /* vfinsrxf128 */,
  &gname1635  /* vfinsrxxf128 */,
  &gname1635  /* vfinsrxxxf128 */,
  &gname1626  /* vfinsr128v32 */,
  &gname1635  /* vfinsrx128v32 */,
  &gname1635  /* vfinsrxx128v32 */,
  &gname1635  /* vfinsrxxx128v32 */,
  &gname1743  /* vlddqu */,
  &gname1743  /* vlddqux */,
  &gname1743  /* vlddquxx */,
  &gname1743  /* vlddqu_n32 */,
  &gname1716  /* vldmxcsr */,
  &gname1644  /* vmaskmovdqu */,
  &gname1599  /* vfmaskld128v32 */,
  &gname1599  /* vfmaskldx128v32 */,
  &gname1599  /* vfmaskldxx128v32 */,
  &gname1599  /* vfmaskld128v64 */,
  &gname1599  /* vfmaskldx128v64 */,
  &gname1599  /* vfmaskldxx128v64 */,
  &gname1644  /* vfmaskst128v32 */,
  &gname1644  /* vfmaskstx128v32 */,
  &gname1644  /* vfmaskstxx128v32 */,
  &gname1644  /* vfmaskst128v64 */,
  &gname1644  /* vfmaskstx128v64 */,
  &gname1644  /* vfmaskstxx128v64 */,
  &gname1437  /* vfmax128v64 */,
  &gname1446  /* vfmaxx128v64 */,
  &gname1446  /* vfmaxxx128v64 */,
  &gname1446  /* vfmaxxxx128v64 */,
  &gname1437  /* vfmax128v32 */,
  &gname1446  /* vfmaxx128v32 */,
  &gname1446  /* vfmaxxx128v32 */,
  &gname1446  /* vfmaxxxx128v32 */,
  &gname1437  /* vfmaxsd */,
  &gname1446  /* vfmaxxsd */,
  &gname1446  /* vfmaxxxsd */,
  &gname1446  /* vfmaxxxxsd */,
  &gname1437  /* vfmaxss */,
  &gname1446  /* vfmaxxss */,
  &gname1446  /* vfmaxxxss */,
  &gname1446  /* vfmaxxxxss */,
  &gname1437  /* vfmin128v64 */,
  &gname1446  /* vfminx128v64 */,
  &gname1446  /* vfminxx128v64 */,
  &gname1446  /* vfminxxx128v64 */,
  &gname1437  /* vfmin128v32 */,
  &gname1446  /* vfminx128v32 */,
  &gname1446  /* vfminxx128v32 */,
  &gname1446  /* vfminxxx128v32 */,
  &gname1437  /* vfminsd */,
  &gname1446  /* vfminxsd */,
  &gname1446  /* vfminxxsd */,
  &gname1446  /* vfminxxxsd */,
  &gname1437  /* vfminss */,
  &gname1446  /* vfminxss */,
  &gname1446  /* vfminxxss */,
  &gname1446  /* vfminxxxss */,
  &gname1626  /* vmovapd */,
  &gname1599  /* vldapd */,
  &gname1599  /* vldapdx */,
  &gname1599  /* vldapdxx */,
  &gname1599  /* vldapd_n32 */,
  &gname1644  /* vstapd */,
  &gname1644  /* vstapdx */,
  &gname1644  /* vstapdxx */,
  &gname1644  /* vstapd_n32 */,
  &gname1626  /* vmovaps */,
  &gname1599  /* vldaps */,
  &gname1599  /* vldapsx */,
  &gname1599  /* vldapsxx */,
  &gname1599  /* vldaps_n32 */,
  &gname1644  /* vstaps */,
  &gname1644  /* vstapsx */,
  &gname1644  /* vstapsxx */,
  &gname1644  /* vstaps_n32 */,
  &gname1644  /* vmovg2x */,
  &gname1644  /* vmovg2x64 */,
  &gname1599  /* vmovx2g */,
  &gname1599  /* vmovx2g64 */,
  &gname1599  /* vld64_2sse */,
  &gname1599  /* vldx64_2sse */,
  &gname1599  /* vldxx64_2sse */,
  &gname1599  /* vld64_2sse_n32 */,
  &gname1644  /* vst64_fsse */,
  &gname1644  /* vstx64_fsse */,
  &gname1644  /* vstxx64_fsse */,
  &gname1644  /* vst64_fsse_n32 */,
  &gname1626  /* vmovddup */,
  &gname1635  /* vmovddupx */,
  &gname1635  /* vmovddupxx */,
  &gname1635  /* vmovddupxxx */,
  &gname1599  /* vlddqa */,
  &gname1599  /* vlddqax */,
  &gname1599  /* vlddqaxx */,
  &gname1599  /* vlddqa_n32 */,
  &gname1626  /* vmovdqa */,
  &gname1644  /* vstdqa */,
  &gname1644  /* vstdqax */,
  &gname1644  /* vstdqaxx */,
  &gname1644  /* vstdqa_n32 */,
  &gname1644  /* vstdqu */,
  &gname1644  /* vstdqux */,
  &gname1644  /* vstdquxx */,
  &gname1644  /* vstdqu_n32 */,
  &gname1599  /* vldhpd */,
  &gname1599  /* vldhpdx */,
  &gname1599  /* vldhpdxx */,
  &gname1599  /* vldhpd_n32 */,
  &gname1644  /* vsthpd */,
  &gname1644  /* vsthpdx */,
  &gname1644  /* vsthpdxx */,
  &gname1644  /* vsthpd_n32 */,
  &gname1599  /* vldhps */,
  &gname1599  /* vldhpsx */,
  &gname1599  /* vldhpsxx */,
  &gname1599  /* vldhps_n32 */,
  &gname1644  /* vsthps */,
  &gname1644  /* vsthpsx */,
  &gname1644  /* vsthpsxx */,
  &gname1644  /* vsthps_n32 */,
  &gname1599  /* vldlpd */,
  &gname1599  /* vldlpdx */,
  &gname1599  /* vldlpdxx */,
  &gname1599  /* vldlpd_n32 */,
  &gname1644  /* vstorelpd */,
  &gname1644  /* vstlpd */,
  &gname1644  /* vstlpdx */,
  &gname1644  /* vstlpdxx */,
  &gname1644  /* vstlpd_n32 */,
  &gname1599  /* vldlps */,
  &gname1599  /* vldlpsx */,
  &gname1599  /* vldlpsxx */,
  &gname1599  /* vldlps_n32 */,
  &gname1644  /* vstlps */,
  &gname1644  /* vstlpsx */,
  &gname1644  /* vstlpsxx */,
  &gname1644  /* vstlps_n32 */,
  &gname1725  /* vmovmskpd */,
  &gname1725  /* vmovmskps */,
  &gname1644  /* vstorenti128 */,
  &gname1644  /* vstorentxi128 */,
  &gname1644  /* vstorentxxi128 */,
  &gname1599  /* vldntdqa */,
  &gname1599  /* vldntdqax */,
  &gname1599  /* vldntdqaxx */,
  &gname1644  /* vstntdq */,
  &gname1644  /* vstntdqx */,
  &gname1644  /* vstntdqxx */,
  &gname1644  /* vstntpd */,
  &gname1644  /* vstntpdx */,
  &gname1644  /* vstntpdxx */,
  &gname1644  /* vstntps */,
  &gname1644  /* vstntpsx */,
  &gname1644  /* vstntpsxx */,
  &gname1644  /* vstntsd */,
  &gname1644  /* vstntsdx */,
  &gname1644  /* vstntsdxx */,
  &gname1644  /* vstntss */,
  &gname1644  /* vstntssx */,
  &gname1644  /* vstntssxx */,
  &gname1626  /* vmovsd */,
  &gname1599  /* vldsd */,
  &gname1599  /* vldsdx */,
  &gname1599  /* vldsdxx */,
  &gname1599  /* vldsd_n32 */,
  &gname1644  /* vstsd */,
  &gname1644  /* vstsdx */,
  &gname1644  /* vstsdxx */,
  &gname1644  /* vstsd_n32 */,
  &gname1626  /* vmovss */,
  &gname1599  /* vldss */,
  &gname1599  /* vldssx */,
  &gname1599  /* vldssxx */,
  &gname1599  /* vldss_n32 */,
  &gname1644  /* vstss */,
  &gname1644  /* vstssx */,
  &gname1644  /* vstssxx */,
  &gname1644  /* vstss_n32 */,
  &gname1626  /* vmovlhps */,
  &gname1626  /* vmovhlps */,
  &gname1626  /* vmovshdup */,
  &gname1635  /* vmovshdupx */,
  &gname1635  /* vmovshdupxx */,
  &gname1635  /* vmovshdupxxx */,
  &gname1626  /* vmovsldup */,
  &gname1635  /* vmovsldupx */,
  &gname1635  /* vmovsldupxx */,
  &gname1635  /* vmovsldupxxx */,
  &gname1743  /* vldupd */,
  &gname1743  /* vldupdx */,
  &gname1743  /* vldupdxx */,
  &gname1743  /* vldupd_n32 */,
  &gname1734  /* vstupd */,
  &gname1734  /* vstupdx */,
  &gname1734  /* vstupdxx */,
  &gname1734  /* vstupd_n32 */,
  &gname1743  /* vldups */,
  &gname1743  /* vldupsx */,
  &gname1743  /* vldupsxx */,
  &gname1743  /* vldups_n32 */,
  &gname1734  /* vstups */,
  &gname1734  /* vstupsx */,
  &gname1734  /* vstupsxx */,
  &gname1734  /* vstups_n32 */,
  &gname1662  /* vmpsadbw */,
  &gname1671  /* vmpsadbwx */,
  &gname1671  /* vmpsadbwxx */,
  &gname1671  /* vmpsadbwxxx */,
  &gname1662  /* vfmul128v64 */,
  &gname1671  /* vfmulx128v64 */,
  &gname1671  /* vfmulxx128v64 */,
  &gname1671  /* vfmulxxx128v64 */,
  &gname1662  /* vfmul128v32 */,
  &gname1671  /* vfmulx128v32 */,
  &gname1671  /* vfmulxx128v32 */,
  &gname1671  /* vfmulxxx128v32 */,
  &gname1662  /* vmulsd */,
  &gname1671  /* vmulxsd */,
  &gname1671  /* vmulxxsd */,
  &gname1671  /* vmulxxxsd */,
  &gname1662  /* vmulss */,
  &gname1671  /* vmulxss */,
  &gname1671  /* vmulxxss */,
  &gname1671  /* vmulxxxss */,
  &gname1437  /* vorpd */,
  &gname1437  /* vfor128v64 */,
  &gname1446  /* vforx128v64 */,
  &gname1446  /* vforxx128v64 */,
  &gname1446  /* vforxxx128v64 */,
  &gname1437  /* vorps */,
  &gname1437  /* vfor128v32 */,
  &gname1446  /* vforx128v32 */,
  &gname1446  /* vforxx128v32 */,
  &gname1446  /* vforxxx128v32 */,
  &gname1419  /* vabs128v8 */,
  &gname1428  /* vabsx128v8 */,
  &gname1428  /* vabsxx128v8 */,
  &gname1428  /* vabsxxx128v8 */,
  &gname1419  /* vabs128v32 */,
  &gname1428  /* vabsx128v32 */,
  &gname1428  /* vabsxx128v32 */,
  &gname1428  /* vabsxxx128v32 */,
  &gname1419  /* vabs128v16 */,
  &gname1428  /* vabsx128v16 */,
  &gname1428  /* vabsxx128v16 */,
  &gname1428  /* vabsxxx128v16 */,
  &gname1626  /* vpackssdw */,
  &gname1635  /* vpackssdwx */,
  &gname1635  /* vpackssdwxx */,
  &gname1635  /* vpackssdwxxx */,
  &gname1626  /* vpacksswb */,
  &gname1635  /* vpacksswbx */,
  &gname1635  /* vpacksswbxx */,
  &gname1635  /* vpacksswbxxx */,
  &gname1626  /* vpackusdw */,
  &gname1635  /* vpackusdwx */,
  &gname1635  /* vpackusdwxx */,
  &gname1635  /* vpackusdwxxx */,
  &gname1626  /* vpackuswb */,
  &gname1635  /* vpackuswbx */,
  &gname1635  /* vpackuswbxx */,
  &gname1635  /* vpackuswbxxx */,
  &gname1419  /* vadd128v8 */,
  &gname1428  /* vaddx128v8 */,
  &gname1428  /* vaddxx128v8 */,
  &gname1428  /* vaddxxx128v8 */,
  &gname1419  /* vadd128v32 */,
  &gname1428  /* vaddx128v32 */,
  &gname1428  /* vaddxx128v32 */,
  &gname1428  /* vaddxxx128v32 */,
  &gname1419  /* vadd128v64 */,
  &gname1428  /* vaddx128v64 */,
  &gname1428  /* vaddxx128v64 */,
  &gname1428  /* vaddxxx128v64 */,
  &gname1419  /* vadd128v16 */,
  &gname1428  /* vaddx128v16 */,
  &gname1428  /* vaddxx128v16 */,
  &gname1428  /* vaddxxx128v16 */,
  &gname1419  /* vadds128v8 */,
  &gname1428  /* vaddsx128v8 */,
  &gname1428  /* vaddsxx128v8 */,
  &gname1428  /* vaddsxxx128v8 */,
  &gname1419  /* vadds128v16 */,
  &gname1428  /* vaddsx128v16 */,
  &gname1428  /* vaddsxx128v16 */,
  &gname1428  /* vaddsxxx128v16 */,
  &gname1419  /* vaddus128v8 */,
  &gname1428  /* vaddusx128v8 */,
  &gname1428  /* vaddusxx128v8 */,
  &gname1428  /* vaddusxxx128v8 */,
  &gname1419  /* vaddus128v16 */,
  &gname1428  /* vaddusx128v16 */,
  &gname1428  /* vaddusxx128v16 */,
  &gname1428  /* vaddusxxx128v16 */,
  &gname1608  /* vpalignr128 */,
  &gname1617  /* vpalignrx128 */,
  &gname1617  /* vpalignrxx128 */,
  &gname1617  /* vpalignrxxx128 */,
  &gname1419  /* vand128v8 */,
  &gname1428  /* vandx128v8 */,
  &gname1428  /* vandxx128v8 */,
  &gname1428  /* vandxxx128v8 */,
  &gname1419  /* vand128v16 */,
  &gname1428  /* vandx128v16 */,
  &gname1428  /* vandxx128v16 */,
  &gname1428  /* vandxxx128v16 */,
  &gname1419  /* vand128v32 */,
  &gname1428  /* vandx128v32 */,
  &gname1428  /* vandxx128v32 */,
  &gname1428  /* vandxxx128v32 */,
  &gname1419  /* vand128v64 */,
  &gname1428  /* vandx128v64 */,
  &gname1428  /* vandxx128v64 */,
  &gname1428  /* vandxxx128v64 */,
  &gname1419  /* vandn128v8 */,
  &gname1428  /* vandnx128v8 */,
  &gname1428  /* vandnxx128v8 */,
  &gname1428  /* vandnxxx128v8 */,
  &gname1419  /* vandn128v16 */,
  &gname1428  /* vandnx128v16 */,
  &gname1428  /* vandnxx128v16 */,
  &gname1428  /* vandnxxx128v16 */,
  &gname1419  /* vandn128v32 */,
  &gname1428  /* vandnx128v32 */,
  &gname1428  /* vandnxx128v32 */,
  &gname1428  /* vandnxxx128v32 */,
  &gname1419  /* vandn128v64 */,
  &gname1428  /* vandnx128v64 */,
  &gname1428  /* vandnxx128v64 */,
  &gname1428  /* vandnxxx128v64 */,
  &gname1419  /* vpavgb */,
  &gname1428  /* vpavgbx */,
  &gname1428  /* vpavgbxx */,
  &gname1428  /* vpavgbxxx */,
  &gname1419  /* vpavgw */,
  &gname1428  /* vpavgwx */,
  &gname1428  /* vpavgwxx */,
  &gname1428  /* vpavgwxxx */,
  &gname1545  /* vblendv128v8 */,
  &gname1554  /* vblendvx128v8 */,
  &gname1554  /* vblendvxx128v8 */,
  &gname1554  /* vblendvxxx128v8 */,
  &gname1545  /* vblend128v16 */,
  &gname1554  /* vblendx128v16 */,
  &gname1554  /* vblendxx128v16 */,
  &gname1554  /* vblendxxx128v16 */,
  &gname1563  /* vpclmulqdq */,
  &gname1572  /* vpclmulqdqx */,
  &gname1572  /* vpclmulqdqxx */,
  &gname1572  /* vpclmulqdqxxx */,
  &gname1581  /* vcmpeq128v8 */,
  &gname1590  /* vcmpeqx128v8 */,
  &gname1590  /* vcmpeqxx128v8 */,
  &gname1590  /* vcmpeqxxx128v8 */,
  &gname1581  /* vcmpeq128v32 */,
  &gname1590  /* vcmpeqx128v32 */,
  &gname1590  /* vcmpeqxx128v32 */,
  &gname1590  /* vcmpeqxxx128v32 */,
  &gname1581  /* vcmpeq128v64 */,
  &gname1590  /* vcmpeqx128v64 */,
  &gname1590  /* vcmpeqxx128v64 */,
  &gname1590  /* vcmpeqxxx128v64 */,
  &gname1581  /* vcmpeq128v16 */,
  &gname1590  /* vcmpeqx128v16 */,
  &gname1590  /* vcmpeqxx128v16 */,
  &gname1590  /* vcmpeqxxx128v16 */,
  &gname1581  /* vcmpestri */,
  &gname1590  /* vcmpestrix */,
  &gname1590  /* vcmpestrixx */,
  &gname1590  /* vcmpestrixxx */,
  &gname1581  /* vcmpestrm */,
  &gname1590  /* vcmpestrmx */,
  &gname1590  /* vcmpestrmxx */,
  &gname1590  /* vcmpestrmxxx */,
  &gname1581  /* vcmpgt128v8 */,
  &gname1590  /* vcmpgtx128v8 */,
  &gname1590  /* vcmpgtxx128v8 */,
  &gname1590  /* vcmpgtxxx128v8 */,
  &gname1581  /* vcmpgt128v32 */,
  &gname1590  /* vcmpgtx128v32 */,
  &gname1590  /* vcmpgtxx128v32 */,
  &gname1590  /* vcmpgtxxx128v32 */,
  &gname1581  /* vcmpgt128v64 */,
  &gname1590  /* vcmpgtx128v64 */,
  &gname1590  /* vcmpgtxx128v64 */,
  &gname1590  /* vcmpgtxxx128v64 */,
  &gname1581  /* vcmpgt128v16 */,
  &gname1590  /* vcmpgtx128v16 */,
  &gname1590  /* vcmpgtxx128v16 */,
  &gname1590  /* vcmpgtxxx128v16 */,
  &gname1581  /* vcmpistri */,
  &gname1590  /* vcmpistrix */,
  &gname1590  /* vcmpistrixx */,
  &gname1590  /* vcmpistrixxx */,
  &gname1581  /* vcmpistrm */,
  &gname1590  /* vcmpistrmx */,
  &gname1590  /* vcmpistrmxx */,
  &gname1590  /* vcmpistrmxxx */,
  &gname1626  /* vfperm128v64 */,
  &gname1635  /* vfpermx128v64 */,
  &gname1635  /* vfpermxx128v64 */,
  &gname1635  /* vfpermxxx128v64 */,
  &gname1626  /* vfpermi128v64 */,
  &gname1635  /* vfpermix128v64 */,
  &gname1635  /* vfpermixx128v64 */,
  &gname1635  /* vfpermixxx128v64 */,
  &gname1626  /* vfperm128v32 */,
  &gname1635  /* vfpermx128v32 */,
  &gname1635  /* vfpermxx128v32 */,
  &gname1635  /* vfpermxxx128v32 */,
  &gname1626  /* vfpermi128v32 */,
  &gname1635  /* vfpermix128v32 */,
  &gname1635  /* vfpermixx128v32 */,
  &gname1635  /* vfpermixxx128v32 */,
  &gname1626  /* vfperm2f128 */,
  &gname1635  /* vfperm2xf128 */,
  &gname1635  /* vfperm2xxf128 */,
  &gname1635  /* vfperm2xxxf128 */,
  &gname1608  /* vextr128v8 */,
  &gname1617  /* vextrx128v8 */,
  &gname1617  /* vextrxx128v8 */,
  &gname1617  /* vextrxxx128v8 */,
  &gname1608  /* vextr128v32 */,
  &gname1617  /* vextrx128v32 */,
  &gname1617  /* vextrxx128v32 */,
  &gname1617  /* vextrxxx128v32 */,
  &gname1608  /* vextr128v64 */,
  &gname1617  /* vextrx128v64 */,
  &gname1617  /* vextrxx128v64 */,
  &gname1617  /* vextrxxx128v64 */,
  &gname1608  /* vextr128v16 */,
  &gname1617  /* vextrx128v16 */,
  &gname1617  /* vextrxx128v16 */,
  &gname1617  /* vextrxxx128v16 */,
  &gname1626  /* vphadd128v32 */,
  &gname1635  /* vphaddx128v32 */,
  &gname1635  /* vphaddxx128v32 */,
  &gname1635  /* vphaddxxx128v32 */,
  &gname1626  /* vphadds128v16 */,
  &gname1635  /* vphaddsx128v16 */,
  &gname1635  /* vphaddsxx128v16 */,
  &gname1635  /* vphaddsxxx128v16 */,
  &gname1437  /* vphadd128v16 */,
  &gname1446  /* vphaddx128v16 */,
  &gname1446  /* vphaddxx128v16 */,
  &gname1446  /* vphaddxxx128v16 */,
  &gname1608  /* vphminposuw */,
  &gname1617  /* vphminposuwx */,
  &gname1617  /* vphminposuwxx */,
  &gname1617  /* vphminposuwxxx */,
  &gname1437  /* vphsub128v32 */,
  &gname1446  /* vphsubx128v32 */,
  &gname1446  /* vphsubxx128v32 */,
  &gname1446  /* vphsubxxx128v32 */,
  &gname1437  /* vphsubs128v16 */,
  &gname1446  /* vphsubsx128v16 */,
  &gname1446  /* vphsubsxx128v16 */,
  &gname1446  /* vphsubsxxx128v16 */,
  &gname1437  /* vphsub128v16 */,
  &gname1446  /* vphsubx128v16 */,
  &gname1446  /* vphsubxx128v16 */,
  &gname1446  /* vphsubxxx128v16 */,
  &gname1608  /* vinsr128v8 */,
  &gname1617  /* vinsrx128v8 */,
  &gname1617  /* vinsrxx128v8 */,
  &gname1617  /* vinsrxxx128v8 */,
  &gname1608  /* vinsr128v32 */,
  &gname1617  /* vinsrx128v32 */,
  &gname1617  /* vinsrxx128v32 */,
  &gname1617  /* vinsrxxx128v32 */,
  &gname1608  /* vinsr128v64 */,
  &gname1617  /* vinsrx128v64 */,
  &gname1617  /* vinsrxx128v64 */,
  &gname1617  /* vinsrxxx128v64 */,
  &gname1608  /* vinsr128v16 */,
  &gname1617  /* vinsrx128v16 */,
  &gname1617  /* vinsrxx128v16 */,
  &gname1617  /* vinsrxxx128v16 */,
  &gname1455  /* vpmaddwd */,
  &gname1464  /* vpmaddwdx */,
  &gname1464  /* vpmaddwdxx */,
  &gname1464  /* vpmaddwdxxx */,
  &gname1455  /* vpmaddubsw128 */,
  &gname1464  /* vpmaddubswx128 */,
  &gname1464  /* vpmaddubswxx128 */,
  &gname1464  /* vpmaddubswxxx128 */,
  &gname1419  /* vmaxs128v8 */,
  &gname1428  /* vmaxsx128v8 */,
  &gname1428  /* vmaxsxx128v8 */,
  &gname1428  /* vmaxsxxx128v8 */,
  &gname1419  /* vmaxs128v32 */,
  &gname1428  /* vmaxsx128v32 */,
  &gname1428  /* vmaxsxx128v32 */,
  &gname1428  /* vmaxsxxx128v32 */,
  &gname1419  /* vmaxs128v16 */,
  &gname1428  /* vmaxsx128v16 */,
  &gname1428  /* vmaxsxx128v16 */,
  &gname1428  /* vmaxsxxx128v16 */,
  &gname1419  /* vmaxu128v8 */,
  &gname1428  /* vmaxux128v8 */,
  &gname1428  /* vmaxuxx128v8 */,
  &gname1428  /* vmaxuxxx128v8 */,
  &gname1419  /* vmaxu128v32 */,
  &gname1428  /* vmaxux128v32 */,
  &gname1428  /* vmaxuxx128v32 */,
  &gname1428  /* vmaxuxxx128v32 */,
  &gname1419  /* vmaxu128v16 */,
  &gname1428  /* vmaxux128v16 */,
  &gname1428  /* vmaxuxx128v16 */,
  &gname1428  /* vmaxuxxx128v16 */,
  &gname1419  /* vmins128v8 */,
  &gname1428  /* vminsx128v8 */,
  &gname1428  /* vminsxx128v8 */,
  &gname1428  /* vminsxxx128v8 */,
  &gname1419  /* vmins128v32 */,
  &gname1428  /* vminsx128v32 */,
  &gname1428  /* vminsxx128v32 */,
  &gname1428  /* vminsxxx128v32 */,
  &gname1419  /* vmins128v16 */,
  &gname1428  /* vminsx128v16 */,
  &gname1428  /* vminsxx128v16 */,
  &gname1428  /* vminsxxx128v16 */,
  &gname1419  /* vminu128v8 */,
  &gname1428  /* vminux128v8 */,
  &gname1428  /* vminuxx128v8 */,
  &gname1428  /* vminuxxx128v8 */,
  &gname1419  /* vminu128v32 */,
  &gname1428  /* vminux128v32 */,
  &gname1428  /* vminuxx128v32 */,
  &gname1428  /* vminuxxx128v32 */,
  &gname1419  /* vminu128v16 */,
  &gname1428  /* vminux128v16 */,
  &gname1428  /* vminuxx128v16 */,
  &gname1428  /* vminuxxx128v16 */,
  &gname1626  /* vpmovmskb128 */,
  &gname1626  /* vpmovsxbd */,
  &gname1635  /* vpmovsxbdx */,
  &gname1635  /* vpmovsxbdxx */,
  &gname1635  /* vpmovsxbdxxx */,
  &gname1626  /* vpmovsxbq */,
  &gname1635  /* vpmovsxbqx */,
  &gname1635  /* vpmovsxbqxx */,
  &gname1635  /* vpmovsxbqxxx */,
  &gname1626  /* vpmovsxbw */,
  &gname1635  /* vpmovsxbwx */,
  &gname1635  /* vpmovsxbwxx */,
  &gname1635  /* vpmovsxbwxxx */,
  &gname1626  /* vpmovsxdq */,
  &gname1635  /* vpmovsxdqx */,
  &gname1635  /* vpmovsxdqxx */,
  &gname1635  /* vpmovsxdqxxx */,
  &gname1626  /* vpmovsxwd */,
  &gname1635  /* vpmovsxwdx */,
  &gname1635  /* vpmovsxwdxx */,
  &gname1635  /* vpmovsxwdxxx */,
  &gname1626  /* vpmovsxwq */,
  &gname1635  /* vpmovsxwqx */,
  &gname1635  /* vpmovsxwqxx */,
  &gname1635  /* vpmovsxwqxxx */,
  &gname1626  /* vpmovzxbd */,
  &gname1635  /* vpmovzxbdx */,
  &gname1635  /* vpmovzxbdxx */,
  &gname1635  /* vpmovzxbdxxx */,
  &gname1626  /* vpmovzxbq */,
  &gname1635  /* vpmovzxbqx */,
  &gname1635  /* vpmovzxbqxx */,
  &gname1635  /* vpmovzxbqxxx */,
  &gname1626  /* vpmovzxbw */,
  &gname1635  /* vpmovzxbwx */,
  &gname1635  /* vpmovzxbwxx */,
  &gname1635  /* vpmovzxbwxxx */,
  &gname1626  /* vpmovzxdq */,
  &gname1635  /* vpmovzxdqx */,
  &gname1635  /* vpmovzxdqxx */,
  &gname1635  /* vpmovzxdqxxx */,
  &gname1626  /* vpmovzxwd */,
  &gname1635  /* vpmovzxwdx */,
  &gname1635  /* vpmovzxwdxx */,
  &gname1635  /* vpmovzxwdxxx */,
  &gname1626  /* vpmovzxwq */,
  &gname1635  /* vpmovzxwqx */,
  &gname1635  /* vpmovzxwqxx */,
  &gname1635  /* vpmovzxwqxxx */,
  &gname1527  /* vmulhuw */,
  &gname1536  /* vmulhuwx */,
  &gname1536  /* vmulhuwxx */,
  &gname1536  /* vmulhuwxxx */,
  &gname1527  /* vmulhrsw */,
  &gname1536  /* vmulhrswx */,
  &gname1536  /* vmulhrswxx */,
  &gname1536  /* vmulhrswxxx */,
  &gname1527  /* vmulhw */,
  &gname1536  /* vmulhwx */,
  &gname1536  /* vmulhwxx */,
  &gname1536  /* vmulhwxxx */,
  &gname1527  /* vmulld */,
  &gname1536  /* vmulldx */,
  &gname1536  /* vmulldxx */,
  &gname1536  /* vmulldxxx */,
  &gname1527  /* vmul128v16 */,
  &gname1536  /* vmulx128v16 */,
  &gname1536  /* vmulxx128v16 */,
  &gname1536  /* vmulxxx128v16 */,
  &gname1527  /* vmul128v32 */,
  &gname1536  /* vmulx128v32 */,
  &gname1536  /* vmulxx128v32 */,
  &gname1536  /* vmulxxx128v32 */,
  &gname1527  /* vmuludq */,
  &gname1536  /* vmuludqx */,
  &gname1536  /* vmuludqxx */,
  &gname1536  /* vmuludqxxx */,
  &gname1527  /* vmuldq */,
  &gname1536  /* vmuldqx */,
  &gname1536  /* vmuldqxx */,
  &gname1536  /* vmuldqxxx */,
  &gname1419  /* vor128v8 */,
  &gname1428  /* vorx128v8 */,
  &gname1428  /* vorxx128v8 */,
  &gname1428  /* vorxxx128v8 */,
  &gname1419  /* vor128v16 */,
  &gname1428  /* vorx128v16 */,
  &gname1428  /* vorxx128v16 */,
  &gname1428  /* vorxxx128v16 */,
  &gname1419  /* vor128v32 */,
  &gname1428  /* vorx128v32 */,
  &gname1428  /* vorxx128v32 */,
  &gname1428  /* vorxxx128v32 */,
  &gname1419  /* vor128v64 */,
  &gname1428  /* vorx128v64 */,
  &gname1428  /* vorxx128v64 */,
  &gname1428  /* vorxxx128v64 */,
  &gname1608  /* vpsadbw */,
  &gname1617  /* vpsadbwx */,
  &gname1617  /* vpsadbwxx */,
  &gname1617  /* vpsadbwxxx */,
  &gname1419  /* vpshuf128v8 */,
  &gname1428  /* vpshufx128v8 */,
  &gname1428  /* vpshufxx128v8 */,
  &gname1428  /* vpshufxxx128v8 */,
  &gname1419  /* vpshuf128v32 */,
  &gname1428  /* vpshufx128v32 */,
  &gname1428  /* vpshufxx128v32 */,
  &gname1428  /* vpshufxxx128v32 */,
  &gname1419  /* vpshufw64v16 */,
  &gname1428  /* vpshufwx64v16 */,
  &gname1428  /* vpshufwxx64v16 */,
  &gname1428  /* vpshufwxxx64v16 */,
  &gname1419  /* vpshufhw */,
  &gname1428  /* vpshufhwx */,
  &gname1428  /* vpshufhwxx */,
  &gname1428  /* vpshufhwxxx */,
  &gname1419  /* vpshuflw */,
  &gname1428  /* vpshuflwx */,
  &gname1428  /* vpshuflwxx */,
  &gname1428  /* vpshuflwxxx */,
  &gname1608  /* vpsign128v8 */,
  &gname1617  /* vpsignx128v8 */,
  &gname1617  /* vpsignxx128v8 */,
  &gname1617  /* vpsignxxx128v8 */,
  &gname1608  /* vpsign128v32 */,
  &gname1617  /* vpsignx128v32 */,
  &gname1617  /* vpsignxx128v32 */,
  &gname1617  /* vpsignxxx128v32 */,
  &gname1608  /* vpsign128v16 */,
  &gname1617  /* vpsignx128v16 */,
  &gname1617  /* vpsignxx128v16 */,
  &gname1617  /* vpsignxxx128v16 */,
  &gname1608  /* vpslldq */,
  &gname1608  /* vpsrldq */,
  &gname1608  /* vpslld */,
  &gname1617  /* vpslldx */,
  &gname1617  /* vpslldxx */,
  &gname1617  /* vpslldxxx */,
  &gname1608  /* vpslldi */,
  &gname1608  /* vpsllq */,
  &gname1617  /* vpsllqx */,
  &gname1617  /* vpsllqxx */,
  &gname1617  /* vpsllqxxx */,
  &gname1608  /* vpsllqi */,
  &gname1608  /* vpsllw */,
  &gname1617  /* vpsllwx */,
  &gname1617  /* vpsllwxx */,
  &gname1617  /* vpsllwxxx */,
  &gname1608  /* vpsllwi */,
  &gname1608  /* vpsrad */,
  &gname1617  /* vpsradx */,
  &gname1617  /* vpsradxx */,
  &gname1617  /* vpsradxxx */,
  &gname1608  /* vpsradi */,
  &gname1608  /* vpsraw */,
  &gname1617  /* vpsrawx */,
  &gname1617  /* vpsrawxx */,
  &gname1617  /* vpsrawxxx */,
  &gname1608  /* vpsrawi */,
  &gname1608  /* vpsrld */,
  &gname1617  /* vpsrldx */,
  &gname1617  /* vpsrldxx */,
  &gname1617  /* vpsrldxxx */,
  &gname1608  /* vpsrldi */,
  &gname1608  /* vpsrlq */,
  &gname1617  /* vpsrlqx */,
  &gname1617  /* vpsrlqxx */,
  &gname1617  /* vpsrlqxxx */,
  &gname1608  /* vpsrlqi */,
  &gname1608  /* vpsrlw */,
  &gname1617  /* vpsrlwx */,
  &gname1617  /* vpsrlwxx */,
  &gname1617  /* vpsrlwxxx */,
  &gname1608  /* vpsrlwi */,
  &gname1608  /* vsub128v8 */,
  &gname1617  /* vsubx128v8 */,
  &gname1617  /* vsubxx128v8 */,
  &gname1617  /* vsubxxx128v8 */,
  &gname1608  /* vsub128v32 */,
  &gname1617  /* vsubx128v32 */,
  &gname1617  /* vsubxx128v32 */,
  &gname1617  /* vsubxxx128v32 */,
  &gname1608  /* vsub128v64 */,
  &gname1617  /* vsubx128v64 */,
  &gname1617  /* vsubxx128v64 */,
  &gname1617  /* vsubxxx128v64 */,
  &gname1608  /* vsub128v16 */,
  &gname1617  /* vsubx128v16 */,
  &gname1617  /* vsubxx128v16 */,
  &gname1617  /* vsubxxx128v16 */,
  &gname1608  /* vsubs128v8 */,
  &gname1617  /* vsubsx128v8 */,
  &gname1617  /* vsubsxx128v8 */,
  &gname1617  /* vsubsxxx128v8 */,
  &gname1608  /* vsubs128v16 */,
  &gname1617  /* vsubsx128v16 */,
  &gname1617  /* vsubsxx128v16 */,
  &gname1617  /* vsubsxxx128v16 */,
  &gname1608  /* vsubus128v8 */,
  &gname1617  /* vsubusx128v8 */,
  &gname1617  /* vsubusxx128v8 */,
  &gname1617  /* vsubusxxx128v8 */,
  &gname1608  /* vsubus128v16 */,
  &gname1617  /* vsubusx128v16 */,
  &gname1617  /* vsubusxx128v16 */,
  &gname1617  /* vsubusxxx128v16 */,
  &gname1680  /* vptest128 */,
  &gname1689  /* vptestx128 */,
  &gname1689  /* vptestxx128 */,
  &gname1689  /* vptestxxx128 */,
  &gname1680  /* vtestpd */,
  &gname1689  /* vtestxpd */,
  &gname1689  /* vtestxxpd */,
  &gname1689  /* vtestxxxpd */,
  &gname1680  /* vtestps */,
  &gname1689  /* vtestxps */,
  &gname1689  /* vtestxxps */,
  &gname1689  /* vtestxxxps */,
  &gname1626  /* vpunpckh64v8 */,
  &gname1635  /* vpunpckhx64v8 */,
  &gname1635  /* vpunpckhxx64v8 */,
  &gname1635  /* vpunpckhxxx64v8 */,
  &gname1626  /* vpunpckh64v32 */,
  &gname1635  /* vpunpckhx64v32 */,
  &gname1635  /* vpunpckhxx64v32 */,
  &gname1635  /* vpunpckhxxx64v32 */,
  &gname1626  /* vpunpckh64v16 */,
  &gname1635  /* vpunpckhx64v16 */,
  &gname1635  /* vpunpckhxx64v16 */,
  &gname1635  /* vpunpckhxxx64v16 */,
  &gname1626  /* vpunpckh64v64 */,
  &gname1635  /* vpunpckhx64v64 */,
  &gname1635  /* vpunpckhxx64v64 */,
  &gname1635  /* vpunpckhxxx64v64 */,
  &gname1626  /* vpunpckl64v8 */,
  &gname1635  /* vpunpcklx64v8 */,
  &gname1635  /* vpunpcklxx64v8 */,
  &gname1635  /* vpunpcklxxx64v8 */,
  &gname1626  /* vpunpckl64v32 */,
  &gname1635  /* vpunpcklx64v32 */,
  &gname1635  /* vpunpcklxx64v32 */,
  &gname1635  /* vpunpcklxxx64v32 */,
  &gname1626  /* vpunpckl64v16 */,
  &gname1635  /* vpunpcklx64v16 */,
  &gname1635  /* vpunpcklxx64v16 */,
  &gname1635  /* vpunpcklxxx64v16 */,
  &gname1626  /* vpunpckl64v64 */,
  &gname1635  /* vpunpcklx64v64 */,
  &gname1635  /* vpunpcklxx64v64 */,
  &gname1635  /* vpunpcklxxx64v64 */,
  &gname1419  /* vxor128v8 */,
  &gname1428  /* vxorx128v8 */,
  &gname1428  /* vxorxx128v8 */,
  &gname1428  /* vxorxxx128v8 */,
  &gname1419  /* vxor128v16 */,
  &gname1428  /* vxorx128v16 */,
  &gname1428  /* vxorxx128v16 */,
  &gname1428  /* vxorxxx128v16 */,
  &gname1419  /* vxor128v32 */,
  &gname1428  /* vxorx128v32 */,
  &gname1428  /* vxorxx128v32 */,
  &gname1428  /* vxorxxx128v32 */,
  &gname1419  /* vxor128v64 */,
  &gname1428  /* vxorx128v64 */,
  &gname1428  /* vxorxx128v64 */,
  &gname1428  /* vxorxxx128v64 */,
  &gname1626  /* vfrcp128v32 */,
  &gname1635  /* vfrcpx128v32 */,
  &gname1635  /* vfrcpxx128v32 */,
  &gname1635  /* vfrcpxxx128v32 */,
  &gname1626  /* vfrcpss */,
  &gname1635  /* vfrcpxss */,
  &gname1635  /* vfrcpxxss */,
  &gname1635  /* vfrcpxxxss */,
  &gname1437  /* vround128v64 */,
  &gname1446  /* vroundx128v64 */,
  &gname1446  /* vroundxx128v64 */,
  &gname1446  /* vroundxxx128v64 */,
  &gname1437  /* vround128v32 */,
  &gname1446  /* vroundx128v32 */,
  &gname1446  /* vroundxx128v32 */,
  &gname1446  /* vroundxxx128v32 */,
  &gname1437  /* vroundsd */,
  &gname1446  /* vroundxsd */,
  &gname1446  /* vroundxxsd */,
  &gname1446  /* vroundxxxsd */,
  &gname1437  /* vroundss */,
  &gname1446  /* vroundxss */,
  &gname1446  /* vroundxxss */,
  &gname1446  /* vroundxxxss */,
  &gname1473  /* vfrsqrt128v32 */,
  &gname1482  /* vfrsqrtx128v32 */,
  &gname1482  /* vfrsqrtxx128v32 */,
  &gname1482  /* vfrsqrtxxx128v32 */,
  &gname1473  /* vfrsqrtss */,
  &gname1482  /* vfrsqrtxss */,
  &gname1482  /* vfrsqrtxxss */,
  &gname1482  /* vfrsqrtxxxss */,
  &gname1626  /* vshufpd */,
  &gname1626  /* vfshuf128v64 */,
  &gname1635  /* vfshufx128v64 */,
  &gname1635  /* vfshufxx128v64 */,
  &gname1635  /* vfshufxxx128v64 */,
  &gname1626  /* vshufps */,
  &gname1626  /* vfshuf128v32 */,
  &gname1635  /* vfshufx128v32 */,
  &gname1635  /* vfshufxx128v32 */,
  &gname1635  /* vfshufxxx128v32 */,
  &gname1491  /* vfsqrt128v64 */,
  &gname1500  /* vfsqrtx128v64 */,
  &gname1500  /* vfsqrtxx128v64 */,
  &gname1500  /* vfsqrtxxx128v64 */,
  &gname1491  /* vfsqrt128v32 */,
  &gname1500  /* vfsqrtx128v32 */,
  &gname1500  /* vfsqrtxx128v32 */,
  &gname1500  /* vfsqrtxxx128v32 */,
  &gname1491  /* vfsqrtsd */,
  &gname1500  /* vfsqrtxsd */,
  &gname1500  /* vfsqrtxxsd */,
  &gname1500  /* vfsqrtxxxsd */,
  &gname1491  /* vfsqrtss */,
  &gname1500  /* vfsqrtxss */,
  &gname1500  /* vfsqrtxxss */,
  &gname1500  /* vfsqrtxxxss */,
  &gname1716  /* vstmxcsr */,
  &gname1626  /* vfsub128v64 */,
  &gname1635  /* vfsubx128v64 */,
  &gname1635  /* vfsubxx128v64 */,
  &gname1635  /* vfsubxxx128v64 */,
  &gname1626  /* vfsub128v32 */,
  &gname1635  /* vfsubx128v32 */,
  &gname1635  /* vfsubxx128v32 */,
  &gname1635  /* vfsubxxx128v32 */,
  &gname1626  /* vsubsd */,
  &gname1635  /* vsubxsd */,
  &gname1635  /* vsubxxsd */,
  &gname1635  /* vsubxxxsd */,
  &gname1626  /* vsubss */,
  &gname1635  /* vsubxss */,
  &gname1635  /* vsubxxss */,
  &gname1635  /* vsubxxxss */,
  &gname1626  /* vucomisd */,
  &gname1635  /* vucomixsd */,
  &gname1635  /* vucomixxsd */,
  &gname1635  /* vucomixxxsd */,
  &gname1626  /* vucomiss */,
  &gname1635  /* vucomixss */,
  &gname1635  /* vucomixxss */,
  &gname1635  /* vucomixxxss */,
  &gname1626  /* vunpckh128v64 */,
  &gname1635  /* vunpckhx128v64 */,
  &gname1635  /* vunpckhxx128v64 */,
  &gname1635  /* vunpckhxxx128v64 */,
  &gname1626  /* vunpckh128v32 */,
  &gname1635  /* vunpckhx128v32 */,
  &gname1635  /* vunpckhxx128v32 */,
  &gname1635  /* vunpckhxxx128v32 */,
  &gname1626  /* vunpckl128v64 */,
  &gname1635  /* vunpcklx128v64 */,
  &gname1635  /* vunpcklxx128v64 */,
  &gname1635  /* vunpcklxxx128v64 */,
  &gname1626  /* vunpckl128v32 */,
  &gname1635  /* vunpcklx128v32 */,
  &gname1635  /* vunpcklxx128v32 */,
  &gname1635  /* vunpcklxxx128v32 */,
  &gname1626  /* vxorpd */,
  &gname1626  /* vfxor128v64 */,
  &gname1446  /* vfxorx128v64 */,
  &gname1446  /* vfxorxx128v64 */,
  &gname1446  /* vfxorxxx128v64 */,
  &gname1626  /* vxzero128v64 */,
  &gname1626  /* vxzero64 */,
  &gname1626  /* vxorps */,
  &gname1626  /* vfxor128v32 */,
  &gname1635  /* vfxorx128v32 */,
  &gname1635  /* vfxorxx128v32 */,
  &gname1635  /* vfxorxxx128v32 */,
  &gname1626  /* vxzero128v32 */,
  &gname1626  /* vxzero32 */,
  &gname915   /* vzeroall */,
  &gname1752  /* xfmadd132pd */,
  &gname1761  /* xfmadd132xpd */,
  &gname1761  /* xfmadd132xxpd */,
  &gname1761  /* xfmadd132xxxpd */,
  &gname1752  /* xfmadd213pd */,
  &gname1761  /* xfmadd213xpd */,
  &gname1761  /* xfmadd213xxpd */,
  &gname1761  /* xfmadd213xxxpd */,
  &gname1752  /* xfmadd231pd */,
  &gname1761  /* xfmadd231xpd */,
  &gname1761  /* xfmadd231xxpd */,
  &gname1761  /* xfmadd231xxxpd */,
  &gname1752  /* xfmadd132ps */,
  &gname1761  /* xfmadd132xps */,
  &gname1761  /* xfmadd132xxps */,
  &gname1761  /* xfmadd132xxxps */,
  &gname1752  /* xfmadd213ps */,
  &gname1761  /* xfmadd213xps */,
  &gname1761  /* xfmadd213xxps */,
  &gname1761  /* xfmadd213xxxps */,
  &gname1752  /* xfmadd231ps */,
  &gname1761  /* xfmadd231xps */,
  &gname1761  /* xfmadd231xxps */,
  &gname1761  /* xfmadd231xxxps */,
  &gname1752  /* xfmadd132sd */,
  &gname1761  /* xfmadd132xsd */,
  &gname1761  /* xfmadd132xxsd */,
  &gname1761  /* xfmadd132xxxsd */,
  &gname1752  /* xfmadd213sd */,
  &gname1761  /* xfmadd213xsd */,
  &gname1761  /* xfmadd213xxsd */,
  &gname1761  /* xfmadd213xxxsd */,
  &gname1752  /* xfmadd231sd */,
  &gname1761  /* xfmadd231xsd */,
  &gname1761  /* xfmadd231xxsd */,
  &gname1761  /* xfmadd231xxxsd */,
  &gname1752  /* xfmadd132ss */,
  &gname1761  /* xfmadd132xss */,
  &gname1761  /* xfmadd132xxss */,
  &gname1761  /* xfmadd132xxxss */,
  &gname1752  /* xfmadd213ss */,
  &gname1761  /* xfmadd213xss */,
  &gname1761  /* xfmadd213xxss */,
  &gname1761  /* xfmadd213xxxss */,
  &gname1752  /* xfmadd231ss */,
  &gname1761  /* xfmadd231xss */,
  &gname1761  /* xfmadd231xxss */,
  &gname1761  /* xfmadd231xxxss */,
  &gname1752  /* xfmaddsub132pd */,
  &gname1761  /* xfmaddsub132xpd */,
  &gname1761  /* xfmaddsub132xxpd */,
  &gname1761  /* xfmaddsub132xxxpd */,
  &gname1752  /* xfmaddsub213pd */,
  &gname1761  /* xfmaddsub213xpd */,
  &gname1761  /* xfmaddsub213xxpd */,
  &gname1761  /* xfmaddsub213xxxpd */,
  &gname1752  /* xfmaddsub231pd */,
  &gname1761  /* xfmaddsub231xpd */,
  &gname1761  /* xfmaddsub231xxpd */,
  &gname1761  /* xfmaddsub231xxxpd */,
  &gname1752  /* xfmaddsub132ps */,
  &gname1761  /* xfmaddsub132xps */,
  &gname1761  /* xfmaddsub132xxps */,
  &gname1761  /* xfmaddsub132xxxps */,
  &gname1752  /* xfmaddsub213ps */,
  &gname1761  /* xfmaddsub213xps */,
  &gname1761  /* xfmaddsub213xxps */,
  &gname1761  /* xfmaddsub213xxxps */,
  &gname1752  /* xfmaddsub231ps */,
  &gname1761  /* xfmaddsub231xps */,
  &gname1761  /* xfmaddsub231xxps */,
  &gname1761  /* xfmaddsub231xxxps */,
  &gname1752  /* xfmsubadd132pd */,
  &gname1761  /* xfmsubadd132xpd */,
  &gname1761  /* xfmsubadd132xxpd */,
  &gname1761  /* xfmsubadd132xxxpd */,
  &gname1752  /* xfmsubadd213pd */,
  &gname1761  /* xfmsubadd213xpd */,
  &gname1761  /* xfmsubadd213xxpd */,
  &gname1761  /* xfmsubadd213xxxpd */,
  &gname1752  /* xfmsubadd231pd */,
  &gname1761  /* xfmsubadd231xpd */,
  &gname1761  /* xfmsubadd231xxpd */,
  &gname1761  /* xfmsubadd231xxxpd */,
  &gname1752  /* xfmsubadd132ps */,
  &gname1761  /* xfmsubadd132xps */,
  &gname1761  /* xfmsubadd132xxps */,
  &gname1761  /* xfmsubadd132xxxps */,
  &gname1752  /* xfmsubadd213ps */,
  &gname1761  /* xfmsubadd213xps */,
  &gname1761  /* xfmsubadd213xxps */,
  &gname1761  /* xfmsubadd213xxxps */,
  &gname1752  /* xfmsubadd231ps */,
  &gname1761  /* xfmsubadd231xps */,
  &gname1761  /* xfmsubadd231xxps */,
  &gname1761  /* xfmsubadd231xxxps */,
  &gname1752  /* xfmsub132pd */,
  &gname1761  /* xfmsub132xpd */,
  &gname1761  /* xfmsub132xxpd */,
  &gname1761  /* xfmsub132xxxpd */,
  &gname1752  /* xfmsub213pd */,
  &gname1761  /* xfmsub213xpd */,
  &gname1761  /* xfmsub213xxpd */,
  &gname1761  /* xfmsub213xxxpd */,
  &gname1752  /* xfmsub231pd */,
  &gname1761  /* xfmsub231xpd */,
  &gname1761  /* xfmsub231xxpd */,
  &gname1761  /* xfmsub231xxxpd */,
  &gname1752  /* xfmsub132ps */,
  &gname1761  /* xfmsub132xps */,
  &gname1761  /* xfmsub132xxps */,
  &gname1761  /* xfmsub132xxxps */,
  &gname1752  /* xfmsub213ps */,
  &gname1761  /* xfmsub213xps */,
  &gname1761  /* xfmsub213xxps */,
  &gname1761  /* xfmsub213xxxps */,
  &gname1752  /* xfmsub231ps */,
  &gname1761  /* xfmsub231xps */,
  &gname1761  /* xfmsub231xxps */,
  &gname1761  /* xfmsub231xxxps */,
  &gname1752  /* xfmsub132sd */,
  &gname1761  /* xfmsub132xsd */,
  &gname1761  /* xfmsub132xxsd */,
  &gname1761  /* xfmsub132xxxsd */,
  &gname1752  /* xfmsub213sd */,
  &gname1761  /* xfmsub213xsd */,
  &gname1761  /* xfmsub213xxsd */,
  &gname1761  /* xfmsub213xxxsd */,
  &gname1752  /* xfmsub231sd */,
  &gname1761  /* xfmsub231xsd */,
  &gname1761  /* xfmsub231xxsd */,
  &gname1761  /* xfmsub231xxxsd */,
  &gname1752  /* xfmsub132ss */,
  &gname1761  /* xfmsub132xss */,
  &gname1761  /* xfmsub132xxss */,
  &gname1761  /* xfmsub132xxxss */,
  &gname1752  /* xfmsub213ss */,
  &gname1761  /* xfmsub213xss */,
  &gname1761  /* xfmsub213xxss */,
  &gname1761  /* xfmsub213xxxss */,
  &gname1752  /* xfmsub231ss */,
  &gname1761  /* xfmsub231xss */,
  &gname1761  /* xfmsub231xxss */,
  &gname1761  /* xfmsub231xxxss */,
  &gname1752  /* xfnmadd132pd */,
  &gname1761  /* xfnmadd132xpd */,
  &gname1761  /* xfnmadd132xxpd */,
  &gname1761  /* xfnmadd132xxxpd */,
  &gname1752  /* xfnmadd213pd */,
  &gname1761  /* xfnmadd213xpd */,
  &gname1761  /* xfnmadd213xxpd */,
  &gname1761  /* xfnmadd213xxxpd */,
  &gname1752  /* xfnmadd231pd */,
  &gname1761  /* xfnmadd231xpd */,
  &gname1761  /* xfnmadd231xxpd */,
  &gname1761  /* xfnmadd231xxxpd */,
  &gname1752  /* xfnmadd132ps */,
  &gname1761  /* xfnmadd132xps */,
  &gname1761  /* xfnmadd132xxps */,
  &gname1761  /* xfnmadd132xxxps */,
  &gname1752  /* xfnmadd213ps */,
  &gname1761  /* xfnmadd213xps */,
  &gname1761  /* xfnmadd213xxps */,
  &gname1761  /* xfnmadd213xxxps */,
  &gname1752  /* xfnmadd231ps */,
  &gname1761  /* xfnmadd231xps */,
  &gname1761  /* xfnmadd231xxps */,
  &gname1761  /* xfnmadd231xxxps */,
  &gname1752  /* xfnmadd132sd */,
  &gname1761  /* xfnmadd132xsd */,
  &gname1761  /* xfnmadd132xxsd */,
  &gname1761  /* xfnmadd132xxxsd */,
  &gname1752  /* xfnmadd213sd */,
  &gname1761  /* xfnmadd213xsd */,
  &gname1761  /* xfnmadd213xxsd */,
  &gname1761  /* xfnmadd213xxxsd */,
  &gname1752  /* xfnmadd231sd */,
  &gname1761  /* xfnmadd231xsd */,
  &gname1761  /* xfnmadd231xxsd */,
  &gname1761  /* xfnmadd231xxxsd */,
  &gname1752  /* xfnmadd132ss */,
  &gname1761  /* xfnmadd132xss */,
  &gname1761  /* xfnmadd132xxss */,
  &gname1761  /* xfnmadd132xxxss */,
  &gname1752  /* xfnmadd213ss */,
  &gname1761  /* xfnmadd213xss */,
  &gname1761  /* xfnmadd213xxss */,
  &gname1761  /* xfnmadd213xxxss */,
  &gname1752  /* xfnmadd231ss */,
  &gname1761  /* xfnmadd231xss */,
  &gname1761  /* xfnmadd231xxss */,
  &gname1761  /* xfnmadd231xxxss */,
  &gname1752  /* xfnmsub132pd */,
  &gname1761  /* xfnmsub132xpd */,
  &gname1761  /* xfnmsub132xxpd */,
  &gname1761  /* xfnmsub132xxxpd */,
  &gname1752  /* xfnmsub213pd */,
  &gname1761  /* xfnmsub213xpd */,
  &gname1761  /* xfnmsub213xxpd */,
  &gname1761  /* xfnmsub213xxxpd */,
  &gname1752  /* xfnmsub231pd */,
  &gname1761  /* xfnmsub231xpd */,
  &gname1761  /* xfnmsub231xxpd */,
  &gname1761  /* xfnmsub231xxxpd */,
  &gname1752  /* xfnmsub132ps */,
  &gname1761  /* xfnmsub132xps */,
  &gname1761  /* xfnmsub132xxps */,
  &gname1761  /* xfnmsub132xxxps */,
  &gname1752  /* xfnmsub213ps */,
  &gname1761  /* xfnmsub213xps */,
  &gname1761  /* xfnmsub213xxps */,
  &gname1761  /* xfnmsub213xxxps */,
  &gname1752  /* xfnmsub231ps */,
  &gname1761  /* xfnmsub231xps */,
  &gname1761  /* xfnmsub231xxps */,
  &gname1761  /* xfnmsub231xxxps */,
  &gname1752  /* xfnmsub132sd */,
  &gname1761  /* xfnmsub132xsd */,
  &gname1761  /* xfnmsub132xxsd */,
  &gname1761  /* xfnmsub132xxxsd */,
  &gname1752  /* xfnmsub213sd */,
  &gname1761  /* xfnmsub213xsd */,
  &gname1761  /* xfnmsub213xxsd */,
  &gname1761  /* xfnmsub213xxxsd */,
  &gname1752  /* xfnmsub231sd */,
  &gname1761  /* xfnmsub231xsd */,
  &gname1761  /* xfnmsub231xxsd */,
  &gname1761  /* xfnmsub231xxxsd */,
  &gname1752  /* xfnmsub132ss */,
  &gname1761  /* xfnmsub132xss */,
  &gname1761  /* xfnmsub132xxss */,
  &gname1761  /* xfnmsub132xxxss */,
  &gname1752  /* xfnmsub213ss */,
  &gname1761  /* xfnmsub213xss */,
  &gname1761  /* xfnmsub213xxss */,
  &gname1761  /* xfnmsub213xxxss */,
  &gname1752  /* xfnmsub231ss */,
  &gname1761  /* xfnmsub231xss */,
  &gname1761  /* xfnmsub231xxss */,
  &gname1761  /* xfnmsub231xxxss */,
  &gname15    /* movabsq */,
  &gname186   /* store8_abs */,
  &gname186   /* store16_abs */,
  &gname186   /* store32_abs */,
  &gname186   /* store64_abs */,
  &gname168   /* ld8_abs */,
  &gname168   /* ld16_abs */,
  &gname177   /* ld32_abs */,
  &gname177   /* ld64_abs */,
  &gname24    /* lock_add32 */,
  &gname24    /* lock_adc32 */,
  &gname24    /* lock_add64 */,
  &gname24    /* lock_xchg32 */,
  &gname24    /* lock_xchg64 */,
  &gname24    /* lock_cmpxchg32 */,
  &gname24    /* lock_cmpxchg64 */,
  &gname24    /* lock_and32 */,
  &gname24    /* lock_and64 */,
  &gname24    /* lock_or32 */,
  &gname24    /* lock_or64 */,
  &gname24    /* lock_xor32 */,
  &gname24    /* lock_xor64 */,
  &gname24    /* lock_sub32 */,
  &gname24    /* lock_sub64 */,
  &gname24    /* lock_add8 */,
  &gname24    /* lock_add16 */,
  &gname24    /* lock_xchg8 */,
  &gname24    /* lock_xchg16 */,
  &gname24    /* lock_cmpxchg8 */,
  &gname24    /* lock_cmpxchg16 */,
  &gname24    /* lock_and8 */,
  &gname24    /* lock_and16 */,
  &gname24    /* lock_or8 */,
  &gname24    /* lock_or16 */,
  &gname24    /* lock_xor8 */,
  &gname24    /* lock_xor16 */,
  &gname24    /* lock_sub8 */,
  &gname24    /* lock_sub16 */,
  &gname24    /* lock_xadd8 */,
  &gname24    /* lock_xadd16 */,
  &gname24    /* lock_xadd32 */,
  &gname24    /* lock_xadd64 */,
  &gname15    /* bsf32 */,
  &gname15    /* bsf64 */,
  &gname15    /* bsr32 */,
  &gname15    /* bsr64 */,
  &gname78    /* tls_global_dynamic_64 */,
  &gname78    /* tls_global_dynamic_32 */,
  &gname78    /* tls_local_dynamic_64 */,
  &gname78    /* tls_local_dynamic_32 */,
  &gname0     /* begin_pregtn */,
  &gname0     /* end_pregtn */,
  &gname0     /* bwd_bar */,
  &gname0     /* fwd_bar */,
  &gname0     /* label */,
  &gname888   /* nop */,
  &gname0     /* noop */
};
const char * sanity_check_targ_so_name = "em64t.so";
