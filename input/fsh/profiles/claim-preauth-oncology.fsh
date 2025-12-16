Profile: KenyaOncologyPreauth
Parent: KenyaClaimBase
Id: kenya-oncology-preauth
Title: "Oncology Preauthorization"
Description: """
This profile is for authorizing Cancer Treatment.
"""

// Must haves
* use = #preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
// * subType = OrgNameClaimTypeCS#ONCOLOGY

* extension contains CarcinomaStaging named carcinomaStaging 1..1 MS
* extension contains Metastases named metastases 1..1 MS
* extension contains TreatmentSetting named treatmentSetting 1..1 MS
* extension contains CostPerSession named costPerSession 1..1 MS