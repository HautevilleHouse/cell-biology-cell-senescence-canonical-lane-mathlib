import CellularSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereAttritionPackage where
  replicativeLimit : Prop
  telomereShortening : Prop
  uncappedTelomeres : Prop

structure TelomereAttritionEvidence (T : TelomereAttritionPackage) where
  replicativeLimitClosed : T.replicativeLimit
  telomereShorteningClosed : T.telomereShortening
  uncappedTelomeresClosed : T.uncappedTelomeres

def TelomereAttritionClosed (T : TelomereAttritionPackage) : Prop :=
  T.replicativeLimit ∧ T.telomereShortening ∧ T.uncappedTelomeres

theorem telomere_attrition_closed_from_evidence (T : TelomereAttritionPackage) (E : TelomereAttritionEvidence T) :
    TelomereAttritionClosed T := by
  exact And.intro E.replicativeLimitClosed
    (And.intro E.telomereShorteningClosed E.uncappedTelomeresClosed)

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse