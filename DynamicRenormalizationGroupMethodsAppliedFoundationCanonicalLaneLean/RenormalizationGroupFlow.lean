import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.RenormalizationKernel

/-!
# Renormalization Group Flow Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RenormalizationGroupFlowPackage (K : RenormalizationKernelPackage) where
  scaleSpace : Type u
  flowMap : scaleSpace → (scaleSpace → Type v) → scaleSpace → Type v
  semigroupProperty : Prop
  fixedPointExistence : Prop
  fixedPointUniqueness : Prop

structure RenormalizationGroupFlowEvidence {K : RenormalizationKernelPackage}
  (F : RenormalizationGroupFlowPackage K) where
  semigroupPropertyClosed : F.semigroupProperty
  fixedPointExistenceClosed : F.fixedPointExistence
  fixedPointUniquenessClosed : F.fixedPointUniqueness

def RenormalizationGroupFlowClosed {K : RenormalizationKernelPackage}
  (F : RenormalizationGroupFlowPackage K) : Prop :=
  F.semigroupProperty ∧ F.fixedPointExistence ∧ F.fixedPointUniqueness

theorem renormalization_group_flow_closed_from_evidence
  {K : RenormalizationKernelPackage} (F : RenormalizationGroupFlowPackage K)
  (E : RenormalizationGroupFlowEvidence F) : RenormalizationGroupFlowClosed F := by
  exact And.intro E.semigroupPropertyClosed
    (And.intro E.fixedPointExistenceClosed E.fixedPointUniquenessClosed)

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
