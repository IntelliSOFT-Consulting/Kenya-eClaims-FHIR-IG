Profile: EClaimsOrganization
Parent: Organization
Id: eclaims-organization
Title: "eClaims Organization Profile"
Description: "This profile defines constraints on the Organization resource for use within the Kenya eClaims Implementation Guide. It represents healthcare providers, insurers, and other organizations involved in claim processing."

* implicitRules 0..1

// Identifier
* identifier 0..* MS
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 0..1 MS
* insert CodeableConceptRule(identifier.type, 0..1, MS)
* identifier.type from http://hl7.org/fhir/ValueSet/identifier-type (required)
* identifier.value 1..1 MS

* active 1..1 MS

// Type
* type 1..* MS
* insert CodeableConceptRule(type, 1..1, MS)
* type from http://hl7.org/fhir/ValueSet/organization-type (required)

* name 1..1 MS

// Address
* address 0..* MS
* address.use 0..1 MS
* address.use from http://hl7.org/fhir/ValueSet/address-use (required)
* address.city 1..1 MS
* address.district 1..1 MS
* address.state 1..1 MS
* address.country 0..1

// Contact
* contact 0..* MS
* contact.telecom 1..* MS
