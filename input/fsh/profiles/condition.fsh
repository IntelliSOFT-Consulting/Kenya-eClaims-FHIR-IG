Profile: EClaimsCondition
Parent: Condition
Id: ke-eclaims-condition
Title: "eClaims Condition/Diagnosis Profile"
Description: "This profile defines constraints on the Condition resource for use within the Kenya eClaims Implementation Guide. It represents a clinical diagnosis or problem associated with a patient's healthcare encounter."

* implicitRules 0..1

// Identifier
* insert IdentifierRequiredRule(identifier, 1..*)

// Clinical status — required, bound to MOH-Kenya ValueSet
* clinicalStatus 1..1 MS
* insert CodeableConceptRule(clinicalStatus, 1..1, MS)
* clinicalStatus from ConditionClinicalStatusVS (required)

// Verification status — required, bound to MOH-Kenya ValueSet
* verificationStatus 1..1 MS
* insert CodeableConceptRule(verificationStatus, 1..1, MS)
* verificationStatus from ConditionVerificationStatusVS (required)

// Category — required
* category 1..* MS
* insert CodeableConceptRule(category, 1..1, MS)
* category from ConditionCategoryVS (required)

// Severity — local ValueSet (no SNOMED CT)
* severity 0..1 MS
* insert CodeableConceptRule(severity, 0..1, MS)
* severity from ConditionSeverityVS (required)

// Code — the actual diagnosis
* code 1..1 MS
* insert CodeableConceptRule(code, 1..1, MS)
* code from ConditionCodesVS (required)

// Body site — bound to Kenya body site ValueSet
* bodySite 0..* MS
* insert CodeableConceptRule(bodySite, 0..1, MS)
* bodySite from KenyaBodySiteVS (required)

// Subject
* insert ReferenceRule(subject, EClaimsPatient, 1..1)

// Encounter
* insert ReferenceRule(encounter, EClaimsEncounter, 1..1)

// Onset
* onset[x] 1..1 MS

// Recorder
* insert ReferenceRule(recorder, EClaimsPractitioner, 1..1)
