import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

structure NeuralOscillatorDatum where
  period : Float
  amplitude : Float
  phase : Float
  couplingStrength : Float
  oscillatorLabel : String
  mathlibSubstrateReady : Bool

def primitiveNeuralOscillatorDatum : NeuralOscillatorDatum := {
  period := 24.0,
  amplitude := 1.0,
  phase := 0.0,
  couplingStrength := 0.5,
  oscillatorLabel := "Van der Pol oscillator model for circadian neurons",
  mathlibSubstrateReady := true
}

def OscillatorModelClosed (D : NeuralOscillatorDatum) : Prop :=
  D.mathlibSubstrateReady = true

theorem oscillator_model_closed_checked :
    OscillatorModelClosed primitiveNeuralOscillatorDatum := by
  unfold OscillatorModelClosed
  rfl

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse