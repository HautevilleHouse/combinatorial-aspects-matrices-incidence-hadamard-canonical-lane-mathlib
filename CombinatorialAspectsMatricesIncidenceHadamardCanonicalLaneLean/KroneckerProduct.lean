import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure KroneckerProductPackage where
  matrixA : Type u
  matrixB : Type v
  productMatrix : Type w
  hadamardPreserved : Prop
  orderSum : Prop

structure KroneckerProductEvidence (K : KroneckerProductPackage) where
  hadamardPreservedClosed : K.hadamardPreserved
  orderSumClosed : K.orderSum

def KroneckerProductClosed (K : KroneckerProductPackage) : Prop :=
  K.hadamardPreserved ∧ K.orderSum

theorem kronecker_product_closed_from_evidence (K : KroneckerProductPackage) (E : KroneckerProductEvidence K) :
    KroneckerProductClosed K := by
  exact And.intro E.hadamardPreservedClosed E.orderSumClosed

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse