import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereAttritionPackage where
  telomereLengthMeasurement : Prop
  replicativeLimitReached : Prop
  dnaDamageResponseTriggered : Prop
  senescenceEntry : Prop

structure TelomereAttritionEvidence (T : TelomereAttritionPackage) where
  telomereLengthMeasurementClosed : T.telomereLengthMeasurement
  replicativeLimitReachedClosed : T.replicativeLimitReached
  dnaDamageResponseTriggeredClosed : T.dnaDamageResponseTriggered
  senescenceEntryClosed : T.senescenceEntry

def TelomereAttritionClosed (T : TelomereAttritionPackage) : Prop :=
  T.telomereLengthMeasurement ∧ T.replicativeLimitReached ∧ T.dnaDamageResponseTriggered ∧ T.senescenceEntry

theorem telomere_attrition_closed_from_evidence (T : TelomereAttritionPackage) (E : TelomereAttritionEvidence T) : TelomereAttritionClosed T := by
  exact And.intro E.telomereLengthMeasurementClosed (And.intro E.replicativeLimitReachedClosed (And.intro E.dnaDamageResponseTriggeredClosed E.senescenceEntryClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse