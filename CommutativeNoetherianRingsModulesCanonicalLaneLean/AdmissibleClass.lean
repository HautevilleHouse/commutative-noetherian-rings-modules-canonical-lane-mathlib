import HautevilleHouse.CommutativeNoetherianRingsModulesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure AdmissibleClass where
  object : NoetherianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NoetherianWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse