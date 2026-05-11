Profile: EClaimsEpisodeOfCare
Parent: EpisodeOfCare
Id: ke-eclaims-episodeofcare
Title: "eClaims Episode of Care Profile"
Description: "This profile defines constraints on the EpisodeOfCare resource for use within the Kenya eClaims Implementation Guide. It groups a set of related encounters and activities for a patient within a specific care program."

* implicitRules 0..1

// Status
* status 1..1 MS
* status from EpisodeOfCareStatusVS (required)

// Status history
* statusHistory 0..* MS
* statusHistory.status 1..1 MS
* statusHistory.status from EpisodeOfCareStatusVS (required)
* statusHistory.period 1..1 MS

// Type
* type 1..* MS
* insert CodeableConceptRule(type, 1..1, MS)
* type from EpisodeOfCareTypeVS (required)

// Diagnosis
* diagnosis 0..* MS
* insert ReferenceRule(diagnosis.condition, Condition, 1..1)
* diagnosis.role 0..1 MS
* insert CodeableConceptRule(diagnosis.role, 0..1, MS)
* diagnosis.role from http://hl7.org/fhir/ValueSet/diagnosis-role (required)

// Patient
* insert ReferenceRule(patient, EClaimsPatient, 1..1)

// Managing organization
* insert ReferenceRule(managingOrganization, EClaimsOrganization, 1..1)

// Period
* period 1..1 MS
* period.start 1..1 MS
* period.end 0..1

// Referral request
* referralRequest 0..* MS

// Care manager
* careManager 0..1 MS

// Team
* team 0..* MS
