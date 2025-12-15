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

* insurance 1..* MS
* insurance.focal 1..1 MS
* insert ReferenceRule(insurance.coverage, EclaimsCoverage, 1..1)

* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.net 1..1 MS