import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure StrategicGame where
  players : Type u
  actions : players → Type v
  payoffs : (p : players) → ((p' : players) → actions p') → ℝ
  nashEquilibrium : Prop
  dominantStrategy : Prop

structure RepeatedGame (G : StrategicGame) where
  horizon : ℕ
  discountFactor : ℝ
  triggerStrategy : Prop
  folkTheorem : Prop
  subgamePerfectEquilibrium : Prop

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse