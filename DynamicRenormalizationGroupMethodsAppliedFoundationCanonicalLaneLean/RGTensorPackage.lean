import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure RGTensorPackage where
  scaleField : Type u
  bareCouplings : Type v
  renormalizedCouplings : scaleField -> Type w
  betaFunction : scaleField -> scaleField -> Type x
  wilsonFixedPoint : Type y
  scalingDimensions : Type z
  criticalExponents : Type a
  betaFunctionAdmissible : Prop
  wilsonFixedPointExists : Prop
  scalingDimensionsComputed : Prop
  criticalExponentsDerived : Prop

structure RGTensorEvidence (P : RGTensorPackage) where
  betaFunctionAdmissibleClosed : P.betaFunctionAdmissible
  wilsonFixedPointExistsClosed : P.wilsonFixedPointExists
  scalingDimensionsComputedClosed : P.scalingDimensionsComputed
  criticalExponentsDerivedClosed : P.criticalExponentsDerived

def RGTensorClosed (P : RGTensorPackage) : Prop :=
  P.betaFunctionAdmissible ∧ P.wilsonFixedPointExists ∧
  P.scalingDimensionsComputed ∧ P.criticalExponentsDerived

theorem rg_tensor_closed_from_evidence (P : RGTensorPackage)
    (E : RGTensorEvidence P) : RGTensorClosed P := by
  exact And.intro E.betaFunctionAdmissibleClosed
    (And.intro E.wilsonFixedPointExistsClosed
      (And.intro E.scalingDimensionsComputedClosed E.criticalExponentsDerivedClosed))

end DynamicRenormalizationGroupMethods
end HautevilleHouse