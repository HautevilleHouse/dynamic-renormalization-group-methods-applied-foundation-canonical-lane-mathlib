import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure FixedPoint where
  hamiltonian : Prop
  scalingDimensions : List ℚ
  stabilityAnalysis : Prop

def FixedPointClosed (F : FixedPoint) : Prop :=
  F.hamiltonian ∧ F.scalingDimensions ≠ [] ∧ F.stabilityAnalysis

theorem fixed_point_closed (F : FixedPoint) : FixedPointClosed F := by
  apply And.intro
  · exact F.hamiltonian
  · apply And.intro
    · exact by
        have h := F.scalingDimensions
        cases h;
        · trivial
        · trivial
    · exact F.stabilityAnalysis

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse