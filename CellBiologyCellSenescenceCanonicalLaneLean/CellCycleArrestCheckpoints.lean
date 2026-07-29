import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleArrestPackage where
  g1SCheckpointActivation : Prop
  g2MCheckpointDeactivation : Prop
  cyclinCdkInhibition : Prop
  p21Upregulation : Prop
  irreversibleExit : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  g1SCheckpointActivationClosed : C.g1SCheckpointActivation
  g2MCheckpointDeactivationClosed : C.g2MCheckpointDeactivation
  cyclinCdkInhibitionClosed : C.cyclinCdkInhibition
  p21UpregulationClosed : C.p21Upregulation
  irreversibleExitClosed : C.irreversibleExit

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.g1SCheckpointActivation ∧ C.g2MCheckpointDeactivation ∧
  C.cyclinCdkInhibition ∧ C.p21Upregulation ∧ C.irreversibleExit

theorem cell_cycle_arrest_closed_from_evidence
    (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.g1SCheckpointActivationClosed
    (And.intro E.g2MCheckpointDeactivationClosed
      (And.intro E.cyclinCdkInhibitionClosed
        (And.intro E.p21UpregulationClosed E.irreversibleExitClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse