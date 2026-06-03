Profile: KenyaOncologyPreauth
Parent: Claim
Id: ke-eclaims-oncologypreauth
Title: "Oncology Preauthorization"
Description: """
This profile is for authorizing Cancer Treatment.
"""

* insert KenyaClaimBaseRules

* use = #preauthorization
* type = https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs#institutional

* extension contains CarcinomaStaging named carcinomaStaging 1..1 MS
* extension contains Metastases named metastases 1..1 MS
* extension contains TreatmentSetting named treatmentSetting 1..1 MS
* extension contains CostPerSession named costPerSession 1..1 MS