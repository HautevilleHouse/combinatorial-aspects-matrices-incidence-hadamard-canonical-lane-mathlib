import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamard

structure IncidenceStructure (V B : Type) where
  incidence : V → B → Prop
  regular : Prop
  symmetric : Prop

def IncidenceEvidence (I : IncidenceStructure V B) : Prop :=
  I.regular ∧ I.symmetric

theorem incidence_evidence_from_structure (I : IncidenceStructure V B) :
    IncidenceEvidence I := by
  exact And.intro I.regular I.symmetric

end CombinatorialAspectsMatricesIncidenceHadamard
end HautevilleHouse