import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereAttritionSenescence where
  telomereShortening : Prop
  tLoopDisruption : Prop
  atmActivation : Prop
  ddrSignaling : Prop
  replicativeSenescence : Prop

structure TelomereAttritionEvidence (T : TelomereAttritionSenescence) where
  telomereShorteningClosed : T.telomereShortening
  tLoopDisruptionClosed : T.tLoopDisruption
  atmActivationClosed : T.atmActivation
  ddrSignalingClosed : T.ddrSignaling
  replicativeSenescenceClosed : T.replicativeSenescence

def TelomereAttritionClosed (T : TelomereAttritionSenescence) : Prop :=
  T.telomereShortening ∧ T.tLoopDisruption ∧ T.atmActivation ∧
  T.ddrSignaling ∧ T.replicativeSenescence

theorem telomere_attrition_closed_from_evidence (T : TelomereAttritionSenescence)
    (E : TelomereAttritionEvidence T) : TelomereAttritionClosed T := by
  exact And.intro E.telomereShorteningClosed
    (And.intro E.tLoopDisruptionClosed
      (And.intro E.atmActivationClosed
        (And.intro E.ddrSignalingClosed E.replicativeSenescenceClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse