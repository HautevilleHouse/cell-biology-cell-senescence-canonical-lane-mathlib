import HautevilleHouse.CellBiologyCellSenescenceCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SenescenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SenescenceAdmittedObject where
  space : SenescenceSpace
  senescentState : Prop
  damageResponseActivated : Prop
  telomereAttrition : Prop
  saspSecreted : Prop
  stableCellCycleArrest : Prop
  conclusion : senescentState ∧ damageResponseActivated ∧ telomereAttrition ∧ saspSecreted ∧ stableCellCycleArrest

structure SenescenceEndgameState where
  object : SenescenceAdmittedObject

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse