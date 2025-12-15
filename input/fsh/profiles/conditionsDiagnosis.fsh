// Profile: eClaimsConditionDiagnosis
// Parent: Condition
// Id: eclaims-conditiondiagnosis
// Title: "Condition Diagnosis Profile"
// Description: "This profile defines constraints on the Condition resource for use within the Kenya eClaims Implementation Guide. It captures a patient’s clinical diagnosis relevant to an encounter or claim, supporting medical justification, clinical documentation, and claims adjudication."

// * identifier 1..1 MS
// * clinicalStatus 1..1
// * clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
// * clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active (exactly) // fallback default

// * verificationStatus 1..1
// * verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)

// * category 1..1
// * category from http://hl7.org/fhir/ValueSet/condition-category (required)
// * category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis (exactly)

// * severity 0..1  
// * severity from ConditionSeverityVS (required)

// * code 1..1
// * code from ConditionCodeVS (example)

// * bodySite 0..*
// * bodySite from BodySiteVS (example)

// * subject 1..1 MS
// * subject only Reference(eClaimsPatient)
// * encounter 1..1 MS

// * onset[x] 1..1 MS

// * recorder 1..1
// * recorder only Reference(eClaimsPractitioner)


// Instance: malaria-diagnosis
// InstanceOf: eClaimsConditionDiagnosis
// Title: "Condition - Malaria Diagnosis Example 1"
// Description: "A sample malaria condition matching the DiagnosisConditionProfile"
// Usage: #example

// * identifier.system = "http://hospital.smarthealth.org/conditions"
// * identifier.value = "malaria-20250719-001"
// * clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
// * verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
// * category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
// * severity = $sct#24484000 "Severe"
// * code = $sct#12394003 "Malaria"
// * bodySite[0] = $sct#38266002 "Entire body"
// * subject = Reference(example-patient)
// * encounter = Reference(EncounterExample)
// * onsetDateTime = "2025-07-18T10:00:00+03:00"
// * recorder = Reference(example-practitioner)


// Instance: Condition-Malaria
// InstanceOf: Condition
// Title: "Condition - Malaria Diagnosis Example 2"
// Description: "An example Condition resource representing a malaria diagnosis."
// Usage: #example

// * id = "bcb292cb-0707-4b90-8c35-39a82ed0f389"
// * meta.profile = "http://hl7.org/fhir/StructureDefinition/patient-diagnosis"

// * identifier.use = #official
// * identifier.system = "https://shr.dha.go.ke/fhir/condition"
// * identifier.value = "bcb292cb-0707-4b90-8c35-39a82ed0f389"

// * clinicalStatus.coding[0].system = "http://hl7.org/fhir/ValueSet/condition-clinical"
// * clinicalStatus.coding[0].code = #active
// * clinicalStatus.coding[0].display = "ACTIVE"

// * verificationStatus.coding[0].system = "http://hl7.org/fhir/ValueSet/condition-ver-status"
// * verificationStatus.coding[0].code = #confirmed
// * verificationStatus.coding[0].display = "Confirmed"

// * category.coding[0].system = "http://hl7.org/fhir/ValueSet/condition-category"
// * category.coding[0].code = #encounter-diagnosis
// * category.coding[0].display = "Encounter Diagnosis"

// * severity.coding[0].system = "http://hl7.org/fhir/ValueSet/condition-severity"
// * severity.coding[0].code = #moderate
// * severity.coding[0].display = "Moderate"

// * code.coding[0].system = "https://nhts.dha.go.ke/terminology/icd11"
// * code.coding[0].code = #123565
// * code.coding[0].display = "Malaria"
// * code.text = "Malaria"

// * encounter.reference = "Encounter/832ec2b8-bea4-456b-9f79-50121f9a301f"

// * subject.reference = "Patient/BY32923183-3"
// * subject.type = "Patient"
// * subject.identifier.use = #official
// * subject.identifier.system = "https://hie.dha.go.ke/client-registry"
// * subject.identifier.value = "BY32923183-7"

// * recordedDate = "2024-08-20T08:10:41+03:00"

// * recorder.reference = "Practitioner/PR32923183-3"
// * recorder.type = "Practitioner"
// * recorder.identifier.use = #official
// * recorder.identifier.system = "https://hie.dha.go.ke/health-worker-registry"
// * recorder.identifier.value = "PR32923183-3"

 
