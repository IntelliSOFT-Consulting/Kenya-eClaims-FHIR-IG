
ValueSet: ClaimStatusVS
Id: claim-status-vs
Title: "Claim Status ValueSet"
Description: "ValueSet for claim status codes (MOH-Kenya OCL: CLAIM-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimStatusCS


ValueSet: ClaimTypeVS
Id: claim-type-vs
Title: "Claim Type ValueSet"
Description: "ValueSet for claim type codes (MOH-Kenya OCL: CLAIM-TYPE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimTypeCS


ValueSet: ClaimSubTypeVS
Id: claim-subtype-vs
Title: "Claim Subtype ValueSet"
Description: "ValueSet for claim subtype codes (MOH-Kenya OCL: CLAIM-SUBTYPE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimSubTypeCS


ValueSet: ClaimUseVS
Id: claim-use-vs
Title: "Claim Use ValueSet"
Description: "ValueSet for intended use of a claim (MOH-Kenya OCL: CLAIM-USE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimUseCS

ValueSet: ProcessPriorityVS
Id: process-priority-vs
Title: "Process Priority ValueSet"
Description: "ValueSet for financial processing priority codes."
* ^status = #active
* ^experimental = false
* include codes from system ProcessPriorityCS

ValueSet: PayeeTypeVS
Id: payee-type-vs
Title: "Payee Type ValueSet"
Description: "ValueSet for payee type codes."
* ^status = #active
* ^experimental = false
* include codes from system PayeeTypeCS

ValueSet: ClaimInformationCategoryVS
Id: claim-information-category-vs
Title: "Claim Information Category ValueSet"
Description: "ValueSet for claim supporting information categories."
* ^status = #active
* ^experimental = false
* include codes from system ClaimInformationCategoryCS

ValueSet: DiagnosisTypeVS
Id: diagnosis-type-vs
Title: "Diagnosis Type ValueSet"
Description: "ValueSet for diagnosis type codes."
* ^status = #active
* ^experimental = false
* include codes from system DiagnosisTypeCS

ValueSet: AdjudicationVS
Id: adjudication-vs
Title: "Adjudication ValueSet"
Description: "ValueSet for adjudication result category codes."
* ^status = #active
* ^experimental = false
* include codes from system AdjudicationCS


ValueSet: ClaimCareTeamRoleVS
Id: claim-care-team-role-vs
Title: "Claim Care Team Role ValueSet"
Description: "ValueSet for the role of a care team member in a claim (MOH-Kenya OCL: CLAIM-CARE-TEAM-ROLE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimCareTeamRoleCS
