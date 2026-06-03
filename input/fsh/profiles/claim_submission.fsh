Profile: KenyaClaimSubmission
Parent: Claim
Id: ke-eclaims-claimsubmission
Title: "Claim Submission"
Description: """
This is the final request for payment sent after services are delivered.
"""

* insert KenyaClaimBaseRules

* use = #claim
* total 1..1 MS
* extension contains PatientInvoice named patientInvoice 1..1 MS

* related 0..* MS
* related.relationship 1..1 MS
* related.relationship = https://nshr-uat.sha.go.ke/fhir/CodeSystem/related-claim-relationship-cs#prior
* related.claim 1..1 MS