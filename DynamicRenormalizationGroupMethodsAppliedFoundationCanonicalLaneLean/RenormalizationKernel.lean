import DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.ScalingRegime

/-!
# Renormalization Kernel Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

structure RenormalizationKernelPackage (R : ScalingRegimePackage) where
  kernelOperator : Type u
  scaleCovariance : Prop
  localityProperty : Prop
  analyticityInMomentum : Prop
  positivityPreserving : Prop

structure RenormalizationKernelEvidence {R : ScalingRegimePackage}
  (K : RenormalizationKernelPackage R) where
  scaleCovarianceClosed : K.scaleCovariance
  localityPropertyClosed : K.localityProperty
  analyticityInMomentumClosed : K.analyticityInMomentum
  positivityPreservingClosed : K.positivityPreserving

def RenormalizationKernelClosed {R : ScalingRegimePackage}
  (K : RenormalizationKernelPackage R) : Prop :=
  K.scaleCovariance ∧ K.localityProperty ∧
  K.analyticityInMomentum ∧ K.positivityPreserving

theorem renormalization_kernel_closed_from_evidence
  {R : ScalingRegimePackage} (K : RenormalizationKernelPackage R)
  (E : RenormalizationKernelEvidence K) : RenormalizationKernelClosed K := by
  exact And.intro E.scaleCovarianceClosed
    (And.intro E.localityPropertyClosed
      (And.intro E.analyticityInMomentumClosed E.positivityPreservingClosed))

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse
