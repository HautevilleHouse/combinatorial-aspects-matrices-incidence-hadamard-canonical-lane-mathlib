import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean

structure WittDesignPackage where
  order : ℕ
  isSteinerSystem : Prop
  parameters : Prop
  automorphismGroup : Prop

structure WittDesignEvidence (W : WittDesignPackage) where
  isSteinerSystemClosed : W.isSteinerSystem
  parametersClosed : W.parameters
  automorphismGroupClosed : W.automorphismGroup

def WittDesignClosed (W : WittDesignPackage) : Prop :=
  W.isSteinerSystem ∧ W.parameters ∧ W.automorphismGroup

theorem witt_design_closed_from_evidence (W : WittDesignPackage) (E : WittDesignEvidence W) :
    WittDesignClosed W := by
  exact And.intro E.isSteinerSystemClosed (And.intro E.parametersClosed E.automorphismGroupClosed)

end CombinatorialAspectsMatricesIncidenceHadamardCanonicalLaneLean
end HautevilleHouse