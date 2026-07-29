import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SASPPackage where
  il6Secretion : Prop
  il8Secretion : Prop
  tnfAlphaSecretion : Prop
  mmpSecretion : Prop
  paracrineSignaling : Prop
  immuneCellRecruitment : Prop
  tissueRemodeling : Prop
  chronicInflammation : Prop

structure SASPEvidence (S : SASPPackage) where
  il6SecretionClosed : S.il6Secretion
  il8SecretionClosed : S.il8Secretion
  tnfAlphaSecretionClosed : S.tnfAlphaSecretion
  mmpSecretionClosed : S.mmpSecretion
  paracrineSignalingClosed : S.paracrineSignaling
  immuneCellRecruitmentClosed : S.immuneCellRecruitment
  tissueRemodelingClosed : S.tissueRemodeling
  chronicInflammationClosed : S.chronicInflammation

def SASPClosed (S : SASPPackage) : Prop :=
  S.il6Secretion ∧ S.il8Secretion ∧ S.tnfAlphaSecretion ∧ S.mmpSecretion ∧
  S.paracrineSignaling ∧ S.immuneCellRecruitment ∧ S.tissueRemodeling ∧
  S.chronicInflammation

theorem sasp_closed_from_evidence
    (S : SASPPackage) (E : SASPEvidence S) : SASPClosed S := by
  exact And.intro E.il6SecretionClosed
    (And.intro E.il8SecretionClosed
      (And.intro E.tnfAlphaSecretionClosed
        (And.intro E.mmpSecretionClosed
          (And.intro E.paracrineSignalingClosed
            (And.intro E.immuneCellRecruitmentClosed
              (And.intro E.tissueRemodelingClosed
                E.chronicInflammationClosed))))))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse