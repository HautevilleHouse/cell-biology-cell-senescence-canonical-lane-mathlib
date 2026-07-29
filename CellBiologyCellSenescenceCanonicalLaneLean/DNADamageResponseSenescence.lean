import CellularSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure DNADamageResponseSenescencePackage where
  dnaDamageSensors : Prop
  checkpointActivation : Prop
  senescenceInduction : Prop
  atmAtrSignaling : Prop

structure DNADamageResponseSenescenceEvidence (D : DNADamageResponseSenescencePackage) where
  dnaDamageSensorsClosed : D.dnaDamageSensors
  checkpointActivationClosed : D.checkpointActivation
  senescenceInductionClosed : D.senescenceInduction
  atmAtrSignalingClosed : D.atmAtrSignaling

def DNADamageResponseSenescenceClosed (D : DNADamageResponseSenescencePackage) : Prop :=
  D.dnaDamageSensors ∧ D.checkpointActivation ∧ D.senescenceInduction ∧ D.atmAtrSignaling

theorem dna_damage_response_senescence_closed_from_evidence (D : DNADamageResponseSenescencePackage) (E : DNADamageResponseSenescenceEvidence D) :
    DNADamageResponseSenescenceClosed D := by
  exact And.intro E.dnaDamageSensorsClosed
    (And.intro E.checkpointActivationClosed
      (And.intro E.senescenceInductionClosed E.atmAtrSignalingClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse