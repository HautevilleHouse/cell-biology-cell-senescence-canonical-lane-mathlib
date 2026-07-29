import CellularSenescenceCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescenceCellStatePackage where
  cellCycleArrest : Prop
  saBetaGalActivity : Prop
  dnaDamageFoci : Prop
  heterochromatinMarkers : Prop

structure SenescenceCellStateEvidence (S : SenescenceCellStatePackage) where
  cellCycleArrestClosed : S.cellCycleArrest
  saBetaGalActivityClosed : S.saBetaGalActivity
  dnaDamageFociClosed : S.dnaDamageFoci
  heterochromatinMarkersClosed : S.heterochromatinMarkers

def SenescenceCellStateClosed (S : SenescenceCellStatePackage) : Prop :=
  S.cellCycleArrest ∧ S.saBetaGalActivity ∧ S.dnaDamageFoci ∧ S.heterochromatinMarkers

theorem senescence_cell_state_closed_from_evidence (S : SenescenceCellStatePackage) (E : SenescenceCellStateEvidence S) :
    SenescenceCellStateClosed S := by
  exact And.intro E.cellCycleArrestClosed
    (And.intro E.saBetaGalActivityClosed
      (And.intro E.dnaDamageFociClosed E.heterochromatinMarkersClosed))

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse