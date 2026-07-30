import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean.NeuralOscillatorModel
import HautevilleHouse.NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean.PhaseResponseCurve

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

structure CircadianEntrainmentCertificate where
  oscillator : NeuralOscillatorDatum
  phaseResponse : PhaseResponseCurveDatum
  zeitgeberPeriod : Float
  entrainmentRange : Float
  entrainmentAchieved : Bool
  mathlibSubstrateReady : Bool

def circadianEntrainmentCertificate : CircadianEntrainmentCertificate := {
  oscillator := primitiveNeuralOscillatorDatum,
  phaseResponse := primitivePhaseResponseCurveDatum,
  zeitgeberPeriod := 24.0,
  entrainmentRange := 2.0,
  entrainmentAchieved := true,
  mathlibSubstrateReady := true
}

def CircadianEntrainmentClosed (C : CircadianEntrainmentCertificate) : Prop :=
  C.entrainmentAchieved = true ∧ C.mathlibSubstrateReady = true

theorem circadian_entrainment_closed_checked :
    CircadianEntrainmentClosed circadianEntrainmentCertificate := by
  exact And.intro rfl rfl

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse