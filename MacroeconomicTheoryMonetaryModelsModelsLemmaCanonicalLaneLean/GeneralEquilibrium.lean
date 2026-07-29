import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure GeneralEquilibriumModel where
  consumerSet : Type u
  firmSet : Type v
  commoditySpace : Type w
  priceSystem : commoditySpace → ℝ
  endowments : consumerSet → commoditySpace
  preferences : consumerSet → (commoditySpace → Prop)
  productionSets : firmSet → Set commoditySpace
  budgetConstraints : consumerSet → Prop
  marketClearing : Prop
  competitiveEquilibrium : Prop

structure ArrowDebreuEquilibrium (G : GeneralEquilibriumModel) where
  equilibriumPrice : G.commoditySpace → ℝ
  consumptionAllocation : G.consumerSet → G.commoditySpace
  productionAllocation : G.firmSet → G.commoditySpace
  consumerOptimal : Prop
  firmOptimal : Prop
  marketClearingCondition : Prop
  firstWelfareTheorem : Prop

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse