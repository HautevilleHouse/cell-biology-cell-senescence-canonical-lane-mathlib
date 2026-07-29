import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceCanonicalLaneLean.SenescenceClosureBridge

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse