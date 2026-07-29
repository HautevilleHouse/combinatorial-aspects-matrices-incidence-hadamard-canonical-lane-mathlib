import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

/-!
# Hadamard Matrices Package

This module defines the structure of Hadamard matrices and their combinatorial
properties within the admissible class framework.
-/

structure HadamardMatrixPackage where
  order : ℕ
  entries : Matrix (Fin order) (Fin order) ℤ
  orthogonalRows : Prop
  orthogonalColumns : Prop
  entryValues : Prop
  hadamardCondition : Prop

structure HadamardMatrixEvidence (H : HadamardMatrixPackage) where
  orthogonalRowsClosed : H.orthogonalRows
  orthogonalColumnsClosed : H.orthogonalColumns
  entryValuesClosed : H.entryValues
  hadamardConditionClosed : H.hadamardCondition

def HadamardMatrixClosed (H : HadamardMatrixPackage) : Prop :=
  H.orthogonalRows ∧ H.orthogonalColumns ∧ H.entryValues ∧ H.hadamardCondition

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrixPackage)
    (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H := by
  exact And.intro E.orthogonalRowsClosed
    (And.intro E.orthogonalColumnsClosed
      (And.intro E.entryValuesClosed E.hadamardConditionClosed))

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse
