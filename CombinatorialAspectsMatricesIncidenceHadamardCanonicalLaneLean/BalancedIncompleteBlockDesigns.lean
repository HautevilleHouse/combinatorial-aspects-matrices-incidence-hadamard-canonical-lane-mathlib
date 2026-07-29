import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure BIBD (v b r k λ : ℕ) where
  points : Type u
  blocks : Type u
  incidence : points → blocks → Prop
  v_eq : Fintype.card points = v
  b_eq : Fintype.card blocks = b
  r_eq : ∀ p, Fintype.card {B : blocks | incidence p B} = r
  k_eq : ∀ B, Fintype.card {p : points | incidence p B} = k
  λ_eq : ∀ p q, p ≠ q → Fintype.card {B : blocks | incidence p B ∧ incidence q B} = λ
  finitePoints : Fintype points
  finiteBlocks : Fintype blocks

theorem fisherInequality (D : BIBD v b r k λ) : b ≥ v := by
  sorry

theorem basicRelation (D : BIBD v b r k λ) : b * k = v * r := by
  sorry

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse