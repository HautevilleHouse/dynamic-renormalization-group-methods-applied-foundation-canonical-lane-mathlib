import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure PolchinskiFlowEquation where
  effectiveActionParameter : Type u
  flowParameter : ℝ
  flowEquation : effectiveActionParameter → ℝ → Prop
  initialCondition : Prop
  wellPosedness : Prop
  regularity : Prop
  initialConditionClosed : initialCondition
  wellPosednessClosed : wellPosedness
  regularityClosed : regularity

structure PolchinskiFlowEquationEvidence (P : PolchinskiFlowEquation) where
  initialConditionClosed : P.initialCondition
  wellPosednessClosed : P.wellPosedness
  regularityClosed : P.regularity

def PolchinskiFlowEquationClosed (P : PolchinskiFlowEquation) : Prop :=
  P.initialCondition ∧ P.wellPosedness ∧ P.regularity

theorem polchinski_flow_equation_closed_from_evidence (P : PolchinskiFlowEquation)
    (E : PolchinskiFlowEquationEvidence P) : PolchinskiFlowEquationClosed P := by
  exact And.intro E.initialConditionClosed
    (And.intro E.wellPosednessClosed E.regularityClosed)

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse