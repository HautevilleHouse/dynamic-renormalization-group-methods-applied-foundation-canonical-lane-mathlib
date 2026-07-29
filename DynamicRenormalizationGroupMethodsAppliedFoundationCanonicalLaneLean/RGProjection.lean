import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean.RGAdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean

def rgProjection : RGAdmittedObject → RGAdmittedObject := fun x => x

theorem rg_projection_idempotent (x : RGAdmittedObject) :
    rgProjection (rgProjection x) = rgProjection x := by
  rfl

end DynamicRenormalizationGroupMethodsAppliedFoundationCanonicalLaneLean
end HautevilleHouse