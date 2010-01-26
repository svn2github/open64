
#ifndef alias_analysis_INCLUDED
#define alias_analysis_INCLUDED

#include "sparse_bitset.h"
#include "opt_alias_interface.h"

typedef UINT64 AliasTag;
const AliasTag InvalidAliasTag = UINT64_MAX;

class AliasAnalyzer {

private:
  static AliasAnalyzer *_alias_analyzer;

public:
   AliasAnalyzer();

   virtual ~AliasAnalyzer();

   static AliasAnalyzer *Create_Alias_Analyzer();

   // Provide the alias result for the references, objects
   // represented by the provided tags.
   virtual ALIAS_RESULT aliased(AliasTag tag1, AliasTag tag2);

   // Given a symbol, provide the corresponding AliasTag
   // For use in creating POINTS_TO from symbol and by mod-ref
   virtual AliasTag genAliasTag(ST *st, INT64 ofst, INT64 size);

   // Req'd for mod-ref
   // For an AliasTag provide an opaque set representing the
   // objects or regions of memory referenced by the operation
   // associated with the tag. Returns 'true' if we have valid
   // points-to information assocated with the requested symbol.
   // In that case the points-to set is provided.  Otherwise
   // 'false' is returned and the points-to set is undefined.
   // Note: the actual implementation of the bitset has not 
   // been decided.  This routine is poorly named as we alias 
   // analysis may not be formulated as a  points-to problem.
   virtual bool pointsToSet(AliasTag, SparseBitSet<int> &) = 0;

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
