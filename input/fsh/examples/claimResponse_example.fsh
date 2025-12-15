Instance: ClaimResponseSentBackExample
InstanceOf: EClaimsClaimResponse
Usage: #example
Title: "Example ClaimResponse - Sent Back"
Description: "An example of a ClaimResponse returned to the provider for surveillance review."

* id = "8e0e3d44-4b7a-47d6-8b82-39fa646f8088"
* status = #active
* outcome = #complete
* use = #claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* created = "2025-10-07T18:47:22+00:00"

* extension[claimState].valueCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-state"
* extension[claimState].valueCodeableConcept.coding.code = #sent-back
* extension[claimState].valueCodeableConcept.coding.display = "Returned Back"

* patient = Reference(Patient/example) 
* insurer = Reference(Organization/sha-insurer)
* request = Reference(Claim/ae044c1d-9ecb-4294-be9b-0702e7892596)

* request.reference = "Claim/ae044c1d-9ecb-4294-be9b-0702e7892596"
* insurer.display = "Social Health Authority"

* item[0].itemSequence = 1
* item[0].adjudication[0].category.text = "benefit"
* item[0].adjudication[0].reason.text = "Auto Approved."
* item[0].adjudication[0].amount.value = 11200
* item[0].adjudication[0].amount.currency = #KES

* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
* total[0].amount.value = 11200
* total[0].amount.currency = #KES

* processNote[0].number = 1
* processNote[0].type = #display
* processNote[0].text = "medical cases"

* processNote[1].number = 2
* processNote[1].type = #display
* processNote[1].text = "For surveillance review"