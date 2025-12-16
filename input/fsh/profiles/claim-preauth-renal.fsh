Profile: KenyaRenalPreauth
Parent: KenyaClaimBase
Id: kenya-renal-preauth
Title: "Renal Preauthorization"
Description: """
This profile is for requesting authorization for renal dialysis sessions.
"""

* use = #preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
// * subType = OrgNameClaimTypeCS#RENAL

// Must haves
* extension contains SessionExpectedDate named sessionExpectedDate 1..1 MS
* extension[sessionExpectedDate] ^short = "Date of the dialysis session"

* extension contains ClinicalIndications named clinicalIndications 1..1 MS
* extension[clinicalIndications] ^short = "E.g. ESRD, Acute Kidney Injury"

* extension contains VitalSigns named vitalSigns 1..1 MS
* extension[vitalSigns] ^short = "Pre-dialysis vitals (BP, Weight)"