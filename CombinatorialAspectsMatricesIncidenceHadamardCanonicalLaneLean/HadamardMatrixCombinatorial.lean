import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardMatrix (n : ℕ) where
  entries : Matrix (Fin n) (Fin n) ℤ
  orthogonalRows : ∀ i j, i ≠ j → (∑ k, entries i k * entries j k) = 0
  entriesPM1 : ∀ i j, entries i j = 1 ∨ entries i j = -1
  order : ℕ := n

structure HadamardDesign (n : ℕ) where
  incidence : IncidenceStructure (Fin n) (Fin n)
  fromHadamard : HadamardMatrix n
  designProperty : ∀ B, (∑ P, incidence.incidence P B) = n/2

def hadamardConjecture (n : ℕ) : Prop :=
  n % 4 = 0 → Nonempty (HadamardMatrix n)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse