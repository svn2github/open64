
#ifndef nystrom_alias_analysis_INCLUDED
#define nystrom_alias_analysis_INCLUDED

struct WN;

#include "alias_analyzer.h"
#include "constraint_graph.h"

using namespace __gnu_cxx;

// Class to map AliasTags to points-to set
class AliasTagInfo 
{
public:

  AliasTagInfo(MEM_POOL *memPool) : 
    _pointsToSet(memPool)
  {}

  PointsTo &pointsTo() { return _pointsToSet; }

  virtual void print(FILE *file) 
  {
    fprintf(file, "[");
    _pointsToSet.print(file);
    fprintf(file, "]");
  }

private:
  PointsTo _pointsToSet;  // Set of CGNodeIds associated with this alias tag 
};

// Class to map AliasTag of a call to its mod/ref set
class CallAliasTagInfo : public AliasTagInfo
{
public:
  CallAliasTagInfo(MEM_POOL *memPool) :
    AliasTagInfo(memPool),
    _refPointsToSet(memPool)
  {}

  void print(FILE *file) 
  {
    fprintf(file, "mod: [");
    mod().print(file);
    fprintf(file, "]");
    fprintf(file, " ref: [");
    ref().print(file);
    fprintf(file, "]");
  }

  PointsTo &mod() { return pointsTo(); }
  PointsTo &ref() { return _refPointsToSet; }

private:
  PointsTo _refPointsToSet;
};

class NystromAliasAnalyzer : public AliasAnalyzer {
   
public:
   NystromAliasAnalyzer(ALIAS_CONTEXT &,WN *);

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
   BOOL pointsToSet(AliasTag, PointsTo &);


   AliasTag meet(AliasTag dstTag, AliasTag srcTag);

private:

   // Creates a new AliasTag for use during client update of
   // alias information.  The underlying points-to set does not
   // have an associated symbol or perhaps even a constraint node
   AliasTag newAliasTag(void);

   // Create a new AliasTag for a call
   AliasTag newCallAliasTag(void);

   // Traverse the whirl tree starting from the func entry
   // and for each WN for which there is a valid CGNodeId, create
   // an AliasTag and its associated AliasTagInfo and update the aliasTagMap
   void createAliasTags(WN *entryWN);

   // Unions the points-to set of srcTag into the points-to set
   // of dstTag.
   void mergePointsTo(AliasTag dstTag, AliasTag srcTag);

   PointsTo &pointsTo(AliasTag tag) 
   {
      hash_map<UINT32, AliasTagInfo *>::iterator iter = 
                                        _aliasTagInfo.find((UINT32)tag);
      if (iter != _aliasTagInfo.end())
        return iter->second->pointsTo();
      return emptyPointsToSet;
   }

   AliasTag _nextAliasTag;  // to generate unique AliasTags

   ConstraintGraph *_constraintGraph;

   // Maps the AliasTags to points-to sets
   hash_map<UINT32, AliasTagInfo *> _aliasTagInfo;

   static PointsTo emptyPointsToSet;
};

#endif
