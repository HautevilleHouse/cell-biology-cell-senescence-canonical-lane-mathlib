import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereDynamicsPackage where
  telomereLengthModel : Prop
  replicativeSenescenceTrigger : Prop
  telomeraseRegulation : Prop
  telomereAttritionRate : Prop

structure TelomereDynamicsEvidence (T : TelomereDynamicsPackage) where
  telomereLengthModelClosed : T.telomereLengthModel
  replicativeSenescenceTriggerClosed : T.replicativeSenescenceTrigger
  telomeraseRegulationClosed : T.telomeraseRegulation
  telomereAttritionRateClosed : T.telomereAttritionRate

def TelomereDynamicsClosed (T : TelomereDynamicsPackage) : Prop :=
  T.telomereLengthModel ∧ T.replicativeSenescenceTrigger ∧
  T.telomeraseRegulation ∧ T.telomereAttritionRate

theorem telomere_dynamics_closed_from_evidence
    (T : TelomereDynamicsPackage) (E : TelomereDynamicsEvidence T) :
    TelomereDynamicsClosed T := by
  exact And.intro E.telomereLengthModelClosed
    (And.intro E.replicativeSenescenceTriggerClosed
      (And.intro E.telomeraseRegulationClosed E.telomereAttritionRateClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse
