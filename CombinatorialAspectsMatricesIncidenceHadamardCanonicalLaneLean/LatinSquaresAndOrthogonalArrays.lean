import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure LatinSquare (n : ℕ) where
  table : Matrix (Fin n) (Fin n) (Fin n)
  eachRowPermutation : ∀ i, Finset.card (Finset.image (λ j => table i j) Finset.univ) = n
  eachColPermutation : ∀ j, Finset.card (Finset.image (λ i => table i j) Finset.univ) = n

structure OrthogonalArray (N k s t : ℕ) where
  array : Matrix (Fin N) (Fin k) (Fin s)
  strength : ℕ := t
  orthogonalProperty : ∀ (cols : Finset (Fin k)) (h : Finset.card cols = t),
    Finset.card (Finset.image (λ row => (Finset.map (λ col => array row col) cols)) Finset.univ) = s^t

theorem latinSquareToOrthogonalArray (n : ℕ) (L : LatinSquare n) : OrthogonalArray (n^2) 3 n 2 := by
  sorry

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse