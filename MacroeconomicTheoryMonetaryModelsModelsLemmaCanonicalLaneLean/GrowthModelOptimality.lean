import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure RamseyModel (A : AdmissibleClass) where
  capitalStock : Type u
  productionFunction : capitalStock → ℝ
  utilityFlow : ℝ → ℝ
  discountRate : ℝ
  initialCapital : capitalStock

def EulerEquation (A : AdmissibleClass) (R : RamseyModel A) : Prop :=
  ∀ (k : R.capitalStock), R.utilityFlow (R.productionFunction k) = R.discountRate * R.utilityFlow (R.productionFunction (R.initialCapital))

theorem euler_equation_optimality (A : AdmissibleClass) (R : RamseyModel A) : EulerEquation A R := by
  sorry

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
