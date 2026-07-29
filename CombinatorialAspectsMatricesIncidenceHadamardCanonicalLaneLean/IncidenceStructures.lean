import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

/-!
# Incidence Structures Package

This module defines incidence matrices and their combinatorial properties,
including block designs and balanced incomplete block designs (BIBDs).
-/

structure IncidenceStructurePackage where
  points : ℕ
  blocks : ℕ
  incidenceMatrix : Matrix (Fin points) (Fin blocks) ℤ
  regular : Prop
  uniform : Prop
  balanced : Prop

structure IncidenceStructureEvidence (I : IncidenceStructurePackage) where
  regularClosed : I.regular
  uniformClosed : I.uniform
  balancedClosed : I.balanced

def IncidenceStructureClosed (I : IncidenceStructurePackage) : Prop :=
  I.regular ∧ I.uniform ∧ I.balanced

theorem incidence_structure_closed_from_evidence (I : IncidenceStructurePackage)
    (E : IncidenceStructureEvidence I) : IncidenceStructureClosed I := by
  exact And.intro E.regularClosed
    (And.intro E.uniformClosed E.balancedClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse
