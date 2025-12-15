Profile: EClaimsClaimResponse
Parent: ClaimResponse
Id: eClaims-claim-response
Title: "Kenya eClaims ClaimResponse Profile"
Description: "Profile for the response to a Claim or Preauthorization, including specific adjudication states and expiry logic."

* extension contains ClaimStateExtension named claimState 1..1 MS
* extension contains ClaimExpiryExtension named claimExpiry 0..1 MS

* status 1..1 MS
* status = #active (exactly) 
* outcome 1..1 MS
* outcome from http://hl7.org/fhir/ValueSet/remittance-outcome (required)

* use 1..1 MS
* type 1..1 MS
* insurer 1..1 MS
* request 1..1 MS 
* created 1..1 MS

* item 1..* MS
* item.itemSequence 1..1 MS
* item.adjudication 1..* MS
* item.adjudication.category 1..1 MS
* item.adjudication.amount 0..1 MS 
* item.adjudication.reason 0..1 MS

* total 0..* MS
* total.category 1..1 MS
* total.amount 1..1 MS
* total.amount.currency 1..1 MS

* processNote 0..* MS
* processNote.number 0..1 MS
* processNote.type 0..1 MS
* processNote.text 1..1 MS