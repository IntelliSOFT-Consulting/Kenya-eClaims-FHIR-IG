Profile: KenyaImagingPreauth
Parent: KenyaClaimBase
Id: ke-eclaims-imagingpreauth
Title: "Imaging Preauthorization"
Description: """
This profile is for authorizing high-cost Diagnostic Imaging.
"""

* use = #preauthorization
* type = ClaimTypeCS#institutional "Institutional"
// * subType = OrgNameClaimTypeCS#IMAGING

// Must haves
* extension contains ClinicalIndications named clinicalIndications 1..1 MS
* extension contains Investigations named investigations 1..1 MS
