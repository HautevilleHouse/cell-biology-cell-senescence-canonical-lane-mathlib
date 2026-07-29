import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure DNADamagePackage where
  doubleStrandBreaks : Nat
  reactiveOxygenSpecies : Float
  ddrActivated : Prop
  checkpointArrest : Prop

default doubleStrandBreaks := 0

default reactiveOxygenSpecies := 0.0

structure DNADamageEvidence (P : DNADamagePackage) where
  ddrActivatedClosed : P.ddrActivated
  checkpointArrestClosed : P.checkpointArrest

def DNADamageClosed (P : DNADamagePackage) : Prop :=
  P.ddrActivated ∧ P.checkpointArrest

theorem dna_damage_closed_from_evidence (P : DNADamagePackage) 
    (E : DNADamageEvidence P) : DNADamageClosed P := by
  exact And.intro E.ddrActivatedClosed E.checkpointArrestClosed

def dnaDamageToObject (P : DNADamagePackage) : SenescenceAdmittedObject :=
  { cell := { cellType := "hepatocyte", divisionCount := 0, secretedFactors := [], damageLevel := P.reactiveOxygenSpecies },
    replicativeSenescence := False,
    stressInducedSenescence := P.ddrActivated,
    oncogeneInducedSenescence := False,
    conclusion := Or.inr (Or.inl P.ddrActivated)
  }

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse