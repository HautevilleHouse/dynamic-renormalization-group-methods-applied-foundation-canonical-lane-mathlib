import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure AnomalousDimension where
  exponent : ℝ
  fixedPointLinearization : Prop
  universalCriticalExponent : Prop

def AnomalousDimensionClosed (A : AnomalousDimension) : Prop :=
  A.fixedPointLinearization ∧ A.universalCriticalExponent

theorem anomalous_dimension_closed (A : AnomalousDimension) : AnomalousDimensionClosed A := by
  unfold AnomalousDimensionClosed
  exact And.intro A.fixedPointLinearization A.universalCriticalExponent

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse