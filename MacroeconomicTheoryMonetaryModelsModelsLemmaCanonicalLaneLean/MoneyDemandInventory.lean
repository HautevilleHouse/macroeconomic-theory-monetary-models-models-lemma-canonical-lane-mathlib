import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure BaumolTobinModel (A : AdmissibleClass) where
  income : ℝ
  transactionCost : ℝ
  interestRate : ℝ

def OptimalMoneyDemand (A : AdmissibleClass) (B : BaumolTobinModel A) : ℝ :=
  Real.sqrt ((2 * B.transactionCost * B.income) / B.interestRate)

theorem money_demand_inventory_theory (A : AdmissibleClass) (B : BaumolTobinModel A) : OptimalMoneyDemand A B > 0 := by
  have h : B.income > 0 := by
    sorry
  have h2 : B.transactionCost > 0 := by
    sorry
  have h3 : B.interestRate > 0 := by
    sorry
  positivity

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
