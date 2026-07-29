import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure DynamicRenormalizationGroupPackage where
  momentumCutoff : Prop
  flowEquation : Prop
  betaFunctionComputed : Prop
  fixedPointIdentified : Prop
  criticalExponentsDerived : Prop
  universalityClassDetermined : Prop

structure DynamicRenormalizationGroupEvidence (B : DynamicRenormalizationGroupPackage) where
  momentumCutoffClosed : B.momentumCutoff
  flowEquationClosed : B.flowEquation
  betaFunctionComputedClosed : B.betaFunctionComputed
  fixedPointIdentifiedClosed : B.fixedPointIdentified
  criticalExponentsDerivedClosed : B.criticalExponentsDerived
  universalityClassDeterminedClosed : B.universalityClassDetermined

def DynamicRenormalizationGroupClosed (B : DynamicRenormalizationGroupPackage) : Prop :=
  B.momentumCutoff ∧ B.flowEquation ∧ B.betaFunctionComputed ∧
  B.fixedPointIdentified ∧ B.criticalExponentsDerived ∧ B.universalityClassDetermined

theorem dynamic_renormalization_group_closed_from_evidence
    (B : DynamicRenormalizationGroupPackage) (E : DynamicRenormalizationGroupEvidence B) :
    DynamicRenormalizationGroupClosed B := by
  exact And.intro E.momentumCutoffClosed
    (And.intro E.flowEquationClosed
      (And.intro E.betaFunctionComputedClosed
        (And.intro E.fixedPointIdentifiedClosed
          (And.intro E.criticalExponentsDerivedClosed E.universalityClassDeterminedClosed))))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse