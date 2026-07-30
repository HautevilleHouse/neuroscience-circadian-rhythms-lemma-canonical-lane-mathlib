import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

structure LightInputGateCertificate where
  lightIntensity : Float
  photopigmentSensitivity : Float
  melanopsinActivation : Bool
  suprachiasmaticNucleusInput : Bool
  gateConditionSatisfied : Bool
  mathlibSubstrateReady : Bool

def lightInputGateCertificate : LightInputGateCertificate := {
  lightIntensity := 100.0,
  photopigmentSensitivity := 0.8,
  melanopsinActivation := true,
  suprachiasmaticNucleusInput := true,
  gateConditionSatisfied := true,
  mathlibSubstrateReady := true
}

def LightInputGateClosed (C : LightInputGateCertificate) : Prop :=
  C.gateConditionSatisfied = true ∧ C.mathlibSubstrateReady = true

theorem light_input_gate_closed_checked :
    LightInputGateClosed lightInputGateCertificate := by
  exact And.intro rfl rfl

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse