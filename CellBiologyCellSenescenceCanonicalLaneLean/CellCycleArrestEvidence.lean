import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure CellCycleArrestPackage where
  p53PathwayActive : Prop
  p21Upregulation : Prop
  rbHypophosphorylation : Prop
  e2fTargetGenesSilenced : Prop
  g1Arrest : Prop
  mArrest : Prop
  proliferationBlocked : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  p53PathwayActiveClosed : C.p53PathwayActive
  p21UpregulationClosed : C.p21Upregulation
  rbHypophosphorylationClosed : C.rbHypophosphorylation
  e2fTargetGenesSilencedClosed : C.e2fTargetGenesSilenced
  g1ArrestClosed : C.g1Arrest
  mArrestClosed : C.mArrest
  proliferationBlockedClosed : C.proliferationBlocked

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.p53PathwayActive ∧ C.p21Upregulation ∧ C.rbHypophosphorylation ∧
  C.e2fTargetGenesSilenced ∧ C.g1Arrest ∧ C.mArrest ∧ C.proliferationBlocked

theorem cell_cycle_arrest_closed_from_evidence
    (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.p53PathwayActiveClosed
    (And.intro E.p21UpregulationClosed
      (And.intro E.rbHypophosphorylationClosed
        (And.intro E.e2fTargetGenesSilencedClosed
          (And.intro E.g1ArrestClosed
            (And.intro E.mArrestClosed E.proliferationBlockedClosed)))))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse