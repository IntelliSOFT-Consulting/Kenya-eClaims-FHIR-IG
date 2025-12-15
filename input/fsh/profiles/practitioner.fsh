Profile: EclaimsPractitioner
Parent: Practitioner
Id: eclaims-practitioner
Title: "Practitioner Profile"
Description: "This profile defines constraints on the Practitioner resource for use within the Kenya eClaims Implementation Guide. It identifies individual healthcare providers involved in patient care and claim-related activities, supporting professional attribution and accountability."

* active 1..1 MS
* gender 0..1 MS

* identifier 1..* MS
* identifier.use 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* name 1..* MS
* name.family 1..1 MS
* name.extension 1..* MS
* name.text 1..1 MS

* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS

* address 0..* MS
* address.text 1..1 MS


