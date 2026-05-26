
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

CodeSystem: ProcessPriorityCS
Id: process-priority-cs
Title: "Process Priority Code System"
Description: "Codes for financial processing priority. Codes align with FHIR processpriority to avoid dependencies on draft core artifacts."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #stat "Immediate"
* #normal "Normal"
* #deferred "Deferred"

CodeSystem: PayeeTypeCS
Id: payee-type-cs
Title: "Payee Type Code System"
Description: "Codes for the party to be reimbursed. Codes align with FHIR payeetype."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #subscriber "Subscriber"
* #provider "Provider"
* #beneficiary "Beneficiary"
* #other "Other"

CodeSystem: ClaimInformationCategoryCS
Id: claim-information-category-cs
Title: "Claim Information Category Code System"
Description: "Codes for claim supporting information categories. Codes align with FHIR claiminformationcategory."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #info "Information"
* #discharge "Discharge"
* #onset "Onset"
* #related "Related Services"
* #exception "Exception"
* #material "Materials Forwarded"
* #attachment "Attachment"
* #missingtooth "Missing Tooth"
* #prosthesis "Prosthesis"
* #other "Other"
* #hospitalized "Hospitalized"
* #employmentimpacted "EmploymentImpacted"
* #externalcause "External Cause"
* #patientreasonforvisit "Patient Reason for Visit"

CodeSystem: DiagnosisTypeCS
Id: diagnosis-type-cs
Title: "Diagnosis Type Code System"
Description: "Codes for diagnosis type. Codes align with FHIR ex-diagnosistype."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #admitting "Admitting Diagnosis"
* #clinical "Clinical Diagnosis"
* #differential "Differential Diagnosis"
* #discharge "Discharge Diagnosis"
* #laboratory "Laboratory Diagnosis"
* #nursing "Nursing Diagnosis"
* #prenatal "Prenatal Diagnosis"
* #principal "Principal Diagnosis"
* #radiology "Radiology Diagnosis"
* #remote "Remote Diagnosis"
* #retrospective "Retrospective Diagnosis"
* #self "Self Diagnosis"

CodeSystem: AdjudicationCS
Id: adjudication-cs
Title: "Adjudication Code System"
Description: "Codes for adjudication result categories. Codes align with FHIR adjudication."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #submitted "Submitted Amount"
* #copay "CoPay"
* #eligible "Eligible Amount"
* #deductible "Deductible"
* #unallocdeduct "Unallocated Deductible"
* #eligpercent "Eligible %"
* #tax "Tax"
* #benefit "Benefit Amount"


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
