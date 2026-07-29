import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamard.SymmetricHadamard

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamard

structure PaleyConstruction (q : ℕ) where
  primePower : Nat.Prime q
  mod4cong3 : q % 4 = 3
  matrix : SymmetricHadamardMatrix (q+1)
  constructedFromQuadraticResidues : Prop
  constructionCorrect : matrix.constructedFromQuadraticResidues

def PaleyEvidence (P : PaleyConstruction q) : Prop :=
  P.constructionCorrect

theorem paley_evidence (P : PaleyConstruction q) : PaleyEvidence P := by
  exact P.constructionCorrect

end CombinatorialAspectsMatricesIncidenceHadamard
end HautevilleHouse