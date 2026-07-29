import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure PrimeSpectrumOfRing (R : Type u) [CommRing R] where
  carrier : Set (Ideal R)
  isPrime : ∀ I ∈ carrier, Ideal.IsPrime I

structure PrimeSpectrumPackage (R : Type u) [CommRing R] where
  spectrum : PrimeSpectrumOfRing R
  zarTopology : TopologicalSpace (PrimeSpectrumOfRing R)
  isIrreducibleClosed : Prop
  dimension : ℕ
  dimensionFinite : Prop

structure PrimeSpectrumEvidence {R : Type u} [CommRing R] (P : PrimeSpectrumPackage R) where
  zarTopologyClosed : P.zarTopology = PrimeSpectrum.zarTopology R
  dimensionFiniteClosed : P.dimensionFinite

def PrimeSpectrumClosed {R : Type u} [CommRing R] (P : PrimeSpectrumPackage R) : Prop :=
  P.dimensionFinite

theorem prime_spectrum_closed_from_evidence {R : Type u} [CommRing R] (P : PrimeSpectrumPackage R)
    (E : PrimeSpectrumEvidence P) : PrimeSpectrumClosed P := by
  exact E.dimensionFiniteClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
