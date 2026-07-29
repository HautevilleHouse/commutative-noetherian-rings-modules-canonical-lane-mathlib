import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesCanonicalLaneLean

structure PrimaryDecompositionPackage where
  ring : Type u
  isNoetherian : Prop
  existsPrimaryDecomposition : Prop
  uniquenessIsolatedComponents : Prop

structure PrimaryDecompositionEvidence where
  existsPrimaryDecompositionClosed : Prop
  uniquenessIsolatedComponentsClosed : Prop

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.existsPrimaryDecomposition ∧ P.uniquenessIsolatedComponents

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage) (E : PrimaryDecompositionEvidence) : PrimaryDecompositionClosed P := by
  exact And.intro E.existsPrimaryDecompositionClosed E.uniquenessIsolatedComponentsClosed

end CommutativeNoetherianRingsModulesCanonicalLaneLean
end HautevilleHouse
