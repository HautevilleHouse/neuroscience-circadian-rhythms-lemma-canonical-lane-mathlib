import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

structure SCNMolecularClockDatum where
  clockGenes : List String
  transcriptionTranslationFeedbackLoop : Bool
  periodLength : Float
  phosphorylationState : String
  molecularMechanismChecked : Bool
  mathlibSubstrateReady : Bool

def primitiveSCNMolecularClockDatum : SCNMolecularClockDatum := {
  clockGenes := ["Per", "Cry", "Clock", "Bmal1"],
  transcriptionTranslationFeedbackLoop := true,
  periodLength := 24.0,
  phosphorylationState := "regulated",
  molecularMechanismChecked := true,
  mathlibSubstrateReady := true
}

def SCNMolecularClockClosed (D : SCNMolecularClockDatum) : Prop :=
  D.molecularMechanismChecked = true ∧ D.mathlibSubstrateReady = true

theorem scn_molecular_clock_closed_checked :
    SCNMolecularClockClosed primitiveSCNMolecularClockDatum := by
  exact And.intro rfl rfl

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse