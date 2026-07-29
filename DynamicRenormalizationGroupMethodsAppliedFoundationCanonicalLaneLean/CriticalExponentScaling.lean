import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.DynamicRenormalizationGroupFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure CriticalExponentPackage {B : DynamicRenormalizationGroupPackage}
    (RG : DynamicRenormalizationGroupEvidence B) where
  correlationLengthNu : Prop
  susceptibilityGamma : Prop
  specificHeatAlpha : Prop
  orderParameterBeta : Prop
  correlationFunctionEta : Prop
  fisherScalingRelations : Prop

structure CriticalExponentEvidence {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (C : CriticalExponentPackage RG) where
  correlationLengthNuClosed : C.correlationLengthNu
  susceptibilityGammaClosed : C.susceptibilityGamma
  specificHeatAlphaClosed : C.specificHeatAlpha
  orderParameterBetaClosed : C.orderParameterBeta
  correlationFunctionEtaClosed : C.correlationFunctionEta
  fisherScalingRelationsClosed : C.fisherScalingRelations

def CriticalExponentClosed {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (C : CriticalExponentPackage RG) : Prop :=
  C.correlationLengthNu ∧ C.susceptibilityGamma ∧ C.specificHeatAlpha ∧
  C.orderParameterBeta ∧ C.correlationFunctionEta ∧ C.fisherScalingRelations

theorem critical_exponent_closed_from_evidence
    {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (C : CriticalExponentPackage RG) (Ev : CriticalExponentEvidence C) :
    CriticalExponentClosed C := by
  exact And.intro Ev.correlationLengthNuClosed
    (And.intro Ev.susceptibilityGammaClosed
      (And.intro Ev.specificHeatAlphaClosed
        (And.intro Ev.orderParameterBetaClosed
          (And.intro Ev.correlationFunctionEtaClosed Ev.fisherScalingRelationsClosed))))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse