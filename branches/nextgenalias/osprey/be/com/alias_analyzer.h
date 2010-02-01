
#ifndef alias_analysis_INCLUDED
#define alias_analysis_INCLUDED

#include "mempool.h"
#include "sparse_bitset.h"
#include "opt_alias_interface.h"
#include "opt_alias_rule.h"

struct WN;
struct ST;

enum AliasTag {
  // We use zero as the indicator of an unknown or invalid tag since
  // that is the default value returned by WN_MAP for WNs for which
  // no mapping has been established.
  InvalidAliasTag = 0,
  // Indicates an empty alias set, e.g. this is the initial value of
  // the _alias_tag within a POINTS_TO object
  EmptyAliasTag,
  // First non-predefined alias tag to be associated with memory
  // references
  InitialAliasTag,
};

// The WN_MAP only supports INT32, and will not allow us to place
// an enumeration into the map.  Here we hide the casting from
// the client.
#define WN_MAP_AliasTag_Set(wn,thing) \
  IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_TAG, (wn), (INT32)(thing))
#define WN_MAP_AliasTag_Get(wn) \
  (AliasTag)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_TAG, (wn))

class AliasAnalyzer {

private:
  static AliasAnalyzer *_alias_analyzer;

public:
   AliasAnalyzer();

   virtual ~AliasAnalyzer();

   static AliasAnalyzer *Create_Alias_Analyzer(ALIAS_CONTEXT &ac, 
                                               WN *tree,
                                               MEM_POOL *memPool);

   // Provide the alias result for the references, objects
   // represented by the provided tags.
   virtual ALIAS_RESULT aliased(AliasTag tag1, AliasTag tag2);

   // Given a symbol, provide the corresponding AliasTag
   // For use in creating POINTS_TO from symbol and by mod-ref
   virtual AliasTag genAliasTag(ST *st, INT64 ofst, INT64 size);

   // Mod-ref
   // Given a call (ST *) and the AliasTag of a possibly
   // referenced symbol, this method determines whether the
   // symbol may be modified or read by that call.  Will not
   // pessimize initial values, i.e. will not transform a
   // 'false' value to 'true'.
   virtual void aliasedWithCall(ST *call, AliasTag symTag,
                                BOOL &mod, BOOL &ref);

   // Require interfaces to support ALIAS_MANAGER routines
   // Copy_alias_info()
   // Duplicate_alias_info()
   // Create_vector_alias()
   // Valid_alias()

   // Require interfaces to support ALIAS_MANAGER routines
   // Create_local_alias()
   // Create_global_alias()
   // Create_formal_alias()
   // Create_unique_pointer_alias()
   // Create_lda_array_alias()

   virtual AliasTag meet(AliasTag destTag, AliasTag srcTag);
};

#endif // alias_analysis_INCLUDED
