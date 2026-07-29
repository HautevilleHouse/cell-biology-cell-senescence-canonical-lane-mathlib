import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleArrestPackage where
  p53Activation : Prop
  p21Induction : Prop
  rbHypophosphorylation : Prop
  g1ArrestCheckpoint : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  p53ActivationClosed : C.p53Activation
  p21InductionClosed : C.p21Induction
  rbHypophosphorylationClosed : C.rbHypophosphorylation
  g1ArrestCheckpointClosed : C.g1ArrestCheckpoint

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.p53Activation ∧ C.p21Induction ∧
  C.rbHypophosphorylation ∧ C.g1ArrestCheckpoint

theorem cell_cycle_arrest_closed_from_evidence
    (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.p53ActivationClosed
    (And.intro E.p21InductionClosed
      (And.intro E.rbHypophosphorylationClosed E.g1ArrestCheckpointClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse
