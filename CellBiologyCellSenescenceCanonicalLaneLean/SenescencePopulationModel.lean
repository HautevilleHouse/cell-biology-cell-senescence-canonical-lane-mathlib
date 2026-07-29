import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescentCellPopulation where
  cellType : Type
  cellCount : Nat
  senescentFraction : Prop
  damageLevel : Prop
  proliferativeCapacity : Prop
  cellCountClosed : cellCount > 0
  senescentFractionClosed : senescentFraction
  damageLevelClosed : damageLevel
  proliferativeCapacityClosed : proliferativeCapacity

structure SenescencePopulationPackage where
  population : SenescentCellPopulation
  stochasticTransition : Prop
  damageAccumulation : Prop
  immuneClearance : Prop
  stochasticTransitionEvidence : stochasticTransition
  damageAccumulationEvidence : damageAccumulation
  immuneClearanceEvidence : immuneClearance

def SenescencePopulationClosed (P : SenescencePopulationPackage) : Prop :=
  P.stochasticTransition ∧ P.damageAccumulation ∧ P.immuneClearance

theorem senescence_population_closed_from_evidence (P : SenescencePopulationPackage) :
    SenescencePopulationClosed P := by
  exact And.intro P.stochasticTransitionEvidence
    (And.intro P.damageAccumulationEvidence P.immuneClearanceEvidence)

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse