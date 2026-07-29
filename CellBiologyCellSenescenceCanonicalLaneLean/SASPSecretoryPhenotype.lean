import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SASPSecretoryPhenotype where
  il6Secretion : Prop
  il8Secretion : Prop
  tnfAlphaSecretion : Prop
  paracrineSignaling : Prop
  tissueRemodeling : Prop

structure SASPSecretoryEvidence (S : SASPSecretoryPhenotype) where
  il6SecretionClosed : S.il6Secretion
  il8SecretionClosed : S.il8Secretion
  tnfAlphaSecretionClosed : S.tnfAlphaSecretion
  paracrineSignalingClosed : S.paracrineSignaling
  tissueRemodelingClosed : S.tissueRemodeling

def SASPSecretoryClosed (S : SASPSecretoryPhenotype) : Prop :=
  S.il6Secretion ∧ S.il8Secretion ∧ S.tnfAlphaSecretion ∧
  S.paracrineSignaling ∧ S.tissueRemodeling

theorem sasp_secretory_closed_from_evidence (S : SASPSecretoryPhenotype)
    (E : SASPSecretoryEvidence S) : SASPSecretoryClosed S := by
  exact And.intro E.il6SecretionClosed
    (And.intro E.il8SecretionClosed
      (And.intro E.tnfAlphaSecretionClosed
        (And.intro E.paracrineSignalingClosed E.tissueRemodelingClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse