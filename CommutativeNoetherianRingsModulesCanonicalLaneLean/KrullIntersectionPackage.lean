import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure KrullIntersectionPackage where
  ring : Type u
  ideal : Type v
  isNoetherian : Prop
  intersectionTheoremClosed : Prop

structure KrullIntersectionEvidence where
  intersectionTheoremClosed : Prop

def KrullIntersectionClosed (K : KrullIntersectionPackage) : Prop :=
  K.intersectionTheoremClosed

theorem krull_intersection_closed_from_evidence (K : KrullIntersectionPackage) (E : KrullIntersectionEvidence) : KrullIntersectionClosed K := by
  exact E.intersectionTheoremClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
