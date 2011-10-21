//OBJ
#include "sample.hh"

G4hShellCrossSectionDoubleExpData::G4hShellCrossSectionDoubleExpData()
{

  FillVectorValuesEnergy();

}

G4hShellCrossSectionDoubleExpData::~G4hShellCrossSectionDoubleExpData()
{ 
 std::map< G4int,std::vector<G4double>*,std::less<G4int> >::iterator pos1;
  for (pos1 = parameterMapEnergy.begin(); pos1 != parameterMapEnergy.end(); ++pos1)
    {
      std::vector<G4double>* dataSet1 = (*pos1).second;
      delete dataSet1;
    }
}

inline void G4hShellCrossSectionDoubleExpData::InitializeVectorEnergy(std::vector<G4double> &vectEnergy, G4double value) const
{
  vectEnergy.push_back(value);
}

void G4hShellCrossSectionDoubleExpData::FillVectorValuesEnergy()
{
  InitializeVectorEnergy(energy6C,  0.35);
  InitializeVectorEnergy(energy7N,  0.6);
  InitializeVectorEnergy(energy8O,  0.7);
  InitializeVectorEnergy(energy9F,  1.0);
  InitializeVectorEnergy(energy10Ne,1.0);
  InitializeVectorEnergy(energy11Na,1.0);
  InitializeVectorEnergy(energy12Mg,2.0);
  InitializeVectorEnergy(energy13Al,2.0);
  InitializeVectorEnergy(energy14Si,3.0);
  InitializeVectorEnergy(energy15P, 3.0);
  InitializeVectorEnergy(energy16S, 5.0);
  InitializeVectorEnergy(energy17Cl,5.0);
  InitializeVectorEnergy(energy18Ar,5.0);
  InitializeVectorEnergy(energy19K, 5.0);
  InitializeVectorEnergy(energy20Ca,5.0);
  InitializeVectorEnergy(energy21Sc,5.0);
  InitializeVectorEnergy(energy22Ti,6.0);
  InitializeVectorEnergy(energy23V, 6.0);
  InitializeVectorEnergy(energy24Cr,6.0);
  InitializeVectorEnergy(energy25Mn,6.0);
  InitializeVectorEnergy(energy26Fe,3.0);
  InitializeVectorEnergy(energy27Co,3.5);
  InitializeVectorEnergy(energy28Ni,3.5);
  InitializeVectorEnergy(energy29Cu,4.0);
  InitializeVectorEnergy(energy30Zn,4.0);
  InitializeVectorEnergy(energy31Ga,4.5);
  InitializeVectorEnergy(energy32Ge,5.0);
  InitializeVectorEnergy(energy33As,5.0);
  InitializeVectorEnergy(energy34Se,5.5);
  InitializeVectorEnergy(energy35Br,6.0);
  InitializeVectorEnergy(energy36Kr,6.0);
  InitializeVectorEnergy(energy37Rb,6.0);
  InitializeVectorEnergy(energy38Sr,7.0);
  InitializeVectorEnergy(energy39Y, 7.0);
  InitializeVectorEnergy(energy40Zr,8.0);
  InitializeVectorEnergy(energy41Nb,8.0);
  InitializeVectorEnergy(energy42Mo,8.0);
  InitializeVectorEnergy(energy43Tc,9.0);
  InitializeVectorEnergy(energy44Ru,9.0);
  InitializeVectorEnergy(energy45Rh,9.0);
}                                                                              

