import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.FinalTheorem
import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.SenescenceEntropy
import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.SenescenceMechanisms

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescenceRouteObligations where
  mechanisms : SenescenceMechanismsPackage
  entropy : SenescenceEntropyPackage mechanisms
  endpointClassification : Prop

structure SenescenceRouteEvidence (R : SenescenceRouteObligations) where
  mechanismsClosed : SenescenceMechanismsClosed R.mechanisms
  entropyClosed : SenescenceEntropyClosed R.entropy
  endpointClassificationClosed : R.endpointClassification

def SenescenceRouteClosed (R : SenescenceRouteObligations) : Prop :=
  SenescenceMechanismsClosed R.mechanisms ∧ SenescenceEntropyClosed R.entropy ∧
  R.endpointClassification

theorem senescence_route_closed_from_evidence (R : SenescenceRouteObligations)
    (E : SenescenceRouteEvidence R) : SenescenceRouteClosed R := by
  exact And.intro E.mechanismsClosed
    (And.intro E.entropyClosed E.endpointClassificationClosed)

structure SenescenceCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : SenescenceRouteObligations
  evidence : SenescenceRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem senescence_route_yields_constrained_senescence_closure
    (A : AdmissibleClass) (R : SenescenceCanonicalLaneRoute A) :
    ConstrainedSenescenceClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse