import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

def ConstrainedNoetherianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_noetherian_endgame (A : AdmissibleClass) :
    ConstrainedNoetherianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse