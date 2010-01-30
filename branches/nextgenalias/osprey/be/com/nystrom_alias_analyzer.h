
#ifndef nystrom_alias_analysis_INCLUDED
#define nystrom_alias_analysis_INCLUDED

struct WN;

#include "alias_analyzer.h"
#include "constraint_graph.h"

class NystromAliasAnalyzer : public AliasAnalyzer {
   
public:

   NystromAliasAnalyzer(ALIAS_CONTEXT &,WN *,MEM_POOL *memPool);

   ~NystromAliasAnalyzer();

   // Implement base class virtual methods
   
   // Provide the alias result for the references, objects
   // represented by the provided tags.
   ALIAS_RESULT aliased(AliasTag tag1, AliasTag tag2);

   // Given a symbol, provide the corresponding AliasTag
   // For use in creating POINTS_TO from symbol and by mod-ref
   AliasTag genAliasTag(ST *st, INT64 ofst, INT64 size);

   // Mod-ref
   // Given a call (ST *) and the AliasTag of a possibly
   // referenced symbol, this method determines whether the
   // symbol may be modified or read by that call. Will not
   // pessimize initial values, i.e. will not transform a
   // 'false' value to 'true'.
   void aliasedWithCall(ST *call, AliasTag symTag,
                        BOOL &mod, BOOL &ref);

   // Implement additional interfaces needed by the ALIAS_MANAGER

   // Other public methods specific to this analyzer

   // For Mod-Ref. Returns 'true' if the points-to information 
   // associated with the requested symbol is complete and the 
   // points-to set is provided.  Otherwise, the routine 
   // returns 'false' and the points-to set is undefined.
   BOOL pointsToSet(AliasTag, SparseBitSet<CGNodeId> &);
};

#endif
