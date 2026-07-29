import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethods

structure EPSExpansionPackage where
  expansionParameter : Type u
  fixedPointShift : Type v
  criticalExponentSeries : Type w
  epsilonSeriesConvergent : Prop
  seriesTruncationAdmissible : Prop
  exponentsResummed : Prop

structure EPSExpansionEvidence (P : EPSExpansionPackage) where
  epsilonSeriesConvergentClosed : P.epsilonSeriesConvergent
  seriesTruncationAdmissibleClosed : P.seriesTruncationAdmissible
  exponentsResummedClosed : P.exponentsResummed

def EPSExpansionClosed (P : EPSExpansionPackage) : Prop :=
  P.epsilonSeriesConvergent ∧ P.seriesTruncationAdmissible ∧
  P.exponentsResummed

theorem eps_expansion_closed_from_evidence (P : EPSExpansionPackage)
    (E : EPSExpansionEvidence P) : EPSExpansionClosed P := by
  exact And.intro E.epsilonSeriesConvergentClosed
    (And.intro E.seriesTruncationAdmissibleClosed E.exponentsResummedClosed)

end DynamicRenormalizationGroupMethods
end HautevilleHouse