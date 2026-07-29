import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.FixedPointFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure PerturbationStabilityPackage {M : DynamicRenormalizationSpace} (F : FixedPointFlowPackage M) where
  perturbationClass : Type
  stabilityDomain : Set M.carrier
  flowContractiveOnDomain : Prop
  basinOfAttraction : Prop
  stabilityDomainContainsFixedPoint : F.fixedPoint ∈ stabilityDomain
  flowContractiveOnDomainTerm : flowContractiveOnDomain
  basinOfAttractionTerm : basinOfAttraction

structure PerturbationStabilityEvidence {M : DynamicRenormalizationSpace} {F : FixedPointFlowPackage M} (P : PerturbationStabilityPackage M F) where
  flowContractiveOnDomainClosed : P.flowContractiveOnDomain
  basinOfAttractionClosed : P.basinOfAttraction

def PerturbationStabilityClosed {M : DynamicRenormalizationSpace} {F : FixedPointFlowPackage M} (P : PerturbationStabilityPackage M F) : Prop :=
  P.flowContractiveOnDomain ∧ P.basinOfAttraction

theorem perturbation_stability_closed_from_evidence {M : DynamicRenormalizationSpace} {F : FixedPointFlowPackage M} (P : PerturbationStabilityPackage M F) (E : PerturbationStabilityEvidence M F) : PerturbationStabilityClosed P := by
  exact And.intro E.flowContractiveOnDomainClosed E.basinOfAttractionClosed

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
