import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.UtilityTheory

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure SolowGrowthModel where
  capitalPerWorker : Type u
  productionFunction : capitalPerWorker → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateCapital : capitalPerWorker
  convergence : Prop

structure GrowthModelPackage (G : SolowGrowthModel) where
  steadyStateExistence : Prop
  stability : Prop
  goldenRule : Prop

structure GrowthModelEvidence {G : SolowGrowthModel} (M : GrowthModelPackage G) where
  steadyStateExistenceClosed : M.steadyStateExistence
  stabilityClosed : M.stability
  goldenRuleClosed : M.goldenRule

def GrowthModelClosed {G : SolowGrowthModel} (M : GrowthModelPackage G) : Prop :=
  M.steadyStateExistence ∧ M.stability ∧ M.goldenRule

theorem growth_model_closed_from_evidence {G : SolowGrowthModel} (M : GrowthModelPackage G) (E : GrowthModelEvidence M) : GrowthModelClosed M := by
  exact And.intro E.steadyStateExistenceClosed (And.intro E.stabilityClosed E.goldenRuleClosed)

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
