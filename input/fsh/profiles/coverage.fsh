Profile: EclaimsCoverage
Parent: Coverage
Id: eclaims-coverage
Title: "Coverage Profile"
Description: "This profile defines constraints on the Coverage resource for use within the Kenya eClaims Implementation Guide. It represents insurance coverage details applicable to beneficiaries under the Social Health Authority and related schemes."

* identifier 1..* MS
* identifier.use 1..1 MS
* identifier.value 1..1 MS

* status 1..1 MS

* beneficiary 1..1 MS
* beneficiary only Reference(EclaimsPatient)

