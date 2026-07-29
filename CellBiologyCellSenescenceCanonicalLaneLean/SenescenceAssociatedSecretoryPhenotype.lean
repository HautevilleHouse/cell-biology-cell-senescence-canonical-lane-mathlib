import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SASPPackage where
  proInflammatoryCytokinesSecreted : Prop
  matrixMetalloproteinasesReleased : Prop
  growthFactorsSecreted : Prop
  chemokinesSecreted : Prop
  microenvironmentRemodeling : Prop

structure SASPEvidence (S : SASPPackage) where
  proInflammatoryCytokinesSecretedClosed : S.proInflammatoryCytokinesSecreted
  matrixMetalloproteinasesReleasedClosed : S.matrixMetalloproteinasesReleased
  growthFactorsSecretedClosed : S.growthFactorsSecreted
  chemokinesSecretedClosed : S.chemokinesSecreted
  microenvironmentRemodelingClosed : S.microenvironmentRemodeling

def SASPClosed (S : SASPPackage) : Prop :=
  S.proInflammatoryCytokinesSecreted ∧ S.matrixMetalloproteinasesReleased ∧
  S.growthFactorsSecreted ∧ S.chemokinesSecreted ∧ S.microenvironmentRemodeling

theorem sasp_closed_from_evidence
    (S : SASPPackage) (E : SASPEvidence S) : SASPClosed S := by
  exact And.intro E.proInflammatoryCytokinesSecretedClosed
    (And.intro E.matrixMetalloproteinasesReleasedClosed
      (And.intro E.growthFactorsSecretedClosed
        (And.intro E.chemokinesSecretedClosed E.microenvironmentRemodelingClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse