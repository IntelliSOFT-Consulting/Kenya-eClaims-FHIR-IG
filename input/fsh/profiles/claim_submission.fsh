Profile: KenyaClaimSubmission
Parent: KenyaClaimBase
Id: kenya-claim-submission
Title: "Claim Submission"
Description: """
This is the final request for payment sent after services are delivered.
"""

* use = #claim
* total 1..1 MS
* extension contains PatientInvoice named patientInvoice 1..1 MS

* related 0..* MS
* related.relationship 1..1 MS
* related.relationship = https://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type#pre-auth
* related.claim 1..1 MS