Profile: EClaimsPractitioner
Parent: Practitioner
Id: ke-eclaims-practitioner
Title: "eClaims Practitioner Profile"
Description: "This profile defines constraints on the Practitioner resource for use within the Kenya eClaims Implementation Guide. It represents a healthcare professional involved in claim processing or service delivery."

* implicitRules 0..1
* language from http://hl7.org/fhir/ValueSet/all-languages (preferred)

// Identifier
* insert IdentifierRequiredRule(identifier, 1..*)
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 0..1 MS
* insert CodeableConceptRule(identifier.type, 0..1, MS)
* identifier.type from IdentifierTypesVS (required)
* identifier.value 1..1 MS

* active 1..1 MS

// Name
* name 1..* MS
* name.use 0..1 MS
* name.use from http://hl7.org/fhir/ValueSet/name-use (required)
* name.family 1..1 MS
* name.given 1..* MS
* name.prefix 0..* MS

// Telecom
* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.system from http://hl7.org/fhir/ValueSet/contact-point-system (required)
* telecom.value 1..1 MS
* telecom.use 1..1 MS
* telecom.use from http://hl7.org/fhir/ValueSet/contact-point-use (required)

// Address
* address 0..* MS
* address.use 0..1 MS
* address.use from http://hl7.org/fhir/ValueSet/address-use (required)
* address.text 0..1
* address.city 0..1
* address.district 0..1
* address.state 0..1
* address.country 0..1

// Demographics
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* birthDate 1..1 MS
* communication from http://hl7.org/fhir/ValueSet/all-languages (preferred)

// Qualifications
* qualification 0..* MS
* insert CodeableConceptRule(qualification.code, 1..1, MS)
* qualification.code from http://terminology.hl7.org/ValueSet/v2-2.7-0360 (required)
* qualification.period 0..1 MS
* qualification.period.start 1..1 MS
* qualification.period.end 0..1
