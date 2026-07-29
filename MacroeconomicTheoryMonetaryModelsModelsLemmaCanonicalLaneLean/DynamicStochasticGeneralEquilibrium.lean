import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.MoneyDemandMicrofoundations

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure DSGEPackage {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    (M : MoneyDemandMicrofoundationsPackage P) where
  productivityShock : ℝ
  monetaryPolicyRule : ℝ → ℝ
  stateVariables : Type u
  equilibriumDynamics : Prop
  existenceAndStability : Prop

structure DSGEEvidence {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    {M : MoneyDemandMicrofoundationsPackage P} (D : DSGEPackage M) where
  equilibriumDynamicsClosed : D.equilibriumDynamics
  existenceAndStabilityClosed : D.existenceAndStability

def DSGEClosed {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    {M : MoneyDemandMicrofoundationsPackage P} (D : DSGEPackage M) : Prop :=
  D.equilibriumDynamics ∧ D.existenceAndStability

theorem dsge_closed_from_evidence {A : AdmissibleClass} {P : ArrowDebreuEquilibriumPackage A}
    {M : MoneyDemandMicrofoundationsPackage P} (D : DSGEPackage M) (E : DSGEEvidence D) :
    DSGEClosed D := by
  exact And.intro E.equilibriumDynamicsClosed E.existenceAndStabilityClosed

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
