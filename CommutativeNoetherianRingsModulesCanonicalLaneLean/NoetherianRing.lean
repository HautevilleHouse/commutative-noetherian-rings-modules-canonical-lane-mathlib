import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure NoetherianRingPackage where
  carrier : Type u
  ringStructure : Ring carrier
  noetherianCondition : Prop
  idealChainStabilizes : Prop
  finiteGenerationOfIdeals : Prop

structure NoetherianRingEvidence (R : NoetherianRingPackage) where
  noetherianConditionClosed : R.noetherianCondition
  idealChainStabilizesClosed : R.idealChainStabilizes
  finiteGenerationOfIdealsClosed : R.finiteGenerationOfIdeals

def NoetherianRingClosed (R : NoetherianRingPackage) : Prop :=
  R.noetherianCondition ∧ R.idealChainStabilizes ∧ R.finiteGenerationOfIdeals

theorem noetherian_ring_closed_from_evidence (R : NoetherianRingPackage)
    (E : NoetherianRingEvidence R) : NoetherianRingClosed R := by
  exact And.intro E.noetherianConditionClosed
    (And.intro E.idealChainStabilizesClosed E.finiteGenerationOfIdealsClosed)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse