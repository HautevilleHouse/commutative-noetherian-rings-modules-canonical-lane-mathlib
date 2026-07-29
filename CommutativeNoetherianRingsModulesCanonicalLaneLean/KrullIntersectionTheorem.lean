import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure KrullIntersectionPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  ideal : Ideal R
  intersection : Submodule R M
  hausdorffProperty : Prop
  intersectionTrivial : Prop

structure KrullIntersectionEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (K : KrullIntersectionPackage R M) where
  hausdorffPropertyClosed : K.hausdorffProperty
  intersectionTrivialClosed : K.intersectionTrivial

def KrullIntersectionClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (K : KrullIntersectionPackage R M) : Prop :=
  K.hausdorffProperty ∧ K.intersectionTrivial

theorem krull_intersection_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
    (K : KrullIntersectionPackage R M) (E : KrullIntersectionEvidence R M K) : KrullIntersectionClosed R M K := by
  exact And.intro E.hausdorffPropertyClosed E.intersectionTrivialClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
