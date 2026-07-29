import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure CutoffFunctionHierarchy where
  baseScale : ℝ
  momentumSpace : Type u
  cutoffFunctions : ℝ → (momentumSpace → ℝ)
  smoothness : Prop
  compactSupport : Prop
  normalization : Prop
  scalingProperty : Prop
  productProperty : Prop
  smoothnessClosed : smoothness
  compactSupportClosed : compactSupport
  normalizationClosed : normalization
  scalingPropertyClosed : scalingProperty
  productPropertyClosed : productProperty

structure CutoffFunctionHierarchyEvidence (H : CutoffFunctionHierarchy) where
  smoothnessClosed : H.smoothness
  compactSupportClosed : H.compactSupport
  normalizationClosed : H.normalization
  scalingPropertyClosed : H.scalingProperty
  productPropertyClosed : H.productProperty

def CutoffFunctionHierarchyClosed (H : CutoffFunctionHierarchy) : Prop :=
  H.smoothness ∧ H.compactSupport ∧ H.normalization ∧ H.scalingProperty ∧ H.productProperty

theorem cutoff_function_hierarchy_closed_from_evidence (H : CutoffFunctionHierarchy)
    (E : CutoffFunctionHierarchyEvidence H) : CutoffFunctionHierarchyClosed H := by
  exact And.intro E.smoothnessClosed
    (And.intro E.compactSupportClosed
      (And.intro E.normalizationClosed
        (And.intro E.scalingPropertyClosed E.productPropertyClosed)))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse