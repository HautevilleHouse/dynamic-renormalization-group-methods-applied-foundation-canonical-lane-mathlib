import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure FixedPointFlowPackage {M : DynamicRenormalizationSpace} where
  flowMap : ℝ → M.carrier → M.carrier
  fixedPoint : M.carrier
  flowPreservesInvariant : Prop
  linearizationAtFixedPoint : Type
  eigenvalueSpectrum : Type
  spectrumInUnitDisk : Prop
  flowPreservesInvariantTerm : flowPreservesInvariant
  spectrumInUnitDiskTerm : spectrumInUnitDisk

structure FixedPointFlowEvidence {M : DynamicRenormalizationSpace} (F : FixedPointFlowPackage M) where
  flowPreservesInvariantClosed : F.flowPreservesInvariant
  spectrumInUnitDiskClosed : F.spectrumInUnitDisk

def FixedPointFlowClosed {M : DynamicRenormalizationSpace} (F : FixedPointFlowPackage M) : Prop :=
  F.flowPreservesInvariant ∧ F.spectrumInUnitDisk

theorem fixed_point_flow_closed_from_evidence {M : DynamicRenormalizationSpace} (F : FixedPointFlowPackage M) (E : FixedPointFlowEvidence M) : FixedPointFlowClosed F := by
  exact And.intro E.flowPreservesInvariantClosed E.spectrumInUnitDiskClosed

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
