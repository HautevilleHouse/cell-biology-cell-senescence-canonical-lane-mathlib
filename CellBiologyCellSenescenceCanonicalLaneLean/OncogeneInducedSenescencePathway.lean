import CellularSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure OncogeneInducedSenescencePackage where
  oncogeneActivation : Prop
  p53RbInduction : Prop
  cellCycleArrest : Prop
  tumorSuppression : Prop

structure OncogeneInducedSenescenceEvidence (O : OncogeneInducedSenescencePackage) where
  oncogeneActivationClosed : O.oncogeneActivation
  p53RbInductionClosed : O.p53RbInduction
  cellCycleArrestClosed : O.cellCycleArrest
  tumorSuppressionClosed : O.tumorSuppression

def OncogeneInducedSenescenceClosed (O : OncogeneInducedSenescencePackage) : Prop :=
  O.oncogeneActivation ∧ O.p53RbInduction ∧ O.cellCycleArrest ∧ O.tumorSuppression

theorem oncogene_induced_senescence_closed_from_evidence (O : OncogeneInducedSenescencePackage) (E : OncogeneInducedSenescenceEvidence O) :
    OncogeneInducedSenescenceClosed O := by
  exact And.intro E.oncogeneActivationClosed
    (And.intro E.p53RbInductionClosed
      (And.intro E.cellCycleArrestClosed E.tumorSuppressionClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse