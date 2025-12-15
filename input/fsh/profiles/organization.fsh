Profile: EclaimsProviderOrganization
Parent: Organization
Id: eclaims-provider-organization
Title: "Provider Organization Profile"
Description: "This profile defines constraints on the Organization resource for use within the Kenya eClaims Implementation Guide. It represents licensed healthcare facilities that provide services and submit claims or preauthorization requests."

* id 1..1 MS

* meta.profile 1..* MS

* active 1..1 MS
* name 1..1 MS

* type 1..* MS
* type.coding 1..* MS
* type.coding.system 1..1 MS
* type.coding.code 1..1 MS

* identifier 1..* MS
* identifier.use 1..1 MS
* identifier.value 1..1 MS
* identifier.system 0..1 MS

* identifier.type 0..1 MS
* identifier.type.coding 0..* MS
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.code 1..1 MS
