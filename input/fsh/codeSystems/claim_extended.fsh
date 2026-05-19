
CodeSystem: ClaimStatusCS
Id: claim-status-cs
Title: "Claim Status Code System"
Description: "Codes for the status of a claim (MOH-Kenya OCL: CLAIM-STATUS)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #DRAFT "Draft"
* #ACTIVE "Active"
* #CANCELLED "Cancelled"
* #ENTERED-IN-ERROR "Entered in Error"


CodeSystem: ClaimTypeCS
Id: claim-type-cs
Title: "Claim Type Code System"
Description: "Codes for the type of claim (MOH-Kenya OCL: CLAIM-TYPE)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #INSTITUTIONAL "Institutional"
* #PROFESSIONAL "Professional"
* #ORAL "Oral"
* #PHARMACY "Pharmacy"
* #VISION "Vision"


CodeSystem: ClaimSubTypeCS
Id: claim-subtype-cs
Title: "Claim Subtype Code System"
Description: "Codes for the subtype of claim (MOH-Kenya OCL: CLAIM-SUBTYPE)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #DAY-CASE "Day Case"
* #REHABILITATION "Rehabilitation"
* #INPATIENT "Inpatient"
* #OUTPATIENT "Outpatient"
* #EMERGENCY "Emergency"


CodeSystem: ClaimUseCS
Id: claim-use-cs
Title: "Claim Use Code System"
Description: "Codes for the intended use of a claim (MOH-Kenya OCL: CLAIM-USE)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #CLAIM "Claim"
* #PREAUTHORIZATION "Preauthorization"
* #PREDETERMINATION "Predetermination"


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
