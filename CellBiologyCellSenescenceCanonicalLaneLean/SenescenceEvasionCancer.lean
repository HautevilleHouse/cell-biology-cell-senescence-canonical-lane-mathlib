import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescenceEvasionPackage where
  p53Mutation : Prop
  rbLoss : Prop
  apoptosisResistance : Prop
  immortalization : Prop
  telomeraseReactivation : Prop
  immuneEvasion : Prop
  tumorFormation : Prop
  metastasis : Prop

structure SenescenceEvasionEvidence (E : SenescenceEvasionPackage) where
  p53MutationClosed : E.p53Mutation
  rbLossClosed : E.rbLoss
  apoptosisResistanceClosed : E.apoptosisResistance
  immortalizationClosed : E.immortalization
  telomeraseReactivationClosed : E.telomeraseReactivation
  immuneEvasionClosed : E.immuneEvasion
  tumorFormationClosed : E.tumorFormation
  metastasisClosed : E.metastasis

def SenescenceEvasionClosed (E : SenescenceEvasionPackage) : Prop :=
  E.p53Mutation ∧ E.rbLoss ∧ E.apoptosisResistance ∧ E.immortalization ∧
  E.telomeraseReactivation ∧ E.immuneEvasion ∧ E.tumorFormation ∧ E.metastasis

theorem senescence_evasion_closed_from_evidence
    (E : SenescenceEvasionPackage) (Ev : SenescenceEvasionEvidence E) :
    SenescenceEvasionClosed E := by
  exact And.intro Ev.p53MutationClosed
    (And.intro Ev.rbLossClosed
      (And.intro Ev.apoptosisResistanceClosed
        (And.intro Ev.immortalizationClosed
          (And.intro Ev.telomeraseReactivationClosed
            (And.intro Ev.immuneEvasionClosed
              (And.intro Ev.tumorFormationClosed Ev.metastasisClosed))))))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse