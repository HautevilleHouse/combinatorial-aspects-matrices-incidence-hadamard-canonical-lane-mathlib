import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardExistenceEvidenceTerms {A : AdmittedObject} (H : HadamardExistenceCertificate A) where
  existenceAtOrder : H.existenceAtOrder
  orthogonalityProved : H.orthogonalityProved
  closureWitnessed : H.closureWitnessed

def HadamardExistenceCertificate.evidenceTerms {A : AdmittedObject} (H : HadamardExistenceCertificate A) : HadamardExistenceEvidenceTerms H := {
  existenceAtOrder := H.existenceAtOrderClosed
  orthogonalityProved := H.orthogonalityProvedClosed
  closureWitnessed := H.closureWitnessedClosed
}

structure IncidenceStructureEvidenceTerms {A : AdmittedObject} (I : IncidenceStructureCertificate A) where
  constantRowSumProved : I.constantRowSumProved
  constantColSumProved : I.constantColSumProved
  incidenceClosure : I.incidenceClosure

def IncidenceStructureCertificate.evidenceTerms {A : AdmittedObject} (I : IncidenceStructureCertificate A) : IncidenceStructureEvidenceTerms I := {
  constantRowSumProved := I.constantRowSumProvedClosed
  constantColSumProved := I.constantColSumProvedClosed
  incidenceClosure := I.incidenceClosureClosed
}

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse