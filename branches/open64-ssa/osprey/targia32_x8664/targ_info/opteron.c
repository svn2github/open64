#include "ti_si_types.h"
SI_RESOURCE resource9 = {"issue",0,3,0,0};
SI_RESOURCE resource10 = {"alu",1,3,0,3};
SI_RESOURCE resource11 = {"agu",2,3,0,6};
SI_RESOURCE resource12 = {"fmul",3,1,0,9};
SI_RESOURCE resource13 = {"fadd",4,1,0,11};
SI_RESOURCE resource14 = {"fstore",5,1,0,13};
SI_RESOURCE resource15 = {"loadstore",6,2,0,15};
const int SI_resource_count = 7;
SI_RESOURCE * const SI_resources[] = {
  &resource9,
  &resource10,
  &resource11,
  &resource12,
  &resource13,
  &resource14,
  &resource15
};
const SI_RRW SI_RRW_initializer = 0x8000;
const SI_RRW SI_RRW_overuse_mask = 0x25524;
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

/* Instruction group opteron simple alu */
static const SI_RRW res_req17[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname19[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname18[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency21[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency22[] = {1,1};
static SI gname16 = {
  "opteron simple alu",
  1              , /* id */
  latency21      , /* operand latency */
  latency22      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req17      , /* resource requirement */
  gname19        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname18        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group simple alu w/ mem operand */
static const SI_RRW res_req26[] = {
  1,
  0x8009
};
static const SI_RESOURCE_ID_SET gname28[] = {
  0x43
};
static SI_RESOURCE_TOTAL gname27[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency30[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency31[] = {4,4};
static SI gname25 = {
  "simple alu w/ mem operand",
  2              , /* id */
  latency30      , /* operand latency */
  latency31      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req26      , /* resource requirement */
  gname28        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname27        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group packed insert */
static const SI_RRW res_req35[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname37[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname36[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency39[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency40[] = {9,9};
static SI gname34 = {
  "packed insert",
  3              , /* id */
  latency39      , /* operand latency */
  latency40      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req35      , /* resource requirement */
  gname37        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname36        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group lea */
static const SI_RRW res_req44[] = {
  1,
  0x49
};
static const SI_RESOURCE_ID_SET gname46[] = {
  0x7
};
static SI_RESOURCE_TOTAL gname45[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency48[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency49[] = {2,2};
static SI gname43 = {
  "lea",
  4              , /* id */
  latency48      , /* operand latency */
  latency49      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req44      , /* resource requirement */
  gname46        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname45        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group push/pop */
static const SI_RRW res_req53[] = {
  1,
  0x8009
};
static const SI_RESOURCE_ID_SET gname55[] = {
  0x43
};
static SI_RESOURCE_TOTAL gname54[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency57[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency58[] = {3,3};
static SI gname52 = {
  "push/pop",
  5              , /* id */
  latency57      , /* operand latency */
  latency58      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req53      , /* resource requirement */
  gname55        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname54        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ret near */
static const SI_RRW res_req62[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname64[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname63[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency66[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency67[] = {5,5};
static SI gname61 = {
  "ret near",
  6              , /* id */
  latency66      , /* operand latency */
  latency67      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req62      , /* resource requirement */
  gname64        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname63        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group call */
static const SI_RRW res_req71[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname73[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname72[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency75[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency76[] = {3,3};
static SI gname70 = {
  "call",
  7              , /* id */
  latency75      , /* operand latency */
  latency76      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req71      , /* resource requirement */
  gname73        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname72        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dynamic tls call */
static const SI_RRW res_req80[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname82[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname81[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency84[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency85[] = {5,5};
static SI gname79 = {
  "dynamic tls call",
  8              , /* id */
  latency84      , /* operand latency */
  latency85      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req80      , /* resource requirement */
  gname82        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname81        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group indirect call/jump */
static const SI_RRW res_req89[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname91[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname90[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency93[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency94[] = {4,4};
static SI gname88 = {
  "indirect call/jump",
  9              , /* id */
  latency93      , /* operand latency */
  latency94      , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req89      , /* resource requirement */
  gname91        , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname90        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group imult32 */
static const SI_RRW res_req98[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname100[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname99[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency102[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency103[] = {3,3};
static SI gname97 = {
  "imult32",
  10             , /* id */
  latency102     , /* operand latency */
  latency103     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req98      , /* resource requirement */
  gname100       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname99        , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group imult64 */
static const SI_RRW res_req107[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname109[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname108[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency111[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency112[] = {5,5};
static SI gname106 = {
  "imult64",
  11             , /* id */
  latency111     , /* operand latency */
  latency112     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req107     , /* resource requirement */
  gname109       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname108       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group leave */
static const SI_RRW res_req116[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname118[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname117[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency120[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency121[] = {3,3};
static SI gname115 = {
  "leave",
  12             , /* id */
  latency120     , /* operand latency */
  latency121     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req116     , /* resource requirement */
  gname118       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname117       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group enter */
static const SI_RRW res_req125[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname127[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname126[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency129[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency130[] = {21,21};
static SI gname124 = {
  "enter",
  13             , /* id */
  latency129     , /* operand latency */
  latency130     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req125     , /* resource requirement */
  gname127       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname126       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group div32 */
static const SI_RRW res_req134[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname136[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname135[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency138[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency139[] = {39,39};
static SI gname133 = {
  "div32",
  14             , /* id */
  latency138     , /* operand latency */
  latency139     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req134     , /* resource requirement */
  gname136       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname135       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group div64 */
static const SI_RRW res_req143[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname145[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname144[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency147[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency148[] = {71,71};
static SI gname142 = {
  "div64",
  15             , /* id */
  latency147     , /* operand latency */
  latency148     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req143     , /* resource requirement */
  gname145       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname144       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group idiv32 */
static const SI_RRW res_req152[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname154[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname153[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency156[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency157[] = {42,42};
static SI gname151 = {
  "idiv32",
  16             , /* id */
  latency156     , /* operand latency */
  latency157     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req152     , /* resource requirement */
  gname154       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname153       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group idiv64 */
static const SI_RRW res_req161[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname163[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname162[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency165[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency166[] = {74,74};
static SI gname160 = {
  "idiv64",
  17             , /* id */
  latency165     , /* operand latency */
  latency166     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req161     , /* resource requirement */
  gname163       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname162       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group load8_16/32/64 */
static const SI_RRW res_req170[] = {
  1,
  0x8041
};
static const SI_RESOURCE_ID_SET gname172[] = {
  0x45
};
static SI_RESOURCE_TOTAL gname171[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency174[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency175[] = {4,4};
static SI gname169 = {
  "load8_16/32/64",
  18             , /* id */
  latency174     , /* operand latency */
  latency175     , /* result latency */
  4              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req170     , /* resource requirement */
  gname172       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname171       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group load32/64 */
static const SI_RRW res_req179[] = {
  1,
  0x8041
};
static const SI_RESOURCE_ID_SET gname181[] = {
  0x45
};
static SI_RESOURCE_TOTAL gname180[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency183[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency184[] = {3,3};
static SI gname178 = {
  "load32/64",
  19             , /* id */
  latency183     , /* operand latency */
  latency184     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req179     , /* resource requirement */
  gname181       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname180       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group store */
static const SI_RRW res_req188[] = {
  1,
  0x8041
};
static const SI_RESOURCE_ID_SET gname190[] = {
  0x45
};
static SI_RESOURCE_TOTAL gname189[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency192[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency193[] = {3,3};
static SI gname187 = {
  "store",
  20             , /* id */
  latency192     , /* operand latency */
  latency193     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
  res_req188     , /* resource requirement */
  gname190       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname189       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group branch */
static const SI_RRW res_req197[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname199[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname198[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency201[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency202[] = {1,1};
static SI gname196 = {
  "branch",
  21             , /* id */
  latency201     , /* operand latency */
  latency202     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req197     , /* resource requirement */
  gname199       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname198       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sqrtss */
static const SI_RRW res_req206[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname208[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname207[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency210[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency211[] = {19,19};
static SI gname205 = {
  "sqrtss",
  22             , /* id */
  latency210     , /* operand latency */
  latency211     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req206     , /* resource requirement */
  gname208       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname207       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sqrtsd */
static const SI_RRW res_req215[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname217[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname216[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency219[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency220[] = {27,27};
static SI gname214 = {
  "sqrtsd",
  23             , /* id */
  latency219     , /* operand latency */
  latency220     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req215     , /* resource requirement */
  gname217       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname216       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mov */
static const SI_RRW res_req224[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname226[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname225[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency228[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency229[] = {2,2};
static SI gname223 = {
  "float-mov",
  24             , /* id */
  latency228     , /* operand latency */
  latency229     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req224     , /* resource requirement */
  gname226       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname225       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load */
static const SI_RRW res_req233[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname235[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname234[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency237[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency238[] = {3,3};
static SI gname232 = {
  "float-load",
  25             , /* id */
  latency237     , /* operand latency */
  latency238     , /* result latency */
  3              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req233     , /* resource requirement */
  gname235       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname234       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector */
static const SI_RRW res_req242[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname244[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname243[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency246[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency247[] = {7,7};
static SI gname241 = {
  "float-load vector",
  26             , /* id */
  latency246     , /* operand latency */
  latency247     , /* result latency */
  7              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req242     , /* resource requirement */
  gname244       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname243       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector II */
static const SI_RRW res_req251[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname253[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname252[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency255[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency256[] = {2,2};
static SI gname250 = {
  "float-load vector II",
  27             , /* id */
  latency255     , /* operand latency */
  latency256     , /* result latency */
  2              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req251     , /* resource requirement */
  gname253       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname252       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector low-high packed-single */
static const SI_RRW res_req260[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname262[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname261[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency264[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency265[] = {2,2};
static SI gname259 = {
  "float-load vector low-high packed-single",
  28             , /* id */
  latency264     , /* operand latency */
  latency265     , /* result latency */
  2              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req260     , /* resource requirement */
  gname262       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname261       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector low-high packed-single */
static const SI_RRW res_req269[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname271[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname270[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency273[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency274[] = {2,2};
static SI gname268 = {
  "float-store vector low-high packed-single",
  29             , /* id */
  latency273     , /* operand latency */
  latency274     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  2              , /* store available time */
  res_req269     , /* resource requirement */
  gname271       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname270       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load vector low-high packed-double */
static const SI_RRW res_req278[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname280[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname279[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency282[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency283[] = {4,4};
static SI gname277 = {
  "float-load vector low-high packed-double",
  30             , /* id */
  latency282     , /* operand latency */
  latency283     , /* result latency */
  4              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req278     , /* resource requirement */
  gname280       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname279       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector low-high packed-double */
static const SI_RRW res_req287[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname289[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname288[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency291[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency292[] = {4,4};
static SI gname286 = {
  "float-store vector low-high packed-double",
  31             , /* id */
  latency291     , /* operand latency */
  latency292     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  4              , /* store available time */
  res_req287     , /* resource requirement */
  gname289       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname288       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store */
static const SI_RRW res_req296[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname298[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname297[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency300[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency301[] = {2,2};
static SI gname295 = {
  "float-store",
  32             , /* id */
  latency300     , /* operand latency */
  latency301     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  2              , /* store available time */
  res_req296     , /* resource requirement */
  gname298       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname297       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector */
static const SI_RRW res_req305[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname307[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname306[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency309[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency310[] = {4,4};
static SI gname304 = {
  "float-store vector",
  33             , /* id */
  latency309     , /* operand latency */
  latency310     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  4              , /* store available time */
  res_req305     , /* resource requirement */
  gname307       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname306       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector II */
static const SI_RRW res_req314[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname316[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname315[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency318[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency319[] = {3,3};
static SI gname313 = {
  "float-store vector II",
  34             , /* id */
  latency318     , /* operand latency */
  latency319     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  3              , /* store available time */
  res_req314     , /* resource requirement */
  gname316       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname315       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I */
static const SI_RRW res_req323[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname325[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname324[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency327[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency328[] = {5,5};
static SI gname322 = {
  "vector cvt I",
  35             , /* id */
  latency327     , /* operand latency */
  latency328     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req323     , /* resource requirement */
  gname325       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname324       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt II */
static const SI_RRW res_req332[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname334[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname333[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency336[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency337[] = {3,3};
static SI gname331 = {
  "vector cvt II",
  36             , /* id */
  latency336     , /* operand latency */
  latency337     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req332     , /* resource requirement */
  gname334       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname333       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt III */
static const SI_RRW res_req341[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname343[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname342[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency345[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency346[] = {8,8};
static SI gname340 = {
  "vector cvt III",
  37             , /* id */
  latency345     , /* operand latency */
  latency346     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req341     , /* resource requirement */
  gname343       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname342       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV */
static const SI_RRW res_req350[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname352[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname351[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency354[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency355[] = {5,5};
static SI gname349 = {
  "vector cvt IV",
  38             , /* id */
  latency354     , /* operand latency */
  latency355     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req350     , /* resource requirement */
  gname352       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname351       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I w/ memory operand */
static const SI_RRW res_req359[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname361[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname360[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency363[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency364[] = {7,7};
static SI gname358 = {
  "vector cvt I w/ memory operand",
  39             , /* id */
  latency363     , /* operand latency */
  latency364     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req359     , /* resource requirement */
  gname361       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname360       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt II w/ memory operand */
static const SI_RRW res_req368[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname370[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname369[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency372[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency373[] = {5,5};
static SI gname367 = {
  "vector cvt II w/ memory operand",
  40             , /* id */
  latency372     , /* operand latency */
  latency373     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req368     , /* resource requirement */
  gname370       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname369       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt III w/ memory operand */
static const SI_RRW res_req377[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname379[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname378[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency381[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency382[] = {10,10};
static SI gname376 = {
  "vector cvt III w/ memory operand",
  41             , /* id */
  latency381     , /* operand latency */
  latency382     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req377     , /* resource requirement */
  gname379       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname378       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV w/ memory operand */
static const SI_RRW res_req386[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname388[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname387[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency390[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency391[] = {7,7};
static SI gname385 = {
  "vector cvt IV w/ memory operand",
  42             , /* id */
  latency390     , /* operand latency */
  latency391     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req386     , /* resource requirement */
  gname388       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname387       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float w/ mem */
static const SI_RRW res_req395[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname397[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname396[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency399[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency400[] = {9,9};
static SI gname394 = {
  "int-2-float w/ mem",
  43             , /* id */
  latency399     , /* operand latency */
  latency400     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req395     , /* resource requirement */
  gname397       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname396       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float */
static const SI_RRW res_req404[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname406[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname405[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency408[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency409[] = {14,14};
static SI gname403 = {
  "int-2-float",
  44             , /* id */
  latency408     , /* operand latency */
  latency409     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req404     , /* resource requirement */
  gname406       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname405       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group double-2-float */
static const SI_RRW res_req413[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname415[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname414[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency417[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency418[] = {12,12};
static SI gname412 = {
  "double-2-float",
  45             , /* id */
  latency417     , /* operand latency */
  latency418     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req413     , /* resource requirement */
  gname415       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname414       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group double-2-float w/ mem */
static const SI_RRW res_req422[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname424[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname423[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency426[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency427[] = {9,9};
static SI gname421 = {
  "double-2-float w/ mem",
  46             , /* id */
  latency426     , /* operand latency */
  latency427     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req422     , /* resource requirement */
  gname424       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname423       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-double */
static const SI_RRW res_req431[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname433[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname432[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency435[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency436[] = {11,11};
static SI gname430 = {
  "int-2-double",
  47             , /* id */
  latency435     , /* operand latency */
  latency436     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req431     , /* resource requirement */
  gname433       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname432       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-double w/ mem */
static const SI_RRW res_req440[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname442[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname441[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency444[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency445[] = {6,6};
static SI gname439 = {
  "int-2-double w/ mem",
  48             , /* id */
  latency444     , /* operand latency */
  latency445     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req440     , /* resource requirement */
  gname442       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname441       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float */
static const SI_RRW res_req449[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname451[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname450[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency453[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency454[] = {9,9};
static SI gname448 = {
  "int-2-float",
  49             , /* id */
  latency453     , /* operand latency */
  latency454     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req449     , /* resource requirement */
  gname451       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname450       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-2-int */
static const SI_RRW res_req458[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname460[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname459[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency462[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency463[] = {2,2};
static SI gname457 = {
  "float-2-int",
  50             , /* id */
  latency462     , /* operand latency */
  latency463     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req458     , /* resource requirement */
  gname460       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname459       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu */
static const SI_RRW res_req467[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname469[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname468[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency471[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency472[] = {4,4};
static SI gname466 = {
  "float-alu",
  51             , /* id */
  latency471     , /* operand latency */
  latency472     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req467     , /* resource requirement */
  gname469       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname468       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I */
static const SI_RRW res_req476[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname478[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname477[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency480[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency481[] = {5,5};
static SI gname475 = {
  "float-alu for float vector class I",
  52             , /* id */
  latency480     , /* operand latency */
  latency481     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req476     , /* resource requirement */
  gname478       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname477       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I w/ memory operand */
static const SI_RRW res_req485[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname487[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname486[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency489[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency490[] = {5,5};
static SI gname484 = {
  "float-alu for float vector class I w/ memory operand",
  53             , /* id */
  latency489     , /* operand latency */
  latency490     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req485     , /* resource requirement */
  gname487       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname486       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class II */
static const SI_RRW res_req494[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname496[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname495[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency498[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency499[] = {3,3};
static SI gname493 = {
  "float-alu for float vector class II",
  54             , /* id */
  latency498     , /* operand latency */
  latency499     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req494     , /* resource requirement */
  gname496       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname495       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class II w/ memory operand */
static const SI_RRW res_req503[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname505[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname504[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency507[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency508[] = {5,5};
static SI gname502 = {
  "float-alu for float vector class II w/ memory operand",
  55             , /* id */
  latency507     , /* operand latency */
  latency508     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req503     , /* resource requirement */
  gname505       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname504       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III */
static const SI_RRW res_req512[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname514[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname513[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency516[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency517[] = {5,5};
static SI gname511 = {
  "float-alu for float vector class III",
  56             , /* id */
  latency516     , /* operand latency */
  latency517     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req512     , /* resource requirement */
  gname514       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname513       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class III w/memory operand */
static const SI_RRW res_req521[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname523[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname522[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency525[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency526[] = {7,7};
static SI gname520 = {
  "float-alu for float vector class III w/memory operand",
  57             , /* id */
  latency525     , /* operand latency */
  latency526     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req521     , /* resource requirement */
  gname523       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname522       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV */
static const SI_RRW res_req530[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname532[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname531[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency534[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency535[] = {33,33};
static SI gname529 = {
  "float-alu for float vector class IV",
  58             , /* id */
  latency534     , /* operand latency */
  latency535     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req530     , /* resource requirement */
  gname532       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname531       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 cosine */
static const SI_RRW res_req539[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname541[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname540[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency543[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency544[] = {92,92};
static SI gname538 = {
  "x87 cosine",
  59             , /* id */
  latency543     , /* operand latency */
  latency544     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req539     , /* resource requirement */
  gname541       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname540       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 sine */
static const SI_RRW res_req548[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname550[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname549[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency552[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency553[] = {93,93};
static SI gname547 = {
  "x87 sine",
  60             , /* id */
  latency552     , /* operand latency */
  latency553     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req548     , /* resource requirement */
  gname550       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname549       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV w/ memory operand */
static const SI_RRW res_req557[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname559[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname558[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency561[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency562[] = {35,35};
static SI gname556 = {
  "float-alu for float vector class IV w/ memory operand",
  61             , /* id */
  latency561     , /* operand latency */
  latency562     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req557     , /* resource requirement */
  gname559       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname558       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class V */
static const SI_RRW res_req566[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname568[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname567[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency570[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency571[] = {37,37};
static SI gname565 = {
  "float-alu for float vector class V",
  62             , /* id */
  latency570     , /* operand latency */
  latency571     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req566     , /* resource requirement */
  gname568       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname567       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class V w/ memory operand */
static const SI_RRW res_req575[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname577[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname576[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency579[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency580[] = {39,39};
static SI gname574 = {
  "float-alu for float vector class V w/ memory operand",
  63             , /* id */
  latency579     , /* operand latency */
  latency580     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req575     , /* resource requirement */
  gname577       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname576       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 */
static const SI_RRW res_req584[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname586[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname585[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency588[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency589[] = {2,2};
static SI gname583 = {
  "float-vector fma4",
  64             , /* id */
  latency588     , /* operand latency */
  latency589     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req584     , /* resource requirement */
  gname586       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname585       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd */
static const SI_RRW res_req593[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname595[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname594[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency597[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency598[] = {4,4};
static SI gname592 = {
  "float-vector fma4 mem opnd",
  65             , /* id */
  latency597     , /* operand latency */
  latency598     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req593     , /* resource requirement */
  gname595       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname594       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd  w/ scaled index  */
static const SI_RRW res_req602[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname604[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname603[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency606[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency607[] = {4,4};
static SI gname601 = {
  "float-vector fma4 mem opnd  w/ scaled index ",
  66             , /* id */
  latency606     , /* operand latency */
  latency607     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req602     , /* resource requirement */
  gname604       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname603       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 mem opnd  w/ scaled index w/o base */
static const SI_RRW res_req611[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname613[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname612[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency615[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency616[] = {4,4};
static SI gname610 = {
  "float-vector fma4 mem opnd  w/ scaled index w/o base",
  67             , /* id */
  latency615     , /* operand latency */
  latency616     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req611     , /* resource requirement */
  gname613       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname612       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VI */
static const SI_RRW res_req620[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname622[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname621[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency624[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency625[] = {3,3};
static SI gname619 = {
  "float-alu for float vector class VI",
  68             , /* id */
  latency624     , /* operand latency */
  latency625     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req620     , /* resource requirement */
  gname622       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname621       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VI w/ memory operand */
static const SI_RRW res_req629[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname631[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname630[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency633[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency634[] = {5,5};
static SI gname628 = {
  "float-alu for float vector class VI w/ memory operand",
  69             , /* id */
  latency633     , /* operand latency */
  latency634     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req629     , /* resource requirement */
  gname631       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname630       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VII */
static const SI_RRW res_req638[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname640[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname639[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency642[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency643[] = {39,39};
static SI gname637 = {
  "float-alu for float vector class VII",
  70             , /* id */
  latency642     , /* operand latency */
  latency643     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req638     , /* resource requirement */
  gname640       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname639       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class VIII */
static const SI_RRW res_req647[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname649[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname648[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency651[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency652[] = {51,51};
static SI gname646 = {
  "float-alu for float vector class VIII",
  71             , /* id */
  latency651     , /* operand latency */
  latency652     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req647     , /* resource requirement */
  gname649       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname648       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IX */
static const SI_RRW res_req656[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname658[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname657[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency660[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency661[] = {4,4};
static SI gname655 = {
  "float-alu for float vector class IX",
  72             , /* id */
  latency660     , /* operand latency */
  latency661     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req656     , /* resource requirement */
  gname658       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname657       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class X */
static const SI_RRW res_req665[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname667[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname666[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency669[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency670[] = {2,2};
static SI gname664 = {
  "float-alu for float vector class X",
  73             , /* id */
  latency669     , /* operand latency */
  latency670     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req665     , /* resource requirement */
  gname667       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname666       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XI */
static const SI_RRW res_req674[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname676[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname675[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency678[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency679[] = {3,3};
static SI gname673 = {
  "float-alu for float vector class XI",
  74             , /* id */
  latency678     , /* operand latency */
  latency679     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req674     , /* resource requirement */
  gname676       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname675       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XII */
static const SI_RRW res_req683[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname685[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname684[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency687[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency688[] = {4,4};
static SI gname682 = {
  "float-alu for float vector class XII",
  75             , /* id */
  latency687     , /* operand latency */
  latency688     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req683     , /* resource requirement */
  gname685       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname684       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XII w/ memory operand */
static const SI_RRW res_req692[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname694[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname693[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency696[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency697[] = {4,4};
static SI gname691 = {
  "float-alu for float vector class XII w/ memory operand",
  76             , /* id */
  latency696     , /* operand latency */
  latency697     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req692     , /* resource requirement */
  gname694       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname693       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIIa */
static const SI_RRW res_req701[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname703[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname702[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency705[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency706[] = {2,2};
static SI gname700 = {
  "float-alu for float vector class XIIa",
  77             , /* id */
  latency705     , /* operand latency */
  latency706     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req701     , /* resource requirement */
  gname703       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname702       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mmx shuffle */
static const SI_RRW res_req710[] = {
  1,
  0xa01
};
static const SI_RESOURCE_ID_SET gname712[] = {
  0x19
};
static SI_RESOURCE_TOTAL gname711[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency714[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency715[] = {2,2};
static SI gname709 = {
  "mmx shuffle",
  78             , /* id */
  latency714     , /* operand latency */
  latency715     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req710     , /* resource requirement */
  gname712       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname711       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIII */
static const SI_RRW res_req719[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname721[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname720[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency723[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency724[] = {2,2};
static SI gname718 = {
  "float-alu for float vector class XIII",
  79             , /* id */
  latency723     , /* operand latency */
  latency724     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req719     , /* resource requirement */
  gname721       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname720       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIV */
static const SI_RRW res_req728[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname730[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname729[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency732[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency733[] = {2,2};
static SI gname727 = {
  "float-alu for float vector class XIV",
  80             , /* id */
  latency732     , /* operand latency */
  latency733     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req728     , /* resource requirement */
  gname730       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname729       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XV */
static const SI_RRW res_req737[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname739[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname738[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency741[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency742[] = {3,3};
static SI gname736 = {
  "float-alu for float vector class XV",
  81             , /* id */
  latency741     , /* operand latency */
  latency742     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req737     , /* resource requirement */
  gname739       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname738       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse parallel compares */
static const SI_RRW res_req746[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname748[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname747[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency750[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency751[] = {2,2};
static SI gname745 = {
  "sse parallel compares",
  82             , /* id */
  latency750     , /* operand latency */
  latency751     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req746     , /* resource requirement */
  gname748       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname747       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XVI */
static const SI_RRW res_req755[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname757[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname756[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency759[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency760[] = {2,2};
static SI gname754 = {
  "float-alu for float vector class XVI",
  83             , /* id */
  latency759     , /* operand latency */
  latency760     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req755     , /* resource requirement */
  gname757       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname756       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XVII */
static const SI_RRW res_req764[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname766[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname765[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency768[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency769[] = {4,4};
static SI gname763 = {
  "float-alu for float vector class XVII",
  84             , /* id */
  latency768     , /* operand latency */
  latency769     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req764     , /* resource requirement */
  gname766       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname765       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int vector */
static const SI_RRW res_req773[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname775[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname774[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency777[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency778[] = {2,2};
static SI gname772 = {
  "float-alu for int vector",
  85             , /* id */
  latency777     , /* operand latency */
  latency778     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req773     , /* resource requirement */
  gname775       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname774       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int mpy vector */
static const SI_RRW res_req782[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname784[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname783[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency786[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency787[] = {6,6};
static SI gname781 = {
  "float-alu for int mpy vector",
  86             , /* id */
  latency786     , /* operand latency */
  latency787     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req782     , /* resource requirement */
  gname784       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname783       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for mmx int mpy vector */
static const SI_RRW res_req791[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname793[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname792[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency795[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency796[] = {3,3};
static SI gname790 = {
  "float-alu for mmx int mpy vector",
  87             , /* id */
  latency795     , /* operand latency */
  latency796     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req791     , /* resource requirement */
  gname793       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname792       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int vector w/ memory operand */
static const SI_RRW res_req800[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname802[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname801[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency804[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency805[] = {4,4};
static SI gname799 = {
  "float-alu for int vector w/ memory operand",
  88             , /* id */
  latency804     , /* operand latency */
  latency805     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req800     , /* resource requirement */
  gname802       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname801       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu w/ memory operand */
static const SI_RRW res_req809[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname811[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname810[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency813[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency814[] = {6,6};
static SI gname808 = {
  "float-alu w/ memory operand",
  89             , /* id */
  latency813     , /* operand latency */
  latency814     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req809     , /* resource requirement */
  gname811       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname810       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-max/min */
static const SI_RRW res_req818[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname820[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname819[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency822[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency823[] = {2,2};
static SI gname817 = {
  "float-max/min",
  90             , /* id */
  latency822     , /* operand latency */
  latency823     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req818     , /* resource requirement */
  gname820       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname819       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-xorp */
static const SI_RRW res_req827[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname829[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname828[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency831[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency832[] = {3,3};
static SI gname826 = {
  "float-xorp",
  91             , /* id */
  latency831     , /* operand latency */
  latency832     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req827     , /* resource requirement */
  gname829       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname828       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul */
static const SI_RRW res_req836[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname838[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname837[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency840[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency841[] = {4,4};
static SI gname835 = {
  "float-mul",
  92             , /* id */
  latency840     , /* operand latency */
  latency841     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req836     , /* resource requirement */
  gname838       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname837       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul w/ mem operand */
static const SI_RRW res_req845[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname847[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname846[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency849[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency850[] = {6,6};
static SI gname844 = {
  "float-mul w/ mem operand",
  93             , /* id */
  latency849     , /* operand latency */
  latency850     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req845     , /* resource requirement */
  gname847       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname846       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide */
static const SI_RRW res_req854[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname856[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname855[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency858[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency859[] = {20,20};
static SI gname853 = {
  "float-divide",
  94             , /* id */
  latency858     , /* operand latency */
  latency859     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req854     , /* resource requirement */
  gname856       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname855       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide w/ mem operand */
static const SI_RRW res_req863[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname865[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname864[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency867[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency868[] = {22,22};
static SI gname862 = {
  "float-divide w/ mem operand",
  95             , /* id */
  latency867     , /* operand latency */
  latency868     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req863     , /* resource requirement */
  gname865       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname864       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-others */
static const SI_RRW res_req872[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname874[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname873[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency876[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency877[] = {10,10};
static SI gname871 = {
  "float-others",
  96             , /* id */
  latency876     , /* operand latency */
  latency877     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req872     , /* resource requirement */
  gname874       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname873       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sync */
static const SI_RRW res_req881[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname883[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname882[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency885[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency886[] = {0,0};
static SI gname880 = {
  "sync",
  97             , /* id */
  latency885     , /* operand latency */
  latency886     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req881     , /* resource requirement */
  gname883       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname882       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group prefetch */
static const SI_RRW res_req890[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname892[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname891[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency894[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency895[] = {0,0};
static SI gname889 = {
  "prefetch",
  98             , /* id */
  latency894     , /* operand latency */
  latency895     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req890     , /* resource requirement */
  gname892       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname891       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group nop */
static const SI_RRW res_req899[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname901[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname900[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency903[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency904[] = {0,0};
static SI gname898 = {
  "nop",
  99             , /* id */
  latency903     , /* operand latency */
  latency904     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req899     , /* resource requirement */
  gname901       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname900       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group emms */
static const SI_RRW res_req908[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname910[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname909[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency912[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency913[] = {6,6};
static SI gname907 = {
  "emms",
  100            , /* id */
  latency912     , /* operand latency */
  latency913     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req908     , /* resource requirement */
  gname910       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  gname909       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group clflush */
static const SI_RRW res_req917[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname919[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname918[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency921[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency922[] = {0,0};
static SI gname916 = {
  "clflush",
  101            , /* id */
  latency921     , /* operand latency */
  latency922     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req917     , /* resource requirement */
  gname919       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname918       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group zeroupper */
static const SI_RRW res_req926[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname928[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname927[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency930[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency931[] = {6,6};
static SI gname925 = {
  "zeroupper",
  102            , /* id */
  latency930     , /* operand latency */
  latency931     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req926     , /* resource requirement */
  gname928       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  4              , /* resource count vec size */
  gname927       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-int-2-mmx */
static const SI_RRW res_req935[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname937[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname936[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency939[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency940[] = {9,9};
static SI gname934 = {
  "mov-int-2-mmx",
  103            , /* id */
  latency939     , /* operand latency */
  latency940     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req935     , /* resource requirement */
  gname937       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname936       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-int */
static const SI_RRW res_req944[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname946[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname945[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency948[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency949[] = {4,4};
static SI gname943 = {
  "mov-mmx-2-int",
  104            , /* id */
  latency948     , /* operand latency */
  latency949     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req944     , /* resource requirement */
  gname946       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname945       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-sse */
static const SI_RRW res_req953[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname955[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname954[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency957[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency958[] = {2,2};
static SI gname952 = {
  "mov-mmx-2-sse",
  105            , /* id */
  latency957     , /* operand latency */
  latency958     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req953     , /* resource requirement */
  gname955       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname954       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-sse_2_mmx */
static const SI_RRW res_req962[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname964[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname963[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency966[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency967[] = {2,2};
static SI gname961 = {
  "mov-sse_2_mmx",
  106            , /* id */
  latency966     , /* operand latency */
  latency967     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req962     , /* resource requirement */
  gname964       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname963       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx */
static const SI_RRW res_req971[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname973[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname972[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency975[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency976[] = {8,8};
static SI gname970 = {
  "vector cvt sse <-> mmx",
  107            , /* id */
  latency975     , /* operand latency */
  latency976     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req971     , /* resource requirement */
  gname973       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname972       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE movmsk */
static const SI_RRW res_req980[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname982[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname981[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency984[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency985[] = {3,3};
static SI gname979 = {
  "SSE movmsk",
  108            , /* id */
  latency984     , /* operand latency */
  latency985     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req980     , /* resource requirement */
  gname982       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname981       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A extract */
static const SI_RRW res_req989[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname991[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname990[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency993[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency994[] = {2,2};
static SI gname988 = {
  "SSE4A extract",
  109            , /* id */
  latency993     , /* operand latency */
  latency994     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req989     , /* resource requirement */
  gname991       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname990       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A insert */
static const SI_RRW res_req998[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1000[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname999[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1002[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1003[] = {5,5};
static SI gname997 = {
  "SSE4A insert",
  110            , /* id */
  latency1002    , /* operand latency */
  latency1003    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req998     , /* resource requirement */
  gname1000      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname999       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group monitor mwait */
static const SI_RRW res_req1007[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname1009[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname1008[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1011[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1012[] = {0,0};
static SI gname1006 = {
  "monitor mwait",
  111            , /* id */
  latency1011    , /* operand latency */
  latency1012    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1007    , /* resource requirement */
  gname1009      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1008      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc reg opnd */
static const SI_RRW res_req1016[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1018[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1017[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1020[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1021[] = {2,2};
static SI gname1015 = {
  "ssse3 misc reg opnd",
  112            , /* id */
  latency1020    , /* operand latency */
  latency1021    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1016    , /* resource requirement */
  gname1018      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1017      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc mem opnd */
static const SI_RRW res_req1025[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1027[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1026[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1029[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1030[] = {7,7};
static SI gname1024 = {
  "ssse3 misc mem opnd",
  113            , /* id */
  latency1029    , /* operand latency */
  latency1030    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1025    , /* resource requirement */
  gname1027      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1026      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 hadd reg opnd */
static const SI_RRW res_req1034[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1036[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1035[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1038[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1039[] = {5,5};
static SI gname1033 = {
  "ssse3 hadd reg opnd",
  114            , /* id */
  latency1038    , /* operand latency */
  latency1039    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1034    , /* resource requirement */
  gname1036      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1035      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 hadd mem opnd */
static const SI_RRW res_req1043[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1045[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1044[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1047[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1048[] = {10,10};
static SI gname1042 = {
  "ssse3 hadd mem opnd",
  115            , /* id */
  latency1047    , /* operand latency */
  latency1048    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1043    , /* resource requirement */
  gname1045      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1044      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 mul reg opnd */
static const SI_RRW res_req1052[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1054[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1053[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1056[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1057[] = {4,4};
static SI gname1051 = {
  "ssse3 mul reg opnd",
  116            , /* id */
  latency1056    , /* operand latency */
  latency1057    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1052    , /* resource requirement */
  gname1054      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1053      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 mul mem opnd */
static const SI_RRW res_req1061[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1063[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1062[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1065[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1066[] = {9,9};
static SI gname1060 = {
  "ssse3 mul mem opnd",
  117            , /* id */
  latency1065    , /* operand latency */
  latency1066    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1061    , /* resource requirement */
  gname1063      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1062      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1070[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1072[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1071[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1074[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1075[] = {2,2};
static SI gname1069 = {
  "sse4.1 pmov reg opnd",
  118            , /* id */
  latency1074    , /* operand latency */
  latency1075    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1070    , /* resource requirement */
  gname1072      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1071      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1079[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1081[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1080[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1083[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1084[] = {7,7};
static SI gname1078 = {
  "sse4.1 pmov mem opnd",
  119            , /* id */
  latency1083    , /* operand latency */
  latency1084    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1079    , /* resource requirement */
  gname1081      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1080      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1088[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1090[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1089[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1092[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1093[] = {4,4};
static SI gname1087 = {
  "sse4.1 misc reg opnd",
  120            , /* id */
  latency1092    , /* operand latency */
  latency1093    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1088    , /* resource requirement */
  gname1090      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1089      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1097[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1099[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1098[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1101[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1102[] = {9,9};
static SI gname1096 = {
  "sse4.1 misc mem opnd",
  121            , /* id */
  latency1101    , /* operand latency */
  latency1102    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1097    , /* resource requirement */
  gname1099      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1098      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend reg opnd */
static const SI_RRW res_req1106[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1108[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1107[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1110[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1111[] = {5,5};
static SI gname1105 = {
  "sse4.1 blend reg opnd",
  122            , /* id */
  latency1110    , /* operand latency */
  latency1111    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1106    , /* resource requirement */
  gname1108      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1107      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend mem opnd */
static const SI_RRW res_req1115[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1117[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1116[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1119[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1120[] = {10,10};
static SI gname1114 = {
  "sse4.1 blend mem opnd",
  123            , /* id */
  latency1119    , /* operand latency */
  latency1120    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1115    , /* resource requirement */
  gname1117      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1116      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr reg opnd */
static const SI_RRW res_req1124[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1126[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1125[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1128[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1129[] = {2,2};
static SI gname1123 = {
  "sse4.1 insr extr reg opnd",
  124            , /* id */
  latency1128    , /* operand latency */
  latency1129    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1124    , /* resource requirement */
  gname1126      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1125      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr mem opnd */
static const SI_RRW res_req1133[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1135[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1134[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1137[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1138[] = {4,4};
static SI gname1132 = {
  "sse4.1 insr extr mem opnd",
  125            , /* id */
  latency1137    , /* operand latency */
  latency1138    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1133    , /* resource requirement */
  gname1135      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1134      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1142[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1144[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1143[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1146[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1147[] = {4,4};
static SI gname1141 = {
  "sse4.1 misc reg opnd",
  126            , /* id */
  latency1146    , /* operand latency */
  latency1147    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1142    , /* resource requirement */
  gname1144      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1143      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1151[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1153[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1152[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1155[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1156[] = {9,9};
static SI gname1150 = {
  "sse4.1 misc mem opnd",
  127            , /* id */
  latency1155    , /* operand latency */
  latency1156    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1151    , /* resource requirement */
  gname1153      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1152      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr reg opnd */
static const SI_RRW res_req1160[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1162[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1161[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1164[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1165[] = {5,5};
static SI gname1159 = {
  "sse4.1 finsr fextr reg opnd",
  128            , /* id */
  latency1164    , /* operand latency */
  latency1165    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1160    , /* resource requirement */
  gname1162      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1161      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 finsr fextr mem opnd */
static const SI_RRW res_req1169[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1171[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1170[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1173[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1174[] = {10,10};
static SI gname1168 = {
  "sse4.1 finsr fextr mem opnd",
  129            , /* id */
  latency1173    , /* operand latency */
  latency1174    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1169    , /* resource requirement */
  gname1171      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1170      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1178[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1180[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1179[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1182[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1183[] = {4,4};
static SI gname1177 = {
  "sse4.1 misc reg opnd",
  130            , /* id */
  latency1182    , /* operand latency */
  latency1183    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1178    , /* resource requirement */
  gname1180      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1179      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1187[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1189[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1188[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1191[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1192[] = {9,9};
static SI gname1186 = {
  "sse4.1 misc mem opnd",
  131            , /* id */
  latency1191    , /* operand latency */
  latency1192    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1187    , /* resource requirement */
  gname1189      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1188      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 load ntdqa */
static const SI_RRW res_req1196[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1198[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1197[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1200[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1201[] = {2,2};
static SI gname1195 = {
  "sse4.1 load ntdqa",
  132            , /* id */
  latency1200    , /* operand latency */
  latency1201    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1196    , /* resource requirement */
  gname1198      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1197      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 store ntdqa */
static const SI_RRW res_req1205[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1207[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1206[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1209[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1210[] = {2,2};
static SI gname1204 = {
  "sse4.1 store ntdqa",
  133            , /* id */
  latency1209    , /* operand latency */
  latency1210    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1205    , /* resource requirement */
  gname1207      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1206      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1214[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1216[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1215[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1218[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1219[] = {2,2};
static SI gname1213 = {
  "sse4.1 pmov reg opnd",
  134            , /* id */
  latency1218    , /* operand latency */
  latency1219    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1214    , /* resource requirement */
  gname1216      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1215      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1223[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1225[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1224[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1227[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1228[] = {7,7};
static SI gname1222 = {
  "sse4.1 pmov mem opnd",
  135            , /* id */
  latency1227    , /* operand latency */
  latency1228    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1223    , /* resource requirement */
  gname1225      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1224      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest reg opnd */
static const SI_RRW res_req1232[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1234[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1233[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1236[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1237[] = {5,5};
static SI gname1231 = {
  "sse4.1 ptest reg opnd",
  136            , /* id */
  latency1236    , /* operand latency */
  latency1237    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1232    , /* resource requirement */
  gname1234      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1233      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest mem opnd */
static const SI_RRW res_req1241[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1243[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1242[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1245[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1246[] = {10,10};
static SI gname1240 = {
  "sse4.1 ptest mem opnd",
  137            , /* id */
  latency1245    , /* operand latency */
  latency1246    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1241    , /* resource requirement */
  gname1243      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1242      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc reg opnd */
static const SI_RRW res_req1250[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1252[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1251[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1254[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1255[] = {5,5};
static SI gname1249 = {
  "sse4.2 crc reg opnd",
  138            , /* id */
  latency1254    , /* operand latency */
  latency1255    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1250    , /* resource requirement */
  gname1252      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1251      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc mem opnd */
static const SI_RRW res_req1259[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1261[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1260[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1263[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1264[] = {10,10};
static SI gname1258 = {
  "sse4.2 crc mem opnd",
  139            , /* id */
  latency1263    , /* operand latency */
  latency1264    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1259    , /* resource requirement */
  gname1261      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1260      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1268[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1270[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1269[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1272[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1273[] = {10,10};
static SI gname1267 = {
  "sse4.2 pcmp reg opnd",
  140            , /* id */
  latency1272    , /* operand latency */
  latency1273    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1268    , /* resource requirement */
  gname1270      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1269      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1277[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1279[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1278[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1281[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1282[] = {20,20};
static SI gname1276 = {
  "sse4.2 pcmp mem opnd",
  141            , /* id */
  latency1281    , /* operand latency */
  latency1282    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1277    , /* resource requirement */
  gname1279      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1278      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1286[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1288[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1287[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1290[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1291[] = {5,5};
static SI gname1285 = {
  "sse4.2 pcmp reg opnd",
  142            , /* id */
  latency1290    , /* operand latency */
  latency1291    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1286    , /* resource requirement */
  gname1288      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1287      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1295[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1297[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1296[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1299[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1300[] = {10,10};
static SI gname1294 = {
  "sse4.2 pcmp mem opnd",
  143            , /* id */
  latency1299    , /* operand latency */
  latency1300    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1295    , /* resource requirement */
  gname1297      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1296      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes reg opnd */
static const SI_RRW res_req1304[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1306[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1305[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1308[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1309[] = {10,10};
static SI gname1303 = {
  "aes reg opnd",
  144            , /* id */
  latency1308    , /* operand latency */
  latency1309    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1304    , /* resource requirement */
  gname1306      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1305      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes mem opnd */
static const SI_RRW res_req1313[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1315[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1314[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1317[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1318[] = {20,20};
static SI gname1312 = {
  "aes mem opnd",
  145            , /* id */
  latency1317    , /* operand latency */
  latency1318    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1313    , /* resource requirement */
  gname1315      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1314      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul reg opnd */
static const SI_RRW res_req1322[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1324[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1323[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1326[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1327[] = {6,6};
static SI gname1321 = {
  "pclmul reg opnd",
  146            , /* id */
  latency1326    , /* operand latency */
  latency1327    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1322    , /* resource requirement */
  gname1324      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1323      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul mem opnd */
static const SI_RRW res_req1331[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1333[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1332[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1335[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1336[] = {11,11};
static SI gname1330 = {
  "pclmul mem opnd",
  147            , /* id */
  latency1335    , /* operand latency */
  latency1336    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1331    , /* resource requirement */
  gname1333      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1332      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1340[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1342[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1341[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1344[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1345[] = {2,2};
static SI gname1339 = {
  "xop.desc.sort_by_print reg opnd",
  148            , /* id */
  latency1344    , /* operand latency */
  latency1345    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1340    , /* resource requirement */
  gname1342      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1341      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1349[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1351[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1350[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1353[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1354[] = {7,7};
static SI gname1348 = {
  "xop.desc.sort_by_print mem opnd",
  149            , /* id */
  latency1353    , /* operand latency */
  latency1354    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1349    , /* resource requirement */
  gname1351      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1350      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma reg opnd */
static const SI_RRW res_req1358[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1360[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1359[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1362[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1363[] = {4,4};
static SI gname1357 = {
  "xop fma reg opnd",
  150            , /* id */
  latency1362    , /* operand latency */
  latency1363    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1358    , /* resource requirement */
  gname1360      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1359      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop fma mem opnd */
static const SI_RRW res_req1367[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1369[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1368[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1371[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1372[] = {9,9};
static SI gname1366 = {
  "xop fma mem opnd",
  151            , /* id */
  latency1371    , /* operand latency */
  latency1372    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1367    , /* resource requirement */
  gname1369      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1368      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz reg opnd */
static const SI_RRW res_req1376[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1378[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1377[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1380[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1381[] = {10,10};
static SI gname1375 = {
  "xop frcz reg opnd",
  152            , /* id */
  latency1380    , /* operand latency */
  latency1381    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1376    , /* resource requirement */
  gname1378      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1377      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz mem opnd */
static const SI_RRW res_req1385[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1387[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1386[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1389[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1390[] = {15,15};
static SI gname1384 = {
  "xop frcz mem opnd",
  153            , /* id */
  latency1389    , /* operand latency */
  latency1390    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1385    , /* resource requirement */
  gname1387      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1386      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1394[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1396[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1395[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1398[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1399[] = {2,2};
static SI gname1393 = {
  "xop.desc.sort_by_print reg opnd",
  154            , /* id */
  latency1398    , /* operand latency */
  latency1399    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1394    , /* resource requirement */
  gname1396      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1395      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1403[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1405[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1404[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1407[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1408[] = {7,7};
static SI gname1402 = {
  "xop.desc.sort_by_print mem opnd",
  155            , /* id */
  latency1407    , /* operand latency */
  latency1408    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1403    , /* resource requirement */
  gname1405      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1404      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem reg opnd */
static const SI_RRW res_req1412[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1414[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1413[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1416[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1417[] = {3,3};
static SI gname1411 = {
  "xop rotate mem reg opnd",
  156            , /* id */
  latency1416    , /* operand latency */
  latency1417    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1412    , /* resource requirement */
  gname1414      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1413      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem mem opnd */
static const SI_RRW res_req1421[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1423[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1422[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1425[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1426[] = {8,8};
static SI gname1420 = {
  "xop rotate mem mem opnd",
  157            , /* id */
  latency1425    , /* operand latency */
  latency1426    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1421    , /* resource requirement */
  gname1423      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1422      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1430[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1432[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1431[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1434[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1435[] = {2,2};
static SI gname1429 = {
  "avx int arith reg opnd",
  158            , /* id */
  latency1434    , /* operand latency */
  latency1435    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1430    , /* resource requirement */
  gname1432      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1431      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1439[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1441[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1440[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1443[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1444[] = {4,4};
static SI gname1438 = {
  "avx int arith mem opnd",
  159            , /* id */
  latency1443    , /* operand latency */
  latency1444    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1439    , /* resource requirement */
  gname1441      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1440      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1448[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1450[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1449[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1452[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1453[] = {2,2};
static SI gname1447 = {
  "avx fp arith reg opnd",
  160            , /* id */
  latency1452    , /* operand latency */
  latency1453    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1448    , /* resource requirement */
  gname1450      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1449      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1457[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1459[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1458[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1461[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1462[] = {7,7};
static SI gname1456 = {
  "avx fp arith mem opnd",
  161            , /* id */
  latency1461    , /* operand latency */
  latency1462    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1457    , /* resource requirement */
  gname1459      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1458      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1466[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1468[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1467[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1470[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1471[] = {4,4};
static SI gname1465 = {
  "avx fp mul reg opnd",
  162            , /* id */
  latency1470    , /* operand latency */
  latency1471    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1466    , /* resource requirement */
  gname1468      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1467      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1475[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1477[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1476[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1479[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1480[] = {7,7};
static SI gname1474 = {
  "avx fp mul mem opnd",
  163            , /* id */
  latency1479    , /* operand latency */
  latency1480    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1475    , /* resource requirement */
  gname1477      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1476      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt reg opnd */
static const SI_RRW res_req1484[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1486[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1485[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1488[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1489[] = {5,5};
static SI gname1483 = {
  "avx fp rsqrt reg opnd",
  164            , /* id */
  latency1488    , /* operand latency */
  latency1489    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1484    , /* resource requirement */
  gname1486      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1485      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt mem opnd */
static const SI_RRW res_req1493[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1495[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1494[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1497[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1498[] = {10,10};
static SI gname1492 = {
  "avx fp rsqrt mem opnd",
  165            , /* id */
  latency1497    , /* operand latency */
  latency1498    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1493    , /* resource requirement */
  gname1495      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1494      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt reg opnd */
static const SI_RRW res_req1502[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1504[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1503[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1506[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1507[] = {19,19};
static SI gname1501 = {
  "avx fp sqrt reg opnd",
  166            , /* id */
  latency1506    , /* operand latency */
  latency1507    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1502    , /* resource requirement */
  gname1504      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1503      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt mem opnd */
static const SI_RRW res_req1511[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1513[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1512[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1515[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1516[] = {21,21};
static SI gname1510 = {
  "avx fp sqrt mem opnd",
  167            , /* id */
  latency1515    , /* operand latency */
  latency1516    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1511    , /* resource requirement */
  gname1513      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1512      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div reg opnd */
static const SI_RRW res_req1520[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1522[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1521[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1524[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1525[] = {33,33};
static SI gname1519 = {
  "avx div reg opnd",
  168            , /* id */
  latency1524    , /* operand latency */
  latency1525    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1520    , /* resource requirement */
  gname1522      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1521      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div mem opnd */
static const SI_RRW res_req1529[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1531[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1530[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1533[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1534[] = {35,35};
static SI gname1528 = {
  "avx div mem opnd",
  169            , /* id */
  latency1533    , /* operand latency */
  latency1534    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1529    , /* resource requirement */
  gname1531      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1530      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1538[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1540[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1539[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1542[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1543[] = {4,4};
static SI gname1537 = {
  "avx fp mul reg opnd",
  170            , /* id */
  latency1542    , /* operand latency */
  latency1543    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1538    , /* resource requirement */
  gname1540      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1539      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1547[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1549[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1548[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1551[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1552[] = {7,7};
static SI gname1546 = {
  "avx fp mul mem opnd",
  171            , /* id */
  latency1551    , /* operand latency */
  latency1552    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1547    , /* resource requirement */
  gname1549      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1548      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend reg opnd */
static const SI_RRW res_req1556[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1558[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1557[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1560[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1561[] = {5,5};
static SI gname1555 = {
  "avx blend reg opnd",
  172            , /* id */
  latency1560    , /* operand latency */
  latency1561    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1556    , /* resource requirement */
  gname1558      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1557      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend mem opnd */
static const SI_RRW res_req1565[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1567[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1566[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1569[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1570[] = {10,10};
static SI gname1564 = {
  "avx blend mem opnd",
  173            , /* id */
  latency1569    , /* operand latency */
  latency1570    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1565    , /* resource requirement */
  gname1567      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1566      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul reg opnd */
static const SI_RRW res_req1574[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1576[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1575[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1578[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1579[] = {6,6};
static SI gname1573 = {
  "avx pclmul reg opnd",
  174            , /* id */
  latency1578    , /* operand latency */
  latency1579    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1574    , /* resource requirement */
  gname1576      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1575      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul mem opnd */
static const SI_RRW res_req1583[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1585[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1584[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1587[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1588[] = {11,11};
static SI gname1582 = {
  "avx pclmul mem opnd",
  175            , /* id */
  latency1587    , /* operand latency */
  latency1588    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1583    , /* resource requirement */
  gname1585      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1584      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes reg opnd */
static const SI_RRW res_req1592[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1594[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1593[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1596[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1597[] = {10,10};
static SI gname1591 = {
  "avx aes reg opnd",
  176            , /* id */
  latency1596    , /* operand latency */
  latency1597    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1592    , /* resource requirement */
  gname1594      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1593      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes mem opnd */
static const SI_RRW res_req1601[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1603[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1602[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1605[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1606[] = {20,20};
static SI gname1600 = {
  "avx aes mem opnd",
  177            , /* id */
  latency1605    , /* operand latency */
  latency1606    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1601    , /* resource requirement */
  gname1603      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1602      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align load */
static const SI_RRW res_req1610[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1612[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1611[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1614[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1615[] = {2,2};
static SI gname1609 = {
  "avx fp align load",
  178            , /* id */
  latency1614    , /* operand latency */
  latency1615    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1610    , /* resource requirement */
  gname1612      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1611      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1619[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1621[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1620[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1623[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1624[] = {2,2};
static SI gname1618 = {
  "avx int arith reg opnd",
  179            , /* id */
  latency1623    , /* operand latency */
  latency1624    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1619    , /* resource requirement */
  gname1621      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1620      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1628[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1630[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1629[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1632[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1633[] = {4,4};
static SI gname1627 = {
  "avx int arith mem opnd",
  180            , /* id */
  latency1632    , /* operand latency */
  latency1633    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1628    , /* resource requirement */
  gname1630      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1629      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1637[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1639[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1638[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1641[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1642[] = {2,2};
static SI gname1636 = {
  "avx fp arith reg opnd",
  181            , /* id */
  latency1641    , /* operand latency */
  latency1642    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1637    , /* resource requirement */
  gname1639      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1638      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1646[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1648[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1647[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1650[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1651[] = {7,7};
static SI gname1645 = {
  "avx fp arith mem opnd",
  182            , /* id */
  latency1650    , /* operand latency */
  latency1651    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1646    , /* resource requirement */
  gname1648      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1647      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align store */
static const SI_RRW res_req1655[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1657[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1656[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1659[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1660[] = {7,7};
static SI gname1654 = {
  "avx fp align store",
  183            , /* id */
  latency1659    , /* operand latency */
  latency1660    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1655    , /* resource requirement */
  gname1657      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1656      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx broadcast reg opnd */
static const SI_RRW res_req1664[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1666[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1665[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1668[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1669[] = {4,4};
static SI gname1663 = {
  "avx broadcast reg opnd",
  184            , /* id */
  latency1668    , /* operand latency */
  latency1669    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1664    , /* resource requirement */
  gname1666      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1665      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1673[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1675[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1674[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1677[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1678[] = {4,4};
static SI gname1672 = {
  "avx fp mul reg opnd",
  185            , /* id */
  latency1677    , /* operand latency */
  latency1678    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1673    , /* resource requirement */
  gname1675      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1674      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1682[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1684[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1683[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1686[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1687[] = {7,7};
static SI gname1681 = {
  "avx fp mul mem opnd",
  186            , /* id */
  latency1686    , /* operand latency */
  latency1687    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1682    , /* resource requirement */
  gname1684      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1683      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest reg opnd */
static const SI_RRW res_req1691[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1693[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1692[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1695[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1696[] = {5,5};
static SI gname1690 = {
  "avx ptest reg opnd",
  187            , /* id */
  latency1695    , /* operand latency */
  latency1696    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1691    , /* resource requirement */
  gname1693      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1692      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest mem opnd */
static const SI_RRW res_req1700[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1702[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1701[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1704[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1705[] = {10,10};
static SI gname1699 = {
  "avx ptest mem opnd",
  188            , /* id */
  latency1704    , /* operand latency */
  latency1705    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1700    , /* resource requirement */
  gname1702      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1701      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt reg opnd */
static const SI_RRW res_req1709[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1711[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1710[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1713[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1714[] = {5,5};
static SI gname1708 = {
  "avx cvt reg opnd",
  189            , /* id */
  latency1713    , /* operand latency */
  latency1714    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1709    , /* resource requirement */
  gname1711      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1710      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx cvt mem opnd */
static const SI_RRW res_req1718[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1720[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1719[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1722[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1723[] = {7,7};
static SI gname1717 = {
  "avx cvt mem opnd",
  190            , /* id */
  latency1722    , /* operand latency */
  latency1723    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1718    , /* resource requirement */
  gname1720      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1719      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx load store mxcsr */
static const SI_RRW res_req1727[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1729[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1728[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1731[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1732[] = {14,14};
static SI gname1726 = {
  "avx load store mxcsr",
  191            , /* id */
  latency1731    , /* operand latency */
  latency1732    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1727    , /* resource requirement */
  gname1729      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1728      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx move mask */
static const SI_RRW res_req1736[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1738[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1737[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1740[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1741[] = {5,5};
static SI gname1735 = {
  "avx move mask",
  192            , /* id */
  latency1740    , /* operand latency */
  latency1741    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1736    , /* resource requirement */
  gname1738      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1737      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign store */
static const SI_RRW res_req1745[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1747[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1746[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1749[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1750[] = {8,8};
static SI gname1744 = {
  "avx unalign store",
  193            , /* id */
  latency1749    , /* operand latency */
  latency1750    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1745    , /* resource requirement */
  gname1747      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1746      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign load */
static const SI_RRW res_req1754[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1756[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1755[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1758[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1759[] = {7,7};
static SI gname1753 = {
  "avx unalign load",
  194            , /* id */
  latency1758    , /* operand latency */
  latency1759    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1754    , /* resource requirement */
  gname1756      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1755      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma reg opnd */
static const SI_RRW res_req1763[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1765[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1764[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1767[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1768[] = {6,6};
static SI gname1762 = {
  "intel avx fma reg opnd",
  195            , /* id */
  latency1767    , /* operand latency */
  latency1768    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1763    , /* resource requirement */
  gname1765      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1764      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma mem opnd */
static const SI_RRW res_req1772[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1774[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1773[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1776[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1777[] = {11,11};
static SI gname1771 = {
  "intel avx fma mem opnd",
  196            , /* id */
  latency1776    , /* operand latency */
  latency1777    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1772    , /* resource requirement */
  gname1774      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname1773      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dummy */
static const SI_RRW res_req1781[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1783[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1782[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1785[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1786[] = {1,1};
static SI gname1780 = {
  "dummy",
  197            , /* id */
  latency1785    , /* operand latency */
  latency1786    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1781    , /* resource requirement */
  gname1783      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1782      , /* resource count vec */
  0                /* write-write interlock */
};
SI * const SI_ID_si[] = {
  &gname0,
  &gname16,
  &gname25,
  &gname34,
  &gname43,
  &gname52,
  &gname61,
  &gname70,
  &gname79,
  &gname88,
  &gname97,
  &gname106,
  &gname115,
  &gname124,
  &gname133,
  &gname142,
  &gname151,
  &gname160,
  &gname169,
  &gname178,
  &gname187,
  &gname196,
  &gname205,
  &gname214,
  &gname223,
  &gname232,
  &gname241,
  &gname250,
  &gname259,
  &gname268,
  &gname277,
  &gname286,
  &gname295,
  &gname304,
  &gname313,
  &gname322,
  &gname331,
  &gname340,
  &gname349,
  &gname358,
  &gname367,
  &gname376,
  &gname385,
  &gname394,
  &gname403,
  &gname412,
  &gname421,
  &gname430,
  &gname439,
  &gname448,
  &gname457,
  &gname466,
  &gname475,
  &gname484,
  &gname493,
  &gname502,
  &gname511,
  &gname520,
  &gname529,
  &gname538,
  &gname547,
  &gname556,
  &gname565,
  &gname574,
  &gname583,
  &gname592,
  &gname601,
  &gname610,
  &gname619,
  &gname628,
  &gname637,
  &gname646,
  &gname655,
  &gname664,
  &gname673,
  &gname682,
  &gname691,
  &gname700,
  &gname709,
  &gname718,
  &gname727,
  &gname736,
  &gname745,
  &gname754,
  &gname763,
  &gname772,
  &gname781,
  &gname790,
  &gname799,
  &gname808,
  &gname817,
  &gname826,
  &gname835,
  &gname844,
  &gname853,
  &gname862,
  &gname871,
  &gname880,
  &gname889,
  &gname898,
  &gname907,
  &gname916,
  &gname925,
  &gname934,
  &gname943,
  &gname952,
  &gname961,
  &gname970,
  &gname979,
  &gname988,
  &gname997,
  &gname1006,
  &gname1015,
  &gname1024,
  &gname1033,
  &gname1042,
  &gname1051,
  &gname1060,
  &gname1069,
  &gname1078,
  &gname1087,
  &gname1096,
  &gname1105,
  &gname1114,
  &gname1123,
  &gname1132,
  &gname1141,
  &gname1150,
  &gname1159,
  &gname1168,
  &gname1177,
  &gname1186,
  &gname1195,
  &gname1204,
  &gname1213,
  &gname1222,
  &gname1231,
  &gname1240,
  &gname1249,
  &gname1258,
  &gname1267,
  &gname1276,
  &gname1285,
  &gname1294,
  &gname1303,
  &gname1312,
  &gname1321,
  &gname1330,
  &gname1339,
  &gname1348,
  &gname1357,
  &gname1366,
  &gname1375,
  &gname1384,
  &gname1393,
  &gname1402,
  &gname1411,
  &gname1420,
  &gname1429,
  &gname1438,
  &gname1447,
  &gname1456,
  &gname1465,
  &gname1474,
  &gname1483,
  &gname1492,
  &gname1501,
  &gname1510,
  &gname1519,
  &gname1528,
  &gname1537,
  &gname1546,
  &gname1555,
  &gname1564,
  &gname1573,
  &gname1582,
  &gname1591,
  &gname1600,
  &gname1609,
  &gname1618,
  &gname1627,
  &gname1636,
  &gname1645,
  &gname1654,
  &gname1663,
  &gname1672,
  &gname1681,
  &gname1690,
  &gname1699,
  &gname1708,
  &gname1717,
  &gname1726,
  &gname1735,
  &gname1744,
  &gname1753,
  &gname1762,
  &gname1771,
  &gname1780
};
const int SI_ID_count = 198;

SI * const SI_top_si[3311] = {
  &gname16    /* add32 */,
  &gname16    /* adc32 */,
  &gname16    /* add64 */,
  &gname25    /* addx32 */,
  &gname25    /* addxx32 */,
  &gname25    /* addxxx32 */,
  &gname25    /* addx64 */,
  &gname25    /* addxx64 */,
  &gname25    /* addxxx64 */,
  &gname16    /* addi32 */,
  &gname16    /* adci32 */,
  &gname16    /* addi64 */,
  &gname772   /* add128v8 */,
  &gname799   /* addx128v8 */,
  &gname799   /* addxx128v8 */,
  &gname799   /* addxxx128v8 */,
  &gname772   /* add128v16 */,
  &gname799   /* addx128v16 */,
  &gname799   /* addxx128v16 */,
  &gname799   /* addxxx128v16 */,
  &gname772   /* add128v32 */,
  &gname799   /* addx128v32 */,
  &gname799   /* addxx128v32 */,
  &gname799   /* addxxx128v32 */,
  &gname772   /* add128v64 */,
  &gname799   /* addx128v64 */,
  &gname799   /* addxx128v64 */,
  &gname799   /* addxxx128v64 */,
  &gname772   /* add64v8 */,
  &gname772   /* add64v16 */,
  &gname772   /* add64v32 */,
  &gname772   /* paddsb */,
  &gname772   /* paddsw */,
  &gname772   /* paddq */,
  &gname772   /* psubsb */,
  &gname772   /* psubsw */,
  &gname772   /* psubq */,
  &gname772   /* paddusb */,
  &gname772   /* paddusw */,
  &gname772   /* psubusb */,
  &gname772   /* psubusw */,
  &gname790   /* pmullw */,
  &gname790   /* pmulhw */,
  &gname790   /* pmulhuw */,
  &gname790   /* pmuludq */,
  &gname790   /* pmaddwd */,
  &gname772   /* paddsb128 */,
  &gname772   /* paddsw128 */,
  &gname772   /* paddq128 */,
  &gname772   /* psubsb128 */,
  &gname772   /* psubsw128 */,
  &gname772   /* psubq128 */,
  &gname772   /* paddusb128 */,
  &gname772   /* paddusw128 */,
  &gname772   /* psubusb128 */,
  &gname772   /* psubusw128 */,
  &gname790   /* pmullw128 */,
  &gname790   /* pmulhw128 */,
  &gname790   /* pmulhuw128 */,
  &gname790   /* pmuludq128 */,
  &gname790   /* pmaddwd128 */,
  &gname16    /* and8 */,
  &gname16    /* and16 */,
  &gname16    /* and32 */,
  &gname25    /* andx32 */,
  &gname25    /* andxx32 */,
  &gname25    /* andxxx32 */,
  &gname16    /* and64 */,
  &gname25    /* andx64 */,
  &gname25    /* andxx64 */,
  &gname25    /* andxxx64 */,
  &gname25    /* andx8 */,
  &gname25    /* andx16 */,
  &gname25    /* andxx8 */,
  &gname25    /* andxxx8 */,
  &gname25    /* andxx16 */,
  &gname25    /* andxxx16 */,
  &gname772   /* and128v8 */,
  &gname799   /* andx128v8 */,
  &gname799   /* andxx128v8 */,
  &gname799   /* andxxx128v8 */,
  &gname772   /* and128v16 */,
  &gname799   /* andx128v16 */,
  &gname799   /* andxx128v16 */,
  &gname799   /* andxxx128v16 */,
  &gname772   /* and128v32 */,
  &gname799   /* andx128v32 */,
  &gname799   /* andxx128v32 */,
  &gname799   /* andxxx128v32 */,
  &gname772   /* and128v64 */,
  &gname799   /* andx128v64 */,
  &gname799   /* andxx128v64 */,
  &gname799   /* andxxx128v64 */,
  &gname16    /* andi32 */,
  &gname16    /* andi64 */,
  &gname70    /* call */,
  &gname88    /* icall */,
  &gname16    /* icallx */,
  &gname16    /* icallxx */,
  &gname16    /* icallxxx */,
  &gname16    /* cmp8 */,
  &gname25    /* cmpx8 */,
  &gname25    /* cmpxx8 */,
  &gname25    /* cmpxxx8 */,
  &gname16    /* cmp16 */,
  &gname25    /* cmpx16 */,
  &gname25    /* cmpxx16 */,
  &gname25    /* cmpxxx16 */,
  &gname16    /* cmp32 */,
  &gname25    /* cmpx32 */,
  &gname25    /* cmpxx32 */,
  &gname25    /* cmpxxx32 */,
  &gname16    /* cmp64 */,
  &gname25    /* cmpx64 */,
  &gname25    /* cmpxx64 */,
  &gname25    /* cmpxxx64 */,
  &gname16    /* cmpi8 */,
  &gname25    /* cmpxr8 */,
  &gname25    /* cmpxi8 */,
  &gname25    /* cmpxxr8 */,
  &gname25    /* cmpxxi8 */,
  &gname25    /* cmpxxxr8 */,
  &gname25    /* cmpxxxi8 */,
  &gname16    /* cmpi16 */,
  &gname25    /* cmpxr16 */,
  &gname25    /* cmpxi16 */,
  &gname25    /* cmpxxr16 */,
  &gname25    /* cmpxxi16 */,
  &gname25    /* cmpxxxr16 */,
  &gname25    /* cmpxxxi16 */,
  &gname16    /* cmpi32 */,
  &gname25    /* cmpxr32 */,
  &gname25    /* cmpxi32 */,
  &gname25    /* cmpxxr32 */,
  &gname25    /* cmpxxi32 */,
  &gname25    /* cmpxxxr32 */,
  &gname25    /* cmpxxxi32 */,
  &gname16    /* cmpi64 */,
  &gname25    /* cmpxr64 */,
  &gname25    /* cmpxi64 */,
  &gname25    /* cmpxxr64 */,
  &gname25    /* cmpxxi64 */,
  &gname25    /* cmpxxxr64 */,
  &gname25    /* cmpxxxi64 */,
  &gname16    /* cmovb */,
  &gname16    /* cmovae */,
  &gname16    /* cmovp */,
  &gname16    /* cmovnp */,
  &gname16    /* cmove */,
  &gname16    /* cmovne */,
  &gname16    /* cmovbe */,
  &gname16    /* cmova */,
  &gname16    /* cmovl */,
  &gname16    /* cmovge */,
  &gname16    /* cmovle */,
  &gname16    /* cmovg */,
  &gname16    /* cmovs */,
  &gname16    /* cmovns */,
  &gname133   /* div32 */,
  &gname142   /* div64 */,
  &gname124   /* enter */,
  &gname151   /* idiv32 */,
  &gname160   /* idiv64 */,
  &gname97    /* imul32 */,
  &gname97    /* imulx32 */,
  &gname106   /* imul64 */,
  &gname97    /* imuli32 */,
  &gname106   /* imuli64 */,
  &gname106   /* imulx64 */,
  &gname781   /* mul128v16 */,
  &gname16    /* inc8 */,
  &gname16    /* dec8 */,
  &gname16    /* inc16 */,
  &gname16    /* dec16 */,
  &gname16    /* inc32 */,
  &gname16    /* dec32 */,
  &gname16    /* inc64 */,
  &gname16    /* dec64 */,
  &gname196   /* jb */,
  &gname196   /* jae */,
  &gname196   /* jp */,
  &gname196   /* jnp */,
  &gname196   /* je */,
  &gname196   /* jne */,
  &gname196   /* jbe */,
  &gname196   /* ja */,
  &gname196   /* jl */,
  &gname196   /* jge */,
  &gname196   /* jle */,
  &gname196   /* jg */,
  &gname196   /* jcxz */,
  &gname196   /* jecxz */,
  &gname196   /* jrcxz */,
  &gname196   /* js */,
  &gname196   /* jns */,
  &gname196   /* jmp */,
  &gname88    /* ijmp */,
  &gname16    /* ijmpx */,
  &gname16    /* ijmpxx */,
  &gname16    /* ijmpxxx */,
  &gname178   /* ld64 */,
  &gname178   /* ldx64 */,
  &gname178   /* ldxx64 */,
  &gname178   /* ld64_2m */,
  &gname277   /* ld64_2sse */,
  &gname43    /* lea32 */,
  &gname43    /* lea64 */,
  &gname43    /* leax32 */,
  &gname43    /* leax64 */,
  &gname43    /* leaxx32 */,
  &gname43    /* leaxx64 */,
  &gname115   /* leave */,
  &gname16    /* ldc32 */,
  &gname16    /* ldc64 */,
  &gname97    /* mul32 */,
  &gname106   /* mulx64 */,
  &gname16    /* mov32 */,
  &gname16    /* mov64 */,
  &gname16    /* mov64_m */,
  &gname178   /* ld32_64_off */,
  &gname178   /* ld64_off */,
  &gname187   /* store64_off */,
  &gname169   /* ld8_32_n32 */,
  &gname169   /* ldu8_32_n32 */,
  &gname169   /* ld16_32_n32 */,
  &gname169   /* ldu16_32_n32 */,
  &gname178   /* ld32_n32 */,
  &gname232   /* ldss_n32 */,
  &gname232   /* ldsd_n32 */,
  &gname250   /* ldaps_n32 */,
  &gname250   /* ldapd_n32 */,
  &gname241   /* ldups_n32 */,
  &gname241   /* ldupd_n32 */,
  &gname232   /* lddqa_n32 */,
  &gname241   /* lddqu_n32 */,
  &gname259   /* ldlps_n32 */,
  &gname277   /* ldlpd_n32 */,
  &gname259   /* ldhps_n32 */,
  &gname277   /* ldhpd_n32 */,
  &gname178   /* ld64_2m_n32 */,
  &gname277   /* ld64_2sse_n32 */,
  &gname187   /* store8_n32 */,
  &gname187   /* store16_n32 */,
  &gname187   /* store32_n32 */,
  &gname295   /* stss_n32 */,
  &gname295   /* stsd_n32 */,
  &gname313   /* staps_n32 */,
  &gname313   /* stapd_n32 */,
  &gname295   /* stdqa_n32 */,
  &gname304   /* stdqu_n32 */,
  &gname268   /* stlps_n32 */,
  &gname268   /* sthps_n32 */,
  &gname286   /* stlpd_n32 */,
  &gname286   /* sthpd_n32 */,
  &gname187   /* store64_fm_n32 */,
  &gname286   /* store64_fsse_n32 */,
  &gname178   /* ld32_gs_seg_off */,
  &gname178   /* ld64_fs_seg_off */,
  &gname16    /* movsbl */,
  &gname169   /* ld8_32 */,
  &gname169   /* ldx8_32 */,
  &gname169   /* ldxx8_32 */,
  &gname16    /* movzbl */,
  &gname169   /* ldu8_32 */,
  &gname169   /* ldxu8_32 */,
  &gname169   /* ldxxu8_32 */,
  &gname16    /* movswl */,
  &gname169   /* ld16_32 */,
  &gname169   /* ldx16_32 */,
  &gname169   /* ldxx16_32 */,
  &gname16    /* movzwl */,
  &gname169   /* ldu16_32 */,
  &gname169   /* ldxu16_32 */,
  &gname169   /* ldxxu16_32 */,
  &gname16    /* movsbq */,
  &gname169   /* ld8_64 */,
  &gname169   /* ldx8_64 */,
  &gname169   /* ldxx8_64 */,
  &gname169   /* ld8_64_off */,
  &gname16    /* movzbq */,
  &gname169   /* ldu8_64 */,
  &gname169   /* ldxu8_64 */,
  &gname169   /* ldxxu8_64 */,
  &gname169   /* ldu8_64_off */,
  &gname16    /* movswq */,
  &gname169   /* ld16_64 */,
  &gname169   /* ldx16_64 */,
  &gname169   /* ldxx16_64 */,
  &gname169   /* ld16_64_off */,
  &gname16    /* movzwq */,
  &gname169   /* ldu16_64 */,
  &gname169   /* ldxu16_64 */,
  &gname169   /* ldxxu16_64 */,
  &gname169   /* ldu16_64_off */,
  &gname16    /* movslq */,
  &gname178   /* ld32_64 */,
  &gname178   /* ldx32_64 */,
  &gname178   /* ldxx32_64 */,
  &gname178   /* ld32 */,
  &gname178   /* ldx32 */,
  &gname178   /* ldxx32 */,
  &gname16    /* movzlq */,
  &gname16    /* neg8 */,
  &gname16    /* neg16 */,
  &gname16    /* neg32 */,
  &gname16    /* neg64 */,
  &gname16    /* not8 */,
  &gname16    /* not16 */,
  &gname16    /* not32 */,
  &gname16    /* not64 */,
  &gname16    /* or8 */,
  &gname16    /* or16 */,
  &gname16    /* or32 */,
  &gname25    /* orx32 */,
  &gname25    /* orxx32 */,
  &gname25    /* orxxx32 */,
  &gname16    /* or64 */,
  &gname25    /* orx64 */,
  &gname25    /* orxx64 */,
  &gname25    /* orxxx64 */,
  &gname25    /* orx8 */,
  &gname25    /* orx16 */,
  &gname25    /* orxx8 */,
  &gname25    /* orxxx8 */,
  &gname25    /* orxx16 */,
  &gname25    /* orxxx16 */,
  &gname772   /* or128v8 */,
  &gname799   /* orx128v8 */,
  &gname799   /* orxx128v8 */,
  &gname799   /* orxxx128v8 */,
  &gname772   /* or128v16 */,
  &gname799   /* orx128v16 */,
  &gname799   /* orxx128v16 */,
  &gname799   /* orxxx128v16 */,
  &gname772   /* or128v32 */,
  &gname799   /* orx128v32 */,
  &gname799   /* orxx128v32 */,
  &gname799   /* orxxx128v32 */,
  &gname772   /* or128v64 */,
  &gname799   /* orx128v64 */,
  &gname799   /* orxx128v64 */,
  &gname799   /* orxxx128v64 */,
  &gname16    /* ori32 */,
  &gname16    /* ori64 */,
  &gname52    /* popl */,
  &gname52    /* popq */,
  &gname52    /* pushl */,
  &gname52    /* pushq */,
  &gname61    /* ret */,
  &gname61    /* reti */,
  &gname16    /* ror8 */,
  &gname16    /* ror16 */,
  &gname16    /* ror32 */,
  &gname16    /* ror64 */,
  &gname16    /* rori8 */,
  &gname16    /* rori16 */,
  &gname16    /* rori32 */,
  &gname16    /* rori64 */,
  &gname16    /* rol8 */,
  &gname16    /* rol16 */,
  &gname16    /* rol32 */,
  &gname16    /* rol64 */,
  &gname16    /* roli8 */,
  &gname16    /* roli16 */,
  &gname16    /* roli32 */,
  &gname16    /* roli64 */,
  &gname889   /* prefetch */,
  &gname889   /* prefetchw */,
  &gname889   /* prefetcht0 */,
  &gname889   /* prefetcht1 */,
  &gname889   /* prefetchnta */,
  &gname889   /* prefetchx */,
  &gname889   /* prefetchxx */,
  &gname889   /* prefetchwx */,
  &gname889   /* prefetchwxx */,
  &gname889   /* prefetcht0x */,
  &gname889   /* prefetcht0xx */,
  &gname889   /* prefetcht1x */,
  &gname889   /* prefetcht1xx */,
  &gname889   /* prefetchntax */,
  &gname889   /* prefetchntaxx */,
  &gname16    /* setb */,
  &gname16    /* setae */,
  &gname16    /* setp */,
  &gname16    /* setnp */,
  &gname16    /* sete */,
  &gname16    /* setne */,
  &gname16    /* setbe */,
  &gname16    /* seta */,
  &gname16    /* setl */,
  &gname16    /* setge */,
  &gname16    /* setle */,
  &gname16    /* setg */,
  &gname16    /* setc */,
  &gname16    /* seto */,
  &gname16    /* sets */,
  &gname16    /* setz */,
  &gname187   /* store8 */,
  &gname187   /* storex8 */,
  &gname187   /* storexx8 */,
  &gname187   /* store16 */,
  &gname187   /* storex16 */,
  &gname187   /* storexx16 */,
  &gname187   /* store32 */,
  &gname187   /* storex32 */,
  &gname187   /* storexx32 */,
  &gname187   /* store64 */,
  &gname187   /* storex64 */,
  &gname187   /* storexx64 */,
  &gname187   /* store64_fm */,
  &gname286   /* store64_fsse */,
  &gname187   /* storenti32 */,
  &gname187   /* storentix32 */,
  &gname187   /* storentixx32 */,
  &gname187   /* storenti64 */,
  &gname187   /* storentix64 */,
  &gname187   /* storentixx64 */,
  &gname313   /* storenti128 */,
  &gname16    /* sar32 */,
  &gname16    /* sar64 */,
  &gname16    /* sari32 */,
  &gname16    /* sari64 */,
  &gname16    /* shl32 */,
  &gname16    /* shld32 */,
  &gname16    /* shldi32 */,
  &gname16    /* shrd32 */,
  &gname16    /* shrdi32 */,
  &gname16    /* shl64 */,
  &gname16    /* shli32 */,
  &gname16    /* shli64 */,
  &gname16    /* shr32 */,
  &gname16    /* shr64 */,
  &gname16    /* shri32 */,
  &gname16    /* shri64 */,
  &gname16    /* sub32 */,
  &gname16    /* sbb32 */,
  &gname16    /* sub64 */,
  &gname25    /* subx32 */,
  &gname25    /* subx64 */,
  &gname25    /* subxx32 */,
  &gname25    /* subxxx32 */,
  &gname25    /* subxx64 */,
  &gname25    /* subxxx64 */,
  &gname16    /* subi32 */,
  &gname16    /* sbbi32 */,
  &gname16    /* subi64 */,
  &gname772   /* sub128v8 */,
  &gname799   /* subx128v8 */,
  &gname799   /* subxx128v8 */,
  &gname799   /* subxxx128v8 */,
  &gname772   /* sub128v16 */,
  &gname799   /* subx128v16 */,
  &gname799   /* subxx128v16 */,
  &gname799   /* subxxx128v16 */,
  &gname772   /* sub128v32 */,
  &gname799   /* subx128v32 */,
  &gname799   /* subxx128v32 */,
  &gname799   /* subxxx128v32 */,
  &gname772   /* sub128v64 */,
  &gname799   /* subx128v64 */,
  &gname799   /* subxx128v64 */,
  &gname799   /* subxxx128v64 */,
  &gname772   /* sub64v8 */,
  &gname772   /* sub64v16 */,
  &gname772   /* sub64v32 */,
  &gname16    /* test32 */,
  &gname25    /* testx32 */,
  &gname25    /* testxx32 */,
  &gname25    /* testxxx32 */,
  &gname16    /* test64 */,
  &gname25    /* testx64 */,
  &gname25    /* testxx64 */,
  &gname25    /* testxxx64 */,
  &gname16    /* testi32 */,
  &gname16    /* testi64 */,
  &gname16    /* xor8 */,
  &gname16    /* xor16 */,
  &gname16    /* xor32 */,
  &gname25    /* xorx32 */,
  &gname25    /* xorxx32 */,
  &gname25    /* xorxxx32 */,
  &gname16    /* xor64 */,
  &gname25    /* xorx64 */,
  &gname25    /* xorxx64 */,
  &gname25    /* xorxxx64 */,
  &gname25    /* xorx8 */,
  &gname25    /* xorx16 */,
  &gname25    /* xorxx8 */,
  &gname25    /* xorxxx8 */,
  &gname25    /* xorxx16 */,
  &gname25    /* xorxxx16 */,
  &gname772   /* xor128v8 */,
  &gname799   /* xorx128v8 */,
  &gname799   /* xorxx128v8 */,
  &gname799   /* xorxxx128v8 */,
  &gname772   /* xor128v16 */,
  &gname799   /* xorx128v16 */,
  &gname799   /* xorxx128v16 */,
  &gname799   /* xorxxx128v16 */,
  &gname772   /* xor128v32 */,
  &gname799   /* xorx128v32 */,
  &gname799   /* xorxx128v32 */,
  &gname799   /* xorxxx128v32 */,
  &gname772   /* xor128v64 */,
  &gname799   /* xorx128v64 */,
  &gname799   /* xorxx128v64 */,
  &gname799   /* xorxxx128v64 */,
  &gname16    /* xori32 */,
  &gname16    /* xori64 */,
  &gname493   /* fxor128v32 */,
  &gname502   /* fxorx128v32 */,
  &gname502   /* fxorxx128v32 */,
  &gname502   /* fxorxxx128v32 */,
  &gname493   /* fxor128v64 */,
  &gname502   /* fxorx128v64 */,
  &gname502   /* fxorxx128v64 */,
  &gname502   /* fxorxxx128v64 */,
  &gname493   /* xorps */,
  &gname493   /* xorpd */,
  &gname466   /* addsd */,
  &gname466   /* addss */,
  &gname808   /* addxsd */,
  &gname808   /* addxss */,
  &gname808   /* addxxsd */,
  &gname25    /* addxxxsd */,
  &gname808   /* addxxss */,
  &gname25    /* addxxxss */,
  &gname475   /* faddsub128v32 */,
  &gname484   /* faddsubx128v32 */,
  &gname484   /* faddsubxx128v32 */,
  &gname484   /* faddsubxxx128v32 */,
  &gname475   /* faddsub128v64 */,
  &gname484   /* faddsubx128v64 */,
  &gname484   /* faddsubxx128v64 */,
  &gname484   /* faddsubxxx128v64 */,
  &gname475   /* fadd128v32 */,
  &gname484   /* faddx128v32 */,
  &gname484   /* faddxx128v32 */,
  &gname484   /* faddxxx128v32 */,
  &gname475   /* fadd128v64 */,
  &gname484   /* faddx128v64 */,
  &gname484   /* faddxx128v64 */,
  &gname484   /* faddxxx128v64 */,
  &gname475   /* fhadd128v32 */,
  &gname484   /* fhaddx128v32 */,
  &gname484   /* fhaddxx128v32 */,
  &gname484   /* fhaddxxx128v32 */,
  &gname475   /* fhadd128v64 */,
  &gname484   /* fhaddx128v64 */,
  &gname484   /* fhaddxx128v64 */,
  &gname484   /* fhaddxxx128v64 */,
  &gname493   /* fand128v32 */,
  &gname502   /* fandx128v32 */,
  &gname502   /* fandxx128v32 */,
  &gname502   /* fandxxx128v32 */,
  &gname493   /* fand128v64 */,
  &gname502   /* fandx128v64 */,
  &gname502   /* fandxx128v64 */,
  &gname502   /* fandxxx128v64 */,
  &gname493   /* andps */,
  &gname493   /* andpd */,
  &gname826   /* andnps */,
  &gname826   /* andnpd */,
  &gname493   /* for128v32 */,
  &gname502   /* forx128v32 */,
  &gname502   /* forxx128v32 */,
  &gname502   /* forxxx128v32 */,
  &gname493   /* for128v64 */,
  &gname502   /* forx128v64 */,
  &gname502   /* forxx128v64 */,
  &gname502   /* forxxx128v64 */,
  &gname493   /* orps */,
  &gname493   /* orpd */,
  &gname466   /* comisd */,
  &gname808   /* comixsd */,
  &gname808   /* comixxsd */,
  &gname808   /* comixxxsd */,
  &gname466   /* comiss */,
  &gname808   /* comixss */,
  &gname808   /* comixxss */,
  &gname808   /* comixxxss */,
  &gname223   /* cmpss */,
  &gname223   /* cmpsd */,
  &gname736   /* cmpps */,
  &gname736   /* cmppd */,
  &gname754   /* cmpeq128v8 */,
  &gname754   /* cmpeq128v16 */,
  &gname754   /* cmpeq128v32 */,
  &gname763   /* cmpeqx128v8 */,
  &gname763   /* cmpeqx128v16 */,
  &gname763   /* cmpeqx128v32 */,
  &gname763   /* cmpeqxx128v8 */,
  &gname763   /* cmpeqxx128v16 */,
  &gname763   /* cmpeqxx128v32 */,
  &gname763   /* cmpeqxxx128v8 */,
  &gname763   /* cmpeqxxx128v16 */,
  &gname763   /* cmpeqxxx128v32 */,
  &gname754   /* cmpgt128v8 */,
  &gname754   /* cmpgt128v16 */,
  &gname754   /* cmpgt128v32 */,
  &gname763   /* cmpgtx128v8 */,
  &gname763   /* cmpgtx128v16 */,
  &gname763   /* cmpgtx128v32 */,
  &gname763   /* cmpgtxx128v8 */,
  &gname763   /* cmpgtxx128v16 */,
  &gname763   /* cmpgtxx128v32 */,
  &gname763   /* cmpgtxxx128v8 */,
  &gname763   /* cmpgtxxx128v16 */,
  &gname763   /* cmpgtxxx128v32 */,
  &gname754   /* pcmpeqb */,
  &gname754   /* pcmpeqw */,
  &gname754   /* pcmpeqd */,
  &gname754   /* pcmpgtb */,
  &gname754   /* pcmpgtw */,
  &gname754   /* pcmpgtd */,
  &gname682   /* fmovsldup */,
  &gname682   /* fmovshdup */,
  &gname682   /* fmovddup */,
  &gname691   /* fmovsldupx */,
  &gname691   /* fmovshdupx */,
  &gname691   /* fmovddupx */,
  &gname691   /* fmovsldupxx */,
  &gname691   /* fmovshdupxx */,
  &gname691   /* fmovddupxx */,
  &gname691   /* fmovsldupxxx */,
  &gname691   /* fmovshdupxxx */,
  &gname691   /* fmovddupxxx */,
  &gname16    /* cltd */,
  &gname16    /* cqto */,
  &gname457   /* cvtss2sd */,
  &gname412   /* cvtsd2ss */,
  &gname421   /* cvtsd2ss_x */,
  &gname421   /* cvtsd2ss_xx */,
  &gname421   /* cvtsd2ss_xxx */,
  &gname430   /* cvtsi2sd */,
  &gname439   /* cvtsi2sd_x */,
  &gname439   /* cvtsi2sd_xx */,
  &gname439   /* cvtsi2sd_xxx */,
  &gname403   /* cvtsi2ss */,
  &gname394   /* cvtsi2ss_x */,
  &gname394   /* cvtsi2ss_xx */,
  &gname394   /* cvtsi2ss_xxx */,
  &gname430   /* cvtsi2sdq */,
  &gname439   /* cvtsi2sdq_x */,
  &gname439   /* cvtsi2sdq_xx */,
  &gname439   /* cvtsi2sdq_xxx */,
  &gname403   /* cvtsi2ssq */,
  &gname394   /* cvtsi2ssq_x */,
  &gname394   /* cvtsi2ssq_xx */,
  &gname394   /* cvtsi2ssq_xxx */,
  &gname457   /* cvtss2si */,
  &gname457   /* cvtsd2si */,
  &gname457   /* cvtss2siq */,
  &gname457   /* cvtsd2siq */,
  &gname457   /* cvttss2si */,
  &gname457   /* cvttsd2si */,
  &gname457   /* cvttss2siq */,
  &gname457   /* cvttsd2siq */,
  &gname322   /* cvtdq2pd */,
  &gname322   /* cvtdq2ps */,
  &gname331   /* cvtps2pd */,
  &gname340   /* cvtpd2ps */,
  &gname349   /* cvtps2dq */,
  &gname349   /* cvttps2dq */,
  &gname340   /* cvtpd2dq */,
  &gname340   /* cvttpd2dq */,
  &gname358   /* cvtdq2pd_x */,
  &gname358   /* cvtdq2ps_x */,
  &gname367   /* cvtps2pd_x */,
  &gname376   /* cvtpd2ps_x */,
  &gname385   /* cvtps2dq_x */,
  &gname376   /* cvtpd2dq_x */,
  &gname385   /* cvttps2dq_x */,
  &gname376   /* cvttpd2dq_x */,
  &gname358   /* cvtdq2pd_xx */,
  &gname358   /* cvtdq2ps_xx */,
  &gname367   /* cvtps2pd_xx */,
  &gname376   /* cvtpd2ps_xx */,
  &gname385   /* cvtps2dq_xx */,
  &gname376   /* cvtpd2dq_xx */,
  &gname385   /* cvttps2dq_xx */,
  &gname376   /* cvttpd2dq_xx */,
  &gname358   /* cvtdq2pd_xxx */,
  &gname358   /* cvtdq2ps_xxx */,
  &gname367   /* cvtps2pd_xxx */,
  &gname376   /* cvtpd2ps_xxx */,
  &gname385   /* cvtps2dq_xxx */,
  &gname376   /* cvtpd2dq_xxx */,
  &gname385   /* cvttps2dq_xxx */,
  &gname376   /* cvttpd2dq_xxx */,
  &gname970   /* cvtpi2ps */,
  &gname970   /* cvtps2pi */,
  &gname970   /* cvttps2pi */,
  &gname970   /* cvtpi2pd */,
  &gname970   /* cvtpd2pi */,
  &gname970   /* cvttpd2pi */,
  &gname232   /* ldsd */,
  &gname232   /* ldsdx */,
  &gname232   /* ldsdxx */,
  &gname232   /* ldss */,
  &gname232   /* ldssx */,
  &gname232   /* ldssxx */,
  &gname232   /* lddqa */,
  &gname241   /* lddqu */,
  &gname259   /* ldlps */,
  &gname259   /* ldhps */,
  &gname277   /* ldlpd */,
  &gname277   /* ldhpd */,
  &gname295   /* stdqa */,
  &gname304   /* stdqu */,
  &gname268   /* stlps */,
  &gname268   /* sthps */,
  &gname286   /* stlpd */,
  &gname286   /* storelpd */,
  &gname286   /* sthpd */,
  &gname295   /* stntpd */,
  &gname295   /* stntps */,
  &gname187   /* storent64_fm */,
  &gname232   /* lddqax */,
  &gname241   /* lddqux */,
  &gname259   /* ldlpsx */,
  &gname259   /* ldhpsx */,
  &gname277   /* ldlpdx */,
  &gname277   /* ldhpdx */,
  &gname295   /* stdqax */,
  &gname295   /* stntpdx */,
  &gname295   /* stntpsx */,
  &gname304   /* stdqux */,
  &gname268   /* stlpsx */,
  &gname268   /* sthpsx */,
  &gname286   /* stlpdx */,
  &gname286   /* sthpdx */,
  &gname232   /* lddqaxx */,
  &gname241   /* lddquxx */,
  &gname259   /* ldlpsxx */,
  &gname259   /* ldhpsxx */,
  &gname277   /* ldlpdxx */,
  &gname277   /* ldhpdxx */,
  &gname250   /* ldaps */,
  &gname250   /* ldapsx */,
  &gname250   /* ldapsxx */,
  &gname250   /* ldapd */,
  &gname250   /* ldapdx */,
  &gname250   /* ldapdxx */,
  &gname241   /* ldups */,
  &gname241   /* ldupd */,
  &gname241   /* ldupdx */,
  &gname241   /* ldupdxx */,
  &gname295   /* stdqaxx */,
  &gname295   /* stntpdxx */,
  &gname295   /* stntpsxx */,
  &gname304   /* stdquxx */,
  &gname268   /* stlpsxx */,
  &gname268   /* sthpsxx */,
  &gname286   /* stlpdxx */,
  &gname286   /* sthpdxx */,
  &gname313   /* staps */,
  &gname313   /* stapsx */,
  &gname313   /* stapsxx */,
  &gname313   /* stapd */,
  &gname313   /* stapdx */,
  &gname313   /* stapdxx */,
  &gname304   /* stups */,
  &gname304   /* stupd */,
  &gname817   /* maxsd */,
  &gname817   /* maxss */,
  &gname619   /* fmax128v32 */,
  &gname628   /* fmaxx128v32 */,
  &gname628   /* fmaxxx128v32 */,
  &gname628   /* fmaxxxx128v32 */,
  &gname619   /* fmax128v64 */,
  &gname628   /* fmaxx128v64 */,
  &gname628   /* fmaxxx128v64 */,
  &gname628   /* fmaxxxx128v64 */,
  &gname754   /* max128v16 */,
  &gname754   /* max128v8 */,
  &gname763   /* maxx128v16 */,
  &gname763   /* maxx128v8 */,
  &gname763   /* maxxx128v16 */,
  &gname763   /* maxxx128v8 */,
  &gname763   /* maxxxx128v16 */,
  &gname763   /* maxxxx128v8 */,
  &gname754   /* max64v8 */,
  &gname754   /* max64v16 */,
  &gname754   /* min128v16 */,
  &gname754   /* min128v8 */,
  &gname763   /* minx128v16 */,
  &gname763   /* minx128v8 */,
  &gname763   /* minxx128v16 */,
  &gname763   /* minxx128v8 */,
  &gname763   /* minxxx128v16 */,
  &gname763   /* minxxx128v8 */,
  &gname754   /* min64v8 */,
  &gname754   /* min64v16 */,
  &gname817   /* minsd */,
  &gname817   /* minss */,
  &gname619   /* fmin128v32 */,
  &gname628   /* fminx128v32 */,
  &gname628   /* fminxx128v32 */,
  &gname628   /* fminxxx128v32 */,
  &gname619   /* fmin128v64 */,
  &gname628   /* fminx128v64 */,
  &gname628   /* fminxx128v64 */,
  &gname628   /* fminxxx128v64 */,
  &gname457   /* movx2g64 */,
  &gname457   /* movx2g */,
  &gname448   /* movg2x64 */,
  &gname448   /* movg2x */,
  &gname223   /* movsd */,
  &gname223   /* movss */,
  &gname223   /* movdq */,
  &gname223   /* movapd */,
  &gname223   /* movaps */,
  &gname952   /* movq2dq */,
  &gname961   /* movdq2q */,
  &gname853   /* divsd */,
  &gname862   /* divxsd */,
  &gname862   /* divxxsd */,
  &gname862   /* divxxxsd */,
  &gname853   /* divss */,
  &gname862   /* divxss */,
  &gname862   /* divxxss */,
  &gname862   /* divxxxss */,
  &gname529   /* fdiv128v32 */,
  &gname556   /* fdivx128v32 */,
  &gname556   /* fdivxx128v32 */,
  &gname556   /* fdivxxx128v32 */,
  &gname565   /* fdiv128v64 */,
  &gname574   /* fdivx128v64 */,
  &gname574   /* fdivxx128v64 */,
  &gname574   /* fdivxxx128v64 */,
  &gname835   /* mulsd */,
  &gname835   /* mulss */,
  &gname511   /* fmul128v32 */,
  &gname520   /* fmulx128v32 */,
  &gname520   /* fmulxx128v32 */,
  &gname520   /* fmulxxx128v32 */,
  &gname511   /* fmul128v64 */,
  &gname520   /* fmulx128v64 */,
  &gname520   /* fmulxx128v64 */,
  &gname520   /* fmulxxx128v64 */,
  &gname844   /* mulxsd */,
  &gname844   /* mulxss */,
  &gname844   /* mulxxsd */,
  &gname844   /* mulxxxsd */,
  &gname844   /* mulxxss */,
  &gname844   /* mulxxxss */,
  &gname466   /* subsd */,
  &gname466   /* subss */,
  &gname808   /* subxsd */,
  &gname808   /* subxss */,
  &gname808   /* subxxsd */,
  &gname25    /* subxxxsd */,
  &gname808   /* subxxss */,
  &gname25    /* subxxxss */,
  &gname475   /* fsub128v32 */,
  &gname484   /* fsubx128v32 */,
  &gname484   /* fsubxx128v32 */,
  &gname484   /* fsubxxx128v32 */,
  &gname475   /* fsub128v64 */,
  &gname484   /* fsubx128v64 */,
  &gname484   /* fsubxx128v64 */,
  &gname484   /* fsubxxx128v64 */,
  &gname475   /* fhsub128v32 */,
  &gname484   /* fhsubx128v32 */,
  &gname484   /* fhsubxx128v32 */,
  &gname484   /* fhsubxxx128v32 */,
  &gname475   /* fhsub128v64 */,
  &gname484   /* fhsubx128v64 */,
  &gname484   /* fhsubxx128v64 */,
  &gname484   /* fhsubxxx128v64 */,
  &gname295   /* stss */,
  &gname295   /* stntss */,
  &gname295   /* stssx */,
  &gname295   /* stntssx */,
  &gname295   /* stssxx */,
  &gname295   /* stntssxx */,
  &gname295   /* stsd */,
  &gname295   /* stntsd */,
  &gname295   /* stsdx */,
  &gname295   /* stntsdx */,
  &gname295   /* stsdxx */,
  &gname295   /* stntsdxx */,
  &gname826   /* rcpss */,
  &gname655   /* frcp128v32 */,
  &gname214   /* sqrtsd */,
  &gname205   /* sqrtss */,
  &gname826   /* rsqrtss */,
  &gname637   /* fsqrt128v32 */,
  &gname655   /* frsqrt128v32 */,
  &gname646   /* fsqrt128v64 */,
  &gname727   /* punpcklwd */,
  &gname727   /* punpcklbw */,
  &gname727   /* punpckldq */,
  &gname727   /* punpcklbw128 */,
  &gname727   /* punpcklwd128 */,
  &gname727   /* punpckldq128 */,
  &gname727   /* punpckhbw */,
  &gname727   /* punpckhwd */,
  &gname727   /* punpckhdq */,
  &gname727   /* punpckhbw128 */,
  &gname727   /* punpckhwd128 */,
  &gname727   /* punpckhdq128 */,
  &gname727   /* punpcklqdq */,
  &gname727   /* punpckhqdq */,
  &gname727   /* packsswb */,
  &gname727   /* packssdw */,
  &gname727   /* packuswb */,
  &gname727   /* packsswb128 */,
  &gname727   /* packssdw128 */,
  &gname727   /* packuswb128 */,
  &gname682   /* pshufd */,
  &gname700   /* pshufw */,
  &gname700   /* pshuflw */,
  &gname700   /* pshufhw */,
  &gname718   /* pslldq */,
  &gname718   /* psllw */,
  &gname718   /* psllwi */,
  &gname718   /* pslld */,
  &gname718   /* pslldi */,
  &gname718   /* psllq */,
  &gname718   /* psllqi */,
  &gname718   /* psrlw */,
  &gname718   /* psrlwi */,
  &gname718   /* psrld */,
  &gname718   /* psrldi */,
  &gname718   /* psrlq */,
  &gname718   /* psrlqi */,
  &gname718   /* psraw */,
  &gname718   /* psrawi */,
  &gname718   /* psrad */,
  &gname718   /* psradi */,
  &gname709   /* psllw_mmx */,
  &gname709   /* psllwi_mmx */,
  &gname709   /* pslld_mmx */,
  &gname709   /* pslldi_mmx */,
  &gname709   /* psllq_mmx */,
  &gname709   /* psllqi_mmx */,
  &gname709   /* psrlw_mmx */,
  &gname709   /* psrlwi_mmx */,
  &gname709   /* psrld_mmx */,
  &gname709   /* psrldi_mmx */,
  &gname709   /* psrlq_mmx */,
  &gname709   /* psrlqi_mmx */,
  &gname709   /* psraw_mmx */,
  &gname709   /* psrawi_mmx */,
  &gname709   /* psrad_mmx */,
  &gname709   /* psradi_mmx */,
  &gname709   /* pand_mmx */,
  &gname709   /* pandn_mmx */,
  &gname709   /* por_mmx */,
  &gname709   /* pxor_mmx */,
  &gname772   /* pand */,
  &gname772   /* pandn */,
  &gname772   /* por */,
  &gname772   /* pxor */,
  &gname664   /* unpckhpd */,
  &gname673   /* unpckhps */,
  &gname664   /* unpcklpd */,
  &gname673   /* unpcklps */,
  &gname682   /* shufpd */,
  &gname682   /* shufps */,
  &gname223   /* movhlps */,
  &gname223   /* movlhps */,
  &gname718   /* psrldq */,
  &gname718   /* psrlq128v64 */,
  &gname772   /* subus128v16 */,
  &gname772   /* pavgb */,
  &gname772   /* pavgw */,
  &gname619   /* psadbw */,
  &gname772   /* pavgb128 */,
  &gname772   /* pavgw128 */,
  &gname619   /* psadbw128 */,
  &gname25    /* pextrw */,
  &gname34    /* pinsrw */,
  &gname943   /* pmovmskb */,
  &gname457   /* pmovmskb128 */,
  &gname934   /* movi32_2m */,
  &gname934   /* movi64_2m */,
  &gname943   /* movm_2i32 */,
  &gname943   /* movm_2i64 */,
  &gname709   /* pshufw64v16 */,
  &gname979   /* movmskps */,
  &gname979   /* movmskpd */,
  &gname304   /* maskmovdqu */,
  &gname187   /* maskmovq */,
  &gname988   /* extrq */,
  &gname997   /* insertq */,
  &gname583   /* vfmaddss */,
  &gname592   /* vfmaddxss */,
  &gname601   /* vfmaddxxss */,
  &gname610   /* vfmaddxxxss */,
  &gname592   /* vfmaddxrss */,
  &gname601   /* vfmaddxxrss */,
  &gname610   /* vfmaddxxxrss */,
  &gname583   /* vfmaddsd */,
  &gname592   /* vfmaddxsd */,
  &gname601   /* vfmaddxxsd */,
  &gname610   /* vfmaddxxxsd */,
  &gname592   /* vfmaddxrsd */,
  &gname601   /* vfmaddxxrsd */,
  &gname610   /* vfmaddxxxrsd */,
  &gname583   /* vfnmaddss */,
  &gname592   /* vfnmaddxss */,
  &gname601   /* vfnmaddxxss */,
  &gname610   /* vfnmaddxxxss */,
  &gname592   /* vfnmaddxrss */,
  &gname601   /* vfnmaddxxrss */,
  &gname610   /* vfnmaddxxxrss */,
  &gname583   /* vfnmaddsd */,
  &gname592   /* vfnmaddxsd */,
  &gname601   /* vfnmaddxxsd */,
  &gname610   /* vfnmaddxxxsd */,
  &gname592   /* vfnmaddxrsd */,
  &gname601   /* vfnmaddxxrsd */,
  &gname610   /* vfnmaddxxxrsd */,
  &gname583   /* vfmaddps */,
  &gname592   /* vfmaddxps */,
  &gname601   /* vfmaddxxps */,
  &gname610   /* vfmaddxxxps */,
  &gname592   /* vfmaddxrps */,
  &gname601   /* vfmaddxxrps */,
  &gname610   /* vfmaddxxxrps */,
  &gname583   /* vfmaddpd */,
  &gname592   /* vfmaddxpd */,
  &gname601   /* vfmaddxxpd */,
  &gname610   /* vfmaddxxxpd */,
  &gname592   /* vfmaddxrpd */,
  &gname601   /* vfmaddxxrpd */,
  &gname610   /* vfmaddxxxrpd */,
  &gname583   /* vfmaddsubps */,
  &gname592   /* vfmaddsubxps */,
  &gname601   /* vfmaddsubxxps */,
  &gname610   /* vfmaddsubxxxps */,
  &gname592   /* vfmaddsubxrps */,
  &gname601   /* vfmaddsubxxrps */,
  &gname610   /* vfmaddsubxxxrps */,
  &gname583   /* vfmaddsubpd */,
  &gname592   /* vfmaddsubxpd */,
  &gname601   /* vfmaddsubxxpd */,
  &gname610   /* vfmaddsubxxxpd */,
  &gname592   /* vfmaddsubxrpd */,
  &gname601   /* vfmaddsubxxrpd */,
  &gname610   /* vfmaddsubxxxrpd */,
  &gname583   /* vfnmaddps */,
  &gname592   /* vfnmaddxps */,
  &gname601   /* vfnmaddxxps */,
  &gname610   /* vfnmaddxxxps */,
  &gname592   /* vfnmaddxrps */,
  &gname601   /* vfnmaddxxrps */,
  &gname610   /* vfnmaddxxxrps */,
  &gname583   /* vfnmaddpd */,
  &gname592   /* vfnmaddxpd */,
  &gname601   /* vfnmaddxxpd */,
  &gname610   /* vfnmaddxxxpd */,
  &gname592   /* vfnmaddxrpd */,
  &gname601   /* vfnmaddxxrpd */,
  &gname610   /* vfnmaddxxxrpd */,
  &gname583   /* vfmsubss */,
  &gname592   /* vfmsubxss */,
  &gname601   /* vfmsubxxss */,
  &gname610   /* vfmsubxxxss */,
  &gname592   /* vfmsubxrss */,
  &gname601   /* vfmsubxxrss */,
  &gname610   /* vfmsubxxxrss */,
  &gname583   /* vfmsubsd */,
  &gname592   /* vfmsubxsd */,
  &gname601   /* vfmsubxxsd */,
  &gname610   /* vfmsubxxxsd */,
  &gname592   /* vfmsubxrsd */,
  &gname601   /* vfmsubxxrsd */,
  &gname610   /* vfmsubxxxrsd */,
  &gname583   /* vfnmsubss */,
  &gname592   /* vfnmsubxss */,
  &gname601   /* vfnmsubxxss */,
  &gname610   /* vfnmsubxxxss */,
  &gname592   /* vfnmsubxrss */,
  &gname601   /* vfnmsubxxrss */,
  &gname610   /* vfnmsubxxxrss */,
  &gname583   /* vfnmsubsd */,
  &gname592   /* vfnmsubxsd */,
  &gname601   /* vfnmsubxxsd */,
  &gname610   /* vfnmsubxxxsd */,
  &gname592   /* vfnmsubxrsd */,
  &gname601   /* vfnmsubxxrsd */,
  &gname610   /* vfnmsubxxxrsd */,
  &gname583   /* vfmsubps */,
  &gname592   /* vfmsubxps */,
  &gname601   /* vfmsubxxps */,
  &gname610   /* vfmsubxxxps */,
  &gname592   /* vfmsubxrps */,
  &gname601   /* vfmsubxxrps */,
  &gname610   /* vfmsubxxxrps */,
  &gname583   /* vfmsubpd */,
  &gname592   /* vfmsubxpd */,
  &gname601   /* vfmsubxxpd */,
  &gname610   /* vfmsubxxxpd */,
  &gname592   /* vfmsubxrpd */,
  &gname601   /* vfmsubxxrpd */,
  &gname610   /* vfmsubxxxrpd */,
  &gname583   /* vfmsubaddps */,
  &gname592   /* vfmsubaddxps */,
  &gname601   /* vfmsubaddxxps */,
  &gname610   /* vfmsubaddxxxps */,
  &gname592   /* vfmsubaddxrps */,
  &gname601   /* vfmsubaddxxrps */,
  &gname610   /* vfmsubaddxxxrps */,
  &gname583   /* vfmsubaddpd */,
  &gname592   /* vfmsubaddxpd */,
  &gname601   /* vfmsubaddxxpd */,
  &gname610   /* vfmsubaddxxxpd */,
  &gname592   /* vfmsubaddxrpd */,
  &gname601   /* vfmsubaddxxrpd */,
  &gname610   /* vfmsubaddxxxrpd */,
  &gname583   /* vfnmsubps */,
  &gname592   /* vfnmsubxps */,
  &gname601   /* vfnmsubxxps */,
  &gname610   /* vfnmsubxxxps */,
  &gname592   /* vfnmsubxrps */,
  &gname601   /* vfnmsubxxrps */,
  &gname610   /* vfnmsubxxxrps */,
  &gname583   /* vfnmsubpd */,
  &gname592   /* vfnmsubxpd */,
  &gname601   /* vfnmsubxxpd */,
  &gname610   /* vfnmsubxxxpd */,
  &gname592   /* vfnmsubxrpd */,
  &gname601   /* vfnmsubxxrpd */,
  &gname610   /* vfnmsubxxxrpd */,
  &gname925   /* vzeroupper */,
  &gname880   /* mfence */,
  &gname880   /* lfence */,
  &gname880   /* sfence */,
  &gname1006  /* monitor */,
  &gname1006  /* mwait */,
  &gname1780  /* asm */,
  &gname1780  /* intrncall */,
  &gname1780  /* spadjust */,
  &gname1780  /* savexmms */,
  &gname16    /* zero32 */,
  &gname16    /* zero64 */,
  &gname493   /* xzero32 */,
  &gname493   /* xzero64 */,
  &gname493   /* xzero128v32 */,
  &gname493   /* xzero128v64 */,
  &gname466   /* fadd */,
  &gname466   /* faddp */,
  &gname232   /* flds */,
  &gname232   /* flds_n32 */,
  &gname232   /* fldl */,
  &gname232   /* fldl_n32 */,
  &gname232   /* fldt */,
  &gname232   /* fldt_n32 */,
  &gname232   /* fld */,
  &gname295   /* fst */,
  &gname295   /* fstp */,
  &gname295   /* fstps */,
  &gname295   /* fstps_n32 */,
  &gname295   /* fstpl */,
  &gname295   /* fstpl_n32 */,
  &gname295   /* fstpt */,
  &gname295   /* fstpt_n32 */,
  &gname295   /* fsts */,
  &gname295   /* fsts_n32 */,
  &gname295   /* fstl */,
  &gname295   /* fstl_n32 */,
  &gname466   /* fxch */,
  &gname223   /* fmov */,
  &gname466   /* fsub */,
  &gname466   /* fsubr */,
  &gname466   /* fsubp */,
  &gname466   /* fsubrp */,
  &gname466   /* fmul */,
  &gname466   /* fmulp */,
  &gname853   /* fdiv */,
  &gname853   /* fdivp */,
  &gname853   /* fdivr */,
  &gname853   /* fdivrp */,
  &gname466   /* fucomi */,
  &gname466   /* fucomip */,
  &gname223   /* fchs */,
  &gname871   /* frndint */,
  &gname295   /* fnstcw */,
  &gname232   /* fldcw */,
  &gname466   /* fistps */,
  &gname466   /* fistpl */,
  &gname466   /* fists */,
  &gname466   /* fistl */,
  &gname466   /* fistpll */,
  &gname808   /* filds */,
  &gname808   /* fildl */,
  &gname808   /* fildll */,
  &gname466   /* fldz */,
  &gname223   /* fabs */,
  &gname529   /* fsqrt */,
  &gname61    /* fcmovb */,
  &gname61    /* fcmovbe */,
  &gname61    /* fcmovnb */,
  &gname61    /* fcmovnbe */,
  &gname61    /* fcmove */,
  &gname61    /* fcmovne */,
  &gname61    /* fcmovu */,
  &gname61    /* fcmovnu */,
  &gname538   /* fcos */,
  &gname547   /* fsin */,
  &gname745   /* cmpeqpd */,
  &gname745   /* cmpltpd */,
  &gname745   /* cmplepd */,
  &gname745   /* cmpunordpd */,
  &gname745   /* cmpneqpd */,
  &gname745   /* cmpnltpd */,
  &gname745   /* cmpnlepd */,
  &gname745   /* cmpordpd */,
  &gname745   /* cmpeqps */,
  &gname745   /* cmpltps */,
  &gname745   /* cmpleps */,
  &gname745   /* cmpunordps */,
  &gname745   /* cmpneqps */,
  &gname745   /* cmpnltps */,
  &gname745   /* cmpnleps */,
  &gname745   /* cmpordps */,
  &gname16    /* cmpeqsd */,
  &gname16    /* cmpltsd */,
  &gname16    /* cmplesd */,
  &gname16    /* cmpunordsd */,
  &gname16    /* cmpneqsd */,
  &gname16    /* cmpnltsd */,
  &gname16    /* cmpnlesd */,
  &gname16    /* cmpordsd */,
  &gname16    /* cmpeqss */,
  &gname16    /* cmpltss */,
  &gname16    /* cmpless */,
  &gname16    /* cmpunordss */,
  &gname16    /* cmpneqss */,
  &gname16    /* cmpnltss */,
  &gname16    /* cmpnless */,
  &gname16    /* cmpordss */,
  &gname907   /* emms */,
  &gname304   /* stmxcsr */,
  &gname241   /* ldmxcsr */,
  &gname916   /* clflush */,
  &gname466   /* fisttps */,
  &gname466   /* fisttpl */,
  &gname466   /* fisttpll */,
  &gname1015  /* pabs128v8 */,
  &gname1024  /* pabsx128v8 */,
  &gname1024  /* pabsxx128v8 */,
  &gname1024  /* pabsxxx128v8 */,
  &gname1015  /* pabs128v16 */,
  &gname1024  /* pabsx128v16 */,
  &gname1024  /* pabsxx128v16 */,
  &gname1024  /* pabsxxx128v16 */,
  &gname1015  /* pabs128v32 */,
  &gname1024  /* pabsx128v32 */,
  &gname1024  /* pabsxx128v32 */,
  &gname1024  /* pabsxxx128v32 */,
  &gname1015  /* psign128v8 */,
  &gname1024  /* psignx128v8 */,
  &gname1024  /* psignxx128v8 */,
  &gname1024  /* psignxxx128v8 */,
  &gname1015  /* psign128v16 */,
  &gname1024  /* psignx128v16 */,
  &gname1024  /* psignxx128v16 */,
  &gname1024  /* psignxxx128v16 */,
  &gname1015  /* psign128v32 */,
  &gname1024  /* psignx128v32 */,
  &gname1024  /* psignxx128v32 */,
  &gname1024  /* psignxxx128v32 */,
  &gname1015  /* pshuf128v8 */,
  &gname1024  /* pshufx128v8 */,
  &gname1024  /* pshufxx128v8 */,
  &gname1024  /* pshufxxx128v8 */,
  &gname1033  /* phsub128v16 */,
  &gname1042  /* phsubx128v16 */,
  &gname1042  /* phsubxx128v16 */,
  &gname1042  /* phsubxxx128v16 */,
  &gname1033  /* phsub128v32 */,
  &gname1042  /* phsubx128v32 */,
  &gname1042  /* phsubxx128v32 */,
  &gname1042  /* phsubxxx128v32 */,
  &gname1033  /* phsubs128v16 */,
  &gname1042  /* phsubsx128v16 */,
  &gname1042  /* phsubsxx128v16 */,
  &gname1042  /* phsubsxxx128v16 */,
  &gname1033  /* phadd128v16 */,
  &gname1042  /* phaddx128v16 */,
  &gname1042  /* phaddxx128v16 */,
  &gname1042  /* phaddxxx128v16 */,
  &gname1033  /* phadd128v32 */,
  &gname1042  /* phaddx128v32 */,
  &gname1042  /* phaddxx128v32 */,
  &gname1042  /* phaddxxx128v32 */,
  &gname1033  /* phadds128v16 */,
  &gname1042  /* phaddsx128v16 */,
  &gname1042  /* phaddsxx128v16 */,
  &gname1042  /* phaddsxxx128v16 */,
  &gname1051  /* pmulhrsw128 */,
  &gname1060  /* pmulhrswx128 */,
  &gname1060  /* pmulhrswxx128 */,
  &gname1060  /* pmulhrswxxx128 */,
  &gname1051  /* pmaddubsw128 */,
  &gname1060  /* pmaddubswx128 */,
  &gname1060  /* pmaddubswxx128 */,
  &gname1060  /* pmaddubswxxx128 */,
  &gname1015  /* palignr128 */,
  &gname1024  /* palignrx128 */,
  &gname1024  /* palignrxx128 */,
  &gname1024  /* palignrxxx128 */,
  &gname1177  /* muldq */,
  &gname1186  /* muldqx */,
  &gname1186  /* muldqxx */,
  &gname1186  /* muldqxxx */,
  &gname1195  /* ldntdqa */,
  &gname1195  /* ldntdqax */,
  &gname1195  /* ldntdqaxx */,
  &gname1204  /* stntdq */,
  &gname1204  /* stntdqx */,
  &gname1204  /* stntdqxx */,
  &gname1069  /* mins128v8 */,
  &gname1078  /* minsx128v8 */,
  &gname1078  /* minsxx128v8 */,
  &gname1078  /* minsxxx128v8 */,
  &gname1069  /* maxs128v8 */,
  &gname1078  /* maxsx128v8 */,
  &gname1078  /* maxsxx128v8 */,
  &gname1078  /* maxsxxx128v8 */,
  &gname1069  /* minu128v16 */,
  &gname1078  /* minux128v16 */,
  &gname1078  /* minuxx128v16 */,
  &gname1078  /* minuxxx128v16 */,
  &gname1069  /* maxu128v16 */,
  &gname1078  /* maxux128v16 */,
  &gname1078  /* maxuxx128v16 */,
  &gname1078  /* maxuxxx128v16 */,
  &gname1069  /* minu128v32 */,
  &gname1078  /* minux128v32 */,
  &gname1078  /* minuxx128v32 */,
  &gname1078  /* minuxxx128v32 */,
  &gname1069  /* maxu128v32 */,
  &gname1078  /* maxux128v32 */,
  &gname1078  /* maxuxx128v32 */,
  &gname1078  /* maxuxxx128v32 */,
  &gname1069  /* mins128v32 */,
  &gname1078  /* minsx128v32 */,
  &gname1078  /* minsxx128v32 */,
  &gname1078  /* minsxxx128v32 */,
  &gname1069  /* maxs128v32 */,
  &gname1078  /* maxsx128v32 */,
  &gname1078  /* maxsxx128v32 */,
  &gname1078  /* maxsxxx128v32 */,
  &gname1069  /* pmovsxbw */,
  &gname1078  /* pmovsxbwx */,
  &gname1078  /* pmovsxbwxx */,
  &gname1078  /* pmovsxbwxxx */,
  &gname1069  /* pmovzxbw */,
  &gname1078  /* pmovzxbwx */,
  &gname1078  /* pmovzxbwxx */,
  &gname1078  /* pmovzxbwxxx */,
  &gname1069  /* pmovsxbd */,
  &gname1078  /* pmovsxbdx */,
  &gname1078  /* pmovsxbdxx */,
  &gname1078  /* pmovsxbdxxx */,
  &gname1069  /* pmovzxbd */,
  &gname1078  /* pmovzxbdx */,
  &gname1078  /* pmovzxbdxx */,
  &gname1078  /* pmovzxbdxxx */,
  &gname1069  /* pmovsxbq */,
  &gname1078  /* pmovsxbqx */,
  &gname1078  /* pmovsxbqxx */,
  &gname1078  /* pmovsxbqxxx */,
  &gname1069  /* pmovzxbq */,
  &gname1078  /* pmovzxbqx */,
  &gname1078  /* pmovzxbqxx */,
  &gname1078  /* pmovzxbqxxx */,
  &gname1069  /* pmovsxwd */,
  &gname1078  /* pmovsxwdx */,
  &gname1078  /* pmovsxwdxx */,
  &gname1078  /* pmovsxwdxxx */,
  &gname1069  /* pmovzxwd */,
  &gname1078  /* pmovzxwdx */,
  &gname1078  /* pmovzxwdxx */,
  &gname1078  /* pmovzxwdxxx */,
  &gname1069  /* pmovsxwq */,
  &gname1078  /* pmovsxwqx */,
  &gname1078  /* pmovsxwqxx */,
  &gname1078  /* pmovsxwqxxx */,
  &gname1069  /* pmovzxwq */,
  &gname1078  /* pmovzxwqx */,
  &gname1078  /* pmovzxwqxx */,
  &gname1078  /* pmovzxwqxxx */,
  &gname1069  /* pmovsxdq */,
  &gname1078  /* pmovsxdqx */,
  &gname1078  /* pmovsxdqxx */,
  &gname1078  /* pmovsxdqxxx */,
  &gname1069  /* pmovzxdq */,
  &gname1078  /* pmovzxdqx */,
  &gname1078  /* pmovzxdqxx */,
  &gname1078  /* pmovzxdqxxx */,
  &gname1177  /* mul128v32 */,
  &gname1186  /* mulx128v32 */,
  &gname1186  /* mulxx128v32 */,
  &gname1186  /* mulxxx128v32 */,
  &gname1213  /* cmpeq128v64 */,
  &gname1222  /* cmpeqx128v64 */,
  &gname1222  /* cmpeqxx128v64 */,
  &gname1222  /* cmpeqxxx128v64 */,
  &gname1213  /* packusdw */,
  &gname1222  /* packusdwx */,
  &gname1222  /* packusdwxx */,
  &gname1222  /* packusdwxxx */,
  &gname1069  /* phminposuw */,
  &gname1078  /* phminposuwx */,
  &gname1078  /* phminposuwxx */,
  &gname1078  /* phminposuwxxx */,
  &gname1231  /* ptest128 */,
  &gname1240  /* ptestx128 */,
  &gname1240  /* ptestxx128 */,
  &gname1240  /* ptestxxx128 */,
  &gname1141  /* roundsd */,
  &gname1150  /* roundxsd */,
  &gname1150  /* roundxxsd */,
  &gname1150  /* roundxxxsd */,
  &gname1177  /* mpsadbw */,
  &gname1186  /* mpsadbwx */,
  &gname1186  /* mpsadbwxx */,
  &gname1186  /* mpsadbwxxx */,
  &gname1123  /* insr128v8 */,
  &gname1132  /* insrx128v8 */,
  &gname1132  /* insrxx128v8 */,
  &gname1132  /* insrxxx128v8 */,
  &gname1123  /* insr128v16 */,
  &gname1132  /* insrx128v16 */,
  &gname1132  /* insrxx128v16 */,
  &gname1132  /* insrxxx128v16 */,
  &gname1123  /* insr128v32 */,
  &gname1132  /* insrx128v32 */,
  &gname1132  /* insrxx128v32 */,
  &gname1132  /* insrxxx128v32 */,
  &gname1123  /* insr128v64 */,
  &gname1132  /* insrx128v64 */,
  &gname1132  /* insrxx128v64 */,
  &gname1132  /* insrxxx128v64 */,
  &gname1123  /* extr128v8 */,
  &gname1132  /* extrx128v8 */,
  &gname1132  /* extrxx128v8 */,
  &gname1132  /* extrxxx128v8 */,
  &gname1123  /* extr128v16 */,
  &gname1132  /* extrx128v16 */,
  &gname1132  /* extrxx128v16 */,
  &gname1132  /* extrxxx128v16 */,
  &gname1123  /* extr128v32 */,
  &gname1132  /* extrx128v32 */,
  &gname1132  /* extrxx128v32 */,
  &gname1132  /* extrxxx128v32 */,
  &gname1123  /* extr128v64 */,
  &gname1132  /* extrx128v64 */,
  &gname1132  /* extrxx128v64 */,
  &gname1132  /* extrxxx128v64 */,
  &gname1159  /* finsr128v32 */,
  &gname1168  /* finsrx128v32 */,
  &gname1168  /* finsrxx128v32 */,
  &gname1168  /* finsrxxx128v32 */,
  &gname1159  /* fextr128v32 */,
  &gname1168  /* fextrx128v32 */,
  &gname1168  /* fextrxx128v32 */,
  &gname1168  /* fextrxxx128v32 */,
  &gname1105  /* fblendv128v32 */,
  &gname1114  /* fblendvx128v32 */,
  &gname1114  /* fblendvxx128v32 */,
  &gname1114  /* fblendvxxx128v32 */,
  &gname1105  /* fblendv128v64 */,
  &gname1114  /* fblendvx128v64 */,
  &gname1114  /* fblendvxx128v64 */,
  &gname1114  /* fblendvxxx128v64 */,
  &gname1105  /* blendv128v8 */,
  &gname1114  /* blendvx128v8 */,
  &gname1114  /* blendvxx128v8 */,
  &gname1114  /* blendvxxx128v8 */,
  &gname1087  /* round128v32 */,
  &gname1096  /* roundx128v32 */,
  &gname1096  /* roundxx128v32 */,
  &gname1096  /* roundxxx128v32 */,
  &gname1087  /* roundss */,
  &gname1096  /* roundxss */,
  &gname1096  /* roundxxss */,
  &gname1096  /* roundxxxss */,
  &gname1105  /* fblend128v64 */,
  &gname1114  /* fblendx128v64 */,
  &gname1114  /* fblendxx128v64 */,
  &gname1114  /* fblendxxx128v64 */,
  &gname1105  /* blend128v16 */,
  &gname1114  /* blendx128v16 */,
  &gname1114  /* blendxx128v16 */,
  &gname1114  /* blendxxx128v16 */,
  &gname1177  /* fdp128v32 */,
  &gname1186  /* fdpx128v32 */,
  &gname1186  /* fdpxx128v32 */,
  &gname1186  /* fdpxxx128v32 */,
  &gname1177  /* fdp128v64 */,
  &gname1186  /* fdpx128v64 */,
  &gname1186  /* fdpxx128v64 */,
  &gname1186  /* fdpxxx128v64 */,
  &gname1087  /* round128v64 */,
  &gname1096  /* roundx128v64 */,
  &gname1096  /* roundxx128v64 */,
  &gname1096  /* roundxxx128v64 */,
  &gname1105  /* fblend128v32 */,
  &gname1114  /* fblendx128v32 */,
  &gname1114  /* fblendxx128v32 */,
  &gname1114  /* fblendxxx128v32 */,
  &gname1285  /* cmpgt128v64 */,
  &gname1294  /* cmpgtx128v64 */,
  &gname1294  /* cmpgtxx128v64 */,
  &gname1294  /* cmpgtxxx128v64 */,
  &gname1249  /* crc32w */,
  &gname1258  /* crc32wx */,
  &gname1258  /* crc32wxx */,
  &gname1258  /* crc32wxxx */,
  &gname1249  /* crc32d */,
  &gname1258  /* crc32dx */,
  &gname1258  /* crc32dxx */,
  &gname1258  /* crc32dxxx */,
  &gname1249  /* crc32q */,
  &gname1258  /* crc32qx */,
  &gname1258  /* crc32qxx */,
  &gname1258  /* crc32qxxx */,
  &gname1249  /* crc32b */,
  &gname1258  /* crc32bx */,
  &gname1258  /* crc32bxx */,
  &gname1258  /* crc32bxxx */,
  &gname1267  /* cmpestrm */,
  &gname1276  /* cmpestrmx */,
  &gname1276  /* cmpestrmxx */,
  &gname1276  /* cmpestrmxxx */,
  &gname1267  /* cmpestri */,
  &gname1276  /* cmpestrix */,
  &gname1276  /* cmpestrixx */,
  &gname1276  /* cmpestrixxx */,
  &gname1267  /* cmpistrm */,
  &gname1276  /* cmpistrmx */,
  &gname1276  /* cmpistrmxx */,
  &gname1276  /* cmpistrmxxx */,
  &gname1267  /* cmpistri */,
  &gname1276  /* cmpistrix */,
  &gname1276  /* cmpistrixx */,
  &gname1276  /* cmpistrixxx */,
  &gname1285  /* popcnt16 */,
  &gname1294  /* popcntx16 */,
  &gname1294  /* popcntxx16 */,
  &gname1294  /* popcntxxx16 */,
  &gname1285  /* popcnt32 */,
  &gname1294  /* popcntx32 */,
  &gname1294  /* popcntxx32 */,
  &gname1294  /* popcntxxx32 */,
  &gname1285  /* popcnt64 */,
  &gname1294  /* popcntx64 */,
  &gname1294  /* popcntxx64 */,
  &gname1294  /* popcntxxx64 */,
  &gname1303  /* aesimc */,
  &gname1312  /* aesimcx */,
  &gname1312  /* aesimcxx */,
  &gname1312  /* aesimcxxx */,
  &gname1303  /* aeskeygenassist */,
  &gname1312  /* aeskeygenassistx */,
  &gname1312  /* aeskeygenassistxx */,
  &gname1312  /* aeskeygenassistxxx */,
  &gname1303  /* aesenc */,
  &gname1312  /* aesencx */,
  &gname1312  /* aesencxx */,
  &gname1312  /* aesencxxx */,
  &gname1303  /* aesenclast */,
  &gname1312  /* aesenclastx */,
  &gname1312  /* aesenclastxx */,
  &gname1312  /* aesenclastxxx */,
  &gname1303  /* aesdec */,
  &gname1312  /* aesdecx */,
  &gname1312  /* aesdecxx */,
  &gname1312  /* aesdecxxx */,
  &gname1303  /* aesdeclast */,
  &gname1312  /* aesdeclastx */,
  &gname1312  /* aesdeclastxx */,
  &gname1312  /* aesdeclastxxx */,
  &gname1321  /* pclmulqdq */,
  &gname1330  /* pclmulqdqx */,
  &gname1330  /* pclmulqdqxx */,
  &gname1330  /* pclmulqdqxxx */,
  &gname1339  /* vphaddbd */,
  &gname1348  /* vphaddbdx */,
  &gname1348  /* vphaddbdxx */,
  &gname1348  /* vphaddbdxxx */,
  &gname1339  /* vphaddbq */,
  &gname1348  /* vphaddbqx */,
  &gname1348  /* vphaddbqxx */,
  &gname1348  /* vphaddbqxxx */,
  &gname1339  /* vphaddbw */,
  &gname1348  /* vphaddbwx */,
  &gname1348  /* vphaddbwxx */,
  &gname1348  /* vphaddbwxxx */,
  &gname1339  /* vphadddq */,
  &gname1348  /* vphadddqx */,
  &gname1348  /* vphadddqxx */,
  &gname1348  /* vphadddqxxx */,
  &gname1339  /* vphaddubd */,
  &gname1348  /* vphaddubdx */,
  &gname1348  /* vphaddubdxx */,
  &gname1348  /* vphaddubdxxx */,
  &gname1339  /* vphaddubq */,
  &gname1348  /* vphaddubqx */,
  &gname1348  /* vphaddubqxx */,
  &gname1348  /* vphaddubqxxx */,
  &gname1339  /* vphaddubw */,
  &gname1348  /* vphaddubwx */,
  &gname1348  /* vphaddubwxx */,
  &gname1348  /* vphaddubwxxx */,
  &gname1339  /* vphaddudq */,
  &gname1348  /* vphaddudqx */,
  &gname1348  /* vphaddudqxx */,
  &gname1348  /* vphaddudqxxx */,
  &gname1339  /* vphadduwd */,
  &gname1348  /* vphadduwdx */,
  &gname1348  /* vphadduwdxx */,
  &gname1348  /* vphadduwdxxx */,
  &gname1339  /* vphadduwq */,
  &gname1348  /* vphadduwqx */,
  &gname1348  /* vphadduwqxx */,
  &gname1348  /* vphadduwqxxx */,
  &gname1339  /* vphaddwd */,
  &gname1348  /* vphaddwdx */,
  &gname1348  /* vphaddwdxx */,
  &gname1348  /* vphaddwdxxx */,
  &gname1339  /* vphaddwq */,
  &gname1348  /* vphaddwqx */,
  &gname1348  /* vphaddwqxx */,
  &gname1348  /* vphaddwqxxx */,
  &gname1339  /* vphsubbw */,
  &gname1348  /* vphsubbwx */,
  &gname1348  /* vphsubbwxx */,
  &gname1348  /* vphsubbwxxx */,
  &gname1339  /* vphsubdq */,
  &gname1348  /* vphsubdqx */,
  &gname1348  /* vphsubdqxx */,
  &gname1348  /* vphsubdqxxx */,
  &gname1339  /* vphsubwd */,
  &gname1348  /* vphsubwdx */,
  &gname1348  /* vphsubwdxx */,
  &gname1348  /* vphsubwdxxx */,
  &gname1375  /* vfrczpd */,
  &gname1384  /* vfrczpdx */,
  &gname1384  /* vfrczpdxx */,
  &gname1384  /* vfrczpdxxx */,
  &gname1375  /* vfrczps */,
  &gname1384  /* vfrczpsx */,
  &gname1384  /* vfrczpsxx */,
  &gname1384  /* vfrczpsxxx */,
  &gname1375  /* vfrczsd */,
  &gname1384  /* vfrczsdx */,
  &gname1384  /* vfrczsdxx */,
  &gname1384  /* vfrczsdxxx */,
  &gname1375  /* vfrczss */,
  &gname1384  /* vfrczssx */,
  &gname1384  /* vfrczssxx */,
  &gname1384  /* vfrczssxxx */,
  &gname1393  /* vprotbi */,
  &gname1402  /* vprotbix */,
  &gname1402  /* vprotbixx */,
  &gname1402  /* vprotbixxx */,
  &gname1393  /* vprotdi */,
  &gname1402  /* vprotdix */,
  &gname1402  /* vprotdixx */,
  &gname1402  /* vprotdixxx */,
  &gname1393  /* vprotqi */,
  &gname1402  /* vprotqix */,
  &gname1402  /* vprotqixx */,
  &gname1402  /* vprotqixxx */,
  &gname1393  /* vprotwi */,
  &gname1402  /* vprotwix */,
  &gname1402  /* vprotwixx */,
  &gname1402  /* vprotwixxx */,
  &gname1393  /* vpcomb */,
  &gname1402  /* vpcombx */,
  &gname1402  /* vpcombxx */,
  &gname1402  /* vpcombxxx */,
  &gname1393  /* vpcomd */,
  &gname1402  /* vpcomdx */,
  &gname1402  /* vpcomdxx */,
  &gname1402  /* vpcomdxxx */,
  &gname1393  /* vpcomq */,
  &gname1402  /* vpcomqx */,
  &gname1402  /* vpcomqxx */,
  &gname1402  /* vpcomqxxx */,
  &gname1393  /* vpcomw */,
  &gname1402  /* vpcomwx */,
  &gname1402  /* vpcomwxx */,
  &gname1402  /* vpcomwxxx */,
  &gname1393  /* vpcomub */,
  &gname1402  /* vpcomubx */,
  &gname1402  /* vpcomubxx */,
  &gname1402  /* vpcomubxxx */,
  &gname1393  /* vpcomud */,
  &gname1402  /* vpcomudx */,
  &gname1402  /* vpcomudxx */,
  &gname1402  /* vpcomudxxx */,
  &gname1393  /* vpcomuq */,
  &gname1402  /* vpcomuqx */,
  &gname1402  /* vpcomuqxx */,
  &gname1402  /* vpcomuqxxx */,
  &gname1393  /* vpcomuw */,
  &gname1402  /* vpcomuwx */,
  &gname1402  /* vpcomuwxx */,
  &gname1402  /* vpcomuwxxx */,
  &gname1393  /* vpperm */,
  &gname1402  /* vppermx */,
  &gname1402  /* vppermxx */,
  &gname1402  /* vppermxxx */,
  &gname1402  /* vppermxr */,
  &gname1402  /* vppermxxr */,
  &gname1402  /* vppermxxxr */,
  &gname1411  /* vprotb */,
  &gname1420  /* vprotbx */,
  &gname1420  /* vprotbxx */,
  &gname1420  /* vprotbxxx */,
  &gname1420  /* vprotbxr */,
  &gname1420  /* vprotbxxr */,
  &gname1420  /* vprotbxxxr */,
  &gname1411  /* vprotd */,
  &gname1420  /* vprotdx */,
  &gname1420  /* vprotdxx */,
  &gname1420  /* vprotdxxx */,
  &gname1420  /* vprotdxr */,
  &gname1420  /* vprotdxxr */,
  &gname1420  /* vprotdxxxr */,
  &gname1411  /* vprotq */,
  &gname1420  /* vprotqx */,
  &gname1420  /* vprotqxx */,
  &gname1420  /* vprotqxxx */,
  &gname1420  /* vprotqxr */,
  &gname1420  /* vprotqxxr */,
  &gname1420  /* vprotqxxxr */,
  &gname1411  /* vprotw */,
  &gname1420  /* vprotwx */,
  &gname1420  /* vprotwxx */,
  &gname1420  /* vprotwxxx */,
  &gname1420  /* vprotwxr */,
  &gname1420  /* vprotwxxr */,
  &gname1420  /* vprotwxxxr */,
  &gname1411  /* vpshab */,
  &gname1420  /* vpshabx */,
  &gname1420  /* vpshabxx */,
  &gname1420  /* vpshabxxx */,
  &gname1420  /* vpshabxr */,
  &gname1420  /* vpshabxxr */,
  &gname1420  /* vpshabxxxr */,
  &gname1411  /* vpshad */,
  &gname1420  /* vpshadx */,
  &gname1420  /* vpshadxx */,
  &gname1420  /* vpshadxxx */,
  &gname1420  /* vpshadxr */,
  &gname1420  /* vpshadxxr */,
  &gname1420  /* vpshadxxxr */,
  &gname1411  /* vpshaq */,
  &gname1420  /* vpshaqx */,
  &gname1420  /* vpshaqxx */,
  &gname1420  /* vpshaqxxx */,
  &gname1420  /* vpshaqxr */,
  &gname1420  /* vpshaqxxr */,
  &gname1420  /* vpshaqxxxr */,
  &gname1411  /* vpshaw */,
  &gname1420  /* vpshawx */,
  &gname1420  /* vpshawxx */,
  &gname1420  /* vpshawxxx */,
  &gname1420  /* vpshawxr */,
  &gname1420  /* vpshawxxr */,
  &gname1420  /* vpshawxxxr */,
  &gname1411  /* vpshlb */,
  &gname1420  /* vpshlbx */,
  &gname1420  /* vpshlbxx */,
  &gname1420  /* vpshlbxxx */,
  &gname1420  /* vpshlbxr */,
  &gname1420  /* vpshlbxxr */,
  &gname1420  /* vpshlbxxxr */,
  &gname1411  /* vpshld */,
  &gname1420  /* vpshldx */,
  &gname1420  /* vpshldxx */,
  &gname1420  /* vpshldxxx */,
  &gname1420  /* vpshldxr */,
  &gname1420  /* vpshldxxr */,
  &gname1420  /* vpshldxxxr */,
  &gname1411  /* vpshlq */,
  &gname1420  /* vpshlqx */,
  &gname1420  /* vpshlqxx */,
  &gname1420  /* vpshlqxxx */,
  &gname1420  /* vpshlqxr */,
  &gname1420  /* vpshlqxxr */,
  &gname1420  /* vpshlqxxxr */,
  &gname1411  /* vpshlw */,
  &gname1420  /* vpshlwx */,
  &gname1420  /* vpshlwxx */,
  &gname1420  /* vpshlwxxx */,
  &gname1420  /* vpshlwxr */,
  &gname1420  /* vpshlwxxr */,
  &gname1420  /* vpshlwxxxr */,
  &gname1393  /* vpcmov */,
  &gname1402  /* vpcmovx */,
  &gname1402  /* vpcmovxx */,
  &gname1402  /* vpcmovxxx */,
  &gname1402  /* vpcmovxr */,
  &gname1402  /* vpcmovxxr */,
  &gname1402  /* vpcmovxxxr */,
  &gname1357  /* vpmacsdd */,
  &gname1366  /* vpmacsddx */,
  &gname1366  /* vpmacsddxx */,
  &gname1366  /* vpmacsddxxx */,
  &gname1357  /* vpmacsdqh */,
  &gname1366  /* vpmacsdqhx */,
  &gname1366  /* vpmacsdqhxx */,
  &gname1366  /* vpmacsdqhxxx */,
  &gname1357  /* vpmacsdql */,
  &gname1366  /* vpmacsdqlx */,
  &gname1366  /* vpmacsdqlxx */,
  &gname1366  /* vpmacsdqlxxx */,
  &gname1357  /* vpmacssdd */,
  &gname1366  /* vpmacssddx */,
  &gname1366  /* vpmacssddxx */,
  &gname1366  /* vpmacssddxxx */,
  &gname1357  /* vpmacssdqh */,
  &gname1366  /* vpmacssdqhx */,
  &gname1366  /* vpmacssdqhxx */,
  &gname1366  /* vpmacssdqhxxx */,
  &gname1357  /* vpmacssdql */,
  &gname1366  /* vpmacssdqlx */,
  &gname1366  /* vpmacssdqlxx */,
  &gname1366  /* vpmacssdqlxxx */,
  &gname1357  /* vpmacsswd */,
  &gname1366  /* vpmacsswdx */,
  &gname1366  /* vpmacsswdxx */,
  &gname1366  /* vpmacsswdxxx */,
  &gname1357  /* vpmacssww */,
  &gname1366  /* vpmacsswwx */,
  &gname1366  /* vpmacsswwxx */,
  &gname1366  /* vpmacsswwxxx */,
  &gname1357  /* vpmacswd */,
  &gname1366  /* vpmacswdx */,
  &gname1366  /* vpmacswdxx */,
  &gname1366  /* vpmacswdxxx */,
  &gname1357  /* vpmacsww */,
  &gname1366  /* vpmacswwx */,
  &gname1366  /* vpmacswwxx */,
  &gname1366  /* vpmacswwxxx */,
  &gname1357  /* vpmadcsswd */,
  &gname1366  /* vpmadcsswdx */,
  &gname1366  /* vpmadcsswdxx */,
  &gname1366  /* vpmadcsswdxxx */,
  &gname1357  /* vpmadcswd */,
  &gname1366  /* vpmadcswdx */,
  &gname1366  /* vpmadcswdxx */,
  &gname1366  /* vpmadcswdxxx */,
  &gname1429  /* vfadd128v64 */,
  &gname1438  /* vfaddx128v64 */,
  &gname1438  /* vfaddxx128v64 */,
  &gname1438  /* vfaddxxx128v64 */,
  &gname1429  /* vfadd128v32 */,
  &gname1438  /* vfaddx128v32 */,
  &gname1438  /* vfaddxx128v32 */,
  &gname1438  /* vfaddxxx128v32 */,
  &gname1429  /* vfaddsd */,
  &gname1438  /* vfaddxsd */,
  &gname1438  /* vfaddxxsd */,
  &gname1438  /* vfaddxxxsd */,
  &gname1429  /* vfaddss */,
  &gname1438  /* vfaddxss */,
  &gname1438  /* vfaddxxss */,
  &gname1438  /* vfaddxxxss */,
  &gname1429  /* vfaddsub128v64 */,
  &gname1438  /* vfaddsubx128v64 */,
  &gname1438  /* vfaddsubxx128v64 */,
  &gname1438  /* vfaddsubxxx128v64 */,
  &gname1429  /* vfaddsub128v32 */,
  &gname1438  /* vfaddsubx128v32 */,
  &gname1438  /* vfaddsubxx128v32 */,
  &gname1438  /* vfaddsubxxx128v32 */,
  &gname1591  /* vaesenc */,
  &gname1600  /* vaesencx */,
  &gname1600  /* vaesencxx */,
  &gname1600  /* vaesencxxx */,
  &gname1591  /* vaesenclast */,
  &gname1600  /* vaesenclastx */,
  &gname1600  /* vaesenclastxx */,
  &gname1600  /* vaesenclastxxx */,
  &gname1591  /* vaesdec */,
  &gname1600  /* vaesdecx */,
  &gname1600  /* vaesdecxx */,
  &gname1600  /* vaesdecxxx */,
  &gname1591  /* vaesdeclast */,
  &gname1600  /* vaesdeclastx */,
  &gname1600  /* vaesdeclastxx */,
  &gname1600  /* vaesdeclastxxx */,
  &gname1591  /* vaesimc */,
  &gname1600  /* vaesimcx */,
  &gname1600  /* vaesimcxx */,
  &gname1600  /* vaesimcxxx */,
  &gname1591  /* vaeskeygenassist */,
  &gname1600  /* vaeskeygenassistx */,
  &gname1600  /* vaeskeygenassistxx */,
  &gname1600  /* vaeskeygenassistxxx */,
  &gname1429  /* vandpd */,
  &gname1429  /* vfand128v64 */,
  &gname1438  /* vfandx128v64 */,
  &gname1438  /* vfandxx128v64 */,
  &gname1438  /* vfandxxx128v64 */,
  &gname1429  /* vandps */,
  &gname1429  /* vfand128v32 */,
  &gname1438  /* vfandx128v32 */,
  &gname1438  /* vfandxx128v32 */,
  &gname1438  /* vfandxxx128v32 */,
  &gname1429  /* vandnpd */,
  &gname1429  /* vfandn128v64 */,
  &gname1438  /* vfandnx128v64 */,
  &gname1438  /* vfandnxx128v64 */,
  &gname1438  /* vfandnxxx128v64 */,
  &gname1429  /* vandnps */,
  &gname1429  /* vfandn128v32 */,
  &gname1438  /* vfandnx128v32 */,
  &gname1438  /* vfandnxx128v32 */,
  &gname1438  /* vfandnxxx128v32 */,
  &gname1555  /* vfblend128v64 */,
  &gname1564  /* vfblendx128v64 */,
  &gname1564  /* vfblendxx128v64 */,
  &gname1564  /* vfblendxxx128v64 */,
  &gname1555  /* vfblend128v32 */,
  &gname1564  /* vfblendx128v32 */,
  &gname1564  /* vfblendxx128v32 */,
  &gname1564  /* vfblendxxx128v32 */,
  &gname1555  /* vfblendv128v64 */,
  &gname1564  /* vfblendvx128v64 */,
  &gname1564  /* vfblendvxx128v64 */,
  &gname1564  /* vfblendvxxx128v64 */,
  &gname1555  /* vfblendv128v32 */,
  &gname1564  /* vfblendvx128v32 */,
  &gname1564  /* vfblendvxx128v32 */,
  &gname1564  /* vfblendvxxx128v32 */,
  &gname1663  /* vfbroadcastss */,
  &gname1663  /* vfbroadcastxss */,
  &gname1663  /* vfbroadcastxxss */,
  &gname1663  /* vfbroadcastsd */,
  &gname1663  /* vfbroadcastxsd */,
  &gname1663  /* vfbroadcastxxsd */,
  &gname1663  /* vfbroadcastf128 */,
  &gname1663  /* vfbroadcastxf128 */,
  &gname1663  /* vfbroadcastxxf128 */,
  &gname1447  /* vcmppd */,
  &gname1447  /* vfcmp128v64 */,
  &gname1456  /* vfcmpx128v64 */,
  &gname1456  /* vfcmpxx128v64 */,
  &gname1456  /* vfcmpxxx128v64 */,
  &gname1447  /* vcmpps */,
  &gname1447  /* vfcmp128v32 */,
  &gname1456  /* vfcmpx128v32 */,
  &gname1456  /* vfcmpxx128v32 */,
  &gname1456  /* vfcmpxxx128v32 */,
  &gname1447  /* vfcmpsd */,
  &gname1456  /* vfcmpxsd */,
  &gname1456  /* vfcmpxxsd */,
  &gname1456  /* vfcmpxxxsd */,
  &gname1447  /* vfcmpss */,
  &gname1456  /* vfcmpxss */,
  &gname1456  /* vfcmpxxss */,
  &gname1456  /* vfcmpxxxss */,
  &gname1636  /* vcomisd */,
  &gname1645  /* vcomixsd */,
  &gname1645  /* vcomixxsd */,
  &gname1645  /* vcomixxxsd */,
  &gname1636  /* vcomiss */,
  &gname1645  /* vcomixss */,
  &gname1645  /* vcomixxss */,
  &gname1645  /* vcomixxxss */,
  &gname1708  /* vcvtdq2pd */,
  &gname1717  /* vcvtdq2pdx */,
  &gname1717  /* vcvtdq2pdxx */,
  &gname1717  /* vcvtdq2pdxxx */,
  &gname1708  /* vcvtdq2ps */,
  &gname1717  /* vcvtdq2psx */,
  &gname1717  /* vcvtdq2psxx */,
  &gname1717  /* vcvtdq2psxxx */,
  &gname1708  /* vcvtpd2dq */,
  &gname1717  /* vcvtpd2dqx */,
  &gname1717  /* vcvtpd2dqxx */,
  &gname1717  /* vcvtpd2dqxxx */,
  &gname1708  /* vcvtpd2dqy */,
  &gname1717  /* vcvtpd2dqyx */,
  &gname1717  /* vcvtpd2dqyxx */,
  &gname1717  /* vcvtpd2dqyxxx */,
  &gname1708  /* vcvtpd2ps */,
  &gname1717  /* vcvtpd2psx */,
  &gname1717  /* vcvtpd2psxx */,
  &gname1717  /* vcvtpd2psxxx */,
  &gname1708  /* vcvtpd2psy */,
  &gname1717  /* vcvtpd2psyx */,
  &gname1717  /* vcvtpd2psyxx */,
  &gname1717  /* vcvtpd2psyxxx */,
  &gname1708  /* vcvtps2dq */,
  &gname1717  /* vcvtps2dqx */,
  &gname1717  /* vcvtps2dqxx */,
  &gname1717  /* vcvtps2dqxxx */,
  &gname1708  /* vcvtps2pd */,
  &gname1717  /* vcvtps2pdx */,
  &gname1717  /* vcvtps2pdxx */,
  &gname1717  /* vcvtps2pdxxx */,
  &gname1708  /* vcvtsd2si */,
  &gname1708  /* vcvtsd2siq */,
  &gname1708  /* vcvtsd2ss */,
  &gname1717  /* vcvtsd2ssx */,
  &gname1717  /* vcvtsd2ssxx */,
  &gname1717  /* vcvtsd2ssxxx */,
  &gname1708  /* vcvtsi2sd */,
  &gname1717  /* vcvtsi2sdx */,
  &gname1717  /* vcvtsi2sdxx */,
  &gname1717  /* vcvtsi2sdxxx */,
  &gname1708  /* vcvtsi2sdq */,
  &gname1717  /* vcvtsi2sdqx */,
  &gname1717  /* vcvtsi2sdqxx */,
  &gname1717  /* vcvtsi2sdqxxx */,
  &gname1708  /* vcvtsi2ss */,
  &gname1717  /* vcvtsi2ssx */,
  &gname1717  /* vcvtsi2ssxx */,
  &gname1717  /* vcvtsi2ssxxx */,
  &gname1708  /* vcvtsi2ssq */,
  &gname1717  /* vcvtsi2ssqx */,
  &gname1717  /* vcvtsi2ssqxx */,
  &gname1717  /* vcvtsi2ssqxxx */,
  &gname1708  /* vcvtss2sd */,
  &gname1717  /* vcvtss2sdx */,
  &gname1717  /* vcvtss2sdxx */,
  &gname1717  /* vcvtss2sdxxx */,
  &gname1708  /* vcvtss2si */,
  &gname1708  /* vcvtss2siq */,
  &gname1708  /* vcvttpd2dq */,
  &gname1717  /* vcvttpd2dqx */,
  &gname1717  /* vcvttpd2dqxx */,
  &gname1717  /* vcvttpd2dqxxx */,
  &gname1708  /* vcvttpd2dqy */,
  &gname1717  /* vcvttpd2dqyx */,
  &gname1717  /* vcvttpd2dqyxx */,
  &gname1717  /* vcvttpd2dqyxxx */,
  &gname1708  /* vcvttps2dq */,
  &gname1717  /* vcvttps2dqx */,
  &gname1717  /* vcvttps2dqxx */,
  &gname1717  /* vcvttps2dqxxx */,
  &gname1708  /* vcvttsd2si */,
  &gname1708  /* vcvttsd2siq */,
  &gname1708  /* vcvttss2si */,
  &gname1708  /* vcvttss2siq */,
  &gname1519  /* vfdiv128v64 */,
  &gname1528  /* vfdivx128v64 */,
  &gname1528  /* vfdivxx128v64 */,
  &gname1528  /* vfdivxxx128v64 */,
  &gname1519  /* vfdiv128v32 */,
  &gname1528  /* vfdivx128v32 */,
  &gname1528  /* vfdivxx128v32 */,
  &gname1528  /* vfdivxxx128v32 */,
  &gname1519  /* vdivsd */,
  &gname1528  /* vdivxsd */,
  &gname1528  /* vdivxxsd */,
  &gname1528  /* vdivxxxsd */,
  &gname1519  /* vdivss */,
  &gname1528  /* vdivxss */,
  &gname1528  /* vdivxxss */,
  &gname1528  /* vdivxxxss */,
  &gname1537  /* vfdp128v64 */,
  &gname1546  /* vfdpx128v64 */,
  &gname1546  /* vfdpxx128v64 */,
  &gname1546  /* vfdpxxx128v64 */,
  &gname1537  /* vfdp128v32 */,
  &gname1546  /* vfdpx128v32 */,
  &gname1546  /* vfdpxx128v32 */,
  &gname1546  /* vfdpxxx128v32 */,
  &gname1636  /* vfextrf128 */,
  &gname1645  /* vfextrxf128 */,
  &gname1645  /* vfextrxxf128 */,
  &gname1645  /* vfextrxxxf128 */,
  &gname1636  /* vfextr128v32 */,
  &gname1645  /* vfextrx128v32 */,
  &gname1645  /* vfextrxx128v32 */,
  &gname1645  /* vfextrxxx128v32 */,
  &gname1447  /* vfhadd128v64 */,
  &gname1456  /* vfhaddx128v64 */,
  &gname1456  /* vfhaddxx128v64 */,
  &gname1456  /* vfhaddxxx128v64 */,
  &gname1447  /* vfhadd128v32 */,
  &gname1456  /* vfhaddx128v32 */,
  &gname1456  /* vfhaddxx128v32 */,
  &gname1456  /* vfhaddxxx128v32 */,
  &gname1447  /* vfhsub128v64 */,
  &gname1456  /* vfhsubx128v64 */,
  &gname1456  /* vfhsubxx128v64 */,
  &gname1456  /* vfhsubxxx128v64 */,
  &gname1447  /* vfhsub128v32 */,
  &gname1456  /* vfhsubx128v32 */,
  &gname1456  /* vfhsubxx128v32 */,
  &gname1456  /* vfhsubxxx128v32 */,
  &gname1636  /* vfinsrf128 */,
  &gname1645  /* vfinsrxf128 */,
  &gname1645  /* vfinsrxxf128 */,
  &gname1645  /* vfinsrxxxf128 */,
  &gname1636  /* vfinsr128v32 */,
  &gname1645  /* vfinsrx128v32 */,
  &gname1645  /* vfinsrxx128v32 */,
  &gname1645  /* vfinsrxxx128v32 */,
  &gname1753  /* vlddqu */,
  &gname1753  /* vlddqux */,
  &gname1753  /* vlddquxx */,
  &gname1753  /* vlddqu_n32 */,
  &gname1726  /* vldmxcsr */,
  &gname1654  /* vmaskmovdqu */,
  &gname1609  /* vfmaskld128v32 */,
  &gname1609  /* vfmaskldx128v32 */,
  &gname1609  /* vfmaskldxx128v32 */,
  &gname1609  /* vfmaskld128v64 */,
  &gname1609  /* vfmaskldx128v64 */,
  &gname1609  /* vfmaskldxx128v64 */,
  &gname1654  /* vfmaskst128v32 */,
  &gname1654  /* vfmaskstx128v32 */,
  &gname1654  /* vfmaskstxx128v32 */,
  &gname1654  /* vfmaskst128v64 */,
  &gname1654  /* vfmaskstx128v64 */,
  &gname1654  /* vfmaskstxx128v64 */,
  &gname1447  /* vfmax128v64 */,
  &gname1456  /* vfmaxx128v64 */,
  &gname1456  /* vfmaxxx128v64 */,
  &gname1456  /* vfmaxxxx128v64 */,
  &gname1447  /* vfmax128v32 */,
  &gname1456  /* vfmaxx128v32 */,
  &gname1456  /* vfmaxxx128v32 */,
  &gname1456  /* vfmaxxxx128v32 */,
  &gname1447  /* vfmaxsd */,
  &gname1456  /* vfmaxxsd */,
  &gname1456  /* vfmaxxxsd */,
  &gname1456  /* vfmaxxxxsd */,
  &gname1447  /* vfmaxss */,
  &gname1456  /* vfmaxxss */,
  &gname1456  /* vfmaxxxss */,
  &gname1456  /* vfmaxxxxss */,
  &gname1447  /* vfmin128v64 */,
  &gname1456  /* vfminx128v64 */,
  &gname1456  /* vfminxx128v64 */,
  &gname1456  /* vfminxxx128v64 */,
  &gname1447  /* vfmin128v32 */,
  &gname1456  /* vfminx128v32 */,
  &gname1456  /* vfminxx128v32 */,
  &gname1456  /* vfminxxx128v32 */,
  &gname1447  /* vfminsd */,
  &gname1456  /* vfminxsd */,
  &gname1456  /* vfminxxsd */,
  &gname1456  /* vfminxxxsd */,
  &gname1447  /* vfminss */,
  &gname1456  /* vfminxss */,
  &gname1456  /* vfminxxss */,
  &gname1456  /* vfminxxxss */,
  &gname1636  /* vmovapd */,
  &gname1609  /* vldapd */,
  &gname1609  /* vldapdx */,
  &gname1609  /* vldapdxx */,
  &gname1609  /* vldapd_n32 */,
  &gname1654  /* vstapd */,
  &gname1654  /* vstapdx */,
  &gname1654  /* vstapdxx */,
  &gname1654  /* vstapd_n32 */,
  &gname1636  /* vmovaps */,
  &gname1609  /* vldaps */,
  &gname1609  /* vldapsx */,
  &gname1609  /* vldapsxx */,
  &gname1609  /* vldaps_n32 */,
  &gname1654  /* vstaps */,
  &gname1654  /* vstapsx */,
  &gname1654  /* vstapsxx */,
  &gname1654  /* vstaps_n32 */,
  &gname1654  /* vmovg2x */,
  &gname1654  /* vmovg2x64 */,
  &gname1609  /* vmovx2g */,
  &gname1609  /* vmovx2g64 */,
  &gname1609  /* vld64_2sse */,
  &gname1609  /* vldx64_2sse */,
  &gname1609  /* vldxx64_2sse */,
  &gname1609  /* vld64_2sse_n32 */,
  &gname1654  /* vst64_fsse */,
  &gname1654  /* vstx64_fsse */,
  &gname1654  /* vstxx64_fsse */,
  &gname1654  /* vst64_fsse_n32 */,
  &gname1636  /* vmovddup */,
  &gname1645  /* vmovddupx */,
  &gname1645  /* vmovddupxx */,
  &gname1645  /* vmovddupxxx */,
  &gname1609  /* vlddqa */,
  &gname1609  /* vlddqax */,
  &gname1609  /* vlddqaxx */,
  &gname1609  /* vlddqa_n32 */,
  &gname1636  /* vmovdqa */,
  &gname1654  /* vstdqa */,
  &gname1654  /* vstdqax */,
  &gname1654  /* vstdqaxx */,
  &gname1654  /* vstdqa_n32 */,
  &gname1654  /* vstdqu */,
  &gname1654  /* vstdqux */,
  &gname1654  /* vstdquxx */,
  &gname1654  /* vstdqu_n32 */,
  &gname1609  /* vldhpd */,
  &gname1609  /* vldhpdx */,
  &gname1609  /* vldhpdxx */,
  &gname1609  /* vldhpd_n32 */,
  &gname1654  /* vsthpd */,
  &gname1654  /* vsthpdx */,
  &gname1654  /* vsthpdxx */,
  &gname1654  /* vsthpd_n32 */,
  &gname1609  /* vldhps */,
  &gname1609  /* vldhpsx */,
  &gname1609  /* vldhpsxx */,
  &gname1609  /* vldhps_n32 */,
  &gname1654  /* vsthps */,
  &gname1654  /* vsthpsx */,
  &gname1654  /* vsthpsxx */,
  &gname1654  /* vsthps_n32 */,
  &gname1609  /* vldlpd */,
  &gname1609  /* vldlpdx */,
  &gname1609  /* vldlpdxx */,
  &gname1609  /* vldlpd_n32 */,
  &gname1654  /* vstorelpd */,
  &gname1654  /* vstlpd */,
  &gname1654  /* vstlpdx */,
  &gname1654  /* vstlpdxx */,
  &gname1654  /* vstlpd_n32 */,
  &gname1609  /* vldlps */,
  &gname1609  /* vldlpsx */,
  &gname1609  /* vldlpsxx */,
  &gname1609  /* vldlps_n32 */,
  &gname1654  /* vstlps */,
  &gname1654  /* vstlpsx */,
  &gname1654  /* vstlpsxx */,
  &gname1654  /* vstlps_n32 */,
  &gname1735  /* vmovmskpd */,
  &gname1735  /* vmovmskps */,
  &gname1654  /* vstorenti128 */,
  &gname1654  /* vstorentxi128 */,
  &gname1654  /* vstorentxxi128 */,
  &gname1609  /* vldntdqa */,
  &gname1609  /* vldntdqax */,
  &gname1609  /* vldntdqaxx */,
  &gname1654  /* vstntdq */,
  &gname1654  /* vstntdqx */,
  &gname1654  /* vstntdqxx */,
  &gname1654  /* vstntpd */,
  &gname1654  /* vstntpdx */,
  &gname1654  /* vstntpdxx */,
  &gname1654  /* vstntps */,
  &gname1654  /* vstntpsx */,
  &gname1654  /* vstntpsxx */,
  &gname1654  /* vstntsd */,
  &gname1654  /* vstntsdx */,
  &gname1654  /* vstntsdxx */,
  &gname1654  /* vstntss */,
  &gname1654  /* vstntssx */,
  &gname1654  /* vstntssxx */,
  &gname1636  /* vmovsd */,
  &gname1609  /* vldsd */,
  &gname1609  /* vldsdx */,
  &gname1609  /* vldsdxx */,
  &gname1609  /* vldsd_n32 */,
  &gname1654  /* vstsd */,
  &gname1654  /* vstsdx */,
  &gname1654  /* vstsdxx */,
  &gname1654  /* vstsd_n32 */,
  &gname1636  /* vmovss */,
  &gname1609  /* vldss */,
  &gname1609  /* vldssx */,
  &gname1609  /* vldssxx */,
  &gname1609  /* vldss_n32 */,
  &gname1654  /* vstss */,
  &gname1654  /* vstssx */,
  &gname1654  /* vstssxx */,
  &gname1654  /* vstss_n32 */,
  &gname1636  /* vmovlhps */,
  &gname1636  /* vmovhlps */,
  &gname1636  /* vmovshdup */,
  &gname1645  /* vmovshdupx */,
  &gname1645  /* vmovshdupxx */,
  &gname1645  /* vmovshdupxxx */,
  &gname1636  /* vmovsldup */,
  &gname1645  /* vmovsldupx */,
  &gname1645  /* vmovsldupxx */,
  &gname1645  /* vmovsldupxxx */,
  &gname1753  /* vldupd */,
  &gname1753  /* vldupdx */,
  &gname1753  /* vldupdxx */,
  &gname1753  /* vldupd_n32 */,
  &gname1744  /* vstupd */,
  &gname1744  /* vstupdx */,
  &gname1744  /* vstupdxx */,
  &gname1744  /* vstupd_n32 */,
  &gname1753  /* vldups */,
  &gname1753  /* vldupsx */,
  &gname1753  /* vldupsxx */,
  &gname1753  /* vldups_n32 */,
  &gname1744  /* vstups */,
  &gname1744  /* vstupsx */,
  &gname1744  /* vstupsxx */,
  &gname1744  /* vstups_n32 */,
  &gname1672  /* vmpsadbw */,
  &gname1681  /* vmpsadbwx */,
  &gname1681  /* vmpsadbwxx */,
  &gname1681  /* vmpsadbwxxx */,
  &gname1672  /* vfmul128v64 */,
  &gname1681  /* vfmulx128v64 */,
  &gname1681  /* vfmulxx128v64 */,
  &gname1681  /* vfmulxxx128v64 */,
  &gname1672  /* vfmul128v32 */,
  &gname1681  /* vfmulx128v32 */,
  &gname1681  /* vfmulxx128v32 */,
  &gname1681  /* vfmulxxx128v32 */,
  &gname1672  /* vmulsd */,
  &gname1681  /* vmulxsd */,
  &gname1681  /* vmulxxsd */,
  &gname1681  /* vmulxxxsd */,
  &gname1672  /* vmulss */,
  &gname1681  /* vmulxss */,
  &gname1681  /* vmulxxss */,
  &gname1681  /* vmulxxxss */,
  &gname1447  /* vorpd */,
  &gname1447  /* vfor128v64 */,
  &gname1456  /* vforx128v64 */,
  &gname1456  /* vforxx128v64 */,
  &gname1456  /* vforxxx128v64 */,
  &gname1447  /* vorps */,
  &gname1447  /* vfor128v32 */,
  &gname1456  /* vforx128v32 */,
  &gname1456  /* vforxx128v32 */,
  &gname1456  /* vforxxx128v32 */,
  &gname1429  /* vabs128v8 */,
  &gname1438  /* vabsx128v8 */,
  &gname1438  /* vabsxx128v8 */,
  &gname1438  /* vabsxxx128v8 */,
  &gname1429  /* vabs128v32 */,
  &gname1438  /* vabsx128v32 */,
  &gname1438  /* vabsxx128v32 */,
  &gname1438  /* vabsxxx128v32 */,
  &gname1429  /* vabs128v16 */,
  &gname1438  /* vabsx128v16 */,
  &gname1438  /* vabsxx128v16 */,
  &gname1438  /* vabsxxx128v16 */,
  &gname1636  /* vpackssdw */,
  &gname1645  /* vpackssdwx */,
  &gname1645  /* vpackssdwxx */,
  &gname1645  /* vpackssdwxxx */,
  &gname1636  /* vpacksswb */,
  &gname1645  /* vpacksswbx */,
  &gname1645  /* vpacksswbxx */,
  &gname1645  /* vpacksswbxxx */,
  &gname1636  /* vpackusdw */,
  &gname1645  /* vpackusdwx */,
  &gname1645  /* vpackusdwxx */,
  &gname1645  /* vpackusdwxxx */,
  &gname1636  /* vpackuswb */,
  &gname1645  /* vpackuswbx */,
  &gname1645  /* vpackuswbxx */,
  &gname1645  /* vpackuswbxxx */,
  &gname1429  /* vadd128v8 */,
  &gname1438  /* vaddx128v8 */,
  &gname1438  /* vaddxx128v8 */,
  &gname1438  /* vaddxxx128v8 */,
  &gname1429  /* vadd128v32 */,
  &gname1438  /* vaddx128v32 */,
  &gname1438  /* vaddxx128v32 */,
  &gname1438  /* vaddxxx128v32 */,
  &gname1429  /* vadd128v64 */,
  &gname1438  /* vaddx128v64 */,
  &gname1438  /* vaddxx128v64 */,
  &gname1438  /* vaddxxx128v64 */,
  &gname1429  /* vadd128v16 */,
  &gname1438  /* vaddx128v16 */,
  &gname1438  /* vaddxx128v16 */,
  &gname1438  /* vaddxxx128v16 */,
  &gname1429  /* vadds128v8 */,
  &gname1438  /* vaddsx128v8 */,
  &gname1438  /* vaddsxx128v8 */,
  &gname1438  /* vaddsxxx128v8 */,
  &gname1429  /* vadds128v16 */,
  &gname1438  /* vaddsx128v16 */,
  &gname1438  /* vaddsxx128v16 */,
  &gname1438  /* vaddsxxx128v16 */,
  &gname1429  /* vaddus128v8 */,
  &gname1438  /* vaddusx128v8 */,
  &gname1438  /* vaddusxx128v8 */,
  &gname1438  /* vaddusxxx128v8 */,
  &gname1429  /* vaddus128v16 */,
  &gname1438  /* vaddusx128v16 */,
  &gname1438  /* vaddusxx128v16 */,
  &gname1438  /* vaddusxxx128v16 */,
  &gname1618  /* vpalignr128 */,
  &gname1627  /* vpalignrx128 */,
  &gname1627  /* vpalignrxx128 */,
  &gname1627  /* vpalignrxxx128 */,
  &gname1429  /* vand128v8 */,
  &gname1438  /* vandx128v8 */,
  &gname1438  /* vandxx128v8 */,
  &gname1438  /* vandxxx128v8 */,
  &gname1429  /* vand128v16 */,
  &gname1438  /* vandx128v16 */,
  &gname1438  /* vandxx128v16 */,
  &gname1438  /* vandxxx128v16 */,
  &gname1429  /* vand128v32 */,
  &gname1438  /* vandx128v32 */,
  &gname1438  /* vandxx128v32 */,
  &gname1438  /* vandxxx128v32 */,
  &gname1429  /* vand128v64 */,
  &gname1438  /* vandx128v64 */,
  &gname1438  /* vandxx128v64 */,
  &gname1438  /* vandxxx128v64 */,
  &gname1429  /* vandn128v8 */,
  &gname1438  /* vandnx128v8 */,
  &gname1438  /* vandnxx128v8 */,
  &gname1438  /* vandnxxx128v8 */,
  &gname1429  /* vandn128v16 */,
  &gname1438  /* vandnx128v16 */,
  &gname1438  /* vandnxx128v16 */,
  &gname1438  /* vandnxxx128v16 */,
  &gname1429  /* vandn128v32 */,
  &gname1438  /* vandnx128v32 */,
  &gname1438  /* vandnxx128v32 */,
  &gname1438  /* vandnxxx128v32 */,
  &gname1429  /* vandn128v64 */,
  &gname1438  /* vandnx128v64 */,
  &gname1438  /* vandnxx128v64 */,
  &gname1438  /* vandnxxx128v64 */,
  &gname1429  /* vpavgb */,
  &gname1438  /* vpavgbx */,
  &gname1438  /* vpavgbxx */,
  &gname1438  /* vpavgbxxx */,
  &gname1429  /* vpavgw */,
  &gname1438  /* vpavgwx */,
  &gname1438  /* vpavgwxx */,
  &gname1438  /* vpavgwxxx */,
  &gname1555  /* vblendv128v8 */,
  &gname1564  /* vblendvx128v8 */,
  &gname1564  /* vblendvxx128v8 */,
  &gname1564  /* vblendvxxx128v8 */,
  &gname1555  /* vblend128v16 */,
  &gname1564  /* vblendx128v16 */,
  &gname1564  /* vblendxx128v16 */,
  &gname1564  /* vblendxxx128v16 */,
  &gname1573  /* vpclmulqdq */,
  &gname1582  /* vpclmulqdqx */,
  &gname1582  /* vpclmulqdqxx */,
  &gname1582  /* vpclmulqdqxxx */,
  &gname1591  /* vcmpeq128v8 */,
  &gname1600  /* vcmpeqx128v8 */,
  &gname1600  /* vcmpeqxx128v8 */,
  &gname1600  /* vcmpeqxxx128v8 */,
  &gname1591  /* vcmpeq128v32 */,
  &gname1600  /* vcmpeqx128v32 */,
  &gname1600  /* vcmpeqxx128v32 */,
  &gname1600  /* vcmpeqxxx128v32 */,
  &gname1591  /* vcmpeq128v64 */,
  &gname1600  /* vcmpeqx128v64 */,
  &gname1600  /* vcmpeqxx128v64 */,
  &gname1600  /* vcmpeqxxx128v64 */,
  &gname1591  /* vcmpeq128v16 */,
  &gname1600  /* vcmpeqx128v16 */,
  &gname1600  /* vcmpeqxx128v16 */,
  &gname1600  /* vcmpeqxxx128v16 */,
  &gname1591  /* vcmpestri */,
  &gname1600  /* vcmpestrix */,
  &gname1600  /* vcmpestrixx */,
  &gname1600  /* vcmpestrixxx */,
  &gname1591  /* vcmpestrm */,
  &gname1600  /* vcmpestrmx */,
  &gname1600  /* vcmpestrmxx */,
  &gname1600  /* vcmpestrmxxx */,
  &gname1591  /* vcmpgt128v8 */,
  &gname1600  /* vcmpgtx128v8 */,
  &gname1600  /* vcmpgtxx128v8 */,
  &gname1600  /* vcmpgtxxx128v8 */,
  &gname1591  /* vcmpgt128v32 */,
  &gname1600  /* vcmpgtx128v32 */,
  &gname1600  /* vcmpgtxx128v32 */,
  &gname1600  /* vcmpgtxxx128v32 */,
  &gname1591  /* vcmpgt128v64 */,
  &gname1600  /* vcmpgtx128v64 */,
  &gname1600  /* vcmpgtxx128v64 */,
  &gname1600  /* vcmpgtxxx128v64 */,
  &gname1591  /* vcmpgt128v16 */,
  &gname1600  /* vcmpgtx128v16 */,
  &gname1600  /* vcmpgtxx128v16 */,
  &gname1600  /* vcmpgtxxx128v16 */,
  &gname1591  /* vcmpistri */,
  &gname1600  /* vcmpistrix */,
  &gname1600  /* vcmpistrixx */,
  &gname1600  /* vcmpistrixxx */,
  &gname1591  /* vcmpistrm */,
  &gname1600  /* vcmpistrmx */,
  &gname1600  /* vcmpistrmxx */,
  &gname1600  /* vcmpistrmxxx */,
  &gname1636  /* vfperm128v64 */,
  &gname1645  /* vfpermx128v64 */,
  &gname1645  /* vfpermxx128v64 */,
  &gname1645  /* vfpermxxx128v64 */,
  &gname1636  /* vfpermi128v64 */,
  &gname1645  /* vfpermix128v64 */,
  &gname1645  /* vfpermixx128v64 */,
  &gname1645  /* vfpermixxx128v64 */,
  &gname1636  /* vfperm128v32 */,
  &gname1645  /* vfpermx128v32 */,
  &gname1645  /* vfpermxx128v32 */,
  &gname1645  /* vfpermxxx128v32 */,
  &gname1636  /* vfpermi128v32 */,
  &gname1645  /* vfpermix128v32 */,
  &gname1645  /* vfpermixx128v32 */,
  &gname1645  /* vfpermixxx128v32 */,
  &gname1636  /* vfperm2f128 */,
  &gname1645  /* vfperm2xf128 */,
  &gname1645  /* vfperm2xxf128 */,
  &gname1645  /* vfperm2xxxf128 */,
  &gname1618  /* vextr128v8 */,
  &gname1627  /* vextrx128v8 */,
  &gname1627  /* vextrxx128v8 */,
  &gname1627  /* vextrxxx128v8 */,
  &gname1618  /* vextr128v32 */,
  &gname1627  /* vextrx128v32 */,
  &gname1627  /* vextrxx128v32 */,
  &gname1627  /* vextrxxx128v32 */,
  &gname1618  /* vextr128v64 */,
  &gname1627  /* vextrx128v64 */,
  &gname1627  /* vextrxx128v64 */,
  &gname1627  /* vextrxxx128v64 */,
  &gname1618  /* vextr128v16 */,
  &gname1627  /* vextrx128v16 */,
  &gname1627  /* vextrxx128v16 */,
  &gname1627  /* vextrxxx128v16 */,
  &gname1636  /* vphadd128v32 */,
  &gname1645  /* vphaddx128v32 */,
  &gname1645  /* vphaddxx128v32 */,
  &gname1645  /* vphaddxxx128v32 */,
  &gname1636  /* vphadds128v16 */,
  &gname1645  /* vphaddsx128v16 */,
  &gname1645  /* vphaddsxx128v16 */,
  &gname1645  /* vphaddsxxx128v16 */,
  &gname1447  /* vphadd128v16 */,
  &gname1456  /* vphaddx128v16 */,
  &gname1456  /* vphaddxx128v16 */,
  &gname1456  /* vphaddxxx128v16 */,
  &gname1618  /* vphminposuw */,
  &gname1627  /* vphminposuwx */,
  &gname1627  /* vphminposuwxx */,
  &gname1627  /* vphminposuwxxx */,
  &gname1447  /* vphsub128v32 */,
  &gname1456  /* vphsubx128v32 */,
  &gname1456  /* vphsubxx128v32 */,
  &gname1456  /* vphsubxxx128v32 */,
  &gname1447  /* vphsubs128v16 */,
  &gname1456  /* vphsubsx128v16 */,
  &gname1456  /* vphsubsxx128v16 */,
  &gname1456  /* vphsubsxxx128v16 */,
  &gname1447  /* vphsub128v16 */,
  &gname1456  /* vphsubx128v16 */,
  &gname1456  /* vphsubxx128v16 */,
  &gname1456  /* vphsubxxx128v16 */,
  &gname1618  /* vinsr128v8 */,
  &gname1627  /* vinsrx128v8 */,
  &gname1627  /* vinsrxx128v8 */,
  &gname1627  /* vinsrxxx128v8 */,
  &gname1618  /* vinsr128v32 */,
  &gname1627  /* vinsrx128v32 */,
  &gname1627  /* vinsrxx128v32 */,
  &gname1627  /* vinsrxxx128v32 */,
  &gname1618  /* vinsr128v64 */,
  &gname1627  /* vinsrx128v64 */,
  &gname1627  /* vinsrxx128v64 */,
  &gname1627  /* vinsrxxx128v64 */,
  &gname1618  /* vinsr128v16 */,
  &gname1627  /* vinsrx128v16 */,
  &gname1627  /* vinsrxx128v16 */,
  &gname1627  /* vinsrxxx128v16 */,
  &gname1465  /* vpmaddwd */,
  &gname1474  /* vpmaddwdx */,
  &gname1474  /* vpmaddwdxx */,
  &gname1474  /* vpmaddwdxxx */,
  &gname1465  /* vpmaddubsw128 */,
  &gname1474  /* vpmaddubswx128 */,
  &gname1474  /* vpmaddubswxx128 */,
  &gname1474  /* vpmaddubswxxx128 */,
  &gname1429  /* vmaxs128v8 */,
  &gname1438  /* vmaxsx128v8 */,
  &gname1438  /* vmaxsxx128v8 */,
  &gname1438  /* vmaxsxxx128v8 */,
  &gname1429  /* vmaxs128v32 */,
  &gname1438  /* vmaxsx128v32 */,
  &gname1438  /* vmaxsxx128v32 */,
  &gname1438  /* vmaxsxxx128v32 */,
  &gname1429  /* vmaxs128v16 */,
  &gname1438  /* vmaxsx128v16 */,
  &gname1438  /* vmaxsxx128v16 */,
  &gname1438  /* vmaxsxxx128v16 */,
  &gname1429  /* vmaxu128v8 */,
  &gname1438  /* vmaxux128v8 */,
  &gname1438  /* vmaxuxx128v8 */,
  &gname1438  /* vmaxuxxx128v8 */,
  &gname1429  /* vmaxu128v32 */,
  &gname1438  /* vmaxux128v32 */,
  &gname1438  /* vmaxuxx128v32 */,
  &gname1438  /* vmaxuxxx128v32 */,
  &gname1429  /* vmaxu128v16 */,
  &gname1438  /* vmaxux128v16 */,
  &gname1438  /* vmaxuxx128v16 */,
  &gname1438  /* vmaxuxxx128v16 */,
  &gname1429  /* vmins128v8 */,
  &gname1438  /* vminsx128v8 */,
  &gname1438  /* vminsxx128v8 */,
  &gname1438  /* vminsxxx128v8 */,
  &gname1429  /* vmins128v32 */,
  &gname1438  /* vminsx128v32 */,
  &gname1438  /* vminsxx128v32 */,
  &gname1438  /* vminsxxx128v32 */,
  &gname1429  /* vmins128v16 */,
  &gname1438  /* vminsx128v16 */,
  &gname1438  /* vminsxx128v16 */,
  &gname1438  /* vminsxxx128v16 */,
  &gname1429  /* vminu128v8 */,
  &gname1438  /* vminux128v8 */,
  &gname1438  /* vminuxx128v8 */,
  &gname1438  /* vminuxxx128v8 */,
  &gname1429  /* vminu128v32 */,
  &gname1438  /* vminux128v32 */,
  &gname1438  /* vminuxx128v32 */,
  &gname1438  /* vminuxxx128v32 */,
  &gname1429  /* vminu128v16 */,
  &gname1438  /* vminux128v16 */,
  &gname1438  /* vminuxx128v16 */,
  &gname1438  /* vminuxxx128v16 */,
  &gname1636  /* vpmovmskb128 */,
  &gname1636  /* vpmovsxbd */,
  &gname1645  /* vpmovsxbdx */,
  &gname1645  /* vpmovsxbdxx */,
  &gname1645  /* vpmovsxbdxxx */,
  &gname1636  /* vpmovsxbq */,
  &gname1645  /* vpmovsxbqx */,
  &gname1645  /* vpmovsxbqxx */,
  &gname1645  /* vpmovsxbqxxx */,
  &gname1636  /* vpmovsxbw */,
  &gname1645  /* vpmovsxbwx */,
  &gname1645  /* vpmovsxbwxx */,
  &gname1645  /* vpmovsxbwxxx */,
  &gname1636  /* vpmovsxdq */,
  &gname1645  /* vpmovsxdqx */,
  &gname1645  /* vpmovsxdqxx */,
  &gname1645  /* vpmovsxdqxxx */,
  &gname1636  /* vpmovsxwd */,
  &gname1645  /* vpmovsxwdx */,
  &gname1645  /* vpmovsxwdxx */,
  &gname1645  /* vpmovsxwdxxx */,
  &gname1636  /* vpmovsxwq */,
  &gname1645  /* vpmovsxwqx */,
  &gname1645  /* vpmovsxwqxx */,
  &gname1645  /* vpmovsxwqxxx */,
  &gname1636  /* vpmovzxbd */,
  &gname1645  /* vpmovzxbdx */,
  &gname1645  /* vpmovzxbdxx */,
  &gname1645  /* vpmovzxbdxxx */,
  &gname1636  /* vpmovzxbq */,
  &gname1645  /* vpmovzxbqx */,
  &gname1645  /* vpmovzxbqxx */,
  &gname1645  /* vpmovzxbqxxx */,
  &gname1636  /* vpmovzxbw */,
  &gname1645  /* vpmovzxbwx */,
  &gname1645  /* vpmovzxbwxx */,
  &gname1645  /* vpmovzxbwxxx */,
  &gname1636  /* vpmovzxdq */,
  &gname1645  /* vpmovzxdqx */,
  &gname1645  /* vpmovzxdqxx */,
  &gname1645  /* vpmovzxdqxxx */,
  &gname1636  /* vpmovzxwd */,
  &gname1645  /* vpmovzxwdx */,
  &gname1645  /* vpmovzxwdxx */,
  &gname1645  /* vpmovzxwdxxx */,
  &gname1636  /* vpmovzxwq */,
  &gname1645  /* vpmovzxwqx */,
  &gname1645  /* vpmovzxwqxx */,
  &gname1645  /* vpmovzxwqxxx */,
  &gname1537  /* vmulhuw */,
  &gname1546  /* vmulhuwx */,
  &gname1546  /* vmulhuwxx */,
  &gname1546  /* vmulhuwxxx */,
  &gname1537  /* vmulhrsw */,
  &gname1546  /* vmulhrswx */,
  &gname1546  /* vmulhrswxx */,
  &gname1546  /* vmulhrswxxx */,
  &gname1537  /* vmulhw */,
  &gname1546  /* vmulhwx */,
  &gname1546  /* vmulhwxx */,
  &gname1546  /* vmulhwxxx */,
  &gname1537  /* vmulld */,
  &gname1546  /* vmulldx */,
  &gname1546  /* vmulldxx */,
  &gname1546  /* vmulldxxx */,
  &gname1537  /* vmul128v16 */,
  &gname1546  /* vmulx128v16 */,
  &gname1546  /* vmulxx128v16 */,
  &gname1546  /* vmulxxx128v16 */,
  &gname1537  /* vmul128v32 */,
  &gname1546  /* vmulx128v32 */,
  &gname1546  /* vmulxx128v32 */,
  &gname1546  /* vmulxxx128v32 */,
  &gname1537  /* vmuludq */,
  &gname1546  /* vmuludqx */,
  &gname1546  /* vmuludqxx */,
  &gname1546  /* vmuludqxxx */,
  &gname1537  /* vmuldq */,
  &gname1546  /* vmuldqx */,
  &gname1546  /* vmuldqxx */,
  &gname1546  /* vmuldqxxx */,
  &gname1429  /* vor128v8 */,
  &gname1438  /* vorx128v8 */,
  &gname1438  /* vorxx128v8 */,
  &gname1438  /* vorxxx128v8 */,
  &gname1429  /* vor128v16 */,
  &gname1438  /* vorx128v16 */,
  &gname1438  /* vorxx128v16 */,
  &gname1438  /* vorxxx128v16 */,
  &gname1429  /* vor128v32 */,
  &gname1438  /* vorx128v32 */,
  &gname1438  /* vorxx128v32 */,
  &gname1438  /* vorxxx128v32 */,
  &gname1429  /* vor128v64 */,
  &gname1438  /* vorx128v64 */,
  &gname1438  /* vorxx128v64 */,
  &gname1438  /* vorxxx128v64 */,
  &gname1618  /* vpsadbw */,
  &gname1627  /* vpsadbwx */,
  &gname1627  /* vpsadbwxx */,
  &gname1627  /* vpsadbwxxx */,
  &gname1429  /* vpshuf128v8 */,
  &gname1438  /* vpshufx128v8 */,
  &gname1438  /* vpshufxx128v8 */,
  &gname1438  /* vpshufxxx128v8 */,
  &gname1429  /* vpshuf128v32 */,
  &gname1438  /* vpshufx128v32 */,
  &gname1438  /* vpshufxx128v32 */,
  &gname1438  /* vpshufxxx128v32 */,
  &gname1429  /* vpshufw64v16 */,
  &gname1438  /* vpshufwx64v16 */,
  &gname1438  /* vpshufwxx64v16 */,
  &gname1438  /* vpshufwxxx64v16 */,
  &gname1429  /* vpshufhw */,
  &gname1438  /* vpshufhwx */,
  &gname1438  /* vpshufhwxx */,
  &gname1438  /* vpshufhwxxx */,
  &gname1429  /* vpshuflw */,
  &gname1438  /* vpshuflwx */,
  &gname1438  /* vpshuflwxx */,
  &gname1438  /* vpshuflwxxx */,
  &gname1618  /* vpsign128v8 */,
  &gname1627  /* vpsignx128v8 */,
  &gname1627  /* vpsignxx128v8 */,
  &gname1627  /* vpsignxxx128v8 */,
  &gname1618  /* vpsign128v32 */,
  &gname1627  /* vpsignx128v32 */,
  &gname1627  /* vpsignxx128v32 */,
  &gname1627  /* vpsignxxx128v32 */,
  &gname1618  /* vpsign128v16 */,
  &gname1627  /* vpsignx128v16 */,
  &gname1627  /* vpsignxx128v16 */,
  &gname1627  /* vpsignxxx128v16 */,
  &gname1618  /* vpslldq */,
  &gname1618  /* vpsrldq */,
  &gname1618  /* vpslld */,
  &gname1627  /* vpslldx */,
  &gname1627  /* vpslldxx */,
  &gname1627  /* vpslldxxx */,
  &gname1618  /* vpslldi */,
  &gname1618  /* vpsllq */,
  &gname1627  /* vpsllqx */,
  &gname1627  /* vpsllqxx */,
  &gname1627  /* vpsllqxxx */,
  &gname1618  /* vpsllqi */,
  &gname1618  /* vpsllw */,
  &gname1627  /* vpsllwx */,
  &gname1627  /* vpsllwxx */,
  &gname1627  /* vpsllwxxx */,
  &gname1618  /* vpsllwi */,
  &gname1618  /* vpsrad */,
  &gname1627  /* vpsradx */,
  &gname1627  /* vpsradxx */,
  &gname1627  /* vpsradxxx */,
  &gname1618  /* vpsradi */,
  &gname1618  /* vpsraw */,
  &gname1627  /* vpsrawx */,
  &gname1627  /* vpsrawxx */,
  &gname1627  /* vpsrawxxx */,
  &gname1618  /* vpsrawi */,
  &gname1618  /* vpsrld */,
  &gname1627  /* vpsrldx */,
  &gname1627  /* vpsrldxx */,
  &gname1627  /* vpsrldxxx */,
  &gname1618  /* vpsrldi */,
  &gname1618  /* vpsrlq */,
  &gname1627  /* vpsrlqx */,
  &gname1627  /* vpsrlqxx */,
  &gname1627  /* vpsrlqxxx */,
  &gname1618  /* vpsrlqi */,
  &gname1618  /* vpsrlw */,
  &gname1627  /* vpsrlwx */,
  &gname1627  /* vpsrlwxx */,
  &gname1627  /* vpsrlwxxx */,
  &gname1618  /* vpsrlwi */,
  &gname1618  /* vsub128v8 */,
  &gname1627  /* vsubx128v8 */,
  &gname1627  /* vsubxx128v8 */,
  &gname1627  /* vsubxxx128v8 */,
  &gname1618  /* vsub128v32 */,
  &gname1627  /* vsubx128v32 */,
  &gname1627  /* vsubxx128v32 */,
  &gname1627  /* vsubxxx128v32 */,
  &gname1618  /* vsub128v64 */,
  &gname1627  /* vsubx128v64 */,
  &gname1627  /* vsubxx128v64 */,
  &gname1627  /* vsubxxx128v64 */,
  &gname1618  /* vsub128v16 */,
  &gname1627  /* vsubx128v16 */,
  &gname1627  /* vsubxx128v16 */,
  &gname1627  /* vsubxxx128v16 */,
  &gname1618  /* vsubs128v8 */,
  &gname1627  /* vsubsx128v8 */,
  &gname1627  /* vsubsxx128v8 */,
  &gname1627  /* vsubsxxx128v8 */,
  &gname1618  /* vsubs128v16 */,
  &gname1627  /* vsubsx128v16 */,
  &gname1627  /* vsubsxx128v16 */,
  &gname1627  /* vsubsxxx128v16 */,
  &gname1618  /* vsubus128v8 */,
  &gname1627  /* vsubusx128v8 */,
  &gname1627  /* vsubusxx128v8 */,
  &gname1627  /* vsubusxxx128v8 */,
  &gname1618  /* vsubus128v16 */,
  &gname1627  /* vsubusx128v16 */,
  &gname1627  /* vsubusxx128v16 */,
  &gname1627  /* vsubusxxx128v16 */,
  &gname1690  /* vptest128 */,
  &gname1699  /* vptestx128 */,
  &gname1699  /* vptestxx128 */,
  &gname1699  /* vptestxxx128 */,
  &gname1690  /* vtestpd */,
  &gname1699  /* vtestxpd */,
  &gname1699  /* vtestxxpd */,
  &gname1699  /* vtestxxxpd */,
  &gname1690  /* vtestps */,
  &gname1699  /* vtestxps */,
  &gname1699  /* vtestxxps */,
  &gname1699  /* vtestxxxps */,
  &gname1636  /* vpunpckh64v8 */,
  &gname1645  /* vpunpckhx64v8 */,
  &gname1645  /* vpunpckhxx64v8 */,
  &gname1645  /* vpunpckhxxx64v8 */,
  &gname1636  /* vpunpckh64v32 */,
  &gname1645  /* vpunpckhx64v32 */,
  &gname1645  /* vpunpckhxx64v32 */,
  &gname1645  /* vpunpckhxxx64v32 */,
  &gname1636  /* vpunpckh64v16 */,
  &gname1645  /* vpunpckhx64v16 */,
  &gname1645  /* vpunpckhxx64v16 */,
  &gname1645  /* vpunpckhxxx64v16 */,
  &gname1636  /* vpunpckh64v64 */,
  &gname1645  /* vpunpckhx64v64 */,
  &gname1645  /* vpunpckhxx64v64 */,
  &gname1645  /* vpunpckhxxx64v64 */,
  &gname1636  /* vpunpckl64v8 */,
  &gname1645  /* vpunpcklx64v8 */,
  &gname1645  /* vpunpcklxx64v8 */,
  &gname1645  /* vpunpcklxxx64v8 */,
  &gname1636  /* vpunpckl64v32 */,
  &gname1645  /* vpunpcklx64v32 */,
  &gname1645  /* vpunpcklxx64v32 */,
  &gname1645  /* vpunpcklxxx64v32 */,
  &gname1636  /* vpunpckl64v16 */,
  &gname1645  /* vpunpcklx64v16 */,
  &gname1645  /* vpunpcklxx64v16 */,
  &gname1645  /* vpunpcklxxx64v16 */,
  &gname1636  /* vpunpckl64v64 */,
  &gname1645  /* vpunpcklx64v64 */,
  &gname1645  /* vpunpcklxx64v64 */,
  &gname1645  /* vpunpcklxxx64v64 */,
  &gname1429  /* vxor128v8 */,
  &gname1438  /* vxorx128v8 */,
  &gname1438  /* vxorxx128v8 */,
  &gname1438  /* vxorxxx128v8 */,
  &gname1429  /* vxor128v16 */,
  &gname1438  /* vxorx128v16 */,
  &gname1438  /* vxorxx128v16 */,
  &gname1438  /* vxorxxx128v16 */,
  &gname1429  /* vxor128v32 */,
  &gname1438  /* vxorx128v32 */,
  &gname1438  /* vxorxx128v32 */,
  &gname1438  /* vxorxxx128v32 */,
  &gname1429  /* vxor128v64 */,
  &gname1438  /* vxorx128v64 */,
  &gname1438  /* vxorxx128v64 */,
  &gname1438  /* vxorxxx128v64 */,
  &gname1636  /* vfrcp128v32 */,
  &gname1645  /* vfrcpx128v32 */,
  &gname1645  /* vfrcpxx128v32 */,
  &gname1645  /* vfrcpxxx128v32 */,
  &gname1636  /* vfrcpss */,
  &gname1645  /* vfrcpxss */,
  &gname1645  /* vfrcpxxss */,
  &gname1645  /* vfrcpxxxss */,
  &gname1447  /* vround128v64 */,
  &gname1456  /* vroundx128v64 */,
  &gname1456  /* vroundxx128v64 */,
  &gname1456  /* vroundxxx128v64 */,
  &gname1447  /* vround128v32 */,
  &gname1456  /* vroundx128v32 */,
  &gname1456  /* vroundxx128v32 */,
  &gname1456  /* vroundxxx128v32 */,
  &gname1447  /* vroundsd */,
  &gname1456  /* vroundxsd */,
  &gname1456  /* vroundxxsd */,
  &gname1456  /* vroundxxxsd */,
  &gname1447  /* vroundss */,
  &gname1456  /* vroundxss */,
  &gname1456  /* vroundxxss */,
  &gname1456  /* vroundxxxss */,
  &gname1483  /* vfrsqrt128v32 */,
  &gname1492  /* vfrsqrtx128v32 */,
  &gname1492  /* vfrsqrtxx128v32 */,
  &gname1492  /* vfrsqrtxxx128v32 */,
  &gname1483  /* vfrsqrtss */,
  &gname1492  /* vfrsqrtxss */,
  &gname1492  /* vfrsqrtxxss */,
  &gname1492  /* vfrsqrtxxxss */,
  &gname1636  /* vshufpd */,
  &gname1636  /* vfshuf128v64 */,
  &gname1645  /* vfshufx128v64 */,
  &gname1645  /* vfshufxx128v64 */,
  &gname1645  /* vfshufxxx128v64 */,
  &gname1636  /* vshufps */,
  &gname1636  /* vfshuf128v32 */,
  &gname1645  /* vfshufx128v32 */,
  &gname1645  /* vfshufxx128v32 */,
  &gname1645  /* vfshufxxx128v32 */,
  &gname1501  /* vfsqrt128v64 */,
  &gname1510  /* vfsqrtx128v64 */,
  &gname1510  /* vfsqrtxx128v64 */,
  &gname1510  /* vfsqrtxxx128v64 */,
  &gname1501  /* vfsqrt128v32 */,
  &gname1510  /* vfsqrtx128v32 */,
  &gname1510  /* vfsqrtxx128v32 */,
  &gname1510  /* vfsqrtxxx128v32 */,
  &gname1501  /* vfsqrtsd */,
  &gname1510  /* vfsqrtxsd */,
  &gname1510  /* vfsqrtxxsd */,
  &gname1510  /* vfsqrtxxxsd */,
  &gname1501  /* vfsqrtss */,
  &gname1510  /* vfsqrtxss */,
  &gname1510  /* vfsqrtxxss */,
  &gname1510  /* vfsqrtxxxss */,
  &gname1726  /* vstmxcsr */,
  &gname1636  /* vfsub128v64 */,
  &gname1645  /* vfsubx128v64 */,
  &gname1645  /* vfsubxx128v64 */,
  &gname1645  /* vfsubxxx128v64 */,
  &gname1636  /* vfsub128v32 */,
  &gname1645  /* vfsubx128v32 */,
  &gname1645  /* vfsubxx128v32 */,
  &gname1645  /* vfsubxxx128v32 */,
  &gname1636  /* vsubsd */,
  &gname1645  /* vsubxsd */,
  &gname1645  /* vsubxxsd */,
  &gname1645  /* vsubxxxsd */,
  &gname1636  /* vsubss */,
  &gname1645  /* vsubxss */,
  &gname1645  /* vsubxxss */,
  &gname1645  /* vsubxxxss */,
  &gname1636  /* vucomisd */,
  &gname1645  /* vucomixsd */,
  &gname1645  /* vucomixxsd */,
  &gname1645  /* vucomixxxsd */,
  &gname1636  /* vucomiss */,
  &gname1645  /* vucomixss */,
  &gname1645  /* vucomixxss */,
  &gname1645  /* vucomixxxss */,
  &gname1636  /* vunpckh128v64 */,
  &gname1645  /* vunpckhx128v64 */,
  &gname1645  /* vunpckhxx128v64 */,
  &gname1645  /* vunpckhxxx128v64 */,
  &gname1636  /* vunpckh128v32 */,
  &gname1645  /* vunpckhx128v32 */,
  &gname1645  /* vunpckhxx128v32 */,
  &gname1645  /* vunpckhxxx128v32 */,
  &gname1636  /* vunpckl128v64 */,
  &gname1645  /* vunpcklx128v64 */,
  &gname1645  /* vunpcklxx128v64 */,
  &gname1645  /* vunpcklxxx128v64 */,
  &gname1636  /* vunpckl128v32 */,
  &gname1645  /* vunpcklx128v32 */,
  &gname1645  /* vunpcklxx128v32 */,
  &gname1645  /* vunpcklxxx128v32 */,
  &gname1636  /* vxorpd */,
  &gname1636  /* vfxor128v64 */,
  &gname1456  /* vfxorx128v64 */,
  &gname1456  /* vfxorxx128v64 */,
  &gname1456  /* vfxorxxx128v64 */,
  &gname1636  /* vxzero128v64 */,
  &gname1636  /* vxzero64 */,
  &gname1636  /* vxorps */,
  &gname1636  /* vfxor128v32 */,
  &gname1645  /* vfxorx128v32 */,
  &gname1645  /* vfxorxx128v32 */,
  &gname1645  /* vfxorxxx128v32 */,
  &gname1636  /* vxzero128v32 */,
  &gname1636  /* vxzero32 */,
  &gname925   /* vzeroall */,
  &gname1762  /* xfmadd132pd */,
  &gname1771  /* xfmadd132xpd */,
  &gname1771  /* xfmadd132xxpd */,
  &gname1771  /* xfmadd132xxxpd */,
  &gname1762  /* xfmadd213pd */,
  &gname1771  /* xfmadd213xpd */,
  &gname1771  /* xfmadd213xxpd */,
  &gname1771  /* xfmadd213xxxpd */,
  &gname1762  /* xfmadd231pd */,
  &gname1771  /* xfmadd231xpd */,
  &gname1771  /* xfmadd231xxpd */,
  &gname1771  /* xfmadd231xxxpd */,
  &gname1762  /* xfmadd132ps */,
  &gname1771  /* xfmadd132xps */,
  &gname1771  /* xfmadd132xxps */,
  &gname1771  /* xfmadd132xxxps */,
  &gname1762  /* xfmadd213ps */,
  &gname1771  /* xfmadd213xps */,
  &gname1771  /* xfmadd213xxps */,
  &gname1771  /* xfmadd213xxxps */,
  &gname1762  /* xfmadd231ps */,
  &gname1771  /* xfmadd231xps */,
  &gname1771  /* xfmadd231xxps */,
  &gname1771  /* xfmadd231xxxps */,
  &gname1762  /* xfmadd132sd */,
  &gname1771  /* xfmadd132xsd */,
  &gname1771  /* xfmadd132xxsd */,
  &gname1771  /* xfmadd132xxxsd */,
  &gname1762  /* xfmadd213sd */,
  &gname1771  /* xfmadd213xsd */,
  &gname1771  /* xfmadd213xxsd */,
  &gname1771  /* xfmadd213xxxsd */,
  &gname1762  /* xfmadd231sd */,
  &gname1771  /* xfmadd231xsd */,
  &gname1771  /* xfmadd231xxsd */,
  &gname1771  /* xfmadd231xxxsd */,
  &gname1762  /* xfmadd132ss */,
  &gname1771  /* xfmadd132xss */,
  &gname1771  /* xfmadd132xxss */,
  &gname1771  /* xfmadd132xxxss */,
  &gname1762  /* xfmadd213ss */,
  &gname1771  /* xfmadd213xss */,
  &gname1771  /* xfmadd213xxss */,
  &gname1771  /* xfmadd213xxxss */,
  &gname1762  /* xfmadd231ss */,
  &gname1771  /* xfmadd231xss */,
  &gname1771  /* xfmadd231xxss */,
  &gname1771  /* xfmadd231xxxss */,
  &gname1762  /* xfmaddsub132pd */,
  &gname1771  /* xfmaddsub132xpd */,
  &gname1771  /* xfmaddsub132xxpd */,
  &gname1771  /* xfmaddsub132xxxpd */,
  &gname1762  /* xfmaddsub213pd */,
  &gname1771  /* xfmaddsub213xpd */,
  &gname1771  /* xfmaddsub213xxpd */,
  &gname1771  /* xfmaddsub213xxxpd */,
  &gname1762  /* xfmaddsub231pd */,
  &gname1771  /* xfmaddsub231xpd */,
  &gname1771  /* xfmaddsub231xxpd */,
  &gname1771  /* xfmaddsub231xxxpd */,
  &gname1762  /* xfmaddsub132ps */,
  &gname1771  /* xfmaddsub132xps */,
  &gname1771  /* xfmaddsub132xxps */,
  &gname1771  /* xfmaddsub132xxxps */,
  &gname1762  /* xfmaddsub213ps */,
  &gname1771  /* xfmaddsub213xps */,
  &gname1771  /* xfmaddsub213xxps */,
  &gname1771  /* xfmaddsub213xxxps */,
  &gname1762  /* xfmaddsub231ps */,
  &gname1771  /* xfmaddsub231xps */,
  &gname1771  /* xfmaddsub231xxps */,
  &gname1771  /* xfmaddsub231xxxps */,
  &gname1762  /* xfmsubadd132pd */,
  &gname1771  /* xfmsubadd132xpd */,
  &gname1771  /* xfmsubadd132xxpd */,
  &gname1771  /* xfmsubadd132xxxpd */,
  &gname1762  /* xfmsubadd213pd */,
  &gname1771  /* xfmsubadd213xpd */,
  &gname1771  /* xfmsubadd213xxpd */,
  &gname1771  /* xfmsubadd213xxxpd */,
  &gname1762  /* xfmsubadd231pd */,
  &gname1771  /* xfmsubadd231xpd */,
  &gname1771  /* xfmsubadd231xxpd */,
  &gname1771  /* xfmsubadd231xxxpd */,
  &gname1762  /* xfmsubadd132ps */,
  &gname1771  /* xfmsubadd132xps */,
  &gname1771  /* xfmsubadd132xxps */,
  &gname1771  /* xfmsubadd132xxxps */,
  &gname1762  /* xfmsubadd213ps */,
  &gname1771  /* xfmsubadd213xps */,
  &gname1771  /* xfmsubadd213xxps */,
  &gname1771  /* xfmsubadd213xxxps */,
  &gname1762  /* xfmsubadd231ps */,
  &gname1771  /* xfmsubadd231xps */,
  &gname1771  /* xfmsubadd231xxps */,
  &gname1771  /* xfmsubadd231xxxps */,
  &gname1762  /* xfmsub132pd */,
  &gname1771  /* xfmsub132xpd */,
  &gname1771  /* xfmsub132xxpd */,
  &gname1771  /* xfmsub132xxxpd */,
  &gname1762  /* xfmsub213pd */,
  &gname1771  /* xfmsub213xpd */,
  &gname1771  /* xfmsub213xxpd */,
  &gname1771  /* xfmsub213xxxpd */,
  &gname1762  /* xfmsub231pd */,
  &gname1771  /* xfmsub231xpd */,
  &gname1771  /* xfmsub231xxpd */,
  &gname1771  /* xfmsub231xxxpd */,
  &gname1762  /* xfmsub132ps */,
  &gname1771  /* xfmsub132xps */,
  &gname1771  /* xfmsub132xxps */,
  &gname1771  /* xfmsub132xxxps */,
  &gname1762  /* xfmsub213ps */,
  &gname1771  /* xfmsub213xps */,
  &gname1771  /* xfmsub213xxps */,
  &gname1771  /* xfmsub213xxxps */,
  &gname1762  /* xfmsub231ps */,
  &gname1771  /* xfmsub231xps */,
  &gname1771  /* xfmsub231xxps */,
  &gname1771  /* xfmsub231xxxps */,
  &gname1762  /* xfmsub132sd */,
  &gname1771  /* xfmsub132xsd */,
  &gname1771  /* xfmsub132xxsd */,
  &gname1771  /* xfmsub132xxxsd */,
  &gname1762  /* xfmsub213sd */,
  &gname1771  /* xfmsub213xsd */,
  &gname1771  /* xfmsub213xxsd */,
  &gname1771  /* xfmsub213xxxsd */,
  &gname1762  /* xfmsub231sd */,
  &gname1771  /* xfmsub231xsd */,
  &gname1771  /* xfmsub231xxsd */,
  &gname1771  /* xfmsub231xxxsd */,
  &gname1762  /* xfmsub132ss */,
  &gname1771  /* xfmsub132xss */,
  &gname1771  /* xfmsub132xxss */,
  &gname1771  /* xfmsub132xxxss */,
  &gname1762  /* xfmsub213ss */,
  &gname1771  /* xfmsub213xss */,
  &gname1771  /* xfmsub213xxss */,
  &gname1771  /* xfmsub213xxxss */,
  &gname1762  /* xfmsub231ss */,
  &gname1771  /* xfmsub231xss */,
  &gname1771  /* xfmsub231xxss */,
  &gname1771  /* xfmsub231xxxss */,
  &gname1762  /* xfnmadd132pd */,
  &gname1771  /* xfnmadd132xpd */,
  &gname1771  /* xfnmadd132xxpd */,
  &gname1771  /* xfnmadd132xxxpd */,
  &gname1762  /* xfnmadd213pd */,
  &gname1771  /* xfnmadd213xpd */,
  &gname1771  /* xfnmadd213xxpd */,
  &gname1771  /* xfnmadd213xxxpd */,
  &gname1762  /* xfnmadd231pd */,
  &gname1771  /* xfnmadd231xpd */,
  &gname1771  /* xfnmadd231xxpd */,
  &gname1771  /* xfnmadd231xxxpd */,
  &gname1762  /* xfnmadd132ps */,
  &gname1771  /* xfnmadd132xps */,
  &gname1771  /* xfnmadd132xxps */,
  &gname1771  /* xfnmadd132xxxps */,
  &gname1762  /* xfnmadd213ps */,
  &gname1771  /* xfnmadd213xps */,
  &gname1771  /* xfnmadd213xxps */,
  &gname1771  /* xfnmadd213xxxps */,
  &gname1762  /* xfnmadd231ps */,
  &gname1771  /* xfnmadd231xps */,
  &gname1771  /* xfnmadd231xxps */,
  &gname1771  /* xfnmadd231xxxps */,
  &gname1762  /* xfnmadd132sd */,
  &gname1771  /* xfnmadd132xsd */,
  &gname1771  /* xfnmadd132xxsd */,
  &gname1771  /* xfnmadd132xxxsd */,
  &gname1762  /* xfnmadd213sd */,
  &gname1771  /* xfnmadd213xsd */,
  &gname1771  /* xfnmadd213xxsd */,
  &gname1771  /* xfnmadd213xxxsd */,
  &gname1762  /* xfnmadd231sd */,
  &gname1771  /* xfnmadd231xsd */,
  &gname1771  /* xfnmadd231xxsd */,
  &gname1771  /* xfnmadd231xxxsd */,
  &gname1762  /* xfnmadd132ss */,
  &gname1771  /* xfnmadd132xss */,
  &gname1771  /* xfnmadd132xxss */,
  &gname1771  /* xfnmadd132xxxss */,
  &gname1762  /* xfnmadd213ss */,
  &gname1771  /* xfnmadd213xss */,
  &gname1771  /* xfnmadd213xxss */,
  &gname1771  /* xfnmadd213xxxss */,
  &gname1762  /* xfnmadd231ss */,
  &gname1771  /* xfnmadd231xss */,
  &gname1771  /* xfnmadd231xxss */,
  &gname1771  /* xfnmadd231xxxss */,
  &gname1762  /* xfnmsub132pd */,
  &gname1771  /* xfnmsub132xpd */,
  &gname1771  /* xfnmsub132xxpd */,
  &gname1771  /* xfnmsub132xxxpd */,
  &gname1762  /* xfnmsub213pd */,
  &gname1771  /* xfnmsub213xpd */,
  &gname1771  /* xfnmsub213xxpd */,
  &gname1771  /* xfnmsub213xxxpd */,
  &gname1762  /* xfnmsub231pd */,
  &gname1771  /* xfnmsub231xpd */,
  &gname1771  /* xfnmsub231xxpd */,
  &gname1771  /* xfnmsub231xxxpd */,
  &gname1762  /* xfnmsub132ps */,
  &gname1771  /* xfnmsub132xps */,
  &gname1771  /* xfnmsub132xxps */,
  &gname1771  /* xfnmsub132xxxps */,
  &gname1762  /* xfnmsub213ps */,
  &gname1771  /* xfnmsub213xps */,
  &gname1771  /* xfnmsub213xxps */,
  &gname1771  /* xfnmsub213xxxps */,
  &gname1762  /* xfnmsub231ps */,
  &gname1771  /* xfnmsub231xps */,
  &gname1771  /* xfnmsub231xxps */,
  &gname1771  /* xfnmsub231xxxps */,
  &gname1762  /* xfnmsub132sd */,
  &gname1771  /* xfnmsub132xsd */,
  &gname1771  /* xfnmsub132xxsd */,
  &gname1771  /* xfnmsub132xxxsd */,
  &gname1762  /* xfnmsub213sd */,
  &gname1771  /* xfnmsub213xsd */,
  &gname1771  /* xfnmsub213xxsd */,
  &gname1771  /* xfnmsub213xxxsd */,
  &gname1762  /* xfnmsub231sd */,
  &gname1771  /* xfnmsub231xsd */,
  &gname1771  /* xfnmsub231xxsd */,
  &gname1771  /* xfnmsub231xxxsd */,
  &gname1762  /* xfnmsub132ss */,
  &gname1771  /* xfnmsub132xss */,
  &gname1771  /* xfnmsub132xxss */,
  &gname1771  /* xfnmsub132xxxss */,
  &gname1762  /* xfnmsub213ss */,
  &gname1771  /* xfnmsub213xss */,
  &gname1771  /* xfnmsub213xxss */,
  &gname1771  /* xfnmsub213xxxss */,
  &gname1762  /* xfnmsub231ss */,
  &gname1771  /* xfnmsub231xss */,
  &gname1771  /* xfnmsub231xxss */,
  &gname1771  /* xfnmsub231xxxss */,
  &gname16    /* movabsq */,
  &gname187   /* store8_abs */,
  &gname187   /* store16_abs */,
  &gname187   /* store32_abs */,
  &gname187   /* store64_abs */,
  &gname169   /* ld8_abs */,
  &gname169   /* ld16_abs */,
  &gname178   /* ld32_abs */,
  &gname178   /* ld64_abs */,
  &gname25    /* lock_add32 */,
  &gname25    /* lock_adc32 */,
  &gname25    /* lock_add64 */,
  &gname25    /* lock_xchg32 */,
  &gname25    /* lock_xchg64 */,
  &gname25    /* lock_cmpxchg32 */,
  &gname25    /* lock_cmpxchg64 */,
  &gname25    /* lock_and32 */,
  &gname25    /* lock_and64 */,
  &gname25    /* lock_or32 */,
  &gname25    /* lock_or64 */,
  &gname25    /* lock_xor32 */,
  &gname25    /* lock_xor64 */,
  &gname25    /* lock_sub32 */,
  &gname25    /* lock_sub64 */,
  &gname25    /* lock_add8 */,
  &gname25    /* lock_add16 */,
  &gname25    /* lock_xchg8 */,
  &gname25    /* lock_xchg16 */,
  &gname25    /* lock_cmpxchg8 */,
  &gname25    /* lock_cmpxchg16 */,
  &gname25    /* lock_and8 */,
  &gname25    /* lock_and16 */,
  &gname25    /* lock_or8 */,
  &gname25    /* lock_or16 */,
  &gname25    /* lock_xor8 */,
  &gname25    /* lock_xor16 */,
  &gname25    /* lock_sub8 */,
  &gname25    /* lock_sub16 */,
  &gname25    /* lock_xadd8 */,
  &gname25    /* lock_xadd16 */,
  &gname25    /* lock_xadd32 */,
  &gname25    /* lock_xadd64 */,
  &gname16    /* bsf32 */,
  &gname16    /* bsf64 */,
  &gname16    /* bsr32 */,
  &gname16    /* bsr64 */,
  &gname79    /* tls_global_dynamic_64 */,
  &gname79    /* tls_global_dynamic_32 */,
  &gname79    /* tls_local_dynamic_64 */,
  &gname79    /* tls_local_dynamic_32 */,
  &gname0     /* begin_pregtn */,
  &gname0     /* end_pregtn */,
  &gname0     /* bwd_bar */,
  &gname0     /* fwd_bar */,
  &gname0     /* label */,
  &gname898   /* nop */,
  &gname0     /* noop */
};
const char * sanity_check_targ_so_name = "opteron.so";
