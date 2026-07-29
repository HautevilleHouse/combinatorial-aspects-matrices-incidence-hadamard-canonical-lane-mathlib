import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamard

structure HadamardMatrix (n : ℕ) where
  entries : Matrix (Fin n) (Fin n) ℤ
  entryPlusOneOrMinusOne : ∀ i j, entries i j = 1 ∨ entries i j = -1
  orthogonalRows : ∀ i j, i ≠ j → (∑ k, entries i k * entries j k) = 0
  dimensionEven : n % 2 = 0 ∨ n = 1

def HadamardMatrixEvidence (H : HadamardMatrix n) : Prop :=
  H.entryPlusOneOrMinusOne ∧ H.orthogonalRows ∧ H.dimensionEven

theorem hadamard_matrix_evidence_from_definition (H : HadamardMatrix n) :
    HadamardMatrixEvidence H := by
  exact And.intro H.entryPlusOneOrMinusOne (And.intro H.orthogonalRows H.dimensionEven)

end CombinatorialAspectsMatricesIncidenceHadamard
end HautevilleHouse