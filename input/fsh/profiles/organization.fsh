Profile: eClaimsOrganization
Parent: Organization
Id: eclaims-organization
Title: "Organization Profile"
Description: "This profile defines constraints on the Organization resource for use within the Kenya eClaims Implementation Guide. It represents healthcare facilities, insurers, or administrative bodies involved in the delivery or funding of care, supporting identification and affiliation in claims workflows."

* identifier 0..1 MS 
* identifier.use 1..1 MS
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.code 1..1 MS
* identifier.type.coding.display 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "E.g KMFL Value for this Facility"
* name 1..1 MS
* active 1..1 MS
* type 1..1 MS
* address.city 1..1 MS
* address.city ^short = "Town/City"
* address.country 0..1 MS
* address.district 1..1 MS
* address.state 1..1 MS
* contact.telecom 1..1 MS


