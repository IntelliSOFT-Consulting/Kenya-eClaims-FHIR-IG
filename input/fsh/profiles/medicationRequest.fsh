Profile: eClaimsMedicationRequest
Parent: MedicationRequest
Id: eclaims-medicationrequest
Title: "MedicationRequest Profile"
Description: "This profile defines constraints on the MedicationRequest resource for use within the Kenya eClaims Implementation Guide. It represents orders for medications issued to patients, including intent, dosage instructions, and prescribing practitioner, supporting clinical decision-making and claims validation."

* status 1..1 MS
* intent 1..1 MS
* category 1..1 MS
* priority 0..1 MS

* medication[x] 1..1 MS
* medication[x] from GenericProductsVS
* medication[x] only CodeableConcept or Reference(Medication)

* medicationCodeableConcept.coding.system 1..1 MS
* medicationCodeableConcept.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly)
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.code from GenericProductsVS
* medicationCodeableConcept.coding.display 0..1 MS

* subject 1..1 MS
* subject.reference 1..1 MS
* subject.display 1..1 MS

* authoredOn 1..1 MS
* requester 1..1 MS
* requester.reference 1..1 MS
* requester.display 1..1 MS

* dosageInstruction 1..* MS
* dosageInstruction.text 1..1 MS

* dosageInstruction.timing 0..1 MS
* dosageInstruction.route 0..1 MS
* dosageInstruction.route from RouteOfAdministrationVS
* dosageInstruction.route.coding.system 1..1 MS  
* dosageInstruction.route.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly) 
* dosageInstruction.route.coding.code 0..1 MS
* dosageInstruction.route.coding.code from RouteOfAdministrationVS
* dosageInstruction.route.coding.display 0..1 MS

* dosageInstruction.doseAndRate.doseQuantity 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity.value 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.unit from UnitOfMeasureVS
* dosageInstruction.doseAndRate.doseQuantity.system 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly) 
* dosageInstruction.doseAndRate.doseQuantity.code 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.value 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.unit 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.unit from UnitOfMeasureVS
* dosageInstruction.doseAndRate.doseRange.low.system 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly) 
* dosageInstruction.doseAndRate.doseRange.low.code 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.value 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.unit 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.unit from UnitOfMeasureVS
* dosageInstruction.doseAndRate.doseRange.high.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly) 
* dosageInstruction.doseAndRate.doseRange.high.system 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.code 0..1 MS

* dosageInstruction.asNeededBoolean 0..1 MS
// * dosageInstruction.asNeededFor 0..1

* dispenseRequest 1..1 MS
* dispenseRequest.validityPeriod 1..1 MS
* dispenseRequest.validityPeriod.start 1..1 MS
* dispenseRequest.validityPeriod.end 1..1 MS

* dispenseRequest.numberOfRepeatsAllowed 1..1 MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity.value 1..1 MS
* dispenseRequest.quantity.unit 1..1 MS
* dispenseRequest.quantity.unit from UnitOfMeasureVS
* dispenseRequest.quantity.system 1..1 MS
* dispenseRequest.quantity.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue" (exactly) 
* dispenseRequest.quantity.code 0..1 MS

* dispenseRequest.expectedSupplyDuration 0..1 MS

* substitution 0..1 MS
* substitution.allowedBoolean 0..1 MS
* substitution.reason 0..1 MS

* priorPrescription 0..1 MS
* encounter 0..1 MS
* supportingInformation 0..* MS
* recorder 0..1 MS

* reasonCode 1..* MS
* reasonCode.coding.system 1..1 MS
* reasonCode.coding.code 1..1 MS
* reasonCode.coding.display 1..1 MS

* reasonReference 0..* MS
* note 0..* MS
* detectedIssue 0..* MS
* eventHistory 0..* MS


Instance: example-medicationrequest
InstanceOf: eClaimsMedicationRequest
Title: "MedicationRequest - Example MedicationRequest"
Description: "An example instance conforming to the MedicationRequest-Profile."
Usage: #example

* status = #active
* intent = #order
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* category[0].coding[0].code = #outpatient
* category[0].coding[0].display = "Outpatient"

* priority = #routine

* medicationCodeableConcept.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
* medicationCodeableConcept.coding.code = #AMOX500
* medicationCodeableConcept.coding.display = "Amoxicillin 500mg Capsules"

* subject.reference = "Patient/example-patient"
* subject.display = "John Doe"

* authoredOn = "2024-07-15"

* requester.reference = "Practitioner/example-requester"
* requester.display = "Dr. Jane Mwangi"

* dosageInstruction[0].text = "Take one capsule three times a day after meals"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d

* dosageInstruction[0].route.coding.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
* dosageInstruction[0].route.coding.code = #26643006
* dosageInstruction[0].route.coding.display = "Oral route"

* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "capsule"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
// * dosageInstruction[0].doseAndRate[0].doseQuantity.code = "1"

* dosageInstruction[0].asNeededBoolean = false

* dispenseRequest.validityPeriod.start = "2024-07-15"
* dispenseRequest.validityPeriod.end = "2024-07-25"

* dispenseRequest.numberOfRepeatsAllowed = 0

* dispenseRequest.quantity.value = 30
* dispenseRequest.quantity.unit = "capsule"
* dispenseRequest.quantity.system = "https://hapi.slade360edi.com/fhir/CodeSystem/product-catalogue"
// * dispenseRequest.quantity.code = "1"

* dispenseRequest.expectedSupplyDuration.value = 10
* dispenseRequest.expectedSupplyDuration.unit = "days"
* dispenseRequest.expectedSupplyDuration.system = "http://unitsofmeasure.org"
// * dispenseRequest.expectedSupplyDuration.code = "d"

* substitution.allowedBoolean = false

* reasonCode[0].coding.system = "http://snomed.info/sct"
* reasonCode[0].coding.code = #65363002
* reasonCode[0].coding.display = "Otitis media"

* note[0].text = "Ensure the patient is not allergic to penicillin."

* encounter.reference = "Encounter/example-encounter"
* priorPrescription.reference = "MedicationRequest/previous-request"


Instance: MedicationRequest-Empagliflozin
InstanceOf: MedicationRequest
Title: "Medication Request Example - Empagliflozin/Metformin"
Description: "An example MedicationRequest for Empagliflozin 5 mg / Metformin 500 mg tablet."
* id = "866d4b06-9199-41a1-9ea9-213212ea9512"

* identifier.use = #official
* identifier.system = "https://shr.dha.go.ke/fhir/medication-request"
* identifier.value = "bcb292cb-0707-4b90-8c35-39a82ed0f389"

* status = #active
* intent = #order

* medicationCodeableConcept.coding[0].system = "http://nhts.dha.go.ke/fhir/ValueSet/medication"
* medicationCodeableConcept.coding[0].code = #GE10887
* medicationCodeableConcept.coding[0].display = "Empagliflozin 5 mg/Metformin 500 mg Oral Tablet"
* medicationCodeableConcept.text = "Atorvastatin 20mg tablet"

* subject.reference = "Patient/CR6164711105276-6"
* subject.identifier.use = #official
* subject.identifier.system = "https://hie.dha.go.ke/client-registry"
* subject.identifier.value = "CR6164711105276-6"

* authoredOn = "2025-06-30"

* requester.reference = "Practitioner/PUID-0001662-7"
* requester.type = "Practitioner"
* requester.identifier.use = #official
* requester.identifier.system = "https://hie.dha.go.ke/health-worker-registry"
* requester.identifier.value = "PUID-0001662-7"

* reasonCode[0].coding[0].system = "https://nhts.dha.go.ke/terminology/icd11"
* reasonCode[0].coding[0].code = #I10
* reasonCode[0].coding[0].display = "Essential (primary) hypertension"

* dosageInstruction[0].text = "Take one tablet by mouth daily"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d

* dosageInstruction[0].route.coding[0].system = "https://nhts.dha.go.ke/terminology/v1/route"
* dosageInstruction[0].route.coding[0].code = #RT10025
* dosageInstruction[0].route.coding[0].display = "Oral"

* dosageInstruction[0].doseAndRate[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[0].doseAndRate[0].type.coding[0].code = #ordered
* dosageInstruction[0].doseAndRate[0].type.coding[0].display = "Ordered"

* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 20
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "milligram per dose"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "https://nhts.dha.go.ke/terminology/v1/unit"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #UM10229

* dispenseRequest.validityPeriod.start = "2025-03-28"
* dispenseRequest.validityPeriod.end = "2025-09-28"
* dispenseRequest.numberOfRepeatsAllowed = 3
* dispenseRequest.quantity.value = 360
* dispenseRequest.quantity.unit = "milligram per dose"
* dispenseRequest.quantity.system = "https://nhts.dha.go.ke/terminology/v1/unit"
* dispenseRequest.quantity.code = #UM10229
* dispenseRequest.expectedSupplyDuration.value = 30
* dispenseRequest.expectedSupplyDuration.unit = "days"
* dispenseRequest.expectedSupplyDuration.system = "http://unitsofmeasure.org"
* dispenseRequest.expectedSupplyDuration.code = #d

* substitution.allowedBoolean = true
* substitution.reason.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* substitution.reason.coding[0].code = #CT
* substitution.reason.coding[0].display = "Continuing therapy"

* note[0].text = "Patient has reported nausea with higher doses in the past."


