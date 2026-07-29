import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.CellSenescenceGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

def ConstrainedSenescenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_senescence_endgame (A : AdmissibleClass) :
    ConstrainedSenescenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse