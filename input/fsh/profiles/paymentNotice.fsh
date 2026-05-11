Profile: EClaimsPaymentNotice
Parent: PaymentNotice
Id: ke-eclaims-paymentnotice
Title: "eClaims Payment Notice Profile"
Description: "This profile defines constraints on the PaymentNotice resource for use within the Kenya eClaims Implementation Guide. It provides notice of a payment-related event, such as the issuance or receipt of funds for a healthcare claim, supporting financial reconciliation and tracking."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS

* implicitRules 0..1

// Identifier
* insert IdentifierRequiredRule(identifier, 1..*)

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)

// Created date
* created 1..1 MS

// Provider
* insert ReferenceRule(provider, EClaimsOrganization, 1..1)

// Payment reference
* payment 1..1 MS

// Payment date
* paymentDate 1..1 MS

// Payee
* insert ReferenceRule(payee, EClaimsOrganization, 1..1)

// Recipient
* recipient 1..1 MS
* recipient only Reference(EClaimsOrganization)

// Amount
* amount 1..1 MS
* amount.value 1..1 MS
* amount.currency 1..1 MS

// Payment status
* paymentStatus 1..1 MS
* insert CodeableConceptRule(paymentStatus, 1..1, MS)
* paymentStatus from http://hl7.org/fhir/ValueSet/payment-status (required)
