import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure UtilityFunction where
  consumptionSet : Type u
  utility : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonSatiation : Prop

structure UtilityMaximizationPackage (U : UtilityFunction) (C : CommoditySpace) where
  optimalChoice : U.consumptionSet
  budgetConstraint : C.priceSystem → ℝ → Prop
  utilityMaximization : Prop
  firstOrderCondition : Prop

structure UtilityMaximizationEvidence {U : UtilityFunction} {C : CommoditySpace} (M : UtilityMaximizationPackage U C) where
  utilityMaximizationClosed : M.utilityMaximization
  firstOrderConditionClosed : M.firstOrderCondition

def UtilityMaximizationClosed {U : UtilityFunction} {C : CommoditySpace} (M : UtilityMaximizationPackage U C) : Prop :=
  M.utilityMaximization ∧ M.firstOrderCondition

theorem utility_maximization_closed_from_evidence {U : UtilityFunction} {C : CommoditySpace} (M : UtilityMaximizationPackage U C) (E : UtilityMaximizationEvidence M) : UtilityMaximizationClosed M := by
  exact And.intro E.utilityMaximizationClosed E.firstOrderConditionClosed

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
