import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure HilbertBasisTheorem (R : NoetherianRing) where
  polynomialRing : Type u
  polynomialRingStructure : CommRing polynomialRing
  noetherianCondition : NoetherianRingClosed ({
    carrier := polynomialRing
    ringStructure := by
      exact (by
        intro a b
        exact polynomialRingStructure.add a b)
    idealAscendingChainCondition := noetherianCondition
    ringStructureTerm := by trivial
    idealAscendingChainConditionTerm := noetherianCondition
  } : NoetherianRing)
  polynomialRingStructureTerm : polynomialRingStructure
  noetherianConditionTerm : noetherianCondition

structure HilbertBasisTheoremEvidence (R : NoetherianRing)
    (H : HilbertBasisTheorem R) where
  polynomialRingStructureClosed : H.polynomialRingStructure
  noetherianConditionClosed : H.noetherianCondition

def HilbertBasisTheoremClosed (R : NoetherianRing)
    (H : HilbertBasisTheorem R) : Prop :=
  H.polynomialRingStructure ∧ H.noetherianCondition

theorem hilbert_basis_theorem_closed_from_evidence
    (R : NoetherianRing) (H : HilbertBasisTheorem R)
    (E : HilbertBasisTheoremEvidence R H) : HilbertBasisTheoremClosed R H := by
  exact And.intro E.polynomialRingStructureClosed E.noetherianConditionClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse