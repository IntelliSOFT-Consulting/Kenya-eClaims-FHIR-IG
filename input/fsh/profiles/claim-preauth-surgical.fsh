Profile: KenyaSurgicalPreauth
Parent: Claim
Id: ke-eclaims-surgicalpreauth
Title: "Surgical Preauthorization"
Description: """
This profile covers invasive procedures requiring a theatre or sterile setting.
"""

* insert KenyaClaimBaseRules

* use = #preauthorization
* type = https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs#institutional

* extension contains AnaesthesiaType named anaesthesiaType 1..1 MS
* extension contains ChiefComplaint named chiefComplaint 1..1 MS
* extension contains ClinicalIndications named clinicalIndications 1..1 MS
* extension contains VitalSigns named vitalSigns 0..1 MS