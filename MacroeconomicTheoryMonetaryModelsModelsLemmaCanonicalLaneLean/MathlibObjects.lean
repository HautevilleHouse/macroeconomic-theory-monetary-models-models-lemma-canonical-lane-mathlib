import MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean

structure MacroEconomicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MacroAdmittedObject where
  space : MacroEconomicSpace
  generalEquilibrium : Prop
  representativeAgent : Prop
  steadyState : Type
  steadyStateTopology : TopologicalSpace steadyState
  optimalGrowth : Prop
  conclusion : optimalGrowth

def MacroWitnessClosed (O : MacroAdmittedObject) : Prop :=
  O.optimalGrowth

end MacroeconomicTheoryMonetaryModelsModelsLemmaCanonicalLaneLean
end HautevilleHouse
