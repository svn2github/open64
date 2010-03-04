
#ifndef nystrom_alias_analysis_INCLUDED
#define nystrom_alias_analysis_INCLUDED

struct WN;

#include "alias_analyzer.h"
#include "constraint_graph.h"

using namespace __gnu_cxx;

class StToAliasTagKey
{
public:
  StToAliasTagKey(ST_IDX idx,UINT32 off,UINT32 size)
  : _idx(idx),_offset(off),_size(size) {}

  bool operator ==(const StToAliasTagKey &that) const
  {
    return _idx == that._idx &&
           _offset == that._offset &&
           _size == that._size;
  }
  size_t hash() const { return _idx << 16 ^ _offset << 8 ^ _size; }
private:
  ST_IDX _idx;
  UINT32 _offset;
  UINT32 _size;
};
typedef struct {
bool operator()(const StToAliasTagKey &k1,
                const StToAliasTagKey &k2) const { return (k1 == k2); }
} equalStToAliasTagKey;
typedef struct {
  size_t operator() (const StToAliasTagKey &k) const { return (k.hash()); }
} hashStToAliasTagKey;
typedef hash_map<StToAliasTagKey, AliasTag,
                 hashStToAliasTagKey,equalStToAliasTagKey> StToAliasTagMap;
typedef StToAliasTagMap::iterator StToAliasTagMapIterator;

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
   // Invoked in non-ipa mode when WN to CGNodeId map is not available
   NystromAliasAnalyzer(ALIAS_CONTEXT &,WN *);

   // Invoked during post-ipa be when WN to CGNodeId map exists
   NystromAliasAnalyzer(ALIAS_CONTEXT &);

   // Invoked during ipa
   NystromAliasAnalyzer();

   ~NystromAliasAnalyzer();

   // Implement base class virtual methods
   
   // Provide the alias result for the references, objects
   // represented by the provided tags.
   ALIAS_RESULT aliased(AliasTag tag1, AliasTag tag2);

   // Given a symbol, provide the corresponding AliasTag
   // For use in creating POINTS_TO from symbol and by mod-ref
   AliasTag genAliasTag(ST *st, INT64 ofst, INT64 size, bool direct);

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

   ConstraintGraph *constraintGraph() const { return _constraintGraph; }

   CallSiteId callSiteId(AliasTag tag) 
   {
     hash_map<UINT32, CallSiteId>::iterator iter = 
                                   _aliasTagToCallSiteIdMap.find((UINT32)tag);
     if (iter != _aliasTagToCallSiteIdMap.end())
       return iter->second;
     return 0;
   }

   CGNodeId cgNodeId(AliasTag tag) 
   {
     hash_map<UINT32, CGNodeId>::iterator iter = 
                                 _aliasTagToCGNodeIdMap.find((UINT32)tag);
     if (iter != _aliasTagToCGNodeIdMap.end())
       return iter->second;
     return 0;
   }

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

   // Maps a symbol,offset,size triple to a previously created AliasTag
   StToAliasTagMap _stToAliasTagMap;

   static PointsTo emptyPointsToSet;

   // Map AliasTags to their corresponding CGNode/CallSite ids
   // so that during CODEREP -> WHIRL phase we can attach the original
   // CGNodeIds to the new WHIRL nodes from their AliasTags
   hash_map<UINT32, CGNodeId>   _aliasTagToCGNodeIdMap;
   hash_map<UINT32, CallSiteId> _aliasTagToCallSiteIdMap;
};

#endif
