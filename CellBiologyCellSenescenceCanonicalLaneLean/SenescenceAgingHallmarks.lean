import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure AgingHallmarksPackage where
  telomereShortening : Prop
  epigeneticAlterations : Prop
  lossOfProteostasis : Prop
  mitochondrialDysfunction : Prop
  cellularSenescenceAccumulation : Prop
  stemCellExhaustion : Prop
  alteredIntercellularCommunication : Prop
  genomicInstability : Prop
  deregulatedNutrientSensing : Prop
  agingPhenotype : Prop

structure AgingHallmarksEvidence (A : AgingHallmarksPackage) where
  telomereShorteningClosed : A.telomereShortening
  epigeneticAlterationsClosed : A.epigeneticAlterations
  lossOfProteostasisClosed : A.lossOfProteostasis
  mitochondrialDysfunctionClosed : A.mitochondrialDysfunction
  cellularSenescenceAccumulationClosed : A.cellularSenescenceAccumulation
  stemCellExhaustionClosed : A.stemCellExhaustion
  alteredIntercellularCommunicationClosed : A.alteredIntercellularCommunication
  genomicInstabilityClosed : A.genomicInstability
  deregulatedNutrientSensingClosed : A.deregulatedNutrientSensing
  agingPhenotypeClosed : A.agingPhenotype

def AgingHallmarksClosed (A : AgingHallmarksPackage) : Prop :=
  A.telomereShortening ∧ A.epigeneticAlterations ∧ A.lossOfProteostasis ∧
  A.mitochondrialDysfunction ∧ A.cellularSenescenceAccumulation ∧
  A.stemCellExhaustion ∧ A.alteredIntercellularCommunication ∧
  A.genomicInstability ∧ A.deregulatedNutrientSensing ∧ A.agingPhenotype

theorem aging_hallmarks_closed_from_evidence
    (A : AgingHallmarksPackage) (Ev : AgingHallmarksEvidence A) :
    AgingHallmarksClosed A := by
  exact And.intro Ev.telomereShorteningClosed
    (And.intro Ev.epigeneticAlterationsClosed
      (And.intro Ev.lossOfProteostasisClosed
        (And.intro Ev.mitochondrialDysfunctionClosed
          (And.intro Ev.cellularSenescenceAccumulationClosed
            (And.intro Ev.stemCellExhaustionClosed
              (And.intro Ev.alteredIntercellularCommunicationClosed
                (And.intro Ev.genomicInstabilityClosed
                  (And.intro Ev.deregulatedNutrientSensingClosed
                    Ev.agingPhenotypeClosed))))))))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse