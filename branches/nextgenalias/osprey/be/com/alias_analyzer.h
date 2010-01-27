
#ifndef alias_analysis_INCLUDED
#define alias_analysis_INCLUDED

#include "sparse_bitset.h"
#include "opt_alias_interface.h"
#include "opt_alias_rule.h"

struct WN;
struct ST;

typedef UINT64 AliasTag;

// We use zero as the indicator of an unknown or invalid tag since
// that is the default value returned by WN_MAP for WNs for which
// no mapping has been established.
const AliasTag InvalidAliasTag = 0;

class AliasAnalyzer {

private:
  static AliasAnalyzer *_alias_analyzer;

public:
   AliasAnalyzer();

   virtual ~AliasAnalyzer();

   static AliasAnalyzer *Create_Alias_Analyzer(ALIAS_CONTEXT &ac, WN *tree);

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
};

#endif // alias_analysis_INCLUDED
