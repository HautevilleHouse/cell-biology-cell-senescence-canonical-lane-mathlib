import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SenescenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse