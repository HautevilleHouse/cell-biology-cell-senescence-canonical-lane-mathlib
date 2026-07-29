import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure OncogeneInducedSenescencePackage where
  rasOncogeneActivation : Prop
  brafOncogeneExpression : Prop
  hyperproliferativeStress : Prop
  ddrViaTruncatedReplicationForks : Prop
  senescenceEntryViaArfP53 : Prop

structure OncogeneInducedSenescenceEvidence (O : OncogeneInducedSenescencePackage) where
  rasOncogeneActivationClosed : O.rasOncogeneActivation
  brafOncogeneExpressionClosed : O.brafOncogeneExpression
  hyperproliferativeStressClosed : O.hyperproliferativeStress
  ddrViaTruncatedReplicationForksClosed : O.ddrViaTruncatedReplicationForks
  senescenceEntryViaArfP53Closed : O.senescenceEntryViaArfP53

def OncogeneInducedSenescenceClosed (O : OncogeneInducedSenescencePackage) : Prop :=
  O.rasOncogeneActivation ∧ O.brafOncogeneExpression ∧
  O.hyperproliferativeStress ∧ O.ddrViaTruncatedReplicationForks ∧
  O.senescenceEntryViaArfP53

theorem oncogene_induced_senescence_closed_from_evidence
    (O : OncogeneInducedSenescencePackage) (E : OncogeneInducedSenescenceEvidence O) :
    OncogeneInducedSenescenceClosed O := by
  exact And.intro E.rasOncogeneActivationClosed
    (And.intro E.brafOncogeneExpressionClosed
      (And.intro E.hyperproliferativeStressClosed
        (And.intro E.ddrViaTruncatedReplicationForksClosed
          E.senescenceEntryViaArfP53Closed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse