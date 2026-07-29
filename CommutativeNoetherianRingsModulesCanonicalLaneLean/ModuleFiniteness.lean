import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure ModuleFinitenessPackage {R : NoetherianRingPackage} where
  moduleCarrier : Type u
  moduleStructure : Module (R.carrier) moduleCarrier
  finitelyGenerated : Prop
  generatingSet : List moduleCarrier
  spanCondition : Prop

structure ModuleFinitenessEvidence {R : NoetherianRingPackage}
    (M : ModuleFinitenessPackage R) where
  finitelyGeneratedClosed : M.finitelyGenerated
  generatingSetClosed : M.generatingSet
  spanConditionClosed : M.spanCondition

def ModuleFinitenessClosed {R : NoetherianRingPackage}
    (M : ModuleFinitenessPackage R) : Prop :=
  M.finitelyGenerated ∧ M.spanCondition

theorem module_finiteness_closed_from_evidence
    {R : NoetherianRingPackage} (M : ModuleFinitenessPackage R)
    (E : ModuleFinitenessEvidence M) : ModuleFinitenessClosed M := by
  exact And.intro E.finitelyGeneratedClosed E.spanConditionClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse