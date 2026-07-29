import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure FixedPointPackage where
  fixedPoint : Type u
  stabilityMatrix : Type v
  relevantDirections : Type w
  irrelevantDirections : Type x
  linearStability : Prop
  fixedPointAttracts : Prop
  fixedPointAdmissible : Prop

structure FixedPointEvidence (P : FixedPointPackage) where
  linearStabilityClosed : P.linearStability
  fixedPointAttractsClosed : P.fixedPointAttracts
  fixedPointAdmissibleClosed : P.fixedPointAdmissible

def FixedPointClosed (P : FixedPointPackage) : Prop :=
  P.linearStability ∧ P.fixedPointAttracts ∧
  P.fixedPointAdmissible

theorem fixed_point_closed_from_evidence (P : FixedPointPackage)
    (E : FixedPointEvidence P) : FixedPointClosed P := by
  exact And.intro E.linearStabilityClosed
    (And.intro E.fixedPointAttractsClosed E.fixedPointAdmissibleClosed)

end DynamicRenormalizationGroupMethods
end HautevilleHouse