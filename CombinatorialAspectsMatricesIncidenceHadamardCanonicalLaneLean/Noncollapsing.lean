import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure NoncollapsingPackage (A : AdmittedObject) where
  hadamardConjectureUnbounded : Prop
  incidenceUniqueness : Prop
  structuralRigidity : Prop

structure NoncollapsingEvidence {A : AdmittedObject} (N : NoncollapsingPackage A) where
  hadamardConjectureUnboundedClosed : N.hadamardConjectureUnbounded
  incidenceUniquenessClosed : N.incidenceUniqueness
  structuralRigidityClosed : N.structuralRigidity

def NoncollapsingClosed {A : AdmittedObject} (N : NoncollapsingPackage A) : Prop :=
  N.hadamardConjectureUnbounded ∧ N.incidenceUniqueness ∧ N.structuralRigidity

theorem noncollapsing_closed_from_evidence
    {A : AdmittedObject} (N : NoncollapsingPackage A) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.hadamardConjectureUnboundedClosed
    (And.intro E.incidenceUniquenessClosed E.structuralRigidityClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse