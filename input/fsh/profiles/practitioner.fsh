Profile: eClaimsPractitioner
Parent: Practitioner
Id: eclaims-practitioner
Title: "Practitioner Profile"
Description: "This profile defines constraints on the Practitioner resource for use within the Kenya eClaims Implementation Guide. It identifies individual healthcare providers involved in patient care and claim-related activities, supporting professional attribution and accountability."

* identifier 1..1 MS 
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.code 1..1 MS
* identifier.type.coding.display 1..1 MS
* identifier.type.text 1..1 MS
* identifier.value 1..1 MS
* identifier.use 1..1 MS 
* active 1..1 MS
* name 1..1 MS
* name.prefix 0..1 
* name.prefix ^short = "Practitioner Salutation"
* name.given 1..1 MS
* name.family 1..1 MS
* birthDate 1..1 MS
* gender 1..1 MS
* telecom 0..1 MS
* telecom.system 1..1 MS
* telecom.use 1..1 MS
* telecom.value 1..1 MS
* address.use 0..1 MS
* address.text 0..1 MS
* address.city 0..1 MS
* address.city ^short = "Town"
* address.district 0..1 MS
* address.district ^short = "Sub County"
* address.state 0..1 MS
* address.state ^short = "County"
* address.country 0..1 MS
* qualification 0..* MS
* qualification.code 1..1 MS
* qualification.code ^short = "Qualification/Licence"
* qualification.period.start 1..1 MS
* qualification.period.end 0..1 MS


