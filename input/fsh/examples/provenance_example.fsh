Instance: ClaimProvenanceExample
InstanceOf: EClaimsProvenance
Usage: #example
Title: "Example Provenance - Claim Submission"
Description: "An example of a Provenance record tracking the submission of an institutional claim to the Social Health Authority by a healthcare provider."

* id = "provenance-claim-submission-001"

* meta.profile = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-provenance"
* meta.tag.system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag.code = #actionable
* meta.tag.display = "Actionable"

// The claim resource this provenance record is about
* target[0].reference = "Claim/ae044c1d-9ecb-4294-be9b-0702e7892596"

// When this provenance record was created
* recorded = "2025-10-07T18:47:22+00:00"

// Reason — treatment
* reason[0].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* reason[0].coding.code = #TREAT
* reason[0].coding.display = "treatment"
* reason[0].text = "Institutional claim submitted for patient treatment"

// Activity — claim submission (create)
* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DataOperation"
* activity.coding.code = #CREATE
* activity.coding.display = "create"
* activity.text = "Claim Submission"

// Agent — the provider organisation that submitted the claim
* agent[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent[0].type.coding.code = #author
* agent[0].type.coding.display = "Author"
* agent[0].type.text = "Submitting Provider"
* agent[0].who.reference = "Organization/ORG-001"
* agent[0].who.display = "Nairobi General Hospital"

// Agent — the SHA system that received and recorded the claim
* agent[1].type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent[1].type.coding.code = #custodian
* agent[1].type.coding.display = "Custodian"
* agent[1].type.text = "SHA Receiving System"
* agent[1].who.reference = "Organization/sha-insurer"
* agent[1].who.display = "Social Health Authority"

// Entity — the patient record used in the claim (source role per FHIR R4 ProvenanceEntityRole)
* entity[0].role = #source
* entity[0].what.reference = "Patient/example"
