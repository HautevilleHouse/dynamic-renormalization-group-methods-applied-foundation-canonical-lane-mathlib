import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure FlowEquationPackage where
  flowParameter : Type u
  effectiveAction : flowParameter -> Type v
  wilsonPolchinskiEquation : Prop
  exactRGFlow : Prop
  perturbativeExpansion : Prop
  flowEquationAdmissible : Prop
  exactFlowValid : Prop
  perturbativeControl : Prop

structure FlowEquationEvidence (P : FlowEquationPackage) where
  flowEquationAdmissibleClosed : P.flowEquationAdmissible
  exactFlowValidClosed : P.exactFlowValid
  perturbativeControlClosed : P.perturbativeControl

def FlowEquationClosed (P : FlowEquationPackage) : Prop :=
  P.flowEquationAdmissible ∧ P.exactFlowValid ∧
  P.perturbativeControl

theorem flow_equation_closed_from_evidence (P : FlowEquationPackage)
    (E : FlowEquationEvidence P) : FlowEquationClosed P := by
  exact And.intro E.flowEquationAdmissibleClosed
    (And.intro E.exactFlowValidClosed E.perturbativeControlClosed)

end DynamicRenormalizationGroupMethods
end HautevilleHouse