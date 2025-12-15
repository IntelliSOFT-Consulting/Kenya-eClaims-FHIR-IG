Profile: eClaimsClaimResponse
Parent: ClaimResponse
Id: eclaims-claimresponse
Title: "ClaimResponse Profile"
Description: "This profile defines constraints on the ClaimResponse resource for use within the Kenya eClaims Implementation Guide. It documents the adjudication results of a submitted claim, including approved amounts, payment information, and reasons for denial or adjustment, facilitating transparent claims settlement."

* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Kenya Ministry of Health"
* ^contact[0].name = "Kenya Health Informatics Team"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "interop@health.go.ke"

// * extension contains
//     http://uat-mis.apeiro-digital.com/fhir/StructureDefinition/claim-state-extension named claimStateExtension 0..1

// * extension[claimStateExtension].valueCodeableConcept from https://uat-mis.apeiro-digital.com/fhir/ValueSet/claim-state-vs (required)

* status 1..1 MS
* status = #active

* type 1..1 MS

* use 1..1 MS
* use = #claim

* request 0..1 MS

* outcome 1..1 MS
* outcome from http://hl7.org/fhir/ValueSet/remittance-outcome (required)

* item 0..* MS
* item.itemSequence 1..1 MS

* item.adjudication 1..* MS
* item.adjudication.amount 1..1

* total 0..*
* total.amount 1..1

* created 1..1
* created only dateTime

* insurer 1..1
* insurer only Reference(eClaimsOrganization)

* patient 1..1
* patient only Reference(eClaimsPatient)


Instance: KenyaClaimResponseExample
InstanceOf: eClaimsClaimResponse
Usage: #example
Title: "ClaimResponse - Example"
Description: "Represents An example ClaimResponse instance conforming to the Kenya Claim Profile"

* id = "a236b53e-0144-41f4-a3d9-99a3fed76c35"
* meta.versionId = "2"
* meta.lastUpdated = "2025-01-04T11:03:06+03:00"
* meta.source = "#e4fd6c167838fdfb"

* extension[+].url = "https://uat-mis.apeiro-digital.com/fhir/StructureDefinition/claim-state-extension"
* extension[=].valueCodeableConcept.coding[0].system = "https://uat-mis.apeiro-digital.com/fhir/CodeSystem/claim-state"
* extension[=].valueCodeableConcept.coding[0].code = #approved
* extension[=].valueCodeableConcept.coding[0].display = "Approved"

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional" // required
* use = #claim
* patient.reference = "Patient/example" // required
* created = "2025-01-04T11:00:00+03:00" // required
* insurer.reference = "Organization/insurer-example" // required
* request.reference = "Claim/f6dc7f9e-1558-4b92-adbd-447771c7b2f9"
* outcome = #complete

* item[0].itemSequence = 1
* item[0].adjudication[0].category.text = "benefit"
* item[0].adjudication[0].reason.text = "Auto Approved."
* item[0].adjudication[0].amount.value = 50.0
* item[0].adjudication[0].amount.currency = #KSH

* total[0].category.text = "submitted" // required
* total[0].amount.value = 50.0
* total[0].amount.currency = #KSH



