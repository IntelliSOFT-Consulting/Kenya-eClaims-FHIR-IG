Profile: eClaimsMedicationStatement
Parent: MedicationStatement
Id: eclaims-medicationstatement
Title: "MedicationStatement Profile"
Description: "This profile defines constraints on the MedicationStatement resource for use within the Kenya eClaims Implementation Guide. It captures information about a patient’s self-reported or documented medication use, supporting medication history review and claims processing."


* identifier 0..1
* basedOn 0..1
* status 1..1
* statusReason 0..1
* category 0..1
* medicationCodeableConcept 1..1
* subject 1..1
* context ^short = "Encounter / Episode associated with MedicationStatement"
* context 0..1
* effectivePeriod.start 1..1
* effectivePeriod.end 0..1
* reasonCode 1..*
* reasonReference 1..*