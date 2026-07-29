import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure NoetherianRingAdmissibleClass where
  ring : Type u
  isNoetherian : Prop
  bridgeClosed : Prop
  gateClosed : Prop

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
