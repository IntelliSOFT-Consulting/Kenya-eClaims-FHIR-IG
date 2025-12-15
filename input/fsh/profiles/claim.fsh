Profile: EclaimsPreauthorizationClaim
Parent: Claim
Id: eclaims-preauth-claim
Title: "Preauthorization Claim Profile"
Description: "This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It supports preauthorization requests for inpatient and procedural services prior to claim submission."

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* status 1..1 MS
* use 1..1 MS

* type 1..1 MS
* type.coding.system 1..1 MS
* type.coding.code 1..1 MS
* type.coding.display 1..1 MS

* subType 0..1 MS
* subType.coding.code 1..1 MS
* subType.coding.system 1..1 MS
* subType.coding.display 1..1 MS

* patient 1..1 MS
* patient only Reference(EclaimsPatient)

* provider 1..1 MS
* provider only Reference(EclaimsProviderOrganization)

* billablePeriod 1..1 MS
* billablePeriod.start 1..1 MS
* billablePeriod.end 1..1 MS

* created 1..1 MS

* priority 1..1 MS
* priority.coding.system 1..1 MS
* priority.coding.code 1..1 MS
* priority.coding.display 1..1 MS

* related.claim.identifier.system 1..1 MS
* related.claim.identifier.value 1..1 MS

* insurance 1..* MS
* insurance.coverage only Reference(EclaimsCoverage)

