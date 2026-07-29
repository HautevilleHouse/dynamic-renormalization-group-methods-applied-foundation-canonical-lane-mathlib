import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.MomentumCutoff

/-!
# Scaling Regime Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure ScalingRegimePackage (M : MomentumCutoffPackage) where
  scaleParameter : Type u
  scalingDimension : (scaleParameter → Type v) → Type w
  criticalExponent : Prop
  scalingLaw : Prop
  universalityClass : Prop

structure ScalingRegimeEvidence {M : MomentumCutoffPackage}
  (R : ScalingRegimePackage M) where
  criticalExponentClosed : R.criticalExponent
  scalingLawClosed : R.scalingLaw
  universalityClassClosed : R.universalityClass

def ScalingRegimeClosed {M : MomentumCutoffPackage}
  (R : ScalingRegimePackage M) : Prop :=
  R.criticalExponent ∧ R.scalingLaw ∧ R.universalityClass

theorem scaling_regime_closed_from_evidence
  {M : MomentumCutoffPackage} (R : ScalingRegimePackage M)
  (E : ScalingRegimeEvidence R) : ScalingRegimeClosed R := by
  exact And.intro E.criticalExponentClosed
    (And.intro E.scalingLawClosed E.universalityClassClosed)

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
