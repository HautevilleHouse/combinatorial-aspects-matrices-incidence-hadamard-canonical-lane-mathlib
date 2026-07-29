import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardMatrix (n : ℕ) where
  entries : Matrix (Fin n) (Fin n) ℤ
  orthogonalRows : ∀ i j, i ≠ j → Matrix.dotProduct (entries i) (entries j) = 0
  normalizedRows : ∀ i, Matrix.dotProduct (entries i) (entries i) = n
  entriesArePlusMinusOne : ∀ i j, entries i j = 1 ∨ entries i j = -1

def HadamardMatrixClosed (H : HadamardMatrix n) : Prop :=
  H.orthogonalRows ∧ H.normalizedRows ∧ H.entriesArePlusMinusOne

theorem hadamard_matrix_closed_from_conditions (H : HadamardMatrix n) : HadamardMatrixClosed H := by
  refine ⟨H.orthogonalRows, H.normalizedRows, H.entriesArePlusMinusOne⟩

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse