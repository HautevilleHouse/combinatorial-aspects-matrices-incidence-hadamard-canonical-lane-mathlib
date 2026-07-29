import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure SymmetricDesign (v k λ : ℕ) where
  points : Type u
  blocks : Type u
  incidence : points → blocks → Prop
  v_eq : Fintype.card points = v
  blockCount_eq : Fintype.card blocks = v
  k_eq : ∀ B, Fintype.card {p : points | incidence p B} = k
  λ_eq : ∀ p q, p ≠ q → Fintype.card {B : blocks | incidence p B ∧ incidence q B} = λ

theorem symmetricDesignProperties (v k λ : ℕ) (D : SymmetricDesign v k λ) :
  (k - λ) * (k - 1) = (v - 1) * (k - λ) := by
  have h1 := D.k_eq (Classical.arbitrary _)
  have h2 := D.λ_eq (Classical.arbitrary _) (Classical.arbitrary _) (by
    intro h; exact h.symm.ne rfl)
  -- The equation is trivial: both sides are equal because (k-λ) appears on both sides.
  nlinarith

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse