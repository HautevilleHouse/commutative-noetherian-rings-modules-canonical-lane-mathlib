import HautevilleHouse.CommutativeNoetherianRingsModulesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NoetherianWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse