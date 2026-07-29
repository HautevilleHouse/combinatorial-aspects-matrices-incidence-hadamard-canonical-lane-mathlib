import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure IncidenceMatrix (V : Type) (E : Type) where
  rows : List V
  cols : List E
  entry : V → E → ℕ
  finiteSets : Finset V × Finset E
  wellDefined : Finset.card (Finset.image (λ v => Finset.image (entry v) finiteSets.2) finiteSets.1) = 1 → True

def incidenceEntriesNonnegative {V E : Type} (M : IncidenceMatrix V E) : Prop :=
  ∀ v e, M.entry v e ≥ 0

theorem incidence_entries_nonnegative_from_structure {V E : Type} (M : IncidenceMatrix V E) (h : M.wellDefined) : incidenceEntriesNonnegative M := by
  unfold incidenceEntriesNonnegative
  intro v e
  have : M.entry v e ≥ 0 := by omega
  exact this

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse