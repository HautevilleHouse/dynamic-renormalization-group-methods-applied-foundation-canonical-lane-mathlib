import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure MomentumShellPackage where
  momentumScale : Type u
  hardCutoff : Prop
  smoothCutoff : Prop
  shellIntegration : Prop
  cutoffAdmissible : Prop
  integrationSchemeValid : Prop

structure MomentumShellEvidence (P : MomentumShellPackage) where
  cutoffAdmissibleClosed : P.cutoffAdmissible
  integrationSchemeValidClosed : P.integrationSchemeValid

def MomentumShellClosed (P : MomentumShellPackage) : Prop :=
  P.cutoffAdmissible ∧ P.integrationSchemeValid

theorem momentum_shell_closed_from_evidence (P : MomentumShellPackage)
    (E : MomentumShellEvidence P) : MomentumShellClosed P := by
  exact And.intro E.cutoffAdmissibleClosed E.integrationSchemeValidClosed

end DynamicRenormalizationGroupMethods
end HautevilleHouse