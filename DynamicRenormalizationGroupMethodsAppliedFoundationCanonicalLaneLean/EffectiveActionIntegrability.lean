import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.DynamicRenormalizationGroupFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure EffectiveActionPackage {B : DynamicRenormalizationGroupPackage}
    (RG : DynamicRenormalizationGroupEvidence B) where
  wilsonianAction : Prop
  scaleDependentVertex : Prop
  integrabilityCondition : Prop
  convergentExpansion : Prop
  effectiveActionDerived : Prop

structure EffectiveActionEvidence {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (E : EffectiveActionPackage RG) where
  wilsonianActionClosed : E.wilsonianAction
  scaleDependentVertexClosed : E.scaleDependentVertex
  integrabilityConditionClosed : E.integrabilityCondition
  convergentExpansionClosed : E.convergentExpansion
  effectiveActionDerivedClosed : E.effectiveActionDerived

def EffectiveActionClosed {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (E : EffectiveActionPackage RG) : Prop :=
  E.wilsonianAction ∧ E.scaleDependentVertex ∧ E.integrabilityCondition ∧
  E.convergentExpansion ∧ E.effectiveActionDerived

theorem effective_action_closed_from_evidence
    {B : DynamicRenormalizationGroupPackage}
    {RG : DynamicRenormalizationGroupEvidence B}
    (E : EffectiveActionPackage RG) (Ev : EffectiveActionEvidence E) :
    EffectiveActionClosed E := by
  exact And.intro Ev.wilsonianActionClosed
    (And.intro Ev.scaleDependentVertexClosed
      (And.intro Ev.integrabilityConditionClosed
        (And.intro Ev.convergentExpansionClosed Ev.effectiveActionDerivedClosed)))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse