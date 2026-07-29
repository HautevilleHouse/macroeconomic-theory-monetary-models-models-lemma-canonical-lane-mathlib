import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure UtilityFunction (A : AdmissibleClass) where
  domain : Type u
  preferenceRelation : domain → domain → Prop
  completeness : ∀ x y : domain, preferenceRelation x y ∨ preferenceRelation y x
  transitivity : ∀ x y z : domain, preferenceRelation x y → preferenceRelation y z → preferenceRelation x z
  continuity : Prop

def UtilityRepresentation (A : AdmissibleClass) (U : UtilityFunction A) : Prop :=
  ∃ (u : U.domain → ℝ), ∀ x y : U.domain, U.preferenceRelation x y ↔ u x ≤ u y

theorem utility_representation_closed (A : AdmissibleClass) (U : UtilityFunction A) : UtilityRepresentation A U := by
  sorry

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
