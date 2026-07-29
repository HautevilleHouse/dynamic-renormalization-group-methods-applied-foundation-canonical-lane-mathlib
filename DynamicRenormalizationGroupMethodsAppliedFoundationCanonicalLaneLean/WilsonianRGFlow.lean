import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RGTransform where
  scale : ℚ
  hamiltonianTransform : Prop
  localityProperty : Prop

def RGTransformClosed (R : RGTransform) : Prop :=
  R.hamiltonianTransform ∧ R.localityProperty

theorem rg_transform_closed (R : RGTransform) : RGTransformClosed R := by
  unfold RGTransformClosed
  exact And.intro R.hamiltonianTransform R.localityProperty

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse