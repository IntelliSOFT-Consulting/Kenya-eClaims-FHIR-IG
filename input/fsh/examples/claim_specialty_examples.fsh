// ─────────────────────────────────────────────────────────────────────────────
// Shared inline macro for the common required Claim fields used in every
// specialty preauth and submission example below.
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaClaimBaseExample
InstanceOf: KenyaClaimBase
Usage: #example
Title: "Example Kenya Claim Base"
Description: "An example Claim conforming to the KenyaClaimBase profile."

* id = "ECLM-CB-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-claimbase"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-BASE-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* subType.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-subtype-cs"
* subType.coding[0].code = #inpatient
* subType.coding[0].display = "Inpatient"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-01"
* billablePeriod.end = "2025-11-07"
* created = "2025-11-08T09:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #NC72.5
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Fracture of shaft of femur"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-07
* item[0].productOrService.coding[0].display = "Inpatient Services"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical Care"
* item[0].quantity.value = 7
* item[0].unitPrice.value = 5000
* item[0].unitPrice.currency = #KES
* item[0].net.value = 35000
* item[0].net.currency = #KES


// ─────────────────────────────────────────────────────────────────────────────
// Imaging Preauthorization
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaImagingPreauthExample
InstanceOf: KenyaImagingPreauth
Usage: #example
Title: "Example Imaging Preauthorization"
Description: "An example Claim conforming to KenyaImagingPreauth for MRI of the right femur."

* id = "ECLM-IMG-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-imagingpreauth"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-IMG-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-05"
* billablePeriod.end = "2025-11-05"
* created = "2025-11-05T10:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #ORDERING
* careTeam[0].role.coding[0].display = "Ordering provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #NC72.5
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Fracture of shaft of femur"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-09
* item[0].productOrService.coding[0].display = "Medical Imaging"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical Care"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 18500
* item[0].unitPrice.currency = #KES
* item[0].net.value = 18500
* item[0].net.currency = #KES

* extension[clinicalIndications].valueString = "Suspected fracture of right femur shaft following road traffic accident"
* extension[investigations].valueString = "MRI right femur — plain and contrast"


// ─────────────────────────────────────────────────────────────────────────────
// Optical Preauthorization
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaOpticalPreauthExample
InstanceOf: KenyaOpticalPreauth
Usage: #example
Title: "Example Optical Preauthorization"
Description: "An example Claim conforming to KenyaOpticalPreauth for prescription eyeglasses."

* id = "ECLM-OPT-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-opticalpreauth"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-OPT-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #vision
* type.coding[0].display = "Vision"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-10"
* billablePeriod.end = "2025-11-10"
* created = "2025-11-10T09:30:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #9C80.0
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Myopia"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-05
* item[0].productOrService.coding[0].display = "Eye Health"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical Care"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 7500
* item[0].unitPrice.currency = #KES
* item[0].net.value = 7500
* item[0].net.currency = #KES

* extension[lensPrescription].valueString = "OD: SPH -2.50 CYL -0.50 AXIS 090; OS: SPH -2.00 CYL -0.25 AXIS 085"
* extension[replacement].valueString = "New"
* extension[reasonForService].valueString = "Glasses — reduced visual acuity"


// ─────────────────────────────────────────────────────────────────────────────
// Renal Preauthorization
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaRenalPreauthExample
InstanceOf: KenyaRenalPreauth
Usage: #example
Title: "Example Renal Preauthorization"
Description: "An example Claim conforming to KenyaRenalPreauth for a haemodialysis session."

* id = "ECLM-REN-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-renalpreauth"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-REN-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-12-01"
* billablePeriod.end = "2025-12-01"
* created = "2025-11-28T08:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #GB61
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Chronic kidney disease"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-16
* item[0].productOrService.coding[0].display = "Renal Care Services"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical Care"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 12500
* item[0].unitPrice.currency = #KES
* item[0].net.value = 12500
* item[0].net.currency = #KES

* extension[sessionExpectedDate].valueString = "2025-12-01"
* extension[clinicalIndications].valueString = "End Stage Renal Disease (ESRD) — chronic haemodialysis programme"
* extension[vitalSigns].valueString = "BP: 148/92 mmHg; Weight: 68 kg; Temp: 36.8°C"


// ─────────────────────────────────────────────────────────────────────────────
// Oncology Preauthorization
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaOncologyPreauthExample
InstanceOf: KenyaOncologyPreauth
Usage: #example
Title: "Example Oncology Preauthorization"
Description: "An example Claim conforming to KenyaOncologyPreauth for a chemotherapy session."

* id = "ECLM-ONC-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-oncologypreauth"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-ONC-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-15"
* billablePeriod.end = "2025-11-15"
* created = "2025-11-10T11:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #2C6Y
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Other specified malignant neoplasms of breast"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-06
* item[0].productOrService.coding[0].display = "Hematology and Oncology"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical Care"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 45000
* item[0].unitPrice.currency = #KES
* item[0].net.value = 45000
* item[0].net.currency = #KES

* extension[carcinomaStaging].valueString = "STAGE_3A"
* extension[metastases].valueString = "None confirmed"
* extension[treatmentSetting].valueString = "DAY_WARD"
* extension[costPerSession].valueString = "45000"


// ─────────────────────────────────────────────────────────────────────────────
// Surgical Preauthorization
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaSurgicalPreauthExample
InstanceOf: KenyaSurgicalPreauth
Usage: #example
Title: "Example Surgical Preauthorization"
Description: "An example Claim conforming to KenyaSurgicalPreauth for an appendicectomy."

* id = "ECLM-SUR-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-surgicalpreauth"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-SUR-001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #stat
* priority.coding[0].display = "Immediate"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-20"
* billablePeriod.end = "2025-11-22"
* created = "2025-11-19T18:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MBChB
* careTeam[0].qualification.coding[0].display = "Bachelor of Medicine and Bachelor of Surgery (MBChB)"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #DC80
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Appendicitis"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-19
* item[0].productOrService.coding[0].display = "Surgical Services"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #2
* item[0].category.coding[0].display = "Surgical"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 85000
* item[0].unitPrice.currency = #KES
* item[0].net.value = 85000
* item[0].net.currency = #KES

* extension[anaesthesiaType].valueString = "General"
* extension[chiefComplaint].valueString = "Acute right iliac fossa pain, nausea, low-grade fever for 24 hours"
* extension[clinicalIndications].valueString = "Acute appendicitis confirmed on clinical examination and USS"
* extension[vitalSigns].valueString = "Temp: 38.2°C; BP: 118/76 mmHg; HR: 96 bpm"


// ─────────────────────────────────────────────────────────────────────────────
// Claim Submission
// ─────────────────────────────────────────────────────────────────────────────

Instance: KenyaClaimSubmissionExample
InstanceOf: KenyaClaimSubmission
Usage: #example
Title: "Example Claim Submission"
Description: "An example Claim conforming to KenyaClaimSubmission for final payment after inpatient services."

* id = "ECLM-SUB-001"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-claimsubmission"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-SUB-001"

* status = #active
* use = #claim

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* subType.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-subtype-cs"
* subType.coding[0].code = #inpatient
* subType.coding[0].display = "Inpatient"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* patient = Reference(Patient/ECLM-PT-001)
* provider = Reference(Organization/ECLM-ORG-001)
* insurer = Reference(Organization/ECLM-INS-001)

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* billablePeriod.start = "2025-11-20"
* billablePeriod.end = "2025-11-22"
* created = "2025-11-23T09:00:00+03:00"

* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(Practitioner/ECLM-PRA-001)
* careTeam[0].role.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MBChB
* careTeam[0].qualification.coding[0].display = "Bachelor of Medicine and Bachelor of Surgery (MBChB)"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-codes-cs"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #DC80
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Appendicitis"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/ECLM-COV-001)

* item[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* item[0].productOrService.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-19
* item[0].productOrService.coding[0].display = "Surgical Services"
* item[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-benefitcategory"
* item[0].category.coding[0].code = #2
* item[0].category.coding[0].display = "Surgical"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 85000
* item[0].unitPrice.currency = #KES
* item[0].net.value = 85000
* item[0].net.currency = #KES

* total.value = 85000
* total.currency = #KES

* extension[patientInvoice].extension[invoiceNumber].valueString = "INV-2025-00789"
* extension[patientInvoice].extension[invoiceDate].valueDate = "2025-11-22"
* extension[patientInvoice].extension[invoiceAmount].valueMoney.value = 85000
* extension[patientInvoice].extension[invoiceAmount].valueMoney.currency = #KES
* extension[patientInvoice].extension[patientShare].valueMoney.value = 0
* extension[patientInvoice].extension[patientShare].valueMoney.currency = #KES
