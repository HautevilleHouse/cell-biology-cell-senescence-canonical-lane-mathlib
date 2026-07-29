import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleArrestPackage where
  g1Arrest : Prop
  cyclinDependentKinaseInhibitors : Prop
  retinoblastomaProteinActive : Prop
  e2fTargetGenesRepressed : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  g1ArrestClosed : C.g1Arrest
  cyclinDependentKinaseInhibitorsClosed : C.cyclinDependentKinaseInhibitors
  retinoblastomaProteinActiveClosed : C.retinoblastomaProteinActive
  e2fTargetGenesRepressedClosed : C.e2fTargetGenesRepressed

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.g1Arrest ∧ C.cyclinDependentKinaseInhibitors ∧ C.retinoblastomaProteinActive ∧ C.e2fTargetGenesRepressed

theorem cell_cycle_arrest_closed_from_evidence (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) : CellCycleArrestClosed C := by
  exact And.intro E.g1ArrestClosed (And.intro E.cyclinDependentKinaseInhibitorsClosed (And.intro E.retinoblastomaProteinActiveClosed E.e2fTargetGenesRepressedClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse