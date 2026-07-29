import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨by
    -- Extract the admitted object from A
    exact A.object, A.gateWitness⟩

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse