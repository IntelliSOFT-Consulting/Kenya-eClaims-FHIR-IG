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
* serviceType from http://hl7.org/fhir/ValueSet/service-type (required)

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

// Type
* type 0..* MS
* insert CodeableConceptRule(type, 0..1, MS)
* type from http://hl7.org/fhir/ValueSet/encounter-type (required)

// Hospitalization
* hospitalization 0..1 MS
* hospitalization.reAdmission 0..1 MS
* insert CodeableConceptRule(hospitalization.reAdmission, 0..1, MS)
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092 (required)
* hospitalization.dietPreference 0..* MS
* insert CodeableConceptRule(hospitalization.dietPreference, 0..1, MS)
* hospitalization.dietPreference from http://hl7.org/fhir/ValueSet/encounter-diet (required)
* hospitalization.dischargeDisposition 0..1 MS
* insert CodeableConceptRule(hospitalization.dischargeDisposition, 0..1, MS)
* hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (required)

// Location
* location 0..* MS
* location.physicalType 0..1 MS
* insert CodeableConceptRule(location.physicalType, 0..1, MS)
* location.physicalType from http://hl7.org/fhir/ValueSet/location-physical-type (required)

// Service provider
* insert ReferenceRule(serviceProvider, EClaimsOrganization, 1..1)
