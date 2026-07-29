import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

def ConstrainedHadamardDesignClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hadamard_design_endgame (A : AdmissibleClass) : ConstrainedHadamardDesignClosure A := by
  refine And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse