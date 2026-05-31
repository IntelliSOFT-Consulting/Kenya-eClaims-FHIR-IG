
ValueSet: ConditionClinicalStatusVS
Id: eclaims-condition-clinical-status-vs
Title: "Condition Clinical Status ValueSet"
Description: "ValueSet for condition clinical status codes (MOH-Kenya OCL: CONDITION-CLINICAL-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system ConditionClinicalStatusCS


ValueSet: ConditionVerificationStatusVS
Id: eclaims-condition-verification-status-vs
Title: "Condition Verification Status ValueSet"
Description: "ValueSet for condition verification status codes (MOH-Kenya OCL: CONDITION-VERIFICATION-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system ConditionVerificationStatusCS


ValueSet: ConditionCategoryVS
Id: eclaims-condition-category-vs
Title: "Condition Category ValueSet"
Description: "ValueSet for condition category codes (MOH-Kenya OCL: CONDITION-CATEGORY)"
* ^status = #active
* ^experimental = false
* include codes from system ConditionCategoryCS

ValueSet: ConditionCodesVS
Id: eclaims-condition-codes-vs
Title: "Condition Codes ValueSet"
Description: "Codes for clinical conditions and diagnoses. References ICD-10 pending population of the MOH-KENYA CONDITION-CODES OCL collection."
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/icd-10


ValueSet: EncounterStatusVS
Id: claims-encounter-status-vs
Title: "Encounter Status ValueSet"
Description: "ValueSet for encounter status codes (MOH-Kenya OCL: ENCOUNTER-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system EncounterStatusCS


ValueSet: EpisodeOfCareStatusVS
Id: eclaims-episode-of-care-status-vs
Title: "Episode of Care Status ValueSet"
Description: "ValueSet for episode of care status codes (MOH-Kenya OCL: EPISODE-OF-CARE-STATUS)"
* ^status = #active
* ^experimental = false
* include codes from system EpisodeOfCareStatusCS


ValueSet: EpisodeOfCareTypeVS
Id: eclaims-episode-of-care-type-vs
Title: "Episode of Care Type ValueSet"
Description: "ValueSet for episode of care type codes (MOH-Kenya OCL: EPISODE-OF-CARE-TYPE)"
* ^status = #active
* ^experimental = false
* include codes from system EpisodeOfCareTypeCS


ValueSet: GenericProductsVS
Id: eclaims-generic-products-vs
Title: "Generic Products ValueSet"
Description: "ValueSet for generic pharmaceutical products (MOH-Kenya: GenericProducts)"
* ^status = #active
* ^experimental = false
* include codes from system GenericProductsCS
