
Profile: eClaimsPatient
Parent: Patient
Id: eclaims-condition
Title: "Patient Profile"
Description: "This profile defines the minimum required patient demographic and identifier data for submitting standardized health insurance claims within the Kenya eClaims ecosystem."

* identifier 1..1 MS 
* identifier.use 1..1 MS
// * identifier.use from IdentifierUseVs
* identifier.use ^short = "official | preferred"
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.display 1..1 MS
* identifier.type.coding.code 1..1 MS 
* identifier.value 1..1 MS
* name 1..1 MS
* name.text MS
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.family 1..1 MS
* name.given 1..1 MS
* name.given ^min = 1
* telecom 1..1 MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* gender 1..1 MS
* birthDate 1..1 MS
* maritalStatus 0..1 MS
* deceased[x]
* deceasedBoolean 0..1 MS
* deceasedDateTime 0..1 MS
* address 0..1 MS  
* address.postalCode MS
* address.city 0..1 MS
* address.city ^short = "Beficiary's Ward"
* address.district 0..1 MS
* address.district ^short = "Beneficiary's Sub County"
* address.state 0..1 MS
* address.state ^short = "Beneficiary's County"
* address.country 0..1 MS
* contact 1..* MS
* contact.relationship.coding.system 1..1 MS
* contact.relationship.coding.code 1..1 MS
* contact.relationship.coding.display 1..1 MS
* contact.name 1..1 MS
* contact.telecom 1..1 MS
