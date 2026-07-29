import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure NoetherianModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  submoduleAccCondition : forall (s : Set (Submodule R M)), s.Nonempty -> ∃ m ∈ s, ∀ n ∈ s, m ≤ n
  finiteGeneration : Submodule R M → Prop
  accOnSubmodules : Prop
  accOnSubmodulesTerm : accOnSubmodules

structure NoetherianModuleEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : NoetherianModule R M) where
  accOnSubmodulesClosed : N.accOnSubmodules
  finiteGenerationClosed : ∀ (s : Submodule R M), N.finiteGeneration s

def NoetherianModuleClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : NoetherianModule R M) : Prop :=
  N.accOnSubmodules ∧ ∀ (s : Submodule R M), N.finiteGeneration s

theorem noetherian_module_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (N : NoetherianModule R M) (E : NoetherianModuleEvidence R M N) : NoetherianModuleClosed R M N := by
  exact And.intro E.accOnSubmodulesClosed E.finiteGenerationClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
