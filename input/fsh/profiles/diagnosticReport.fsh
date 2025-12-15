Profile: eClaimsDiagnosticReport
Parent: DiagnosticReport
Id: eclaims-diagnosticreport
Title: "DiagnosticReport Profile"
Description: "This profile defines constraints on the DiagnosticReport resource for use within the Kenya eClaims Implementation Guide. It represents the findings and interpretations from laboratory, imaging, or other diagnostic services, supporting clinical decision-making and claim substantiation."

* ^status = #draft
* ^experimental = false
* ^publisher = "IntelliSOFT Consulting Ltd"
* ^version = "1.0.0"

* status 1..1 MS
* category 1..* MS
* category from http://terminology.hl7.org/ValueSet/diagnostic-service-sections (extensible)

* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/report-codes (extensible)

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 0..1 MS
* effective[x] 1..1 MS
* issued 0..1 MS

* performer 1..* MS
* performer only Reference(Practitioner or PractitionerRole or Organization)

* resultsInterpreter 0..* MS
* result 1..* MS
* result only Reference(Observation)

* conclusion 0..1 MS
* conclusionCode 0..* MS
* conclusionCode from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)

* presentedForm 0..* MS



Instance: example-diagnosticreport
InstanceOf: eClaimsDiagnosticReport
Title: "DiagnosticReport - Example Diagnostic Report"
Description: "An example instance of a DiagnosticReport conforming to the DiagnosticReportProfile."
Usage: #example

* status = #final

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category[0].coding[0].code = #LAB
* category[0].coding[0].display = "Laboratory"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #58410-2
* code.coding[0].display = "Complete blood count panel"

* subject.reference = "Patient/example-patient"
* subject.display = "Jane Doe"

* encounter.reference = "Encounter/example-encounter"

* effectiveDateTime = "2024-07-15T10:00:00+03:00"
* issued = "2024-07-15T12:00:00+03:00"

* performer[0].reference = "Organization/example-lab"
* performer[0].display = "National Public Health Lab"

* resultsInterpreter[0].reference = "Practitioner/example-pathologist"
* resultsInterpreter[0].display = "Dr. John K. Odhiambo"

* result[0] = Reference(Observation/obs-hemoglobin)
* result[1] = Reference(Observation/obs-wbc)

* conclusion = "Normal complete blood count."

* conclusionCode[0].coding[0].system = "http://snomed.info/sct"
* conclusionCode[0].coding[0].code = #248234009
* conclusionCode[0].coding[0].display = "Normal hematology report"

* presentedForm[0].language = #en
* presentedForm[0].title = "CBC Report"
* presentedForm[0].url = "https://example.org/reports/cbc-12345.pdf"
