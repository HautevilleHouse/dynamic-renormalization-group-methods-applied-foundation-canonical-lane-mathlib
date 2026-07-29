import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RGAdmittedObject where
  rgFlow : Type u
  fixedPoint : rgFlow
  criticalExponents : List ℝ
  universalityClass : Prop
  universalityClassTerm : universalityClass

def RGAdmissibleClass := AdmissibleClass

def RGWitnessClosed (O : RGAdmittedObject) : Prop :=
  O.universalityClass

theorem rg_witness_closed_from_object (O : RGAdmittedObject) : RGWitnessClosed O := by
  exact O.universalityClassTerm

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse