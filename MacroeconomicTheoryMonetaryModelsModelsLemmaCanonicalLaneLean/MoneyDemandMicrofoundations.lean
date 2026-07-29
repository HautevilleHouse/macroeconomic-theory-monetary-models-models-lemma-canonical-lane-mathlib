import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure MoneyDemandMicrofoundationsPackage {A : AdmissibleClass} (P : ArrowDebreuEquilibriumPackage A) where
  transactionCost : ℝ
  cashInAdvanceConstraint : Prop
  moneyDemandFunction : ℝ → ℝ
  liquidityPreference : Prop
  moneyDemandDerived : Prop

structure MoneyDemandMicrofoundationsEvidence {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    (M : MoneyDemandMicrofoundationsPackage P) where
  cashInAdvanceConstraintClosed : M.cashInAdvanceConstraint
  liquidityPreferenceClosed : M.liquidityPreference
  moneyDemandDerivedClosed : M.moneyDemandDerived

def MoneyDemandMicrofoundationsClosed {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    (M : MoneyDemandMicrofoundationsPackage P) : Prop :=
  M.cashInAdvanceConstraint ∧ M.liquidityPreference ∧ M.moneyDemandDerived

theorem money_demand_microfoundations_closed_from_evidence
    {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    (M : MoneyDemandMicrofoundationsPackage P) (E : MoneyDemandMicrofoundationsEvidence M) :
    MoneyDemandMicrofoundationsClosed M := by
  exact And.intro E.cashInAdvanceConstraintClosed (And.intro E.liquidityPreferenceClosed E.moneyDemandDerivedClosed)

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
