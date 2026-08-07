Instance: EClaimsMedicationRequestExample
InstanceOf: EClaimsMedicationRequest
Usage: #example
Title: "Example eClaims Medication Request"
Description: "An example MedicationRequest conforming to EClaimsMedicationRequest."

* id = "ECLM-MR-001"

* status = #active
* intent = #order

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"

* medicationCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-generic-products-cs"
* medicationCodeableConcept.coding[0].code = #GE10002
* medicationCodeableConcept.coding[0].display = "Metformin 500 mg Oral Tablet"

* subject = Reference(Patient/ECLM-PT-001)
* subject.reference = "Patient/ECLM-PT-001"
* subject.display = "John Mwangi Kamau"

* authoredOn = "2025-11-02"

* requester = Reference(Practitioner/ECLM-PRA-001)
* requester.reference = "Practitioner/ECLM-PRA-001"
* requester.display = "Dr. James Ochieng"

* reasonCode[0].coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* reasonCode[0].coding[0].code = #5A11
* reasonCode[0].coding[0].display = "insulin resistant diabetes"

* dosageInstruction[0].text = "Take one tablet twice daily with meals"

* substitution.allowedCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution"
* substitution.allowedCodeableConcept.coding[0].code = #N
* substitution.allowedCodeableConcept.coding[0].display = "none"


Instance: EClaimsMedicationDispenseExample
InstanceOf: EClaimsMedicationDispense
Usage: #example
Title: "Example eClaims Medication Dispense"
Description: "An example MedicationDispense conforming to EClaimsMedicationDispense."

* id = "ECLM-DISP-001"

* status = #completed

* medicationCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-generic-products-cs"
* medicationCodeableConcept.coding[0].code = #GE10002
* medicationCodeableConcept.coding[0].display = "Metformin 500 mg Oral Tablet"

* subject = Reference(Patient/ECLM-PT-001)
* subject.reference = "Patient/ECLM-PT-001"
* subject.display = "John Mwangi Kamau"

* performer[0].actor = Reference(Practitioner/ECLM-PRA-001)

* authorizingPrescription[0] = Reference(MedicationRequest/ECLM-MR-001)

* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #FF
* type.coding[0].display = "First Fill"

* quantity.value = 60
* quantity.unit = "Tablet"
* quantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* quantity.code = #TAB

* whenHandedOver = "2025-11-02T14:30:00+03:00"


Instance: EClaimsMedicationStatementExample
InstanceOf: EClaimsMedicationStatement
Usage: #example
Title: "Example eClaims Medication Statement"
Description: "An example MedicationStatement conforming to EClaimsMedicationStatement."

* id = "ECLM-MEDS-001"

* status = #active

* medicationCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-generic-products-cs"
* medicationCodeableConcept.coding[0].code = #GE10002
* medicationCodeableConcept.coding[0].display = "Metformin 500 mg Oral Tablet"

* subject = Reference(Patient/ECLM-PT-001)

* effectivePeriod.start = "2025-11-02"

* reasonCode[0].coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* reasonCode[0].coding[0].code = #5A11
* reasonCode[0].coding[0].display = "insulin resistant diabetes"

* reasonReference[0] = Reference(Condition/ECLM-COND-001)
