import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SASPhenotypePackage where
  secretome : List String
  il6Secretion : Bool
  il8Secretion : Bool
  inflammatoryResponse : Prop

default secretome := []

structure SASPhenotypeEvidence (P : SASPhenotypePackage) where
  il6SecretionClosed : P.il6Secretion
  il8SecretionClosed : P.il8Secretion
  inflammatoryResponseClosed : P.inflammatoryResponse

def SASPhenotypeClosed (P : SASPhenotypePackage) : Prop :=
  P.il6Secretion ∧ P.il8Secretion ∧ P.inflammatoryResponse

theorem sas_phenotype_closed_from_evidence (P : SASPhenotypePackage) 
    (E : SASPhenotypeEvidence P) : SASPhenotypeClosed P := by
  exact And.intro E.il6SecretionClosed
    (And.intro E.il8SecretionClosed E.inflammatoryResponseClosed)

def sasToObject (P : SASPhenotypePackage) : SenescenceAdmittedObject :=
  { cell := { cellType := "epithelial", divisionCount := 0, secretedFactors := P.secretome, damageLevel := 0.0 },
    replicativeSenescence := False,
    stressInducedSenescence := P.inflammatoryResponse,
    oncogeneInducedSenescence := False,
    conclusion := Or.inr (Or.inl P.inflammatoryResponse)
  }

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse