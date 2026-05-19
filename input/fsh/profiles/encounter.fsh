Profile: EClaimsEncounter
Parent: Encounter
Id: ke-eclaims-encounter
Title: "eClaims Encounter Profile"
Description: "This profile defines constraints on the Encounter resource for use within the Kenya eClaims Implementation Guide. It captures the healthcare interaction during which services are rendered and claims are generated."

* implicitRules 0..1

// Identifier
* insert IdentifierRequiredRule(identifier, 1..*)

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)

// Class
* class 1..1 MS
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)

// Service type
* serviceType 0..1 MS
* insert CodeableConceptRule(serviceType, 0..1, MS)

// Priority
* priority 0..1 MS
* insert CodeableConceptRule(priority, 0..1, MS)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)

// Subject
* insert ReferenceRule(subject, EClaimsPatient, 1..1)

// Period
* period 1..1 MS
* period.start 1..1 MS
* period.end 0..1

// Service provider
* insert ReferenceRule(serviceProvider, EClaimsOrganization, 1..1)
