Instance: EClaimsObservationStub
InstanceOf: Observation
Usage: #example
Title: "Stub Observation for DiagnosticReport"
Description: "A minimal stub Observation referenced by the DiagnosticReport example."

* id = "ECLM-OBS-001"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #718-7
* code.coding[0].display = "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(Patient/ECLM-PT-001)
* effectiveDateTime = "2025-11-02T09:00:00+03:00"
* performer[0] = Reference(Practitioner/ECLM-PRA-001)
* valueQuantity.value = 13.5
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL


Instance: EClaimsDiagnosticReportExample
InstanceOf: EClaimsDiagnosticReport
Usage: #example
Title: "Example eClaims Diagnostic Report"
Description: "An example DiagnosticReport conforming to EClaimsDiagnosticReport."

* id = "ECLM-DR-001"

* status = #final

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category[0].coding[0].code = #LAB
* category[0].coding[0].display = "Laboratory"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #58410-2
* code.coding[0].display = "CBC panel - Blood by Automated count"

* subject = Reference(Patient/ECLM-PT-001)
* encounter = Reference(Encounter/ECLM-ENC-001)

* effectiveDateTime = "2025-11-02T09:00:00+03:00"
* issued = "2025-11-02T11:00:00+03:00"

* performer[0] = Reference(Practitioner/ECLM-PRA-001)

* result[0] = Reference(Observation/ECLM-OBS-001)

* conclusion = "CBC results within normal limits for the patient's age and sex."
