Profile: KenyaSurgicalPreauth
Parent: KenyaClaimBase
Id: kenya-surgical-preauth
Title: "Surgical Preauthorization"
Description: """
This profile covers invasive procedures requiring a theatre or sterile setting.
"""

// Must haves
* use = #preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
// * subType = OrgNameClaimTypeCS#SURGICAL

* extension contains AnaesthesiaType named anaesthesiaType 1..1 MS

* extension contains ChiefComplaint named chiefComplaint 1..1 MS

* extension contains ClinicalIndications named clinicalIndications 1..1 MS

// Optional context
* extension contains VitalSigns named vitalSigns 0..1 MS