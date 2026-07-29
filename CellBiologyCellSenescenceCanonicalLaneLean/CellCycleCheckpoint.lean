import CellBiologyCellSenescenceCanonicalLaneLean.SenescenceInduction

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleCheckpointPackage {C : CellStatePackage} (S : SenescenceInductionPackage C) where
  g1CheckpointActivated : Prop
  g2CheckpointActivated : Prop
  cyclinDependentKinaseInhibitors : Prop
  checkpointPersistence : Prop

structure CellCycleCheckpointEvidence {C : CellStatePackage} {S : SenescenceInductionPackage C} (Chk : CellCycleCheckpointPackage S) where
  g1CheckpointActivatedClosed : Chk.g1CheckpointActivated
  g2CheckpointActivatedClosed : Chk.g2CheckpointActivated
  cyclinDependentKinaseInhibitorsClosed : Chk.cyclinDependentKinaseInhibitors
  checkpointPersistenceClosed : Chk.checkpointPersistence

def CellCycleCheckpointClosed {C : CellStatePackage} {S : SenescenceInductionPackage C} (Chk : CellCycleCheckpointPackage S) : Prop :=
  Chk.g1CheckpointActivated ∧ Chk.g2CheckpointActivated ∧ Chk.cyclinDependentKinaseInhibitors ∧ Chk.checkpointPersistence

theorem cell_cycle_checkpoint_closed_from_evidence {C : CellStatePackage} {S : SenescenceInductionPackage C} (Chk : CellCycleCheckpointPackage S) (E : CellCycleCheckpointEvidence Chk) : CellCycleCheckpointClosed Chk :=
  by
    exact And.intro E.g1CheckpointActivatedClosed (And.intro E.g2CheckpointActivatedClosed (And.intro E.cyclinDependentKinaseInhibitorsClosed E.checkpointPersistenceClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse
