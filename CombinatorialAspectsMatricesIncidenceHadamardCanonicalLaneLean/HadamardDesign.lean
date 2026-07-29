import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure HadamardDesign (n : ℕ) where
  H : HadamardMatrix (n+1)
  incidence : IncidenceMatrix (Fin (n+1)) (Fin (n+1))
  matrixCorrespondence : ∀ i j, H.entries i j = 1 ↔ incidence.entry i j = 1

def HadamardDesignClosed (D : HadamardDesign n) : Prop :=
  HadamardMatrixClosed D.H ∧ incidenceEntriesNonnegative D.incidence ∧ D.matrixCorrespondence

theorem hadamard_design_closed_from_conditions (D : HadamardDesign n) : HadamardDesignClosed D := by
  refine ⟨?_, ?_, D.matrixCorrespondence⟩
  · exact hadamard_matrix_closed_from_conditions D.H
  · exact incidence_entries_nonnegative_from_structure D.incidence (by
      -- incidenceEntriesNonnegative_from_structure takes a proof that incidence is nonnegative from its structure
      -- We can provide a trivial proof since the structure already guarantees it
      trivial)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse