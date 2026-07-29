import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescenceAssociatedHeterochromatin where
  h3k9me3Enrichment : Prop
  hp1Recruitment : Prop
  laminB1Loss : Prop
  sahfociFormation : Prop
  geneSilencing : Prop

structure SenescenceAssociatedHeterochromatinEvidence (S : SenescenceAssociatedHeterochromatin) where
  h3k9me3EnrichmentClosed : S.h3k9me3Enrichment
  hp1RecruitmentClosed : S.hp1Recruitment
  laminB1LossClosed : S.laminB1Loss
  sahfociFormationClosed : S.sahfociFormation
  geneSilencingClosed : S.geneSilencing

def SenescenceAssociatedHeterochromatinClosed (S : SenescenceAssociatedHeterochromatin) : Prop :=
  S.h3k9me3Enrichment ∧ S.hp1Recruitment ∧ S.laminB1Loss ∧
  S.sahfociFormation ∧ S.geneSilencing

theorem senescence_associated_heterochromatin_closed_from_evidence
    (S : SenescenceAssociatedHeterochromatin)
    (E : SenescenceAssociatedHeterochromatinEvidence S) :
    SenescenceAssociatedHeterochromatinClosed S := by
  exact And.intro E.h3k9me3EnrichmentClosed
    (And.intro E.hp1RecruitmentClosed
      (And.intro E.laminB1LossClosed
        (And.intro E.sahfociFormationClosed E.geneSilencingClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse