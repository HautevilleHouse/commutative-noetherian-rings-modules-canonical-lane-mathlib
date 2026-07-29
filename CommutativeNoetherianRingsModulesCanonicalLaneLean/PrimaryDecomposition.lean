import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure PrimaryDecompositionPackage {R : NoetherianRingPackage}
    (M : ModuleFinitenessPackage R) where
  primarySubmodules : List (Submodule (R.carrier) M.moduleCarrier)
  intersectionEqualsZero : Prop
  uniquenessOfAssociatedPrimes : Prop

structure PrimaryDecompositionEvidence {R : NoetherianRingPackage}
    {M : ModuleFinitenessPackage R}
    (P : PrimaryDecompositionPackage M) where
  intersectionEqualsZeroClosed : P.intersectionEqualsZero
  uniquenessOfAssociatedPrimesClosed : P.uniquenessOfAssociatedPrimes

def PrimaryDecompositionClosed {R : NoetherianRingPackage}
    {M : ModuleFinitenessPackage R}
    (P : PrimaryDecompositionPackage M) : Prop :=
  P.intersectionEqualsZero ∧ P.uniquenessOfAssociatedPrimes

theorem primary_decomposition_closed_from_evidence
    {R : NoetherianRingPackage} {M : ModuleFinitenessPackage R}
    (P : PrimaryDecompositionPackage M)
    (E : PrimaryDecompositionEvidence P) : PrimaryDecompositionClosed P := by
  exact And.intro E.intersectionEqualsZeroClosed E.uniquenessOfAssociatedPrimesClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse