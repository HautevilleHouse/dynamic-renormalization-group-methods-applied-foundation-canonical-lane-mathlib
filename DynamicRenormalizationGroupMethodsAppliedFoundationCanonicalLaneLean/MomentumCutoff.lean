import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.FieldTheory

/-!
# Momentum Cutoff Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure MomentumCutoffPackage (F : FieldTheoryPackage) where
  cutoffFunction : Type u
  smoothness : Prop
  compactSupport : Prop
  regularizationScale : Prop
  localityPreservation : Prop

structure MomentumCutoffEvidence {F : FieldTheoryPackage}
  (M : MomentumCutoffPackage F) where
  smoothnessClosed : M.smoothness
  compactSupportClosed : M.compactSupport
  regularizationScaleClosed : M.regularizationScale
  localityPreservationClosed : M.localityPreservation

def MomentumCutoffClosed {F : FieldTheoryPackage}
  (M : MomentumCutoffPackage F) : Prop :=
  M.smoothness ∧ M.compactSupport ∧
  M.regularizationScale ∧ M.localityPreservation

theorem momentum_cutoff_closed_from_evidence
  {F : FieldTheoryPackage} (M : MomentumCutoffPackage F)
  (E : MomentumCutoffEvidence M) : MomentumCutoffClosed M := by
  exact And.intro E.smoothnessClosed
    (And.intro E.compactSupportClosed
      (And.intro E.regularizationScaleClosed E.localityPreservationClosed))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
