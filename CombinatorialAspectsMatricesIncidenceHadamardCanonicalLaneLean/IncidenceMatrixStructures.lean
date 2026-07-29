import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure IncidenceMatrix (α : Type u) where
  rows : Nat
  cols : Nat
  entries : Matrix (Fin rows) (Fin cols) α

structure IncidenceStructure (P B : Type u) where
  incidence : P → B → Prop
  finitePoints : Fintype P
  finiteBlocks : Fintype B

def incidenceMatrixFromStructure {P B : Type u} [Fintype P] [Fintype B] (S : IncidenceStructure P B) : IncidenceMatrix ℕ := by
  sorry

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse