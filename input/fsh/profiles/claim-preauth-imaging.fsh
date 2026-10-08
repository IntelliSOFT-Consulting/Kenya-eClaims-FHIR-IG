Profile: KenyaImagingPreauth
Parent: Claim
Id: ke-eclaims-imagingpreauth
Title: "Imaging Preauthorization"
Description: """
This profile is for authorizing high-cost Diagnostic Imaging.
"""

* insert KenyaClaimBaseRules

* use = #preauthorization
* type = https://fhir.dha.go.ke/terminology/CodeSystem/claim-type-cs#institutional

* extension contains ClinicalIndications named clinicalIndications 1..1 MS
* extension contains Investigations named investigations 1..1 MS