Profile: EclaimsPreauthorizationClaim
Parent: Claim
Id: eclaims-preauth-claim
Title: "Preauthorization Claim Profile"
Description: "This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It supports preauthorization requests for inpatient and procedural services prior to claim submission."

* id 1..1 MS
* meta.profile 1..* MS

* status 1..1 MS
* type 1..1 MS
* use 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* provider 1..1 MS

// ----------------------
// Related Claims
// ----------------------
* related 0..* MS
* related.claim 1..1 MS
* related.claim.identifier 1..1 MS
* related.claim.identifier.system 1..1 MS
* related.claim.identifier.value 1..1 MS
* related.relationship 1..1 MS
* related.relationship.coding 1..* MS
* related.relationship.coding.system 1..1 MS
* related.relationship.coding.code 1..1 MS
* related.relationship.text 0..1 MS

// ----------------------
// Care Team
// ----------------------
* careTeam 0..* MS
* careTeam.sequence 1..1 MS
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(Practitioner)
* careTeam.provider.reference 1..1 MS
* careTeam.provider.display 0..1 MS

// ----------------------
// Supporting Information (Attachments)
// ----------------------
* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* supportingInfo.category.coding 1..* MS
* supportingInfo.category.coding.system 1..1 MS
* supportingInfo.category.coding.code 1..1 MS
* supportingInfo.value[x] 1..1 MS
* supportingInfo.value[x] only Attachment

* supportingInfo.valueAttachment.contentType 1..1 MS
* supportingInfo.valueAttachment.language 0..1 MS
* supportingInfo.valueAttachment.url 1..1 MS
* supportingInfo.valueAttachment.size 0..1 MS
* supportingInfo.valueAttachment.title 0..1 MS
* supportingInfo.valueAttachment.creation 0..1 MS

// ----------------------
// Diagnosis
// ----------------------
* diagnosis 0..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosisCodeableConcept.coding 1..* MS
* diagnosis.diagnosisCodeableConcept.coding.system 1..1
* diagnosis.diagnosisCodeableConcept.coding.code 1..1
* diagnosis.diagnosisCodeableConcept.coding.display 0..1

// ----------------------
// Insurance
// ----------------------
* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insurance.coverage 1..1 MS
* insurance.coverage only Reference(Coverage)
* insurance.coverage.reference 1..1

// ----------------------
// Claim Items
// ----------------------
* item 1..* MS
* item.sequence 1..1 MS
* item.category 1..1 MS
* item.category.coding 1..* MS
* item.category.coding.system 1..1
* item.category.coding.code 1..1
* item.productOrService 1..1 MS
* item.productOrService.coding 1..* MS
* item.productOrService.coding.system 1..1
* item.productOrService.coding.code 1..1
* item.serviced[x] 1..1 MS
* item.serviced[x] only Period
* item.servicedPeriod.start 1..1
* item.servicedPeriod.end 1..1
* item.quantity 0..1
* item.quantity.value 1..1
* item.unitPrice 0..1
* item.unitPrice.value 1..1
* item.unitPrice.currency 1..1
* item.factor 0..1
* item.net 1..1 MS
* item.net.value 1..1
* item.net.currency 1..1

// ----------------------
// Total
// ----------------------
* total 1..1 MS
* total.value 1..1
* total.currency 1..1

