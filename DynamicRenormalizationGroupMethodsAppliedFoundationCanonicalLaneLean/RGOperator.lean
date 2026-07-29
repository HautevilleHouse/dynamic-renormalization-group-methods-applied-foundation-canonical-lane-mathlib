import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.PerturbationStability

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RGOperatorPackage {M : DynamicRenormalizationSpace} (F : FixedPointFlowPackage M) (P : PerturbationStabilityPackage M F) where
  rgOperator : M.carrier → M.carrier
  rgOperatorSmooth : Prop
  rgOperatorCommutesWithFlow : ∀ (t : ℝ) (x : M.carrier), F.flowMap t (rgOperator x) = rgOperator (F.flowMap t x)
  rgOperatorFixedPoint : rgOperator F.fixedPoint = F.fixedPoint
  rgOperatorSmoothTerm : rgOperatorSmooth

def RGOperatorClosed {M : DynamicRenormalizationSpace} {F : FixedPointFlowPackage M} {P : PerturbationStabilityPackage M F} (R : RGOperatorPackage M F P) : Prop :=
  R.rgOperatorSmooth

theorem rg_operator_closed {M : DynamicRenormalizationSpace} {F : FixedPointFlowPackage M} {P : PerturbationStabilityPackage M F} (R : RGOperatorPackage M F P) : RGOperatorClosed R := by
  exact R.rgOperatorSmoothTerm

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
