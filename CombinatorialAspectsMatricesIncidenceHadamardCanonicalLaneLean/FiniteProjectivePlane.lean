import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure FiniteProjectivePlanePackage where
  order : ℕ
  incidenceAxioms : Prop
  desarguesProperty : Prop
  collineationGroup : Prop

structure FiniteProjectivePlaneEvidence (F : FiniteProjectivePlanePackage) where
  incidenceAxiomsClosed : F.incidenceAxioms
  desarguesPropertyClosed : F.desarguesProperty
  collineationGroupClosed : F.collineationGroup

def FiniteProjectivePlaneClosed (F : FiniteProjectivePlanePackage) : Prop :=
  F.incidenceAxioms ∧ F.desarguesProperty ∧ F.collineationGroup

theorem finite_projective_plane_closed_from_evidence (F : FiniteProjectivePlanePackage) (E : FiniteProjectivePlaneEvidence F) :
    FiniteProjectivePlaneClosed F := by
  exact And.intro E.incidenceAxiomsClosed (And.intro E.desarguesPropertyClosed E.collineationGroupClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse