import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure ScalingLawPackage where
  scalingFunction : Type u
  scalingVariable : Type v
  homogeneityRelation : Prop
  universalityClass : Type w
  criticalExponents : Type x
  homogeneityRelationAdmissible : Prop
  universalityClassDetermined : Prop
  criticalExponentsMatchScaling : Prop

structure ScalingLawEvidence (P : ScalingLawPackage) where
  homogeneityRelationAdmissibleClosed : P.homogeneityRelationAdmissible
  universalityClassDeterminedClosed : P.universalityClassDetermined
  criticalExponentsMatchScalingClosed : P.criticalExponentsMatchScaling

def ScalingLawClosed (P : ScalingLawPackage) : Prop :=
  P.homogeneityRelationAdmissible ∧ P.universalityClassDetermined ∧
  P.criticalExponentsMatchScaling

theorem scaling_law_closed_from_evidence (P : ScalingLawPackage)
    (E : ScalingLawEvidence P) : ScalingLawClosed P := by
  exact And.intro E.homogeneityRelationAdmissibleClosed
    (And.intro E.universalityClassDeterminedClosed
      E.criticalExponentsMatchScalingClosed)

end DynamicRenormalizationGroupMethods
end HautevilleHouse