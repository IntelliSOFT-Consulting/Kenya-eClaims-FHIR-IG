
ValueSet: ClaimStatusVS
Id: eclaim-status-vs
Title: "Claim Status ValueSet"
Description: "ValueSet for claim status codes (MOH-Kenya OCL: CLAIM-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimStatusCS


ValueSet: ClaimTypeVS
Id: eclaim-type-vs
Title: "Claim Type ValueSet"
Description: "ValueSet for claim type codes (MOH-Kenya OCL: CLAIM-TYPE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimTypeCS


ValueSet: ClaimSubTypeVS
Id: eclaim-subtype-vs
Title: "Claim Subtype ValueSet"
Description: "ValueSet for claim subtype codes (MOH-Kenya OCL: CLAIM-SUBTYPE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimSubTypeCS


ValueSet: ClaimUseVS
Id: eclaim-use-vs
Title: "Claim Use ValueSet"
Description: "ValueSet for intended use of a claim (MOH-Kenya OCL: CLAIM-USE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimUseCS


ValueSet: ClaimCareTeamRoleVS
Id: eclaim-care-team-role-vs
Title: "Claim Care Team Role ValueSet"
Description: "ValueSet for the role of a care team member in a claim (MOH-Kenya OCL: CLAIM-CARE-TEAM-ROLE)"
* ^status = #active
* ^experimental = false
* include codes from system ClaimCareTeamRoleCS


ValueSet: ProviderQualificationVS
Id: eclaims-provider-qualification-vs
Title: "Provider Qualification ValueSet"
Description: "Qualification and credential codes for healthcare providers in Kenya eClaims, drawn from the local ProviderQualificationCS."
* ^status = #active
* ^experimental = false
* include codes from system ProviderQualificationCS


ValueSet: ClaimResponsePayeeTypeVS
Id: eclaims-claimresponse-payeetype-vs
Title: "ClaimResponse Payee Type ValueSet"
Description: "Non-experimental wrapper for payee type codes used in ClaimResponse adjudication."
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/payeetype


ValueSet: ClaimResponseFundsReserveVS
Id: eclaims-claimresponse-fundsreserve-vs
Title: "ClaimResponse Funds Reserve ValueSet"
Description: "Non-experimental wrapper for funds reserve codes indicating to whom excess funds belong."
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/fundsreserve


ValueSet: ClaimResponseFormsVS
Id: eclaims-claimresponse-forms-vs
Title: "ClaimResponse Forms ValueSet"
Description: "Non-experimental wrapper for printed or electronic form identifiers used with ClaimResponse."
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/forms-codes


ValueSet: ClaimResponseAdjudicationErrorVS
Id: eclaims-claimresponse-adjudication-error-vs
Title: "ClaimResponse Adjudication Error ValueSet"
Description: "Non-experimental wrapper for adjudication error codes returned in a ClaimResponse."
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/adjudication-error
