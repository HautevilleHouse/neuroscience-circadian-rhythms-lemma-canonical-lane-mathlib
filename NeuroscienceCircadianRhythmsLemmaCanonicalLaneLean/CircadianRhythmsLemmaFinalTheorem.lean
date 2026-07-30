import HautevilleHouse.NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean.CircadianRhythmsLemmaAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

def bridgeClosed (A : NeuroscienceAdmissibleClass) : Prop :=
  A.object.objectKey = sourceRepository ∧ A.object.theoremName = sourceDescription

theorem bridge_from_admissible_class (A : NeuroscienceAdmissibleClass) : bridgeClosed A := by
  exact ⟨rfl, rfl⟩

def gateClosed (A : NeuroscienceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NeuroscienceAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNeuroscienceClosure (A : NeuroscienceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : NeuroscienceAdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse