import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure ArrowDebreuEquilibrium (A : AdmissibleClass) where
  priceVector : Type u
  allocation : Type v
  marketClearance : Prop
  agentOptimization : Prop
  existenceProof : marketClearance ∧ agentOptimization

def GeneralEquilibriumClosed (A : AdmissibleClass) : Prop :=
  ∃ (eq : ArrowDebreuEquilibrium A), eq.marketClearance ∧ eq.agentOptimization

theorem general_equilibrium_closed_from_admissible (A : AdmissibleClass) : GeneralEquilibriumClosed A := by
  sorry

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
