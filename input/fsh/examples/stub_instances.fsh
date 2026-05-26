// Stub instances for referenced resources in claim examples

Instance: ExamplePatientPT0001
InstanceOf: Patient
Usage: #example
Title: "Example Patient"
Description: "Stub patient instance used as a reference target in claim examples."
* id = "PT-0001"
* name[0].family = "Doe"
* name[0].given[0] = "John"
* gender = #male
* birthDate = "1980-01-01"

Instance: ExamplePatient
InstanceOf: Patient
Usage: #example
Title: "Example Patient (generic)"
Description: "Stub patient instance used as a reference target in claim response examples."
* id = "example"
* name[0].family = "Wanjiku"
* name[0].given[0] = "Jane"
* gender = #female
* birthDate = "1985-06-15"

Instance: ExampleInsurerOrg
InstanceOf: Organization
Usage: #example
Title: "Example Insurer Organization"
Description: "Stub insurer organization used as a reference target in claim examples."
* id = "INS-001"
* name = "Kenya Insurance Company"
* active = true

Instance: ExampleSHAInsurer
InstanceOf: Organization
Usage: #example
Title: "Social Health Authority"
Description: "Stub SHA insurer organization used as a reference target in claim response examples."
* id = "sha-insurer"
* name = "Social Health Authority"
* active = true

Instance: ExampleProviderOrg
InstanceOf: Organization
Usage: #example
Title: "Example Provider Organization"
Description: "Stub provider organization used as a reference target in claim examples."
* id = "ORG-001"
* name = "Nairobi General Hospital"
* active = true

Instance: ExampleLocation
InstanceOf: Location
Usage: #example
Title: "Example Location"
Description: "Stub location used as a reference target in claim examples."
* id = "LOC-001"
* name = "Main Ward"
* status = #active

Instance: ExamplePractitionerPRA001
InstanceOf: Practitioner
Usage: #example
Title: "Example Practitioner"
Description: "Stub practitioner used as a reference target in claim examples."
* id = "PRA-001"
* name[0].family = "Kamau"
* name[0].given[0] = "Dr. James"
* active = true

Instance: ExampleCoverage
InstanceOf: Coverage
Usage: #example
Title: "Example Coverage"
Description: "Stub coverage used as a reference target in claim examples."
* id = "COV-0001"
* status = #active
* beneficiary = Reference(Patient/PT-0001)
* payor[0] = Reference(Organization/INS-001)

Instance: ExampleMedicationRequest
InstanceOf: MedicationRequest
Usage: #example
Title: "Example Medication Request"
Description: "Stub medication request used as a reference target in claim examples."
* id = "MED-0001"
* status = #active
* intent = #order
* subject = Reference(Patient/PT-0001)
* medicationCodeableConcept.text = "Amoxicillin 500mg"

Instance: ExampleServiceRequest
InstanceOf: ServiceRequest
Usage: #example
Title: "Example Service Request"
Description: "Stub service request used as a reference target in claim examples."
* id = "SRV-0001"
* status = #active
* intent = #order
* subject = Reference(Patient/PT-0001)
* code.text = "Physical therapy"

Instance: ExampleRelatedClaim
InstanceOf: Claim
Usage: #example
Title: "Example Related Claim"
Description: "Stub related claim used as a reference target in claim examples."
* id = "CLAIM-0000X"
* status = #active
* use = #claim
* patient = Reference(Patient/PT-0001)
* created = "2025-01-01"
* insurer = Reference(Organization/INS-001)
* provider = Reference(Organization/ORG-001)
* priority = ProcessPriorityCS#normal "Normal"
* type = ClaimTypeCS#institutional "Institutional"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/COV-0001)

Instance: ExampleClaimForResponse1
InstanceOf: Claim
Usage: #example
Title: "Example Claim for ClaimResponse (sent-back)"
Description: "Stub claim used as a reference target in the ClaimResponseSentBackExample."
* id = "ae044c1d-9ecb-4294-be9b-0702e7892596"
* status = #active
* use = #claim
* patient = Reference(Patient/example)
* created = "2025-10-01"
* insurer = Reference(Organization/sha-insurer)
* provider = Reference(Organization/ORG-001)
* priority = ProcessPriorityCS#normal "Normal"
* type = ClaimTypeCS#institutional "Institutional"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/COV-0001)

Instance: ExampleClaimForResponse2
InstanceOf: Claim
Usage: #example
Title: "Example Claim for ClaimResponse (canceled)"
Description: "Stub claim used as a reference target in the ClaimResponseCanceledExample."
* id = "a7dcd571-d8a2-483a-8a45-e3c8bcbff8b8"
* status = #active
* use = #preauthorization
* patient = Reference(Patient/example)
* created = "2025-10-01"
* insurer = Reference(Organization/sha-insurer)
* provider = Reference(Organization/ORG-001)
* priority = ProcessPriorityCS#normal "Normal"
* type = ClaimTypeCS#institutional "Institutional"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/COV-0001)
