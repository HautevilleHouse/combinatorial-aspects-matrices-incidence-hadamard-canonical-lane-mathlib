import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardMatrixPackage where
  order : ℕ
  isHadamard : Prop
  rowOrthogonality : Prop
  entriesArePlusMinusOne : Prop

structure HadamardMatrixEvidence (H : HadamardMatrixPackage) where
  isHadamardClosed : H.isHadamard
  rowOrthogonalityClosed : H.rowOrthogonality
  entriesArePlusMinusOneClosed : H.entriesArePlusMinusOne

def HadamardMatrixClosed (H : HadamardMatrixPackage) : Prop :=
  H.isHadamard ∧ H.rowOrthogonality ∧ H.entriesArePlusMinusOne

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrixPackage) (E : HadamardMatrixEvidence H) :
    HadamardMatrixClosed H := by
  exact And.intro E.isHadamardClosed (And.intro E.rowOrthogonalityClosed E.entriesArePlusMinusOneClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse