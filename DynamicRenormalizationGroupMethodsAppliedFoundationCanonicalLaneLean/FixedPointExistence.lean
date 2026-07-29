import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure FixedPointExistence where
  rgFlow : Type u
  fixedPointCandidate : rgFlow
  existenceProof : Prop
  uniquenessProof : Prop
  stabilityProof : Prop
  existenceProofClosed : existenceProof
  uniquenessProofClosed : uniquenessProof
  stabilityProofClosed : stabilityProof

structure FixedPointExistenceEvidence (F : FixedPointExistence) where
  existenceProofClosed : F.existenceProof
  uniquenessProofClosed : F.uniquenessProof
  stabilityProofClosed : F.stabilityProof

def FixedPointExistenceClosed (F : FixedPointExistence) : Prop :=
  F.existenceProof ∧ F.uniquenessProof ∧ F.stabilityProof

theorem fixed_point_existence_closed_from_evidence (F : FixedPointExistence)
    (E : FixedPointExistenceEvidence F) : FixedPointExistenceClosed F := by
  exact And.intro E.existenceProofClosed
    (And.intro E.uniquenessProofClosed E.stabilityProofClosed)

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse