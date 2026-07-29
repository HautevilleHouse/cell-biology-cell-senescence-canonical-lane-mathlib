import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceCanonicalLaneLean.SenescencePopulationModel

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness.elim (fun h => h) (fun h => h)

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse