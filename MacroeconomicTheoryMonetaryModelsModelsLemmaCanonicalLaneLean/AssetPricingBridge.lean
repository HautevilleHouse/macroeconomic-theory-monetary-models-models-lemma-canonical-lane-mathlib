import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type u
  assetPrice : Type v
  riskFreeRate : Type w
  noArbitrageCondition : Prop
  riskNeutralValuation : Prop
  dividendDiscountModel : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageConditionClosed : A.noArbitrageCondition
  riskNeutralValuationClosed : A.riskNeutralValuation
  dividendDiscountModelClosed : A.dividendDiscountModel

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrageCondition ∧ A.riskNeutralValuation ∧ A.dividendDiscountModel

theorem asset_pricing_closed_from_evidence
    (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageConditionClosed
    (And.intro E.riskNeutralValuationClosed E.dividendDiscountModelClosed)

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse