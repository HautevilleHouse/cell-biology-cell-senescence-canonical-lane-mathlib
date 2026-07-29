import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure ReplicativeSenescencePackage where
  telomereProgressiveShortening : Prop
  criticalTelomereLengthReached : Prop
  telomereUncapping : Prop
  telomereInducedFoci : Prop
  replicativeArrest : Prop

structure ReplicativeSenescenceEvidence (R : ReplicativeSenescencePackage) where
  telomereProgressiveShorteningClosed : R.telomereProgressiveShortening
  criticalTelomereLengthReachedClosed : R.criticalTelomereLengthReached
  telomereUncappingClosed : R.telomereUncapping
  telomereInducedFociClosed : R.telomereInducedFoci
  replicativeArrestClosed : R.replicativeArrest

def ReplicativeSenescenceClosed (R : ReplicativeSenescencePackage) : Prop :=
  R.telomereProgressiveShortening ∧ R.criticalTelomereLengthReached ∧
  R.telomereUncapping ∧ R.telomereInducedFoci ∧ R.replicativeArrest

theorem replicative_senescence_closed_from_evidence
    (R : ReplicativeSenescencePackage) (E : ReplicativeSenescenceEvidence R) :
    ReplicativeSenescenceClosed R := by
  exact And.intro E.telomereProgressiveShorteningClosed
    (And.intro E.criticalTelomereLengthReachedClosed
      (And.intro E.telomereUncappingClosed
        (And.intro E.telomereInducedFociClosed E.replicativeArrestClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse