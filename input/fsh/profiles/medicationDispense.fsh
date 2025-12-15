Profile: eClaimsMedicationDispense
Parent: MedicationDispense
Id: eclaims-medicationdispense
Title: "MedicationDispense Profile"
Description: "This profile defines constraints on the MedicationDispense resource for use within the Kenya eClaims Implementation Guide. It documents the supply of medication to a patient, including quantity, dosage, and dispensing provider, supporting claim justification and medication traceability."

* status 1..1 MS

* medication[x] 1..1 MS
* medicationCodeableConcept from GenericProductsVSs (required)
* medicationCodeableConcept.coding 1..1
* medicationCodeableConcept.coding.system 1..1
* medicationCodeableConcept.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly)
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.code from GenericProductsVSs (required)
* medicationCodeableConcept.coding.display 1..1 MS


* subject 0..1 MS
* subject.reference 1..1 MS
* subject.display 1..1 MS
* quantity 1..1 MS
* whenHandedOver 1..1 MS
* performer 1..1 MS
* performer.actor 1..1 MS

* location 0..1 MS
* type 1..1 MS 
* authorizingPrescription 1..1 MS

* performer.actor only Reference(Practitioner)

* dosageInstruction 0..*
* dosageInstruction.sequence 1..1 MS
* dosageInstruction.text 1..1 MS
* dosageInstruction.additionalInstruction 1..* MS
* dosageInstruction.patientInstruction 1..1 MS
* dosageInstruction.timing 1..1 MS
* dosageInstruction.asNeeded[x] 1..1 MS
* dosageInstruction.site 1..1 MS

* dosageInstruction.route 1..1 MS
* dosageInstruction.route from RouteOfAdministrationVS (required)
* dosageInstruction.route.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly)
* dosageInstruction.method 0..1 MS

* dosageInstruction.doseAndRate 0..* MS
* dosageInstruction.doseAndRate.type 0..1 MS
* dosageInstruction.doseAndRate.doseRange 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity 0..1 MS
* dosageInstruction.doseAndRate.rateRatio 0..1 MS
* dosageInstruction.doseAndRate.rateRange 0..1 MS
* dosageInstruction.doseAndRate.rateQuantity 0..1 MS

* dosageInstruction.maxDosePerPeriod 0..1 MS
* dosageInstruction.maxDosePerAdministration 0..1 MS
* dosageInstruction.maxDosePerLifetime 0..1 MS




Instance: ExampleMedicationDispense
InstanceOf: eClaimsMedicationDispense
Title: "MedicationDispense - Example Medication Dispense"
Description: "An example instance of a MedicationDispense resource conforming to the MedicationDispense-Profile."
Usage: #example

* status = #completed

* medicationCodeableConcept.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
* medicationCodeableConcept.coding.code = #AMOX500GE10002
* medicationCodeableConcept.coding.display = "Amoxicillin 500mg Capsules"

* subject.reference = "Patient/example-patient"
* subject.display = "John Doe"

* quantity.value = 30
* quantity.unit = "capsule"

* whenHandedOver = "2024-07-16"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding.code = #DF
* type.coding.display = "Dispense Fill"

* authorizingPrescription[0].reference = "MedicationRequest/example-medicationrequest"

* performer[0].actor.reference = "Practitioner/example-practitioner"
* performer[0].actor.display = "Dr. Jane Smith"

* dosageInstruction[0].sequence = 1
* dosageInstruction[0].text = "Take one capsule three times a day for 10 days"
* dosageInstruction[0].additionalInstruction[0].coding.system = "http://snomed.info/sct"
* dosageInstruction[0].additionalInstruction[0].coding.code = #419385000
* dosageInstruction[0].additionalInstruction[0].coding.display = "Take with food"
* dosageInstruction[0].patientInstruction = "Take after meals with water"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].asNeededBoolean = false
* dosageInstruction[0].site.coding.system = "http://snomed.info/sct"
* dosageInstruction[0].site.coding.code = #181220002
* dosageInstruction[0].site.coding.display = "Oral cavity"

* dosageInstruction[0].route.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
* dosageInstruction[0].route.coding.code = #2664300699
* dosageInstruction[0].route.coding.display = "Oral route"

* dosageInstruction[0].method.coding.system = "http://snomed.info/sct"
* dosageInstruction[0].method.coding.code = #421521009
* dosageInstruction[0].method.coding.display = "Swallow"

* dosageInstruction[0].doseAndRate[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[0].doseAndRate[0].type.coding.code = #ordered
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "capsule"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"

* dosageInstruction[0].maxDosePerPeriod.numerator.value = 3
* dosageInstruction[0].maxDosePerPeriod.numerator.unit = "capsules"
* dosageInstruction[0].maxDosePerPeriod.denominator.value = 1
* dosageInstruction[0].maxDosePerPeriod.denominator.unit = "day"

* dosageInstruction[0].maxDosePerAdministration.value = 1
* dosageInstruction[0].maxDosePerAdministration.unit = "capsule"

* dosageInstruction[0].maxDosePerLifetime.value = 90
* dosageInstruction[0].maxDosePerLifetime.unit = "capsules"
