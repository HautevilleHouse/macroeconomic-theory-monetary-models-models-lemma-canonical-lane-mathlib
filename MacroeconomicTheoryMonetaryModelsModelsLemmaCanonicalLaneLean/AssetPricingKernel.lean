import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure StochasticDiscountFactor (A : AdmissibleClass) where
  stateSpace : Type u
  probabilityMeasure : (stateSpace → ℝ) → ℝ
  discountFactor : stateSpace → ℝ
  positivity : ∀ s : stateSpace, discountFactor s > 0

def AssetPricingEquation (A : AdmissibleClass) (S : StochasticDiscountFactor A) : Prop :=
  ∀ (asset : Type v) (payoff : asset → S.stateSpace → ℝ) (price : asset → ℝ),
    ∀ a : asset, price a = S.probabilityMeasure (λ ω : S.stateSpace => S.discountFactor ω * payoff a ω)

theorem asset_pricing_kernel_closed (A : AdmissibleClass) (S : StochasticDiscountFactor A) : AssetPricingEquation A S := by
  sorry

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
