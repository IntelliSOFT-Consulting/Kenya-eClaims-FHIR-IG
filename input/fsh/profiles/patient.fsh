Profile: EClaimsPatient
Parent: Patient
Id: ke-eclaims-patient
Title: "eClaims Patient Profile"
Description: "This profile defines constraints on the Patient resource for use within the Kenya eClaims Implementation Guide. It represents a patient receiving healthcare services under the national insurance scheme."

* implicitRules 0..1
* language from http://hl7.org/fhir/ValueSet/all-languages (preferred)

// Identifier — must have at least one with system and value
* insert IdentifierRequiredRule(identifier, 1..*)
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 0..1 MS
* insert CodeableConceptRule(identifier.type, 0..1, MS)
* identifier.type from IdentifierTypesVS (required)
* identifier.value 1..1 MS

// Name
* name 1..* MS
* name.use 0..1 MS
* name.use from http://hl7.org/fhir/ValueSet/name-use (required)
* name.text 0..1
* name.family 1..1 MS
* name.given 1..* MS

// Telecom
* telecom 1..* MS
* telecom.system 1..1 MS
* telecom.system from http://hl7.org/fhir/ValueSet/contact-point-system (required)
* telecom.value 1..1 MS
* telecom.use 0..1 MS
* telecom.use from http://hl7.org/fhir/ValueSet/contact-point-use (required)

// Demographics
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* birthDate 1..1 MS

// Address
* address 0..* MS
* address.use 0..1 MS
* address.use from http://hl7.org/fhir/ValueSet/address-use (required)
* address.city 0..1
* address.district 0..1
* address.state 0..1
* address.postalCode 0..1
* address.country 0..1

// Marital status
* maritalStatus 0..1 MS
* insert CodeableConceptRule(maritalStatus, 0..1, MS)
* maritalStatus from CivilStatusVS (required)

// Contact (next of kin)
* contact 1..* MS
* contact.relationship 0..* MS
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (required)
* contact.name 1..1 MS
* contact.telecom 1..* MS
* communication.language from http://hl7.org/fhir/ValueSet/all-languages (preferred)

// Deceased
* deceased[x] 0..1 MS

// Links
* link 0..* MS
* link.other 1..1 MS
* link.type 1..1 MS
