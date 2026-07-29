import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure p53Pathway where
  dnaDamageSignal : Prop
  p53Activation : Prop
  p21Induction : Prop
  rbHypophosphorylation : Prop
  cellCycleArrest : Prop
  pathwayActive : p53Activation ∧ p21Induction ∧ rbHypophosphorylation

structure p16Pathway where
  stressSignal : Prop
  p16Induction : Prop
  rbRetained : Prop
  cellCycleArrest : Prop
  pathwayActive : p16Induction ∧ rbRetained

structure SenescencePathways where
  p53 : p53Pathway
  p16 : p16Pathway
  bothArrest : p53.cellCycleArrest ∨ p16.cellCycleArrest

theorem p53_pathway_leads_to_arrest (p53 : p53Pathway) : p53.cellCycleArrest := by
  exact p53.pathwayActive.right.right

theorem p16_pathway_leads_to_arrest (p16 : p16Pathway) : p16.cellCycleArrest := by
  exact p16.pathwayActive.right

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse