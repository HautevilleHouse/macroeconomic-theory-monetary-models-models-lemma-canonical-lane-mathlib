import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure MonetaryEquilibriumPackage where
  priceLevel : Type u
  moneySupply : Type v
  interestRate : Type w
  equilibriumCondition : Prop
  liquidityTrapAvoided : Prop
  inflationTargetMet : Prop

structure MonetaryEquilibriumEvidence (M : MonetaryEquilibriumPackage) where
  equilibriumConditionClosed : M.equilibriumCondition
  liquidityTrapAvoidedClosed : M.liquidityTrapAvoided
  inflationTargetMetClosed : M.inflationTargetMet

def MonetaryEquilibriumClosed (M : MonetaryEquilibriumPackage) : Prop :=
  M.equilibriumCondition ∧ M.liquidityTrapAvoided ∧ M.inflationTargetMet

theorem monetary_equilibrium_closed_from_evidence
    (M : MonetaryEquilibriumPackage) (E : MonetaryEquilibriumEvidence M) :
    MonetaryEquilibriumClosed M := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.liquidityTrapAvoidedClosed E.inflationTargetMetClosed)

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse