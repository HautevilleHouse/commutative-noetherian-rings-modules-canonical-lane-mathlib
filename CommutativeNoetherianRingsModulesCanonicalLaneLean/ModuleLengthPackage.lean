import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure ModuleLengthPackage where
  module : Type u
  ring : Type v
  isNoetherian : Prop
  hasFiniteLength : Prop
  compositionSeriesExists : Prop

structure ModuleLengthEvidence where
  hasFiniteLengthClosed : Prop
  compositionSeriesExistsClosed : Prop

def ModuleLengthClosed (M : ModuleLengthPackage) : Prop :=
  M.hasFiniteLength ∧ M.compositionSeriesExists

theorem module_length_closed_from_evidence (M : ModuleLengthPackage) (E : ModuleLengthEvidence) : ModuleLengthClosed M := by
  exact And.intro E.hasFiniteLengthClosed E.compositionSeriesExistsClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
