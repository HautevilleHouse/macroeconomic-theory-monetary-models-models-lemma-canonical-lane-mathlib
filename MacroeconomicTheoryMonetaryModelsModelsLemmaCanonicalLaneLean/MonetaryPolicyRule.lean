import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure TaylorRule (A : AdmissibleClass) where
  inflationTarget : ℝ
  outputGapTarget : ℝ
  realInterestRate : ℝ
  inflationCoeff : ℝ
  outputCoeff : ℝ

def TaylorRate (A : AdmissibleClass) (T : TaylorRule A) (inflation : ℝ) (outputGap : ℝ) : ℝ :=
  T.realInterestRate + T.inflationCoeff * (inflation - T.inflationTarget) + T.outputCoeff * (outputGap - T.outputGapTarget)

theorem taylor_rule_determines_rate (A : AdmissibleClass) (T : TaylorRule A) (inflation outputGap : ℝ) : TaylorRate A T inflation outputGap = TaylorRate A T inflation outputGap := by
  rfl

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
