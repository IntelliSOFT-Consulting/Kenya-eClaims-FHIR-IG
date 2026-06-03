Instance: ClaimResponseCanceledExample
InstanceOf: EClaimsClaimResponse
Usage: #example
Title: "Example ClaimResponse - Canceled"
Description: "An example of a Preauthorization that was canceled by request."

* id = "fd876fab-979d-4adb-8b32-46dff643b89f"
* status = #active
* outcome = #complete
* use = #preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* created = "2025-10-03T07:36:24+00:00"

* extension[claimExpiry].valueCodeableConcept.coding.system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-expiry-cs"
* extension[claimExpiry].valueCodeableConcept.coding.code = #expiry-date
* extension[claimExpiry].valueCodeableConcept.coding.display = "Expiry Date"

* patient = Reference(Patient/example) 
* insurer = Reference(Organization/sha-insurer)
* request = Reference(Claim/ae044c1d-9ecb-4294-be9b-0702e7892596)

* extension[claimState].valueCodeableConcept.coding.system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-state-cs"
* extension[claimState].valueCodeableConcept.coding.code = #canceled
* extension[claimState].valueCodeableConcept.coding.display = "Canceled"

* request.reference = "Claim/a7dcd571-d8a2-483a-8a45-e3c8bcbff8b8"

* item[0].itemSequence = 1
* item[0].adjudication[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/adjudication"
* item[0].adjudication[0].category.coding.code = #benefit
* item[0].adjudication[0].category.coding.display = "Benefit Amount"
* item[0].adjudication[0].category.text = "benefit"
* item[0].adjudication[0].amount.value = 11200
* item[0].adjudication[0].amount.currency = #KES
* item[0].adjudication[0].value = 0

* total[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/adjudication"
* total[0].category.coding.code = #benefit
* total[0].category.coding.display = "Benefit Amount"
* total[0].category.text = "benefit"
* total[0].amount.value = 11200
* total[0].amount.currency = #KES

* processNote[0].number = 1
* processNote[0].type = #display
* processNote[0].text = "cancelled as requested"