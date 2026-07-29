import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure TelomereDysfunctionModelPackage where
  telomereLength : Nat
  telomeraseActivity : Bool
  replicativeSenescenceInduced : Prop
  dnadamageResponse : Prop

structure TelomereDysfunctionModelEvidence (P : TelomereDysfunctionModelPackage) where
  replicativeSenescenceInducedClosed : P.replicativeSenescenceInduced
  dnadamageResponseClosed : P.dnadamageResponse

def TelomereDysfunctionModelClosed (P : TelomereDysfunctionModelPackage) : Prop :=
  P.replicativeSenescenceInduced ∧ P.dnadamageResponse

theorem telomere_dysfunction_model_closed_from_evidence
    (P : TelomereDysfunctionModelPackage)
    (E : TelomereDysfunctionModelEvidence P) :
    TelomereDysfunctionModelClosed P := by
  exact And.intro E.replicativeSenescenceInducedClosed E.dnadamageResponseClosed

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse