import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure DNADamageResponsePackage where
  doubleStrandBreakSensing : Prop
  atmChk2Activation : Prop
  telomereShorteningRecognition : Prop
  irreparableDamage : Prop
  persistentDDR : Prop

structure DNADamageResponseEvidence (D : DNADamageResponsePackage) where
  doubleStrandBreakSensingClosed : D.doubleStrandBreakSensing
  atmChk2ActivationClosed : D.atmChk2Activation
  telomereShorteningRecognitionClosed : D.telomereShorteningRecognition
  irreparableDamageClosed : D.irreparableDamage
  persistentDDRClosed : D.persistentDDR

def DNADamageResponseClosed (D : DNADamageResponsePackage) : Prop :=
  D.doubleStrandBreakSensing ∧ D.atmChk2Activation ∧
  D.telomereShorteningRecognition ∧ D.irreparableDamage ∧
  D.persistentDDR

theorem dna_damage_response_closed_from_evidence
    (D : DNADamageResponsePackage) (E : DNADamageResponseEvidence D) :
    DNADamageResponseClosed D := by
  exact And.intro E.doubleStrandBreakSensingClosed
    (And.intro E.atmChk2ActivationClosed
      (And.intro E.telomereShorteningRecognitionClosed
        (And.intro E.irreparableDamageClosed E.persistentDDRClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse