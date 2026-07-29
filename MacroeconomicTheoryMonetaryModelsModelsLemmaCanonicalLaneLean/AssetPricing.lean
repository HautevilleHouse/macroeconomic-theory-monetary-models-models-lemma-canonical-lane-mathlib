import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.GrowthModel
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure StochasticDiscountFactor where
  stateSpace : Type u
  discountFactor : stateSpace → ℝ
  riskFreeRate : ℝ
  positive : Prop

structure AssetPricingPackage (S : StochasticDiscountFactor) where
  price : (stateSpace → ℝ) → ℝ
  fundamentalEquation : Prop
  noArbitrage : Prop
  riskNeutralMeasure : Prop

structure AssetPricingEvidence {S : StochasticDiscountFactor} (P : AssetPricingPackage S) where
  fundamentalEquationClosed : P.fundamentalEquation
  noArbitrageClosed : P.noArbitrage
  riskNeutralMeasureClosed : P.riskNeutralMeasure

def AssetPricingClosed {S : StochasticDiscountFactor} (P : AssetPricingPackage S) : Prop :=
  P.fundamentalEquation ∧ P.noArbitrage ∧ P.riskNeutralMeasure

theorem asset_pricing_closed_from_evidence {S : StochasticDiscountFactor} (P : AssetPricingPackage S) (E : AssetPricingEvidence P) : AssetPricingClosed P := by
  exact And.intro E.fundamentalEquationClosed (And.intro E.noArbitrageClosed E.riskNeutralMeasureClosed)

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
