import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure ArtinReesPackage (R : NoetherianRingPackage) (M : ModuleCategoryPackage R) where
  submodules : Type u
  ideal : Type v
  stableUnderMultiplication : Prop
  artinReesLemma : Prop
  flatnessProperty : Prop

structure ArtinReesEvidence {R : NoetherianRingPackage} {M : ModuleCategoryPackage R} (A : ArtinReesPackage R M) where
  stableUnderMultiplicationClosed : A.stableUnderMultiplication
  artinReesLemmaClosed : A.artinReesLemma
  flatnessPropertyClosed : A.flatnessProperty

def ArtinReesClosed {R : NoetherianRingPackage} {M : ModuleCategoryPackage R} (A : ArtinReesPackage R M) : Prop :=
  A.stableUnderMultiplication ∧ A.artinReesLemma ∧ A.flatnessProperty

theorem artin_rees_closed_from_evidence {R : NoetherianRingPackage} {M : ModuleCategoryPackage R} (A : ArtinReesPackage R M) (E : ArtinReesEvidence A) :
    ArtinReesClosed A := by
  exact And.intro E.stableUnderMultiplicationClosed (And.intro E.artinReesLemmaClosed E.flatnessPropertyClosed)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse