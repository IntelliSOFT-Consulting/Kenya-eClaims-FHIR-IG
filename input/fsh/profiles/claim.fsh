Profile: EclaimsPreauthorizationClaim
Parent: Claim
Id: eclaims-preauth-claim
Title: "Preauthorization Claim Profile"
Description: "This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It supports preauthorization requests for inpatient and procedural services prior to claim submission."

* insert IdentifierRequiredRule(identifier, 1..*)

* status 1..1 MS
* use 1..1 MS

* insert CodeableConceptRule(type, 1..1, MS)

* insert CodeableConceptRule(subType, 0..1, MS)

* insert ReferenceRule(patient, Patient, 1..1)

* insert ReferenceRule(provider, Organization, 1..1)

* billablePeriod 1..1 MS
* billablePeriod.start 1..1 MS
* billablePeriod.end 1..1 MS

* created 1..1 MS

* insert CodeableConceptRule(priority, 1..1, MS)

* insert IdentifierRequiredRule(related.claim.identifier, 1..1)
* insert CodeableConceptRule(related.relationship , 0..1 , MS)

* careTeam 0..1 MS
* careTeam.sequence 1..1 MS

* insert ReferenceRule(careTeam.provider,  Practitioner, 1..1)

* insurance 1..* MS
* insurance.focal 1..1 MS
* insert ReferenceRule(insurance.coverage, EclaimsCoverage, 1..1)

* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.unitPrice.value 1..1
* item.unitPrice.currency 1..1
* item.net 1..1 MS

* total 1..1 MS
* total.value 1..1
* total.currency 1..1


// ----------------------
// Supporting Information (Attachments)
// ----------------------

* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS

* insert CodeableConceptRule(supportingInfo.category, 1..1, MS)
* supportingInfo.value[x] 1..1 MS
* supportingInfo.value[x] only Attachment

* supportingInfo.valueAttachment.contentType 1..1 MS
* supportingInfo.valueAttachment.language 0..1
* supportingInfo.valueAttachment.url 1..1 MS
* supportingInfo.valueAttachment.size 0..1
* supportingInfo.valueAttachment.title 0..1
* supportingInfo.valueAttachment.creation 0..1

// // ----------------------
// // Diagnosis
// // ----------------------
* diagnosis 0..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* insert CodeableConceptRule(diagnosis.diagnosisCodeableConcept, 1..1, MS)

// // ----------------------
// // Insurance
// // ----------------------
* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS

* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.category, 1..1, MS)

* insert CodeableConceptRule(item.productOrService, 1..1, MS)

* item.serviced[x] 1..1 MS
* item.serviced[x] only Period
* item.servicedPeriod.start 1..1
* item.servicedPeriod.end 1..1



Instance: EclaimsPreauthClaimExample
InstanceOf: EclaimsPreauthorizationClaim
Title: "Example Preauthorization Claim"
Description: "An example preauthorization claim for an inpatient procedural service."

* status = #active
* use = #preauthorization

// ----------------------
// Identifiers
// ----------------------
* identifier[0].system = "https://fhir.sha.go.ke/fhir/Claim"
* identifier[0].value = "PREAUTH-2025-0001"

// ----------------------
// Type & SubType
// ----------------------
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* type.coding.display = "Institutional"

* subType.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-subtype"
* subType.coding.code = #preauth
* subType.coding.display = "Preauthorization"

// ----------------------
// Patient & Provider
// ----------------------
* patient.reference = "Patient/PAT-001"
* provider.reference = "Organization/FID-47-109332-4"

// ----------------------
// Billable Period
// ----------------------
* billablePeriod.start = "2025-11-29"
* billablePeriod.end = "2026-02-27"

// ----------------------
// Created & Priority
// ----------------------
* created = "2025-11-29T15:20:00+03:00"

* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #urgent
* priority.coding.display = "Urgent"

// ----------------------
// Related Claim
// ----------------------
* related[0].claim.identifier.system = "https://fhir.sha.go.ke/fhir/Claim"
* related[0].claim.identifier.value = "CLAIM-2025-0009"
* related[0].relationship.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type"
* related[0].relationship.coding.code = #claim
* related[0].relationship.coding.display = "claim"
* related[0].relationship.text = "Claim"

// ----------------------
// Care Team
// ----------------------
* careTeam.sequence = 1
* careTeam.provider.reference = "Practitioner/PUID-0009504-3"

// ----------------------
// Insurance
// ----------------------
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage.reference = "Coverage/CR1569230130821-1-sha-coverage"

// ----------------------
// Diagnosis
// ----------------------
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/terminology/CodeSystem/icd-11"
* diagnosis[0].diagnosisCodeableConcept.coding.code = #NC72.5
* diagnosis[0].diagnosisCodeableConcept.coding.display = "Fracture of shaft of femur"

// ----------------------
// Claim Item
// ----------------------
* item[0].sequence = 1

* item[0].category.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/category-codes"
* item[0].category.coding.code = #procedure
* item[0].category.coding.display = "Procedure"

* item[0].productOrService.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/intervention-codes"
* item[0].productOrService.coding.code = #SHA-19-444
* item[0].productOrService.coding.display = "Open reduction and internal fixation: Femur"

* item[0].servicedPeriod.start = "2025-11-29"
* item[0].servicedPeriod.end = "2026-02-27"

* item[0].quantity.value = 1

* item[0].unitPrice.value = 145600
* item[0].unitPrice.currency = #KES

* item[0].net.value = 145600
* item[0].net.currency = #KES

// ----------------------
// Supporting Information (Attachment)
// ----------------------
* supportingInfo[0].sequence = 1
* supportingInfo[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[0].category.coding.code = #attachment
* supportingInfo[0].category.coding.display = "Attachment"

* supportingInfo[0].valueAttachment.contentType = #application/pdf
* supportingInfo[0].valueAttachment.language = #en
* supportingInfo[0].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/preauth-request.pdf"
* supportingInfo[0].valueAttachment.size = 180894
* supportingInfo[0].valueAttachment.title = "Preauthorization Request Document"
* supportingInfo[0].valueAttachment.creation = "2025-11-29T15:17:07+03:00"

// ----------------------
// Total
// ----------------------
* total.value = 145600
* total.currency = #KES

