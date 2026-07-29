import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescentSignalingPathway where
  p53p21RbActivation : Prop
  nfKappaBInflammatory : Prop
  ddrDnaDamageResponse : Prop
  cellCycleArrest : Prop
  saspSecretion : Prop

structure SenescentSignalingEvidence (S : SenescentSignalingPathway) where
  p53p21RbActivationClosed : S.p53p21RbActivation
  nfKappaBInflammatoryClosed : S.nfKappaBInflammatory
  ddrDnaDamageResponseClosed : S.ddrDnaDamageResponse
  cellCycleArrestClosed : S.cellCycleArrest
  saspSecretionClosed : S.saspSecretion

def SenescentSignalingClosed (S : SenescentSignalingPathway) : Prop :=
  S.p53p21RbActivation ∧ S.nfKappaBInflammatory ∧
  S.ddrDnaDamageResponse ∧ S.cellCycleArrest ∧ S.saspSecretion

theorem senescent_signaling_closed_from_evidence (S : SenescentSignalingPathway)
    (E : SenescentSignalingEvidence S) : SenescentSignalingClosed S := by
  exact And.intro E.p53p21RbActivationClosed
    (And.intro E.nfKappaBInflammatoryClosed
      (And.intro E.ddrDnaDamageResponseClosed
        (And.intro E.cellCycleArrestClosed E.saspSecretionClosed)))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse