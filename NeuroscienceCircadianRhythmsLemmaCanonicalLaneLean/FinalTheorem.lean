import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean

def ConstrainedCircadianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_circadian_closure (A : AdmissibleClass) :
    ConstrainedCircadianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCircadianRhythmsLemmaCanonicalLaneLean
end HautevilleHouse