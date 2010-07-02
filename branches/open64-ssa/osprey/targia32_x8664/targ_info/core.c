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

/* Instruction group core simple alu */
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
  "core simple alu",
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
static const mUINT8 latency30[] = {3,3};
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
static const mUINT8 latency39[] = {3,3};
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
static const mUINT8 latency138[] = {18,18};
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
static const mUINT8 latency147[] = {32,32};
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
static const mUINT8 latency156[] = {22,22};
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
static const mUINT8 latency165[] = {32,32};
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
static const mUINT8 latency174[] = {3,3};
static SI gname168 = {
  "load8_16/32/64",
  18             , /* id */
  latency173     , /* operand latency */
  latency174     , /* result latency */
  3              , /* load access time */
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
static const mUINT8 latency210[] = {29,29};
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
static const mUINT8 latency219[] = {58,58};
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
static const mUINT8 latency228[] = {1,1};
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

/* Instruction group float-mov-cmp */
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
  "float-mov-cmp",
  25             , /* id */
  latency236     , /* operand latency */
  latency237     , /* result latency */
  0              , /* load access time */
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

/* Instruction group float-load */
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
static const mUINT8 latency246[] = {3,3};
static SI gname240 = {
  "float-load",
  26             , /* id */
  latency245     , /* operand latency */
  latency246     , /* result latency */
  3              , /* load access time */
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

/* Instruction group float-load vector */
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
static const mUINT8 latency255[] = {3,3};
static SI gname249 = {
  "float-load vector",
  27             , /* id */
  latency254     , /* operand latency */
  latency255     , /* result latency */
  3              , /* load access time */
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

/* Instruction group float-load vector II */
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
static const mUINT8 latency264[] = {3,3};
static SI gname258 = {
  "float-load vector II",
  28             , /* id */
  latency263     , /* operand latency */
  latency264     , /* result latency */
  3              , /* load access time */
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

/* Instruction group float-load vector low-high packed-single */
static const SI_RRW res_req268[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname270[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname269[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency272[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency273[] = {3,3};
static SI gname267 = {
  "float-load vector low-high packed-single",
  29             , /* id */
  latency272     , /* operand latency */
  latency273     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
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

/* Instruction group float-store vector low-high packed-single */
static const SI_RRW res_req277[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname279[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname278[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency281[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency282[] = {3,3};
static SI gname276 = {
  "float-store vector low-high packed-single",
  30             , /* id */
  latency281     , /* operand latency */
  latency282     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
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

/* Instruction group float-load vector low-high packed-double */
static const SI_RRW res_req286[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname288[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname287[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency290[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency291[] = {3,3};
static SI gname285 = {
  "float-load vector low-high packed-double",
  31             , /* id */
  latency290     , /* operand latency */
  latency291     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
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

/* Instruction group float-store vector low-high packed-double */
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
static const mUINT8 latency300[] = {3,3};
static SI gname294 = {
  "float-store vector low-high packed-double",
  32             , /* id */
  latency299     , /* operand latency */
  latency300     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
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

/* Instruction group float-store */
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
static const mUINT8 latency309[] = {3,3};
static SI gname303 = {
  "float-store",
  33             , /* id */
  latency308     , /* operand latency */
  latency309     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
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

/* Instruction group float-store vector */
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
  "float-store vector",
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

/* Instruction group float-store vector II */
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
static const mUINT8 latency327[] = {3,3};
static SI gname321 = {
  "float-store vector II",
  35             , /* id */
  latency326     , /* operand latency */
  latency327     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
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

/* Instruction group vector cvt I */
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
static const mUINT8 latency336[] = {4,4};
static SI gname330 = {
  "vector cvt I",
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

/* Instruction group vector cvt II */
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
static const mUINT8 latency345[] = {2,2};
static SI gname339 = {
  "vector cvt II",
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

/* Instruction group vector cvt III */
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
static const mUINT8 latency354[] = {4,4};
static SI gname348 = {
  "vector cvt III",
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

/* Instruction group vector cvt IV */
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
static const mUINT8 latency363[] = {3,3};
static SI gname357 = {
  "vector cvt IV",
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

/* Instruction group vector cvt I w/ memory operand */
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
static const mUINT8 latency372[] = {6,6};
static SI gname366 = {
  "vector cvt I w/ memory operand",
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

/* Instruction group vector cvt II w/ memory operand */
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
static const mUINT8 latency381[] = {4,4};
static SI gname375 = {
  "vector cvt II w/ memory operand",
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

/* Instruction group vector cvt III w/ memory operand */
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
static const mUINT8 latency390[] = {6,6};
static SI gname384 = {
  "vector cvt III w/ memory operand",
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

/* Instruction group vector cvt IV w/ memory operand */
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
static const mUINT8 latency399[] = {5,5};
static SI gname393 = {
  "vector cvt IV w/ memory operand",
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

/* Instruction group int-2-float w/ mem */
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
static const mUINT8 latency408[] = {6,6};
static SI gname402 = {
  "int-2-float w/ mem",
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

/* Instruction group int-2-float */
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
static const mUINT8 latency417[] = {4,4};
static SI gname411 = {
  "int-2-float",
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

/* Instruction group double-2-float */
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
static const mUINT8 latency426[] = {4,4};
static SI gname420 = {
  "double-2-float",
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

/* Instruction group double-2-float w/ mem */
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
static const mUINT8 latency435[] = {6,6};
static SI gname429 = {
  "double-2-float w/ mem",
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

/* Instruction group int-2-double */
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
static const mUINT8 latency444[] = {4,4};
static SI gname438 = {
  "int-2-double",
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

/* Instruction group int-2-double w/ mem */
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
static const mUINT8 latency453[] = {6,6};
static SI gname447 = {
  "int-2-double w/ mem",
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

/* Instruction group int-2-float */
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
static const mUINT8 latency462[] = {1,1};
static SI gname456 = {
  "int-2-float",
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

/* Instruction group float-2-int */
static const SI_RRW res_req466[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname468[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname467[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency470[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency471[] = {1,1};
static SI gname465 = {
  "float-2-int",
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

/* Instruction group float-alu */
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
static const mUINT8 latency480[] = {3,3};
static SI gname474 = {
  "float-alu",
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

/* Instruction group float-alu comi */
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
static const mUINT8 latency489[] = {4,4};
static SI gname483 = {
  "float-alu comi",
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

/* Instruction group float-alu for float vector class I */
static const SI_RRW res_req493[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname495[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname494[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency497[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency498[] = {3,3};
static SI gname492 = {
  "float-alu for float vector class I",
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

/* Instruction group float-alu for float vector class I w/ memory operand */
static const SI_RRW res_req502[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname504[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname503[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency506[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency507[] = {5,5};
static SI gname501 = {
  "float-alu for float vector class I w/ memory operand",
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

/* Instruction group float-alu for float vector class II */
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
static const mUINT8 latency516[] = {1,1};
static SI gname510 = {
  "float-alu for float vector class II",
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

/* Instruction group float-alu for float vector class II w/ memory operand */
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
static const mUINT8 latency525[] = {3,3};
static SI gname519 = {
  "float-alu for float vector class II w/ memory operand",
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

/* Instruction group float-alu for float vector class III - mulps */
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
static const mUINT8 latency534[] = {4,4};
static SI gname528 = {
  "float-alu for float vector class III - mulps",
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

/* Instruction group float-alu for float vector class III - mulpd */
static const SI_RRW res_req538[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname540[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname539[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency542[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency543[] = {5,5};
static SI gname537 = {
  "float-alu for float vector class III - mulpd",
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
  2              , /* resource count vec size */
  gname539       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III - mulps w/memory operand */
static const SI_RRW res_req547[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname549[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname548[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency551[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency552[] = {6,6};
static SI gname546 = {
  "float-alu for float vector class III - mulps w/memory operand",
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
  2              , /* resource count vec size */
  gname548       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III - mulpd w/memory operand */
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
static const mUINT8 latency561[] = {7,7};
static SI gname555 = {
  "float-alu for float vector class III - mulpd w/memory operand",
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

/* Instruction group float-alu for float vector class IV -divps */
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
static const mUINT8 latency570[] = {18,18};
static SI gname564 = {
  "float-alu for float vector class IV -divps",
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

/* Instruction group float-alu for float vector class IV - fsqrt */
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
static const mUINT8 latency579[] = {29,29};
static SI gname573 = {
  "float-alu for float vector class IV - fsqrt",
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

/* Instruction group x87 cosine */
static const SI_RRW res_req583[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname585[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname584[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency587[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency588[] = {92,92};
static SI gname582 = {
  "x87 cosine",
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
  1              , /* resource count vec size */
  gname584       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 sine */
static const SI_RRW res_req592[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname594[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname593[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency596[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency597[] = {93,93};
static SI gname591 = {
  "x87 sine",
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
  1              , /* resource count vec size */
  gname593       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV -divps w/ memory operand */
static const SI_RRW res_req601[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname603[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname602[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency605[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency606[] = {20,20};
static SI gname600 = {
  "float-alu for float vector class IV -divps w/ memory operand",
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

/* Instruction group float-alu for float vector class V */
static const SI_RRW res_req610[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname612[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname611[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency614[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency615[] = {32,32};
static SI gname609 = {
  "float-alu for float vector class V",
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

/* Instruction group float-alu for float vector class V w/ memory operand */
static const SI_RRW res_req619[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname621[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname620[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency623[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency624[] = {34,34};
static SI gname618 = {
  "float-alu for float vector class V w/ memory operand",
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

/* Instruction group float-vector fma4 */
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
static const mUINT8 latency633[] = {2,2};
static SI gname627 = {
  "float-vector fma4",
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

/* Instruction group float-vector fma4 mem opnd */
static const SI_RRW res_req637[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname639[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname638[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency641[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency642[] = {4,4};
static SI gname636 = {
  "float-vector fma4 mem opnd",
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

/* Instruction group float-vector fma4 mem opnd  w/ scaled index  */
static const SI_RRW res_req646[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname648[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname647[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency650[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency651[] = {4,4};
static SI gname645 = {
  "float-vector fma4 mem opnd  w/ scaled index ",
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

/* Instruction group float-vector fma4 mem opnd  w/ scaled index w/o base */
static const SI_RRW res_req655[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname657[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname656[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency659[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency660[] = {4,4};
static SI gname654 = {
  "float-vector fma4 mem opnd  w/ scaled index w/o base",
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

/* Instruction group float-alu for float vector class VI */
static const SI_RRW res_req664[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname666[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname665[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency668[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency669[] = {3,3};
static SI gname663 = {
  "float-alu for float vector class VI",
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

/* Instruction group float-alu for float vector class VI w/ memory operand */
static const SI_RRW res_req673[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname675[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname674[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency677[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency678[] = {5,5};
static SI gname672 = {
  "float-alu for float vector class VI w/ memory operand",
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

/* Instruction group float-alu for float vector class VII */
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
static const mUINT8 latency687[] = {29,29};
static SI gname681 = {
  "float-alu for float vector class VII",
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

/* Instruction group float-alu for float vector class VIII */
static const SI_RRW res_req691[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname693[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname692[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency695[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency696[] = {58,58};
static SI gname690 = {
  "float-alu for float vector class VIII",
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

/* Instruction group float-alu for float vector class IX */
static const SI_RRW res_req700[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname702[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname701[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency704[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency705[] = {3,3};
static SI gname699 = {
  "float-alu for float vector class IX",
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
  2              , /* resource count vec size */
  gname701       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class X */
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
static const mUINT8 latency714[] = {1,1};
static SI gname708 = {
  "float-alu for float vector class X",
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

/* Instruction group float-alu for float vector class XI */
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
static const mUINT8 latency723[] = {4,4};
static SI gname717 = {
  "float-alu for float vector class XI",
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

/* Instruction group float-alu for float vector class XII 1 */
static const SI_RRW res_req727[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname729[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname728[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency731[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency732[] = {1,1};
static SI gname726 = {
  "float-alu for float vector class XII 1",
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

/* Instruction group float-alu for float vector class XII 1 w/ memory operand */
static const SI_RRW res_req736[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname738[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname737[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency740[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency741[] = {3,3};
static SI gname735 = {
  "float-alu for float vector class XII 1 w/ memory operand",
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

/* Instruction group float-alu for float vector class XII 2 */
static const SI_RRW res_req745[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname747[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname746[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency749[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency750[] = {2,2};
static SI gname744 = {
  "float-alu for float vector class XII 2",
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

/* Instruction group float-alu for float vector class XII 2 w/ memory operand */
static const SI_RRW res_req754[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname756[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname755[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency758[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency759[] = {4,4};
static SI gname753 = {
  "float-alu for float vector class XII 2 w/ memory operand",
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

/* Instruction group float-alu for float vector class XII 4 */
static const SI_RRW res_req763[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname765[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname764[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency767[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency768[] = {4,4};
static SI gname762 = {
  "float-alu for float vector class XII 4",
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

/* Instruction group float-alu for float vector class XIIa */
static const SI_RRW res_req772[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname774[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname773[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency776[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency777[] = {1,1};
static SI gname771 = {
  "float-alu for float vector class XIIa",
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

/* Instruction group mmx shuffle */
static const SI_RRW res_req781[] = {
  1,
  0xa01
};
static const SI_RESOURCE_ID_SET gname783[] = {
  0x19
};
static SI_RESOURCE_TOTAL gname782[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency785[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency786[] = {1,1};
static SI gname780 = {
  "mmx shuffle",
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
  3              , /* resource count vec size */
  gname782       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIII */
static const SI_RRW res_req790[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname792[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname791[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency794[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency795[] = {2,2};
static SI gname789 = {
  "float-alu for float vector class XIII",
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

/* Instruction group float-alu for float vector class XIV */
static const SI_RRW res_req799[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname801[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname800[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency803[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency804[] = {3,3};
static SI gname798 = {
  "float-alu for float vector class XIV",
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

/* Instruction group float-alu for float vector class XV */
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
static const mUINT8 latency813[] = {3,3};
static SI gname807 = {
  "float-alu for float vector class XV",
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

/* Instruction group sse parallel compares */
static const SI_RRW res_req817[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname819[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname818[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency821[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency822[] = {1,1};
static SI gname816 = {
  "sse parallel compares",
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

/* Instruction group float-alu for float vector class XVI */
static const SI_RRW res_req826[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname828[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname827[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency830[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency831[] = {1,1};
static SI gname825 = {
  "float-alu for float vector class XVI",
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

/* Instruction group float-alu for float vector class XVII */
static const SI_RRW res_req835[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname837[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname836[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency839[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency840[] = {3,3};
static SI gname834 = {
  "float-alu for float vector class XVII",
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

/* Instruction group float-alu for int vector */
static const SI_RRW res_req844[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname846[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname845[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency848[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency849[] = {1,1};
static SI gname843 = {
  "float-alu for int vector",
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

/* Instruction group float-alu for int vector I */
static const SI_RRW res_req853[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname855[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname854[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency857[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency858[] = {2,2};
static SI gname852 = {
  "float-alu for int vector I",
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

/* Instruction group float-alu for int vector II */
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
static const mUINT8 latency867[] = {4,4};
static SI gname861 = {
  "float-alu for int vector II",
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

/* Instruction group float-alu for int mpy vector */
static const SI_RRW res_req871[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname873[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname872[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency875[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency876[] = {3,3};
static SI gname870 = {
  "float-alu for int mpy vector",
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

/* Instruction group float-alu for mmx int mpy vector */
static const SI_RRW res_req880[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname882[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname881[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency884[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency885[] = {3,3};
static SI gname879 = {
  "float-alu for mmx int mpy vector",
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

/* Instruction group float-alu for int vector w/ memory operand */
static const SI_RRW res_req889[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname891[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname890[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency893[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency894[] = {3,3};
static SI gname888 = {
  "float-alu for int vector w/ memory operand",
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

/* Instruction group float-alu for int vector I w/ memory operand */
static const SI_RRW res_req898[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname900[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname899[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency902[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency903[] = {4,4};
static SI gname897 = {
  "float-alu for int vector I w/ memory operand",
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
  2              , /* resource count vec size */
  gname899       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu w/ memory operand */
static const SI_RRW res_req907[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname909[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname908[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency911[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency912[] = {5,5};
static SI gname906 = {
  "float-alu w/ memory operand",
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

/* Instruction group float-alu comi w/ memory operand */
static const SI_RRW res_req916[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname918[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname917[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency920[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency921[] = {3,3};
static SI gname915 = {
  "float-alu comi w/ memory operand",
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
  2              , /* resource count vec size */
  gname917       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-max/min */
static const SI_RRW res_req925[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname927[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname926[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency929[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency930[] = {3,3};
static SI gname924 = {
  "float-max/min",
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
  2              , /* resource count vec size */
  gname926       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-xorp */
static const SI_RRW res_req934[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname936[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname935[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency938[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency939[] = {1,1};
static SI gname933 = {
  "float-xorp",
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
  2              , /* resource count vec size */
  gname935       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-xorp I */
static const SI_RRW res_req943[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname945[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname944[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency947[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency948[] = {3,3};
static SI gname942 = {
  "float-xorp I",
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
  2              , /* resource count vec size */
  gname944       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul-single */
static const SI_RRW res_req952[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname954[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname953[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency956[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency957[] = {4,4};
static SI gname951 = {
  "float-mul-single",
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
  2              , /* resource count vec size */
  gname953       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul-double */
static const SI_RRW res_req961[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname963[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname962[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency965[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency966[] = {5,5};
static SI gname960 = {
  "float-mul-double",
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
  2              , /* resource count vec size */
  gname962       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul-single w/ mem operand */
static const SI_RRW res_req970[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname972[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname971[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency974[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency975[] = {6,6};
static SI gname969 = {
  "float-mul-single w/ mem operand",
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
  2              , /* resource count vec size */
  gname971       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul-double w/ mem operand */
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
static const mUINT8 latency984[] = {7,7};
static SI gname978 = {
  "float-mul-double w/ mem operand",
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

/* Instruction group float-divide-single */
static const SI_RRW res_req988[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname990[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname989[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency992[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency993[] = {18,18};
static SI gname987 = {
  "float-divide-single",
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
  2              , /* resource count vec size */
  gname989       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide-double */
static const SI_RRW res_req997[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname999[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname998[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1001[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1002[] = {32,32};
static SI gname996 = {
  "float-divide-double",
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

/* Instruction group float-divide-single w/ memory operand */
static const SI_RRW res_req1006[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1008[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1007[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1010[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1011[] = {20,20};
static SI gname1005 = {
  "float-divide-single w/ memory operand",
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

/* Instruction group float-divide-double w/ memory operand */
static const SI_RRW res_req1015[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1017[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1016[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1019[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1020[] = {34,34};
static SI gname1014 = {
  "float-divide-double w/ memory operand",
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
  2              , /* resource count vec size */
  gname1016      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-others */
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
static const mUINT8 latency1029[] = {21,21};
static SI gname1023 = {
  "float-others",
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

/* Instruction group sync */
static const SI_RRW res_req1033[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname1035[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname1034[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1037[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1038[] = {0,0};
static SI gname1032 = {
  "sync",
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
  2              , /* resource count vec size */
  gname1034      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group prefetch */
static const SI_RRW res_req1042[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname1044[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname1043[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1046[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1047[] = {0,0};
static SI gname1041 = {
  "prefetch",
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

/* Instruction group nop */
static const SI_RRW res_req1051[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1053[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1052[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1055[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1056[] = {0,0};
static SI gname1050 = {
  "nop",
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
  2              , /* resource count vec size */
  gname1052      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group emms */
static const SI_RRW res_req1060[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname1062[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname1061[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1064[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1065[] = {6,6};
static SI gname1059 = {
  "emms",
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
  4              , /* resource count vec size */
  gname1061      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group clflush */
static const SI_RRW res_req1069[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1071[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1070[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1073[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1074[] = {0,0};
static SI gname1068 = {
  "clflush",
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
  2              , /* resource count vec size */
  gname1070      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group zeroupper */
static const SI_RRW res_req1078[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname1080[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname1079[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1082[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1083[] = {6,6};
static SI gname1077 = {
  "zeroupper",
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
  4              , /* resource count vec size */
  gname1079      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-int-2-mmx */
static const SI_RRW res_req1087[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1089[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1088[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1091[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1092[] = {1,1};
static SI gname1086 = {
  "mov-int-2-mmx",
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
  1              , /* resource count vec size */
  gname1088      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-int */
static const SI_RRW res_req1096[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1098[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1097[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1100[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1101[] = {1,1};
static SI gname1095 = {
  "mov-mmx-2-int",
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
  1              , /* resource count vec size */
  gname1097      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-sse */
static const SI_RRW res_req1105[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1107[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1106[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1109[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1110[] = {1,1};
static SI gname1104 = {
  "mov-mmx-2-sse",
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
  1              , /* resource count vec size */
  gname1106      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-sse_2_mmx */
static const SI_RRW res_req1114[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1116[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1115[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1118[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1119[] = {1,1};
static SI gname1113 = {
  "mov-sse_2_mmx",
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
  1              , /* resource count vec size */
  gname1115      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx I */
static const SI_RRW res_req1123[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1125[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1124[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1127[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1128[] = {3,3};
static SI gname1122 = {
  "vector cvt sse <-> mmx I",
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
  1              , /* resource count vec size */
  gname1124      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx II */
static const SI_RRW res_req1132[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1134[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1133[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1136[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1137[] = {4,4};
static SI gname1131 = {
  "vector cvt sse <-> mmx II",
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
  1              , /* resource count vec size */
  gname1133      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE movmsk */
static const SI_RRW res_req1141[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1143[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1142[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1145[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1146[] = {1,1};
static SI gname1140 = {
  "SSE movmsk",
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
  1              , /* resource count vec size */
  gname1142      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A extract */
static const SI_RRW res_req1150[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1152[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1151[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1154[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1155[] = {2,2};
static SI gname1149 = {
  "SSE4A extract",
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

/* Instruction group SSE4A insert */
static const SI_RRW res_req1159[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1161[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1160[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1163[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1164[] = {5,5};
static SI gname1158 = {
  "SSE4A insert",
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
  1              , /* resource count vec size */
  gname1160      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group monitor mwait */
static const SI_RRW res_req1168[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname1170[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname1169[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1172[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1173[] = {0,0};
static SI gname1167 = {
  "monitor mwait",
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

/* Instruction group ssse3 misc reg opnd */
static const SI_RRW res_req1177[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1179[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1178[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1181[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1182[] = {2,2};
static SI gname1176 = {
  "ssse3 misc reg opnd",
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
  2              , /* resource count vec size */
  gname1178      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc mem opnd */
static const SI_RRW res_req1186[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1188[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1187[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1190[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1191[] = {7,7};
static SI gname1185 = {
  "ssse3 misc mem opnd",
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
  3              , /* resource count vec size */
  gname1187      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 hadd reg opnd */
static const SI_RRW res_req1195[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1197[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1196[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1199[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1200[] = {5,5};
static SI gname1194 = {
  "ssse3 hadd reg opnd",
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

/* Instruction group ssse3 hadd mem opnd */
static const SI_RRW res_req1204[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1206[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1205[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1208[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1209[] = {10,10};
static SI gname1203 = {
  "ssse3 hadd mem opnd",
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
  3              , /* resource count vec size */
  gname1205      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 mul reg opnd */
static const SI_RRW res_req1213[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1215[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1214[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1217[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1218[] = {4,4};
static SI gname1212 = {
  "ssse3 mul reg opnd",
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

/* Instruction group ssse3 mul mem opnd */
static const SI_RRW res_req1222[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1224[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1223[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1226[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1227[] = {9,9};
static SI gname1221 = {
  "ssse3 mul mem opnd",
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
  3              , /* resource count vec size */
  gname1223      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1231[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1233[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1232[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1235[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1236[] = {2,2};
static SI gname1230 = {
  "sse4.1 pmov reg opnd",
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

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1240[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1242[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1241[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1244[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1245[] = {7,7};
static SI gname1239 = {
  "sse4.1 pmov mem opnd",
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
  3              , /* resource count vec size */
  gname1241      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1249[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1251[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1250[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1253[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1254[] = {4,4};
static SI gname1248 = {
  "sse4.1 misc reg opnd",
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
  2              , /* resource count vec size */
  gname1250      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1258[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1260[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1259[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1262[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1263[] = {9,9};
static SI gname1257 = {
  "sse4.1 misc mem opnd",
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
  3              , /* resource count vec size */
  gname1259      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend reg opnd */
static const SI_RRW res_req1267[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1269[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1268[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1271[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1272[] = {5,5};
static SI gname1266 = {
  "sse4.1 blend reg opnd",
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
  2              , /* resource count vec size */
  gname1268      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend mem opnd */
static const SI_RRW res_req1276[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1278[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1277[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1280[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1281[] = {10,10};
static SI gname1275 = {
  "sse4.1 blend mem opnd",
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
  3              , /* resource count vec size */
  gname1277      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr reg opnd */
static const SI_RRW res_req1285[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1287[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1286[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1289[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1290[] = {2,2};
static SI gname1284 = {
  "sse4.1 insr extr reg opnd",
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
  2              , /* resource count vec size */
  gname1286      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr mem opnd */
static const SI_RRW res_req1294[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1296[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1295[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1298[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1299[] = {4,4};
static SI gname1293 = {
  "sse4.1 insr extr mem opnd",
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
  3              , /* resource count vec size */
  gname1295      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1303[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1305[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1304[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1307[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1308[] = {4,4};
static SI gname1302 = {
  "sse4.1 misc reg opnd",
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
  2              , /* resource count vec size */
  gname1304      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1312[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1314[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1313[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1316[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1317[] = {9,9};
static SI gname1311 = {
  "sse4.1 misc mem opnd",
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
  3              , /* resource count vec size */
  gname1313      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr reg opnd */
static const SI_RRW res_req1321[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1323[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1322[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1325[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1326[] = {5,5};
static SI gname1320 = {
  "sse4.1 finsr fextr reg opnd",
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
  2              , /* resource count vec size */
  gname1322      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr mem opnd */
static const SI_RRW res_req1330[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1332[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1331[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1334[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1335[] = {10,10};
static SI gname1329 = {
  "sse4.1 finsr fextr mem opnd",
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
  3              , /* resource count vec size */
  gname1331      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1339[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1341[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1340[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1343[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1344[] = {4,4};
static SI gname1338 = {
  "sse4.1 misc reg opnd",
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
  2              , /* resource count vec size */
  gname1340      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1348[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1350[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1349[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1352[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1353[] = {9,9};
static SI gname1347 = {
  "sse4.1 misc mem opnd",
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
  3              , /* resource count vec size */
  gname1349      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 load ntdqa */
static const SI_RRW res_req1357[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1359[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1358[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1361[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1362[] = {2,2};
static SI gname1356 = {
  "sse4.1 load ntdqa",
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
  1              , /* resource count vec size */
  gname1358      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 store ntdqa */
static const SI_RRW res_req1366[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1368[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1367[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1370[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1371[] = {2,2};
static SI gname1365 = {
  "sse4.1 store ntdqa",
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
  2              , /* resource count vec size */
  gname1367      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1375[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1377[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1376[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1379[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1380[] = {2,2};
static SI gname1374 = {
  "sse4.1 pmov reg opnd",
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
  1              , /* resource count vec size */
  gname1376      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1384[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1386[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1385[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1388[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1389[] = {7,7};
static SI gname1383 = {
  "sse4.1 pmov mem opnd",
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
  2              , /* resource count vec size */
  gname1385      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest reg opnd */
static const SI_RRW res_req1393[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1395[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1394[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1397[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1398[] = {5,5};
static SI gname1392 = {
  "sse4.1 ptest reg opnd",
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
  1              , /* resource count vec size */
  gname1394      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest mem opnd */
static const SI_RRW res_req1402[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1404[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1403[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1406[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1407[] = {10,10};
static SI gname1401 = {
  "sse4.1 ptest mem opnd",
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
  2              , /* resource count vec size */
  gname1403      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc reg opnd */
static const SI_RRW res_req1411[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1413[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1412[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1415[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1416[] = {5,5};
static SI gname1410 = {
  "sse4.2 crc reg opnd",
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

/* Instruction group sse4.2 crc mem opnd */
static const SI_RRW res_req1420[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1422[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1421[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1424[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1425[] = {10,10};
static SI gname1419 = {
  "sse4.2 crc mem opnd",
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
  3              , /* resource count vec size */
  gname1421      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1429[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1431[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1430[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1433[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1434[] = {10,10};
static SI gname1428 = {
  "sse4.2 pcmp reg opnd",
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
  2              , /* resource count vec size */
  gname1430      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1438[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1440[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1439[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1442[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1443[] = {20,20};
static SI gname1437 = {
  "sse4.2 pcmp mem opnd",
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
  3              , /* resource count vec size */
  gname1439      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1447[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1449[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1448[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1451[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1452[] = {5,5};
static SI gname1446 = {
  "sse4.2 pcmp reg opnd",
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
  2              , /* resource count vec size */
  gname1448      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1456[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1458[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1457[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1460[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1461[] = {10,10};
static SI gname1455 = {
  "sse4.2 pcmp mem opnd",
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
  3              , /* resource count vec size */
  gname1457      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes reg opnd */
static const SI_RRW res_req1465[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1467[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1466[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1469[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1470[] = {10,10};
static SI gname1464 = {
  "aes reg opnd",
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
  2              , /* resource count vec size */
  gname1466      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes mem opnd */
static const SI_RRW res_req1474[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1476[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1475[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1478[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1479[] = {20,20};
static SI gname1473 = {
  "aes mem opnd",
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
  3              , /* resource count vec size */
  gname1475      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul reg opnd */
static const SI_RRW res_req1483[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1485[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1484[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1487[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1488[] = {6,6};
static SI gname1482 = {
  "pclmul reg opnd",
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
  2              , /* resource count vec size */
  gname1484      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul mem opnd */
static const SI_RRW res_req1492[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1494[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1493[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1496[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1497[] = {11,11};
static SI gname1491 = {
  "pclmul mem opnd",
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
  3              , /* resource count vec size */
  gname1493      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1501[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1503[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1502[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1505[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1506[] = {2,2};
static SI gname1500 = {
  "xop.desc.sort_by_print reg opnd",
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
  2              , /* resource count vec size */
  gname1502      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1510[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1512[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1511[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1514[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1515[] = {7,7};
static SI gname1509 = {
  "xop.desc.sort_by_print mem opnd",
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
  3              , /* resource count vec size */
  gname1511      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma reg opnd */
static const SI_RRW res_req1519[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1521[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1520[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1523[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1524[] = {4,4};
static SI gname1518 = {
  "xop fma reg opnd",
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
  2              , /* resource count vec size */
  gname1520      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma mem opnd */
static const SI_RRW res_req1528[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1530[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1529[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1532[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1533[] = {9,9};
static SI gname1527 = {
  "xop fma mem opnd",
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
  3              , /* resource count vec size */
  gname1529      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz reg opnd */
static const SI_RRW res_req1537[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1539[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1538[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1541[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1542[] = {10,10};
static SI gname1536 = {
  "xop frcz reg opnd",
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
  1              , /* resource count vec size */
  gname1538      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz mem opnd */
static const SI_RRW res_req1546[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1548[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1547[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1550[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1551[] = {15,15};
static SI gname1545 = {
  "xop frcz mem opnd",
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

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1555[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1557[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1556[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1559[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1560[] = {2,2};
static SI gname1554 = {
  "xop.desc.sort_by_print reg opnd",
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
  1              , /* resource count vec size */
  gname1556      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1564[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1566[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1565[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1568[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1569[] = {7,7};
static SI gname1563 = {
  "xop.desc.sort_by_print mem opnd",
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

/* Instruction group xop rotate mem reg opnd */
static const SI_RRW res_req1573[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1575[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1574[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1577[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1578[] = {3,3};
static SI gname1572 = {
  "xop rotate mem reg opnd",
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
  1              , /* resource count vec size */
  gname1574      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem mem opnd */
static const SI_RRW res_req1582[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1584[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1583[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1586[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1587[] = {8,8};
static SI gname1581 = {
  "xop rotate mem mem opnd",
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
  2              , /* resource count vec size */
  gname1583      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1591[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1593[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1592[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1595[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1596[] = {2,2};
static SI gname1590 = {
  "avx int arith reg opnd",
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

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1600[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1602[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1601[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1604[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1605[] = {4,4};
static SI gname1599 = {
  "avx int arith mem opnd",
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
  3              , /* resource count vec size */
  gname1601      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1609[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1611[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1610[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1613[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1614[] = {2,2};
static SI gname1608 = {
  "avx fp arith reg opnd",
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
  2              , /* resource count vec size */
  gname1610      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1618[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1620[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1619[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1622[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1623[] = {7,7};
static SI gname1617 = {
  "avx fp arith mem opnd",
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
  3              , /* resource count vec size */
  gname1619      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1627[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1629[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1628[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1631[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1632[] = {4,4};
static SI gname1626 = {
  "avx fp mul reg opnd",
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
  2              , /* resource count vec size */
  gname1628      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1636[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1638[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1637[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1640[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1641[] = {7,7};
static SI gname1635 = {
  "avx fp mul mem opnd",
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
  3              , /* resource count vec size */
  gname1637      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt reg opnd */
static const SI_RRW res_req1645[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1647[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1646[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1649[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1650[] = {5,5};
static SI gname1644 = {
  "avx fp rsqrt reg opnd",
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

/* Instruction group avx fp rsqrt mem opnd */
static const SI_RRW res_req1654[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1656[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1655[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1658[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1659[] = {10,10};
static SI gname1653 = {
  "avx fp rsqrt mem opnd",
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
  3              , /* resource count vec size */
  gname1655      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt reg opnd */
static const SI_RRW res_req1663[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1665[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1664[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1667[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1668[] = {19,19};
static SI gname1662 = {
  "avx fp sqrt reg opnd",
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
  2              , /* resource count vec size */
  gname1664      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt mem opnd */
static const SI_RRW res_req1672[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1674[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1673[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1676[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1677[] = {21,21};
static SI gname1671 = {
  "avx fp sqrt mem opnd",
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
  3              , /* resource count vec size */
  gname1673      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div reg opnd */
static const SI_RRW res_req1681[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1683[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1682[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1685[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1686[] = {33,33};
static SI gname1680 = {
  "avx div reg opnd",
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
  2              , /* resource count vec size */
  gname1682      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div mem opnd */
static const SI_RRW res_req1690[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1692[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1691[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1694[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1695[] = {35,35};
static SI gname1689 = {
  "avx div mem opnd",
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
  3              , /* resource count vec size */
  gname1691      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1699[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1701[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1700[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1703[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1704[] = {4,4};
static SI gname1698 = {
  "avx fp mul reg opnd",
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
  2              , /* resource count vec size */
  gname1700      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1708[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1710[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1709[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1712[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1713[] = {7,7};
static SI gname1707 = {
  "avx fp mul mem opnd",
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
  3              , /* resource count vec size */
  gname1709      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend reg opnd */
static const SI_RRW res_req1717[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1719[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1718[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1721[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1722[] = {5,5};
static SI gname1716 = {
  "avx blend reg opnd",
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

/* Instruction group avx blend mem opnd */
static const SI_RRW res_req1726[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1728[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1727[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1730[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1731[] = {10,10};
static SI gname1725 = {
  "avx blend mem opnd",
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
  3              , /* resource count vec size */
  gname1727      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul reg opnd */
static const SI_RRW res_req1735[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1737[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1736[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1739[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1740[] = {6,6};
static SI gname1734 = {
  "avx pclmul reg opnd",
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

/* Instruction group avx pclmul mem opnd */
static const SI_RRW res_req1744[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1746[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1745[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1748[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1749[] = {11,11};
static SI gname1743 = {
  "avx pclmul mem opnd",
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
  3              , /* resource count vec size */
  gname1745      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes reg opnd */
static const SI_RRW res_req1753[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1755[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1754[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1757[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1758[] = {10,10};
static SI gname1752 = {
  "avx aes reg opnd",
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
  1              , /* resource count vec size */
  gname1754      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes mem opnd */
static const SI_RRW res_req1762[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1764[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1763[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1766[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1767[] = {20,20};
static SI gname1761 = {
  "avx aes mem opnd",
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
  2              , /* resource count vec size */
  gname1763      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align load */
static const SI_RRW res_req1771[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1773[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1772[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1775[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1776[] = {2,2};
static SI gname1770 = {
  "avx fp align load",
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

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1780[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1782[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1781[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1784[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1785[] = {2,2};
static SI gname1779 = {
  "avx int arith reg opnd",
  197            , /* id */
  latency1784    , /* operand latency */
  latency1785    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1780    , /* resource requirement */
  gname1782      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1781      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1789[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1791[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1790[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1793[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1794[] = {4,4};
static SI gname1788 = {
  "avx int arith mem opnd",
  198            , /* id */
  latency1793    , /* operand latency */
  latency1794    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1789    , /* resource requirement */
  gname1791      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1790      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1798[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1800[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1799[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1802[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1803[] = {2,2};
static SI gname1797 = {
  "avx fp arith reg opnd",
  199            , /* id */
  latency1802    , /* operand latency */
  latency1803    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1798    , /* resource requirement */
  gname1800      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1799      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1807[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1809[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1808[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1811[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1812[] = {7,7};
static SI gname1806 = {
  "avx fp arith mem opnd",
  200            , /* id */
  latency1811    , /* operand latency */
  latency1812    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1807    , /* resource requirement */
  gname1809      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1808      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align store */
static const SI_RRW res_req1816[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1818[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1817[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1820[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1821[] = {7,7};
static SI gname1815 = {
  "avx fp align store",
  201            , /* id */
  latency1820    , /* operand latency */
  latency1821    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1816    , /* resource requirement */
  gname1818      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1817      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx broadcast reg opnd */
static const SI_RRW res_req1825[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1827[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1826[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1829[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1830[] = {4,4};
static SI gname1824 = {
  "avx broadcast reg opnd",
  202            , /* id */
  latency1829    , /* operand latency */
  latency1830    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1825    , /* resource requirement */
  gname1827      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1826      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1834[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1836[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1835[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1838[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1839[] = {4,4};
static SI gname1833 = {
  "avx fp mul reg opnd",
  203            , /* id */
  latency1838    , /* operand latency */
  latency1839    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1834    , /* resource requirement */
  gname1836      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1835      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1843[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1845[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1844[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1847[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1848[] = {7,7};
static SI gname1842 = {
  "avx fp mul mem opnd",
  204            , /* id */
  latency1847    , /* operand latency */
  latency1848    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1843    , /* resource requirement */
  gname1845      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1844      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest reg opnd */
static const SI_RRW res_req1852[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1854[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1853[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1856[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1857[] = {5,5};
static SI gname1851 = {
  "avx ptest reg opnd",
  205            , /* id */
  latency1856    , /* operand latency */
  latency1857    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1852    , /* resource requirement */
  gname1854      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1853      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest mem opnd */
static const SI_RRW res_req1861[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1863[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1862[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1865[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1866[] = {10,10};
static SI gname1860 = {
  "avx ptest mem opnd",
  206            , /* id */
  latency1865    , /* operand latency */
  latency1866    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1861    , /* resource requirement */
  gname1863      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1862      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt reg opnd */
static const SI_RRW res_req1870[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1872[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1871[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1874[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1875[] = {5,5};
static SI gname1869 = {
  "avx cvt reg opnd",
  207            , /* id */
  latency1874    , /* operand latency */
  latency1875    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1870    , /* resource requirement */
  gname1872      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1871      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt mem opnd */
static const SI_RRW res_req1879[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1881[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1880[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1883[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1884[] = {7,7};
static SI gname1878 = {
  "avx cvt mem opnd",
  208            , /* id */
  latency1883    , /* operand latency */
  latency1884    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1879    , /* resource requirement */
  gname1881      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1880      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx load store mxcsr */
static const SI_RRW res_req1888[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1890[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1889[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1892[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1893[] = {14,14};
static SI gname1887 = {
  "avx load store mxcsr",
  209            , /* id */
  latency1892    , /* operand latency */
  latency1893    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1888    , /* resource requirement */
  gname1890      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1889      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx move mask */
static const SI_RRW res_req1897[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1899[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1898[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1901[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1902[] = {5,5};
static SI gname1896 = {
  "avx move mask",
  210            , /* id */
  latency1901    , /* operand latency */
  latency1902    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1897    , /* resource requirement */
  gname1899      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1898      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign store */
static const SI_RRW res_req1906[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1908[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1907[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1910[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1911[] = {8,8};
static SI gname1905 = {
  "avx unalign store",
  211            , /* id */
  latency1910    , /* operand latency */
  latency1911    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1906    , /* resource requirement */
  gname1908      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1907      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign load */
static const SI_RRW res_req1915[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1917[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1916[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1919[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1920[] = {7,7};
static SI gname1914 = {
  "avx unalign load",
  212            , /* id */
  latency1919    , /* operand latency */
  latency1920    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1915    , /* resource requirement */
  gname1917      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1916      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma reg opnd */
static const SI_RRW res_req1924[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1926[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1925[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1928[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1929[] = {6,6};
static SI gname1923 = {
  "intel avx fma reg opnd",
  213            , /* id */
  latency1928    , /* operand latency */
  latency1929    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1924    , /* resource requirement */
  gname1926      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1925      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma mem opnd */
static const SI_RRW res_req1933[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1935[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1934[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1937[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1938[] = {11,11};
static SI gname1932 = {
  "intel avx fma mem opnd",
  214            , /* id */
  latency1937    , /* operand latency */
  latency1938    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1933    , /* resource requirement */
  gname1935      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1934      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dummy */
static const SI_RRW res_req1942[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1944[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1943[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1946[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1947[] = {1,1};
static SI gname1941 = {
  "dummy",
  215            , /* id */
  latency1946    , /* operand latency */
  latency1947    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1942    , /* resource requirement */
  gname1944      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1943      , /* resource count vec */
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
  &gname1770,
  &gname1779,
  &gname1788,
  &gname1797,
  &gname1806,
  &gname1815,
  &gname1824,
  &gname1833,
  &gname1842,
  &gname1851,
  &gname1860,
  &gname1869,
  &gname1878,
  &gname1887,
  &gname1896,
  &gname1905,
  &gname1914,
  &gname1923,
  &gname1932,
  &gname1941
};
const int SI_ID_count = 216;

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
  &gname843   /* add128v8 */,
  &gname888   /* addx128v8 */,
  &gname888   /* addxx128v8 */,
  &gname888   /* addxxx128v8 */,
  &gname843   /* add128v16 */,
  &gname888   /* addx128v16 */,
  &gname888   /* addxx128v16 */,
  &gname888   /* addxxx128v16 */,
  &gname843   /* add128v32 */,
  &gname888   /* addx128v32 */,
  &gname888   /* addxx128v32 */,
  &gname888   /* addxxx128v32 */,
  &gname852   /* add128v64 */,
  &gname897   /* addx128v64 */,
  &gname897   /* addxx128v64 */,
  &gname897   /* addxxx128v64 */,
  &gname843   /* add64v8 */,
  &gname843   /* add64v16 */,
  &gname843   /* add64v32 */,
  &gname843   /* paddsb */,
  &gname843   /* paddsw */,
  &gname852   /* paddq */,
  &gname843   /* psubsb */,
  &gname843   /* psubsw */,
  &gname843   /* psubq */,
  &gname843   /* paddusb */,
  &gname843   /* paddusw */,
  &gname843   /* psubusb */,
  &gname843   /* psubusw */,
  &gname879   /* pmullw */,
  &gname879   /* pmulhw */,
  &gname879   /* pmulhuw */,
  &gname879   /* pmuludq */,
  &gname879   /* pmaddwd */,
  &gname843   /* paddsb128 */,
  &gname843   /* paddsw128 */,
  &gname852   /* paddq128 */,
  &gname843   /* psubsb128 */,
  &gname843   /* psubsw128 */,
  &gname843   /* psubq128 */,
  &gname843   /* paddusb128 */,
  &gname843   /* paddusw128 */,
  &gname843   /* psubusb128 */,
  &gname843   /* psubusw128 */,
  &gname879   /* pmullw128 */,
  &gname879   /* pmulhw128 */,
  &gname879   /* pmulhuw128 */,
  &gname879   /* pmuludq128 */,
  &gname879   /* pmaddwd128 */,
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
  &gname843   /* and128v8 */,
  &gname888   /* andx128v8 */,
  &gname888   /* andxx128v8 */,
  &gname888   /* andxxx128v8 */,
  &gname843   /* and128v16 */,
  &gname888   /* andx128v16 */,
  &gname888   /* andxx128v16 */,
  &gname888   /* andxxx128v16 */,
  &gname843   /* and128v32 */,
  &gname888   /* andx128v32 */,
  &gname888   /* andxx128v32 */,
  &gname888   /* andxxx128v32 */,
  &gname843   /* and128v64 */,
  &gname888   /* andx128v64 */,
  &gname888   /* andxx128v64 */,
  &gname888   /* andxxx128v64 */,
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
  &gname870   /* mul128v16 */,
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
  &gname285   /* ld64_2sse */,
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
  &gname240   /* ldss_n32 */,
  &gname240   /* ldsd_n32 */,
  &gname258   /* ldaps_n32 */,
  &gname258   /* ldapd_n32 */,
  &gname249   /* ldups_n32 */,
  &gname249   /* ldupd_n32 */,
  &gname240   /* lddqa_n32 */,
  &gname249   /* lddqu_n32 */,
  &gname267   /* ldlps_n32 */,
  &gname285   /* ldlpd_n32 */,
  &gname267   /* ldhps_n32 */,
  &gname285   /* ldhpd_n32 */,
  &gname177   /* ld64_2m_n32 */,
  &gname285   /* ld64_2sse_n32 */,
  &gname186   /* store8_n32 */,
  &gname186   /* store16_n32 */,
  &gname186   /* store32_n32 */,
  &gname303   /* stss_n32 */,
  &gname303   /* stsd_n32 */,
  &gname321   /* staps_n32 */,
  &gname321   /* stapd_n32 */,
  &gname303   /* stdqa_n32 */,
  &gname312   /* stdqu_n32 */,
  &gname276   /* stlps_n32 */,
  &gname276   /* sthps_n32 */,
  &gname294   /* stlpd_n32 */,
  &gname294   /* sthpd_n32 */,
  &gname186   /* store64_fm_n32 */,
  &gname294   /* store64_fsse_n32 */,
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
  &gname843   /* or128v8 */,
  &gname888   /* orx128v8 */,
  &gname888   /* orxx128v8 */,
  &gname888   /* orxxx128v8 */,
  &gname843   /* or128v16 */,
  &gname888   /* orx128v16 */,
  &gname888   /* orxx128v16 */,
  &gname888   /* orxxx128v16 */,
  &gname843   /* or128v32 */,
  &gname888   /* orx128v32 */,
  &gname888   /* orxx128v32 */,
  &gname888   /* orxxx128v32 */,
  &gname843   /* or128v64 */,
  &gname888   /* orx128v64 */,
  &gname888   /* orxx128v64 */,
  &gname888   /* orxxx128v64 */,
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
  &gname1041  /* prefetch */,
  &gname1041  /* prefetchw */,
  &gname1041  /* prefetcht0 */,
  &gname1041  /* prefetcht1 */,
  &gname1041  /* prefetchnta */,
  &gname1041  /* prefetchx */,
  &gname1041  /* prefetchxx */,
  &gname1041  /* prefetchwx */,
  &gname1041  /* prefetchwxx */,
  &gname1041  /* prefetcht0x */,
  &gname1041  /* prefetcht0xx */,
  &gname1041  /* prefetcht1x */,
  &gname1041  /* prefetcht1xx */,
  &gname1041  /* prefetchntax */,
  &gname1041  /* prefetchntaxx */,
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
  &gname294   /* store64_fsse */,
  &gname186   /* storenti32 */,
  &gname186   /* storentix32 */,
  &gname186   /* storentixx32 */,
  &gname186   /* storenti64 */,
  &gname186   /* storentix64 */,
  &gname186   /* storentixx64 */,
  &gname321   /* storenti128 */,
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
  &gname843   /* sub128v8 */,
  &gname888   /* subx128v8 */,
  &gname888   /* subxx128v8 */,
  &gname888   /* subxxx128v8 */,
  &gname843   /* sub128v16 */,
  &gname888   /* subx128v16 */,
  &gname888   /* subxx128v16 */,
  &gname888   /* subxxx128v16 */,
  &gname843   /* sub128v32 */,
  &gname888   /* subx128v32 */,
  &gname888   /* subxx128v32 */,
  &gname888   /* subxxx128v32 */,
  &gname852   /* sub128v64 */,
  &gname897   /* subx128v64 */,
  &gname897   /* subxx128v64 */,
  &gname897   /* subxxx128v64 */,
  &gname843   /* sub64v8 */,
  &gname843   /* sub64v16 */,
  &gname843   /* sub64v32 */,
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
  &gname843   /* xor128v8 */,
  &gname888   /* xorx128v8 */,
  &gname888   /* xorxx128v8 */,
  &gname888   /* xorxxx128v8 */,
  &gname843   /* xor128v16 */,
  &gname888   /* xorx128v16 */,
  &gname888   /* xorxx128v16 */,
  &gname888   /* xorxxx128v16 */,
  &gname843   /* xor128v32 */,
  &gname888   /* xorx128v32 */,
  &gname888   /* xorxx128v32 */,
  &gname888   /* xorxxx128v32 */,
  &gname843   /* xor128v64 */,
  &gname888   /* xorx128v64 */,
  &gname888   /* xorxx128v64 */,
  &gname888   /* xorxxx128v64 */,
  &gname15    /* xori32 */,
  &gname15    /* xori64 */,
  &gname510   /* fxor128v32 */,
  &gname519   /* fxorx128v32 */,
  &gname519   /* fxorxx128v32 */,
  &gname519   /* fxorxxx128v32 */,
  &gname510   /* fxor128v64 */,
  &gname519   /* fxorx128v64 */,
  &gname519   /* fxorxx128v64 */,
  &gname519   /* fxorxxx128v64 */,
  &gname510   /* xorps */,
  &gname510   /* xorpd */,
  &gname474   /* addsd */,
  &gname474   /* addss */,
  &gname906   /* addxsd */,
  &gname906   /* addxss */,
  &gname906   /* addxxsd */,
  &gname24    /* addxxxsd */,
  &gname906   /* addxxss */,
  &gname24    /* addxxxss */,
  &gname492   /* faddsub128v32 */,
  &gname501   /* faddsubx128v32 */,
  &gname501   /* faddsubxx128v32 */,
  &gname501   /* faddsubxxx128v32 */,
  &gname492   /* faddsub128v64 */,
  &gname501   /* faddsubx128v64 */,
  &gname501   /* faddsubxx128v64 */,
  &gname501   /* faddsubxxx128v64 */,
  &gname492   /* fadd128v32 */,
  &gname501   /* faddx128v32 */,
  &gname501   /* faddxx128v32 */,
  &gname501   /* faddxxx128v32 */,
  &gname492   /* fadd128v64 */,
  &gname501   /* faddx128v64 */,
  &gname501   /* faddxx128v64 */,
  &gname501   /* faddxxx128v64 */,
  &gname492   /* fhadd128v32 */,
  &gname501   /* fhaddx128v32 */,
  &gname501   /* fhaddxx128v32 */,
  &gname501   /* fhaddxxx128v32 */,
  &gname492   /* fhadd128v64 */,
  &gname501   /* fhaddx128v64 */,
  &gname501   /* fhaddxx128v64 */,
  &gname501   /* fhaddxxx128v64 */,
  &gname510   /* fand128v32 */,
  &gname519   /* fandx128v32 */,
  &gname519   /* fandxx128v32 */,
  &gname519   /* fandxxx128v32 */,
  &gname510   /* fand128v64 */,
  &gname519   /* fandx128v64 */,
  &gname519   /* fandxx128v64 */,
  &gname519   /* fandxxx128v64 */,
  &gname510   /* andps */,
  &gname510   /* andpd */,
  &gname933   /* andnps */,
  &gname933   /* andnpd */,
  &gname510   /* for128v32 */,
  &gname519   /* forx128v32 */,
  &gname519   /* forxx128v32 */,
  &gname519   /* forxxx128v32 */,
  &gname510   /* for128v64 */,
  &gname519   /* forx128v64 */,
  &gname519   /* forxx128v64 */,
  &gname519   /* forxxx128v64 */,
  &gname510   /* orps */,
  &gname510   /* orpd */,
  &gname483   /* comisd */,
  &gname915   /* comixsd */,
  &gname915   /* comixxsd */,
  &gname915   /* comixxxsd */,
  &gname483   /* comiss */,
  &gname915   /* comixss */,
  &gname915   /* comixxss */,
  &gname915   /* comixxxss */,
  &gname231   /* cmpss */,
  &gname231   /* cmpsd */,
  &gname807   /* cmpps */,
  &gname807   /* cmppd */,
  &gname825   /* cmpeq128v8 */,
  &gname825   /* cmpeq128v16 */,
  &gname825   /* cmpeq128v32 */,
  &gname834   /* cmpeqx128v8 */,
  &gname834   /* cmpeqx128v16 */,
  &gname834   /* cmpeqx128v32 */,
  &gname834   /* cmpeqxx128v8 */,
  &gname834   /* cmpeqxx128v16 */,
  &gname834   /* cmpeqxx128v32 */,
  &gname834   /* cmpeqxxx128v8 */,
  &gname834   /* cmpeqxxx128v16 */,
  &gname834   /* cmpeqxxx128v32 */,
  &gname825   /* cmpgt128v8 */,
  &gname825   /* cmpgt128v16 */,
  &gname825   /* cmpgt128v32 */,
  &gname834   /* cmpgtx128v8 */,
  &gname834   /* cmpgtx128v16 */,
  &gname834   /* cmpgtx128v32 */,
  &gname834   /* cmpgtxx128v8 */,
  &gname834   /* cmpgtxx128v16 */,
  &gname834   /* cmpgtxx128v32 */,
  &gname834   /* cmpgtxxx128v8 */,
  &gname834   /* cmpgtxxx128v16 */,
  &gname834   /* cmpgtxxx128v32 */,
  &gname825   /* pcmpeqb */,
  &gname825   /* pcmpeqw */,
  &gname825   /* pcmpeqd */,
  &gname825   /* pcmpgtb */,
  &gname825   /* pcmpgtw */,
  &gname825   /* pcmpgtd */,
  &gname744   /* fmovsldup */,
  &gname744   /* fmovshdup */,
  &gname726   /* fmovddup */,
  &gname753   /* fmovsldupx */,
  &gname753   /* fmovshdupx */,
  &gname735   /* fmovddupx */,
  &gname753   /* fmovsldupxx */,
  &gname753   /* fmovshdupxx */,
  &gname735   /* fmovddupxx */,
  &gname753   /* fmovsldupxxx */,
  &gname753   /* fmovshdupxxx */,
  &gname735   /* fmovddupxxx */,
  &gname15    /* cltd */,
  &gname15    /* cqto */,
  &gname465   /* cvtss2sd */,
  &gname420   /* cvtsd2ss */,
  &gname429   /* cvtsd2ss_x */,
  &gname429   /* cvtsd2ss_xx */,
  &gname429   /* cvtsd2ss_xxx */,
  &gname438   /* cvtsi2sd */,
  &gname447   /* cvtsi2sd_x */,
  &gname447   /* cvtsi2sd_xx */,
  &gname447   /* cvtsi2sd_xxx */,
  &gname411   /* cvtsi2ss */,
  &gname402   /* cvtsi2ss_x */,
  &gname402   /* cvtsi2ss_xx */,
  &gname402   /* cvtsi2ss_xxx */,
  &gname438   /* cvtsi2sdq */,
  &gname447   /* cvtsi2sdq_x */,
  &gname447   /* cvtsi2sdq_xx */,
  &gname447   /* cvtsi2sdq_xxx */,
  &gname411   /* cvtsi2ssq */,
  &gname402   /* cvtsi2ssq_x */,
  &gname402   /* cvtsi2ssq_xx */,
  &gname402   /* cvtsi2ssq_xxx */,
  &gname465   /* cvtss2si */,
  &gname465   /* cvtsd2si */,
  &gname465   /* cvtss2siq */,
  &gname465   /* cvtsd2siq */,
  &gname465   /* cvttss2si */,
  &gname465   /* cvttsd2si */,
  &gname465   /* cvttss2siq */,
  &gname465   /* cvttsd2siq */,
  &gname330   /* cvtdq2pd */,
  &gname330   /* cvtdq2ps */,
  &gname339   /* cvtps2pd */,
  &gname348   /* cvtpd2ps */,
  &gname357   /* cvtps2dq */,
  &gname357   /* cvttps2dq */,
  &gname348   /* cvtpd2dq */,
  &gname348   /* cvttpd2dq */,
  &gname366   /* cvtdq2pd_x */,
  &gname366   /* cvtdq2ps_x */,
  &gname375   /* cvtps2pd_x */,
  &gname384   /* cvtpd2ps_x */,
  &gname393   /* cvtps2dq_x */,
  &gname384   /* cvtpd2dq_x */,
  &gname393   /* cvttps2dq_x */,
  &gname384   /* cvttpd2dq_x */,
  &gname366   /* cvtdq2pd_xx */,
  &gname366   /* cvtdq2ps_xx */,
  &gname375   /* cvtps2pd_xx */,
  &gname384   /* cvtpd2ps_xx */,
  &gname393   /* cvtps2dq_xx */,
  &gname384   /* cvtpd2dq_xx */,
  &gname393   /* cvttps2dq_xx */,
  &gname384   /* cvttpd2dq_xx */,
  &gname366   /* cvtdq2pd_xxx */,
  &gname366   /* cvtdq2ps_xxx */,
  &gname375   /* cvtps2pd_xxx */,
  &gname384   /* cvtpd2ps_xxx */,
  &gname393   /* cvtps2dq_xxx */,
  &gname384   /* cvtpd2dq_xxx */,
  &gname393   /* cvttps2dq_xxx */,
  &gname384   /* cvttpd2dq_xxx */,
  &gname1122  /* cvtpi2ps */,
  &gname1122  /* cvtps2pi */,
  &gname1122  /* cvttps2pi */,
  &gname1131  /* cvtpi2pd */,
  &gname1131  /* cvtpd2pi */,
  &gname1131  /* cvttpd2pi */,
  &gname240   /* ldsd */,
  &gname240   /* ldsdx */,
  &gname240   /* ldsdxx */,
  &gname240   /* ldss */,
  &gname240   /* ldssx */,
  &gname240   /* ldssxx */,
  &gname240   /* lddqa */,
  &gname249   /* lddqu */,
  &gname267   /* ldlps */,
  &gname267   /* ldhps */,
  &gname285   /* ldlpd */,
  &gname285   /* ldhpd */,
  &gname303   /* stdqa */,
  &gname312   /* stdqu */,
  &gname276   /* stlps */,
  &gname276   /* sthps */,
  &gname294   /* stlpd */,
  &gname294   /* storelpd */,
  &gname294   /* sthpd */,
  &gname303   /* stntpd */,
  &gname303   /* stntps */,
  &gname186   /* storent64_fm */,
  &gname240   /* lddqax */,
  &gname249   /* lddqux */,
  &gname267   /* ldlpsx */,
  &gname267   /* ldhpsx */,
  &gname285   /* ldlpdx */,
  &gname285   /* ldhpdx */,
  &gname303   /* stdqax */,
  &gname303   /* stntpdx */,
  &gname303   /* stntpsx */,
  &gname312   /* stdqux */,
  &gname276   /* stlpsx */,
  &gname276   /* sthpsx */,
  &gname294   /* stlpdx */,
  &gname294   /* sthpdx */,
  &gname240   /* lddqaxx */,
  &gname249   /* lddquxx */,
  &gname267   /* ldlpsxx */,
  &gname267   /* ldhpsxx */,
  &gname285   /* ldlpdxx */,
  &gname285   /* ldhpdxx */,
  &gname258   /* ldaps */,
  &gname258   /* ldapsx */,
  &gname258   /* ldapsxx */,
  &gname258   /* ldapd */,
  &gname258   /* ldapdx */,
  &gname258   /* ldapdxx */,
  &gname249   /* ldups */,
  &gname249   /* ldupd */,
  &gname249   /* ldupdx */,
  &gname249   /* ldupdxx */,
  &gname303   /* stdqaxx */,
  &gname303   /* stntpdxx */,
  &gname303   /* stntpsxx */,
  &gname312   /* stdquxx */,
  &gname276   /* stlpsxx */,
  &gname276   /* sthpsxx */,
  &gname294   /* stlpdxx */,
  &gname294   /* sthpdxx */,
  &gname321   /* staps */,
  &gname321   /* stapsx */,
  &gname321   /* stapsxx */,
  &gname321   /* stapd */,
  &gname321   /* stapdx */,
  &gname321   /* stapdxx */,
  &gname312   /* stups */,
  &gname312   /* stupd */,
  &gname924   /* maxsd */,
  &gname924   /* maxss */,
  &gname663   /* fmax128v32 */,
  &gname672   /* fmaxx128v32 */,
  &gname672   /* fmaxxx128v32 */,
  &gname672   /* fmaxxxx128v32 */,
  &gname663   /* fmax128v64 */,
  &gname672   /* fmaxx128v64 */,
  &gname672   /* fmaxxx128v64 */,
  &gname672   /* fmaxxxx128v64 */,
  &gname825   /* max128v16 */,
  &gname825   /* max128v8 */,
  &gname834   /* maxx128v16 */,
  &gname834   /* maxx128v8 */,
  &gname834   /* maxxx128v16 */,
  &gname834   /* maxxx128v8 */,
  &gname834   /* maxxxx128v16 */,
  &gname834   /* maxxxx128v8 */,
  &gname825   /* max64v8 */,
  &gname825   /* max64v16 */,
  &gname825   /* min128v16 */,
  &gname825   /* min128v8 */,
  &gname834   /* minx128v16 */,
  &gname834   /* minx128v8 */,
  &gname834   /* minxx128v16 */,
  &gname834   /* minxx128v8 */,
  &gname834   /* minxxx128v16 */,
  &gname834   /* minxxx128v8 */,
  &gname825   /* min64v8 */,
  &gname825   /* min64v16 */,
  &gname924   /* minsd */,
  &gname924   /* minss */,
  &gname663   /* fmin128v32 */,
  &gname672   /* fminx128v32 */,
  &gname672   /* fminxx128v32 */,
  &gname672   /* fminxxx128v32 */,
  &gname663   /* fmin128v64 */,
  &gname672   /* fminx128v64 */,
  &gname672   /* fminxx128v64 */,
  &gname672   /* fminxxx128v64 */,
  &gname465   /* movx2g64 */,
  &gname465   /* movx2g */,
  &gname456   /* movg2x64 */,
  &gname456   /* movg2x */,
  &gname222   /* movsd */,
  &gname222   /* movss */,
  &gname222   /* movdq */,
  &gname222   /* movapd */,
  &gname222   /* movaps */,
  &gname1104  /* movq2dq */,
  &gname1113  /* movdq2q */,
  &gname996   /* divsd */,
  &gname1014  /* divxsd */,
  &gname1014  /* divxxsd */,
  &gname1014  /* divxxxsd */,
  &gname987   /* divss */,
  &gname1005  /* divxss */,
  &gname1005  /* divxxss */,
  &gname1005  /* divxxxss */,
  &gname564   /* fdiv128v32 */,
  &gname600   /* fdivx128v32 */,
  &gname600   /* fdivxx128v32 */,
  &gname600   /* fdivxxx128v32 */,
  &gname609   /* fdiv128v64 */,
  &gname618   /* fdivx128v64 */,
  &gname618   /* fdivxx128v64 */,
  &gname618   /* fdivxxx128v64 */,
  &gname960   /* mulsd */,
  &gname951   /* mulss */,
  &gname528   /* fmul128v32 */,
  &gname546   /* fmulx128v32 */,
  &gname546   /* fmulxx128v32 */,
  &gname546   /* fmulxxx128v32 */,
  &gname537   /* fmul128v64 */,
  &gname555   /* fmulx128v64 */,
  &gname555   /* fmulxx128v64 */,
  &gname555   /* fmulxxx128v64 */,
  &gname978   /* mulxsd */,
  &gname969   /* mulxss */,
  &gname978   /* mulxxsd */,
  &gname978   /* mulxxxsd */,
  &gname969   /* mulxxss */,
  &gname969   /* mulxxxss */,
  &gname474   /* subsd */,
  &gname474   /* subss */,
  &gname906   /* subxsd */,
  &gname906   /* subxss */,
  &gname906   /* subxxsd */,
  &gname24    /* subxxxsd */,
  &gname906   /* subxxss */,
  &gname24    /* subxxxss */,
  &gname492   /* fsub128v32 */,
  &gname501   /* fsubx128v32 */,
  &gname501   /* fsubxx128v32 */,
  &gname501   /* fsubxxx128v32 */,
  &gname492   /* fsub128v64 */,
  &gname501   /* fsubx128v64 */,
  &gname501   /* fsubxx128v64 */,
  &gname501   /* fsubxxx128v64 */,
  &gname492   /* fhsub128v32 */,
  &gname501   /* fhsubx128v32 */,
  &gname501   /* fhsubxx128v32 */,
  &gname501   /* fhsubxxx128v32 */,
  &gname492   /* fhsub128v64 */,
  &gname501   /* fhsubx128v64 */,
  &gname501   /* fhsubxx128v64 */,
  &gname501   /* fhsubxxx128v64 */,
  &gname303   /* stss */,
  &gname303   /* stntss */,
  &gname303   /* stssx */,
  &gname303   /* stntssx */,
  &gname303   /* stssxx */,
  &gname303   /* stntssxx */,
  &gname303   /* stsd */,
  &gname303   /* stntsd */,
  &gname303   /* stsdx */,
  &gname303   /* stntsdx */,
  &gname303   /* stsdxx */,
  &gname303   /* stntsdxx */,
  &gname942   /* rcpss */,
  &gname699   /* frcp128v32 */,
  &gname213   /* sqrtsd */,
  &gname204   /* sqrtss */,
  &gname942   /* rsqrtss */,
  &gname681   /* fsqrt128v32 */,
  &gname699   /* frsqrt128v32 */,
  &gname690   /* fsqrt128v64 */,
  &gname798   /* punpcklwd */,
  &gname798   /* punpcklbw */,
  &gname798   /* punpckldq */,
  &gname798   /* punpcklbw128 */,
  &gname798   /* punpcklwd128 */,
  &gname798   /* punpckldq128 */,
  &gname798   /* punpckhbw */,
  &gname798   /* punpckhwd */,
  &gname798   /* punpckhdq */,
  &gname798   /* punpckhbw128 */,
  &gname798   /* punpckhwd128 */,
  &gname798   /* punpckhdq128 */,
  &gname798   /* punpcklqdq */,
  &gname798   /* punpckhqdq */,
  &gname861   /* packsswb */,
  &gname861   /* packssdw */,
  &gname861   /* packuswb */,
  &gname861   /* packsswb128 */,
  &gname861   /* packssdw128 */,
  &gname861   /* packuswb128 */,
  &gname744   /* pshufd */,
  &gname771   /* pshufw */,
  &gname771   /* pshuflw */,
  &gname771   /* pshufhw */,
  &gname789   /* pslldq */,
  &gname789   /* psllw */,
  &gname789   /* psllwi */,
  &gname789   /* pslld */,
  &gname789   /* pslldi */,
  &gname789   /* psllq */,
  &gname789   /* psllqi */,
  &gname789   /* psrlw */,
  &gname789   /* psrlwi */,
  &gname789   /* psrld */,
  &gname789   /* psrldi */,
  &gname789   /* psrlq */,
  &gname789   /* psrlqi */,
  &gname789   /* psraw */,
  &gname789   /* psrawi */,
  &gname789   /* psrad */,
  &gname789   /* psradi */,
  &gname780   /* psllw_mmx */,
  &gname780   /* psllwi_mmx */,
  &gname780   /* pslld_mmx */,
  &gname780   /* pslldi_mmx */,
  &gname780   /* psllq_mmx */,
  &gname780   /* psllqi_mmx */,
  &gname780   /* psrlw_mmx */,
  &gname780   /* psrlwi_mmx */,
  &gname780   /* psrld_mmx */,
  &gname780   /* psrldi_mmx */,
  &gname780   /* psrlq_mmx */,
  &gname780   /* psrlqi_mmx */,
  &gname780   /* psraw_mmx */,
  &gname780   /* psrawi_mmx */,
  &gname780   /* psrad_mmx */,
  &gname780   /* psradi_mmx */,
  &gname780   /* pand_mmx */,
  &gname780   /* pandn_mmx */,
  &gname780   /* por_mmx */,
  &gname780   /* pxor_mmx */,
  &gname843   /* pand */,
  &gname843   /* pandn */,
  &gname843   /* por */,
  &gname843   /* pxor */,
  &gname708   /* unpckhpd */,
  &gname717   /* unpckhps */,
  &gname708   /* unpcklpd */,
  &gname717   /* unpcklps */,
  &gname726   /* shufpd */,
  &gname762   /* shufps */,
  &gname222   /* movhlps */,
  &gname222   /* movlhps */,
  &gname789   /* psrldq */,
  &gname789   /* psrlq128v64 */,
  &gname843   /* subus128v16 */,
  &gname843   /* pavgb */,
  &gname843   /* pavgw */,
  &gname663   /* psadbw */,
  &gname843   /* pavgb128 */,
  &gname843   /* pavgw128 */,
  &gname663   /* psadbw128 */,
  &gname24    /* pextrw */,
  &gname33    /* pinsrw */,
  &gname1095  /* pmovmskb */,
  &gname465   /* pmovmskb128 */,
  &gname1086  /* movi32_2m */,
  &gname1086  /* movi64_2m */,
  &gname1095  /* movm_2i32 */,
  &gname1095  /* movm_2i64 */,
  &gname780   /* pshufw64v16 */,
  &gname1140  /* movmskps */,
  &gname1140  /* movmskpd */,
  &gname312   /* maskmovdqu */,
  &gname186   /* maskmovq */,
  &gname1149  /* extrq */,
  &gname1158  /* insertq */,
  &gname627   /* vfmaddss */,
  &gname636   /* vfmaddxss */,
  &gname645   /* vfmaddxxss */,
  &gname654   /* vfmaddxxxss */,
  &gname636   /* vfmaddxrss */,
  &gname645   /* vfmaddxxrss */,
  &gname654   /* vfmaddxxxrss */,
  &gname627   /* vfmaddsd */,
  &gname636   /* vfmaddxsd */,
  &gname645   /* vfmaddxxsd */,
  &gname654   /* vfmaddxxxsd */,
  &gname636   /* vfmaddxrsd */,
  &gname645   /* vfmaddxxrsd */,
  &gname654   /* vfmaddxxxrsd */,
  &gname627   /* vfnmaddss */,
  &gname636   /* vfnmaddxss */,
  &gname645   /* vfnmaddxxss */,
  &gname654   /* vfnmaddxxxss */,
  &gname636   /* vfnmaddxrss */,
  &gname645   /* vfnmaddxxrss */,
  &gname654   /* vfnmaddxxxrss */,
  &gname627   /* vfnmaddsd */,
  &gname636   /* vfnmaddxsd */,
  &gname645   /* vfnmaddxxsd */,
  &gname654   /* vfnmaddxxxsd */,
  &gname636   /* vfnmaddxrsd */,
  &gname645   /* vfnmaddxxrsd */,
  &gname654   /* vfnmaddxxxrsd */,
  &gname627   /* vfmaddps */,
  &gname636   /* vfmaddxps */,
  &gname645   /* vfmaddxxps */,
  &gname654   /* vfmaddxxxps */,
  &gname636   /* vfmaddxrps */,
  &gname645   /* vfmaddxxrps */,
  &gname654   /* vfmaddxxxrps */,
  &gname627   /* vfmaddpd */,
  &gname636   /* vfmaddxpd */,
  &gname645   /* vfmaddxxpd */,
  &gname654   /* vfmaddxxxpd */,
  &gname636   /* vfmaddxrpd */,
  &gname645   /* vfmaddxxrpd */,
  &gname654   /* vfmaddxxxrpd */,
  &gname627   /* vfmaddsubps */,
  &gname636   /* vfmaddsubxps */,
  &gname645   /* vfmaddsubxxps */,
  &gname654   /* vfmaddsubxxxps */,
  &gname636   /* vfmaddsubxrps */,
  &gname645   /* vfmaddsubxxrps */,
  &gname654   /* vfmaddsubxxxrps */,
  &gname627   /* vfmaddsubpd */,
  &gname636   /* vfmaddsubxpd */,
  &gname645   /* vfmaddsubxxpd */,
  &gname654   /* vfmaddsubxxxpd */,
  &gname636   /* vfmaddsubxrpd */,
  &gname645   /* vfmaddsubxxrpd */,
  &gname654   /* vfmaddsubxxxrpd */,
  &gname627   /* vfnmaddps */,
  &gname636   /* vfnmaddxps */,
  &gname645   /* vfnmaddxxps */,
  &gname654   /* vfnmaddxxxps */,
  &gname636   /* vfnmaddxrps */,
  &gname645   /* vfnmaddxxrps */,
  &gname654   /* vfnmaddxxxrps */,
  &gname627   /* vfnmaddpd */,
  &gname636   /* vfnmaddxpd */,
  &gname645   /* vfnmaddxxpd */,
  &gname654   /* vfnmaddxxxpd */,
  &gname636   /* vfnmaddxrpd */,
  &gname645   /* vfnmaddxxrpd */,
  &gname654   /* vfnmaddxxxrpd */,
  &gname627   /* vfmsubss */,
  &gname636   /* vfmsubxss */,
  &gname645   /* vfmsubxxss */,
  &gname654   /* vfmsubxxxss */,
  &gname636   /* vfmsubxrss */,
  &gname645   /* vfmsubxxrss */,
  &gname654   /* vfmsubxxxrss */,
  &gname627   /* vfmsubsd */,
  &gname636   /* vfmsubxsd */,
  &gname645   /* vfmsubxxsd */,
  &gname654   /* vfmsubxxxsd */,
  &gname636   /* vfmsubxrsd */,
  &gname645   /* vfmsubxxrsd */,
  &gname654   /* vfmsubxxxrsd */,
  &gname627   /* vfnmsubss */,
  &gname636   /* vfnmsubxss */,
  &gname645   /* vfnmsubxxss */,
  &gname654   /* vfnmsubxxxss */,
  &gname636   /* vfnmsubxrss */,
  &gname645   /* vfnmsubxxrss */,
  &gname654   /* vfnmsubxxxrss */,
  &gname627   /* vfnmsubsd */,
  &gname636   /* vfnmsubxsd */,
  &gname645   /* vfnmsubxxsd */,
  &gname654   /* vfnmsubxxxsd */,
  &gname636   /* vfnmsubxrsd */,
  &gname645   /* vfnmsubxxrsd */,
  &gname654   /* vfnmsubxxxrsd */,
  &gname627   /* vfmsubps */,
  &gname636   /* vfmsubxps */,
  &gname645   /* vfmsubxxps */,
  &gname654   /* vfmsubxxxps */,
  &gname636   /* vfmsubxrps */,
  &gname645   /* vfmsubxxrps */,
  &gname654   /* vfmsubxxxrps */,
  &gname627   /* vfmsubpd */,
  &gname636   /* vfmsubxpd */,
  &gname645   /* vfmsubxxpd */,
  &gname654   /* vfmsubxxxpd */,
  &gname636   /* vfmsubxrpd */,
  &gname645   /* vfmsubxxrpd */,
  &gname654   /* vfmsubxxxrpd */,
  &gname627   /* vfmsubaddps */,
  &gname636   /* vfmsubaddxps */,
  &gname645   /* vfmsubaddxxps */,
  &gname654   /* vfmsubaddxxxps */,
  &gname636   /* vfmsubaddxrps */,
  &gname645   /* vfmsubaddxxrps */,
  &gname654   /* vfmsubaddxxxrps */,
  &gname627   /* vfmsubaddpd */,
  &gname636   /* vfmsubaddxpd */,
  &gname645   /* vfmsubaddxxpd */,
  &gname654   /* vfmsubaddxxxpd */,
  &gname636   /* vfmsubaddxrpd */,
  &gname645   /* vfmsubaddxxrpd */,
  &gname654   /* vfmsubaddxxxrpd */,
  &gname627   /* vfnmsubps */,
  &gname636   /* vfnmsubxps */,
  &gname645   /* vfnmsubxxps */,
  &gname654   /* vfnmsubxxxps */,
  &gname636   /* vfnmsubxrps */,
  &gname645   /* vfnmsubxxrps */,
  &gname654   /* vfnmsubxxxrps */,
  &gname627   /* vfnmsubpd */,
  &gname636   /* vfnmsubxpd */,
  &gname645   /* vfnmsubxxpd */,
  &gname654   /* vfnmsubxxxpd */,
  &gname636   /* vfnmsubxrpd */,
  &gname645   /* vfnmsubxxrpd */,
  &gname654   /* vfnmsubxxxrpd */,
  &gname1077  /* vzeroupper */,
  &gname1032  /* mfence */,
  &gname1032  /* lfence */,
  &gname1032  /* sfence */,
  &gname1167  /* monitor */,
  &gname1167  /* mwait */,
  &gname1941  /* asm */,
  &gname1941  /* intrncall */,
  &gname1941  /* spadjust */,
  &gname1941  /* savexmms */,
  &gname15    /* zero32 */,
  &gname15    /* zero64 */,
  &gname510   /* xzero32 */,
  &gname510   /* xzero64 */,
  &gname510   /* xzero128v32 */,
  &gname510   /* xzero128v64 */,
  &gname474   /* fadd */,
  &gname474   /* faddp */,
  &gname240   /* flds */,
  &gname240   /* flds_n32 */,
  &gname240   /* fldl */,
  &gname240   /* fldl_n32 */,
  &gname240   /* fldt */,
  &gname240   /* fldt_n32 */,
  &gname240   /* fld */,
  &gname303   /* fst */,
  &gname303   /* fstp */,
  &gname303   /* fstps */,
  &gname303   /* fstps_n32 */,
  &gname303   /* fstpl */,
  &gname303   /* fstpl_n32 */,
  &gname303   /* fstpt */,
  &gname303   /* fstpt_n32 */,
  &gname303   /* fsts */,
  &gname303   /* fsts_n32 */,
  &gname303   /* fstl */,
  &gname303   /* fstl_n32 */,
  &gname483   /* fxch */,
  &gname222   /* fmov */,
  &gname474   /* fsub */,
  &gname474   /* fsubr */,
  &gname474   /* fsubp */,
  &gname474   /* fsubrp */,
  &gname474   /* fmul */,
  &gname474   /* fmulp */,
  &gname987   /* fdiv */,
  &gname987   /* fdivp */,
  &gname987   /* fdivr */,
  &gname987   /* fdivrp */,
  &gname474   /* fucomi */,
  &gname474   /* fucomip */,
  &gname222   /* fchs */,
  &gname1023  /* frndint */,
  &gname303   /* fnstcw */,
  &gname240   /* fldcw */,
  &gname474   /* fistps */,
  &gname474   /* fistpl */,
  &gname474   /* fists */,
  &gname474   /* fistl */,
  &gname474   /* fistpll */,
  &gname906   /* filds */,
  &gname906   /* fildl */,
  &gname906   /* fildll */,
  &gname474   /* fldz */,
  &gname222   /* fabs */,
  &gname573   /* fsqrt */,
  &gname60    /* fcmovb */,
  &gname60    /* fcmovbe */,
  &gname60    /* fcmovnb */,
  &gname60    /* fcmovnbe */,
  &gname60    /* fcmove */,
  &gname60    /* fcmovne */,
  &gname60    /* fcmovu */,
  &gname60    /* fcmovnu */,
  &gname582   /* fcos */,
  &gname591   /* fsin */,
  &gname816   /* cmpeqpd */,
  &gname816   /* cmpltpd */,
  &gname816   /* cmplepd */,
  &gname816   /* cmpunordpd */,
  &gname816   /* cmpneqpd */,
  &gname816   /* cmpnltpd */,
  &gname816   /* cmpnlepd */,
  &gname816   /* cmpordpd */,
  &gname816   /* cmpeqps */,
  &gname816   /* cmpltps */,
  &gname816   /* cmpleps */,
  &gname816   /* cmpunordps */,
  &gname816   /* cmpneqps */,
  &gname816   /* cmpnltps */,
  &gname816   /* cmpnleps */,
  &gname816   /* cmpordps */,
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
  &gname1059  /* emms */,
  &gname312   /* stmxcsr */,
  &gname249   /* ldmxcsr */,
  &gname1068  /* clflush */,
  &gname474   /* fisttps */,
  &gname474   /* fisttpl */,
  &gname474   /* fisttpll */,
  &gname1176  /* pabs128v8 */,
  &gname1185  /* pabsx128v8 */,
  &gname1185  /* pabsxx128v8 */,
  &gname1185  /* pabsxxx128v8 */,
  &gname1176  /* pabs128v16 */,
  &gname1185  /* pabsx128v16 */,
  &gname1185  /* pabsxx128v16 */,
  &gname1185  /* pabsxxx128v16 */,
  &gname1176  /* pabs128v32 */,
  &gname1185  /* pabsx128v32 */,
  &gname1185  /* pabsxx128v32 */,
  &gname1185  /* pabsxxx128v32 */,
  &gname1176  /* psign128v8 */,
  &gname1185  /* psignx128v8 */,
  &gname1185  /* psignxx128v8 */,
  &gname1185  /* psignxxx128v8 */,
  &gname1176  /* psign128v16 */,
  &gname1185  /* psignx128v16 */,
  &gname1185  /* psignxx128v16 */,
  &gname1185  /* psignxxx128v16 */,
  &gname1176  /* psign128v32 */,
  &gname1185  /* psignx128v32 */,
  &gname1185  /* psignxx128v32 */,
  &gname1185  /* psignxxx128v32 */,
  &gname1176  /* pshuf128v8 */,
  &gname1185  /* pshufx128v8 */,
  &gname1185  /* pshufxx128v8 */,
  &gname1185  /* pshufxxx128v8 */,
  &gname1194  /* phsub128v16 */,
  &gname1203  /* phsubx128v16 */,
  &gname1203  /* phsubxx128v16 */,
  &gname1203  /* phsubxxx128v16 */,
  &gname1194  /* phsub128v32 */,
  &gname1203  /* phsubx128v32 */,
  &gname1203  /* phsubxx128v32 */,
  &gname1203  /* phsubxxx128v32 */,
  &gname1194  /* phsubs128v16 */,
  &gname1203  /* phsubsx128v16 */,
  &gname1203  /* phsubsxx128v16 */,
  &gname1203  /* phsubsxxx128v16 */,
  &gname1194  /* phadd128v16 */,
  &gname1203  /* phaddx128v16 */,
  &gname1203  /* phaddxx128v16 */,
  &gname1203  /* phaddxxx128v16 */,
  &gname1194  /* phadd128v32 */,
  &gname1203  /* phaddx128v32 */,
  &gname1203  /* phaddxx128v32 */,
  &gname1203  /* phaddxxx128v32 */,
  &gname1194  /* phadds128v16 */,
  &gname1203  /* phaddsx128v16 */,
  &gname1203  /* phaddsxx128v16 */,
  &gname1203  /* phaddsxxx128v16 */,
  &gname1212  /* pmulhrsw128 */,
  &gname1221  /* pmulhrswx128 */,
  &gname1221  /* pmulhrswxx128 */,
  &gname1221  /* pmulhrswxxx128 */,
  &gname1212  /* pmaddubsw128 */,
  &gname1221  /* pmaddubswx128 */,
  &gname1221  /* pmaddubswxx128 */,
  &gname1221  /* pmaddubswxxx128 */,
  &gname1176  /* palignr128 */,
  &gname1185  /* palignrx128 */,
  &gname1185  /* palignrxx128 */,
  &gname1185  /* palignrxxx128 */,
  &gname1338  /* muldq */,
  &gname1347  /* muldqx */,
  &gname1347  /* muldqxx */,
  &gname1347  /* muldqxxx */,
  &gname1356  /* ldntdqa */,
  &gname1356  /* ldntdqax */,
  &gname1356  /* ldntdqaxx */,
  &gname1365  /* stntdq */,
  &gname1365  /* stntdqx */,
  &gname1365  /* stntdqxx */,
  &gname1230  /* mins128v8 */,
  &gname1239  /* minsx128v8 */,
  &gname1239  /* minsxx128v8 */,
  &gname1239  /* minsxxx128v8 */,
  &gname1230  /* maxs128v8 */,
  &gname1239  /* maxsx128v8 */,
  &gname1239  /* maxsxx128v8 */,
  &gname1239  /* maxsxxx128v8 */,
  &gname1230  /* minu128v16 */,
  &gname1239  /* minux128v16 */,
  &gname1239  /* minuxx128v16 */,
  &gname1239  /* minuxxx128v16 */,
  &gname1230  /* maxu128v16 */,
  &gname1239  /* maxux128v16 */,
  &gname1239  /* maxuxx128v16 */,
  &gname1239  /* maxuxxx128v16 */,
  &gname1230  /* minu128v32 */,
  &gname1239  /* minux128v32 */,
  &gname1239  /* minuxx128v32 */,
  &gname1239  /* minuxxx128v32 */,
  &gname1230  /* maxu128v32 */,
  &gname1239  /* maxux128v32 */,
  &gname1239  /* maxuxx128v32 */,
  &gname1239  /* maxuxxx128v32 */,
  &gname1230  /* mins128v32 */,
  &gname1239  /* minsx128v32 */,
  &gname1239  /* minsxx128v32 */,
  &gname1239  /* minsxxx128v32 */,
  &gname1230  /* maxs128v32 */,
  &gname1239  /* maxsx128v32 */,
  &gname1239  /* maxsxx128v32 */,
  &gname1239  /* maxsxxx128v32 */,
  &gname1230  /* pmovsxbw */,
  &gname1239  /* pmovsxbwx */,
  &gname1239  /* pmovsxbwxx */,
  &gname1239  /* pmovsxbwxxx */,
  &gname1230  /* pmovzxbw */,
  &gname1239  /* pmovzxbwx */,
  &gname1239  /* pmovzxbwxx */,
  &gname1239  /* pmovzxbwxxx */,
  &gname1230  /* pmovsxbd */,
  &gname1239  /* pmovsxbdx */,
  &gname1239  /* pmovsxbdxx */,
  &gname1239  /* pmovsxbdxxx */,
  &gname1230  /* pmovzxbd */,
  &gname1239  /* pmovzxbdx */,
  &gname1239  /* pmovzxbdxx */,
  &gname1239  /* pmovzxbdxxx */,
  &gname1230  /* pmovsxbq */,
  &gname1239  /* pmovsxbqx */,
  &gname1239  /* pmovsxbqxx */,
  &gname1239  /* pmovsxbqxxx */,
  &gname1230  /* pmovzxbq */,
  &gname1239  /* pmovzxbqx */,
  &gname1239  /* pmovzxbqxx */,
  &gname1239  /* pmovzxbqxxx */,
  &gname1230  /* pmovsxwd */,
  &gname1239  /* pmovsxwdx */,
  &gname1239  /* pmovsxwdxx */,
  &gname1239  /* pmovsxwdxxx */,
  &gname1230  /* pmovzxwd */,
  &gname1239  /* pmovzxwdx */,
  &gname1239  /* pmovzxwdxx */,
  &gname1239  /* pmovzxwdxxx */,
  &gname1230  /* pmovsxwq */,
  &gname1239  /* pmovsxwqx */,
  &gname1239  /* pmovsxwqxx */,
  &gname1239  /* pmovsxwqxxx */,
  &gname1230  /* pmovzxwq */,
  &gname1239  /* pmovzxwqx */,
  &gname1239  /* pmovzxwqxx */,
  &gname1239  /* pmovzxwqxxx */,
  &gname1230  /* pmovsxdq */,
  &gname1239  /* pmovsxdqx */,
  &gname1239  /* pmovsxdqxx */,
  &gname1239  /* pmovsxdqxxx */,
  &gname1230  /* pmovzxdq */,
  &gname1239  /* pmovzxdqx */,
  &gname1239  /* pmovzxdqxx */,
  &gname1239  /* pmovzxdqxxx */,
  &gname1338  /* mul128v32 */,
  &gname1347  /* mulx128v32 */,
  &gname1347  /* mulxx128v32 */,
  &gname1347  /* mulxxx128v32 */,
  &gname1374  /* cmpeq128v64 */,
  &gname1383  /* cmpeqx128v64 */,
  &gname1383  /* cmpeqxx128v64 */,
  &gname1383  /* cmpeqxxx128v64 */,
  &gname1374  /* packusdw */,
  &gname1383  /* packusdwx */,
  &gname1383  /* packusdwxx */,
  &gname1383  /* packusdwxxx */,
  &gname1230  /* phminposuw */,
  &gname1239  /* phminposuwx */,
  &gname1239  /* phminposuwxx */,
  &gname1239  /* phminposuwxxx */,
  &gname1392  /* ptest128 */,
  &gname1401  /* ptestx128 */,
  &gname1401  /* ptestxx128 */,
  &gname1401  /* ptestxxx128 */,
  &gname1302  /* roundsd */,
  &gname1311  /* roundxsd */,
  &gname1311  /* roundxxsd */,
  &gname1311  /* roundxxxsd */,
  &gname1338  /* mpsadbw */,
  &gname1347  /* mpsadbwx */,
  &gname1347  /* mpsadbwxx */,
  &gname1347  /* mpsadbwxxx */,
  &gname1284  /* insr128v8 */,
  &gname1293  /* insrx128v8 */,
  &gname1293  /* insrxx128v8 */,
  &gname1293  /* insrxxx128v8 */,
  &gname1284  /* insr128v16 */,
  &gname1293  /* insrx128v16 */,
  &gname1293  /* insrxx128v16 */,
  &gname1293  /* insrxxx128v16 */,
  &gname1284  /* insr128v32 */,
  &gname1293  /* insrx128v32 */,
  &gname1293  /* insrxx128v32 */,
  &gname1293  /* insrxxx128v32 */,
  &gname1284  /* insr128v64 */,
  &gname1293  /* insrx128v64 */,
  &gname1293  /* insrxx128v64 */,
  &gname1293  /* insrxxx128v64 */,
  &gname1284  /* extr128v8 */,
  &gname1293  /* extrx128v8 */,
  &gname1293  /* extrxx128v8 */,
  &gname1293  /* extrxxx128v8 */,
  &gname1284  /* extr128v16 */,
  &gname1293  /* extrx128v16 */,
  &gname1293  /* extrxx128v16 */,
  &gname1293  /* extrxxx128v16 */,
  &gname1284  /* extr128v32 */,
  &gname1293  /* extrx128v32 */,
  &gname1293  /* extrxx128v32 */,
  &gname1293  /* extrxxx128v32 */,
  &gname1284  /* extr128v64 */,
  &gname1293  /* extrx128v64 */,
  &gname1293  /* extrxx128v64 */,
  &gname1293  /* extrxxx128v64 */,
  &gname1320  /* finsr128v32 */,
  &gname1329  /* finsrx128v32 */,
  &gname1329  /* finsrxx128v32 */,
  &gname1329  /* finsrxxx128v32 */,
  &gname1320  /* fextr128v32 */,
  &gname1329  /* fextrx128v32 */,
  &gname1329  /* fextrxx128v32 */,
  &gname1329  /* fextrxxx128v32 */,
  &gname1266  /* fblendv128v32 */,
  &gname1275  /* fblendvx128v32 */,
  &gname1275  /* fblendvxx128v32 */,
  &gname1275  /* fblendvxxx128v32 */,
  &gname1266  /* fblendv128v64 */,
  &gname1275  /* fblendvx128v64 */,
  &gname1275  /* fblendvxx128v64 */,
  &gname1275  /* fblendvxxx128v64 */,
  &gname1266  /* blendv128v8 */,
  &gname1275  /* blendvx128v8 */,
  &gname1275  /* blendvxx128v8 */,
  &gname1275  /* blendvxxx128v8 */,
  &gname1248  /* round128v32 */,
  &gname1257  /* roundx128v32 */,
  &gname1257  /* roundxx128v32 */,
  &gname1257  /* roundxxx128v32 */,
  &gname1248  /* roundss */,
  &gname1257  /* roundxss */,
  &gname1257  /* roundxxss */,
  &gname1257  /* roundxxxss */,
  &gname1266  /* fblend128v64 */,
  &gname1275  /* fblendx128v64 */,
  &gname1275  /* fblendxx128v64 */,
  &gname1275  /* fblendxxx128v64 */,
  &gname1266  /* blend128v16 */,
  &gname1275  /* blendx128v16 */,
  &gname1275  /* blendxx128v16 */,
  &gname1275  /* blendxxx128v16 */,
  &gname1338  /* fdp128v32 */,
  &gname1347  /* fdpx128v32 */,
  &gname1347  /* fdpxx128v32 */,
  &gname1347  /* fdpxxx128v32 */,
  &gname1338  /* fdp128v64 */,
  &gname1347  /* fdpx128v64 */,
  &gname1347  /* fdpxx128v64 */,
  &gname1347  /* fdpxxx128v64 */,
  &gname1248  /* round128v64 */,
  &gname1257  /* roundx128v64 */,
  &gname1257  /* roundxx128v64 */,
  &gname1257  /* roundxxx128v64 */,
  &gname1266  /* fblend128v32 */,
  &gname1275  /* fblendx128v32 */,
  &gname1275  /* fblendxx128v32 */,
  &gname1275  /* fblendxxx128v32 */,
  &gname1446  /* cmpgt128v64 */,
  &gname1455  /* cmpgtx128v64 */,
  &gname1455  /* cmpgtxx128v64 */,
  &gname1455  /* cmpgtxxx128v64 */,
  &gname1410  /* crc32w */,
  &gname1419  /* crc32wx */,
  &gname1419  /* crc32wxx */,
  &gname1419  /* crc32wxxx */,
  &gname1410  /* crc32d */,
  &gname1419  /* crc32dx */,
  &gname1419  /* crc32dxx */,
  &gname1419  /* crc32dxxx */,
  &gname1410  /* crc32q */,
  &gname1419  /* crc32qx */,
  &gname1419  /* crc32qxx */,
  &gname1419  /* crc32qxxx */,
  &gname1410  /* crc32b */,
  &gname1419  /* crc32bx */,
  &gname1419  /* crc32bxx */,
  &gname1419  /* crc32bxxx */,
  &gname1428  /* cmpestrm */,
  &gname1437  /* cmpestrmx */,
  &gname1437  /* cmpestrmxx */,
  &gname1437  /* cmpestrmxxx */,
  &gname1428  /* cmpestri */,
  &gname1437  /* cmpestrix */,
  &gname1437  /* cmpestrixx */,
  &gname1437  /* cmpestrixxx */,
  &gname1428  /* cmpistrm */,
  &gname1437  /* cmpistrmx */,
  &gname1437  /* cmpistrmxx */,
  &gname1437  /* cmpistrmxxx */,
  &gname1428  /* cmpistri */,
  &gname1437  /* cmpistrix */,
  &gname1437  /* cmpistrixx */,
  &gname1437  /* cmpistrixxx */,
  &gname1446  /* popcnt16 */,
  &gname1455  /* popcntx16 */,
  &gname1455  /* popcntxx16 */,
  &gname1455  /* popcntxxx16 */,
  &gname1446  /* popcnt32 */,
  &gname1455  /* popcntx32 */,
  &gname1455  /* popcntxx32 */,
  &gname1455  /* popcntxxx32 */,
  &gname1446  /* popcnt64 */,
  &gname1455  /* popcntx64 */,
  &gname1455  /* popcntxx64 */,
  &gname1455  /* popcntxxx64 */,
  &gname1464  /* aesimc */,
  &gname1473  /* aesimcx */,
  &gname1473  /* aesimcxx */,
  &gname1473  /* aesimcxxx */,
  &gname1464  /* aeskeygenassist */,
  &gname1473  /* aeskeygenassistx */,
  &gname1473  /* aeskeygenassistxx */,
  &gname1473  /* aeskeygenassistxxx */,
  &gname1464  /* aesenc */,
  &gname1473  /* aesencx */,
  &gname1473  /* aesencxx */,
  &gname1473  /* aesencxxx */,
  &gname1464  /* aesenclast */,
  &gname1473  /* aesenclastx */,
  &gname1473  /* aesenclastxx */,
  &gname1473  /* aesenclastxxx */,
  &gname1464  /* aesdec */,
  &gname1473  /* aesdecx */,
  &gname1473  /* aesdecxx */,
  &gname1473  /* aesdecxxx */,
  &gname1464  /* aesdeclast */,
  &gname1473  /* aesdeclastx */,
  &gname1473  /* aesdeclastxx */,
  &gname1473  /* aesdeclastxxx */,
  &gname1482  /* pclmulqdq */,
  &gname1491  /* pclmulqdqx */,
  &gname1491  /* pclmulqdqxx */,
  &gname1491  /* pclmulqdqxxx */,
  &gname1500  /* vphaddbd */,
  &gname1509  /* vphaddbdx */,
  &gname1509  /* vphaddbdxx */,
  &gname1509  /* vphaddbdxxx */,
  &gname1500  /* vphaddbq */,
  &gname1509  /* vphaddbqx */,
  &gname1509  /* vphaddbqxx */,
  &gname1509  /* vphaddbqxxx */,
  &gname1500  /* vphaddbw */,
  &gname1509  /* vphaddbwx */,
  &gname1509  /* vphaddbwxx */,
  &gname1509  /* vphaddbwxxx */,
  &gname1500  /* vphadddq */,
  &gname1509  /* vphadddqx */,
  &gname1509  /* vphadddqxx */,
  &gname1509  /* vphadddqxxx */,
  &gname1500  /* vphaddubd */,
  &gname1509  /* vphaddubdx */,
  &gname1509  /* vphaddubdxx */,
  &gname1509  /* vphaddubdxxx */,
  &gname1500  /* vphaddubq */,
  &gname1509  /* vphaddubqx */,
  &gname1509  /* vphaddubqxx */,
  &gname1509  /* vphaddubqxxx */,
  &gname1500  /* vphaddubw */,
  &gname1509  /* vphaddubwx */,
  &gname1509  /* vphaddubwxx */,
  &gname1509  /* vphaddubwxxx */,
  &gname1500  /* vphaddudq */,
  &gname1509  /* vphaddudqx */,
  &gname1509  /* vphaddudqxx */,
  &gname1509  /* vphaddudqxxx */,
  &gname1500  /* vphadduwd */,
  &gname1509  /* vphadduwdx */,
  &gname1509  /* vphadduwdxx */,
  &gname1509  /* vphadduwdxxx */,
  &gname1500  /* vphadduwq */,
  &gname1509  /* vphadduwqx */,
  &gname1509  /* vphadduwqxx */,
  &gname1509  /* vphadduwqxxx */,
  &gname1500  /* vphaddwd */,
  &gname1509  /* vphaddwdx */,
  &gname1509  /* vphaddwdxx */,
  &gname1509  /* vphaddwdxxx */,
  &gname1500  /* vphaddwq */,
  &gname1509  /* vphaddwqx */,
  &gname1509  /* vphaddwqxx */,
  &gname1509  /* vphaddwqxxx */,
  &gname1500  /* vphsubbw */,
  &gname1509  /* vphsubbwx */,
  &gname1509  /* vphsubbwxx */,
  &gname1509  /* vphsubbwxxx */,
  &gname1500  /* vphsubdq */,
  &gname1509  /* vphsubdqx */,
  &gname1509  /* vphsubdqxx */,
  &gname1509  /* vphsubdqxxx */,
  &gname1500  /* vphsubwd */,
  &gname1509  /* vphsubwdx */,
  &gname1509  /* vphsubwdxx */,
  &gname1509  /* vphsubwdxxx */,
  &gname1536  /* vfrczpd */,
  &gname1545  /* vfrczpdx */,
  &gname1545  /* vfrczpdxx */,
  &gname1545  /* vfrczpdxxx */,
  &gname1536  /* vfrczps */,
  &gname1545  /* vfrczpsx */,
  &gname1545  /* vfrczpsxx */,
  &gname1545  /* vfrczpsxxx */,
  &gname1536  /* vfrczsd */,
  &gname1545  /* vfrczsdx */,
  &gname1545  /* vfrczsdxx */,
  &gname1545  /* vfrczsdxxx */,
  &gname1536  /* vfrczss */,
  &gname1545  /* vfrczssx */,
  &gname1545  /* vfrczssxx */,
  &gname1545  /* vfrczssxxx */,
  &gname1554  /* vprotbi */,
  &gname1563  /* vprotbix */,
  &gname1563  /* vprotbixx */,
  &gname1563  /* vprotbixxx */,
  &gname1554  /* vprotdi */,
  &gname1563  /* vprotdix */,
  &gname1563  /* vprotdixx */,
  &gname1563  /* vprotdixxx */,
  &gname1554  /* vprotqi */,
  &gname1563  /* vprotqix */,
  &gname1563  /* vprotqixx */,
  &gname1563  /* vprotqixxx */,
  &gname1554  /* vprotwi */,
  &gname1563  /* vprotwix */,
  &gname1563  /* vprotwixx */,
  &gname1563  /* vprotwixxx */,
  &gname1554  /* vpcomb */,
  &gname1563  /* vpcombx */,
  &gname1563  /* vpcombxx */,
  &gname1563  /* vpcombxxx */,
  &gname1554  /* vpcomd */,
  &gname1563  /* vpcomdx */,
  &gname1563  /* vpcomdxx */,
  &gname1563  /* vpcomdxxx */,
  &gname1554  /* vpcomq */,
  &gname1563  /* vpcomqx */,
  &gname1563  /* vpcomqxx */,
  &gname1563  /* vpcomqxxx */,
  &gname1554  /* vpcomw */,
  &gname1563  /* vpcomwx */,
  &gname1563  /* vpcomwxx */,
  &gname1563  /* vpcomwxxx */,
  &gname1554  /* vpcomub */,
  &gname1563  /* vpcomubx */,
  &gname1563  /* vpcomubxx */,
  &gname1563  /* vpcomubxxx */,
  &gname1554  /* vpcomud */,
  &gname1563  /* vpcomudx */,
  &gname1563  /* vpcomudxx */,
  &gname1563  /* vpcomudxxx */,
  &gname1554  /* vpcomuq */,
  &gname1563  /* vpcomuqx */,
  &gname1563  /* vpcomuqxx */,
  &gname1563  /* vpcomuqxxx */,
  &gname1554  /* vpcomuw */,
  &gname1563  /* vpcomuwx */,
  &gname1563  /* vpcomuwxx */,
  &gname1563  /* vpcomuwxxx */,
  &gname1554  /* vpperm */,
  &gname1563  /* vppermx */,
  &gname1563  /* vppermxx */,
  &gname1563  /* vppermxxx */,
  &gname1563  /* vppermxr */,
  &gname1563  /* vppermxxr */,
  &gname1563  /* vppermxxxr */,
  &gname1572  /* vprotb */,
  &gname1581  /* vprotbx */,
  &gname1581  /* vprotbxx */,
  &gname1581  /* vprotbxxx */,
  &gname1581  /* vprotbxr */,
  &gname1581  /* vprotbxxr */,
  &gname1581  /* vprotbxxxr */,
  &gname1572  /* vprotd */,
  &gname1581  /* vprotdx */,
  &gname1581  /* vprotdxx */,
  &gname1581  /* vprotdxxx */,
  &gname1581  /* vprotdxr */,
  &gname1581  /* vprotdxxr */,
  &gname1581  /* vprotdxxxr */,
  &gname1572  /* vprotq */,
  &gname1581  /* vprotqx */,
  &gname1581  /* vprotqxx */,
  &gname1581  /* vprotqxxx */,
  &gname1581  /* vprotqxr */,
  &gname1581  /* vprotqxxr */,
  &gname1581  /* vprotqxxxr */,
  &gname1572  /* vprotw */,
  &gname1581  /* vprotwx */,
  &gname1581  /* vprotwxx */,
  &gname1581  /* vprotwxxx */,
  &gname1581  /* vprotwxr */,
  &gname1581  /* vprotwxxr */,
  &gname1581  /* vprotwxxxr */,
  &gname1572  /* vpshab */,
  &gname1581  /* vpshabx */,
  &gname1581  /* vpshabxx */,
  &gname1581  /* vpshabxxx */,
  &gname1581  /* vpshabxr */,
  &gname1581  /* vpshabxxr */,
  &gname1581  /* vpshabxxxr */,
  &gname1572  /* vpshad */,
  &gname1581  /* vpshadx */,
  &gname1581  /* vpshadxx */,
  &gname1581  /* vpshadxxx */,
  &gname1581  /* vpshadxr */,
  &gname1581  /* vpshadxxr */,
  &gname1581  /* vpshadxxxr */,
  &gname1572  /* vpshaq */,
  &gname1581  /* vpshaqx */,
  &gname1581  /* vpshaqxx */,
  &gname1581  /* vpshaqxxx */,
  &gname1581  /* vpshaqxr */,
  &gname1581  /* vpshaqxxr */,
  &gname1581  /* vpshaqxxxr */,
  &gname1572  /* vpshaw */,
  &gname1581  /* vpshawx */,
  &gname1581  /* vpshawxx */,
  &gname1581  /* vpshawxxx */,
  &gname1581  /* vpshawxr */,
  &gname1581  /* vpshawxxr */,
  &gname1581  /* vpshawxxxr */,
  &gname1572  /* vpshlb */,
  &gname1581  /* vpshlbx */,
  &gname1581  /* vpshlbxx */,
  &gname1581  /* vpshlbxxx */,
  &gname1581  /* vpshlbxr */,
  &gname1581  /* vpshlbxxr */,
  &gname1581  /* vpshlbxxxr */,
  &gname1572  /* vpshld */,
  &gname1581  /* vpshldx */,
  &gname1581  /* vpshldxx */,
  &gname1581  /* vpshldxxx */,
  &gname1581  /* vpshldxr */,
  &gname1581  /* vpshldxxr */,
  &gname1581  /* vpshldxxxr */,
  &gname1572  /* vpshlq */,
  &gname1581  /* vpshlqx */,
  &gname1581  /* vpshlqxx */,
  &gname1581  /* vpshlqxxx */,
  &gname1581  /* vpshlqxr */,
  &gname1581  /* vpshlqxxr */,
  &gname1581  /* vpshlqxxxr */,
  &gname1572  /* vpshlw */,
  &gname1581  /* vpshlwx */,
  &gname1581  /* vpshlwxx */,
  &gname1581  /* vpshlwxxx */,
  &gname1581  /* vpshlwxr */,
  &gname1581  /* vpshlwxxr */,
  &gname1581  /* vpshlwxxxr */,
  &gname1554  /* vpcmov */,
  &gname1563  /* vpcmovx */,
  &gname1563  /* vpcmovxx */,
  &gname1563  /* vpcmovxxx */,
  &gname1563  /* vpcmovxr */,
  &gname1563  /* vpcmovxxr */,
  &gname1563  /* vpcmovxxxr */,
  &gname1518  /* vpmacsdd */,
  &gname1527  /* vpmacsddx */,
  &gname1527  /* vpmacsddxx */,
  &gname1527  /* vpmacsddxxx */,
  &gname1518  /* vpmacsdqh */,
  &gname1527  /* vpmacsdqhx */,
  &gname1527  /* vpmacsdqhxx */,
  &gname1527  /* vpmacsdqhxxx */,
  &gname1518  /* vpmacsdql */,
  &gname1527  /* vpmacsdqlx */,
  &gname1527  /* vpmacsdqlxx */,
  &gname1527  /* vpmacsdqlxxx */,
  &gname1518  /* vpmacssdd */,
  &gname1527  /* vpmacssddx */,
  &gname1527  /* vpmacssddxx */,
  &gname1527  /* vpmacssddxxx */,
  &gname1518  /* vpmacssdqh */,
  &gname1527  /* vpmacssdqhx */,
  &gname1527  /* vpmacssdqhxx */,
  &gname1527  /* vpmacssdqhxxx */,
  &gname1518  /* vpmacssdql */,
  &gname1527  /* vpmacssdqlx */,
  &gname1527  /* vpmacssdqlxx */,
  &gname1527  /* vpmacssdqlxxx */,
  &gname1518  /* vpmacsswd */,
  &gname1527  /* vpmacsswdx */,
  &gname1527  /* vpmacsswdxx */,
  &gname1527  /* vpmacsswdxxx */,
  &gname1518  /* vpmacssww */,
  &gname1527  /* vpmacsswwx */,
  &gname1527  /* vpmacsswwxx */,
  &gname1527  /* vpmacsswwxxx */,
  &gname1518  /* vpmacswd */,
  &gname1527  /* vpmacswdx */,
  &gname1527  /* vpmacswdxx */,
  &gname1527  /* vpmacswdxxx */,
  &gname1518  /* vpmacsww */,
  &gname1527  /* vpmacswwx */,
  &gname1527  /* vpmacswwxx */,
  &gname1527  /* vpmacswwxxx */,
  &gname1518  /* vpmadcsswd */,
  &gname1527  /* vpmadcsswdx */,
  &gname1527  /* vpmadcsswdxx */,
  &gname1527  /* vpmadcsswdxxx */,
  &gname1518  /* vpmadcswd */,
  &gname1527  /* vpmadcswdx */,
  &gname1527  /* vpmadcswdxx */,
  &gname1527  /* vpmadcswdxxx */,
  &gname1590  /* vfadd128v64 */,
  &gname1599  /* vfaddx128v64 */,
  &gname1599  /* vfaddxx128v64 */,
  &gname1599  /* vfaddxxx128v64 */,
  &gname1590  /* vfadd128v32 */,
  &gname1599  /* vfaddx128v32 */,
  &gname1599  /* vfaddxx128v32 */,
  &gname1599  /* vfaddxxx128v32 */,
  &gname1590  /* vfaddsd */,
  &gname1599  /* vfaddxsd */,
  &gname1599  /* vfaddxxsd */,
  &gname1599  /* vfaddxxxsd */,
  &gname1590  /* vfaddss */,
  &gname1599  /* vfaddxss */,
  &gname1599  /* vfaddxxss */,
  &gname1599  /* vfaddxxxss */,
  &gname1590  /* vfaddsub128v64 */,
  &gname1599  /* vfaddsubx128v64 */,
  &gname1599  /* vfaddsubxx128v64 */,
  &gname1599  /* vfaddsubxxx128v64 */,
  &gname1590  /* vfaddsub128v32 */,
  &gname1599  /* vfaddsubx128v32 */,
  &gname1599  /* vfaddsubxx128v32 */,
  &gname1599  /* vfaddsubxxx128v32 */,
  &gname1752  /* vaesenc */,
  &gname1761  /* vaesencx */,
  &gname1761  /* vaesencxx */,
  &gname1761  /* vaesencxxx */,
  &gname1752  /* vaesenclast */,
  &gname1761  /* vaesenclastx */,
  &gname1761  /* vaesenclastxx */,
  &gname1761  /* vaesenclastxxx */,
  &gname1752  /* vaesdec */,
  &gname1761  /* vaesdecx */,
  &gname1761  /* vaesdecxx */,
  &gname1761  /* vaesdecxxx */,
  &gname1752  /* vaesdeclast */,
  &gname1761  /* vaesdeclastx */,
  &gname1761  /* vaesdeclastxx */,
  &gname1761  /* vaesdeclastxxx */,
  &gname1752  /* vaesimc */,
  &gname1761  /* vaesimcx */,
  &gname1761  /* vaesimcxx */,
  &gname1761  /* vaesimcxxx */,
  &gname1752  /* vaeskeygenassist */,
  &gname1761  /* vaeskeygenassistx */,
  &gname1761  /* vaeskeygenassistxx */,
  &gname1761  /* vaeskeygenassistxxx */,
  &gname1590  /* vandpd */,
  &gname1590  /* vfand128v64 */,
  &gname1599  /* vfandx128v64 */,
  &gname1599  /* vfandxx128v64 */,
  &gname1599  /* vfandxxx128v64 */,
  &gname1590  /* vandps */,
  &gname1590  /* vfand128v32 */,
  &gname1599  /* vfandx128v32 */,
  &gname1599  /* vfandxx128v32 */,
  &gname1599  /* vfandxxx128v32 */,
  &gname1590  /* vandnpd */,
  &gname1590  /* vfandn128v64 */,
  &gname1599  /* vfandnx128v64 */,
  &gname1599  /* vfandnxx128v64 */,
  &gname1599  /* vfandnxxx128v64 */,
  &gname1590  /* vandnps */,
  &gname1590  /* vfandn128v32 */,
  &gname1599  /* vfandnx128v32 */,
  &gname1599  /* vfandnxx128v32 */,
  &gname1599  /* vfandnxxx128v32 */,
  &gname1716  /* vfblend128v64 */,
  &gname1725  /* vfblendx128v64 */,
  &gname1725  /* vfblendxx128v64 */,
  &gname1725  /* vfblendxxx128v64 */,
  &gname1716  /* vfblend128v32 */,
  &gname1725  /* vfblendx128v32 */,
  &gname1725  /* vfblendxx128v32 */,
  &gname1725  /* vfblendxxx128v32 */,
  &gname1716  /* vfblendv128v64 */,
  &gname1725  /* vfblendvx128v64 */,
  &gname1725  /* vfblendvxx128v64 */,
  &gname1725  /* vfblendvxxx128v64 */,
  &gname1716  /* vfblendv128v32 */,
  &gname1725  /* vfblendvx128v32 */,
  &gname1725  /* vfblendvxx128v32 */,
  &gname1725  /* vfblendvxxx128v32 */,
  &gname1824  /* vfbroadcastss */,
  &gname1824  /* vfbroadcastxss */,
  &gname1824  /* vfbroadcastxxss */,
  &gname1824  /* vfbroadcastsd */,
  &gname1824  /* vfbroadcastxsd */,
  &gname1824  /* vfbroadcastxxsd */,
  &gname1824  /* vfbroadcastf128 */,
  &gname1824  /* vfbroadcastxf128 */,
  &gname1824  /* vfbroadcastxxf128 */,
  &gname1608  /* vcmppd */,
  &gname1608  /* vfcmp128v64 */,
  &gname1617  /* vfcmpx128v64 */,
  &gname1617  /* vfcmpxx128v64 */,
  &gname1617  /* vfcmpxxx128v64 */,
  &gname1608  /* vcmpps */,
  &gname1608  /* vfcmp128v32 */,
  &gname1617  /* vfcmpx128v32 */,
  &gname1617  /* vfcmpxx128v32 */,
  &gname1617  /* vfcmpxxx128v32 */,
  &gname1608  /* vfcmpsd */,
  &gname1617  /* vfcmpxsd */,
  &gname1617  /* vfcmpxxsd */,
  &gname1617  /* vfcmpxxxsd */,
  &gname1608  /* vfcmpss */,
  &gname1617  /* vfcmpxss */,
  &gname1617  /* vfcmpxxss */,
  &gname1617  /* vfcmpxxxss */,
  &gname1797  /* vcomisd */,
  &gname1806  /* vcomixsd */,
  &gname1806  /* vcomixxsd */,
  &gname1806  /* vcomixxxsd */,
  &gname1797  /* vcomiss */,
  &gname1806  /* vcomixss */,
  &gname1806  /* vcomixxss */,
  &gname1806  /* vcomixxxss */,
  &gname1869  /* vcvtdq2pd */,
  &gname1878  /* vcvtdq2pdx */,
  &gname1878  /* vcvtdq2pdxx */,
  &gname1878  /* vcvtdq2pdxxx */,
  &gname1869  /* vcvtdq2ps */,
  &gname1878  /* vcvtdq2psx */,
  &gname1878  /* vcvtdq2psxx */,
  &gname1878  /* vcvtdq2psxxx */,
  &gname1869  /* vcvtpd2dq */,
  &gname1878  /* vcvtpd2dqx */,
  &gname1878  /* vcvtpd2dqxx */,
  &gname1878  /* vcvtpd2dqxxx */,
  &gname1869  /* vcvtpd2dqy */,
  &gname1878  /* vcvtpd2dqyx */,
  &gname1878  /* vcvtpd2dqyxx */,
  &gname1878  /* vcvtpd2dqyxxx */,
  &gname1869  /* vcvtpd2ps */,
  &gname1878  /* vcvtpd2psx */,
  &gname1878  /* vcvtpd2psxx */,
  &gname1878  /* vcvtpd2psxxx */,
  &gname1869  /* vcvtpd2psy */,
  &gname1878  /* vcvtpd2psyx */,
  &gname1878  /* vcvtpd2psyxx */,
  &gname1878  /* vcvtpd2psyxxx */,
  &gname1869  /* vcvtps2dq */,
  &gname1878  /* vcvtps2dqx */,
  &gname1878  /* vcvtps2dqxx */,
  &gname1878  /* vcvtps2dqxxx */,
  &gname1869  /* vcvtps2pd */,
  &gname1878  /* vcvtps2pdx */,
  &gname1878  /* vcvtps2pdxx */,
  &gname1878  /* vcvtps2pdxxx */,
  &gname1869  /* vcvtsd2si */,
  &gname1869  /* vcvtsd2siq */,
  &gname1869  /* vcvtsd2ss */,
  &gname1878  /* vcvtsd2ssx */,
  &gname1878  /* vcvtsd2ssxx */,
  &gname1878  /* vcvtsd2ssxxx */,
  &gname1869  /* vcvtsi2sd */,
  &gname1878  /* vcvtsi2sdx */,
  &gname1878  /* vcvtsi2sdxx */,
  &gname1878  /* vcvtsi2sdxxx */,
  &gname1869  /* vcvtsi2sdq */,
  &gname1878  /* vcvtsi2sdqx */,
  &gname1878  /* vcvtsi2sdqxx */,
  &gname1878  /* vcvtsi2sdqxxx */,
  &gname1869  /* vcvtsi2ss */,
  &gname1878  /* vcvtsi2ssx */,
  &gname1878  /* vcvtsi2ssxx */,
  &gname1878  /* vcvtsi2ssxxx */,
  &gname1869  /* vcvtsi2ssq */,
  &gname1878  /* vcvtsi2ssqx */,
  &gname1878  /* vcvtsi2ssqxx */,
  &gname1878  /* vcvtsi2ssqxxx */,
  &gname1869  /* vcvtss2sd */,
  &gname1878  /* vcvtss2sdx */,
  &gname1878  /* vcvtss2sdxx */,
  &gname1878  /* vcvtss2sdxxx */,
  &gname1869  /* vcvtss2si */,
  &gname1869  /* vcvtss2siq */,
  &gname1869  /* vcvttpd2dq */,
  &gname1878  /* vcvttpd2dqx */,
  &gname1878  /* vcvttpd2dqxx */,
  &gname1878  /* vcvttpd2dqxxx */,
  &gname1869  /* vcvttpd2dqy */,
  &gname1878  /* vcvttpd2dqyx */,
  &gname1878  /* vcvttpd2dqyxx */,
  &gname1878  /* vcvttpd2dqyxxx */,
  &gname1869  /* vcvttps2dq */,
  &gname1878  /* vcvttps2dqx */,
  &gname1878  /* vcvttps2dqxx */,
  &gname1878  /* vcvttps2dqxxx */,
  &gname1869  /* vcvttsd2si */,
  &gname1869  /* vcvttsd2siq */,
  &gname1869  /* vcvttss2si */,
  &gname1869  /* vcvttss2siq */,
  &gname1680  /* vfdiv128v64 */,
  &gname1689  /* vfdivx128v64 */,
  &gname1689  /* vfdivxx128v64 */,
  &gname1689  /* vfdivxxx128v64 */,
  &gname1680  /* vfdiv128v32 */,
  &gname1689  /* vfdivx128v32 */,
  &gname1689  /* vfdivxx128v32 */,
  &gname1689  /* vfdivxxx128v32 */,
  &gname1680  /* vdivsd */,
  &gname1689  /* vdivxsd */,
  &gname1689  /* vdivxxsd */,
  &gname1689  /* vdivxxxsd */,
  &gname1680  /* vdivss */,
  &gname1689  /* vdivxss */,
  &gname1689  /* vdivxxss */,
  &gname1689  /* vdivxxxss */,
  &gname1698  /* vfdp128v64 */,
  &gname1707  /* vfdpx128v64 */,
  &gname1707  /* vfdpxx128v64 */,
  &gname1707  /* vfdpxxx128v64 */,
  &gname1698  /* vfdp128v32 */,
  &gname1707  /* vfdpx128v32 */,
  &gname1707  /* vfdpxx128v32 */,
  &gname1707  /* vfdpxxx128v32 */,
  &gname1797  /* vfextrf128 */,
  &gname1806  /* vfextrxf128 */,
  &gname1806  /* vfextrxxf128 */,
  &gname1806  /* vfextrxxxf128 */,
  &gname1797  /* vfextr128v32 */,
  &gname1806  /* vfextrx128v32 */,
  &gname1806  /* vfextrxx128v32 */,
  &gname1806  /* vfextrxxx128v32 */,
  &gname1608  /* vfhadd128v64 */,
  &gname1617  /* vfhaddx128v64 */,
  &gname1617  /* vfhaddxx128v64 */,
  &gname1617  /* vfhaddxxx128v64 */,
  &gname1608  /* vfhadd128v32 */,
  &gname1617  /* vfhaddx128v32 */,
  &gname1617  /* vfhaddxx128v32 */,
  &gname1617  /* vfhaddxxx128v32 */,
  &gname1608  /* vfhsub128v64 */,
  &gname1617  /* vfhsubx128v64 */,
  &gname1617  /* vfhsubxx128v64 */,
  &gname1617  /* vfhsubxxx128v64 */,
  &gname1608  /* vfhsub128v32 */,
  &gname1617  /* vfhsubx128v32 */,
  &gname1617  /* vfhsubxx128v32 */,
  &gname1617  /* vfhsubxxx128v32 */,
  &gname1797  /* vfinsrf128 */,
  &gname1806  /* vfinsrxf128 */,
  &gname1806  /* vfinsrxxf128 */,
  &gname1806  /* vfinsrxxxf128 */,
  &gname1797  /* vfinsr128v32 */,
  &gname1806  /* vfinsrx128v32 */,
  &gname1806  /* vfinsrxx128v32 */,
  &gname1806  /* vfinsrxxx128v32 */,
  &gname1914  /* vlddqu */,
  &gname1914  /* vlddqux */,
  &gname1914  /* vlddquxx */,
  &gname1914  /* vlddqu_n32 */,
  &gname1887  /* vldmxcsr */,
  &gname1815  /* vmaskmovdqu */,
  &gname1770  /* vfmaskld128v32 */,
  &gname1770  /* vfmaskldx128v32 */,
  &gname1770  /* vfmaskldxx128v32 */,
  &gname1770  /* vfmaskld128v64 */,
  &gname1770  /* vfmaskldx128v64 */,
  &gname1770  /* vfmaskldxx128v64 */,
  &gname1815  /* vfmaskst128v32 */,
  &gname1815  /* vfmaskstx128v32 */,
  &gname1815  /* vfmaskstxx128v32 */,
  &gname1815  /* vfmaskst128v64 */,
  &gname1815  /* vfmaskstx128v64 */,
  &gname1815  /* vfmaskstxx128v64 */,
  &gname1608  /* vfmax128v64 */,
  &gname1617  /* vfmaxx128v64 */,
  &gname1617  /* vfmaxxx128v64 */,
  &gname1617  /* vfmaxxxx128v64 */,
  &gname1608  /* vfmax128v32 */,
  &gname1617  /* vfmaxx128v32 */,
  &gname1617  /* vfmaxxx128v32 */,
  &gname1617  /* vfmaxxxx128v32 */,
  &gname1608  /* vfmaxsd */,
  &gname1617  /* vfmaxxsd */,
  &gname1617  /* vfmaxxxsd */,
  &gname1617  /* vfmaxxxxsd */,
  &gname1608  /* vfmaxss */,
  &gname1617  /* vfmaxxss */,
  &gname1617  /* vfmaxxxss */,
  &gname1617  /* vfmaxxxxss */,
  &gname1608  /* vfmin128v64 */,
  &gname1617  /* vfminx128v64 */,
  &gname1617  /* vfminxx128v64 */,
  &gname1617  /* vfminxxx128v64 */,
  &gname1608  /* vfmin128v32 */,
  &gname1617  /* vfminx128v32 */,
  &gname1617  /* vfminxx128v32 */,
  &gname1617  /* vfminxxx128v32 */,
  &gname1608  /* vfminsd */,
  &gname1617  /* vfminxsd */,
  &gname1617  /* vfminxxsd */,
  &gname1617  /* vfminxxxsd */,
  &gname1608  /* vfminss */,
  &gname1617  /* vfminxss */,
  &gname1617  /* vfminxxss */,
  &gname1617  /* vfminxxxss */,
  &gname1797  /* vmovapd */,
  &gname1770  /* vldapd */,
  &gname1770  /* vldapdx */,
  &gname1770  /* vldapdxx */,
  &gname1770  /* vldapd_n32 */,
  &gname1815  /* vstapd */,
  &gname1815  /* vstapdx */,
  &gname1815  /* vstapdxx */,
  &gname1815  /* vstapd_n32 */,
  &gname1797  /* vmovaps */,
  &gname1770  /* vldaps */,
  &gname1770  /* vldapsx */,
  &gname1770  /* vldapsxx */,
  &gname1770  /* vldaps_n32 */,
  &gname1815  /* vstaps */,
  &gname1815  /* vstapsx */,
  &gname1815  /* vstapsxx */,
  &gname1815  /* vstaps_n32 */,
  &gname1815  /* vmovg2x */,
  &gname1815  /* vmovg2x64 */,
  &gname1770  /* vmovx2g */,
  &gname1770  /* vmovx2g64 */,
  &gname1770  /* vld64_2sse */,
  &gname1770  /* vldx64_2sse */,
  &gname1770  /* vldxx64_2sse */,
  &gname1770  /* vld64_2sse_n32 */,
  &gname1815  /* vst64_fsse */,
  &gname1815  /* vstx64_fsse */,
  &gname1815  /* vstxx64_fsse */,
  &gname1815  /* vst64_fsse_n32 */,
  &gname1797  /* vmovddup */,
  &gname1806  /* vmovddupx */,
  &gname1806  /* vmovddupxx */,
  &gname1806  /* vmovddupxxx */,
  &gname1770  /* vlddqa */,
  &gname1770  /* vlddqax */,
  &gname1770  /* vlddqaxx */,
  &gname1770  /* vlddqa_n32 */,
  &gname1797  /* vmovdqa */,
  &gname1815  /* vstdqa */,
  &gname1815  /* vstdqax */,
  &gname1815  /* vstdqaxx */,
  &gname1815  /* vstdqa_n32 */,
  &gname1815  /* vstdqu */,
  &gname1815  /* vstdqux */,
  &gname1815  /* vstdquxx */,
  &gname1815  /* vstdqu_n32 */,
  &gname1770  /* vldhpd */,
  &gname1770  /* vldhpdx */,
  &gname1770  /* vldhpdxx */,
  &gname1770  /* vldhpd_n32 */,
  &gname1815  /* vsthpd */,
  &gname1815  /* vsthpdx */,
  &gname1815  /* vsthpdxx */,
  &gname1815  /* vsthpd_n32 */,
  &gname1770  /* vldhps */,
  &gname1770  /* vldhpsx */,
  &gname1770  /* vldhpsxx */,
  &gname1770  /* vldhps_n32 */,
  &gname1815  /* vsthps */,
  &gname1815  /* vsthpsx */,
  &gname1815  /* vsthpsxx */,
  &gname1815  /* vsthps_n32 */,
  &gname1770  /* vldlpd */,
  &gname1770  /* vldlpdx */,
  &gname1770  /* vldlpdxx */,
  &gname1770  /* vldlpd_n32 */,
  &gname1815  /* vstorelpd */,
  &gname1815  /* vstlpd */,
  &gname1815  /* vstlpdx */,
  &gname1815  /* vstlpdxx */,
  &gname1815  /* vstlpd_n32 */,
  &gname1770  /* vldlps */,
  &gname1770  /* vldlpsx */,
  &gname1770  /* vldlpsxx */,
  &gname1770  /* vldlps_n32 */,
  &gname1815  /* vstlps */,
  &gname1815  /* vstlpsx */,
  &gname1815  /* vstlpsxx */,
  &gname1815  /* vstlps_n32 */,
  &gname1896  /* vmovmskpd */,
  &gname1896  /* vmovmskps */,
  &gname1815  /* vstorenti128 */,
  &gname1815  /* vstorentxi128 */,
  &gname1815  /* vstorentxxi128 */,
  &gname1770  /* vldntdqa */,
  &gname1770  /* vldntdqax */,
  &gname1770  /* vldntdqaxx */,
  &gname1815  /* vstntdq */,
  &gname1815  /* vstntdqx */,
  &gname1815  /* vstntdqxx */,
  &gname1815  /* vstntpd */,
  &gname1815  /* vstntpdx */,
  &gname1815  /* vstntpdxx */,
  &gname1815  /* vstntps */,
  &gname1815  /* vstntpsx */,
  &gname1815  /* vstntpsxx */,
  &gname1815  /* vstntsd */,
  &gname1815  /* vstntsdx */,
  &gname1815  /* vstntsdxx */,
  &gname1815  /* vstntss */,
  &gname1815  /* vstntssx */,
  &gname1815  /* vstntssxx */,
  &gname1797  /* vmovsd */,
  &gname1770  /* vldsd */,
  &gname1770  /* vldsdx */,
  &gname1770  /* vldsdxx */,
  &gname1770  /* vldsd_n32 */,
  &gname1815  /* vstsd */,
  &gname1815  /* vstsdx */,
  &gname1815  /* vstsdxx */,
  &gname1815  /* vstsd_n32 */,
  &gname1797  /* vmovss */,
  &gname1770  /* vldss */,
  &gname1770  /* vldssx */,
  &gname1770  /* vldssxx */,
  &gname1770  /* vldss_n32 */,
  &gname1815  /* vstss */,
  &gname1815  /* vstssx */,
  &gname1815  /* vstssxx */,
  &gname1815  /* vstss_n32 */,
  &gname1797  /* vmovlhps */,
  &gname1797  /* vmovhlps */,
  &gname1797  /* vmovshdup */,
  &gname1806  /* vmovshdupx */,
  &gname1806  /* vmovshdupxx */,
  &gname1806  /* vmovshdupxxx */,
  &gname1797  /* vmovsldup */,
  &gname1806  /* vmovsldupx */,
  &gname1806  /* vmovsldupxx */,
  &gname1806  /* vmovsldupxxx */,
  &gname1914  /* vldupd */,
  &gname1914  /* vldupdx */,
  &gname1914  /* vldupdxx */,
  &gname1914  /* vldupd_n32 */,
  &gname1905  /* vstupd */,
  &gname1905  /* vstupdx */,
  &gname1905  /* vstupdxx */,
  &gname1905  /* vstupd_n32 */,
  &gname1914  /* vldups */,
  &gname1914  /* vldupsx */,
  &gname1914  /* vldupsxx */,
  &gname1914  /* vldups_n32 */,
  &gname1905  /* vstups */,
  &gname1905  /* vstupsx */,
  &gname1905  /* vstupsxx */,
  &gname1905  /* vstups_n32 */,
  &gname1833  /* vmpsadbw */,
  &gname1842  /* vmpsadbwx */,
  &gname1842  /* vmpsadbwxx */,
  &gname1842  /* vmpsadbwxxx */,
  &gname1833  /* vfmul128v64 */,
  &gname1842  /* vfmulx128v64 */,
  &gname1842  /* vfmulxx128v64 */,
  &gname1842  /* vfmulxxx128v64 */,
  &gname1833  /* vfmul128v32 */,
  &gname1842  /* vfmulx128v32 */,
  &gname1842  /* vfmulxx128v32 */,
  &gname1842  /* vfmulxxx128v32 */,
  &gname1833  /* vmulsd */,
  &gname1842  /* vmulxsd */,
  &gname1842  /* vmulxxsd */,
  &gname1842  /* vmulxxxsd */,
  &gname1833  /* vmulss */,
  &gname1842  /* vmulxss */,
  &gname1842  /* vmulxxss */,
  &gname1842  /* vmulxxxss */,
  &gname1608  /* vorpd */,
  &gname1608  /* vfor128v64 */,
  &gname1617  /* vforx128v64 */,
  &gname1617  /* vforxx128v64 */,
  &gname1617  /* vforxxx128v64 */,
  &gname1608  /* vorps */,
  &gname1608  /* vfor128v32 */,
  &gname1617  /* vforx128v32 */,
  &gname1617  /* vforxx128v32 */,
  &gname1617  /* vforxxx128v32 */,
  &gname1590  /* vabs128v8 */,
  &gname1599  /* vabsx128v8 */,
  &gname1599  /* vabsxx128v8 */,
  &gname1599  /* vabsxxx128v8 */,
  &gname1590  /* vabs128v32 */,
  &gname1599  /* vabsx128v32 */,
  &gname1599  /* vabsxx128v32 */,
  &gname1599  /* vabsxxx128v32 */,
  &gname1590  /* vabs128v16 */,
  &gname1599  /* vabsx128v16 */,
  &gname1599  /* vabsxx128v16 */,
  &gname1599  /* vabsxxx128v16 */,
  &gname1797  /* vpackssdw */,
  &gname1806  /* vpackssdwx */,
  &gname1806  /* vpackssdwxx */,
  &gname1806  /* vpackssdwxxx */,
  &gname1797  /* vpacksswb */,
  &gname1806  /* vpacksswbx */,
  &gname1806  /* vpacksswbxx */,
  &gname1806  /* vpacksswbxxx */,
  &gname1797  /* vpackusdw */,
  &gname1806  /* vpackusdwx */,
  &gname1806  /* vpackusdwxx */,
  &gname1806  /* vpackusdwxxx */,
  &gname1797  /* vpackuswb */,
  &gname1806  /* vpackuswbx */,
  &gname1806  /* vpackuswbxx */,
  &gname1806  /* vpackuswbxxx */,
  &gname1590  /* vadd128v8 */,
  &gname1599  /* vaddx128v8 */,
  &gname1599  /* vaddxx128v8 */,
  &gname1599  /* vaddxxx128v8 */,
  &gname1590  /* vadd128v32 */,
  &gname1599  /* vaddx128v32 */,
  &gname1599  /* vaddxx128v32 */,
  &gname1599  /* vaddxxx128v32 */,
  &gname1590  /* vadd128v64 */,
  &gname1599  /* vaddx128v64 */,
  &gname1599  /* vaddxx128v64 */,
  &gname1599  /* vaddxxx128v64 */,
  &gname1590  /* vadd128v16 */,
  &gname1599  /* vaddx128v16 */,
  &gname1599  /* vaddxx128v16 */,
  &gname1599  /* vaddxxx128v16 */,
  &gname1590  /* vadds128v8 */,
  &gname1599  /* vaddsx128v8 */,
  &gname1599  /* vaddsxx128v8 */,
  &gname1599  /* vaddsxxx128v8 */,
  &gname1590  /* vadds128v16 */,
  &gname1599  /* vaddsx128v16 */,
  &gname1599  /* vaddsxx128v16 */,
  &gname1599  /* vaddsxxx128v16 */,
  &gname1590  /* vaddus128v8 */,
  &gname1599  /* vaddusx128v8 */,
  &gname1599  /* vaddusxx128v8 */,
  &gname1599  /* vaddusxxx128v8 */,
  &gname1590  /* vaddus128v16 */,
  &gname1599  /* vaddusx128v16 */,
  &gname1599  /* vaddusxx128v16 */,
  &gname1599  /* vaddusxxx128v16 */,
  &gname1779  /* vpalignr128 */,
  &gname1788  /* vpalignrx128 */,
  &gname1788  /* vpalignrxx128 */,
  &gname1788  /* vpalignrxxx128 */,
  &gname1590  /* vand128v8 */,
  &gname1599  /* vandx128v8 */,
  &gname1599  /* vandxx128v8 */,
  &gname1599  /* vandxxx128v8 */,
  &gname1590  /* vand128v16 */,
  &gname1599  /* vandx128v16 */,
  &gname1599  /* vandxx128v16 */,
  &gname1599  /* vandxxx128v16 */,
  &gname1590  /* vand128v32 */,
  &gname1599  /* vandx128v32 */,
  &gname1599  /* vandxx128v32 */,
  &gname1599  /* vandxxx128v32 */,
  &gname1590  /* vand128v64 */,
  &gname1599  /* vandx128v64 */,
  &gname1599  /* vandxx128v64 */,
  &gname1599  /* vandxxx128v64 */,
  &gname1590  /* vandn128v8 */,
  &gname1599  /* vandnx128v8 */,
  &gname1599  /* vandnxx128v8 */,
  &gname1599  /* vandnxxx128v8 */,
  &gname1590  /* vandn128v16 */,
  &gname1599  /* vandnx128v16 */,
  &gname1599  /* vandnxx128v16 */,
  &gname1599  /* vandnxxx128v16 */,
  &gname1590  /* vandn128v32 */,
  &gname1599  /* vandnx128v32 */,
  &gname1599  /* vandnxx128v32 */,
  &gname1599  /* vandnxxx128v32 */,
  &gname1590  /* vandn128v64 */,
  &gname1599  /* vandnx128v64 */,
  &gname1599  /* vandnxx128v64 */,
  &gname1599  /* vandnxxx128v64 */,
  &gname1590  /* vpavgb */,
  &gname1599  /* vpavgbx */,
  &gname1599  /* vpavgbxx */,
  &gname1599  /* vpavgbxxx */,
  &gname1590  /* vpavgw */,
  &gname1599  /* vpavgwx */,
  &gname1599  /* vpavgwxx */,
  &gname1599  /* vpavgwxxx */,
  &gname1716  /* vblendv128v8 */,
  &gname1725  /* vblendvx128v8 */,
  &gname1725  /* vblendvxx128v8 */,
  &gname1725  /* vblendvxxx128v8 */,
  &gname1716  /* vblend128v16 */,
  &gname1725  /* vblendx128v16 */,
  &gname1725  /* vblendxx128v16 */,
  &gname1725  /* vblendxxx128v16 */,
  &gname1734  /* vpclmulqdq */,
  &gname1743  /* vpclmulqdqx */,
  &gname1743  /* vpclmulqdqxx */,
  &gname1743  /* vpclmulqdqxxx */,
  &gname1752  /* vcmpeq128v8 */,
  &gname1761  /* vcmpeqx128v8 */,
  &gname1761  /* vcmpeqxx128v8 */,
  &gname1761  /* vcmpeqxxx128v8 */,
  &gname1752  /* vcmpeq128v32 */,
  &gname1761  /* vcmpeqx128v32 */,
  &gname1761  /* vcmpeqxx128v32 */,
  &gname1761  /* vcmpeqxxx128v32 */,
  &gname1752  /* vcmpeq128v64 */,
  &gname1761  /* vcmpeqx128v64 */,
  &gname1761  /* vcmpeqxx128v64 */,
  &gname1761  /* vcmpeqxxx128v64 */,
  &gname1752  /* vcmpeq128v16 */,
  &gname1761  /* vcmpeqx128v16 */,
  &gname1761  /* vcmpeqxx128v16 */,
  &gname1761  /* vcmpeqxxx128v16 */,
  &gname1752  /* vcmpestri */,
  &gname1761  /* vcmpestrix */,
  &gname1761  /* vcmpestrixx */,
  &gname1761  /* vcmpestrixxx */,
  &gname1752  /* vcmpestrm */,
  &gname1761  /* vcmpestrmx */,
  &gname1761  /* vcmpestrmxx */,
  &gname1761  /* vcmpestrmxxx */,
  &gname1752  /* vcmpgt128v8 */,
  &gname1761  /* vcmpgtx128v8 */,
  &gname1761  /* vcmpgtxx128v8 */,
  &gname1761  /* vcmpgtxxx128v8 */,
  &gname1752  /* vcmpgt128v32 */,
  &gname1761  /* vcmpgtx128v32 */,
  &gname1761  /* vcmpgtxx128v32 */,
  &gname1761  /* vcmpgtxxx128v32 */,
  &gname1752  /* vcmpgt128v64 */,
  &gname1761  /* vcmpgtx128v64 */,
  &gname1761  /* vcmpgtxx128v64 */,
  &gname1761  /* vcmpgtxxx128v64 */,
  &gname1752  /* vcmpgt128v16 */,
  &gname1761  /* vcmpgtx128v16 */,
  &gname1761  /* vcmpgtxx128v16 */,
  &gname1761  /* vcmpgtxxx128v16 */,
  &gname1752  /* vcmpistri */,
  &gname1761  /* vcmpistrix */,
  &gname1761  /* vcmpistrixx */,
  &gname1761  /* vcmpistrixxx */,
  &gname1752  /* vcmpistrm */,
  &gname1761  /* vcmpistrmx */,
  &gname1761  /* vcmpistrmxx */,
  &gname1761  /* vcmpistrmxxx */,
  &gname1797  /* vfperm128v64 */,
  &gname1806  /* vfpermx128v64 */,
  &gname1806  /* vfpermxx128v64 */,
  &gname1806  /* vfpermxxx128v64 */,
  &gname1797  /* vfpermi128v64 */,
  &gname1806  /* vfpermix128v64 */,
  &gname1806  /* vfpermixx128v64 */,
  &gname1806  /* vfpermixxx128v64 */,
  &gname1797  /* vfperm128v32 */,
  &gname1806  /* vfpermx128v32 */,
  &gname1806  /* vfpermxx128v32 */,
  &gname1806  /* vfpermxxx128v32 */,
  &gname1797  /* vfpermi128v32 */,
  &gname1806  /* vfpermix128v32 */,
  &gname1806  /* vfpermixx128v32 */,
  &gname1806  /* vfpermixxx128v32 */,
  &gname1797  /* vfperm2f128 */,
  &gname1806  /* vfperm2xf128 */,
  &gname1806  /* vfperm2xxf128 */,
  &gname1806  /* vfperm2xxxf128 */,
  &gname1779  /* vextr128v8 */,
  &gname1788  /* vextrx128v8 */,
  &gname1788  /* vextrxx128v8 */,
  &gname1788  /* vextrxxx128v8 */,
  &gname1779  /* vextr128v32 */,
  &gname1788  /* vextrx128v32 */,
  &gname1788  /* vextrxx128v32 */,
  &gname1788  /* vextrxxx128v32 */,
  &gname1779  /* vextr128v64 */,
  &gname1788  /* vextrx128v64 */,
  &gname1788  /* vextrxx128v64 */,
  &gname1788  /* vextrxxx128v64 */,
  &gname1779  /* vextr128v16 */,
  &gname1788  /* vextrx128v16 */,
  &gname1788  /* vextrxx128v16 */,
  &gname1788  /* vextrxxx128v16 */,
  &gname1797  /* vphadd128v32 */,
  &gname1806  /* vphaddx128v32 */,
  &gname1806  /* vphaddxx128v32 */,
  &gname1806  /* vphaddxxx128v32 */,
  &gname1797  /* vphadds128v16 */,
  &gname1806  /* vphaddsx128v16 */,
  &gname1806  /* vphaddsxx128v16 */,
  &gname1806  /* vphaddsxxx128v16 */,
  &gname1608  /* vphadd128v16 */,
  &gname1617  /* vphaddx128v16 */,
  &gname1617  /* vphaddxx128v16 */,
  &gname1617  /* vphaddxxx128v16 */,
  &gname1779  /* vphminposuw */,
  &gname1788  /* vphminposuwx */,
  &gname1788  /* vphminposuwxx */,
  &gname1788  /* vphminposuwxxx */,
  &gname1608  /* vphsub128v32 */,
  &gname1617  /* vphsubx128v32 */,
  &gname1617  /* vphsubxx128v32 */,
  &gname1617  /* vphsubxxx128v32 */,
  &gname1608  /* vphsubs128v16 */,
  &gname1617  /* vphsubsx128v16 */,
  &gname1617  /* vphsubsxx128v16 */,
  &gname1617  /* vphsubsxxx128v16 */,
  &gname1608  /* vphsub128v16 */,
  &gname1617  /* vphsubx128v16 */,
  &gname1617  /* vphsubxx128v16 */,
  &gname1617  /* vphsubxxx128v16 */,
  &gname1779  /* vinsr128v8 */,
  &gname1788  /* vinsrx128v8 */,
  &gname1788  /* vinsrxx128v8 */,
  &gname1788  /* vinsrxxx128v8 */,
  &gname1779  /* vinsr128v32 */,
  &gname1788  /* vinsrx128v32 */,
  &gname1788  /* vinsrxx128v32 */,
  &gname1788  /* vinsrxxx128v32 */,
  &gname1779  /* vinsr128v64 */,
  &gname1788  /* vinsrx128v64 */,
  &gname1788  /* vinsrxx128v64 */,
  &gname1788  /* vinsrxxx128v64 */,
  &gname1779  /* vinsr128v16 */,
  &gname1788  /* vinsrx128v16 */,
  &gname1788  /* vinsrxx128v16 */,
  &gname1788  /* vinsrxxx128v16 */,
  &gname1626  /* vpmaddwd */,
  &gname1635  /* vpmaddwdx */,
  &gname1635  /* vpmaddwdxx */,
  &gname1635  /* vpmaddwdxxx */,
  &gname1626  /* vpmaddubsw128 */,
  &gname1635  /* vpmaddubswx128 */,
  &gname1635  /* vpmaddubswxx128 */,
  &gname1635  /* vpmaddubswxxx128 */,
  &gname1590  /* vmaxs128v8 */,
  &gname1599  /* vmaxsx128v8 */,
  &gname1599  /* vmaxsxx128v8 */,
  &gname1599  /* vmaxsxxx128v8 */,
  &gname1590  /* vmaxs128v32 */,
  &gname1599  /* vmaxsx128v32 */,
  &gname1599  /* vmaxsxx128v32 */,
  &gname1599  /* vmaxsxxx128v32 */,
  &gname1590  /* vmaxs128v16 */,
  &gname1599  /* vmaxsx128v16 */,
  &gname1599  /* vmaxsxx128v16 */,
  &gname1599  /* vmaxsxxx128v16 */,
  &gname1590  /* vmaxu128v8 */,
  &gname1599  /* vmaxux128v8 */,
  &gname1599  /* vmaxuxx128v8 */,
  &gname1599  /* vmaxuxxx128v8 */,
  &gname1590  /* vmaxu128v32 */,
  &gname1599  /* vmaxux128v32 */,
  &gname1599  /* vmaxuxx128v32 */,
  &gname1599  /* vmaxuxxx128v32 */,
  &gname1590  /* vmaxu128v16 */,
  &gname1599  /* vmaxux128v16 */,
  &gname1599  /* vmaxuxx128v16 */,
  &gname1599  /* vmaxuxxx128v16 */,
  &gname1590  /* vmins128v8 */,
  &gname1599  /* vminsx128v8 */,
  &gname1599  /* vminsxx128v8 */,
  &gname1599  /* vminsxxx128v8 */,
  &gname1590  /* vmins128v32 */,
  &gname1599  /* vminsx128v32 */,
  &gname1599  /* vminsxx128v32 */,
  &gname1599  /* vminsxxx128v32 */,
  &gname1590  /* vmins128v16 */,
  &gname1599  /* vminsx128v16 */,
  &gname1599  /* vminsxx128v16 */,
  &gname1599  /* vminsxxx128v16 */,
  &gname1590  /* vminu128v8 */,
  &gname1599  /* vminux128v8 */,
  &gname1599  /* vminuxx128v8 */,
  &gname1599  /* vminuxxx128v8 */,
  &gname1590  /* vminu128v32 */,
  &gname1599  /* vminux128v32 */,
  &gname1599  /* vminuxx128v32 */,
  &gname1599  /* vminuxxx128v32 */,
  &gname1590  /* vminu128v16 */,
  &gname1599  /* vminux128v16 */,
  &gname1599  /* vminuxx128v16 */,
  &gname1599  /* vminuxxx128v16 */,
  &gname1797  /* vpmovmskb128 */,
  &gname1797  /* vpmovsxbd */,
  &gname1806  /* vpmovsxbdx */,
  &gname1806  /* vpmovsxbdxx */,
  &gname1806  /* vpmovsxbdxxx */,
  &gname1797  /* vpmovsxbq */,
  &gname1806  /* vpmovsxbqx */,
  &gname1806  /* vpmovsxbqxx */,
  &gname1806  /* vpmovsxbqxxx */,
  &gname1797  /* vpmovsxbw */,
  &gname1806  /* vpmovsxbwx */,
  &gname1806  /* vpmovsxbwxx */,
  &gname1806  /* vpmovsxbwxxx */,
  &gname1797  /* vpmovsxdq */,
  &gname1806  /* vpmovsxdqx */,
  &gname1806  /* vpmovsxdqxx */,
  &gname1806  /* vpmovsxdqxxx */,
  &gname1797  /* vpmovsxwd */,
  &gname1806  /* vpmovsxwdx */,
  &gname1806  /* vpmovsxwdxx */,
  &gname1806  /* vpmovsxwdxxx */,
  &gname1797  /* vpmovsxwq */,
  &gname1806  /* vpmovsxwqx */,
  &gname1806  /* vpmovsxwqxx */,
  &gname1806  /* vpmovsxwqxxx */,
  &gname1797  /* vpmovzxbd */,
  &gname1806  /* vpmovzxbdx */,
  &gname1806  /* vpmovzxbdxx */,
  &gname1806  /* vpmovzxbdxxx */,
  &gname1797  /* vpmovzxbq */,
  &gname1806  /* vpmovzxbqx */,
  &gname1806  /* vpmovzxbqxx */,
  &gname1806  /* vpmovzxbqxxx */,
  &gname1797  /* vpmovzxbw */,
  &gname1806  /* vpmovzxbwx */,
  &gname1806  /* vpmovzxbwxx */,
  &gname1806  /* vpmovzxbwxxx */,
  &gname1797  /* vpmovzxdq */,
  &gname1806  /* vpmovzxdqx */,
  &gname1806  /* vpmovzxdqxx */,
  &gname1806  /* vpmovzxdqxxx */,
  &gname1797  /* vpmovzxwd */,
  &gname1806  /* vpmovzxwdx */,
  &gname1806  /* vpmovzxwdxx */,
  &gname1806  /* vpmovzxwdxxx */,
  &gname1797  /* vpmovzxwq */,
  &gname1806  /* vpmovzxwqx */,
  &gname1806  /* vpmovzxwqxx */,
  &gname1806  /* vpmovzxwqxxx */,
  &gname1698  /* vmulhuw */,
  &gname1707  /* vmulhuwx */,
  &gname1707  /* vmulhuwxx */,
  &gname1707  /* vmulhuwxxx */,
  &gname1698  /* vmulhrsw */,
  &gname1707  /* vmulhrswx */,
  &gname1707  /* vmulhrswxx */,
  &gname1707  /* vmulhrswxxx */,
  &gname1698  /* vmulhw */,
  &gname1707  /* vmulhwx */,
  &gname1707  /* vmulhwxx */,
  &gname1707  /* vmulhwxxx */,
  &gname1698  /* vmulld */,
  &gname1707  /* vmulldx */,
  &gname1707  /* vmulldxx */,
  &gname1707  /* vmulldxxx */,
  &gname1698  /* vmul128v16 */,
  &gname1707  /* vmulx128v16 */,
  &gname1707  /* vmulxx128v16 */,
  &gname1707  /* vmulxxx128v16 */,
  &gname1698  /* vmul128v32 */,
  &gname1707  /* vmulx128v32 */,
  &gname1707  /* vmulxx128v32 */,
  &gname1707  /* vmulxxx128v32 */,
  &gname1698  /* vmuludq */,
  &gname1707  /* vmuludqx */,
  &gname1707  /* vmuludqxx */,
  &gname1707  /* vmuludqxxx */,
  &gname1698  /* vmuldq */,
  &gname1707  /* vmuldqx */,
  &gname1707  /* vmuldqxx */,
  &gname1707  /* vmuldqxxx */,
  &gname1590  /* vor128v8 */,
  &gname1599  /* vorx128v8 */,
  &gname1599  /* vorxx128v8 */,
  &gname1599  /* vorxxx128v8 */,
  &gname1590  /* vor128v16 */,
  &gname1599  /* vorx128v16 */,
  &gname1599  /* vorxx128v16 */,
  &gname1599  /* vorxxx128v16 */,
  &gname1590  /* vor128v32 */,
  &gname1599  /* vorx128v32 */,
  &gname1599  /* vorxx128v32 */,
  &gname1599  /* vorxxx128v32 */,
  &gname1590  /* vor128v64 */,
  &gname1599  /* vorx128v64 */,
  &gname1599  /* vorxx128v64 */,
  &gname1599  /* vorxxx128v64 */,
  &gname1779  /* vpsadbw */,
  &gname1788  /* vpsadbwx */,
  &gname1788  /* vpsadbwxx */,
  &gname1788  /* vpsadbwxxx */,
  &gname1590  /* vpshuf128v8 */,
  &gname1599  /* vpshufx128v8 */,
  &gname1599  /* vpshufxx128v8 */,
  &gname1599  /* vpshufxxx128v8 */,
  &gname1590  /* vpshuf128v32 */,
  &gname1599  /* vpshufx128v32 */,
  &gname1599  /* vpshufxx128v32 */,
  &gname1599  /* vpshufxxx128v32 */,
  &gname1590  /* vpshufw64v16 */,
  &gname1599  /* vpshufwx64v16 */,
  &gname1599  /* vpshufwxx64v16 */,
  &gname1599  /* vpshufwxxx64v16 */,
  &gname1590  /* vpshufhw */,
  &gname1599  /* vpshufhwx */,
  &gname1599  /* vpshufhwxx */,
  &gname1599  /* vpshufhwxxx */,
  &gname1590  /* vpshuflw */,
  &gname1599  /* vpshuflwx */,
  &gname1599  /* vpshuflwxx */,
  &gname1599  /* vpshuflwxxx */,
  &gname1779  /* vpsign128v8 */,
  &gname1788  /* vpsignx128v8 */,
  &gname1788  /* vpsignxx128v8 */,
  &gname1788  /* vpsignxxx128v8 */,
  &gname1779  /* vpsign128v32 */,
  &gname1788  /* vpsignx128v32 */,
  &gname1788  /* vpsignxx128v32 */,
  &gname1788  /* vpsignxxx128v32 */,
  &gname1779  /* vpsign128v16 */,
  &gname1788  /* vpsignx128v16 */,
  &gname1788  /* vpsignxx128v16 */,
  &gname1788  /* vpsignxxx128v16 */,
  &gname1779  /* vpslldq */,
  &gname1779  /* vpsrldq */,
  &gname1779  /* vpslld */,
  &gname1788  /* vpslldx */,
  &gname1788  /* vpslldxx */,
  &gname1788  /* vpslldxxx */,
  &gname1779  /* vpslldi */,
  &gname1779  /* vpsllq */,
  &gname1788  /* vpsllqx */,
  &gname1788  /* vpsllqxx */,
  &gname1788  /* vpsllqxxx */,
  &gname1779  /* vpsllqi */,
  &gname1779  /* vpsllw */,
  &gname1788  /* vpsllwx */,
  &gname1788  /* vpsllwxx */,
  &gname1788  /* vpsllwxxx */,
  &gname1779  /* vpsllwi */,
  &gname1779  /* vpsrad */,
  &gname1788  /* vpsradx */,
  &gname1788  /* vpsradxx */,
  &gname1788  /* vpsradxxx */,
  &gname1779  /* vpsradi */,
  &gname1779  /* vpsraw */,
  &gname1788  /* vpsrawx */,
  &gname1788  /* vpsrawxx */,
  &gname1788  /* vpsrawxxx */,
  &gname1779  /* vpsrawi */,
  &gname1779  /* vpsrld */,
  &gname1788  /* vpsrldx */,
  &gname1788  /* vpsrldxx */,
  &gname1788  /* vpsrldxxx */,
  &gname1779  /* vpsrldi */,
  &gname1779  /* vpsrlq */,
  &gname1788  /* vpsrlqx */,
  &gname1788  /* vpsrlqxx */,
  &gname1788  /* vpsrlqxxx */,
  &gname1779  /* vpsrlqi */,
  &gname1779  /* vpsrlw */,
  &gname1788  /* vpsrlwx */,
  &gname1788  /* vpsrlwxx */,
  &gname1788  /* vpsrlwxxx */,
  &gname1779  /* vpsrlwi */,
  &gname1779  /* vsub128v8 */,
  &gname1788  /* vsubx128v8 */,
  &gname1788  /* vsubxx128v8 */,
  &gname1788  /* vsubxxx128v8 */,
  &gname1779  /* vsub128v32 */,
  &gname1788  /* vsubx128v32 */,
  &gname1788  /* vsubxx128v32 */,
  &gname1788  /* vsubxxx128v32 */,
  &gname1779  /* vsub128v64 */,
  &gname1788  /* vsubx128v64 */,
  &gname1788  /* vsubxx128v64 */,
  &gname1788  /* vsubxxx128v64 */,
  &gname1779  /* vsub128v16 */,
  &gname1788  /* vsubx128v16 */,
  &gname1788  /* vsubxx128v16 */,
  &gname1788  /* vsubxxx128v16 */,
  &gname1779  /* vsubs128v8 */,
  &gname1788  /* vsubsx128v8 */,
  &gname1788  /* vsubsxx128v8 */,
  &gname1788  /* vsubsxxx128v8 */,
  &gname1779  /* vsubs128v16 */,
  &gname1788  /* vsubsx128v16 */,
  &gname1788  /* vsubsxx128v16 */,
  &gname1788  /* vsubsxxx128v16 */,
  &gname1779  /* vsubus128v8 */,
  &gname1788  /* vsubusx128v8 */,
  &gname1788  /* vsubusxx128v8 */,
  &gname1788  /* vsubusxxx128v8 */,
  &gname1779  /* vsubus128v16 */,
  &gname1788  /* vsubusx128v16 */,
  &gname1788  /* vsubusxx128v16 */,
  &gname1788  /* vsubusxxx128v16 */,
  &gname1851  /* vptest128 */,
  &gname1860  /* vptestx128 */,
  &gname1860  /* vptestxx128 */,
  &gname1860  /* vptestxxx128 */,
  &gname1851  /* vtestpd */,
  &gname1860  /* vtestxpd */,
  &gname1860  /* vtestxxpd */,
  &gname1860  /* vtestxxxpd */,
  &gname1851  /* vtestps */,
  &gname1860  /* vtestxps */,
  &gname1860  /* vtestxxps */,
  &gname1860  /* vtestxxxps */,
  &gname1797  /* vpunpckh64v8 */,
  &gname1806  /* vpunpckhx64v8 */,
  &gname1806  /* vpunpckhxx64v8 */,
  &gname1806  /* vpunpckhxxx64v8 */,
  &gname1797  /* vpunpckh64v32 */,
  &gname1806  /* vpunpckhx64v32 */,
  &gname1806  /* vpunpckhxx64v32 */,
  &gname1806  /* vpunpckhxxx64v32 */,
  &gname1797  /* vpunpckh64v16 */,
  &gname1806  /* vpunpckhx64v16 */,
  &gname1806  /* vpunpckhxx64v16 */,
  &gname1806  /* vpunpckhxxx64v16 */,
  &gname1797  /* vpunpckh64v64 */,
  &gname1806  /* vpunpckhx64v64 */,
  &gname1806  /* vpunpckhxx64v64 */,
  &gname1806  /* vpunpckhxxx64v64 */,
  &gname1797  /* vpunpckl64v8 */,
  &gname1806  /* vpunpcklx64v8 */,
  &gname1806  /* vpunpcklxx64v8 */,
  &gname1806  /* vpunpcklxxx64v8 */,
  &gname1797  /* vpunpckl64v32 */,
  &gname1806  /* vpunpcklx64v32 */,
  &gname1806  /* vpunpcklxx64v32 */,
  &gname1806  /* vpunpcklxxx64v32 */,
  &gname1797  /* vpunpckl64v16 */,
  &gname1806  /* vpunpcklx64v16 */,
  &gname1806  /* vpunpcklxx64v16 */,
  &gname1806  /* vpunpcklxxx64v16 */,
  &gname1797  /* vpunpckl64v64 */,
  &gname1806  /* vpunpcklx64v64 */,
  &gname1806  /* vpunpcklxx64v64 */,
  &gname1806  /* vpunpcklxxx64v64 */,
  &gname1590  /* vxor128v8 */,
  &gname1599  /* vxorx128v8 */,
  &gname1599  /* vxorxx128v8 */,
  &gname1599  /* vxorxxx128v8 */,
  &gname1590  /* vxor128v16 */,
  &gname1599  /* vxorx128v16 */,
  &gname1599  /* vxorxx128v16 */,
  &gname1599  /* vxorxxx128v16 */,
  &gname1590  /* vxor128v32 */,
  &gname1599  /* vxorx128v32 */,
  &gname1599  /* vxorxx128v32 */,
  &gname1599  /* vxorxxx128v32 */,
  &gname1590  /* vxor128v64 */,
  &gname1599  /* vxorx128v64 */,
  &gname1599  /* vxorxx128v64 */,
  &gname1599  /* vxorxxx128v64 */,
  &gname1797  /* vfrcp128v32 */,
  &gname1806  /* vfrcpx128v32 */,
  &gname1806  /* vfrcpxx128v32 */,
  &gname1806  /* vfrcpxxx128v32 */,
  &gname1797  /* vfrcpss */,
  &gname1806  /* vfrcpxss */,
  &gname1806  /* vfrcpxxss */,
  &gname1806  /* vfrcpxxxss */,
  &gname1608  /* vround128v64 */,
  &gname1617  /* vroundx128v64 */,
  &gname1617  /* vroundxx128v64 */,
  &gname1617  /* vroundxxx128v64 */,
  &gname1608  /* vround128v32 */,
  &gname1617  /* vroundx128v32 */,
  &gname1617  /* vroundxx128v32 */,
  &gname1617  /* vroundxxx128v32 */,
  &gname1608  /* vroundsd */,
  &gname1617  /* vroundxsd */,
  &gname1617  /* vroundxxsd */,
  &gname1617  /* vroundxxxsd */,
  &gname1608  /* vroundss */,
  &gname1617  /* vroundxss */,
  &gname1617  /* vroundxxss */,
  &gname1617  /* vroundxxxss */,
  &gname1644  /* vfrsqrt128v32 */,
  &gname1653  /* vfrsqrtx128v32 */,
  &gname1653  /* vfrsqrtxx128v32 */,
  &gname1653  /* vfrsqrtxxx128v32 */,
  &gname1644  /* vfrsqrtss */,
  &gname1653  /* vfrsqrtxss */,
  &gname1653  /* vfrsqrtxxss */,
  &gname1653  /* vfrsqrtxxxss */,
  &gname1797  /* vshufpd */,
  &gname1797  /* vfshuf128v64 */,
  &gname1806  /* vfshufx128v64 */,
  &gname1806  /* vfshufxx128v64 */,
  &gname1806  /* vfshufxxx128v64 */,
  &gname1797  /* vshufps */,
  &gname1797  /* vfshuf128v32 */,
  &gname1806  /* vfshufx128v32 */,
  &gname1806  /* vfshufxx128v32 */,
  &gname1806  /* vfshufxxx128v32 */,
  &gname1662  /* vfsqrt128v64 */,
  &gname1671  /* vfsqrtx128v64 */,
  &gname1671  /* vfsqrtxx128v64 */,
  &gname1671  /* vfsqrtxxx128v64 */,
  &gname1662  /* vfsqrt128v32 */,
  &gname1671  /* vfsqrtx128v32 */,
  &gname1671  /* vfsqrtxx128v32 */,
  &gname1671  /* vfsqrtxxx128v32 */,
  &gname1662  /* vfsqrtsd */,
  &gname1671  /* vfsqrtxsd */,
  &gname1671  /* vfsqrtxxsd */,
  &gname1671  /* vfsqrtxxxsd */,
  &gname1662  /* vfsqrtss */,
  &gname1671  /* vfsqrtxss */,
  &gname1671  /* vfsqrtxxss */,
  &gname1671  /* vfsqrtxxxss */,
  &gname1887  /* vstmxcsr */,
  &gname1797  /* vfsub128v64 */,
  &gname1806  /* vfsubx128v64 */,
  &gname1806  /* vfsubxx128v64 */,
  &gname1806  /* vfsubxxx128v64 */,
  &gname1797  /* vfsub128v32 */,
  &gname1806  /* vfsubx128v32 */,
  &gname1806  /* vfsubxx128v32 */,
  &gname1806  /* vfsubxxx128v32 */,
  &gname1797  /* vsubsd */,
  &gname1806  /* vsubxsd */,
  &gname1806  /* vsubxxsd */,
  &gname1806  /* vsubxxxsd */,
  &gname1797  /* vsubss */,
  &gname1806  /* vsubxss */,
  &gname1806  /* vsubxxss */,
  &gname1806  /* vsubxxxss */,
  &gname1797  /* vucomisd */,
  &gname1806  /* vucomixsd */,
  &gname1806  /* vucomixxsd */,
  &gname1806  /* vucomixxxsd */,
  &gname1797  /* vucomiss */,
  &gname1806  /* vucomixss */,
  &gname1806  /* vucomixxss */,
  &gname1806  /* vucomixxxss */,
  &gname1797  /* vunpckh128v64 */,
  &gname1806  /* vunpckhx128v64 */,
  &gname1806  /* vunpckhxx128v64 */,
  &gname1806  /* vunpckhxxx128v64 */,
  &gname1797  /* vunpckh128v32 */,
  &gname1806  /* vunpckhx128v32 */,
  &gname1806  /* vunpckhxx128v32 */,
  &gname1806  /* vunpckhxxx128v32 */,
  &gname1797  /* vunpckl128v64 */,
  &gname1806  /* vunpcklx128v64 */,
  &gname1806  /* vunpcklxx128v64 */,
  &gname1806  /* vunpcklxxx128v64 */,
  &gname1797  /* vunpckl128v32 */,
  &gname1806  /* vunpcklx128v32 */,
  &gname1806  /* vunpcklxx128v32 */,
  &gname1806  /* vunpcklxxx128v32 */,
  &gname1797  /* vxorpd */,
  &gname1797  /* vfxor128v64 */,
  &gname1617  /* vfxorx128v64 */,
  &gname1617  /* vfxorxx128v64 */,
  &gname1617  /* vfxorxxx128v64 */,
  &gname1797  /* vxzero128v64 */,
  &gname1797  /* vxzero64 */,
  &gname1797  /* vxorps */,
  &gname1797  /* vfxor128v32 */,
  &gname1806  /* vfxorx128v32 */,
  &gname1806  /* vfxorxx128v32 */,
  &gname1806  /* vfxorxxx128v32 */,
  &gname1797  /* vxzero128v32 */,
  &gname1797  /* vxzero32 */,
  &gname1077  /* vzeroall */,
  &gname1923  /* xfmadd132pd */,
  &gname1932  /* xfmadd132xpd */,
  &gname1932  /* xfmadd132xxpd */,
  &gname1932  /* xfmadd132xxxpd */,
  &gname1923  /* xfmadd213pd */,
  &gname1932  /* xfmadd213xpd */,
  &gname1932  /* xfmadd213xxpd */,
  &gname1932  /* xfmadd213xxxpd */,
  &gname1923  /* xfmadd231pd */,
  &gname1932  /* xfmadd231xpd */,
  &gname1932  /* xfmadd231xxpd */,
  &gname1932  /* xfmadd231xxxpd */,
  &gname1923  /* xfmadd132ps */,
  &gname1932  /* xfmadd132xps */,
  &gname1932  /* xfmadd132xxps */,
  &gname1932  /* xfmadd132xxxps */,
  &gname1923  /* xfmadd213ps */,
  &gname1932  /* xfmadd213xps */,
  &gname1932  /* xfmadd213xxps */,
  &gname1932  /* xfmadd213xxxps */,
  &gname1923  /* xfmadd231ps */,
  &gname1932  /* xfmadd231xps */,
  &gname1932  /* xfmadd231xxps */,
  &gname1932  /* xfmadd231xxxps */,
  &gname1923  /* xfmadd132sd */,
  &gname1932  /* xfmadd132xsd */,
  &gname1932  /* xfmadd132xxsd */,
  &gname1932  /* xfmadd132xxxsd */,
  &gname1923  /* xfmadd213sd */,
  &gname1932  /* xfmadd213xsd */,
  &gname1932  /* xfmadd213xxsd */,
  &gname1932  /* xfmadd213xxxsd */,
  &gname1923  /* xfmadd231sd */,
  &gname1932  /* xfmadd231xsd */,
  &gname1932  /* xfmadd231xxsd */,
  &gname1932  /* xfmadd231xxxsd */,
  &gname1923  /* xfmadd132ss */,
  &gname1932  /* xfmadd132xss */,
  &gname1932  /* xfmadd132xxss */,
  &gname1932  /* xfmadd132xxxss */,
  &gname1923  /* xfmadd213ss */,
  &gname1932  /* xfmadd213xss */,
  &gname1932  /* xfmadd213xxss */,
  &gname1932  /* xfmadd213xxxss */,
  &gname1923  /* xfmadd231ss */,
  &gname1932  /* xfmadd231xss */,
  &gname1932  /* xfmadd231xxss */,
  &gname1932  /* xfmadd231xxxss */,
  &gname1923  /* xfmaddsub132pd */,
  &gname1932  /* xfmaddsub132xpd */,
  &gname1932  /* xfmaddsub132xxpd */,
  &gname1932  /* xfmaddsub132xxxpd */,
  &gname1923  /* xfmaddsub213pd */,
  &gname1932  /* xfmaddsub213xpd */,
  &gname1932  /* xfmaddsub213xxpd */,
  &gname1932  /* xfmaddsub213xxxpd */,
  &gname1923  /* xfmaddsub231pd */,
  &gname1932  /* xfmaddsub231xpd */,
  &gname1932  /* xfmaddsub231xxpd */,
  &gname1932  /* xfmaddsub231xxxpd */,
  &gname1923  /* xfmaddsub132ps */,
  &gname1932  /* xfmaddsub132xps */,
  &gname1932  /* xfmaddsub132xxps */,
  &gname1932  /* xfmaddsub132xxxps */,
  &gname1923  /* xfmaddsub213ps */,
  &gname1932  /* xfmaddsub213xps */,
  &gname1932  /* xfmaddsub213xxps */,
  &gname1932  /* xfmaddsub213xxxps */,
  &gname1923  /* xfmaddsub231ps */,
  &gname1932  /* xfmaddsub231xps */,
  &gname1932  /* xfmaddsub231xxps */,
  &gname1932  /* xfmaddsub231xxxps */,
  &gname1923  /* xfmsubadd132pd */,
  &gname1932  /* xfmsubadd132xpd */,
  &gname1932  /* xfmsubadd132xxpd */,
  &gname1932  /* xfmsubadd132xxxpd */,
  &gname1923  /* xfmsubadd213pd */,
  &gname1932  /* xfmsubadd213xpd */,
  &gname1932  /* xfmsubadd213xxpd */,
  &gname1932  /* xfmsubadd213xxxpd */,
  &gname1923  /* xfmsubadd231pd */,
  &gname1932  /* xfmsubadd231xpd */,
  &gname1932  /* xfmsubadd231xxpd */,
  &gname1932  /* xfmsubadd231xxxpd */,
  &gname1923  /* xfmsubadd132ps */,
  &gname1932  /* xfmsubadd132xps */,
  &gname1932  /* xfmsubadd132xxps */,
  &gname1932  /* xfmsubadd132xxxps */,
  &gname1923  /* xfmsubadd213ps */,
  &gname1932  /* xfmsubadd213xps */,
  &gname1932  /* xfmsubadd213xxps */,
  &gname1932  /* xfmsubadd213xxxps */,
  &gname1923  /* xfmsubadd231ps */,
  &gname1932  /* xfmsubadd231xps */,
  &gname1932  /* xfmsubadd231xxps */,
  &gname1932  /* xfmsubadd231xxxps */,
  &gname1923  /* xfmsub132pd */,
  &gname1932  /* xfmsub132xpd */,
  &gname1932  /* xfmsub132xxpd */,
  &gname1932  /* xfmsub132xxxpd */,
  &gname1923  /* xfmsub213pd */,
  &gname1932  /* xfmsub213xpd */,
  &gname1932  /* xfmsub213xxpd */,
  &gname1932  /* xfmsub213xxxpd */,
  &gname1923  /* xfmsub231pd */,
  &gname1932  /* xfmsub231xpd */,
  &gname1932  /* xfmsub231xxpd */,
  &gname1932  /* xfmsub231xxxpd */,
  &gname1923  /* xfmsub132ps */,
  &gname1932  /* xfmsub132xps */,
  &gname1932  /* xfmsub132xxps */,
  &gname1932  /* xfmsub132xxxps */,
  &gname1923  /* xfmsub213ps */,
  &gname1932  /* xfmsub213xps */,
  &gname1932  /* xfmsub213xxps */,
  &gname1932  /* xfmsub213xxxps */,
  &gname1923  /* xfmsub231ps */,
  &gname1932  /* xfmsub231xps */,
  &gname1932  /* xfmsub231xxps */,
  &gname1932  /* xfmsub231xxxps */,
  &gname1923  /* xfmsub132sd */,
  &gname1932  /* xfmsub132xsd */,
  &gname1932  /* xfmsub132xxsd */,
  &gname1932  /* xfmsub132xxxsd */,
  &gname1923  /* xfmsub213sd */,
  &gname1932  /* xfmsub213xsd */,
  &gname1932  /* xfmsub213xxsd */,
  &gname1932  /* xfmsub213xxxsd */,
  &gname1923  /* xfmsub231sd */,
  &gname1932  /* xfmsub231xsd */,
  &gname1932  /* xfmsub231xxsd */,
  &gname1932  /* xfmsub231xxxsd */,
  &gname1923  /* xfmsub132ss */,
  &gname1932  /* xfmsub132xss */,
  &gname1932  /* xfmsub132xxss */,
  &gname1932  /* xfmsub132xxxss */,
  &gname1923  /* xfmsub213ss */,
  &gname1932  /* xfmsub213xss */,
  &gname1932  /* xfmsub213xxss */,
  &gname1932  /* xfmsub213xxxss */,
  &gname1923  /* xfmsub231ss */,
  &gname1932  /* xfmsub231xss */,
  &gname1932  /* xfmsub231xxss */,
  &gname1932  /* xfmsub231xxxss */,
  &gname1923  /* xfnmadd132pd */,
  &gname1932  /* xfnmadd132xpd */,
  &gname1932  /* xfnmadd132xxpd */,
  &gname1932  /* xfnmadd132xxxpd */,
  &gname1923  /* xfnmadd213pd */,
  &gname1932  /* xfnmadd213xpd */,
  &gname1932  /* xfnmadd213xxpd */,
  &gname1932  /* xfnmadd213xxxpd */,
  &gname1923  /* xfnmadd231pd */,
  &gname1932  /* xfnmadd231xpd */,
  &gname1932  /* xfnmadd231xxpd */,
  &gname1932  /* xfnmadd231xxxpd */,
  &gname1923  /* xfnmadd132ps */,
  &gname1932  /* xfnmadd132xps */,
  &gname1932  /* xfnmadd132xxps */,
  &gname1932  /* xfnmadd132xxxps */,
  &gname1923  /* xfnmadd213ps */,
  &gname1932  /* xfnmadd213xps */,
  &gname1932  /* xfnmadd213xxps */,
  &gname1932  /* xfnmadd213xxxps */,
  &gname1923  /* xfnmadd231ps */,
  &gname1932  /* xfnmadd231xps */,
  &gname1932  /* xfnmadd231xxps */,
  &gname1932  /* xfnmadd231xxxps */,
  &gname1923  /* xfnmadd132sd */,
  &gname1932  /* xfnmadd132xsd */,
  &gname1932  /* xfnmadd132xxsd */,
  &gname1932  /* xfnmadd132xxxsd */,
  &gname1923  /* xfnmadd213sd */,
  &gname1932  /* xfnmadd213xsd */,
  &gname1932  /* xfnmadd213xxsd */,
  &gname1932  /* xfnmadd213xxxsd */,
  &gname1923  /* xfnmadd231sd */,
  &gname1932  /* xfnmadd231xsd */,
  &gname1932  /* xfnmadd231xxsd */,
  &gname1932  /* xfnmadd231xxxsd */,
  &gname1923  /* xfnmadd132ss */,
  &gname1932  /* xfnmadd132xss */,
  &gname1932  /* xfnmadd132xxss */,
  &gname1932  /* xfnmadd132xxxss */,
  &gname1923  /* xfnmadd213ss */,
  &gname1932  /* xfnmadd213xss */,
  &gname1932  /* xfnmadd213xxss */,
  &gname1932  /* xfnmadd213xxxss */,
  &gname1923  /* xfnmadd231ss */,
  &gname1932  /* xfnmadd231xss */,
  &gname1932  /* xfnmadd231xxss */,
  &gname1932  /* xfnmadd231xxxss */,
  &gname1923  /* xfnmsub132pd */,
  &gname1932  /* xfnmsub132xpd */,
  &gname1932  /* xfnmsub132xxpd */,
  &gname1932  /* xfnmsub132xxxpd */,
  &gname1923  /* xfnmsub213pd */,
  &gname1932  /* xfnmsub213xpd */,
  &gname1932  /* xfnmsub213xxpd */,
  &gname1932  /* xfnmsub213xxxpd */,
  &gname1923  /* xfnmsub231pd */,
  &gname1932  /* xfnmsub231xpd */,
  &gname1932  /* xfnmsub231xxpd */,
  &gname1932  /* xfnmsub231xxxpd */,
  &gname1923  /* xfnmsub132ps */,
  &gname1932  /* xfnmsub132xps */,
  &gname1932  /* xfnmsub132xxps */,
  &gname1932  /* xfnmsub132xxxps */,
  &gname1923  /* xfnmsub213ps */,
  &gname1932  /* xfnmsub213xps */,
  &gname1932  /* xfnmsub213xxps */,
  &gname1932  /* xfnmsub213xxxps */,
  &gname1923  /* xfnmsub231ps */,
  &gname1932  /* xfnmsub231xps */,
  &gname1932  /* xfnmsub231xxps */,
  &gname1932  /* xfnmsub231xxxps */,
  &gname1923  /* xfnmsub132sd */,
  &gname1932  /* xfnmsub132xsd */,
  &gname1932  /* xfnmsub132xxsd */,
  &gname1932  /* xfnmsub132xxxsd */,
  &gname1923  /* xfnmsub213sd */,
  &gname1932  /* xfnmsub213xsd */,
  &gname1932  /* xfnmsub213xxsd */,
  &gname1932  /* xfnmsub213xxxsd */,
  &gname1923  /* xfnmsub231sd */,
  &gname1932  /* xfnmsub231xsd */,
  &gname1932  /* xfnmsub231xxsd */,
  &gname1932  /* xfnmsub231xxxsd */,
  &gname1923  /* xfnmsub132ss */,
  &gname1932  /* xfnmsub132xss */,
  &gname1932  /* xfnmsub132xxss */,
  &gname1932  /* xfnmsub132xxxss */,
  &gname1923  /* xfnmsub213ss */,
  &gname1932  /* xfnmsub213xss */,
  &gname1932  /* xfnmsub213xxss */,
  &gname1932  /* xfnmsub213xxxss */,
  &gname1923  /* xfnmsub231ss */,
  &gname1932  /* xfnmsub231xss */,
  &gname1932  /* xfnmsub231xxss */,
  &gname1932  /* xfnmsub231xxxss */,
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
  &gname1050  /* nop */,
  &gname0     /* noop */
};
const char * sanity_check_targ_so_name = "core.so";
