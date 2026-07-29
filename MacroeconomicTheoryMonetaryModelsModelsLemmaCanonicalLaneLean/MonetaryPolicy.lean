import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure MonetaryPolicyModel where
  moneySupply : Type u
  interestRate : Type v
  inflationTarget : ℝ
  outputGap : ℝ
  taylorRule : Prop
  liquidityTrap : Prop
  moneyDemandEquation : Prop

structure NewKeynesianModel (M : MonetaryPolicyModel) where
  phillipsCurve : Prop
  isCurve : Prop
  monetaryPolicyRule : Prop
  dynamicStochasticGeneralEquilibrium : Prop
  rationalExpectations : Prop

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse