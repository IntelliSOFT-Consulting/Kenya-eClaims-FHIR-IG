Profile: EClaimsMedicationStatement
Parent: MedicationStatement
Id: ke-eclaims-medicationstatement
Title: "eClaims Medication Statement Profile"
Description: "This profile defines constraints on the MedicationStatement resource for use within the Kenya eClaims Implementation Guide. It records information about a medication being taken by a patient."

* implicitRules 0..1

// Identifier
* identifier 0..* MS

// Based on
* basedOn 0..* MS

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-statement-status (required)

// Status reason — local ValueSet (no SNOMED CT)
* statusReason 0..* MS
* insert CodeableConceptRule(statusReason, 0..1, MS)
* statusReason from MedicationStatusReasonVS (required)

// Medication — local GenericProducts ValueSet (no SNOMED CT / RxNorm)
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* insert CodeableConceptRule(medicationCodeableConcept, 1..1, MS)
* medicationCodeableConcept from GenericProductsVS (required)

// Subject
* insert ReferenceRule(subject, EClaimsPatient, 1..1)

// Effective
* effective[x] 0..1 MS
* effectivePeriod 0..1 MS
* effectivePeriod.start 1..1 MS

// Reason code — local ConditionCodes (no SNOMED CT)
* reasonCode 1..* MS
* insert CodeableConceptRule(reasonCode, 1..1, MS)
* reasonCode from ConditionCodesVS (required)

// Reason reference
* reasonReference 1..* MS
