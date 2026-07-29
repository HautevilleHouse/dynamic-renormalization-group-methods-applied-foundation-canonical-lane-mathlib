import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RGSmearedBareAction where
  bareActionFunctional : Type u
  smearingKernel : Type v
  smearedAction : Type w
  bareToSmearedMap : bareActionFunctional → smearedAction
  smearingScale : ℝ
  bareActionPositivity : Prop
  smearingKernelNormalization : Prop
  bareToSmearedInjective : Prop

structure RGSmearedBareActionEvidence (A : RGSmearedBareAction) where
  bareActionPositivityClosed : A.bareActionPositivity
  smearingKernelNormalizationClosed : A.smearingKernelNormalization
  bareToSmearedInjectiveClosed : A.bareToSmearedInjective

def RGSmearedBareActionClosed (A : RGSmearedBareAction) : Prop :=
  A.bareActionPositivity ∧ A.smearingKernelNormalization ∧ A.bareToSmearedInjective

theorem rg_smeared_bare_action_closed_from_evidence (A : RGSmearedBareAction)
    (E : RGSmearedBareActionEvidence A) : RGSmearedBareActionClosed A := by
  exact And.intro E.bareActionPositivityClosed
    (And.intro E.smearingKernelNormalizationClosed E.bareToSmearedInjectiveClosed)

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse