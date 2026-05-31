Profile: EClaimsClaimResponse
Parent: ClaimResponse
Id: ke-eclaims-claimresponse
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

* subType 0..1 MS
* insert CodeableConceptRule(subType, 0..1, MS)
* subType from http://hl7.org/fhir/ValueSet/claim-subtype (required)

* payeeType 0..1 MS
* insert CodeableConceptRule(payeeType, 0..1, MS)
* payeeType from http://hl7.org/fhir/ValueSet/payeetype (required)

* fundsReserve 0..1 MS
* insert CodeableConceptRule(fundsReserve, 0..1, MS)
* fundsReserve from http://hl7.org/fhir/ValueSet/fundsreserve (required)

* formCode 0..1 MS
* insert CodeableConceptRule(formCode, 0..1, MS)
* formCode from http://hl7.org/fhir/ValueSet/forms (required)

* item 1..* MS
* item.itemSequence 1..1 MS
* item.adjudication 1..* MS
* item.adjudication.category 1..1 MS
* insert CodeableConceptRule(item.adjudication.category, 1..1, MS)
* item.adjudication.category from http://hl7.org/fhir/ValueSet/adjudication (required)
* item.adjudication.amount 0..1 MS
* item.adjudication.reason 0..1 MS
* insert CodeableConceptRule(item.adjudication.reason, 0..1, MS)
* item.adjudication.reason from http://hl7.org/fhir/ValueSet/adjudication-reason (required)

* addItem 0..* MS
* addItem.productOrService 1..1 MS
* insert CodeableConceptRule(addItem.productOrService, 1..1, MS)
* addItem.productOrService from SocialHealthAuthorityInterventionsVS (required)
* addItem.modifier 0..* MS
* insert CodeableConceptRule(addItem.modifier, 0..1, MS)
* addItem.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* addItem.programCode 0..* MS
* insert CodeableConceptRule(addItem.programCode, 0..1, MS)
* addItem.programCode from http://hl7.org/fhir/ValueSet/ex-program-code (required)
* addItem.location[x] from http://hl7.org/fhir/ValueSet/service-place (required)
* addItem.bodySite 0..1 MS
* insert CodeableConceptRule(addItem.bodySite, 0..1, MS)
* addItem.bodySite from BodySiteVS (required)
* addItem.subSite 0..* MS
* insert CodeableConceptRule(addItem.subSite, 0..1, MS)
* addItem.subSite from SubSiteVS (required)
* addItem.detail 0..* MS
* addItem.detail.productOrService 1..1 MS
* insert CodeableConceptRule(addItem.detail.productOrService, 1..1, MS)
* addItem.detail.productOrService from SocialHealthAuthorityInterventionsVS (required)
* addItem.detail.modifier 0..* MS
* insert CodeableConceptRule(addItem.detail.modifier, 0..1, MS)
* addItem.detail.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* addItem.detail.subDetail 0..* MS
* addItem.detail.subDetail.productOrService 1..1 MS
* insert CodeableConceptRule(addItem.detail.subDetail.productOrService, 1..1, MS)
* addItem.detail.subDetail.productOrService from SocialHealthAuthorityInterventionsVS (required)
* addItem.detail.subDetail.modifier 0..* MS
* insert CodeableConceptRule(addItem.detail.subDetail.modifier, 0..1, MS)
* addItem.detail.subDetail.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)

* payment 0..1 MS
* payment.type 1..1 MS
* insert CodeableConceptRule(payment.type, 1..1, MS)
* payment.type from http://hl7.org/fhir/ValueSet/ex-paymenttype (required)
* payment.adjustmentReason 0..1 MS
* insert CodeableConceptRule(payment.adjustmentReason, 0..1, MS)
* payment.adjustmentReason from http://hl7.org/fhir/ValueSet/payment-adjustment-reason (required)

* error 0..* MS
* error.code 1..1 MS
* insert CodeableConceptRule(error.code, 1..1, MS)
* error.code from http://hl7.org/fhir/ValueSet/adjudication-error (required)

* total 0..* MS
* total.category 1..1 MS
* insert CodeableConceptRule(total.category, 1..1, MS)
* total.category from http://hl7.org/fhir/ValueSet/adjudication (required)
* total.amount 1..1 MS
* total.amount.currency 1..1 MS

* processNote 0..* MS
* processNote.number 0..1 MS
* processNote.type 0..1 MS
* processNote.text 1..1 MS