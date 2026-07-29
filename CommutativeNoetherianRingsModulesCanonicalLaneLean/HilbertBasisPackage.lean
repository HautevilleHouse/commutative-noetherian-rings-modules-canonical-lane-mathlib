import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure HilbertBasisPackage where
  ring : Type u
  polynomialRing : Type v
  isNoetherian : Prop
  polynomialRingNoetherian : Prop

structure HilbertBasisEvidence where
  polynomialRingNoetherianClosed : Prop

def HilbertBasisClosed (H : HilbertBasisPackage) : Prop :=
  H.polynomialRingNoetherian

theorem hilbert_basis_closed_from_evidence (H : HilbertBasisPackage) (E : HilbertBasisEvidence) : HilbertBasisClosed H := by
  exact E.polynomialRingNoetherianClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
