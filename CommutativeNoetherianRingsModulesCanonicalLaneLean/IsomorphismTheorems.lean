import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure IsomorphismTheoremsPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  submoduleLattice : Set (Submodule R M)
  firstIsomorphism : Prop
  secondIsomorphism : Prop
  thirdIsomorphism : Prop
  latticeIsomorphism : Prop

structure IsomorphismTheoremsEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (I : IsomorphismTheoremsPackage R M) where
  firstIsomorphismClosed : I.firstIsomorphism
  secondIsomorphismClosed : I.secondIsomorphism
  thirdIsomorphismClosed : I.thirdIsomorphism
  latticeIsomorphismClosed : I.latticeIsomorphism

def IsomorphismTheoremsClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (I : IsomorphismTheoremsPackage R M) : Prop :=
  I.firstIsomorphism ∧ I.secondIsomorphism ∧ I.thirdIsomorphism ∧ I.latticeIsomorphism

theorem isomorphism_theorems_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (I : IsomorphismTheoremsPackage R M) (E : IsomorphismTheoremsEvidence R M I) : IsomorphismTheoremsClosed R M I := by
  exact And.intro E.firstIsomorphismClosed (And.intro E.secondIsomorphismClosed (And.intro E.thirdIsomorphismClosed E.latticeIsomorphismClosed))

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
