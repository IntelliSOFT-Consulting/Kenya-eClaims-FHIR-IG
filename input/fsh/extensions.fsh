Extension: ClaimStateExtension
Id: claim-state-extension
Title: "Claim Workflow State"
Description: "Tracks the specific state of the claim (e.g., Sent Back, Approved, surveillance)."
* ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-state-extension"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

Extension: ClaimExpiryExtension
Id: claim-expiry-extension
Title: "Preauthorization Expiry Date"
Description: "Indicates when the approved preauthorization expires."
* ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-expiry-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS