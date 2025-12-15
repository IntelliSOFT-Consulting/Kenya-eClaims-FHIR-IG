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
