import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SenescenceCell where
  cellType : String
  divisionCount : Nat
  secretedFactors : List String
  damageLevel : Float

default damageLevel := 0.0

structure SenescenceAdmittedObject where
  cell : SenescenceCell
  replicativeSenescence : Prop
  stressInducedSenescence : Prop
  oncogeneInducedSenescence : Prop
  conclusion : replicativeSenescence ∨ stressInducedSenescence ∨ oncogeneInducedSenescence

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : SenescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SenescenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse