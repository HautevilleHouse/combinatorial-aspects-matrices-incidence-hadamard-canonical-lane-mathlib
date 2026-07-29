import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamard.HadamardMatrixDefinition

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamard

structure SymmetricHadamardMatrix (n : ℕ) extends HadamardMatrix n where
  symmetric : ∀ i j, entries i j = entries j i
  constantDiagonal : ∀ i, entries i i = 1

def SymmetricHadamardEvidence (H : SymmetricHadamardMatrix n) : Prop :=
  H.symmetric ∧ H.constantDiagonal

theorem symmetric_hadamard_evidence (H : SymmetricHadamardMatrix n) :
    SymmetricHadamardEvidence H := by
  exact And.intro H.symmetric H.constantDiagonal

end CombinatorialAspectsMatricesIncidenceHadamard
end HautevilleHouse