Profile: KenyaImagingPreauth
Parent: KenyaClaimBase
Id: kenya-imaging-preauth
Title: "Imaging Preauthorization"
Description: """
This profile is for authorizing high-cost Diagnostic Imaging.
"""

* use = #preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
// * subType = OrgNameClaimTypeCS#IMAGING

// Must haves
* extension contains ClinicalIndications named clinicalIndications 1..1 MS
* extension contains Investigations named investigations 1..1 MS