Profile: EClaimsMedicationRequest
Parent: MedicationRequest
Id: eclaims-medication-request
Title: "eClaims Medication Request Profile"
Description: "This profile defines constraints on the MedicationRequest resource for use within the Kenya eClaims Implementation Guide. It represents a prescription or order for a medication for a patient."

* implicitRules 0..1

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status (required)

// Intent
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/medicationrequest-intent (required)

// Category
* category 1..* MS
* insert CodeableConceptRule(category, 1..1, MS)
* category from http://hl7.org/fhir/ValueSet/medicationrequest-category (required)

// Priority
* priority 0..1 MS
* priority from http://hl7.org/fhir/ValueSet/request-priority (required)

// Do not perform
* doNotPerform 0..1 MS

// Medication — local GenericProducts ValueSet (no SNOMED CT / RxNorm)
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* insert CodeableConceptRule(medicationCodeableConcept, 1..1, MS)
* medicationCodeableConcept from GenericProductsVS (required)

// Subject
* insert ReferenceRule(subject, EClaimsPatient, 1..1)
* subject.reference 1..1 MS
* subject.display 1..1 MS

// Encounter
* encounter 0..1 MS
* encounter only Reference(EClaimsEncounter)

// Supporting information
* supportingInformation 0..* MS

// Authored on
* authoredOn 1..1 MS

// Requester
* requester 1..1 MS
* requester.reference 1..1 MS
* requester.display 1..1 MS

// Reason code — local ConditionCodes (no SNOMED CT)
* reasonCode 1..* MS
* insert CodeableConceptRule(reasonCode, 1..1, MS)
* reasonCode from ConditionCodesVS (required)

// Reason reference
* reasonReference 0..* MS

// Note
* note 0..* MS

// Dosage instruction
* dosageInstruction 1..* MS
* dosageInstruction.text 1..1 MS
* dosageInstruction.timing 0..1 MS
* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.route 0..1 MS
* insert CodeableConceptRule(dosageInstruction.route, 0..1, MS)
* dosageInstruction.doseAndRate 0..* MS
* dosageInstruction.doseAndRate.dose[x] 0..1 MS
* dosageInstruction.doseAndRate.rate[x] 0..1 MS

// Dispense request
* dispenseRequest 0..1 MS
* dispenseRequest.validityPeriod 0..1 MS
* dispenseRequest.validityPeriod.start 1..1 MS
* dispenseRequest.validityPeriod.end 1..1 MS
* dispenseRequest.numberOfRepeatsAllowed 1..1 MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity.value 1..1 MS
* dispenseRequest.quantity.unit 1..1 MS
* dispenseRequest.quantity.system 1..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 MS

// Substitution
* substitution 0..1 MS
* substitution.allowed[x] 1..1 MS
* substitution.reason 0..1 MS
* insert CodeableConceptRule(substitution.reason, 0..1, MS)
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason (required)

// Prior prescription, detected issue, event history
* priorPrescription 0..1 MS
* detectedIssue 0..* MS
* eventHistory 0..* MS
