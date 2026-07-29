import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure ProjectivePlane (n : ℕ) where
  points : Type u
  lines : Type u
  incidence : points → lines → Prop
  order : ℕ := n
  anyTwoPointsUniqueLine : ∀ p q : points, p ≠ q → ∃! L : lines, incidence p L ∧ incidence q L
  anyTwoLinesUniquePoint : ∀ L M : lines, L ≠ M → ∃! p : points, incidence p L ∧ incidence p M
  fourPointsNoThreeCollinear : ∃ (p1 p2 p3 p4 : points), ∀ L : lines, (incidence p1 L ∧ incidence p2 L ∧ incidence p3 L) → False
  pointCount : Fintype.card points = n^2 + n + 1
  lineCount : Fintype.card lines = n^2 + n + 1
  pointsPerLine : ∀ L, Fintype.card {p : points | incidence p L} = n + 1
  linesPerPoint : ∀ p, Fintype.card {L : lines | incidence p L} = n + 1

theorem projectivePlaneIsSymmetricDesign (n : ℕ) (Π : ProjectivePlane n) : SymmetricDesign (n^2 + n + 1) (n + 1) 1 := by
  constructor
  · exact by
      rw [Π.pointCount]
  · intro x
    have hsize : Fintype.card {b : Π.lines // Π.incidence x b} = n + 1 := by
      calc
        Fintype.card {b : Π.lines // Π.incidence x b} = Fintype.card {L : Π.lines | Π.incidence x L} := by
          simp
        _ = n + 1 := Π.linesPerPoint x
    exact hsize
  · intro B
    have hsize : Fintype.card {x : Π.points // Π.incidence x B} = n + 1 := by
      calc
        Fintype.card {x : Π.points // Π.incidence x B} = Fintype.card {p : Π.points | Π.incidence p B} := by
          simp
        _ = n + 1 := Π.pointsPerLine B
    exact hsize
  · intro x y h
    have hxy : x ≠ y := h
    rcases Π.anyTwoPointsUniqueLine x y hxy with ⟨L, ⟨hxL, hyL⟩, hunique⟩
    have hcard : Fintype.card {b : Π.lines // Π.incidence x b ∧ Π.incidence y b} = 1 := by
      calc
        Fintype.card {b : Π.lines // Π.incidence x b ∧ Π.incidence y b} = Fintype.card ({L} : Set Π.lines) := by
          apply Fintype.card_congr (fun (h : {b : Π.lines // Π.incidence x b ∧ Π.incidence y b}) => ⟨L, by
            simp [h, hunique]⟩)
          · intro ⟨b, hb⟩
            have hb' : Π.incidence x b ∧ Π.incidence y b := hb
            have hLb : b = L := hunique b hb'
            subst hLb
            rfl
          · intro ⟨b, hb⟩
            simp at hb
            exact hb.1
          · intro ⟨b, hb⟩
            simp
        _ = 1 := by simp
    exact hcard
  · exact by
      rw [Π.pointCount, Π.lineCount]
end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse