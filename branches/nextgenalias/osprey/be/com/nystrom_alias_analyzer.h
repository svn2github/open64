
#ifndef nystrom_alias_analysis_INCLUDED
#define nystrom_alias_analysis_INCLUDED

#include "alias_analyzer.h"

class NystromAliasAnalyzer : public AliasAnalyzer {
   
public:

   NystromAliasAnalyzer();

   ~NystromAliasAnalyzer();
   
   // Provide the alias result for the references, objects
   // represented by the provided tags.
   ALIAS_RESULT aliased(AliasTag tag1, AliasTag tag2);

   // Given a symbol, provide the corresponding AliasTag
   // For use in creating POINTS_TO from symbol and by mod-ref
   AliasTag genAliasTag(ST *st, INT64 ofst, INT64 size);

   // For Mod-Ref. Returns 'true' if the points-to information 
   // associated with the requested symbol is complete and the 
   // points-to set is provided.  Otherwise, the routine 
   // returns 'false' and the points-to set is undefined.
   bool pointsToSet(AliasTag, SparseBitSet<int> &);

   // Implement additional interfaces needed by the ALIAS_MANAGER
};

#endif
