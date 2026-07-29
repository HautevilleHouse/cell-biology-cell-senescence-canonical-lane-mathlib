import CellBiologyCellSenescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellStatePackage where
  cellType : String
  proliferativeCapacity : Nat
  telomereLength : Nat
  dnaDamageAccumulated : Nat
  cellCyclePhase : String
  stressResponseActive : Bool
  isSenescent : Prop

structure CellStateEvidence (C : CellStatePackage) where
  proliferativeCapacityClosed : C.proliferativeCapacity > 0
  telomereLengthClosed : C.telomereLength > 0
  dnaDamageAccumulatedClosed : C.dnaDamageAccumulated ≥ 0
  cellCyclePhaseClosed : C.cellCyclePhase ∈ {"G0", "G1", "S", "G2", "M"}
  stressResponseActiveClosed : C.stressResponseActive → C.isSenescent

def CellStateClosed (C : CellStatePackage) : Prop :=
  C.proliferativeCapacity > 0 ∧ C.telomereLength > 0 ∧ C.dnaDamageAccumulated ≥ 0 ∧
  C.cellCyclePhase ∈ {"G0", "G1", "S", "G2", "M"} ∧ (C.stressResponseActive → C.isSenescent)

theorem cell_state_closed_from_evidence (C : CellStatePackage) (E : CellStateEvidence C) : CellStateClosed C :=
  by
    refine And.intro E.proliferativeCapacityClosed (And.intro E.telomereLengthClosed
      (And.intro E.dnaDamageAccumulatedClosed (And.intro E.cellCyclePhaseClosed E.stressResponseActiveClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse
