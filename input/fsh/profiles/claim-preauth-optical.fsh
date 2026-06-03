Profile: KenyaOpticalPreauth
Parent: Claim
Id: ke-eclaims-opticalpreauth
Title: "Optical Preauthorization"
Description: """
This profile is for Optical Services.
"""

* insert KenyaClaimBaseRules

* use = #preauthorization
* type = https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs#vision

* extension contains LensPrescription named lensPrescription 1..1 MS
* extension contains Replacement named replacement 1..1 MS
* extension contains ReasonForService named reasonForService 1..1 MS
* extension contains FrameAmount named frameAmount 0..1 MS
* extension contains LensAmount named lensAmount 0..1 MS
* extension contains EyeExamAmount named eyeExamAmount 0..1 MS
* extension contains ConsultationAmount named consultationAmount 0..1 MS