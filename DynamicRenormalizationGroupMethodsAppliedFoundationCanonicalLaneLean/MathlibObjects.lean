import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure DynamicRenormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicRenormalizationAdmittedObject where
  space : DynamicRenormalizationSpace
  scaleInvariance : Prop
  rgFlowFixedPoint : Prop
  universalityClass : Type
  universalityTopology : TopologicalSpace universalityClass
  convergenceToFixedPoint : Prop
  conclusion : convergenceToFixedPoint

structure DynamicRenormalizationEndgameState where
  object : DynamicRenormalizationAdmittedObject

def DynamicRenormalizationWitnessClosed (O : DynamicRenormalizationAdmittedObject) : Prop :=
  O.convergenceToFixedPoint

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
