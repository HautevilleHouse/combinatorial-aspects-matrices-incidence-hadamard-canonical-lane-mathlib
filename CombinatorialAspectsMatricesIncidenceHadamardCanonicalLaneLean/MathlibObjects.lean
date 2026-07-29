import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardMatrix (n : ℕ) where
  entries : Matrix (Fin n) (Fin n) ℤ
  entriesAreOneOrNegOne : ∀ i j, entries i j = 1 ∨ entries i j = -1
  orthogonalRows : ∀ i j, i ≠ j → ∑ k, entries i k * entries j k = 0

structure IncidenceMatrix (v b : ℕ) where
  entries : Matrix (Fin v) (Fin b) ℤ
  entriesAreZeroOrOne : ∀ i j, entries i j = 0 ∨ entries i j = 1
  constantRowSum : ∃ r : ℕ, ∀ i, ∑ j, entries i j = r
  constantColSum : ∃ k : ℕ, ∀ j, ∑ i, entries i j = k

structure AdmittedObject where
  hadamardMatrix : ∀ n, HadamardMatrix n
  incidenceMatrix : IncidenceMatrix 0 0
  existenceAdmitted : Prop
  conclusion : existenceAdmitted

def AdmittedWitnessClosed (O : AdmittedObject) : Prop :=
  O.existenceAdmitted

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse