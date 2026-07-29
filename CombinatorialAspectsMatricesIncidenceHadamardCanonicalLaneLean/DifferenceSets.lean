import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure DifferenceSet (G : Type u) [AddGroup G] (k λ : ℕ) where
  D : Finset G
  size : Finset.card D = k
  differenceMultiplicity : ∀ g ≠ 0, Finset.card (Finset.filter (λ x => g ∈ Finset.map (λ p => p.1 - p.2) (Finset.product D D)) (Finset.range 1)) = λ /
    sorry

def developIncidenceStructure {G : Type u} [AddGroup G] [Fintype G] {k λ : ℕ} (D : DifferenceSet G k λ) : IncidenceStructure G G := by
  sorry

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse