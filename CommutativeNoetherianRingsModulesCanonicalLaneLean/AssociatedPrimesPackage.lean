import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure AssociatedPrimesPackage where
  module : Type u
  ring : Type v
  isNoetherian : Prop
  associatedPrimesFinite : Prop
  setAssociatedPrimes : Prop

structure AssociatedPrimesEvidence where
  associatedPrimesFiniteClosed : Prop
  setAssociatedPrimesClosed : Prop

def AssociatedPrimesClosed (A : AssociatedPrimesPackage) : Prop :=
  A.associatedPrimesFinite ∧ A.setAssociatedPrimes

theorem associated_primes_closed_from_evidence (A : AssociatedPrimesPackage) (E : AssociatedPrimesEvidence) : AssociatedPrimesClosed A := by
  exact And.intro E.associatedPrimesFiniteClosed E.setAssociatedPrimesClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
