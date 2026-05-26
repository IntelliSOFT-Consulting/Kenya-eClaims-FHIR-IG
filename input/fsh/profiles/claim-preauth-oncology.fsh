Profile: KenyaOncologyPreauth
Parent: KenyaClaimBase
Id: ke-eclaims-oncologypreauth
Title: "Oncology Preauthorization"
Description: """
This profile is for authorizing Cancer Treatment.
"""

// Must haves
* use = #preauthorization
* type = ClaimTypeCS#institutional "Institutional"
// * subType = OrgNameClaimTypeCS#ONCOLOGY

* extension contains CarcinomaStaging named carcinomaStaging 1..1 MS
* extension contains Metastases named metastases 1..1 MS
* extension contains TreatmentSetting named treatmentSetting 1..1 MS
* extension contains CostPerSession named costPerSession 1..1 MS
