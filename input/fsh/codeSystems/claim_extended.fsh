
CodeSystem: ClaimStatusCS
Id: claim-status-cs
Title: "Claim Status Code System"
Description: "Codes for the status of a claim. Codes align with FHIR fm-status to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #draft "Draft"
* #active "Active"
* #cancelled "Cancelled"
* #entered-in-error "Entered in Error"


CodeSystem: ClaimTypeCS
Id: claim-type-cs
Title: "Claim Type Code System"
Description: "Codes for the type of claim. Codes align with FHIR claim-type to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #institutional "Institutional"
* #professional "Professional"
* #oral "Oral"
* #pharmacy "Pharmacy"
* #vision "Vision"


CodeSystem: ClaimSubTypeCS
Id: claim-subtype-cs
Title: "Claim Subtype Code System"
Description: "Kenya-specific codes for the subtype of claim (MOH-Kenya OCL: CLAIM-SUBTYPE)."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #day-case "Day Case"
* #rehabilitation "Rehabilitation"
* #inpatient "Inpatient"
* #outpatient "Outpatient"
* #emergency "Emergency"


CodeSystem: ClaimUseCS
Id: claim-use-cs
Title: "Claim Use Code System"
Description: "Codes for the intended use of a claim. Codes align with FHIR claim-use to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #claim "Claim"
* #preauthorization "Preauthorization"
* #predetermination "Predetermination"


CodeSystem: ClaimCareTeamRoleCS
Id: claim-care-team-role-cs
Title: "Claim Care Team Role Code System"
Description: "Codes for the role of a care team member in a claim (MOH-Kenya OCL: CLAIM-CARE-TEAM-ROLE)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #PRIMARY "Primary provider"
* #ASSIST "Assisting provider"
* #SUPERVISOR "Supervising provider"
* #ORDERING "Ordering provider"
* #REFERRING "Referring provider"
* #PERFORMING "Performing provider"


CodeSystem: ClaimStateCS
Id: claim-state-cs
Title: "Claim State Code System"
Description: "Codes for the specific workflow state of a claim in Kenya eClaims."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #sent-back "Sent Back"
* #approved "Approved"
* #canceled "Canceled"
* #pending "Pending"
* #under-review "Under Review"


CodeSystem: ClaimExpiryCS
Id: claim-expiry-cs
Title: "Claim Expiry Code System"
Description: "Codes for claim or preauthorization expiry types in Kenya eClaims."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #expiry-date "Expiry Date"
* #expired "Expired"
* #valid "Valid"
