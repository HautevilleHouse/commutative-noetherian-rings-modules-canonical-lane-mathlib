import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure LengthTheoryPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  compositionSeries : List (Submodule R M)
  length : Nat
  jordanHolderProperty : Prop
  finiteLengthCondition : Prop

structure LengthTheoryEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (L : LengthTheoryPackage R M) where
  jordanHolderPropertyClosed : L.jordanHolderProperty
  finiteLengthConditionClosed : L.finiteLengthCondition

def LengthTheoryClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (L : LengthTheoryPackage R M) : Prop :=
  L.jordanHolderProperty ∧ L.finiteLengthCondition

theorem length_theory_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (L : LengthTheoryPackage R M) (E : LengthTheoryEvidence R M L) : LengthTheoryClosed R M L := by
  exact And.intro E.jordanHolderPropertyClosed E.finiteLengthConditionClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
