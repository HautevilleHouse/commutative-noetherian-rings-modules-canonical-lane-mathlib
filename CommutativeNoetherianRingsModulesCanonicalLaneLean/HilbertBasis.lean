import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure HilbertBasisPackage {R : NoetherianRingPackage} where
  polynomialRing : Type u
  ringStructure : Ring polynomialRing
  noetherianConditionPolynomial : Prop
  inductionOnDegree : Prop
  idealReduction : Prop

structure HilbertBasisEvidence {R : NoetherianRingPackage}
    (H : HilbertBasisPackage R) where
  noetherianConditionPolynomialClosed : H.noetherianConditionPolynomial
  inductionOnDegreeClosed : H.inductionOnDegree
  idealReductionClosed : H.idealReduction

def HilbertBasisClosed {R : NoetherianRingPackage}
    (H : HilbertBasisPackage R) : Prop :=
  H.noetherianConditionPolynomial ∧ H.inductionOnDegree ∧ H.idealReduction

theorem hilbert_basis_closed_from_evidence
    {R : NoetherianRingPackage} (H : HilbertBasisPackage R)
    (E : HilbertBasisEvidence H) : HilbertBasisClosed H := by
  exact And.intro E.noetherianConditionPolynomialClosed
    (And.intro E.inductionOnDegreeClosed E.idealReductionClosed)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse