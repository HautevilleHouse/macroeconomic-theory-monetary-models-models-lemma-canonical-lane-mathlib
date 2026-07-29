import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure CommoditySpace where
  commodityTypes : Type u
  priceSystem : Type v
  endowment : commodityTypes → ℝ
  demandFunction : commodityTypes → ℝ → ℝ

structure ArrowDebreuEquilibriumPackage (C : CommoditySpace) where
  equilibriumPrices : C.priceSystem
  allocations : C.commodityTypes → ℝ
  marketClearing : Prop
  feasibility : Prop
  optimality : Prop
  equilibriumExists : Prop

structure ArrowDebreuEquilibriumEvidence {C : CommoditySpace} (P : ArrowDebreuEquilibriumPackage C) where
  marketClearingClosed : P.marketClearing
  feasibilityClosed : P.feasibility
  optimalityClosed : P.optimality
  equilibriumExistsClosed : P.equilibriumExists

def ArrowDebreuEquilibriumClosed {C : CommoditySpace} (P : ArrowDebreuEquilibriumPackage C) : Prop :=
  P.marketClearing ∧ P.feasibility ∧ P.optimality ∧ P.equilibriumExists

theorem arrow_debreu_equilibrium_closed_from_evidence {C : CommoditySpace} (P : ArrowDebreuEquilibriumPackage C) (E : ArrowDebreuEquilibriumEvidence P) : ArrowDebreuEquilibriumClosed P := by
  exact And.intro E.marketClearingClosed (And.intro E.feasibilityClosed (And.intro E.optimalityClosed E.equilibriumExistsClosed))

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
