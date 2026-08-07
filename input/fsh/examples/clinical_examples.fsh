Instance: EClaimsEncounterExample
InstanceOf: EClaimsEncounter
Usage: #example
Title: "Example eClaims Encounter"
Description: "An example Encounter resource conforming to EClaimsEncounter."

* id = "ECLM-ENC-001"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/encounter-number"
* identifier[0].value = "ENC-2025-001234"

* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* class.display = "inpatient encounter"

* serviceType.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-type"
* serviceType.coding[0].code = #124
* serviceType.coding[0].display = "General Practice"

* subject = Reference(Patient/ECLM-PT-001)

* period.start = "2025-11-01T08:00:00+03:00"
* period.end = "2025-11-07T10:00:00+03:00"

* serviceProvider = Reference(Organization/ECLM-ORG-001)


Instance: EClaimsConditionExample
InstanceOf: EClaimsCondition
Usage: #example
Title: "Example eClaims Condition"
Description: "An example Condition resource conforming to EClaimsCondition."

* id = "ECLM-COND-001"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/condition-number"
* identifier[0].value = "COND-2025-001234"

* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"

* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed
* verificationStatus.coding[0].display = "Confirmed"

* category[0].coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/condition-category-cs"
* category[0].coding[0].code = #ENCOUNTER-DIAGNOSIS
* category[0].coding[0].display = "Encounter Diagnosis"

* severity.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/condition-severity-cs"
* severity.coding[0].code = #MODERATE
* severity.coding[0].display = "Moderate"

* code.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* code.coding[0].code = #CA0Z
* code.coding[0].display = "Acute upper respiratory infection, unspecified"

* subject = Reference(Patient/ECLM-PT-001)
* encounter = Reference(Encounter/ECLM-ENC-001)

* onsetDateTime = "2025-11-01"

* recorder = Reference(Practitioner/ECLM-PRA-001)


Instance: EClaimsEpisodeOfCareExample
InstanceOf: EClaimsEpisodeOfCare
Usage: #example
Title: "Example eClaims Episode of Care"
Description: "An example EpisodeOfCare resource conforming to EClaimsEpisodeOfCare."

* id = "ECLM-EOC-001"

* status = #active

* type[0].coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/episode-of-care-type-cs"
* type[0].coding[0].code = #NON-COMMUNICABLE-DISEASE-PROGRAM
* type[0].coding[0].display = "Non-Communicable Disease Program"

* patient = Reference(Patient/ECLM-PT-001)
* managingOrganization = Reference(Organization/ECLM-ORG-001)

* period.start = "2025-01-01"
