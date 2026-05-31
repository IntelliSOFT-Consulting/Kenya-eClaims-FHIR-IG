Profile: EClaimsProvenance
Parent: Provenance
Id: ke-eclaims-provenance
Title: "eClaims Provenance Profile"
Description: "This profile defines constraints on the Provenance resource for use within the Kenya eClaims Implementation Guide. It tracks the origin, authorship, and handling of claims, preauthorizations, and related clinical resources submitted to the Social Health Authority."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.tag from http://hl7.org/fhir/ValueSet/common-tags (required)

* implicitRules 0..1

// Target — the resource(s) this provenance record describes
* target 1..* MS
* target only Reference(KenyaClaimBase or EClaimsClaimResponse or EClaimsPatient or EClaimsOrganization or EClaimsPractitioner)
* target.reference 1..1 MS

// Timing
* recorded 1..1 MS

// Reason for the activity
* reason 0..* MS
* insert CodeableConceptRule(reason, 0..1, MS)
* reason from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse (required)

// Activity type (what happened)
* activity 0..1 MS
* insert CodeableConceptRule(activity, 0..1, MS)
* activity from http://hl7.org/fhir/ValueSet/provenance-activity-type (required)

// Agent — who was involved
* agent 1..* MS
* agent.type 0..1 MS
* insert CodeableConceptRule(agent.type, 0..1, MS)
* agent.type from http://hl7.org/fhir/ValueSet/provenance-agent-type (required)
* agent.role 0..* MS
* insert CodeableConceptRule(agent.role, 0..1, MS)
* agent.role from http://hl7.org/fhir/ValueSet/security-role-type (required)
* agent.who 1..1 MS
* agent.who only Reference(EClaimsPractitioner or EClaimsOrganization or EClaimsPatient)
* agent.who.reference 1..1 MS
* agent.who.display 1..1 MS

// Entity — data used or referenced
* entity 0..* MS
* entity.role 1..1 MS
* entity.what 1..1 MS
* entity.what.reference 1..1 MS
