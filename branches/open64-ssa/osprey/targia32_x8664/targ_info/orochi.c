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

/* Instruction group orochi simple alu */
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
  "orochi simple alu",
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
static const mUINT8 latency40[] = {14,14};
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
static const mUINT8 latency49[] = {1,1};
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
static const mUINT8 latency67[] = {4,4};
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
static const mUINT8 latency76[] = {4,4};
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
static const mUINT8 latency85[] = {6,6};
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
static const mUINT8 latency130[] = {19,19};
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
static const mUINT8 latency175[] = {7,7};
static SI gname169 = {
  "load8_16/32/64",
  18             , /* id */
  latency174     , /* operand latency */
  latency175     , /* result latency */
  7              , /* load access time */
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
static const mUINT8 latency211[] = {30,30};
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
static const mUINT8 latency220[] = {41,41};
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

/* Instruction group float-mov 1 */
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
  "float-mov 1",
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

/* Instruction group float-mov 2 */
static const SI_RRW res_req233[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname235[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname234[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency237[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency238[] = {4,4};
static SI gname232 = {
  "float-mov 2",
  25             , /* id */
  latency237     , /* operand latency */
  latency238     , /* result latency */
  0              , /* load access time */
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
  2              , /* resource count vec size */
  gname234       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mov 3 */
static const SI_RRW res_req242[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname244[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname243[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency246[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency247[] = {4,4};
static SI gname241 = {
  "float-mov 3",
  26             , /* id */
  latency246     , /* operand latency */
  latency247     , /* result latency */
  0              , /* load access time */
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
  2              , /* resource count vec size */
  gname243       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-load 1 */
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
static const mUINT8 latency256[] = {5,5};
static SI gname250 = {
  "float-load 1",
  27             , /* id */
  latency255     , /* operand latency */
  latency256     , /* result latency */
  5              , /* load access time */
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

/* Instruction group float-load 2 */
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
static const mUINT8 latency265[] = {4,4};
static SI gname259 = {
  "float-load 2",
  28             , /* id */
  latency264     , /* operand latency */
  latency265     , /* result latency */
  4              , /* load access time */
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

/* Instruction group float-load vector */
static const SI_RRW res_req269[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname271[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname270[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency273[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency274[] = {5,5};
static SI gname268 = {
  "float-load vector",
  29             , /* id */
  latency273     , /* operand latency */
  latency274     , /* result latency */
  5              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
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

/* Instruction group float-load vector II */
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
static const mUINT8 latency283[] = {5,5};
static SI gname277 = {
  "float-load vector II",
  30             , /* id */
  latency282     , /* operand latency */
  latency283     , /* result latency */
  5              , /* load access time */
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

/* Instruction group float-load vector low-high packed-single */
static const SI_RRW res_req287[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname289[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname288[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency291[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency292[] = {7,7};
static SI gname286 = {
  "float-load vector low-high packed-single",
  31             , /* id */
  latency291     , /* operand latency */
  latency292     , /* result latency */
  7              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
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

/* Instruction group float-store vector low-high packed-single */
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
static const mUINT8 latency301[] = {7,7};
static SI gname295 = {
  "float-store vector low-high packed-single",
  32             , /* id */
  latency300     , /* operand latency */
  latency301     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  7              , /* store available time */
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

/* Instruction group float-load vector low-high packed-double */
static const SI_RRW res_req305[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname307[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname306[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency309[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency310[] = {5,5};
static SI gname304 = {
  "float-load vector low-high packed-double",
  33             , /* id */
  latency309     , /* operand latency */
  latency310     , /* result latency */
  5              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
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

/* Instruction group float-store vector low-high packed-double */
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
static const mUINT8 latency319[] = {7,7};
static SI gname313 = {
  "float-store vector low-high packed-double",
  34             , /* id */
  latency318     , /* operand latency */
  latency319     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  7              , /* store available time */
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

/* Instruction group float-store */
static const SI_RRW res_req323[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname325[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname324[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency327[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency328[] = {2,2};
static SI gname322 = {
  "float-store",
  35             , /* id */
  latency327     , /* operand latency */
  latency328     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  2              , /* store available time */
  res_req323     , /* resource requirement */
  gname325       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname324       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector */
static const SI_RRW res_req332[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname334[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname333[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency336[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency337[] = {5,5};
static SI gname331 = {
  "float-store vector",
  36             , /* id */
  latency336     , /* operand latency */
  latency337     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  5              , /* store available time */
  res_req332     , /* resource requirement */
  gname334       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname333       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-store vector II */
static const SI_RRW res_req341[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname343[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname342[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency345[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency346[] = {5,5};
static SI gname340 = {
  "float-store vector II",
  37             , /* id */
  latency345     , /* operand latency */
  latency346     , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  5              , /* store available time */
  res_req341     , /* resource requirement */
  gname343       , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname342       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I */
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
static const mUINT8 latency355[] = {4,4};
static SI gname349 = {
  "vector cvt I",
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

/* Instruction group vector cvt II */
static const SI_RRW res_req359[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname361[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname360[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency363[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency364[] = {7,7};
static SI gname358 = {
  "vector cvt II",
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
  2              , /* resource count vec size */
  gname360       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt III */
static const SI_RRW res_req368[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname370[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname369[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency372[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency373[] = {7,7};
static SI gname367 = {
  "vector cvt III",
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
  2              , /* resource count vec size */
  gname369       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV */
static const SI_RRW res_req377[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname379[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname378[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency381[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency382[] = {4,4};
static SI gname376 = {
  "vector cvt IV",
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
  2              , /* resource count vec size */
  gname378       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt I w/ memory operand */
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
  "vector cvt I w/ memory operand",
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

/* Instruction group vector cvt II w/ memory operand */
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
static const mUINT8 latency400[] = {12,12};
static SI gname394 = {
  "vector cvt II w/ memory operand",
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

/* Instruction group vector cvt III w/ memory operand */
static const SI_RRW res_req404[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname406[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname405[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency408[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency409[] = {12,12};
static SI gname403 = {
  "vector cvt III w/ memory operand",
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
  3              , /* resource count vec size */
  gname405       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt IV w/ memory operand */
static const SI_RRW res_req413[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname415[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname414[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency417[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency418[] = {9,9};
static SI gname412 = {
  "vector cvt IV w/ memory operand",
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
  3              , /* resource count vec size */
  gname414       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float w/ mem */
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
static const mUINT8 latency427[] = {16,16};
static SI gname421 = {
  "int-2-float w/ mem",
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

/* Instruction group int-2-float */
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
static const mUINT8 latency436[] = {9,9};
static SI gname430 = {
  "int-2-float",
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

/* Instruction group double-2-float */
static const SI_RRW res_req440[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname442[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname441[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency444[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency445[] = {4,4};
static SI gname439 = {
  "double-2-float",
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
  2              , /* resource count vec size */
  gname441       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group double-2-float w/ mem */
static const SI_RRW res_req449[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname451[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname450[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency453[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency454[] = {9,9};
static SI gname448 = {
  "double-2-float w/ mem",
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
  3              , /* resource count vec size */
  gname450       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-double */
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
static const mUINT8 latency463[] = {9,9};
static SI gname457 = {
  "int-2-double",
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

/* Instruction group int-2-double w/ mem */
static const SI_RRW res_req467[] = {
  1,
  0xa001
};
static const SI_RESOURCE_ID_SET gname469[] = {
  0x61
};
static SI_RESOURCE_TOTAL gname468[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency471[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency472[] = {16,16};
static SI gname466 = {
  "int-2-double w/ mem",
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
  3              , /* resource count vec size */
  gname468       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group int-2-float */
static const SI_RRW res_req476[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname478[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname477[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency480[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency481[] = {5,5};
static SI gname475 = {
  "int-2-float",
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

/* Instruction group float-2-int */
static const SI_RRW res_req485[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname487[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname486[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency489[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency490[] = {2,2};
static SI gname484 = {
  "float-2-int",
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
  2              , /* resource count vec size */
  gname486       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-2-int 2 */
static const SI_RRW res_req494[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname496[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname495[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency498[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency499[] = {4,4};
static SI gname493 = {
  "float-2-int 2",
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

/* Instruction group float-2-int 2 mem opnd */
static const SI_RRW res_req503[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname505[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname504[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency507[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency508[] = {9,9};
static SI gname502 = {
  "float-2-int 2 mem opnd",
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
  2              , /* resource count vec size */
  gname504       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-2-int 3 */
static const SI_RRW res_req512[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname514[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname513[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency516[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency517[] = {8,8};
static SI gname511 = {
  "float-2-int 3",
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

/* Instruction group float-2-int 3 mem opnd */
static const SI_RRW res_req521[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname523[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname522[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency525[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency526[] = {9,9};
static SI gname520 = {
  "float-2-int 3 mem opnd",
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
  2              , /* resource count vec size */
  gname522       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-2-int 4 */
static const SI_RRW res_req530[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname532[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname531[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency534[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency535[] = {5,5};
static SI gname529 = {
  "float-2-int 4",
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

/* Instruction group float-alu */
static const SI_RRW res_req539[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname541[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname540[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency543[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency544[] = {6,6};
static SI gname538 = {
  "float-alu",
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
  2              , /* resource count vec size */
  gname540       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I */
static const SI_RRW res_req548[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname550[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname549[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency552[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency553[] = {6,6};
static SI gname547 = {
  "float-alu for float vector class I",
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
  2              , /* resource count vec size */
  gname549       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class I w/ memory operand */
static const SI_RRW res_req557[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname559[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname558[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency561[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency562[] = {11,11};
static SI gname556 = {
  "float-alu for float vector class I w/ memory operand",
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

/* Instruction group float-alu for float vector class II */
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
static const mUINT8 latency571[] = {2,2};
static SI gname565 = {
  "float-alu for float vector class II",
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

/* Instruction group float-alu for float vector class II w/ memory operand */
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
static const mUINT8 latency580[] = {7,7};
static SI gname574 = {
  "float-alu for float vector class II w/ memory operand",
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

/* Instruction group float-alu for float vector class III */
static const SI_RRW res_req584[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname586[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname585[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency588[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency589[] = {6,6};
static SI gname583 = {
  "float-alu for float vector class III",
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

/* Instruction group float-alu for float vector class III w/memory operand */
static const SI_RRW res_req593[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname595[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname594[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency597[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency598[] = {11,11};
static SI gname592 = {
  "float-alu for float vector class III w/memory operand",
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
  3              , /* resource count vec size */
  gname594       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu/div for float vector class IV */
static const SI_RRW res_req602[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname604[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname603[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency606[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency607[] = {27,27};
static SI gname601 = {
  "float-alu/div for float vector class IV",
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

/* Instruction group float-alu/sqrt for float vector class IV */
static const SI_RRW res_req611[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname613[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname612[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency615[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency616[] = {30,30};
static SI gname610 = {
  "float-alu/sqrt for float vector class IV",
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

/* Instruction group x87 cosine */
static const SI_RRW res_req620[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname622[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname621[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency624[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency625[] = {93,93};
static SI gname619 = {
  "x87 cosine",
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
  1              , /* resource count vec size */
  gname621       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group x87 sine */
static const SI_RRW res_req629[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname631[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname630[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency633[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency634[] = {93,93};
static SI gname628 = {
  "x87 sine",
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
  1              , /* resource count vec size */
  gname630       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IV w/ memory operand */
static const SI_RRW res_req638[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname640[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname639[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency642[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency643[] = {32,32};
static SI gname637 = {
  "float-alu for float vector class IV w/ memory operand",
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
  3              , /* resource count vec size */
  gname639       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class V */
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
static const mUINT8 latency652[] = {30,30};
static SI gname646 = {
  "float-alu for float vector class V",
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

/* Instruction group float-alu for float vector class V w/ memory operand */
static const SI_RRW res_req656[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname658[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname657[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency660[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency661[] = {35,35};
static SI gname655 = {
  "float-alu for float vector class V w/ memory operand",
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
  3              , /* resource count vec size */
  gname657       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-vector fma4 */
static const SI_RRW res_req665[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname667[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname666[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency669[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency670[] = {6,6};
static SI gname664 = {
  "float-vector fma4",
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

/* Instruction group float-vector fma4 mem opnd */
static const SI_RRW res_req674[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname676[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname675[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency678[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency679[] = {11,11};
static SI gname673 = {
  "float-vector fma4 mem opnd",
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

/* Instruction group float-alu for float vector class VI */
static const SI_RRW res_req683[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname685[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname684[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency687[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency688[] = {2,2};
static SI gname682 = {
  "float-alu for float vector class VI",
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

/* Instruction group float-alu for float vector class VI w/ memory operand */
static const SI_RRW res_req692[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname694[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname693[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency696[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency697[] = {7,7};
static SI gname691 = {
  "float-alu for float vector class VI w/ memory operand",
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

/* Instruction group float-alu for float vector class VII */
static const SI_RRW res_req701[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname703[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname702[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency705[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency706[] = {32,32};
static SI gname700 = {
  "float-alu for float vector class VII",
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

/* Instruction group float-alu for float vector class VIII */
static const SI_RRW res_req710[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname712[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname711[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency714[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency715[] = {41,41};
static SI gname709 = {
  "float-alu for float vector class VIII",
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
  2              , /* resource count vec size */
  gname711       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class IX */
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
static const mUINT8 latency724[] = {5,5};
static SI gname718 = {
  "float-alu for float vector class IX",
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

/* Instruction group float-alu for float vector class X */
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
  "float-alu for float vector class X",
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

/* Instruction group float-alu for float vector class XI */
static const SI_RRW res_req737[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname739[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname738[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency741[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency742[] = {2,2};
static SI gname736 = {
  "float-alu for float vector class XI",
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

/* Instruction group float-alu for float vector class XII */
static const SI_RRW res_req746[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname748[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname747[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency750[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency751[] = {2,2};
static SI gname745 = {
  "float-alu for float vector class XII",
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

/* Instruction group float-alu for float vector class XII w/ memory operand */
static const SI_RRW res_req755[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname757[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname756[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency759[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency760[] = {5,5};
static SI gname754 = {
  "float-alu for float vector class XII w/ memory operand",
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
  3              , /* resource count vec size */
  gname756       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIIa */
static const SI_RRW res_req764[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname766[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname765[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency768[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency769[] = {2,2};
static SI gname763 = {
  "float-alu for float vector class XIIa",
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
  2              , /* resource count vec size */
  gname765       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mmx shuffle */
static const SI_RRW res_req773[] = {
  1,
  0xa01
};
static const SI_RESOURCE_ID_SET gname775[] = {
  0x19
};
static SI_RESOURCE_TOTAL gname774[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency777[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency778[] = {3,3};
static SI gname772 = {
  "mmx shuffle",
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
  3              , /* resource count vec size */
  gname774       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XIII */
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
static const mUINT8 latency787[] = {3,3};
static SI gname781 = {
  "float-alu for float vector class XIII",
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

/* Instruction group float-alu for float vector class XIV */
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
static const mUINT8 latency796[] = {2,2};
static SI gname790 = {
  "float-alu for float vector class XIV",
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

/* Instruction group float-alu for float vector class XV */
static const SI_RRW res_req800[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname802[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname801[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency804[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency805[] = {2,2};
static SI gname799 = {
  "float-alu for float vector class XV",
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
  2              , /* resource count vec size */
  gname801       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse parallel compares */
static const SI_RRW res_req809[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname811[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname810[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency813[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency814[] = {2,2};
static SI gname808 = {
  "sse parallel compares",
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
  2              , /* resource count vec size */
  gname810       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for float vector class XVI */
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
  "float-alu for float vector class XVI",
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

/* Instruction group float-alu for float vector class XVII */
static const SI_RRW res_req827[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname829[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname828[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency831[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency832[] = {7,7};
static SI gname826 = {
  "float-alu for float vector class XVII",
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
  3              , /* resource count vec size */
  gname828       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for int vector */
static const SI_RRW res_req836[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname838[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname837[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency840[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency841[] = {2,2};
static SI gname835 = {
  "float-alu for int vector",
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

/* Instruction group float-alu for int mpy vector */
static const SI_RRW res_req845[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname847[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname846[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency849[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency850[] = {4,4};
static SI gname844 = {
  "float-alu for int mpy vector",
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
  2              , /* resource count vec size */
  gname846       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-alu for mmx int mpy vector */
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
static const mUINT8 latency859[] = {4,4};
static SI gname853 = {
  "float-alu for mmx int mpy vector",
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

/* Instruction group float-alu for int vector w/ memory operand */
static const SI_RRW res_req863[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname865[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname864[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency867[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency868[] = {7,7};
static SI gname862 = {
  "float-alu for int vector w/ memory operand",
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

/* Instruction group float-alu w/ memory operand */
static const SI_RRW res_req872[] = {
  1,
  0x8801
};
static const SI_RESOURCE_ID_SET gname874[] = {
  0x51
};
static SI_RESOURCE_TOTAL gname873[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency876[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency877[] = {11,11};
static SI gname871 = {
  "float-alu w/ memory operand",
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
  3              , /* resource count vec size */
  gname873       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-max/min */
static const SI_RRW res_req881[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname883[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname882[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency885[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency886[] = {2,2};
static SI gname880 = {
  "float-max/min",
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

/* Instruction group float-xorp */
static const SI_RRW res_req890[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname892[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname891[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency894[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency895[] = {2,2};
static SI gname889 = {
  "float-xorp",
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

/* Instruction group float-xorp 2 */
static const SI_RRW res_req899[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname901[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname900[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency903[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency904[] = {5,5};
static SI gname898 = {
  "float-xorp 2",
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

/* Instruction group float-mul */
static const SI_RRW res_req908[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname910[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname909[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency912[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency913[] = {6,6};
static SI gname907 = {
  "float-mul",
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
  2              , /* resource count vec size */
  gname909       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-mul w/ mem operand */
static const SI_RRW res_req917[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname919[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname918[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency921[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency922[] = {11,11};
static SI gname916 = {
  "float-mul w/ mem operand",
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
  3              , /* resource count vec size */
  gname918       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide ss */
static const SI_RRW res_req926[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname928[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname927[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency930[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency931[] = {25,25};
static SI gname925 = {
  "float-divide ss",
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
  2              , /* resource count vec size */
  gname927       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide sd */
static const SI_RRW res_req935[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname937[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname936[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency939[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency940[] = {30,30};
static SI gname934 = {
  "float-divide sd",
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
  2              , /* resource count vec size */
  gname936       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide x87 */
static const SI_RRW res_req944[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname946[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname945[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency948[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency949[] = {25,25};
static SI gname943 = {
  "float-divide x87",
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
  2              , /* resource count vec size */
  gname945       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide 1 w/ mem operand */
static const SI_RRW res_req953[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname955[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname954[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency957[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency958[] = {30,30};
static SI gname952 = {
  "float-divide 1 w/ mem operand",
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
  3              , /* resource count vec size */
  gname954       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-divide 2 w/ mem operand */
static const SI_RRW res_req962[] = {
  1,
  0x8201
};
static const SI_RESOURCE_ID_SET gname964[] = {
  0x49
};
static SI_RESOURCE_TOTAL gname963[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource15,1} /* loadstore */
};
static const mUINT8 latency966[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency967[] = {35,35};
static SI gname961 = {
  "float-divide 2 w/ mem operand",
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
  3              , /* resource count vec size */
  gname963       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group float-others */
static const SI_RRW res_req971[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname973[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname972[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency975[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency976[] = {4,4};
static SI gname970 = {
  "float-others",
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
  2              , /* resource count vec size */
  gname972       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sync */
static const SI_RRW res_req980[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname982[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname981[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency984[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency985[] = {0,0};
static SI gname979 = {
  "sync",
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
  2              , /* resource count vec size */
  gname981       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group prefetch */
static const SI_RRW res_req989[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname991[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname990[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency993[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency994[] = {0,0};
static SI gname988 = {
  "prefetch",
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

/* Instruction group nop */
static const SI_RRW res_req998[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1000[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname999[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1002[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1003[] = {0,0};
static SI gname997 = {
  "nop",
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
  2              , /* resource count vec size */
  gname999       , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group emms */
static const SI_RRW res_req1007[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname1009[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname1008[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1011[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1012[] = {1,1};
static SI gname1006 = {
  "emms",
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
  4              , /* resource count vec size */
  gname1008      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group clflush */
static const SI_RRW res_req1016[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1018[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1017[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1020[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1021[] = {0,0};
static SI gname1015 = {
  "clflush",
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

/* Instruction group zeroupper */
static const SI_RRW res_req1025[] = {
  1,
  0x2a01
};
static const SI_RESOURCE_ID_SET gname1027[] = {
  0x39
};
static SI_RESOURCE_TOTAL gname1026[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1029[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1030[] = {1,1};
static SI gname1024 = {
  "zeroupper",
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
  4              , /* resource count vec size */
  gname1026      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-int-2-mmx */
static const SI_RRW res_req1034[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1036[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1035[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1038[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1039[] = {9,9};
static SI gname1033 = {
  "mov-int-2-mmx",
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
  1              , /* resource count vec size */
  gname1035      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-int */
static const SI_RRW res_req1043[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1045[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1044[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1047[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1048[] = {3,3};
static SI gname1042 = {
  "mov-mmx-2-int",
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
  1              , /* resource count vec size */
  gname1044      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-mmx-2-sse */
static const SI_RRW res_req1052[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1054[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1053[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1056[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1057[] = {2,2};
static SI gname1051 = {
  "mov-mmx-2-sse",
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
  1              , /* resource count vec size */
  gname1053      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group mov-sse_2_mmx */
static const SI_RRW res_req1061[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1063[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1062[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1065[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1066[] = {2,2};
static SI gname1060 = {
  "mov-sse_2_mmx",
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
  1              , /* resource count vec size */
  gname1062      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx 1 */
static const SI_RRW res_req1070[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1072[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1071[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1074[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1075[] = {9,9};
static SI gname1069 = {
  "vector cvt sse <-> mmx 1",
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
  1              , /* resource count vec size */
  gname1071      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group vector cvt sse <-> mmx 2 */
static const SI_RRW res_req1079[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1081[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1080[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1083[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1084[] = {7,7};
static SI gname1078 = {
  "vector cvt sse <-> mmx 2",
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
  1              , /* resource count vec size */
  gname1080      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE movmsk */
static const SI_RRW res_req1088[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1090[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1089[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1092[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1093[] = {5,5};
static SI gname1087 = {
  "SSE movmsk",
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
  1              , /* resource count vec size */
  gname1089      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A extract reg opnd */
static const SI_RRW res_req1097[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1099[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1098[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1101[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1102[] = {3,3};
static SI gname1096 = {
  "SSE4A extract reg opnd",
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
  2              , /* resource count vec size */
  gname1098      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group SSE4A insert reg opnd */
static const SI_RRW res_req1106[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1108[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1107[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1110[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1111[] = {3,3};
static SI gname1105 = {
  "SSE4A insert reg opnd",
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
  1              , /* resource count vec size */
  gname1107      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group monitor mwait */
static const SI_RRW res_req1115[] = {
  1,
  0x41
};
static const SI_RESOURCE_ID_SET gname1117[] = {
  0x5
};
static SI_RESOURCE_TOTAL gname1116[] = {
  {&resource9,1} /* issue */,
  {&resource11,1} /* agu */
};
static const mUINT8 latency1119[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1120[] = {0,0};
static SI gname1114 = {
  "monitor mwait",
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
  2              , /* resource count vec size */
  gname1116      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group ssse3 misc reg opnd */
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
  "ssse3 misc reg opnd",
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

/* Instruction group ssse3 misc mem opnd */
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
static const mUINT8 latency1138[] = {7,7};
static SI gname1132 = {
  "ssse3 misc mem opnd",
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

/* Instruction group ssse3 hadd reg opnd */
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
static const mUINT8 latency1147[] = {5,5};
static SI gname1141 = {
  "ssse3 hadd reg opnd",
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

/* Instruction group ssse3 hadd mem opnd */
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
static const mUINT8 latency1156[] = {10,10};
static SI gname1150 = {
  "ssse3 hadd mem opnd",
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

/* Instruction group ssse3 mul reg opnd */
static const SI_RRW res_req1160[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1162[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1161[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1164[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1165[] = {4,4};
static SI gname1159 = {
  "ssse3 mul reg opnd",
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

/* Instruction group ssse3 mul mem opnd */
static const SI_RRW res_req1169[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1171[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1170[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1173[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1174[] = {9,9};
static SI gname1168 = {
  "ssse3 mul mem opnd",
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

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1178[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1180[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1179[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1182[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1183[] = {2,2};
static SI gname1177 = {
  "sse4.1 pmov reg opnd",
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

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1187[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1189[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1188[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1191[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1192[] = {7,7};
static SI gname1186 = {
  "sse4.1 pmov mem opnd",
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

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1196[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1198[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1197[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1200[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1201[] = {4,4};
static SI gname1195 = {
  "sse4.1 misc reg opnd",
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
  2              , /* resource count vec size */
  gname1197      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1205[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1207[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1206[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1209[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1210[] = {9,9};
static SI gname1204 = {
  "sse4.1 misc mem opnd",
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
  3              , /* resource count vec size */
  gname1206      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend reg opnd */
static const SI_RRW res_req1214[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1216[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1215[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1218[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1219[] = {5,5};
static SI gname1213 = {
  "sse4.1 blend reg opnd",
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
  2              , /* resource count vec size */
  gname1215      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 blend mem opnd */
static const SI_RRW res_req1223[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1225[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1224[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1227[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1228[] = {10,10};
static SI gname1222 = {
  "sse4.1 blend mem opnd",
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
  3              , /* resource count vec size */
  gname1224      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr reg opnd */
static const SI_RRW res_req1232[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1234[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1233[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1236[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1237[] = {2,2};
static SI gname1231 = {
  "sse4.1 insr extr reg opnd",
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
  2              , /* resource count vec size */
  gname1233      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 insr extr mem opnd */
static const SI_RRW res_req1241[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1243[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1242[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1245[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1246[] = {4,4};
static SI gname1240 = {
  "sse4.1 insr extr mem opnd",
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
  3              , /* resource count vec size */
  gname1242      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1250[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1252[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1251[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1254[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1255[] = {4,4};
static SI gname1249 = {
  "sse4.1 misc reg opnd",
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

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1259[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1261[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1260[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1263[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1264[] = {9,9};
static SI gname1258 = {
  "sse4.1 misc mem opnd",
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

/* Instruction group sse4.1 finsr fextr reg opnd */
static const SI_RRW res_req1268[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1270[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1269[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1272[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1273[] = {5,5};
static SI gname1267 = {
  "sse4.1 finsr fextr reg opnd",
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

/* Instruction group sse4.1 finsr fextr mem opnd */
static const SI_RRW res_req1277[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1279[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1278[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1281[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1282[] = {10,10};
static SI gname1276 = {
  "sse4.1 finsr fextr mem opnd",
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

/* Instruction group sse4.1 misc reg opnd */
static const SI_RRW res_req1286[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1288[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1287[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1290[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1291[] = {4,4};
static SI gname1285 = {
  "sse4.1 misc reg opnd",
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

/* Instruction group sse4.1 misc mem opnd */
static const SI_RRW res_req1295[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1297[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1296[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1299[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1300[] = {9,9};
static SI gname1294 = {
  "sse4.1 misc mem opnd",
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

/* Instruction group sse4.1 load ntdqa */
static const SI_RRW res_req1304[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1306[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1305[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1308[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1309[] = {2,2};
static SI gname1303 = {
  "sse4.1 load ntdqa",
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
  1              , /* resource count vec size */
  gname1305      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 store ntdqa */
static const SI_RRW res_req1313[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1315[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1314[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1317[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1318[] = {2,2};
static SI gname1312 = {
  "sse4.1 store ntdqa",
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
  2              , /* resource count vec size */
  gname1314      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov reg opnd */
static const SI_RRW res_req1322[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1324[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1323[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1326[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1327[] = {2,2};
static SI gname1321 = {
  "sse4.1 pmov reg opnd",
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
  1              , /* resource count vec size */
  gname1323      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 pmov mem opnd */
static const SI_RRW res_req1331[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1333[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1332[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1335[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1336[] = {7,7};
static SI gname1330 = {
  "sse4.1 pmov mem opnd",
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
  2              , /* resource count vec size */
  gname1332      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest reg opnd */
static const SI_RRW res_req1340[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1342[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1341[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1344[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1345[] = {5,5};
static SI gname1339 = {
  "sse4.1 ptest reg opnd",
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
  1              , /* resource count vec size */
  gname1341      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.1 ptest mem opnd */
static const SI_RRW res_req1349[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1351[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1350[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1353[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1354[] = {10,10};
static SI gname1348 = {
  "sse4.1 ptest mem opnd",
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
  2              , /* resource count vec size */
  gname1350      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 crc reg opnd */
static const SI_RRW res_req1358[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1360[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1359[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1362[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1363[] = {5,5};
static SI gname1357 = {
  "sse4.2 crc reg opnd",
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

/* Instruction group sse4.2 crc mem opnd */
static const SI_RRW res_req1367[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1369[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1368[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1371[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1372[] = {10,10};
static SI gname1366 = {
  "sse4.2 crc mem opnd",
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

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1376[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1378[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1377[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1380[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1381[] = {10,10};
static SI gname1375 = {
  "sse4.2 pcmp reg opnd",
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
  2              , /* resource count vec size */
  gname1377      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1385[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1387[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1386[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1389[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1390[] = {20,20};
static SI gname1384 = {
  "sse4.2 pcmp mem opnd",
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
  3              , /* resource count vec size */
  gname1386      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp reg opnd */
static const SI_RRW res_req1394[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname1396[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname1395[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency1398[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1399[] = {5,5};
static SI gname1393 = {
  "sse4.2 pcmp reg opnd",
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
  2              , /* resource count vec size */
  gname1395      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group sse4.2 pcmp mem opnd */
static const SI_RRW res_req1403[] = {
  1,
  0x2009
};
static const SI_RESOURCE_ID_SET gname1405[] = {
  0x23
};
static SI_RESOURCE_TOTAL gname1404[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1407[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1408[] = {10,10};
static SI gname1402 = {
  "sse4.2 pcmp mem opnd",
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
  3              , /* resource count vec size */
  gname1404      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes reg opnd */
static const SI_RRW res_req1412[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1414[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1413[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1416[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1417[] = {10,10};
static SI gname1411 = {
  "aes reg opnd",
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
  2              , /* resource count vec size */
  gname1413      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group aes mem opnd */
static const SI_RRW res_req1421[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1423[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1422[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1425[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1426[] = {20,20};
static SI gname1420 = {
  "aes mem opnd",
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
  3              , /* resource count vec size */
  gname1422      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group pclmul reg opnd */
static const SI_RRW res_req1430[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1432[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1431[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1434[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1435[] = {6,6};
static SI gname1429 = {
  "pclmul reg opnd",
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

/* Instruction group pclmul mem opnd */
static const SI_RRW res_req1439[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1441[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1440[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1443[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1444[] = {11,11};
static SI gname1438 = {
  "pclmul mem opnd",
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

/* Instruction group xop.desc.sort_by_print reg opnd */
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
  "xop.desc.sort_by_print reg opnd",
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

/* Instruction group xop.desc.sort_by_print mem opnd */
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
  "xop.desc.sort_by_print mem opnd",
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

/* Instruction group xop fma reg opnd */
static const SI_RRW res_req1466[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1468[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1467[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1470[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1471[] = {4,4};
static SI gname1465 = {
  "xop fma reg opnd",
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

/* Instruction group xop fma mem opnd */
static const SI_RRW res_req1475[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1477[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1476[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1479[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1480[] = {9,9};
static SI gname1474 = {
  "xop fma mem opnd",
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

/* Instruction group xop fma II reg opnd */
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
static const mUINT8 latency1489[] = {8,8};
static SI gname1483 = {
  "xop fma II reg opnd",
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

/* Instruction group xop fma II mem opnd */
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
static const mUINT8 latency1498[] = {13,13};
static SI gname1492 = {
  "xop fma II mem opnd",
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

/* Instruction group xop frcz reg opnd */
static const SI_RRW res_req1502[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1504[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1503[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1506[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1507[] = {10,10};
static SI gname1501 = {
  "xop frcz reg opnd",
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
  1              , /* resource count vec size */
  gname1503      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop frcz mem opnd */
static const SI_RRW res_req1511[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1513[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1512[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1515[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1516[] = {15,15};
static SI gname1510 = {
  "xop frcz mem opnd",
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
  2              , /* resource count vec size */
  gname1512      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print reg opnd */
static const SI_RRW res_req1520[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1522[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1521[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1524[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1525[] = {2,2};
static SI gname1519 = {
  "xop.desc.sort_by_print reg opnd",
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
  1              , /* resource count vec size */
  gname1521      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop.desc.sort_by_print mem opnd */
static const SI_RRW res_req1529[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1531[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1530[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1533[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1534[] = {7,7};
static SI gname1528 = {
  "xop.desc.sort_by_print mem opnd",
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
  2              , /* resource count vec size */
  gname1530      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem reg opnd */
static const SI_RRW res_req1538[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1540[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1539[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1542[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1543[] = {3,3};
static SI gname1537 = {
  "xop rotate mem reg opnd",
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
  1              , /* resource count vec size */
  gname1539      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group xop rotate mem mem opnd */
static const SI_RRW res_req1547[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1549[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1548[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1551[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1552[] = {8,8};
static SI gname1546 = {
  "xop rotate mem mem opnd",
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
  2              , /* resource count vec size */
  gname1548      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1556[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1558[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1557[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1560[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1561[] = {2,2};
static SI gname1555 = {
  "avx int arith reg opnd",
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

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1565[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1567[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1566[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1569[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1570[] = {7,7};
static SI gname1564 = {
  "avx int arith mem opnd",
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

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1574[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1576[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1575[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1578[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1579[] = {2,2};
static SI gname1573 = {
  "avx fp arith reg opnd",
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

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1583[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1585[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1584[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1587[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1588[] = {7,7};
static SI gname1582 = {
  "avx fp arith mem opnd",
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

/* Instruction group avx fp arith II reg opnd */
static const SI_RRW res_req1592[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1594[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1593[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1596[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1597[] = {10,10};
static SI gname1591 = {
  "avx fp arith II reg opnd",
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
  2              , /* resource count vec size */
  gname1593      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith II mem opnd */
static const SI_RRW res_req1601[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1603[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1602[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1605[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1606[] = {15,15};
static SI gname1600 = {
  "avx fp arith II mem opnd",
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
  3              , /* resource count vec size */
  gname1602      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith III reg opnd */
static const SI_RRW res_req1610[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1612[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1611[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1614[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1615[] = {4,4};
static SI gname1609 = {
  "avx fp arith III reg opnd",
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

/* Instruction group avx fp arith III mem opnd */
static const SI_RRW res_req1619[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1621[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1620[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1623[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1624[] = {9,9};
static SI gname1618 = {
  "avx fp arith III mem opnd",
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
  3              , /* resource count vec size */
  gname1620      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1628[] = {
  1,
  0x801
};
static const SI_RESOURCE_ID_SET gname1630[] = {
  0x11
};
static SI_RESOURCE_TOTAL gname1629[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */
};
static const mUINT8 latency1632[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1633[] = {4,4};
static SI gname1627 = {
  "avx fp mul reg opnd",
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

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1637[] = {
  1,
  0x2801
};
static const SI_RESOURCE_ID_SET gname1639[] = {
  0x31
};
static SI_RESOURCE_TOTAL gname1638[] = {
  {&resource9,1} /* issue */,
  {&resource13,1} /* fadd */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1641[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1642[] = {9,9};
static SI gname1636 = {
  "avx fp mul mem opnd",
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
  3              , /* resource count vec size */
  gname1638      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp rsqrt reg opnd */
static const SI_RRW res_req1646[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1648[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1647[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1650[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1651[] = {5,5};
static SI gname1645 = {
  "avx fp rsqrt reg opnd",
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

/* Instruction group avx fp rsqrt mem opnd */
static const SI_RRW res_req1655[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1657[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1656[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1659[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1660[] = {10,10};
static SI gname1654 = {
  "avx fp rsqrt mem opnd",
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
  3              , /* resource count vec size */
  gname1656      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp sqrt reg opnd */
static const SI_RRW res_req1664[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1666[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1665[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1668[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1669[] = {41,41};
static SI gname1663 = {
  "avx fp sqrt reg opnd",
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

/* Instruction group avx fp sqrt mem opnd */
static const SI_RRW res_req1673[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1675[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1674[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1677[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1678[] = {46,46};
static SI gname1672 = {
  "avx fp sqrt mem opnd",
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
  3              , /* resource count vec size */
  gname1674      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div reg opnd */
static const SI_RRW res_req1682[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1684[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1683[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1686[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1687[] = {30,30};
static SI gname1681 = {
  "avx div reg opnd",
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

/* Instruction group avx div mem opnd */
static const SI_RRW res_req1691[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1693[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1692[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1695[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1696[] = {35,35};
static SI gname1690 = {
  "avx div mem opnd",
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
  3              , /* resource count vec size */
  gname1692      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div II reg opnd */
static const SI_RRW res_req1700[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1702[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1701[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1704[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1705[] = {27,27};
static SI gname1699 = {
  "avx div II reg opnd",
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

/* Instruction group avx div II mem opnd */
static const SI_RRW res_req1709[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1711[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1710[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1713[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1714[] = {32,32};
static SI gname1708 = {
  "avx div II mem opnd",
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
  3              , /* resource count vec size */
  gname1710      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx div III reg opnd */
static const SI_RRW res_req1718[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1720[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1719[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1722[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1723[] = {25,25};
static SI gname1717 = {
  "avx div III reg opnd",
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

/* Instruction group avx div III mem opnd */
static const SI_RRW res_req1727[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1729[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1728[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1731[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1732[] = {30,30};
static SI gname1726 = {
  "avx div III mem opnd",
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
  3              , /* resource count vec size */
  gname1728      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1736[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1738[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1737[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1740[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1741[] = {4,4};
static SI gname1735 = {
  "avx fp mul reg opnd",
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

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1745[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1747[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1746[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1749[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1750[] = {9,9};
static SI gname1744 = {
  "avx fp mul mem opnd",
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
  3              , /* resource count vec size */
  gname1746      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx blend reg opnd */
static const SI_RRW res_req1754[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1756[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1755[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1758[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1759[] = {5,5};
static SI gname1753 = {
  "avx blend reg opnd",
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

/* Instruction group avx blend mem opnd */
static const SI_RRW res_req1763[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1765[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1764[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1767[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1768[] = {10,10};
static SI gname1762 = {
  "avx blend mem opnd",
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
  3              , /* resource count vec size */
  gname1764      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul reg opnd */
static const SI_RRW res_req1772[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname1774[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname1773[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency1776[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1777[] = {6,6};
static SI gname1771 = {
  "avx pclmul reg opnd",
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
  2              , /* resource count vec size */
  gname1773      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx pclmul mem opnd */
static const SI_RRW res_req1781[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname1783[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname1782[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1785[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1786[] = {11,11};
static SI gname1780 = {
  "avx pclmul mem opnd",
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
  3              , /* resource count vec size */
  gname1782      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes reg opnd */
static const SI_RRW res_req1790[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1792[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1791[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1794[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1795[] = {10,10};
static SI gname1789 = {
  "avx aes reg opnd",
  198            , /* id */
  latency1794    , /* operand latency */
  latency1795    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1790    , /* resource requirement */
  gname1792      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1791      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx aes mem opnd */
static const SI_RRW res_req1799[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1801[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1800[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1803[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1804[] = {20,20};
static SI gname1798 = {
  "avx aes mem opnd",
  199            , /* id */
  latency1803    , /* operand latency */
  latency1804    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1799    , /* resource requirement */
  gname1801      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1800      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align load */
static const SI_RRW res_req1808[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1810[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1809[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1812[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1813[] = {2,2};
static SI gname1807 = {
  "avx fp align load",
  200            , /* id */
  latency1812    , /* operand latency */
  latency1813    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1808    , /* resource requirement */
  gname1810      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1809      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith reg opnd */
static const SI_RRW res_req1817[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1819[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1818[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1821[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1822[] = {2,2};
static SI gname1816 = {
  "avx int arith reg opnd",
  201            , /* id */
  latency1821    , /* operand latency */
  latency1822    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1817    , /* resource requirement */
  gname1819      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1818      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith mem opnd */
static const SI_RRW res_req1826[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1828[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1827[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1830[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1831[] = {3,3};
static SI gname1825 = {
  "avx int arith mem opnd",
  202            , /* id */
  latency1830    , /* operand latency */
  latency1831    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1826    , /* resource requirement */
  gname1828      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1827      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith II reg opnd */
static const SI_RRW res_req1835[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1837[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1836[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1839[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1840[] = {2,2};
static SI gname1834 = {
  "avx int arith II reg opnd",
  203            , /* id */
  latency1839    , /* operand latency */
  latency1840    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1835    , /* resource requirement */
  gname1837      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1836      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith II mem opnd */
static const SI_RRW res_req1844[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1846[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1845[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1848[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1849[] = {7,7};
static SI gname1843 = {
  "avx int arith II mem opnd",
  204            , /* id */
  latency1848    , /* operand latency */
  latency1849    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1844    , /* resource requirement */
  gname1846      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1845      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith III reg opnd */
static const SI_RRW res_req1853[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1855[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1854[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1857[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1858[] = {4,4};
static SI gname1852 = {
  "avx int arith III reg opnd",
  205            , /* id */
  latency1857    , /* operand latency */
  latency1858    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1853    , /* resource requirement */
  gname1855      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1854      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith III mem opnd */
static const SI_RRW res_req1862[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1864[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1863[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1866[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1867[] = {9,9};
static SI gname1861 = {
  "avx int arith III mem opnd",
  206            , /* id */
  latency1866    , /* operand latency */
  latency1867    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1862    , /* resource requirement */
  gname1864      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1863      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith IV reg opnd */
static const SI_RRW res_req1871[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1873[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1872[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1875[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1876[] = {3,3};
static SI gname1870 = {
  "avx int arith IV reg opnd",
  207            , /* id */
  latency1875    , /* operand latency */
  latency1876    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1871    , /* resource requirement */
  gname1873      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1872      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx int arith IV mem opnd */
static const SI_RRW res_req1880[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1882[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1881[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1884[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1885[] = {8,8};
static SI gname1879 = {
  "avx int arith IV mem opnd",
  208            , /* id */
  latency1884    , /* operand latency */
  latency1885    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1880    , /* resource requirement */
  gname1882      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1881      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith reg opnd */
static const SI_RRW res_req1889[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1891[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1890[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1893[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1894[] = {2,2};
static SI gname1888 = {
  "avx fp arith reg opnd",
  209            , /* id */
  latency1893    , /* operand latency */
  latency1894    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1889    , /* resource requirement */
  gname1891      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1890      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith mem opnd */
static const SI_RRW res_req1898[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1900[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1899[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1902[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1903[] = {7,7};
static SI gname1897 = {
  "avx fp arith mem opnd",
  210            , /* id */
  latency1902    , /* operand latency */
  latency1903    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1898    , /* resource requirement */
  gname1900      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1899      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith II  reg opnd */
static const SI_RRW res_req1907[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1909[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1908[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1911[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1912[] = {5,5};
static SI gname1906 = {
  "avx fp arith II  reg opnd",
  211            , /* id */
  latency1911    , /* operand latency */
  latency1912    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1907    , /* resource requirement */
  gname1909      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1908      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp arith II  mem opnd */
static const SI_RRW res_req1916[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1918[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1917[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1920[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1921[] = {10,10};
static SI gname1915 = {
  "avx fp arith II  mem opnd",
  212            , /* id */
  latency1920    , /* operand latency */
  latency1921    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1916    , /* resource requirement */
  gname1918      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1917      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp compare scalar ordered reg opnd */
static const SI_RRW res_req1925[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1927[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1926[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1929[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1930[] = {6,6};
static SI gname1924 = {
  "avx fp compare scalar ordered reg opnd",
  213            , /* id */
  latency1929    , /* operand latency */
  latency1930    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1925    , /* resource requirement */
  gname1927      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1926      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp compare scalar ordered mem opnd */
static const SI_RRW res_req1934[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1936[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1935[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1938[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1939[] = {11,11};
static SI gname1933 = {
  "avx fp compare scalar ordered mem opnd",
  214            , /* id */
  latency1938    , /* operand latency */
  latency1939    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1934    , /* resource requirement */
  gname1936      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1935      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp align store */
static const SI_RRW res_req1943[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1945[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1944[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1947[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1948[] = {7,7};
static SI gname1942 = {
  "avx fp align store",
  215            , /* id */
  latency1947    , /* operand latency */
  latency1948    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1943    , /* resource requirement */
  gname1945      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1944      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx broadcast reg opnd */
static const SI_RRW res_req1952[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1954[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1953[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1956[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1957[] = {4,4};
static SI gname1951 = {
  "avx broadcast reg opnd",
  216            , /* id */
  latency1956    , /* operand latency */
  latency1957    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1952    , /* resource requirement */
  gname1954      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1953      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul reg opnd */
static const SI_RRW res_req1961[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1963[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1962[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1965[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1966[] = {4,4};
static SI gname1960 = {
  "avx fp mul reg opnd",
  217            , /* id */
  latency1965    , /* operand latency */
  latency1966    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1961    , /* resource requirement */
  gname1963      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1962      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx fp mul mem opnd */
static const SI_RRW res_req1970[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1972[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1971[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1974[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1975[] = {7,7};
static SI gname1969 = {
  "avx fp mul mem opnd",
  218            , /* id */
  latency1974    , /* operand latency */
  latency1975    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1970    , /* resource requirement */
  gname1972      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1971      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest reg opnd */
static const SI_RRW res_req1979[] = {
  1,
  0x1
};
static const SI_RESOURCE_ID_SET gname1981[] = {
  0x1
};
static SI_RESOURCE_TOTAL gname1980[] = {
  {&resource9,1} /* issue */
};
static const mUINT8 latency1983[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1984[] = {5,5};
static SI gname1978 = {
  "avx ptest reg opnd",
  219            , /* id */
  latency1983    , /* operand latency */
  latency1984    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1979    , /* resource requirement */
  gname1981      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  1              , /* resource count vec size */
  gname1980      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx ptest mem opnd */
static const SI_RRW res_req1988[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1990[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1989[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency1992[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency1993[] = {10,10};
static SI gname1987 = {
  "avx ptest mem opnd",
  220            , /* id */
  latency1992    , /* operand latency */
  latency1993    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1988    , /* resource requirement */
  gname1990      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1989      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx load mxcsr */
static const SI_RRW res_req1997[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname1999[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname1998[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2001[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2002[] = {7,7};
static SI gname1996 = {
  "avx load mxcsr",
  221            , /* id */
  latency2001    , /* operand latency */
  latency2002    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req1997    , /* resource requirement */
  gname1999      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname1998      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx store mxcsr */
static const SI_RRW res_req2006[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname2008[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname2007[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2010[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2011[] = {5,5};
static SI gname2005 = {
  "avx store mxcsr",
  222            , /* id */
  latency2010    , /* operand latency */
  latency2011    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2006    , /* resource requirement */
  gname2008      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2007      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx move mask */
static const SI_RRW res_req2015[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname2017[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname2016[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency2019[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2020[] = {5,5};
static SI gname2014 = {
  "avx move mask",
  223            , /* id */
  latency2019    , /* operand latency */
  latency2020    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2015    , /* resource requirement */
  gname2017      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2016      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign store */
static const SI_RRW res_req2024[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname2026[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname2025[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2028[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2029[] = {5,5};
static SI gname2023 = {
  "avx unalign store",
  224            , /* id */
  latency2028    , /* operand latency */
  latency2029    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2024    , /* resource requirement */
  gname2026      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2025      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign load */
static const SI_RRW res_req2033[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname2035[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname2034[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2037[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2038[] = {2,2};
static SI gname2032 = {
  "avx unalign load",
  225            , /* id */
  latency2037    , /* operand latency */
  latency2038    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2033    , /* resource requirement */
  gname2035      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2034      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group avx unalign reg opnd transfer */
static const SI_RRW res_req2042[] = {
  1,
  0x2001
};
static const SI_RESOURCE_ID_SET gname2044[] = {
  0x21
};
static SI_RESOURCE_TOTAL gname2043[] = {
  {&resource9,1} /* issue */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2046[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2047[] = {1,1};
static SI gname2041 = {
  "avx unalign reg opnd transfer",
  226            , /* id */
  latency2046    , /* operand latency */
  latency2047    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2042    , /* resource requirement */
  gname2044      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2043      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma reg opnd */
static const SI_RRW res_req2051[] = {
  1,
  0x201
};
static const SI_RESOURCE_ID_SET gname2053[] = {
  0x9
};
static SI_RESOURCE_TOTAL gname2052[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */
};
static const mUINT8 latency2055[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2056[] = {6,6};
static SI gname2050 = {
  "intel avx fma reg opnd",
  227            , /* id */
  latency2055    , /* operand latency */
  latency2056    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2051    , /* resource requirement */
  gname2053      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2052      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group intel avx fma mem opnd */
static const SI_RRW res_req2060[] = {
  1,
  0x2201
};
static const SI_RESOURCE_ID_SET gname2062[] = {
  0x29
};
static SI_RESOURCE_TOTAL gname2061[] = {
  {&resource9,1} /* issue */,
  {&resource12,1} /* fmul */,
  {&resource14,1} /* fstore */
};
static const mUINT8 latency2064[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2065[] = {11,11};
static SI gname2059 = {
  "intel avx fma mem opnd",
  228            , /* id */
  latency2064    , /* operand latency */
  latency2065    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2060    , /* resource requirement */
  gname2062      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  3              , /* resource count vec size */
  gname2061      , /* resource count vec */
  0                /* write-write interlock */
};

/* Instruction group dummy */
static const SI_RRW res_req2069[] = {
  1,
  0x9
};
static const SI_RESOURCE_ID_SET gname2071[] = {
  0x3
};
static SI_RESOURCE_TOTAL gname2070[] = {
  {&resource9,1} /* issue */,
  {&resource10,1} /* alu */
};
static const mUINT8 latency2073[] = {0,0,0,0,0,0,0,0};
static const mUINT8 latency2074[] = {1,1};
static SI gname2068 = {
  "dummy",
  229            , /* id */
  latency2073    , /* operand latency */
  latency2074    , /* result latency */
  0              , /* load access time */
  0              , /* last issue cycle */
  0              , /* store available time */
  res_req2069    , /* resource requirement */
  gname2071      , /* res id used set vec */
  0              , /* II info size */
  0              , /* II resource requirement vec */
  0              , /* II res id used set vec */
  {{0x0,0x0}}    , /* Bad IIs */
  0              , /* valid issue slots vec size */
  0              , /* valid issue slots vec */
  2              , /* resource count vec size */
  gname2070      , /* resource count vec */
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
  &gname1780,
  &gname1789,
  &gname1798,
  &gname1807,
  &gname1816,
  &gname1825,
  &gname1834,
  &gname1843,
  &gname1852,
  &gname1861,
  &gname1870,
  &gname1879,
  &gname1888,
  &gname1897,
  &gname1906,
  &gname1915,
  &gname1924,
  &gname1933,
  &gname1942,
  &gname1951,
  &gname1960,
  &gname1969,
  &gname1978,
  &gname1987,
  &gname1996,
  &gname2005,
  &gname2014,
  &gname2023,
  &gname2032,
  &gname2041,
  &gname2050,
  &gname2059,
  &gname2068
};
const int SI_ID_count = 230;

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
  &gname835   /* add128v8 */,
  &gname862   /* addx128v8 */,
  &gname862   /* addxx128v8 */,
  &gname862   /* addxxx128v8 */,
  &gname835   /* add128v16 */,
  &gname862   /* addx128v16 */,
  &gname862   /* addxx128v16 */,
  &gname862   /* addxxx128v16 */,
  &gname835   /* add128v32 */,
  &gname862   /* addx128v32 */,
  &gname862   /* addxx128v32 */,
  &gname862   /* addxxx128v32 */,
  &gname835   /* add128v64 */,
  &gname862   /* addx128v64 */,
  &gname862   /* addxx128v64 */,
  &gname862   /* addxxx128v64 */,
  &gname835   /* add64v8 */,
  &gname835   /* add64v16 */,
  &gname835   /* add64v32 */,
  &gname835   /* paddsb */,
  &gname835   /* paddsw */,
  &gname835   /* paddq */,
  &gname835   /* psubsb */,
  &gname835   /* psubsw */,
  &gname835   /* psubq */,
  &gname835   /* paddusb */,
  &gname835   /* paddusw */,
  &gname835   /* psubusb */,
  &gname835   /* psubusw */,
  &gname853   /* pmullw */,
  &gname853   /* pmulhw */,
  &gname853   /* pmulhuw */,
  &gname853   /* pmuludq */,
  &gname853   /* pmaddwd */,
  &gname835   /* paddsb128 */,
  &gname835   /* paddsw128 */,
  &gname835   /* paddq128 */,
  &gname835   /* psubsb128 */,
  &gname835   /* psubsw128 */,
  &gname835   /* psubq128 */,
  &gname835   /* paddusb128 */,
  &gname835   /* paddusw128 */,
  &gname835   /* psubusb128 */,
  &gname835   /* psubusw128 */,
  &gname853   /* pmullw128 */,
  &gname853   /* pmulhw128 */,
  &gname853   /* pmulhuw128 */,
  &gname853   /* pmuludq128 */,
  &gname853   /* pmaddwd128 */,
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
  &gname835   /* and128v8 */,
  &gname862   /* andx128v8 */,
  &gname862   /* andxx128v8 */,
  &gname862   /* andxxx128v8 */,
  &gname835   /* and128v16 */,
  &gname862   /* andx128v16 */,
  &gname862   /* andxx128v16 */,
  &gname862   /* andxxx128v16 */,
  &gname835   /* and128v32 */,
  &gname862   /* andx128v32 */,
  &gname862   /* andxx128v32 */,
  &gname862   /* andxxx128v32 */,
  &gname835   /* and128v64 */,
  &gname862   /* andx128v64 */,
  &gname862   /* andxx128v64 */,
  &gname862   /* andxxx128v64 */,
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
  &gname844   /* mul128v16 */,
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
  &gname304   /* ld64_2sse */,
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
  &gname250   /* ldss_n32 */,
  &gname250   /* ldsd_n32 */,
  &gname277   /* ldaps_n32 */,
  &gname277   /* ldapd_n32 */,
  &gname268   /* ldups_n32 */,
  &gname268   /* ldupd_n32 */,
  &gname250   /* lddqa_n32 */,
  &gname268   /* lddqu_n32 */,
  &gname286   /* ldlps_n32 */,
  &gname304   /* ldlpd_n32 */,
  &gname286   /* ldhps_n32 */,
  &gname304   /* ldhpd_n32 */,
  &gname178   /* ld64_2m_n32 */,
  &gname304   /* ld64_2sse_n32 */,
  &gname187   /* store8_n32 */,
  &gname187   /* store16_n32 */,
  &gname187   /* store32_n32 */,
  &gname322   /* stss_n32 */,
  &gname322   /* stsd_n32 */,
  &gname340   /* staps_n32 */,
  &gname340   /* stapd_n32 */,
  &gname322   /* stdqa_n32 */,
  &gname331   /* stdqu_n32 */,
  &gname295   /* stlps_n32 */,
  &gname295   /* sthps_n32 */,
  &gname313   /* stlpd_n32 */,
  &gname313   /* sthpd_n32 */,
  &gname187   /* store64_fm_n32 */,
  &gname313   /* store64_fsse_n32 */,
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
  &gname835   /* or128v8 */,
  &gname862   /* orx128v8 */,
  &gname862   /* orxx128v8 */,
  &gname862   /* orxxx128v8 */,
  &gname835   /* or128v16 */,
  &gname862   /* orx128v16 */,
  &gname862   /* orxx128v16 */,
  &gname862   /* orxxx128v16 */,
  &gname835   /* or128v32 */,
  &gname862   /* orx128v32 */,
  &gname862   /* orxx128v32 */,
  &gname862   /* orxxx128v32 */,
  &gname835   /* or128v64 */,
  &gname862   /* orx128v64 */,
  &gname862   /* orxx128v64 */,
  &gname862   /* orxxx128v64 */,
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
  &gname988   /* prefetch */,
  &gname988   /* prefetchw */,
  &gname988   /* prefetcht0 */,
  &gname988   /* prefetcht1 */,
  &gname988   /* prefetchnta */,
  &gname988   /* prefetchx */,
  &gname988   /* prefetchxx */,
  &gname988   /* prefetchwx */,
  &gname988   /* prefetchwxx */,
  &gname988   /* prefetcht0x */,
  &gname988   /* prefetcht0xx */,
  &gname988   /* prefetcht1x */,
  &gname988   /* prefetcht1xx */,
  &gname988   /* prefetchntax */,
  &gname988   /* prefetchntaxx */,
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
  &gname313   /* store64_fsse */,
  &gname187   /* storenti32 */,
  &gname187   /* storentix32 */,
  &gname187   /* storentixx32 */,
  &gname187   /* storenti64 */,
  &gname187   /* storentix64 */,
  &gname187   /* storentixx64 */,
  &gname340   /* storenti128 */,
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
  &gname835   /* sub128v8 */,
  &gname862   /* subx128v8 */,
  &gname862   /* subxx128v8 */,
  &gname862   /* subxxx128v8 */,
  &gname835   /* sub128v16 */,
  &gname862   /* subx128v16 */,
  &gname862   /* subxx128v16 */,
  &gname862   /* subxxx128v16 */,
  &gname835   /* sub128v32 */,
  &gname862   /* subx128v32 */,
  &gname862   /* subxx128v32 */,
  &gname862   /* subxxx128v32 */,
  &gname835   /* sub128v64 */,
  &gname862   /* subx128v64 */,
  &gname862   /* subxx128v64 */,
  &gname862   /* subxxx128v64 */,
  &gname835   /* sub64v8 */,
  &gname835   /* sub64v16 */,
  &gname835   /* sub64v32 */,
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
  &gname835   /* xor128v8 */,
  &gname862   /* xorx128v8 */,
  &gname862   /* xorxx128v8 */,
  &gname862   /* xorxxx128v8 */,
  &gname835   /* xor128v16 */,
  &gname862   /* xorx128v16 */,
  &gname862   /* xorxx128v16 */,
  &gname862   /* xorxxx128v16 */,
  &gname835   /* xor128v32 */,
  &gname862   /* xorx128v32 */,
  &gname862   /* xorxx128v32 */,
  &gname862   /* xorxxx128v32 */,
  &gname835   /* xor128v64 */,
  &gname862   /* xorx128v64 */,
  &gname862   /* xorxx128v64 */,
  &gname862   /* xorxxx128v64 */,
  &gname16    /* xori32 */,
  &gname16    /* xori64 */,
  &gname565   /* fxor128v32 */,
  &gname574   /* fxorx128v32 */,
  &gname574   /* fxorxx128v32 */,
  &gname574   /* fxorxxx128v32 */,
  &gname565   /* fxor128v64 */,
  &gname574   /* fxorx128v64 */,
  &gname574   /* fxorxx128v64 */,
  &gname574   /* fxorxxx128v64 */,
  &gname565   /* xorps */,
  &gname565   /* xorpd */,
  &gname538   /* addsd */,
  &gname538   /* addss */,
  &gname871   /* addxsd */,
  &gname871   /* addxss */,
  &gname871   /* addxxsd */,
  &gname25    /* addxxxsd */,
  &gname871   /* addxxss */,
  &gname25    /* addxxxss */,
  &gname547   /* faddsub128v32 */,
  &gname556   /* faddsubx128v32 */,
  &gname556   /* faddsubxx128v32 */,
  &gname556   /* faddsubxxx128v32 */,
  &gname547   /* faddsub128v64 */,
  &gname556   /* faddsubx128v64 */,
  &gname556   /* faddsubxx128v64 */,
  &gname556   /* faddsubxxx128v64 */,
  &gname547   /* fadd128v32 */,
  &gname556   /* faddx128v32 */,
  &gname556   /* faddxx128v32 */,
  &gname556   /* faddxxx128v32 */,
  &gname547   /* fadd128v64 */,
  &gname556   /* faddx128v64 */,
  &gname556   /* faddxx128v64 */,
  &gname556   /* faddxxx128v64 */,
  &gname547   /* fhadd128v32 */,
  &gname556   /* fhaddx128v32 */,
  &gname556   /* fhaddxx128v32 */,
  &gname556   /* fhaddxxx128v32 */,
  &gname547   /* fhadd128v64 */,
  &gname556   /* fhaddx128v64 */,
  &gname556   /* fhaddxx128v64 */,
  &gname556   /* fhaddxxx128v64 */,
  &gname565   /* fand128v32 */,
  &gname574   /* fandx128v32 */,
  &gname574   /* fandxx128v32 */,
  &gname574   /* fandxxx128v32 */,
  &gname565   /* fand128v64 */,
  &gname574   /* fandx128v64 */,
  &gname574   /* fandxx128v64 */,
  &gname574   /* fandxxx128v64 */,
  &gname565   /* andps */,
  &gname565   /* andpd */,
  &gname889   /* andnps */,
  &gname889   /* andnpd */,
  &gname565   /* for128v32 */,
  &gname574   /* forx128v32 */,
  &gname574   /* forxx128v32 */,
  &gname574   /* forxxx128v32 */,
  &gname565   /* for128v64 */,
  &gname574   /* forx128v64 */,
  &gname574   /* forxx128v64 */,
  &gname574   /* forxxx128v64 */,
  &gname565   /* orps */,
  &gname565   /* orpd */,
  &gname538   /* comisd */,
  &gname871   /* comixsd */,
  &gname871   /* comixxsd */,
  &gname871   /* comixxxsd */,
  &gname538   /* comiss */,
  &gname871   /* comixss */,
  &gname871   /* comixxss */,
  &gname871   /* comixxxss */,
  &gname223   /* cmpss */,
  &gname223   /* cmpsd */,
  &gname799   /* cmpps */,
  &gname799   /* cmppd */,
  &gname817   /* cmpeq128v8 */,
  &gname817   /* cmpeq128v16 */,
  &gname817   /* cmpeq128v32 */,
  &gname826   /* cmpeqx128v8 */,
  &gname826   /* cmpeqx128v16 */,
  &gname826   /* cmpeqx128v32 */,
  &gname826   /* cmpeqxx128v8 */,
  &gname826   /* cmpeqxx128v16 */,
  &gname826   /* cmpeqxx128v32 */,
  &gname826   /* cmpeqxxx128v8 */,
  &gname826   /* cmpeqxxx128v16 */,
  &gname826   /* cmpeqxxx128v32 */,
  &gname817   /* cmpgt128v8 */,
  &gname817   /* cmpgt128v16 */,
  &gname817   /* cmpgt128v32 */,
  &gname826   /* cmpgtx128v8 */,
  &gname826   /* cmpgtx128v16 */,
  &gname826   /* cmpgtx128v32 */,
  &gname826   /* cmpgtxx128v8 */,
  &gname826   /* cmpgtxx128v16 */,
  &gname826   /* cmpgtxx128v32 */,
  &gname826   /* cmpgtxxx128v8 */,
  &gname826   /* cmpgtxxx128v16 */,
  &gname826   /* cmpgtxxx128v32 */,
  &gname817   /* pcmpeqb */,
  &gname817   /* pcmpeqw */,
  &gname817   /* pcmpeqd */,
  &gname817   /* pcmpgtb */,
  &gname817   /* pcmpgtw */,
  &gname817   /* pcmpgtd */,
  &gname745   /* fmovsldup */,
  &gname745   /* fmovshdup */,
  &gname745   /* fmovddup */,
  &gname754   /* fmovsldupx */,
  &gname754   /* fmovshdupx */,
  &gname754   /* fmovddupx */,
  &gname754   /* fmovsldupxx */,
  &gname754   /* fmovshdupxx */,
  &gname754   /* fmovddupxx */,
  &gname754   /* fmovsldupxxx */,
  &gname754   /* fmovshdupxxx */,
  &gname754   /* fmovddupxxx */,
  &gname16    /* cltd */,
  &gname16    /* cqto */,
  &gname493   /* cvtss2sd */,
  &gname439   /* cvtsd2ss */,
  &gname448   /* cvtsd2ss_x */,
  &gname448   /* cvtsd2ss_xx */,
  &gname448   /* cvtsd2ss_xxx */,
  &gname457   /* cvtsi2sd */,
  &gname466   /* cvtsi2sd_x */,
  &gname466   /* cvtsi2sd_xx */,
  &gname466   /* cvtsi2sd_xxx */,
  &gname430   /* cvtsi2ss */,
  &gname421   /* cvtsi2ss_x */,
  &gname421   /* cvtsi2ss_xx */,
  &gname421   /* cvtsi2ss_xxx */,
  &gname457   /* cvtsi2sdq */,
  &gname466   /* cvtsi2sdq_x */,
  &gname466   /* cvtsi2sdq_xx */,
  &gname466   /* cvtsi2sdq_xxx */,
  &gname430   /* cvtsi2ssq */,
  &gname421   /* cvtsi2ssq_x */,
  &gname421   /* cvtsi2ssq_xx */,
  &gname421   /* cvtsi2ssq_xxx */,
  &gname511   /* cvtss2si */,
  &gname511   /* cvtsd2si */,
  &gname511   /* cvtss2siq */,
  &gname511   /* cvtsd2siq */,
  &gname511   /* cvttss2si */,
  &gname511   /* cvttsd2si */,
  &gname511   /* cvttss2siq */,
  &gname511   /* cvttsd2siq */,
  &gname358   /* cvtdq2pd */,
  &gname349   /* cvtdq2ps */,
  &gname358   /* cvtps2pd */,
  &gname367   /* cvtpd2ps */,
  &gname376   /* cvtps2dq */,
  &gname376   /* cvttps2dq */,
  &gname367   /* cvtpd2dq */,
  &gname367   /* cvttpd2dq */,
  &gname385   /* cvtdq2pd_x */,
  &gname376   /* cvtdq2ps_x */,
  &gname394   /* cvtps2pd_x */,
  &gname403   /* cvtpd2ps_x */,
  &gname412   /* cvtps2dq_x */,
  &gname403   /* cvtpd2dq_x */,
  &gname412   /* cvttps2dq_x */,
  &gname403   /* cvttpd2dq_x */,
  &gname385   /* cvtdq2pd_xx */,
  &gname376   /* cvtdq2ps_xx */,
  &gname394   /* cvtps2pd_xx */,
  &gname403   /* cvtpd2ps_xx */,
  &gname412   /* cvtps2dq_xx */,
  &gname403   /* cvtpd2dq_xx */,
  &gname412   /* cvttps2dq_xx */,
  &gname403   /* cvttpd2dq_xx */,
  &gname385   /* cvtdq2pd_xxx */,
  &gname412   /* cvtdq2ps_xxx */,
  &gname394   /* cvtps2pd_xxx */,
  &gname403   /* cvtpd2ps_xxx */,
  &gname412   /* cvtps2dq_xxx */,
  &gname403   /* cvtpd2dq_xxx */,
  &gname412   /* cvttps2dq_xxx */,
  &gname403   /* cvttpd2dq_xxx */,
  &gname1069  /* cvtpi2ps */,
  &gname1069  /* cvtps2pi */,
  &gname1069  /* cvttps2pi */,
  &gname1078  /* cvtpi2pd */,
  &gname1078  /* cvtpd2pi */,
  &gname1078  /* cvttpd2pi */,
  &gname250   /* ldsd */,
  &gname250   /* ldsdx */,
  &gname250   /* ldsdxx */,
  &gname250   /* ldss */,
  &gname250   /* ldssx */,
  &gname250   /* ldssxx */,
  &gname250   /* lddqa */,
  &gname268   /* lddqu */,
  &gname286   /* ldlps */,
  &gname286   /* ldhps */,
  &gname304   /* ldlpd */,
  &gname304   /* ldhpd */,
  &gname322   /* stdqa */,
  &gname331   /* stdqu */,
  &gname295   /* stlps */,
  &gname295   /* sthps */,
  &gname313   /* stlpd */,
  &gname313   /* storelpd */,
  &gname313   /* sthpd */,
  &gname322   /* stntpd */,
  &gname322   /* stntps */,
  &gname187   /* storent64_fm */,
  &gname250   /* lddqax */,
  &gname268   /* lddqux */,
  &gname286   /* ldlpsx */,
  &gname286   /* ldhpsx */,
  &gname304   /* ldlpdx */,
  &gname304   /* ldhpdx */,
  &gname322   /* stdqax */,
  &gname322   /* stntpdx */,
  &gname322   /* stntpsx */,
  &gname331   /* stdqux */,
  &gname295   /* stlpsx */,
  &gname295   /* sthpsx */,
  &gname313   /* stlpdx */,
  &gname313   /* sthpdx */,
  &gname250   /* lddqaxx */,
  &gname268   /* lddquxx */,
  &gname286   /* ldlpsxx */,
  &gname286   /* ldhpsxx */,
  &gname304   /* ldlpdxx */,
  &gname304   /* ldhpdxx */,
  &gname277   /* ldaps */,
  &gname277   /* ldapsx */,
  &gname277   /* ldapsxx */,
  &gname277   /* ldapd */,
  &gname277   /* ldapdx */,
  &gname277   /* ldapdxx */,
  &gname268   /* ldups */,
  &gname268   /* ldupd */,
  &gname268   /* ldupdx */,
  &gname268   /* ldupdxx */,
  &gname322   /* stdqaxx */,
  &gname322   /* stntpdxx */,
  &gname322   /* stntpsxx */,
  &gname331   /* stdquxx */,
  &gname295   /* stlpsxx */,
  &gname295   /* sthpsxx */,
  &gname313   /* stlpdxx */,
  &gname313   /* sthpdxx */,
  &gname340   /* staps */,
  &gname340   /* stapsx */,
  &gname340   /* stapsxx */,
  &gname340   /* stapd */,
  &gname340   /* stapdx */,
  &gname340   /* stapdxx */,
  &gname331   /* stups */,
  &gname331   /* stupd */,
  &gname880   /* maxsd */,
  &gname880   /* maxss */,
  &gname682   /* fmax128v32 */,
  &gname691   /* fmaxx128v32 */,
  &gname691   /* fmaxxx128v32 */,
  &gname691   /* fmaxxxx128v32 */,
  &gname682   /* fmax128v64 */,
  &gname691   /* fmaxx128v64 */,
  &gname691   /* fmaxxx128v64 */,
  &gname691   /* fmaxxxx128v64 */,
  &gname817   /* max128v16 */,
  &gname817   /* max128v8 */,
  &gname826   /* maxx128v16 */,
  &gname826   /* maxx128v8 */,
  &gname826   /* maxxx128v16 */,
  &gname826   /* maxxx128v8 */,
  &gname826   /* maxxxx128v16 */,
  &gname826   /* maxxxx128v8 */,
  &gname817   /* max64v8 */,
  &gname817   /* max64v16 */,
  &gname817   /* min128v16 */,
  &gname817   /* min128v8 */,
  &gname826   /* minx128v16 */,
  &gname826   /* minx128v8 */,
  &gname826   /* minxx128v16 */,
  &gname826   /* minxx128v8 */,
  &gname826   /* minxxx128v16 */,
  &gname826   /* minxxx128v8 */,
  &gname817   /* min64v8 */,
  &gname817   /* min64v16 */,
  &gname880   /* minsd */,
  &gname880   /* minss */,
  &gname682   /* fmin128v32 */,
  &gname691   /* fminx128v32 */,
  &gname691   /* fminxx128v32 */,
  &gname691   /* fminxxx128v32 */,
  &gname682   /* fmin128v64 */,
  &gname691   /* fminx128v64 */,
  &gname691   /* fminxx128v64 */,
  &gname691   /* fminxxx128v64 */,
  &gname484   /* movx2g64 */,
  &gname484   /* movx2g */,
  &gname475   /* movg2x64 */,
  &gname475   /* movg2x */,
  &gname223   /* movsd */,
  &gname223   /* movss */,
  &gname223   /* movdq */,
  &gname223   /* movapd */,
  &gname223   /* movaps */,
  &gname1051  /* movq2dq */,
  &gname1060  /* movdq2q */,
  &gname934   /* divsd */,
  &gname961   /* divxsd */,
  &gname961   /* divxxsd */,
  &gname961   /* divxxxsd */,
  &gname925   /* divss */,
  &gname952   /* divxss */,
  &gname952   /* divxxss */,
  &gname952   /* divxxxss */,
  &gname601   /* fdiv128v32 */,
  &gname637   /* fdivx128v32 */,
  &gname637   /* fdivxx128v32 */,
  &gname637   /* fdivxxx128v32 */,
  &gname646   /* fdiv128v64 */,
  &gname655   /* fdivx128v64 */,
  &gname655   /* fdivxx128v64 */,
  &gname655   /* fdivxxx128v64 */,
  &gname907   /* mulsd */,
  &gname907   /* mulss */,
  &gname583   /* fmul128v32 */,
  &gname592   /* fmulx128v32 */,
  &gname592   /* fmulxx128v32 */,
  &gname592   /* fmulxxx128v32 */,
  &gname583   /* fmul128v64 */,
  &gname592   /* fmulx128v64 */,
  &gname592   /* fmulxx128v64 */,
  &gname592   /* fmulxxx128v64 */,
  &gname916   /* mulxsd */,
  &gname916   /* mulxss */,
  &gname916   /* mulxxsd */,
  &gname916   /* mulxxxsd */,
  &gname916   /* mulxxss */,
  &gname916   /* mulxxxss */,
  &gname538   /* subsd */,
  &gname538   /* subss */,
  &gname871   /* subxsd */,
  &gname871   /* subxss */,
  &gname871   /* subxxsd */,
  &gname25    /* subxxxsd */,
  &gname871   /* subxxss */,
  &gname25    /* subxxxss */,
  &gname547   /* fsub128v32 */,
  &gname556   /* fsubx128v32 */,
  &gname556   /* fsubxx128v32 */,
  &gname556   /* fsubxxx128v32 */,
  &gname547   /* fsub128v64 */,
  &gname556   /* fsubx128v64 */,
  &gname556   /* fsubxx128v64 */,
  &gname556   /* fsubxxx128v64 */,
  &gname547   /* fhsub128v32 */,
  &gname556   /* fhsubx128v32 */,
  &gname556   /* fhsubxx128v32 */,
  &gname556   /* fhsubxxx128v32 */,
  &gname547   /* fhsub128v64 */,
  &gname556   /* fhsubx128v64 */,
  &gname556   /* fhsubxx128v64 */,
  &gname556   /* fhsubxxx128v64 */,
  &gname322   /* stss */,
  &gname322   /* stntss */,
  &gname322   /* stssx */,
  &gname322   /* stntssx */,
  &gname322   /* stssxx */,
  &gname322   /* stntssxx */,
  &gname322   /* stsd */,
  &gname322   /* stntsd */,
  &gname322   /* stsdx */,
  &gname322   /* stntsdx */,
  &gname322   /* stsdxx */,
  &gname322   /* stntsdxx */,
  &gname898   /* rcpss */,
  &gname718   /* frcp128v32 */,
  &gname214   /* sqrtsd */,
  &gname205   /* sqrtss */,
  &gname898   /* rsqrtss */,
  &gname700   /* fsqrt128v32 */,
  &gname718   /* frsqrt128v32 */,
  &gname709   /* fsqrt128v64 */,
  &gname790   /* punpcklwd */,
  &gname790   /* punpcklbw */,
  &gname790   /* punpckldq */,
  &gname790   /* punpcklbw128 */,
  &gname790   /* punpcklwd128 */,
  &gname790   /* punpckldq128 */,
  &gname790   /* punpckhbw */,
  &gname790   /* punpckhwd */,
  &gname790   /* punpckhdq */,
  &gname790   /* punpckhbw128 */,
  &gname790   /* punpckhwd128 */,
  &gname790   /* punpckhdq128 */,
  &gname790   /* punpcklqdq */,
  &gname790   /* punpckhqdq */,
  &gname790   /* packsswb */,
  &gname790   /* packssdw */,
  &gname790   /* packuswb */,
  &gname790   /* packsswb128 */,
  &gname790   /* packssdw128 */,
  &gname790   /* packuswb128 */,
  &gname745   /* pshufd */,
  &gname763   /* pshufw */,
  &gname763   /* pshuflw */,
  &gname763   /* pshufhw */,
  &gname781   /* pslldq */,
  &gname781   /* psllw */,
  &gname781   /* psllwi */,
  &gname781   /* pslld */,
  &gname781   /* pslldi */,
  &gname781   /* psllq */,
  &gname781   /* psllqi */,
  &gname781   /* psrlw */,
  &gname781   /* psrlwi */,
  &gname781   /* psrld */,
  &gname781   /* psrldi */,
  &gname781   /* psrlq */,
  &gname781   /* psrlqi */,
  &gname781   /* psraw */,
  &gname781   /* psrawi */,
  &gname781   /* psrad */,
  &gname781   /* psradi */,
  &gname772   /* psllw_mmx */,
  &gname772   /* psllwi_mmx */,
  &gname772   /* pslld_mmx */,
  &gname772   /* pslldi_mmx */,
  &gname772   /* psllq_mmx */,
  &gname772   /* psllqi_mmx */,
  &gname772   /* psrlw_mmx */,
  &gname772   /* psrlwi_mmx */,
  &gname772   /* psrld_mmx */,
  &gname772   /* psrldi_mmx */,
  &gname772   /* psrlq_mmx */,
  &gname772   /* psrlqi_mmx */,
  &gname772   /* psraw_mmx */,
  &gname772   /* psrawi_mmx */,
  &gname772   /* psrad_mmx */,
  &gname772   /* psradi_mmx */,
  &gname772   /* pand_mmx */,
  &gname772   /* pandn_mmx */,
  &gname772   /* por_mmx */,
  &gname772   /* pxor_mmx */,
  &gname835   /* pand */,
  &gname835   /* pandn */,
  &gname835   /* por */,
  &gname835   /* pxor */,
  &gname727   /* unpckhpd */,
  &gname736   /* unpckhps */,
  &gname727   /* unpcklpd */,
  &gname736   /* unpcklps */,
  &gname745   /* shufpd */,
  &gname745   /* shufps */,
  &gname223   /* movhlps */,
  &gname232   /* movlhps */,
  &gname781   /* psrldq */,
  &gname781   /* psrlq128v64 */,
  &gname835   /* subus128v16 */,
  &gname835   /* pavgb */,
  &gname835   /* pavgw */,
  &gname682   /* psadbw */,
  &gname835   /* pavgb128 */,
  &gname835   /* pavgw128 */,
  &gname682   /* psadbw128 */,
  &gname25    /* pextrw */,
  &gname34    /* pinsrw */,
  &gname1042  /* pmovmskb */,
  &gname529   /* pmovmskb128 */,
  &gname1033  /* movi32_2m */,
  &gname1033  /* movi64_2m */,
  &gname1042  /* movm_2i32 */,
  &gname1042  /* movm_2i64 */,
  &gname772   /* pshufw64v16 */,
  &gname1087  /* movmskps */,
  &gname1087  /* movmskpd */,
  &gname331   /* maskmovdqu */,
  &gname187   /* maskmovq */,
  &gname1096  /* extrq */,
  &gname1105  /* insertq */,
  &gname664   /* vfmaddss */,
  &gname673   /* vfmaddxss */,
  &gname673   /* vfmaddxxss */,
  &gname673   /* vfmaddxxxss */,
  &gname673   /* vfmaddxrss */,
  &gname673   /* vfmaddxxrss */,
  &gname673   /* vfmaddxxxrss */,
  &gname664   /* vfmaddsd */,
  &gname673   /* vfmaddxsd */,
  &gname673   /* vfmaddxxsd */,
  &gname673   /* vfmaddxxxsd */,
  &gname673   /* vfmaddxrsd */,
  &gname673   /* vfmaddxxrsd */,
  &gname673   /* vfmaddxxxrsd */,
  &gname664   /* vfnmaddss */,
  &gname673   /* vfnmaddxss */,
  &gname673   /* vfnmaddxxss */,
  &gname673   /* vfnmaddxxxss */,
  &gname673   /* vfnmaddxrss */,
  &gname673   /* vfnmaddxxrss */,
  &gname673   /* vfnmaddxxxrss */,
  &gname664   /* vfnmaddsd */,
  &gname673   /* vfnmaddxsd */,
  &gname673   /* vfnmaddxxsd */,
  &gname673   /* vfnmaddxxxsd */,
  &gname673   /* vfnmaddxrsd */,
  &gname673   /* vfnmaddxxrsd */,
  &gname673   /* vfnmaddxxxrsd */,
  &gname664   /* vfmaddps */,
  &gname673   /* vfmaddxps */,
  &gname673   /* vfmaddxxps */,
  &gname673   /* vfmaddxxxps */,
  &gname673   /* vfmaddxrps */,
  &gname673   /* vfmaddxxrps */,
  &gname673   /* vfmaddxxxrps */,
  &gname664   /* vfmaddpd */,
  &gname673   /* vfmaddxpd */,
  &gname673   /* vfmaddxxpd */,
  &gname673   /* vfmaddxxxpd */,
  &gname673   /* vfmaddxrpd */,
  &gname673   /* vfmaddxxrpd */,
  &gname673   /* vfmaddxxxrpd */,
  &gname664   /* vfmaddsubps */,
  &gname673   /* vfmaddsubxps */,
  &gname673   /* vfmaddsubxxps */,
  &gname673   /* vfmaddsubxxxps */,
  &gname673   /* vfmaddsubxrps */,
  &gname673   /* vfmaddsubxxrps */,
  &gname673   /* vfmaddsubxxxrps */,
  &gname664   /* vfmaddsubpd */,
  &gname673   /* vfmaddsubxpd */,
  &gname673   /* vfmaddsubxxpd */,
  &gname673   /* vfmaddsubxxxpd */,
  &gname673   /* vfmaddsubxrpd */,
  &gname673   /* vfmaddsubxxrpd */,
  &gname673   /* vfmaddsubxxxrpd */,
  &gname664   /* vfnmaddps */,
  &gname673   /* vfnmaddxps */,
  &gname673   /* vfnmaddxxps */,
  &gname673   /* vfnmaddxxxps */,
  &gname673   /* vfnmaddxrps */,
  &gname673   /* vfnmaddxxrps */,
  &gname673   /* vfnmaddxxxrps */,
  &gname664   /* vfnmaddpd */,
  &gname673   /* vfnmaddxpd */,
  &gname673   /* vfnmaddxxpd */,
  &gname673   /* vfnmaddxxxpd */,
  &gname673   /* vfnmaddxrpd */,
  &gname673   /* vfnmaddxxrpd */,
  &gname673   /* vfnmaddxxxrpd */,
  &gname664   /* vfmsubss */,
  &gname673   /* vfmsubxss */,
  &gname673   /* vfmsubxxss */,
  &gname673   /* vfmsubxxxss */,
  &gname673   /* vfmsubxrss */,
  &gname673   /* vfmsubxxrss */,
  &gname673   /* vfmsubxxxrss */,
  &gname664   /* vfmsubsd */,
  &gname673   /* vfmsubxsd */,
  &gname673   /* vfmsubxxsd */,
  &gname673   /* vfmsubxxxsd */,
  &gname673   /* vfmsubxrsd */,
  &gname673   /* vfmsubxxrsd */,
  &gname673   /* vfmsubxxxrsd */,
  &gname664   /* vfnmsubss */,
  &gname673   /* vfnmsubxss */,
  &gname673   /* vfnmsubxxss */,
  &gname673   /* vfnmsubxxxss */,
  &gname673   /* vfnmsubxrss */,
  &gname673   /* vfnmsubxxrss */,
  &gname673   /* vfnmsubxxxrss */,
  &gname664   /* vfnmsubsd */,
  &gname673   /* vfnmsubxsd */,
  &gname673   /* vfnmsubxxsd */,
  &gname673   /* vfnmsubxxxsd */,
  &gname673   /* vfnmsubxrsd */,
  &gname673   /* vfnmsubxxrsd */,
  &gname673   /* vfnmsubxxxrsd */,
  &gname664   /* vfmsubps */,
  &gname673   /* vfmsubxps */,
  &gname673   /* vfmsubxxps */,
  &gname673   /* vfmsubxxxps */,
  &gname673   /* vfmsubxrps */,
  &gname673   /* vfmsubxxrps */,
  &gname673   /* vfmsubxxxrps */,
  &gname664   /* vfmsubpd */,
  &gname673   /* vfmsubxpd */,
  &gname673   /* vfmsubxxpd */,
  &gname673   /* vfmsubxxxpd */,
  &gname673   /* vfmsubxrpd */,
  &gname673   /* vfmsubxxrpd */,
  &gname673   /* vfmsubxxxrpd */,
  &gname664   /* vfmsubaddps */,
  &gname673   /* vfmsubaddxps */,
  &gname673   /* vfmsubaddxxps */,
  &gname673   /* vfmsubaddxxxps */,
  &gname673   /* vfmsubaddxrps */,
  &gname673   /* vfmsubaddxxrps */,
  &gname673   /* vfmsubaddxxxrps */,
  &gname664   /* vfmsubaddpd */,
  &gname673   /* vfmsubaddxpd */,
  &gname673   /* vfmsubaddxxpd */,
  &gname673   /* vfmsubaddxxxpd */,
  &gname673   /* vfmsubaddxrpd */,
  &gname673   /* vfmsubaddxxrpd */,
  &gname673   /* vfmsubaddxxxrpd */,
  &gname664   /* vfnmsubps */,
  &gname673   /* vfnmsubxps */,
  &gname673   /* vfnmsubxxps */,
  &gname673   /* vfnmsubxxxps */,
  &gname673   /* vfnmsubxrps */,
  &gname673   /* vfnmsubxxrps */,
  &gname673   /* vfnmsubxxxrps */,
  &gname664   /* vfnmsubpd */,
  &gname673   /* vfnmsubxpd */,
  &gname673   /* vfnmsubxxpd */,
  &gname673   /* vfnmsubxxxpd */,
  &gname673   /* vfnmsubxrpd */,
  &gname673   /* vfnmsubxxrpd */,
  &gname673   /* vfnmsubxxxrpd */,
  &gname1024  /* vzeroupper */,
  &gname979   /* mfence */,
  &gname979   /* lfence */,
  &gname979   /* sfence */,
  &gname1114  /* monitor */,
  &gname1114  /* mwait */,
  &gname2068  /* asm */,
  &gname2068  /* intrncall */,
  &gname2068  /* spadjust */,
  &gname2068  /* savexmms */,
  &gname16    /* zero32 */,
  &gname16    /* zero64 */,
  &gname565   /* xzero32 */,
  &gname565   /* xzero64 */,
  &gname565   /* xzero128v32 */,
  &gname565   /* xzero128v64 */,
  &gname538   /* fadd */,
  &gname538   /* faddp */,
  &gname259   /* flds */,
  &gname259   /* flds_n32 */,
  &gname259   /* fldl */,
  &gname259   /* fldl_n32 */,
  &gname259   /* fldt */,
  &gname259   /* fldt_n32 */,
  &gname259   /* fld */,
  &gname322   /* fst */,
  &gname322   /* fstp */,
  &gname322   /* fstps */,
  &gname322   /* fstps_n32 */,
  &gname322   /* fstpl */,
  &gname322   /* fstpl_n32 */,
  &gname322   /* fstpt */,
  &gname322   /* fstpt_n32 */,
  &gname322   /* fsts */,
  &gname322   /* fsts_n32 */,
  &gname322   /* fstl */,
  &gname322   /* fstl_n32 */,
  &gname538   /* fxch */,
  &gname241   /* fmov */,
  &gname538   /* fsub */,
  &gname538   /* fsubr */,
  &gname538   /* fsubp */,
  &gname538   /* fsubrp */,
  &gname538   /* fmul */,
  &gname538   /* fmulp */,
  &gname943   /* fdiv */,
  &gname943   /* fdivp */,
  &gname943   /* fdivr */,
  &gname943   /* fdivrp */,
  &gname538   /* fucomi */,
  &gname538   /* fucomip */,
  &gname223   /* fchs */,
  &gname970   /* frndint */,
  &gname322   /* fnstcw */,
  &gname259   /* fldcw */,
  &gname538   /* fistps */,
  &gname538   /* fistpl */,
  &gname538   /* fists */,
  &gname538   /* fistl */,
  &gname538   /* fistpll */,
  &gname871   /* filds */,
  &gname871   /* fildl */,
  &gname871   /* fildll */,
  &gname538   /* fldz */,
  &gname223   /* fabs */,
  &gname610   /* fsqrt */,
  &gname61    /* fcmovb */,
  &gname61    /* fcmovbe */,
  &gname61    /* fcmovnb */,
  &gname61    /* fcmovnbe */,
  &gname61    /* fcmove */,
  &gname61    /* fcmovne */,
  &gname61    /* fcmovu */,
  &gname61    /* fcmovnu */,
  &gname619   /* fcos */,
  &gname628   /* fsin */,
  &gname808   /* cmpeqpd */,
  &gname808   /* cmpltpd */,
  &gname808   /* cmplepd */,
  &gname808   /* cmpunordpd */,
  &gname808   /* cmpneqpd */,
  &gname808   /* cmpnltpd */,
  &gname808   /* cmpnlepd */,
  &gname808   /* cmpordpd */,
  &gname808   /* cmpeqps */,
  &gname808   /* cmpltps */,
  &gname808   /* cmpleps */,
  &gname808   /* cmpunordps */,
  &gname808   /* cmpneqps */,
  &gname808   /* cmpnltps */,
  &gname808   /* cmpnleps */,
  &gname808   /* cmpordps */,
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
  &gname1006  /* emms */,
  &gname331   /* stmxcsr */,
  &gname268   /* ldmxcsr */,
  &gname1015  /* clflush */,
  &gname538   /* fisttps */,
  &gname538   /* fisttpl */,
  &gname538   /* fisttpll */,
  &gname1123  /* pabs128v8 */,
  &gname1132  /* pabsx128v8 */,
  &gname1132  /* pabsxx128v8 */,
  &gname1132  /* pabsxxx128v8 */,
  &gname1123  /* pabs128v16 */,
  &gname1132  /* pabsx128v16 */,
  &gname1132  /* pabsxx128v16 */,
  &gname1132  /* pabsxxx128v16 */,
  &gname1123  /* pabs128v32 */,
  &gname1132  /* pabsx128v32 */,
  &gname1132  /* pabsxx128v32 */,
  &gname1132  /* pabsxxx128v32 */,
  &gname1123  /* psign128v8 */,
  &gname1132  /* psignx128v8 */,
  &gname1132  /* psignxx128v8 */,
  &gname1132  /* psignxxx128v8 */,
  &gname1123  /* psign128v16 */,
  &gname1132  /* psignx128v16 */,
  &gname1132  /* psignxx128v16 */,
  &gname1132  /* psignxxx128v16 */,
  &gname1123  /* psign128v32 */,
  &gname1132  /* psignx128v32 */,
  &gname1132  /* psignxx128v32 */,
  &gname1132  /* psignxxx128v32 */,
  &gname1123  /* pshuf128v8 */,
  &gname1132  /* pshufx128v8 */,
  &gname1132  /* pshufxx128v8 */,
  &gname1132  /* pshufxxx128v8 */,
  &gname1141  /* phsub128v16 */,
  &gname1150  /* phsubx128v16 */,
  &gname1150  /* phsubxx128v16 */,
  &gname1150  /* phsubxxx128v16 */,
  &gname1141  /* phsub128v32 */,
  &gname1150  /* phsubx128v32 */,
  &gname1150  /* phsubxx128v32 */,
  &gname1150  /* phsubxxx128v32 */,
  &gname1141  /* phsubs128v16 */,
  &gname1150  /* phsubsx128v16 */,
  &gname1150  /* phsubsxx128v16 */,
  &gname1150  /* phsubsxxx128v16 */,
  &gname1141  /* phadd128v16 */,
  &gname1150  /* phaddx128v16 */,
  &gname1150  /* phaddxx128v16 */,
  &gname1150  /* phaddxxx128v16 */,
  &gname1141  /* phadd128v32 */,
  &gname1150  /* phaddx128v32 */,
  &gname1150  /* phaddxx128v32 */,
  &gname1150  /* phaddxxx128v32 */,
  &gname1141  /* phadds128v16 */,
  &gname1150  /* phaddsx128v16 */,
  &gname1150  /* phaddsxx128v16 */,
  &gname1150  /* phaddsxxx128v16 */,
  &gname1159  /* pmulhrsw128 */,
  &gname1168  /* pmulhrswx128 */,
  &gname1168  /* pmulhrswxx128 */,
  &gname1168  /* pmulhrswxxx128 */,
  &gname1159  /* pmaddubsw128 */,
  &gname1168  /* pmaddubswx128 */,
  &gname1168  /* pmaddubswxx128 */,
  &gname1168  /* pmaddubswxxx128 */,
  &gname1123  /* palignr128 */,
  &gname1132  /* palignrx128 */,
  &gname1132  /* palignrxx128 */,
  &gname1132  /* palignrxxx128 */,
  &gname1285  /* muldq */,
  &gname1294  /* muldqx */,
  &gname1294  /* muldqxx */,
  &gname1294  /* muldqxxx */,
  &gname1303  /* ldntdqa */,
  &gname1303  /* ldntdqax */,
  &gname1303  /* ldntdqaxx */,
  &gname1312  /* stntdq */,
  &gname1312  /* stntdqx */,
  &gname1312  /* stntdqxx */,
  &gname1177  /* mins128v8 */,
  &gname1186  /* minsx128v8 */,
  &gname1186  /* minsxx128v8 */,
  &gname1186  /* minsxxx128v8 */,
  &gname1177  /* maxs128v8 */,
  &gname1186  /* maxsx128v8 */,
  &gname1186  /* maxsxx128v8 */,
  &gname1186  /* maxsxxx128v8 */,
  &gname1177  /* minu128v16 */,
  &gname1186  /* minux128v16 */,
  &gname1186  /* minuxx128v16 */,
  &gname1186  /* minuxxx128v16 */,
  &gname1177  /* maxu128v16 */,
  &gname1186  /* maxux128v16 */,
  &gname1186  /* maxuxx128v16 */,
  &gname1186  /* maxuxxx128v16 */,
  &gname1177  /* minu128v32 */,
  &gname1186  /* minux128v32 */,
  &gname1186  /* minuxx128v32 */,
  &gname1186  /* minuxxx128v32 */,
  &gname1177  /* maxu128v32 */,
  &gname1186  /* maxux128v32 */,
  &gname1186  /* maxuxx128v32 */,
  &gname1186  /* maxuxxx128v32 */,
  &gname1177  /* mins128v32 */,
  &gname1186  /* minsx128v32 */,
  &gname1186  /* minsxx128v32 */,
  &gname1186  /* minsxxx128v32 */,
  &gname1177  /* maxs128v32 */,
  &gname1186  /* maxsx128v32 */,
  &gname1186  /* maxsxx128v32 */,
  &gname1186  /* maxsxxx128v32 */,
  &gname1177  /* pmovsxbw */,
  &gname1186  /* pmovsxbwx */,
  &gname1186  /* pmovsxbwxx */,
  &gname1186  /* pmovsxbwxxx */,
  &gname1177  /* pmovzxbw */,
  &gname1186  /* pmovzxbwx */,
  &gname1186  /* pmovzxbwxx */,
  &gname1186  /* pmovzxbwxxx */,
  &gname1177  /* pmovsxbd */,
  &gname1186  /* pmovsxbdx */,
  &gname1186  /* pmovsxbdxx */,
  &gname1186  /* pmovsxbdxxx */,
  &gname1177  /* pmovzxbd */,
  &gname1186  /* pmovzxbdx */,
  &gname1186  /* pmovzxbdxx */,
  &gname1186  /* pmovzxbdxxx */,
  &gname1177  /* pmovsxbq */,
  &gname1186  /* pmovsxbqx */,
  &gname1186  /* pmovsxbqxx */,
  &gname1186  /* pmovsxbqxxx */,
  &gname1177  /* pmovzxbq */,
  &gname1186  /* pmovzxbqx */,
  &gname1186  /* pmovzxbqxx */,
  &gname1186  /* pmovzxbqxxx */,
  &gname1177  /* pmovsxwd */,
  &gname1186  /* pmovsxwdx */,
  &gname1186  /* pmovsxwdxx */,
  &gname1186  /* pmovsxwdxxx */,
  &gname1177  /* pmovzxwd */,
  &gname1186  /* pmovzxwdx */,
  &gname1186  /* pmovzxwdxx */,
  &gname1186  /* pmovzxwdxxx */,
  &gname1177  /* pmovsxwq */,
  &gname1186  /* pmovsxwqx */,
  &gname1186  /* pmovsxwqxx */,
  &gname1186  /* pmovsxwqxxx */,
  &gname1177  /* pmovzxwq */,
  &gname1186  /* pmovzxwqx */,
  &gname1186  /* pmovzxwqxx */,
  &gname1186  /* pmovzxwqxxx */,
  &gname1177  /* pmovsxdq */,
  &gname1186  /* pmovsxdqx */,
  &gname1186  /* pmovsxdqxx */,
  &gname1186  /* pmovsxdqxxx */,
  &gname1177  /* pmovzxdq */,
  &gname1186  /* pmovzxdqx */,
  &gname1186  /* pmovzxdqxx */,
  &gname1186  /* pmovzxdqxxx */,
  &gname1285  /* mul128v32 */,
  &gname1294  /* mulx128v32 */,
  &gname1294  /* mulxx128v32 */,
  &gname1294  /* mulxxx128v32 */,
  &gname1321  /* cmpeq128v64 */,
  &gname1330  /* cmpeqx128v64 */,
  &gname1330  /* cmpeqxx128v64 */,
  &gname1330  /* cmpeqxxx128v64 */,
  &gname1321  /* packusdw */,
  &gname1330  /* packusdwx */,
  &gname1330  /* packusdwxx */,
  &gname1330  /* packusdwxxx */,
  &gname1177  /* phminposuw */,
  &gname1186  /* phminposuwx */,
  &gname1186  /* phminposuwxx */,
  &gname1186  /* phminposuwxxx */,
  &gname1339  /* ptest128 */,
  &gname1348  /* ptestx128 */,
  &gname1348  /* ptestxx128 */,
  &gname1348  /* ptestxxx128 */,
  &gname1249  /* roundsd */,
  &gname1258  /* roundxsd */,
  &gname1258  /* roundxxsd */,
  &gname1258  /* roundxxxsd */,
  &gname1285  /* mpsadbw */,
  &gname1294  /* mpsadbwx */,
  &gname1294  /* mpsadbwxx */,
  &gname1294  /* mpsadbwxxx */,
  &gname1231  /* insr128v8 */,
  &gname1240  /* insrx128v8 */,
  &gname1240  /* insrxx128v8 */,
  &gname1240  /* insrxxx128v8 */,
  &gname1231  /* insr128v16 */,
  &gname1240  /* insrx128v16 */,
  &gname1240  /* insrxx128v16 */,
  &gname1240  /* insrxxx128v16 */,
  &gname1231  /* insr128v32 */,
  &gname1240  /* insrx128v32 */,
  &gname1240  /* insrxx128v32 */,
  &gname1240  /* insrxxx128v32 */,
  &gname1231  /* insr128v64 */,
  &gname1240  /* insrx128v64 */,
  &gname1240  /* insrxx128v64 */,
  &gname1240  /* insrxxx128v64 */,
  &gname1231  /* extr128v8 */,
  &gname1240  /* extrx128v8 */,
  &gname1240  /* extrxx128v8 */,
  &gname1240  /* extrxxx128v8 */,
  &gname1231  /* extr128v16 */,
  &gname1240  /* extrx128v16 */,
  &gname1240  /* extrxx128v16 */,
  &gname1240  /* extrxxx128v16 */,
  &gname1231  /* extr128v32 */,
  &gname1240  /* extrx128v32 */,
  &gname1240  /* extrxx128v32 */,
  &gname1240  /* extrxxx128v32 */,
  &gname1231  /* extr128v64 */,
  &gname1240  /* extrx128v64 */,
  &gname1240  /* extrxx128v64 */,
  &gname1240  /* extrxxx128v64 */,
  &gname1267  /* finsr128v32 */,
  &gname1276  /* finsrx128v32 */,
  &gname1276  /* finsrxx128v32 */,
  &gname1276  /* finsrxxx128v32 */,
  &gname1267  /* fextr128v32 */,
  &gname1276  /* fextrx128v32 */,
  &gname1276  /* fextrxx128v32 */,
  &gname1276  /* fextrxxx128v32 */,
  &gname1213  /* fblendv128v32 */,
  &gname1222  /* fblendvx128v32 */,
  &gname1222  /* fblendvxx128v32 */,
  &gname1222  /* fblendvxxx128v32 */,
  &gname1213  /* fblendv128v64 */,
  &gname1222  /* fblendvx128v64 */,
  &gname1222  /* fblendvxx128v64 */,
  &gname1222  /* fblendvxxx128v64 */,
  &gname1213  /* blendv128v8 */,
  &gname1222  /* blendvx128v8 */,
  &gname1222  /* blendvxx128v8 */,
  &gname1222  /* blendvxxx128v8 */,
  &gname1195  /* round128v32 */,
  &gname1204  /* roundx128v32 */,
  &gname1204  /* roundxx128v32 */,
  &gname1204  /* roundxxx128v32 */,
  &gname1195  /* roundss */,
  &gname1204  /* roundxss */,
  &gname1204  /* roundxxss */,
  &gname1204  /* roundxxxss */,
  &gname1213  /* fblend128v64 */,
  &gname1222  /* fblendx128v64 */,
  &gname1222  /* fblendxx128v64 */,
  &gname1222  /* fblendxxx128v64 */,
  &gname1213  /* blend128v16 */,
  &gname1222  /* blendx128v16 */,
  &gname1222  /* blendxx128v16 */,
  &gname1222  /* blendxxx128v16 */,
  &gname1285  /* fdp128v32 */,
  &gname1294  /* fdpx128v32 */,
  &gname1294  /* fdpxx128v32 */,
  &gname1294  /* fdpxxx128v32 */,
  &gname1285  /* fdp128v64 */,
  &gname1294  /* fdpx128v64 */,
  &gname1294  /* fdpxx128v64 */,
  &gname1294  /* fdpxxx128v64 */,
  &gname1195  /* round128v64 */,
  &gname1204  /* roundx128v64 */,
  &gname1204  /* roundxx128v64 */,
  &gname1204  /* roundxxx128v64 */,
  &gname1213  /* fblend128v32 */,
  &gname1222  /* fblendx128v32 */,
  &gname1222  /* fblendxx128v32 */,
  &gname1222  /* fblendxxx128v32 */,
  &gname1393  /* cmpgt128v64 */,
  &gname1402  /* cmpgtx128v64 */,
  &gname1402  /* cmpgtxx128v64 */,
  &gname1402  /* cmpgtxxx128v64 */,
  &gname1357  /* crc32w */,
  &gname1366  /* crc32wx */,
  &gname1366  /* crc32wxx */,
  &gname1366  /* crc32wxxx */,
  &gname1357  /* crc32d */,
  &gname1366  /* crc32dx */,
  &gname1366  /* crc32dxx */,
  &gname1366  /* crc32dxxx */,
  &gname1357  /* crc32q */,
  &gname1366  /* crc32qx */,
  &gname1366  /* crc32qxx */,
  &gname1366  /* crc32qxxx */,
  &gname1357  /* crc32b */,
  &gname1366  /* crc32bx */,
  &gname1366  /* crc32bxx */,
  &gname1366  /* crc32bxxx */,
  &gname1375  /* cmpestrm */,
  &gname1384  /* cmpestrmx */,
  &gname1384  /* cmpestrmxx */,
  &gname1384  /* cmpestrmxxx */,
  &gname1375  /* cmpestri */,
  &gname1384  /* cmpestrix */,
  &gname1384  /* cmpestrixx */,
  &gname1384  /* cmpestrixxx */,
  &gname1375  /* cmpistrm */,
  &gname1384  /* cmpistrmx */,
  &gname1384  /* cmpistrmxx */,
  &gname1384  /* cmpistrmxxx */,
  &gname1375  /* cmpistri */,
  &gname1384  /* cmpistrix */,
  &gname1384  /* cmpistrixx */,
  &gname1384  /* cmpistrixxx */,
  &gname1393  /* popcnt16 */,
  &gname1402  /* popcntx16 */,
  &gname1402  /* popcntxx16 */,
  &gname1402  /* popcntxxx16 */,
  &gname1393  /* popcnt32 */,
  &gname1402  /* popcntx32 */,
  &gname1402  /* popcntxx32 */,
  &gname1402  /* popcntxxx32 */,
  &gname1393  /* popcnt64 */,
  &gname1402  /* popcntx64 */,
  &gname1402  /* popcntxx64 */,
  &gname1402  /* popcntxxx64 */,
  &gname1411  /* aesimc */,
  &gname1420  /* aesimcx */,
  &gname1420  /* aesimcxx */,
  &gname1420  /* aesimcxxx */,
  &gname1411  /* aeskeygenassist */,
  &gname1420  /* aeskeygenassistx */,
  &gname1420  /* aeskeygenassistxx */,
  &gname1420  /* aeskeygenassistxxx */,
  &gname1411  /* aesenc */,
  &gname1420  /* aesencx */,
  &gname1420  /* aesencxx */,
  &gname1420  /* aesencxxx */,
  &gname1411  /* aesenclast */,
  &gname1420  /* aesenclastx */,
  &gname1420  /* aesenclastxx */,
  &gname1420  /* aesenclastxxx */,
  &gname1411  /* aesdec */,
  &gname1420  /* aesdecx */,
  &gname1420  /* aesdecxx */,
  &gname1420  /* aesdecxxx */,
  &gname1411  /* aesdeclast */,
  &gname1420  /* aesdeclastx */,
  &gname1420  /* aesdeclastxx */,
  &gname1420  /* aesdeclastxxx */,
  &gname1429  /* pclmulqdq */,
  &gname1438  /* pclmulqdqx */,
  &gname1438  /* pclmulqdqxx */,
  &gname1438  /* pclmulqdqxxx */,
  &gname1447  /* vphaddbd */,
  &gname1456  /* vphaddbdx */,
  &gname1456  /* vphaddbdxx */,
  &gname1456  /* vphaddbdxxx */,
  &gname1447  /* vphaddbq */,
  &gname1456  /* vphaddbqx */,
  &gname1456  /* vphaddbqxx */,
  &gname1456  /* vphaddbqxxx */,
  &gname1447  /* vphaddbw */,
  &gname1456  /* vphaddbwx */,
  &gname1456  /* vphaddbwxx */,
  &gname1456  /* vphaddbwxxx */,
  &gname1447  /* vphadddq */,
  &gname1456  /* vphadddqx */,
  &gname1456  /* vphadddqxx */,
  &gname1456  /* vphadddqxxx */,
  &gname1447  /* vphaddubd */,
  &gname1456  /* vphaddubdx */,
  &gname1456  /* vphaddubdxx */,
  &gname1456  /* vphaddubdxxx */,
  &gname1447  /* vphaddubq */,
  &gname1456  /* vphaddubqx */,
  &gname1456  /* vphaddubqxx */,
  &gname1456  /* vphaddubqxxx */,
  &gname1447  /* vphaddubw */,
  &gname1456  /* vphaddubwx */,
  &gname1456  /* vphaddubwxx */,
  &gname1456  /* vphaddubwxxx */,
  &gname1447  /* vphaddudq */,
  &gname1456  /* vphaddudqx */,
  &gname1456  /* vphaddudqxx */,
  &gname1456  /* vphaddudqxxx */,
  &gname1447  /* vphadduwd */,
  &gname1456  /* vphadduwdx */,
  &gname1456  /* vphadduwdxx */,
  &gname1456  /* vphadduwdxxx */,
  &gname1447  /* vphadduwq */,
  &gname1456  /* vphadduwqx */,
  &gname1456  /* vphadduwqxx */,
  &gname1456  /* vphadduwqxxx */,
  &gname1447  /* vphaddwd */,
  &gname1456  /* vphaddwdx */,
  &gname1456  /* vphaddwdxx */,
  &gname1456  /* vphaddwdxxx */,
  &gname1447  /* vphaddwq */,
  &gname1456  /* vphaddwqx */,
  &gname1456  /* vphaddwqxx */,
  &gname1456  /* vphaddwqxxx */,
  &gname1447  /* vphsubbw */,
  &gname1456  /* vphsubbwx */,
  &gname1456  /* vphsubbwxx */,
  &gname1456  /* vphsubbwxxx */,
  &gname1447  /* vphsubdq */,
  &gname1456  /* vphsubdqx */,
  &gname1456  /* vphsubdqxx */,
  &gname1456  /* vphsubdqxxx */,
  &gname1447  /* vphsubwd */,
  &gname1456  /* vphsubwdx */,
  &gname1456  /* vphsubwdxx */,
  &gname1456  /* vphsubwdxxx */,
  &gname1501  /* vfrczpd */,
  &gname1510  /* vfrczpdx */,
  &gname1510  /* vfrczpdxx */,
  &gname1510  /* vfrczpdxxx */,
  &gname1501  /* vfrczps */,
  &gname1510  /* vfrczpsx */,
  &gname1510  /* vfrczpsxx */,
  &gname1510  /* vfrczpsxxx */,
  &gname1501  /* vfrczsd */,
  &gname1510  /* vfrczsdx */,
  &gname1510  /* vfrczsdxx */,
  &gname1510  /* vfrczsdxxx */,
  &gname1501  /* vfrczss */,
  &gname1510  /* vfrczssx */,
  &gname1510  /* vfrczssxx */,
  &gname1510  /* vfrczssxxx */,
  &gname1519  /* vprotbi */,
  &gname1528  /* vprotbix */,
  &gname1528  /* vprotbixx */,
  &gname1528  /* vprotbixxx */,
  &gname1519  /* vprotdi */,
  &gname1528  /* vprotdix */,
  &gname1528  /* vprotdixx */,
  &gname1528  /* vprotdixxx */,
  &gname1519  /* vprotqi */,
  &gname1528  /* vprotqix */,
  &gname1528  /* vprotqixx */,
  &gname1528  /* vprotqixxx */,
  &gname1519  /* vprotwi */,
  &gname1528  /* vprotwix */,
  &gname1528  /* vprotwixx */,
  &gname1528  /* vprotwixxx */,
  &gname1519  /* vpcomb */,
  &gname1528  /* vpcombx */,
  &gname1528  /* vpcombxx */,
  &gname1528  /* vpcombxxx */,
  &gname1519  /* vpcomd */,
  &gname1528  /* vpcomdx */,
  &gname1528  /* vpcomdxx */,
  &gname1528  /* vpcomdxxx */,
  &gname1519  /* vpcomq */,
  &gname1528  /* vpcomqx */,
  &gname1528  /* vpcomqxx */,
  &gname1528  /* vpcomqxxx */,
  &gname1519  /* vpcomw */,
  &gname1528  /* vpcomwx */,
  &gname1528  /* vpcomwxx */,
  &gname1528  /* vpcomwxxx */,
  &gname1519  /* vpcomub */,
  &gname1528  /* vpcomubx */,
  &gname1528  /* vpcomubxx */,
  &gname1528  /* vpcomubxxx */,
  &gname1519  /* vpcomud */,
  &gname1528  /* vpcomudx */,
  &gname1528  /* vpcomudxx */,
  &gname1528  /* vpcomudxxx */,
  &gname1519  /* vpcomuq */,
  &gname1528  /* vpcomuqx */,
  &gname1528  /* vpcomuqxx */,
  &gname1528  /* vpcomuqxxx */,
  &gname1519  /* vpcomuw */,
  &gname1528  /* vpcomuwx */,
  &gname1528  /* vpcomuwxx */,
  &gname1528  /* vpcomuwxxx */,
  &gname1519  /* vpperm */,
  &gname1528  /* vppermx */,
  &gname1528  /* vppermxx */,
  &gname1528  /* vppermxxx */,
  &gname1528  /* vppermxr */,
  &gname1528  /* vppermxxr */,
  &gname1528  /* vppermxxxr */,
  &gname1537  /* vprotb */,
  &gname1546  /* vprotbx */,
  &gname1546  /* vprotbxx */,
  &gname1546  /* vprotbxxx */,
  &gname1546  /* vprotbxr */,
  &gname1546  /* vprotbxxr */,
  &gname1546  /* vprotbxxxr */,
  &gname1537  /* vprotd */,
  &gname1546  /* vprotdx */,
  &gname1546  /* vprotdxx */,
  &gname1546  /* vprotdxxx */,
  &gname1546  /* vprotdxr */,
  &gname1546  /* vprotdxxr */,
  &gname1546  /* vprotdxxxr */,
  &gname1537  /* vprotq */,
  &gname1546  /* vprotqx */,
  &gname1546  /* vprotqxx */,
  &gname1546  /* vprotqxxx */,
  &gname1546  /* vprotqxr */,
  &gname1546  /* vprotqxxr */,
  &gname1546  /* vprotqxxxr */,
  &gname1537  /* vprotw */,
  &gname1546  /* vprotwx */,
  &gname1546  /* vprotwxx */,
  &gname1546  /* vprotwxxx */,
  &gname1546  /* vprotwxr */,
  &gname1546  /* vprotwxxr */,
  &gname1546  /* vprotwxxxr */,
  &gname1537  /* vpshab */,
  &gname1546  /* vpshabx */,
  &gname1546  /* vpshabxx */,
  &gname1546  /* vpshabxxx */,
  &gname1546  /* vpshabxr */,
  &gname1546  /* vpshabxxr */,
  &gname1546  /* vpshabxxxr */,
  &gname1537  /* vpshad */,
  &gname1546  /* vpshadx */,
  &gname1546  /* vpshadxx */,
  &gname1546  /* vpshadxxx */,
  &gname1546  /* vpshadxr */,
  &gname1546  /* vpshadxxr */,
  &gname1546  /* vpshadxxxr */,
  &gname1537  /* vpshaq */,
  &gname1546  /* vpshaqx */,
  &gname1546  /* vpshaqxx */,
  &gname1546  /* vpshaqxxx */,
  &gname1546  /* vpshaqxr */,
  &gname1546  /* vpshaqxxr */,
  &gname1546  /* vpshaqxxxr */,
  &gname1537  /* vpshaw */,
  &gname1546  /* vpshawx */,
  &gname1546  /* vpshawxx */,
  &gname1546  /* vpshawxxx */,
  &gname1546  /* vpshawxr */,
  &gname1546  /* vpshawxxr */,
  &gname1546  /* vpshawxxxr */,
  &gname1537  /* vpshlb */,
  &gname1546  /* vpshlbx */,
  &gname1546  /* vpshlbxx */,
  &gname1546  /* vpshlbxxx */,
  &gname1546  /* vpshlbxr */,
  &gname1546  /* vpshlbxxr */,
  &gname1546  /* vpshlbxxxr */,
  &gname1537  /* vpshld */,
  &gname1546  /* vpshldx */,
  &gname1546  /* vpshldxx */,
  &gname1546  /* vpshldxxx */,
  &gname1546  /* vpshldxr */,
  &gname1546  /* vpshldxxr */,
  &gname1546  /* vpshldxxxr */,
  &gname1537  /* vpshlq */,
  &gname1546  /* vpshlqx */,
  &gname1546  /* vpshlqxx */,
  &gname1546  /* vpshlqxxx */,
  &gname1546  /* vpshlqxr */,
  &gname1546  /* vpshlqxxr */,
  &gname1546  /* vpshlqxxxr */,
  &gname1537  /* vpshlw */,
  &gname1546  /* vpshlwx */,
  &gname1546  /* vpshlwxx */,
  &gname1546  /* vpshlwxxx */,
  &gname1546  /* vpshlwxr */,
  &gname1546  /* vpshlwxxr */,
  &gname1546  /* vpshlwxxxr */,
  &gname1519  /* vpcmov */,
  &gname1528  /* vpcmovx */,
  &gname1528  /* vpcmovxx */,
  &gname1528  /* vpcmovxxx */,
  &gname1528  /* vpcmovxr */,
  &gname1528  /* vpcmovxxr */,
  &gname1528  /* vpcmovxxxr */,
  &gname1483  /* vpmacsdd */,
  &gname1492  /* vpmacsddx */,
  &gname1492  /* vpmacsddxx */,
  &gname1492  /* vpmacsddxxx */,
  &gname1465  /* vpmacsdqh */,
  &gname1474  /* vpmacsdqhx */,
  &gname1474  /* vpmacsdqhxx */,
  &gname1474  /* vpmacsdqhxxx */,
  &gname1465  /* vpmacsdql */,
  &gname1474  /* vpmacsdqlx */,
  &gname1474  /* vpmacsdqlxx */,
  &gname1474  /* vpmacsdqlxxx */,
  &gname1483  /* vpmacssdd */,
  &gname1492  /* vpmacssddx */,
  &gname1492  /* vpmacssddxx */,
  &gname1492  /* vpmacssddxxx */,
  &gname1465  /* vpmacssdqh */,
  &gname1474  /* vpmacssdqhx */,
  &gname1474  /* vpmacssdqhxx */,
  &gname1474  /* vpmacssdqhxxx */,
  &gname1465  /* vpmacssdql */,
  &gname1474  /* vpmacssdqlx */,
  &gname1474  /* vpmacssdqlxx */,
  &gname1474  /* vpmacssdqlxxx */,
  &gname1465  /* vpmacsswd */,
  &gname1474  /* vpmacsswdx */,
  &gname1474  /* vpmacsswdxx */,
  &gname1474  /* vpmacsswdxxx */,
  &gname1465  /* vpmacssww */,
  &gname1474  /* vpmacsswwx */,
  &gname1474  /* vpmacsswwxx */,
  &gname1474  /* vpmacsswwxxx */,
  &gname1465  /* vpmacswd */,
  &gname1474  /* vpmacswdx */,
  &gname1474  /* vpmacswdxx */,
  &gname1474  /* vpmacswdxxx */,
  &gname1465  /* vpmacsww */,
  &gname1474  /* vpmacswwx */,
  &gname1474  /* vpmacswwxx */,
  &gname1474  /* vpmacswwxxx */,
  &gname1465  /* vpmadcsswd */,
  &gname1474  /* vpmadcsswdx */,
  &gname1474  /* vpmadcsswdxx */,
  &gname1474  /* vpmadcsswdxxx */,
  &gname1465  /* vpmadcswd */,
  &gname1474  /* vpmadcswdx */,
  &gname1474  /* vpmadcswdxx */,
  &gname1474  /* vpmadcswdxxx */,
  &gname547   /* vfadd128v64 */,
  &gname556   /* vfaddx128v64 */,
  &gname556   /* vfaddxx128v64 */,
  &gname556   /* vfaddxxx128v64 */,
  &gname547   /* vfadd128v32 */,
  &gname556   /* vfaddx128v32 */,
  &gname556   /* vfaddxx128v32 */,
  &gname556   /* vfaddxxx128v32 */,
  &gname547   /* vfaddsd */,
  &gname556   /* vfaddxsd */,
  &gname556   /* vfaddxxsd */,
  &gname556   /* vfaddxxxsd */,
  &gname547   /* vfaddss */,
  &gname556   /* vfaddxss */,
  &gname556   /* vfaddxxss */,
  &gname556   /* vfaddxxxss */,
  &gname547   /* vfaddsub128v64 */,
  &gname556   /* vfaddsubx128v64 */,
  &gname556   /* vfaddsubxx128v64 */,
  &gname556   /* vfaddsubxxx128v64 */,
  &gname547   /* vfaddsub128v32 */,
  &gname556   /* vfaddsubx128v32 */,
  &gname556   /* vfaddsubxx128v32 */,
  &gname556   /* vfaddsubxxx128v32 */,
  &gname1789  /* vaesenc */,
  &gname1798  /* vaesencx */,
  &gname1798  /* vaesencxx */,
  &gname1798  /* vaesencxxx */,
  &gname1789  /* vaesenclast */,
  &gname1798  /* vaesenclastx */,
  &gname1798  /* vaesenclastxx */,
  &gname1798  /* vaesenclastxxx */,
  &gname1789  /* vaesdec */,
  &gname1798  /* vaesdecx */,
  &gname1798  /* vaesdecxx */,
  &gname1798  /* vaesdecxxx */,
  &gname1789  /* vaesdeclast */,
  &gname1798  /* vaesdeclastx */,
  &gname1798  /* vaesdeclastxx */,
  &gname1798  /* vaesdeclastxxx */,
  &gname1789  /* vaesimc */,
  &gname1798  /* vaesimcx */,
  &gname1798  /* vaesimcxx */,
  &gname1798  /* vaesimcxxx */,
  &gname1789  /* vaeskeygenassist */,
  &gname1798  /* vaeskeygenassistx */,
  &gname1798  /* vaeskeygenassistxx */,
  &gname1798  /* vaeskeygenassistxxx */,
  &gname1555  /* vandpd */,
  &gname1555  /* vfand128v64 */,
  &gname1564  /* vfandx128v64 */,
  &gname1564  /* vfandxx128v64 */,
  &gname1564  /* vfandxxx128v64 */,
  &gname1555  /* vandps */,
  &gname1555  /* vfand128v32 */,
  &gname1564  /* vfandx128v32 */,
  &gname1564  /* vfandxx128v32 */,
  &gname1564  /* vfandxxx128v32 */,
  &gname1555  /* vandnpd */,
  &gname1555  /* vfandn128v64 */,
  &gname1564  /* vfandnx128v64 */,
  &gname1564  /* vfandnxx128v64 */,
  &gname1564  /* vfandnxxx128v64 */,
  &gname1555  /* vandnps */,
  &gname1555  /* vfandn128v32 */,
  &gname1564  /* vfandnx128v32 */,
  &gname1564  /* vfandnxx128v32 */,
  &gname1564  /* vfandnxxx128v32 */,
  &gname1753  /* vfblend128v64 */,
  &gname1762  /* vfblendx128v64 */,
  &gname1762  /* vfblendxx128v64 */,
  &gname1762  /* vfblendxxx128v64 */,
  &gname1753  /* vfblend128v32 */,
  &gname1762  /* vfblendx128v32 */,
  &gname1762  /* vfblendxx128v32 */,
  &gname1762  /* vfblendxxx128v32 */,
  &gname1753  /* vfblendv128v64 */,
  &gname1762  /* vfblendvx128v64 */,
  &gname1762  /* vfblendvxx128v64 */,
  &gname1762  /* vfblendvxxx128v64 */,
  &gname1753  /* vfblendv128v32 */,
  &gname1762  /* vfblendvx128v32 */,
  &gname1762  /* vfblendvxx128v32 */,
  &gname1762  /* vfblendvxxx128v32 */,
  &gname1951  /* vfbroadcastss */,
  &gname1951  /* vfbroadcastxss */,
  &gname1951  /* vfbroadcastxxss */,
  &gname1951  /* vfbroadcastsd */,
  &gname1951  /* vfbroadcastxsd */,
  &gname1951  /* vfbroadcastxxsd */,
  &gname1951  /* vfbroadcastf128 */,
  &gname1951  /* vfbroadcastxf128 */,
  &gname1951  /* vfbroadcastxxf128 */,
  &gname1573  /* vcmppd */,
  &gname1573  /* vfcmp128v64 */,
  &gname1582  /* vfcmpx128v64 */,
  &gname1582  /* vfcmpxx128v64 */,
  &gname1582  /* vfcmpxxx128v64 */,
  &gname1573  /* vcmpps */,
  &gname1573  /* vfcmp128v32 */,
  &gname1582  /* vfcmpx128v32 */,
  &gname1582  /* vfcmpxx128v32 */,
  &gname1582  /* vfcmpxxx128v32 */,
  &gname1573  /* vfcmpsd */,
  &gname1582  /* vfcmpxsd */,
  &gname1582  /* vfcmpxxsd */,
  &gname1582  /* vfcmpxxxsd */,
  &gname1573  /* vfcmpss */,
  &gname1582  /* vfcmpxss */,
  &gname1582  /* vfcmpxxss */,
  &gname1582  /* vfcmpxxxss */,
  &gname1924  /* vcomisd */,
  &gname1933  /* vcomixsd */,
  &gname1933  /* vcomixxsd */,
  &gname1933  /* vcomixxxsd */,
  &gname1924  /* vcomiss */,
  &gname1933  /* vcomixss */,
  &gname1933  /* vcomixxss */,
  &gname1933  /* vcomixxxss */,
  &gname358   /* vcvtdq2pd */,
  &gname385   /* vcvtdq2pdx */,
  &gname385   /* vcvtdq2pdxx */,
  &gname385   /* vcvtdq2pdxxx */,
  &gname349   /* vcvtdq2ps */,
  &gname376   /* vcvtdq2psx */,
  &gname376   /* vcvtdq2psxx */,
  &gname412   /* vcvtdq2psxxx */,
  &gname367   /* vcvtpd2dq */,
  &gname403   /* vcvtpd2dqx */,
  &gname403   /* vcvtpd2dqxx */,
  &gname403   /* vcvtpd2dqxxx */,
  &gname367   /* vcvtpd2dqy */,
  &gname403   /* vcvtpd2dqyx */,
  &gname403   /* vcvtpd2dqyxx */,
  &gname403   /* vcvtpd2dqyxxx */,
  &gname367   /* vcvtpd2ps */,
  &gname403   /* vcvtpd2psx */,
  &gname403   /* vcvtpd2psxx */,
  &gname403   /* vcvtpd2psxxx */,
  &gname367   /* vcvtpd2psy */,
  &gname403   /* vcvtpd2psyx */,
  &gname403   /* vcvtpd2psyxx */,
  &gname403   /* vcvtpd2psyxxx */,
  &gname376   /* vcvtps2dq */,
  &gname412   /* vcvtps2dqx */,
  &gname412   /* vcvtps2dqxx */,
  &gname412   /* vcvtps2dqxxx */,
  &gname358   /* vcvtps2pd */,
  &gname394   /* vcvtps2pdx */,
  &gname394   /* vcvtps2pdxx */,
  &gname394   /* vcvtps2pdxxx */,
  &gname511   /* vcvtsd2si */,
  &gname511   /* vcvtsd2siq */,
  &gname439   /* vcvtsd2ss */,
  &gname448   /* vcvtsd2ssx */,
  &gname448   /* vcvtsd2ssxx */,
  &gname448   /* vcvtsd2ssxxx */,
  &gname457   /* vcvtsi2sd */,
  &gname466   /* vcvtsi2sdx */,
  &gname466   /* vcvtsi2sdxx */,
  &gname466   /* vcvtsi2sdxxx */,
  &gname457   /* vcvtsi2sdq */,
  &gname466   /* vcvtsi2sdqx */,
  &gname466   /* vcvtsi2sdqxx */,
  &gname466   /* vcvtsi2sdqxxx */,
  &gname430   /* vcvtsi2ss */,
  &gname421   /* vcvtsi2ssx */,
  &gname421   /* vcvtsi2ssxx */,
  &gname421   /* vcvtsi2ssxxx */,
  &gname430   /* vcvtsi2ssq */,
  &gname421   /* vcvtsi2ssqx */,
  &gname421   /* vcvtsi2ssqxx */,
  &gname421   /* vcvtsi2ssqxxx */,
  &gname493   /* vcvtss2sd */,
  &gname502   /* vcvtss2sdx */,
  &gname502   /* vcvtss2sdxx */,
  &gname502   /* vcvtss2sdxxx */,
  &gname511   /* vcvtss2si */,
  &gname511   /* vcvtss2siq */,
  &gname367   /* vcvttpd2dq */,
  &gname403   /* vcvttpd2dqx */,
  &gname403   /* vcvttpd2dqxx */,
  &gname403   /* vcvttpd2dqxxx */,
  &gname367   /* vcvttpd2dqy */,
  &gname403   /* vcvttpd2dqyx */,
  &gname403   /* vcvttpd2dqyxx */,
  &gname403   /* vcvttpd2dqyxxx */,
  &gname376   /* vcvttps2dq */,
  &gname412   /* vcvttps2dqx */,
  &gname412   /* vcvttps2dqxx */,
  &gname412   /* vcvttps2dqxxx */,
  &gname511   /* vcvttsd2si */,
  &gname511   /* vcvttsd2siq */,
  &gname511   /* vcvttss2si */,
  &gname511   /* vcvttss2siq */,
  &gname1681  /* vfdiv128v64 */,
  &gname1690  /* vfdivx128v64 */,
  &gname1690  /* vfdivxx128v64 */,
  &gname1690  /* vfdivxxx128v64 */,
  &gname1699  /* vfdiv128v32 */,
  &gname1708  /* vfdivx128v32 */,
  &gname1708  /* vfdivxx128v32 */,
  &gname1708  /* vfdivxxx128v32 */,
  &gname1681  /* vdivsd */,
  &gname1690  /* vdivxsd */,
  &gname1690  /* vdivxxsd */,
  &gname1690  /* vdivxxxsd */,
  &gname1717  /* vdivss */,
  &gname1726  /* vdivxss */,
  &gname1726  /* vdivxxss */,
  &gname1726  /* vdivxxxss */,
  &gname1735  /* vfdp128v64 */,
  &gname1294  /* vfdpx128v64 */,
  &gname1294  /* vfdpxx128v64 */,
  &gname1294  /* vfdpxxx128v64 */,
  &gname1735  /* vfdp128v32 */,
  &gname1294  /* vfdpx128v32 */,
  &gname1294  /* vfdpxx128v32 */,
  &gname1294  /* vfdpxxx128v32 */,
  &gname1888  /* vfextrf128 */,
  &gname1897  /* vfextrxf128 */,
  &gname1897  /* vfextrxxf128 */,
  &gname1897  /* vfextrxxxf128 */,
  &gname1888  /* vfextr128v32 */,
  &gname1897  /* vfextrx128v32 */,
  &gname1897  /* vfextrxx128v32 */,
  &gname1897  /* vfextrxxx128v32 */,
  &gname1591  /* vfhadd128v64 */,
  &gname1600  /* vfhaddx128v64 */,
  &gname1600  /* vfhaddxx128v64 */,
  &gname1600  /* vfhaddxxx128v64 */,
  &gname1591  /* vfhadd128v32 */,
  &gname1600  /* vfhaddx128v32 */,
  &gname1600  /* vfhaddxx128v32 */,
  &gname1600  /* vfhaddxxx128v32 */,
  &gname1591  /* vfhsub128v64 */,
  &gname1600  /* vfhsubx128v64 */,
  &gname1600  /* vfhsubxx128v64 */,
  &gname1600  /* vfhsubxxx128v64 */,
  &gname1591  /* vfhsub128v32 */,
  &gname1600  /* vfhsubx128v32 */,
  &gname1600  /* vfhsubxx128v32 */,
  &gname1600  /* vfhsubxxx128v32 */,
  &gname1888  /* vfinsrf128 */,
  &gname1897  /* vfinsrxf128 */,
  &gname1897  /* vfinsrxxf128 */,
  &gname1897  /* vfinsrxxxf128 */,
  &gname1888  /* vfinsr128v32 */,
  &gname1897  /* vfinsrx128v32 */,
  &gname1897  /* vfinsrxx128v32 */,
  &gname1897  /* vfinsrxxx128v32 */,
  &gname2032  /* vlddqu */,
  &gname2032  /* vlddqux */,
  &gname2032  /* vlddquxx */,
  &gname2032  /* vlddqu_n32 */,
  &gname1996  /* vldmxcsr */,
  &gname1942  /* vmaskmovdqu */,
  &gname1807  /* vfmaskld128v32 */,
  &gname1807  /* vfmaskldx128v32 */,
  &gname1807  /* vfmaskldxx128v32 */,
  &gname1807  /* vfmaskld128v64 */,
  &gname1807  /* vfmaskldx128v64 */,
  &gname1807  /* vfmaskldxx128v64 */,
  &gname1942  /* vfmaskst128v32 */,
  &gname1942  /* vfmaskstx128v32 */,
  &gname1942  /* vfmaskstxx128v32 */,
  &gname1942  /* vfmaskst128v64 */,
  &gname1942  /* vfmaskstx128v64 */,
  &gname1942  /* vfmaskstxx128v64 */,
  &gname1573  /* vfmax128v64 */,
  &gname1582  /* vfmaxx128v64 */,
  &gname1582  /* vfmaxxx128v64 */,
  &gname1582  /* vfmaxxxx128v64 */,
  &gname1573  /* vfmax128v32 */,
  &gname1582  /* vfmaxx128v32 */,
  &gname1582  /* vfmaxxx128v32 */,
  &gname1582  /* vfmaxxxx128v32 */,
  &gname1573  /* vfmaxsd */,
  &gname1582  /* vfmaxxsd */,
  &gname1582  /* vfmaxxxsd */,
  &gname1582  /* vfmaxxxxsd */,
  &gname1573  /* vfmaxss */,
  &gname1582  /* vfmaxxss */,
  &gname1582  /* vfmaxxxss */,
  &gname1582  /* vfmaxxxxss */,
  &gname1573  /* vfmin128v64 */,
  &gname1582  /* vfminx128v64 */,
  &gname1582  /* vfminxx128v64 */,
  &gname1582  /* vfminxxx128v64 */,
  &gname1573  /* vfmin128v32 */,
  &gname1582  /* vfminx128v32 */,
  &gname1582  /* vfminxx128v32 */,
  &gname1582  /* vfminxxx128v32 */,
  &gname1573  /* vfminsd */,
  &gname1582  /* vfminxsd */,
  &gname1582  /* vfminxxsd */,
  &gname1582  /* vfminxxxsd */,
  &gname1573  /* vfminss */,
  &gname1582  /* vfminxss */,
  &gname1582  /* vfminxxss */,
  &gname1582  /* vfminxxxss */,
  &gname1888  /* vmovapd */,
  &gname1807  /* vldapd */,
  &gname1807  /* vldapdx */,
  &gname1807  /* vldapdxx */,
  &gname1807  /* vldapd_n32 */,
  &gname1942  /* vstapd */,
  &gname1942  /* vstapdx */,
  &gname1942  /* vstapdxx */,
  &gname1942  /* vstapd_n32 */,
  &gname1888  /* vmovaps */,
  &gname1807  /* vldaps */,
  &gname1807  /* vldapsx */,
  &gname1807  /* vldapsxx */,
  &gname1807  /* vldaps_n32 */,
  &gname1942  /* vstaps */,
  &gname1942  /* vstapsx */,
  &gname1942  /* vstapsxx */,
  &gname1942  /* vstaps_n32 */,
  &gname1942  /* vmovg2x */,
  &gname1942  /* vmovg2x64 */,
  &gname1807  /* vmovx2g */,
  &gname1807  /* vmovx2g64 */,
  &gname1807  /* vld64_2sse */,
  &gname1807  /* vldx64_2sse */,
  &gname1807  /* vldxx64_2sse */,
  &gname1807  /* vld64_2sse_n32 */,
  &gname1942  /* vst64_fsse */,
  &gname1942  /* vstx64_fsse */,
  &gname1942  /* vstxx64_fsse */,
  &gname1942  /* vst64_fsse_n32 */,
  &gname1888  /* vmovddup */,
  &gname1897  /* vmovddupx */,
  &gname1897  /* vmovddupxx */,
  &gname1897  /* vmovddupxxx */,
  &gname1807  /* vlddqa */,
  &gname1807  /* vlddqax */,
  &gname1807  /* vlddqaxx */,
  &gname1807  /* vlddqa_n32 */,
  &gname1888  /* vmovdqa */,
  &gname1942  /* vstdqa */,
  &gname1942  /* vstdqax */,
  &gname1942  /* vstdqaxx */,
  &gname1942  /* vstdqa_n32 */,
  &gname1942  /* vstdqu */,
  &gname1942  /* vstdqux */,
  &gname1942  /* vstdquxx */,
  &gname1942  /* vstdqu_n32 */,
  &gname1807  /* vldhpd */,
  &gname1807  /* vldhpdx */,
  &gname1807  /* vldhpdxx */,
  &gname1807  /* vldhpd_n32 */,
  &gname1942  /* vsthpd */,
  &gname1942  /* vsthpdx */,
  &gname1942  /* vsthpdxx */,
  &gname1942  /* vsthpd_n32 */,
  &gname1807  /* vldhps */,
  &gname1807  /* vldhpsx */,
  &gname1807  /* vldhpsxx */,
  &gname1807  /* vldhps_n32 */,
  &gname1942  /* vsthps */,
  &gname1942  /* vsthpsx */,
  &gname1942  /* vsthpsxx */,
  &gname1942  /* vsthps_n32 */,
  &gname1807  /* vldlpd */,
  &gname1807  /* vldlpdx */,
  &gname1807  /* vldlpdxx */,
  &gname1807  /* vldlpd_n32 */,
  &gname1942  /* vstorelpd */,
  &gname1942  /* vstlpd */,
  &gname1942  /* vstlpdx */,
  &gname1942  /* vstlpdxx */,
  &gname1942  /* vstlpd_n32 */,
  &gname1807  /* vldlps */,
  &gname1807  /* vldlpsx */,
  &gname1807  /* vldlpsxx */,
  &gname1807  /* vldlps_n32 */,
  &gname1942  /* vstlps */,
  &gname1942  /* vstlpsx */,
  &gname1942  /* vstlpsxx */,
  &gname1942  /* vstlps_n32 */,
  &gname2014  /* vmovmskpd */,
  &gname2014  /* vmovmskps */,
  &gname1942  /* vstorenti128 */,
  &gname1942  /* vstorentxi128 */,
  &gname1942  /* vstorentxxi128 */,
  &gname1807  /* vldntdqa */,
  &gname1807  /* vldntdqax */,
  &gname1807  /* vldntdqaxx */,
  &gname1942  /* vstntdq */,
  &gname1942  /* vstntdqx */,
  &gname1942  /* vstntdqxx */,
  &gname1942  /* vstntpd */,
  &gname1942  /* vstntpdx */,
  &gname1942  /* vstntpdxx */,
  &gname1942  /* vstntps */,
  &gname1942  /* vstntpsx */,
  &gname1942  /* vstntpsxx */,
  &gname1942  /* vstntsd */,
  &gname1942  /* vstntsdx */,
  &gname1942  /* vstntsdxx */,
  &gname1942  /* vstntss */,
  &gname1942  /* vstntssx */,
  &gname1942  /* vstntssxx */,
  &gname1888  /* vmovsd */,
  &gname1807  /* vldsd */,
  &gname1807  /* vldsdx */,
  &gname1807  /* vldsdxx */,
  &gname1807  /* vldsd_n32 */,
  &gname1942  /* vstsd */,
  &gname1942  /* vstsdx */,
  &gname1942  /* vstsdxx */,
  &gname1942  /* vstsd_n32 */,
  &gname1888  /* vmovss */,
  &gname1807  /* vldss */,
  &gname1807  /* vldssx */,
  &gname1807  /* vldssxx */,
  &gname1807  /* vldss_n32 */,
  &gname1942  /* vstss */,
  &gname1942  /* vstssx */,
  &gname1942  /* vstssxx */,
  &gname1942  /* vstss_n32 */,
  &gname1888  /* vmovlhps */,
  &gname1888  /* vmovhlps */,
  &gname1888  /* vmovshdup */,
  &gname1897  /* vmovshdupx */,
  &gname1897  /* vmovshdupxx */,
  &gname1897  /* vmovshdupxxx */,
  &gname1888  /* vmovsldup */,
  &gname1897  /* vmovsldupx */,
  &gname1897  /* vmovsldupxx */,
  &gname1897  /* vmovsldupxxx */,
  &gname2041  /* vldupd */,
  &gname2032  /* vldupdx */,
  &gname2032  /* vldupdxx */,
  &gname2032  /* vldupd_n32 */,
  &gname2041  /* vstupd */,
  &gname2023  /* vstupdx */,
  &gname2023  /* vstupdxx */,
  &gname2023  /* vstupd_n32 */,
  &gname2041  /* vldups */,
  &gname2032  /* vldupsx */,
  &gname2032  /* vldupsxx */,
  &gname2032  /* vldups_n32 */,
  &gname2041  /* vstups */,
  &gname2023  /* vstupsx */,
  &gname2023  /* vstupsxx */,
  &gname2023  /* vstups_n32 */,
  &gname1960  /* vmpsadbw */,
  &gname1969  /* vmpsadbwx */,
  &gname1969  /* vmpsadbwxx */,
  &gname1969  /* vmpsadbwxxx */,
  &gname1960  /* vfmul128v64 */,
  &gname1969  /* vfmulx128v64 */,
  &gname1969  /* vfmulxx128v64 */,
  &gname1969  /* vfmulxxx128v64 */,
  &gname1960  /* vfmul128v32 */,
  &gname1969  /* vfmulx128v32 */,
  &gname1969  /* vfmulxx128v32 */,
  &gname1969  /* vfmulxxx128v32 */,
  &gname1960  /* vmulsd */,
  &gname1969  /* vmulxsd */,
  &gname1969  /* vmulxxsd */,
  &gname1969  /* vmulxxxsd */,
  &gname1960  /* vmulss */,
  &gname1969  /* vmulxss */,
  &gname1969  /* vmulxxss */,
  &gname1969  /* vmulxxxss */,
  &gname1573  /* vorpd */,
  &gname1573  /* vfor128v64 */,
  &gname1582  /* vforx128v64 */,
  &gname1582  /* vforxx128v64 */,
  &gname1582  /* vforxxx128v64 */,
  &gname1573  /* vorps */,
  &gname1573  /* vfor128v32 */,
  &gname1582  /* vforx128v32 */,
  &gname1582  /* vforxx128v32 */,
  &gname1582  /* vforxxx128v32 */,
  &gname1555  /* vabs128v8 */,
  &gname1564  /* vabsx128v8 */,
  &gname1564  /* vabsxx128v8 */,
  &gname1564  /* vabsxxx128v8 */,
  &gname1555  /* vabs128v32 */,
  &gname1564  /* vabsx128v32 */,
  &gname1564  /* vabsxx128v32 */,
  &gname1564  /* vabsxxx128v32 */,
  &gname1555  /* vabs128v16 */,
  &gname1564  /* vabsx128v16 */,
  &gname1564  /* vabsxx128v16 */,
  &gname1564  /* vabsxxx128v16 */,
  &gname1888  /* vpackssdw */,
  &gname1897  /* vpackssdwx */,
  &gname1897  /* vpackssdwxx */,
  &gname1897  /* vpackssdwxxx */,
  &gname1888  /* vpacksswb */,
  &gname1897  /* vpacksswbx */,
  &gname1897  /* vpacksswbxx */,
  &gname1897  /* vpacksswbxxx */,
  &gname1888  /* vpackusdw */,
  &gname1897  /* vpackusdwx */,
  &gname1897  /* vpackusdwxx */,
  &gname1897  /* vpackusdwxxx */,
  &gname1888  /* vpackuswb */,
  &gname1897  /* vpackuswbx */,
  &gname1897  /* vpackuswbxx */,
  &gname1897  /* vpackuswbxxx */,
  &gname1555  /* vadd128v8 */,
  &gname1564  /* vaddx128v8 */,
  &gname1564  /* vaddxx128v8 */,
  &gname1564  /* vaddxxx128v8 */,
  &gname1555  /* vadd128v32 */,
  &gname1564  /* vaddx128v32 */,
  &gname1564  /* vaddxx128v32 */,
  &gname1564  /* vaddxxx128v32 */,
  &gname1555  /* vadd128v64 */,
  &gname1564  /* vaddx128v64 */,
  &gname1564  /* vaddxx128v64 */,
  &gname1564  /* vaddxxx128v64 */,
  &gname1555  /* vadd128v16 */,
  &gname1564  /* vaddx128v16 */,
  &gname1564  /* vaddxx128v16 */,
  &gname1564  /* vaddxxx128v16 */,
  &gname1555  /* vadds128v8 */,
  &gname1564  /* vaddsx128v8 */,
  &gname1564  /* vaddsxx128v8 */,
  &gname1564  /* vaddsxxx128v8 */,
  &gname1555  /* vadds128v16 */,
  &gname1564  /* vaddsx128v16 */,
  &gname1564  /* vaddsxx128v16 */,
  &gname1564  /* vaddsxxx128v16 */,
  &gname1555  /* vaddus128v8 */,
  &gname1564  /* vaddusx128v8 */,
  &gname1564  /* vaddusxx128v8 */,
  &gname1564  /* vaddusxxx128v8 */,
  &gname1555  /* vaddus128v16 */,
  &gname1564  /* vaddusx128v16 */,
  &gname1564  /* vaddusxx128v16 */,
  &gname1564  /* vaddusxxx128v16 */,
  &gname1834  /* vpalignr128 */,
  &gname1843  /* vpalignrx128 */,
  &gname1843  /* vpalignrxx128 */,
  &gname1843  /* vpalignrxxx128 */,
  &gname1555  /* vand128v8 */,
  &gname1564  /* vandx128v8 */,
  &gname1564  /* vandxx128v8 */,
  &gname1564  /* vandxxx128v8 */,
  &gname1555  /* vand128v16 */,
  &gname1564  /* vandx128v16 */,
  &gname1564  /* vandxx128v16 */,
  &gname1564  /* vandxxx128v16 */,
  &gname1555  /* vand128v32 */,
  &gname1564  /* vandx128v32 */,
  &gname1564  /* vandxx128v32 */,
  &gname1564  /* vandxxx128v32 */,
  &gname1555  /* vand128v64 */,
  &gname1564  /* vandx128v64 */,
  &gname1564  /* vandxx128v64 */,
  &gname1564  /* vandxxx128v64 */,
  &gname1555  /* vandn128v8 */,
  &gname1564  /* vandnx128v8 */,
  &gname1564  /* vandnxx128v8 */,
  &gname1564  /* vandnxxx128v8 */,
  &gname1555  /* vandn128v16 */,
  &gname1564  /* vandnx128v16 */,
  &gname1564  /* vandnxx128v16 */,
  &gname1564  /* vandnxxx128v16 */,
  &gname1555  /* vandn128v32 */,
  &gname1564  /* vandnx128v32 */,
  &gname1564  /* vandnxx128v32 */,
  &gname1564  /* vandnxxx128v32 */,
  &gname1555  /* vandn128v64 */,
  &gname1564  /* vandnx128v64 */,
  &gname1564  /* vandnxx128v64 */,
  &gname1564  /* vandnxxx128v64 */,
  &gname1555  /* vpavgb */,
  &gname1564  /* vpavgbx */,
  &gname1564  /* vpavgbxx */,
  &gname1564  /* vpavgbxxx */,
  &gname1555  /* vpavgw */,
  &gname1564  /* vpavgwx */,
  &gname1564  /* vpavgwxx */,
  &gname1564  /* vpavgwxxx */,
  &gname1753  /* vblendv128v8 */,
  &gname1762  /* vblendvx128v8 */,
  &gname1762  /* vblendvxx128v8 */,
  &gname1762  /* vblendvxxx128v8 */,
  &gname1753  /* vblend128v16 */,
  &gname1762  /* vblendx128v16 */,
  &gname1762  /* vblendxx128v16 */,
  &gname1762  /* vblendxxx128v16 */,
  &gname1771  /* vpclmulqdq */,
  &gname1780  /* vpclmulqdqx */,
  &gname1780  /* vpclmulqdqxx */,
  &gname1780  /* vpclmulqdqxxx */,
  &gname1789  /* vcmpeq128v8 */,
  &gname1798  /* vcmpeqx128v8 */,
  &gname1798  /* vcmpeqxx128v8 */,
  &gname1798  /* vcmpeqxxx128v8 */,
  &gname1789  /* vcmpeq128v32 */,
  &gname1798  /* vcmpeqx128v32 */,
  &gname1798  /* vcmpeqxx128v32 */,
  &gname1798  /* vcmpeqxxx128v32 */,
  &gname1789  /* vcmpeq128v64 */,
  &gname1798  /* vcmpeqx128v64 */,
  &gname1798  /* vcmpeqxx128v64 */,
  &gname1798  /* vcmpeqxxx128v64 */,
  &gname1789  /* vcmpeq128v16 */,
  &gname1798  /* vcmpeqx128v16 */,
  &gname1798  /* vcmpeqxx128v16 */,
  &gname1798  /* vcmpeqxxx128v16 */,
  &gname1789  /* vcmpestri */,
  &gname1798  /* vcmpestrix */,
  &gname1798  /* vcmpestrixx */,
  &gname1798  /* vcmpestrixxx */,
  &gname1789  /* vcmpestrm */,
  &gname1798  /* vcmpestrmx */,
  &gname1798  /* vcmpestrmxx */,
  &gname1798  /* vcmpestrmxxx */,
  &gname1789  /* vcmpgt128v8 */,
  &gname1798  /* vcmpgtx128v8 */,
  &gname1798  /* vcmpgtxx128v8 */,
  &gname1798  /* vcmpgtxxx128v8 */,
  &gname1789  /* vcmpgt128v32 */,
  &gname1798  /* vcmpgtx128v32 */,
  &gname1798  /* vcmpgtxx128v32 */,
  &gname1798  /* vcmpgtxxx128v32 */,
  &gname1789  /* vcmpgt128v64 */,
  &gname1798  /* vcmpgtx128v64 */,
  &gname1798  /* vcmpgtxx128v64 */,
  &gname1798  /* vcmpgtxxx128v64 */,
  &gname1789  /* vcmpgt128v16 */,
  &gname1798  /* vcmpgtx128v16 */,
  &gname1798  /* vcmpgtxx128v16 */,
  &gname1798  /* vcmpgtxxx128v16 */,
  &gname1789  /* vcmpistri */,
  &gname1798  /* vcmpistrix */,
  &gname1798  /* vcmpistrixx */,
  &gname1798  /* vcmpistrixxx */,
  &gname1789  /* vcmpistrm */,
  &gname1798  /* vcmpistrmx */,
  &gname1798  /* vcmpistrmxx */,
  &gname1798  /* vcmpistrmxxx */,
  &gname1888  /* vfperm128v64 */,
  &gname1897  /* vfpermx128v64 */,
  &gname1897  /* vfpermxx128v64 */,
  &gname1897  /* vfpermxxx128v64 */,
  &gname1888  /* vfpermi128v64 */,
  &gname1897  /* vfpermix128v64 */,
  &gname1897  /* vfpermixx128v64 */,
  &gname1897  /* vfpermixxx128v64 */,
  &gname1888  /* vfperm128v32 */,
  &gname1897  /* vfpermx128v32 */,
  &gname1897  /* vfpermxx128v32 */,
  &gname1897  /* vfpermxxx128v32 */,
  &gname1888  /* vfpermi128v32 */,
  &gname1897  /* vfpermix128v32 */,
  &gname1897  /* vfpermixx128v32 */,
  &gname1897  /* vfpermixxx128v32 */,
  &gname1888  /* vfperm2f128 */,
  &gname1897  /* vfperm2xf128 */,
  &gname1897  /* vfperm2xxf128 */,
  &gname1897  /* vfperm2xxxf128 */,
  &gname1816  /* vextr128v8 */,
  &gname1825  /* vextrx128v8 */,
  &gname1825  /* vextrxx128v8 */,
  &gname1825  /* vextrxxx128v8 */,
  &gname1816  /* vextr128v32 */,
  &gname1825  /* vextrx128v32 */,
  &gname1825  /* vextrxx128v32 */,
  &gname1825  /* vextrxxx128v32 */,
  &gname1816  /* vextr128v64 */,
  &gname1825  /* vextrx128v64 */,
  &gname1825  /* vextrxx128v64 */,
  &gname1825  /* vextrxxx128v64 */,
  &gname1816  /* vextr128v16 */,
  &gname1825  /* vextrx128v16 */,
  &gname1825  /* vextrxx128v16 */,
  &gname1825  /* vextrxxx128v16 */,
  &gname1906  /* vphadd128v32 */,
  &gname1915  /* vphaddx128v32 */,
  &gname1915  /* vphaddxx128v32 */,
  &gname1915  /* vphaddxxx128v32 */,
  &gname1906  /* vphadds128v16 */,
  &gname1915  /* vphaddsx128v16 */,
  &gname1915  /* vphaddsxx128v16 */,
  &gname1915  /* vphaddsxxx128v16 */,
  &gname1591  /* vphadd128v16 */,
  &gname1600  /* vphaddx128v16 */,
  &gname1600  /* vphaddxx128v16 */,
  &gname1600  /* vphaddxxx128v16 */,
  &gname1816  /* vphminposuw */,
  &gname1825  /* vphminposuwx */,
  &gname1825  /* vphminposuwxx */,
  &gname1825  /* vphminposuwxxx */,
  &gname1591  /* vphsub128v32 */,
  &gname1600  /* vphsubx128v32 */,
  &gname1600  /* vphsubxx128v32 */,
  &gname1600  /* vphsubxxx128v32 */,
  &gname1591  /* vphsubs128v16 */,
  &gname1600  /* vphsubsx128v16 */,
  &gname1600  /* vphsubsxx128v16 */,
  &gname1600  /* vphsubsxxx128v16 */,
  &gname1591  /* vphsub128v16 */,
  &gname1600  /* vphsubx128v16 */,
  &gname1600  /* vphsubxx128v16 */,
  &gname1600  /* vphsubxxx128v16 */,
  &gname1816  /* vinsr128v8 */,
  &gname1825  /* vinsrx128v8 */,
  &gname1825  /* vinsrxx128v8 */,
  &gname1825  /* vinsrxxx128v8 */,
  &gname1816  /* vinsr128v32 */,
  &gname1825  /* vinsrx128v32 */,
  &gname1825  /* vinsrxx128v32 */,
  &gname1825  /* vinsrxxx128v32 */,
  &gname1816  /* vinsr128v64 */,
  &gname1825  /* vinsrx128v64 */,
  &gname1825  /* vinsrxx128v64 */,
  &gname1825  /* vinsrxxx128v64 */,
  &gname1816  /* vinsr128v16 */,
  &gname1825  /* vinsrx128v16 */,
  &gname1825  /* vinsrxx128v16 */,
  &gname1825  /* vinsrxxx128v16 */,
  &gname1627  /* vpmaddwd */,
  &gname1636  /* vpmaddwdx */,
  &gname1636  /* vpmaddwdxx */,
  &gname1636  /* vpmaddwdxxx */,
  &gname1627  /* vpmaddubsw128 */,
  &gname1636  /* vpmaddubswx128 */,
  &gname1636  /* vpmaddubswxx128 */,
  &gname1636  /* vpmaddubswxxx128 */,
  &gname1555  /* vmaxs128v8 */,
  &gname1564  /* vmaxsx128v8 */,
  &gname1564  /* vmaxsxx128v8 */,
  &gname1564  /* vmaxsxxx128v8 */,
  &gname1555  /* vmaxs128v32 */,
  &gname1564  /* vmaxsx128v32 */,
  &gname1564  /* vmaxsxx128v32 */,
  &gname1564  /* vmaxsxxx128v32 */,
  &gname1555  /* vmaxs128v16 */,
  &gname1564  /* vmaxsx128v16 */,
  &gname1564  /* vmaxsxx128v16 */,
  &gname1564  /* vmaxsxxx128v16 */,
  &gname1555  /* vmaxu128v8 */,
  &gname1564  /* vmaxux128v8 */,
  &gname1564  /* vmaxuxx128v8 */,
  &gname1564  /* vmaxuxxx128v8 */,
  &gname1555  /* vmaxu128v32 */,
  &gname1564  /* vmaxux128v32 */,
  &gname1564  /* vmaxuxx128v32 */,
  &gname1564  /* vmaxuxxx128v32 */,
  &gname1555  /* vmaxu128v16 */,
  &gname1564  /* vmaxux128v16 */,
  &gname1564  /* vmaxuxx128v16 */,
  &gname1564  /* vmaxuxxx128v16 */,
  &gname1555  /* vmins128v8 */,
  &gname1564  /* vminsx128v8 */,
  &gname1564  /* vminsxx128v8 */,
  &gname1564  /* vminsxxx128v8 */,
  &gname1555  /* vmins128v32 */,
  &gname1564  /* vminsx128v32 */,
  &gname1564  /* vminsxx128v32 */,
  &gname1564  /* vminsxxx128v32 */,
  &gname1555  /* vmins128v16 */,
  &gname1564  /* vminsx128v16 */,
  &gname1564  /* vminsxx128v16 */,
  &gname1564  /* vminsxxx128v16 */,
  &gname1555  /* vminu128v8 */,
  &gname1564  /* vminux128v8 */,
  &gname1564  /* vminuxx128v8 */,
  &gname1564  /* vminuxxx128v8 */,
  &gname1555  /* vminu128v32 */,
  &gname1564  /* vminux128v32 */,
  &gname1564  /* vminuxx128v32 */,
  &gname1564  /* vminuxxx128v32 */,
  &gname1555  /* vminu128v16 */,
  &gname1564  /* vminux128v16 */,
  &gname1564  /* vminuxx128v16 */,
  &gname1564  /* vminuxxx128v16 */,
  &gname1888  /* vpmovmskb128 */,
  &gname1888  /* vpmovsxbd */,
  &gname1897  /* vpmovsxbdx */,
  &gname1897  /* vpmovsxbdxx */,
  &gname1897  /* vpmovsxbdxxx */,
  &gname1888  /* vpmovsxbq */,
  &gname1897  /* vpmovsxbqx */,
  &gname1897  /* vpmovsxbqxx */,
  &gname1897  /* vpmovsxbqxxx */,
  &gname1888  /* vpmovsxbw */,
  &gname1897  /* vpmovsxbwx */,
  &gname1897  /* vpmovsxbwxx */,
  &gname1897  /* vpmovsxbwxxx */,
  &gname1888  /* vpmovsxdq */,
  &gname1897  /* vpmovsxdqx */,
  &gname1897  /* vpmovsxdqxx */,
  &gname1897  /* vpmovsxdqxxx */,
  &gname1888  /* vpmovsxwd */,
  &gname1897  /* vpmovsxwdx */,
  &gname1897  /* vpmovsxwdxx */,
  &gname1897  /* vpmovsxwdxxx */,
  &gname1888  /* vpmovsxwq */,
  &gname1897  /* vpmovsxwqx */,
  &gname1897  /* vpmovsxwqxx */,
  &gname1897  /* vpmovsxwqxxx */,
  &gname1888  /* vpmovzxbd */,
  &gname1897  /* vpmovzxbdx */,
  &gname1897  /* vpmovzxbdxx */,
  &gname1897  /* vpmovzxbdxxx */,
  &gname1888  /* vpmovzxbq */,
  &gname1897  /* vpmovzxbqx */,
  &gname1897  /* vpmovzxbqxx */,
  &gname1897  /* vpmovzxbqxxx */,
  &gname1888  /* vpmovzxbw */,
  &gname1897  /* vpmovzxbwx */,
  &gname1897  /* vpmovzxbwxx */,
  &gname1897  /* vpmovzxbwxxx */,
  &gname1888  /* vpmovzxdq */,
  &gname1897  /* vpmovzxdqx */,
  &gname1897  /* vpmovzxdqxx */,
  &gname1897  /* vpmovzxdqxxx */,
  &gname1888  /* vpmovzxwd */,
  &gname1897  /* vpmovzxwdx */,
  &gname1897  /* vpmovzxwdxx */,
  &gname1897  /* vpmovzxwdxxx */,
  &gname1888  /* vpmovzxwq */,
  &gname1897  /* vpmovzxwqx */,
  &gname1897  /* vpmovzxwqxx */,
  &gname1897  /* vpmovzxwqxxx */,
  &gname1735  /* vmulhuw */,
  &gname1744  /* vmulhuwx */,
  &gname1744  /* vmulhuwxx */,
  &gname1744  /* vmulhuwxxx */,
  &gname1735  /* vmulhrsw */,
  &gname1744  /* vmulhrswx */,
  &gname1744  /* vmulhrswxx */,
  &gname1744  /* vmulhrswxxx */,
  &gname1735  /* vmulhw */,
  &gname1744  /* vmulhwx */,
  &gname1744  /* vmulhwxx */,
  &gname1744  /* vmulhwxxx */,
  &gname1735  /* vmulld */,
  &gname1744  /* vmulldx */,
  &gname1744  /* vmulldxx */,
  &gname1744  /* vmulldxxx */,
  &gname1735  /* vmul128v16 */,
  &gname1744  /* vmulx128v16 */,
  &gname1744  /* vmulxx128v16 */,
  &gname1744  /* vmulxxx128v16 */,
  &gname1735  /* vmul128v32 */,
  &gname1744  /* vmulx128v32 */,
  &gname1744  /* vmulxx128v32 */,
  &gname1744  /* vmulxxx128v32 */,
  &gname1735  /* vmuludq */,
  &gname1744  /* vmuludqx */,
  &gname1744  /* vmuludqxx */,
  &gname1744  /* vmuludqxxx */,
  &gname1735  /* vmuldq */,
  &gname1744  /* vmuldqx */,
  &gname1744  /* vmuldqxx */,
  &gname1744  /* vmuldqxxx */,
  &gname1555  /* vor128v8 */,
  &gname1564  /* vorx128v8 */,
  &gname1564  /* vorxx128v8 */,
  &gname1564  /* vorxxx128v8 */,
  &gname1555  /* vor128v16 */,
  &gname1564  /* vorx128v16 */,
  &gname1564  /* vorxx128v16 */,
  &gname1564  /* vorxxx128v16 */,
  &gname1555  /* vor128v32 */,
  &gname1564  /* vorx128v32 */,
  &gname1564  /* vorxx128v32 */,
  &gname1564  /* vorxxx128v32 */,
  &gname1555  /* vor128v64 */,
  &gname1564  /* vorx128v64 */,
  &gname1564  /* vorxx128v64 */,
  &gname1564  /* vorxxx128v64 */,
  &gname1852  /* vpsadbw */,
  &gname1861  /* vpsadbwx */,
  &gname1861  /* vpsadbwxx */,
  &gname1861  /* vpsadbwxxx */,
  &gname1555  /* vpshuf128v8 */,
  &gname1564  /* vpshufx128v8 */,
  &gname1564  /* vpshufxx128v8 */,
  &gname1564  /* vpshufxxx128v8 */,
  &gname1555  /* vpshuf128v32 */,
  &gname1564  /* vpshufx128v32 */,
  &gname1564  /* vpshufxx128v32 */,
  &gname1564  /* vpshufxxx128v32 */,
  &gname1555  /* vpshufw64v16 */,
  &gname1564  /* vpshufwx64v16 */,
  &gname1564  /* vpshufwxx64v16 */,
  &gname1564  /* vpshufwxxx64v16 */,
  &gname1555  /* vpshufhw */,
  &gname1564  /* vpshufhwx */,
  &gname1564  /* vpshufhwxx */,
  &gname1564  /* vpshufhwxxx */,
  &gname1555  /* vpshuflw */,
  &gname1564  /* vpshuflwx */,
  &gname1564  /* vpshuflwxx */,
  &gname1564  /* vpshuflwxxx */,
  &gname1834  /* vpsign128v8 */,
  &gname1843  /* vpsignx128v8 */,
  &gname1843  /* vpsignxx128v8 */,
  &gname1843  /* vpsignxxx128v8 */,
  &gname1834  /* vpsign128v32 */,
  &gname1843  /* vpsignx128v32 */,
  &gname1843  /* vpsignxx128v32 */,
  &gname1843  /* vpsignxxx128v32 */,
  &gname1834  /* vpsign128v16 */,
  &gname1843  /* vpsignx128v16 */,
  &gname1843  /* vpsignxx128v16 */,
  &gname1843  /* vpsignxxx128v16 */,
  &gname1816  /* vpslldq */,
  &gname1816  /* vpsrldq */,
  &gname1870  /* vpslld */,
  &gname1879  /* vpslldx */,
  &gname1879  /* vpslldxx */,
  &gname1879  /* vpslldxxx */,
  &gname1870  /* vpslldi */,
  &gname1870  /* vpsllq */,
  &gname1879  /* vpsllqx */,
  &gname1879  /* vpsllqxx */,
  &gname1879  /* vpsllqxxx */,
  &gname1870  /* vpsllqi */,
  &gname1870  /* vpsllw */,
  &gname1879  /* vpsllwx */,
  &gname1879  /* vpsllwxx */,
  &gname1879  /* vpsllwxxx */,
  &gname1870  /* vpsllwi */,
  &gname1870  /* vpsrad */,
  &gname1879  /* vpsradx */,
  &gname1879  /* vpsradxx */,
  &gname1879  /* vpsradxxx */,
  &gname1870  /* vpsradi */,
  &gname1870  /* vpsraw */,
  &gname1879  /* vpsrawx */,
  &gname1879  /* vpsrawxx */,
  &gname1879  /* vpsrawxxx */,
  &gname1870  /* vpsrawi */,
  &gname1870  /* vpsrld */,
  &gname1879  /* vpsrldx */,
  &gname1879  /* vpsrldxx */,
  &gname1879  /* vpsrldxxx */,
  &gname1870  /* vpsrldi */,
  &gname1870  /* vpsrlq */,
  &gname1879  /* vpsrlqx */,
  &gname1879  /* vpsrlqxx */,
  &gname1879  /* vpsrlqxxx */,
  &gname1870  /* vpsrlqi */,
  &gname1870  /* vpsrlw */,
  &gname1879  /* vpsrlwx */,
  &gname1879  /* vpsrlwxx */,
  &gname1879  /* vpsrlwxxx */,
  &gname1870  /* vpsrlwi */,
  &gname1834  /* vsub128v8 */,
  &gname1843  /* vsubx128v8 */,
  &gname1843  /* vsubxx128v8 */,
  &gname1843  /* vsubxxx128v8 */,
  &gname1834  /* vsub128v32 */,
  &gname1843  /* vsubx128v32 */,
  &gname1843  /* vsubxx128v32 */,
  &gname1843  /* vsubxxx128v32 */,
  &gname1834  /* vsub128v64 */,
  &gname1843  /* vsubx128v64 */,
  &gname1843  /* vsubxx128v64 */,
  &gname1843  /* vsubxxx128v64 */,
  &gname1834  /* vsub128v16 */,
  &gname1843  /* vsubx128v16 */,
  &gname1843  /* vsubxx128v16 */,
  &gname1843  /* vsubxxx128v16 */,
  &gname1834  /* vsubs128v8 */,
  &gname1843  /* vsubsx128v8 */,
  &gname1843  /* vsubsxx128v8 */,
  &gname1843  /* vsubsxxx128v8 */,
  &gname1834  /* vsubs128v16 */,
  &gname1843  /* vsubsx128v16 */,
  &gname1843  /* vsubsxx128v16 */,
  &gname1843  /* vsubsxxx128v16 */,
  &gname1834  /* vsubus128v8 */,
  &gname1843  /* vsubusx128v8 */,
  &gname1843  /* vsubusxx128v8 */,
  &gname1843  /* vsubusxxx128v8 */,
  &gname1834  /* vsubus128v16 */,
  &gname1843  /* vsubusx128v16 */,
  &gname1843  /* vsubusxx128v16 */,
  &gname1843  /* vsubusxxx128v16 */,
  &gname1978  /* vptest128 */,
  &gname1987  /* vptestx128 */,
  &gname1987  /* vptestxx128 */,
  &gname1987  /* vptestxxx128 */,
  &gname1978  /* vtestpd */,
  &gname1987  /* vtestxpd */,
  &gname1987  /* vtestxxpd */,
  &gname1987  /* vtestxxxpd */,
  &gname1978  /* vtestps */,
  &gname1987  /* vtestxps */,
  &gname1987  /* vtestxxps */,
  &gname1987  /* vtestxxxps */,
  &gname1888  /* vpunpckh64v8 */,
  &gname1897  /* vpunpckhx64v8 */,
  &gname1897  /* vpunpckhxx64v8 */,
  &gname1897  /* vpunpckhxxx64v8 */,
  &gname1888  /* vpunpckh64v32 */,
  &gname1897  /* vpunpckhx64v32 */,
  &gname1897  /* vpunpckhxx64v32 */,
  &gname1897  /* vpunpckhxxx64v32 */,
  &gname1888  /* vpunpckh64v16 */,
  &gname1897  /* vpunpckhx64v16 */,
  &gname1897  /* vpunpckhxx64v16 */,
  &gname1897  /* vpunpckhxxx64v16 */,
  &gname1888  /* vpunpckh64v64 */,
  &gname1897  /* vpunpckhx64v64 */,
  &gname1897  /* vpunpckhxx64v64 */,
  &gname1897  /* vpunpckhxxx64v64 */,
  &gname1888  /* vpunpckl64v8 */,
  &gname1897  /* vpunpcklx64v8 */,
  &gname1897  /* vpunpcklxx64v8 */,
  &gname1897  /* vpunpcklxxx64v8 */,
  &gname1888  /* vpunpckl64v32 */,
  &gname1897  /* vpunpcklx64v32 */,
  &gname1897  /* vpunpcklxx64v32 */,
  &gname1897  /* vpunpcklxxx64v32 */,
  &gname1888  /* vpunpckl64v16 */,
  &gname1897  /* vpunpcklx64v16 */,
  &gname1897  /* vpunpcklxx64v16 */,
  &gname1897  /* vpunpcklxxx64v16 */,
  &gname1888  /* vpunpckl64v64 */,
  &gname1897  /* vpunpcklx64v64 */,
  &gname1897  /* vpunpcklxx64v64 */,
  &gname1897  /* vpunpcklxxx64v64 */,
  &gname1555  /* vxor128v8 */,
  &gname1564  /* vxorx128v8 */,
  &gname1564  /* vxorxx128v8 */,
  &gname1564  /* vxorxxx128v8 */,
  &gname1555  /* vxor128v16 */,
  &gname1564  /* vxorx128v16 */,
  &gname1564  /* vxorxx128v16 */,
  &gname1564  /* vxorxxx128v16 */,
  &gname1555  /* vxor128v32 */,
  &gname1564  /* vxorx128v32 */,
  &gname1564  /* vxorxx128v32 */,
  &gname1564  /* vxorxxx128v32 */,
  &gname1555  /* vxor128v64 */,
  &gname1564  /* vxorx128v64 */,
  &gname1564  /* vxorxx128v64 */,
  &gname1564  /* vxorxxx128v64 */,
  &gname1888  /* vfrcp128v32 */,
  &gname1897  /* vfrcpx128v32 */,
  &gname1897  /* vfrcpxx128v32 */,
  &gname1897  /* vfrcpxxx128v32 */,
  &gname1888  /* vfrcpss */,
  &gname1897  /* vfrcpxss */,
  &gname1897  /* vfrcpxxss */,
  &gname1897  /* vfrcpxxxss */,
  &gname1609  /* vround128v64 */,
  &gname1618  /* vroundx128v64 */,
  &gname1618  /* vroundxx128v64 */,
  &gname1618  /* vroundxxx128v64 */,
  &gname1609  /* vround128v32 */,
  &gname1618  /* vroundx128v32 */,
  &gname1618  /* vroundxx128v32 */,
  &gname1618  /* vroundxxx128v32 */,
  &gname1609  /* vroundsd */,
  &gname1618  /* vroundxsd */,
  &gname1618  /* vroundxxsd */,
  &gname1618  /* vroundxxxsd */,
  &gname1609  /* vroundss */,
  &gname1618  /* vroundxss */,
  &gname1618  /* vroundxxss */,
  &gname1618  /* vroundxxxss */,
  &gname1645  /* vfrsqrt128v32 */,
  &gname1654  /* vfrsqrtx128v32 */,
  &gname1654  /* vfrsqrtxx128v32 */,
  &gname1654  /* vfrsqrtxxx128v32 */,
  &gname1645  /* vfrsqrtss */,
  &gname1654  /* vfrsqrtxss */,
  &gname1654  /* vfrsqrtxxss */,
  &gname1654  /* vfrsqrtxxxss */,
  &gname1888  /* vshufpd */,
  &gname1888  /* vfshuf128v64 */,
  &gname1897  /* vfshufx128v64 */,
  &gname1897  /* vfshufxx128v64 */,
  &gname1897  /* vfshufxxx128v64 */,
  &gname1888  /* vshufps */,
  &gname1888  /* vfshuf128v32 */,
  &gname1897  /* vfshufx128v32 */,
  &gname1897  /* vfshufxx128v32 */,
  &gname1897  /* vfshufxxx128v32 */,
  &gname709   /* vfsqrt128v64 */,
  &gname1672  /* vfsqrtx128v64 */,
  &gname1672  /* vfsqrtxx128v64 */,
  &gname1672  /* vfsqrtxxx128v64 */,
  &gname700   /* vfsqrt128v32 */,
  &gname1672  /* vfsqrtx128v32 */,
  &gname1672  /* vfsqrtxx128v32 */,
  &gname1672  /* vfsqrtxxx128v32 */,
  &gname1663  /* vfsqrtsd */,
  &gname1672  /* vfsqrtxsd */,
  &gname1672  /* vfsqrtxxsd */,
  &gname1672  /* vfsqrtxxxsd */,
  &gname1663  /* vfsqrtss */,
  &gname1672  /* vfsqrtxss */,
  &gname1672  /* vfsqrtxxss */,
  &gname1672  /* vfsqrtxxxss */,
  &gname2005  /* vstmxcsr */,
  &gname1888  /* vfsub128v64 */,
  &gname1897  /* vfsubx128v64 */,
  &gname1897  /* vfsubxx128v64 */,
  &gname1897  /* vfsubxxx128v64 */,
  &gname1888  /* vfsub128v32 */,
  &gname1897  /* vfsubx128v32 */,
  &gname1897  /* vfsubxx128v32 */,
  &gname1897  /* vfsubxxx128v32 */,
  &gname1888  /* vsubsd */,
  &gname1897  /* vsubxsd */,
  &gname1897  /* vsubxxsd */,
  &gname1897  /* vsubxxxsd */,
  &gname1888  /* vsubss */,
  &gname1897  /* vsubxss */,
  &gname1897  /* vsubxxss */,
  &gname1897  /* vsubxxxss */,
  &gname1924  /* vucomisd */,
  &gname1933  /* vucomixsd */,
  &gname1933  /* vucomixxsd */,
  &gname1933  /* vucomixxxsd */,
  &gname1924  /* vucomiss */,
  &gname1933  /* vucomixss */,
  &gname1933  /* vucomixxss */,
  &gname1933  /* vucomixxxss */,
  &gname1888  /* vunpckh128v64 */,
  &gname1897  /* vunpckhx128v64 */,
  &gname1897  /* vunpckhxx128v64 */,
  &gname1897  /* vunpckhxxx128v64 */,
  &gname1888  /* vunpckh128v32 */,
  &gname1897  /* vunpckhx128v32 */,
  &gname1897  /* vunpckhxx128v32 */,
  &gname1897  /* vunpckhxxx128v32 */,
  &gname1888  /* vunpckl128v64 */,
  &gname1897  /* vunpcklx128v64 */,
  &gname1897  /* vunpcklxx128v64 */,
  &gname1897  /* vunpcklxxx128v64 */,
  &gname1888  /* vunpckl128v32 */,
  &gname1897  /* vunpcklx128v32 */,
  &gname1897  /* vunpcklxx128v32 */,
  &gname1897  /* vunpcklxxx128v32 */,
  &gname1888  /* vxorpd */,
  &gname1888  /* vfxor128v64 */,
  &gname1582  /* vfxorx128v64 */,
  &gname1582  /* vfxorxx128v64 */,
  &gname1582  /* vfxorxxx128v64 */,
  &gname1888  /* vxzero128v64 */,
  &gname1888  /* vxzero64 */,
  &gname1888  /* vxorps */,
  &gname1888  /* vfxor128v32 */,
  &gname1897  /* vfxorx128v32 */,
  &gname1897  /* vfxorxx128v32 */,
  &gname1897  /* vfxorxxx128v32 */,
  &gname1888  /* vxzero128v32 */,
  &gname1888  /* vxzero32 */,
  &gname1024  /* vzeroall */,
  &gname2050  /* xfmadd132pd */,
  &gname2059  /* xfmadd132xpd */,
  &gname2059  /* xfmadd132xxpd */,
  &gname2059  /* xfmadd132xxxpd */,
  &gname2050  /* xfmadd213pd */,
  &gname2059  /* xfmadd213xpd */,
  &gname2059  /* xfmadd213xxpd */,
  &gname2059  /* xfmadd213xxxpd */,
  &gname2050  /* xfmadd231pd */,
  &gname2059  /* xfmadd231xpd */,
  &gname2059  /* xfmadd231xxpd */,
  &gname2059  /* xfmadd231xxxpd */,
  &gname2050  /* xfmadd132ps */,
  &gname2059  /* xfmadd132xps */,
  &gname2059  /* xfmadd132xxps */,
  &gname2059  /* xfmadd132xxxps */,
  &gname2050  /* xfmadd213ps */,
  &gname2059  /* xfmadd213xps */,
  &gname2059  /* xfmadd213xxps */,
  &gname2059  /* xfmadd213xxxps */,
  &gname2050  /* xfmadd231ps */,
  &gname2059  /* xfmadd231xps */,
  &gname2059  /* xfmadd231xxps */,
  &gname2059  /* xfmadd231xxxps */,
  &gname2050  /* xfmadd132sd */,
  &gname2059  /* xfmadd132xsd */,
  &gname2059  /* xfmadd132xxsd */,
  &gname2059  /* xfmadd132xxxsd */,
  &gname2050  /* xfmadd213sd */,
  &gname2059  /* xfmadd213xsd */,
  &gname2059  /* xfmadd213xxsd */,
  &gname2059  /* xfmadd213xxxsd */,
  &gname2050  /* xfmadd231sd */,
  &gname2059  /* xfmadd231xsd */,
  &gname2059  /* xfmadd231xxsd */,
  &gname2059  /* xfmadd231xxxsd */,
  &gname2050  /* xfmadd132ss */,
  &gname2059  /* xfmadd132xss */,
  &gname2059  /* xfmadd132xxss */,
  &gname2059  /* xfmadd132xxxss */,
  &gname2050  /* xfmadd213ss */,
  &gname2059  /* xfmadd213xss */,
  &gname2059  /* xfmadd213xxss */,
  &gname2059  /* xfmadd213xxxss */,
  &gname2050  /* xfmadd231ss */,
  &gname2059  /* xfmadd231xss */,
  &gname2059  /* xfmadd231xxss */,
  &gname2059  /* xfmadd231xxxss */,
  &gname2050  /* xfmaddsub132pd */,
  &gname2059  /* xfmaddsub132xpd */,
  &gname2059  /* xfmaddsub132xxpd */,
  &gname2059  /* xfmaddsub132xxxpd */,
  &gname2050  /* xfmaddsub213pd */,
  &gname2059  /* xfmaddsub213xpd */,
  &gname2059  /* xfmaddsub213xxpd */,
  &gname2059  /* xfmaddsub213xxxpd */,
  &gname2050  /* xfmaddsub231pd */,
  &gname2059  /* xfmaddsub231xpd */,
  &gname2059  /* xfmaddsub231xxpd */,
  &gname2059  /* xfmaddsub231xxxpd */,
  &gname2050  /* xfmaddsub132ps */,
  &gname2059  /* xfmaddsub132xps */,
  &gname2059  /* xfmaddsub132xxps */,
  &gname2059  /* xfmaddsub132xxxps */,
  &gname2050  /* xfmaddsub213ps */,
  &gname2059  /* xfmaddsub213xps */,
  &gname2059  /* xfmaddsub213xxps */,
  &gname2059  /* xfmaddsub213xxxps */,
  &gname2050  /* xfmaddsub231ps */,
  &gname2059  /* xfmaddsub231xps */,
  &gname2059  /* xfmaddsub231xxps */,
  &gname2059  /* xfmaddsub231xxxps */,
  &gname2050  /* xfmsubadd132pd */,
  &gname2059  /* xfmsubadd132xpd */,
  &gname2059  /* xfmsubadd132xxpd */,
  &gname2059  /* xfmsubadd132xxxpd */,
  &gname2050  /* xfmsubadd213pd */,
  &gname2059  /* xfmsubadd213xpd */,
  &gname2059  /* xfmsubadd213xxpd */,
  &gname2059  /* xfmsubadd213xxxpd */,
  &gname2050  /* xfmsubadd231pd */,
  &gname2059  /* xfmsubadd231xpd */,
  &gname2059  /* xfmsubadd231xxpd */,
  &gname2059  /* xfmsubadd231xxxpd */,
  &gname2050  /* xfmsubadd132ps */,
  &gname2059  /* xfmsubadd132xps */,
  &gname2059  /* xfmsubadd132xxps */,
  &gname2059  /* xfmsubadd132xxxps */,
  &gname2050  /* xfmsubadd213ps */,
  &gname2059  /* xfmsubadd213xps */,
  &gname2059  /* xfmsubadd213xxps */,
  &gname2059  /* xfmsubadd213xxxps */,
  &gname2050  /* xfmsubadd231ps */,
  &gname2059  /* xfmsubadd231xps */,
  &gname2059  /* xfmsubadd231xxps */,
  &gname2059  /* xfmsubadd231xxxps */,
  &gname2050  /* xfmsub132pd */,
  &gname2059  /* xfmsub132xpd */,
  &gname2059  /* xfmsub132xxpd */,
  &gname2059  /* xfmsub132xxxpd */,
  &gname2050  /* xfmsub213pd */,
  &gname2059  /* xfmsub213xpd */,
  &gname2059  /* xfmsub213xxpd */,
  &gname2059  /* xfmsub213xxxpd */,
  &gname2050  /* xfmsub231pd */,
  &gname2059  /* xfmsub231xpd */,
  &gname2059  /* xfmsub231xxpd */,
  &gname2059  /* xfmsub231xxxpd */,
  &gname2050  /* xfmsub132ps */,
  &gname2059  /* xfmsub132xps */,
  &gname2059  /* xfmsub132xxps */,
  &gname2059  /* xfmsub132xxxps */,
  &gname2050  /* xfmsub213ps */,
  &gname2059  /* xfmsub213xps */,
  &gname2059  /* xfmsub213xxps */,
  &gname2059  /* xfmsub213xxxps */,
  &gname2050  /* xfmsub231ps */,
  &gname2059  /* xfmsub231xps */,
  &gname2059  /* xfmsub231xxps */,
  &gname2059  /* xfmsub231xxxps */,
  &gname2050  /* xfmsub132sd */,
  &gname2059  /* xfmsub132xsd */,
  &gname2059  /* xfmsub132xxsd */,
  &gname2059  /* xfmsub132xxxsd */,
  &gname2050  /* xfmsub213sd */,
  &gname2059  /* xfmsub213xsd */,
  &gname2059  /* xfmsub213xxsd */,
  &gname2059  /* xfmsub213xxxsd */,
  &gname2050  /* xfmsub231sd */,
  &gname2059  /* xfmsub231xsd */,
  &gname2059  /* xfmsub231xxsd */,
  &gname2059  /* xfmsub231xxxsd */,
  &gname2050  /* xfmsub132ss */,
  &gname2059  /* xfmsub132xss */,
  &gname2059  /* xfmsub132xxss */,
  &gname2059  /* xfmsub132xxxss */,
  &gname2050  /* xfmsub213ss */,
  &gname2059  /* xfmsub213xss */,
  &gname2059  /* xfmsub213xxss */,
  &gname2059  /* xfmsub213xxxss */,
  &gname2050  /* xfmsub231ss */,
  &gname2059  /* xfmsub231xss */,
  &gname2059  /* xfmsub231xxss */,
  &gname2059  /* xfmsub231xxxss */,
  &gname2050  /* xfnmadd132pd */,
  &gname2059  /* xfnmadd132xpd */,
  &gname2059  /* xfnmadd132xxpd */,
  &gname2059  /* xfnmadd132xxxpd */,
  &gname2050  /* xfnmadd213pd */,
  &gname2059  /* xfnmadd213xpd */,
  &gname2059  /* xfnmadd213xxpd */,
  &gname2059  /* xfnmadd213xxxpd */,
  &gname2050  /* xfnmadd231pd */,
  &gname2059  /* xfnmadd231xpd */,
  &gname2059  /* xfnmadd231xxpd */,
  &gname2059  /* xfnmadd231xxxpd */,
  &gname2050  /* xfnmadd132ps */,
  &gname2059  /* xfnmadd132xps */,
  &gname2059  /* xfnmadd132xxps */,
  &gname2059  /* xfnmadd132xxxps */,
  &gname2050  /* xfnmadd213ps */,
  &gname2059  /* xfnmadd213xps */,
  &gname2059  /* xfnmadd213xxps */,
  &gname2059  /* xfnmadd213xxxps */,
  &gname2050  /* xfnmadd231ps */,
  &gname2059  /* xfnmadd231xps */,
  &gname2059  /* xfnmadd231xxps */,
  &gname2059  /* xfnmadd231xxxps */,
  &gname2050  /* xfnmadd132sd */,
  &gname2059  /* xfnmadd132xsd */,
  &gname2059  /* xfnmadd132xxsd */,
  &gname2059  /* xfnmadd132xxxsd */,
  &gname2050  /* xfnmadd213sd */,
  &gname2059  /* xfnmadd213xsd */,
  &gname2059  /* xfnmadd213xxsd */,
  &gname2059  /* xfnmadd213xxxsd */,
  &gname2050  /* xfnmadd231sd */,
  &gname2059  /* xfnmadd231xsd */,
  &gname2059  /* xfnmadd231xxsd */,
  &gname2059  /* xfnmadd231xxxsd */,
  &gname2050  /* xfnmadd132ss */,
  &gname2059  /* xfnmadd132xss */,
  &gname2059  /* xfnmadd132xxss */,
  &gname2059  /* xfnmadd132xxxss */,
  &gname2050  /* xfnmadd213ss */,
  &gname2059  /* xfnmadd213xss */,
  &gname2059  /* xfnmadd213xxss */,
  &gname2059  /* xfnmadd213xxxss */,
  &gname2050  /* xfnmadd231ss */,
  &gname2059  /* xfnmadd231xss */,
  &gname2059  /* xfnmadd231xxss */,
  &gname2059  /* xfnmadd231xxxss */,
  &gname2050  /* xfnmsub132pd */,
  &gname2059  /* xfnmsub132xpd */,
  &gname2059  /* xfnmsub132xxpd */,
  &gname2059  /* xfnmsub132xxxpd */,
  &gname2050  /* xfnmsub213pd */,
  &gname2059  /* xfnmsub213xpd */,
  &gname2059  /* xfnmsub213xxpd */,
  &gname2059  /* xfnmsub213xxxpd */,
  &gname2050  /* xfnmsub231pd */,
  &gname2059  /* xfnmsub231xpd */,
  &gname2059  /* xfnmsub231xxpd */,
  &gname2059  /* xfnmsub231xxxpd */,
  &gname2050  /* xfnmsub132ps */,
  &gname2059  /* xfnmsub132xps */,
  &gname2059  /* xfnmsub132xxps */,
  &gname2059  /* xfnmsub132xxxps */,
  &gname2050  /* xfnmsub213ps */,
  &gname2059  /* xfnmsub213xps */,
  &gname2059  /* xfnmsub213xxps */,
  &gname2059  /* xfnmsub213xxxps */,
  &gname2050  /* xfnmsub231ps */,
  &gname2059  /* xfnmsub231xps */,
  &gname2059  /* xfnmsub231xxps */,
  &gname2059  /* xfnmsub231xxxps */,
  &gname2050  /* xfnmsub132sd */,
  &gname2059  /* xfnmsub132xsd */,
  &gname2059  /* xfnmsub132xxsd */,
  &gname2059  /* xfnmsub132xxxsd */,
  &gname2050  /* xfnmsub213sd */,
  &gname2059  /* xfnmsub213xsd */,
  &gname2059  /* xfnmsub213xxsd */,
  &gname2059  /* xfnmsub213xxxsd */,
  &gname2050  /* xfnmsub231sd */,
  &gname2059  /* xfnmsub231xsd */,
  &gname2059  /* xfnmsub231xxsd */,
  &gname2059  /* xfnmsub231xxxsd */,
  &gname2050  /* xfnmsub132ss */,
  &gname2059  /* xfnmsub132xss */,
  &gname2059  /* xfnmsub132xxss */,
  &gname2059  /* xfnmsub132xxxss */,
  &gname2050  /* xfnmsub213ss */,
  &gname2059  /* xfnmsub213xss */,
  &gname2059  /* xfnmsub213xxss */,
  &gname2059  /* xfnmsub213xxxss */,
  &gname2050  /* xfnmsub231ss */,
  &gname2059  /* xfnmsub231xss */,
  &gname2059  /* xfnmsub231xxss */,
  &gname2059  /* xfnmsub231xxxss */,
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
  &gname997   /* nop */,
  &gname0     /* noop */
};
const char * sanity_check_targ_so_name = "orochi.so";
