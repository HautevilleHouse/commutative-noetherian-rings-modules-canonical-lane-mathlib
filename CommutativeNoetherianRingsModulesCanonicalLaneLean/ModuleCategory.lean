import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure ModuleCategoryPackage (R : NoetherianRingPackage) where
  moduleType : Type u
  moduleStructure : Module (R.carrier) moduleType
  finitelyGenerated : Prop
  submoduleChainCondition : Prop

structure ModuleCategoryEvidence {R : NoetherianRingPackage} (M : ModuleCategoryPackage R) where
  moduleStructureClosed : M.moduleStructure = M.moduleStructure
  finitelyGeneratedClosed : M.finitelyGenerated
  submoduleChainConditionClosed : M.submoduleChainCondition

def ModuleCategoryClosed {R : NoetherianRingPackage} (M : ModuleCategoryPackage R) : Prop :=
  M.moduleStructure = M.moduleStructure ∧
  M.finitelyGenerated ∧
  M.submoduleChainCondition

theorem module_category_closed_from_evidence {R : NoetherianRingPackage} (M : ModuleCategoryPackage R) (E : ModuleCategoryEvidence M) :
    ModuleCategoryClosed M := by
  exact And.intro E.moduleStructureClosed (And.intro E.finitelyGeneratedClosed E.submoduleChainConditionClosed)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse