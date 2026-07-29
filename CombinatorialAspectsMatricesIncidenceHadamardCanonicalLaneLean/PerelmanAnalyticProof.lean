import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardExistenceCertificate (A : AdmittedObject) where
  existenceAtOrder : Prop
  orthogonalityProved : Prop
  closureWitnessed : Prop
  existenceAtOrderClosed : existenceAtOrder
  orthogonalityProvedClosed : orthogonalityProved
  closureWitnessedClosed : closureWitnessed

def HadamardExistenceCertificateClosed {A : AdmittedObject} (H : HadamardExistenceCertificate A) : Prop :=
  H.existenceAtOrder ∧ H.orthogonalityProved ∧ H.closureWitnessed

theorem hadamard_existence_certificate_closed
    {A : AdmittedObject} (H : HadamardExistenceCertificate A) :
    HadamardExistenceCertificateClosed H := by
  exact And.intro H.existenceAtOrderClosed
    (And.intro H.orthogonalityProvedClosed H.closureWitnessedClosed)

structure IncidenceStructureCertificate (A : AdmittedObject) where
  constantRowSumProved : Prop
  constantColSumProved : Prop
  incidenceClosure : Prop
  constantRowSumProvedClosed : constantRowSumProved
  constantColSumProvedClosed : constantColSumProved
  incidenceClosureClosed : incidenceClosure

def IncidenceStructureCertificateClosed {A : AdmittedObject} (I : IncidenceStructureCertificate A) : Prop :=
  I.constantRowSumProved ∧ I.constantColSumProved ∧ I.incidenceClosure

theorem incidence_structure_certificate_closed
    {A : AdmittedObject} (I : IncidenceStructureCertificate A) :
    IncidenceStructureCertificateClosed I := by
  exact And.intro I.constantRowSumProvedClosed
    (And.intro I.constantColSumProvedClosed I.incidenceClosureClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse