import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure AdmissibleClass where
  object : HadamardAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse