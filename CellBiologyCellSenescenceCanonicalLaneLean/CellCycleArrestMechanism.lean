import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleArrestMechanism where
  p21Induction : Prop
  rbHypophosphorylation : Prop
  e2fTargetRepression : Prop
  g1PhaseArrest : Prop
  irreversibleExit : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestMechanism) where
  p21InductionClosed : C.p21Induction
  rbHypophosphorylationClosed : C.rbHypophosphorylation
  e2fTargetRepressionClosed : C.e2fTargetRepression
  g1PhaseArrestClosed : C.g1PhaseArrest
  irreversibleExitClosed : C.irreversibleExit

def CellCycleArrestClosed (C : CellCycleArrestMechanism) : Prop :=
  C.p21Induction ∧ C.rbHypophosphorylation ∧ C.e2fTargetRepression ∧
  C.g1PhaseArrest ∧ C.irreversibleExit

theorem cell_cycle_arrest_closed_from_evidence (C : CellCycleArrestMechanism)
    (E : CellCycleArrestEvidence C) : CellCycleArrestClosed C := by
  exact And.intro E.p21InductionClosed
    (And.intro E.rbHypophosphorylationClosed
      (And.intro E.e2fTargetRepressionClosed
        (And.intro E.g1PhaseArrestClosed E.irreversibleExitClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse