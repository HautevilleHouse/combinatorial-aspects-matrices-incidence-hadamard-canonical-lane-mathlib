import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure CombinatorialDesign (V : Type) (B : Type) where
  points : Finset V
  blocks : Finset (Finset V)
  eachPointInBlocks : ∀ p ∈ points, Finset.card (Finset.filter (λ b => p ∈ b) blocks) = Finset.card blocks / Finset.card points
  eachBlockSize : ∀ b ∈ blocks, Finset.card b = Finset.card (Finset.image (λ x => x) points)
  twoBlocksIntersect : ∀ b1 b2 ∈ blocks, b1 ≠ b2 → Finset.card (b1 ∩ b2) = 1

def DesignIncidenceMatrix {V B : Type} (d : CombinatorialDesign V B) : Type :=
  IncidenceMatrix (Finset.attach (Finset.image (λ v => v) d.points)) (Finset.attach d.blocks)

def CombinatorialDesignClosed {V B : Type} (d : CombinatorialDesign V B) : Prop :=
  d.eachPointInBlocks ∧ d.eachBlockSize ∧ d.twoBlocksIntersect

theorem combinatorial_design_closed_from_conditions {V B : Type} (d : CombinatorialDesign V B) : CombinatorialDesignClosed d := by
  refine ⟨d.eachPointInBlocks, d.eachBlockSize, d.twoBlocksIntersect⟩

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse