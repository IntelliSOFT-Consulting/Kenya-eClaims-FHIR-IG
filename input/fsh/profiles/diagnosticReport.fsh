Profile: EClaimsDiagnosticReport
Parent: DiagnosticReport
Id: ke-eclaims-diagnosticreport
Title: "eClaims Diagnostic Report Profile"
Description: "This profile defines constraints on the DiagnosticReport resource for use within the Kenya eClaims Implementation Guide. It represents findings from diagnostic tests (lab, radiology, pathology) associated with a claim."

* implicitRules 0..1

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/diagnostic-report-status (required)

// Category
* category 1..* MS
* insert CodeableConceptRule(category, 1..1, MS)
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (required)

// Code — LOINC-based, not SNOMED CT
* code 1..1 MS
* insert CodeableConceptRule(code, 1..1, MS)
* code from http://hl7.org/fhir/ValueSet/report-codes (required)

// Subject
* insert ReferenceRule(subject, EClaimsPatient, 1..1)

// Encounter
* encounter 0..1 MS
* encounter only Reference(EClaimsEncounter)

// Effective
* effective[x] 1..1 MS

// Issued
* issued 0..1 MS

// Performer
* performer 1..* MS

// Results interpreter
* resultsInterpreter 0..* MS

// Results
* result 1..* MS

// Conclusion
* conclusion 0..1 MS

// Conclusion code — local ConditionCodes (no SNOMED CT)
* conclusionCode 0..* MS
* insert CodeableConceptRule(conclusionCode, 0..1, MS)
* conclusionCode from ConditionCodesVS (required)

// Presented form (attachments)
* presentedForm 0..* MS
