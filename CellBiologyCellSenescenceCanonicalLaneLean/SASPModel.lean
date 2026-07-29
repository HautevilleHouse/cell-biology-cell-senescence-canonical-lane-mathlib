import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceCanonicalLaneLean

structure SASPComponent where
  cytokine : Type
  chemokine : Type
  growthFactor : Type
  matrixMetalloproteinase : Type
  secretionActive : Prop

structure SASPModel where
  il6 : SASPComponent
  il8 : SASPComponent
  tgfb : SASPComponent
  mmp1 : SASPComponent
  allSecretion : il6.secretionActive ∧ il8.secretionActive ∧ tgfb.secretionActive ∧ mmp1.secretionActive

theorem sasp_all_secretion (sasp : SASPModel) : sasp.allSecretion := by
  exact sasp.allSecretion

def SASPClosed (sasp : SASPModel) : Prop :=
  sasp.allSecretion

end CellBiologyCellSenescenceCanonicalLaneLean
end HautevilleHouse