Profile: EclaimsPatient
Parent: Patient
Id: eclaims-patient
Title: "Patient Profile"
Description: "This profile defines constraints on the Patient resource for use within the Kenya eClaims Implementation Guide. It represents beneficiaries receiving healthcare services and for whom claims and preauthorizations are submitted."

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* name 1..* MS
* name.text 1..1 MS
* name.family 0..1 MS
* name.given 0..* MS

* gender 1..1 MS
* birthDate 1..1 MS
