import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereAttritionPackage where
  initialTelomereLength : Float
  criticalLength : Float
  divisionCount : Nat
  attritionRate : Float
  hayflickLimitReached : Prop

structure TelomereAttritionEvidence (P : TelomereAttritionPackage) where
  initialLengthAboveCritical : P.initialTelomereLength > P.criticalLength
  attritionRatePositive : P.attritionRate > 0.0
  hayflickLimitReachedClosed : P.hayflickLimitReached

def TelomereAttritionClosed (P : TelomereAttritionPackage) : Prop :=
  P.initialTelomereLength > P.criticalLength ∧ P.attritionRate > 0.0 ∧ P.hayflickLimitReached

theorem telomere_attrition_closed_from_evidence (P : TelomereAttritionPackage) 
    (E : TelomereAttritionEvidence P) : TelomereAttritionClosed P := by
  exact And.intro E.initialLengthAboveCritical
    (And.intro E.attritionRatePositive E.hayflickLimitReachedClosed)

def telomereAttritionToObject (P : TelomereAttritionPackage) : SenescenceAdmittedObject :=
  { cell := { cellType := "fibroblast", divisionCount := P.divisionCount, secretedFactors := [], damageLevel := 0.0 },
    replicativeSenescence := P.hayflickLimitReached,
    stressInducedSenescence := False,
    oncogeneInducedSenescence := False,
    conclusion := Or.inl P.hayflickLimitReached
  }

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse