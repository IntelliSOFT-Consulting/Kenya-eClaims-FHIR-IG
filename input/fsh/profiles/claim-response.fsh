Profile: EclaimsResponse
Parent: Claim
Id: ke-eclaims-claim
Title: "Claim Response - Preauthorization"
Description: "This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It supports institutional claims with detailed clinical, financial, insurance, and adjudication metadata."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.tag from http://hl7.org/fhir/ValueSet/common-tags (required)

* identifier 1..1 MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)
* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)

* insert CodeableConceptRule(type, 1..1, MS)
* type from ClaimTypeVS (required)

* insert CodeableConceptRule(subType, 0..1, MS)
* subType from ClaimSubTypeVS (required)

* insert ReferenceRule(patient, Patient, 1..1)

* billablePeriod 0..1 MS
* created 1..1 MS

* insert ReferenceRule(insurer, Organization, 1..1)
* insert ReferenceRule(provider, Organization, 1..1)

* insert CodeableConceptRule(priority, 1..1, MS)
* priority from http://hl7.org/fhir/ValueSet/process-priority (required)

* fundsReserve 0..1 MS
* insert CodeableConceptRule(fundsReserve, 0..1, MS)
* fundsReserve from http://hl7.org/fhir/ValueSet/fundsreserve (required)

* related 0..* MS
* insert ReferenceRule(related.claim, Claim, 1..1)
* insert CodeableConceptRule(related.relationship, 1..1, MS)
* related.relationship from RelatedClaimRelationshipVS (required)

* prescription 0..1 MS
* prescription only Reference(MedicationRequest or DeviceRequest or VisionPrescription)

* insert ReferenceRule(originalPrescription, MedicationRequest, 1..1)
* insert ReferenceRule(referral, ServiceRequest, 1..1)

* payee 1..1 MS
* insert CodeableConceptRule(payee.type, 1..1, MS)
* payee.type from http://hl7.org/fhir/ValueSet/payeetype (required)
* payee.party 0..1 MS
* payee.party only Reference(Patient or Organization)

* insert ReferenceRule(facility, Location, 1..1)

* careTeam 1..* MS
* careTeam.sequence 1..1 MS
* insert ReferenceRule(careTeam.provider, Practitioner, 1..1)
* insert CodeableConceptRule(careTeam.role, 1..1, MS)
* careTeam.role from ClaimCareTeamRoleVS (required)
* insert CodeableConceptRule(careTeam.qualification, 1..1, MS)
* careTeam.qualification from ProviderQualificationVS (required)

* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* insert CodeableConceptRule(supportingInfo.category, 1..1, MS)
* supportingInfo.category from http://hl7.org/fhir/ValueSet/claim-informationcategory (required)
* supportingInfo.code 0..1 MS
* insert CodeableConceptRule(supportingInfo.code, 0..1, MS)
* supportingInfo.code from http://hl7.org/fhir/ValueSet/claim-exception (required)
* supportingInfo.timing[x] 0..1 MS
* supportingInfo.value[x] 0..1 MS
* supportingInfo.reason 0..1 MS
* insert CodeableConceptRule(supportingInfo.reason, 0..1, MS)
* supportingInfo.reason from http://hl7.org/fhir/ValueSet/missing-tooth-reason (required)

* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* insert CodeableConceptRule(diagnosis.diagnosisCodeableConcept, 1..1, MS)
* diagnosis.diagnosisCodeableConcept from ClaimDiagnosisVS (required)
* insert CodeableConceptRule(diagnosis.type, 1..1, MS)
* diagnosis.type from http://hl7.org/fhir/ValueSet/ex-diagnosistype (required)
* insert CodeableConceptRule(diagnosis.onAdmission, 0..1, MS)
* diagnosis.onAdmission from http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission (required)
* diagnosis.packageCode 0..1 MS
* insert CodeableConceptRule(diagnosis.packageCode, 0..1, MS)
* diagnosis.packageCode from http://hl7.org/fhir/ValueSet/ex-diagnosisrelatedgroup (required)

* procedure 0..* MS
* procedure.sequence 1..1 MS
* procedure.type 0..* MS
* insert CodeableConceptRule(procedure.type, 0..1, MS)
* procedure.type from http://hl7.org/fhir/ValueSet/ex-procedure-type (required)
* procedure.procedure[x] from http://hl7.org/fhir/ValueSet/icd-10-procedures (required)

* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insurance.coverage 1..1 MS
* insert ReferenceRule(insurance.coverage, Coverage, 1..1)
* insurance.preAuthRef 0..* MS
* insurance.claimResponse 0..1 MS

* accident 0..1 MS
* accident.date 1..1 MS
* accident.type 1..1 MS
* insert CodeableConceptRule(accident.type, 1..1, MS)
* accident.type from http://terminology.hl7.org/ValueSet/v3-ActIncidentCode (required)
* accident.location[x] 0..1 MS

* item 1..* MS
* item.sequence 1..1 MS
* item.careTeamSequence 1..* MS
* item.diagnosisSequence 0..* MS
* item.informationSequence 0..* MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* item.productOrService from SocialHealthAuthorityInterventionsVS (required)
* item.revenue 0..1 MS
* insert CodeableConceptRule(item.revenue, 0..1, MS)
* item.revenue from http://hl7.org/fhir/ValueSet/ex-revenue-center (required)
* item.category 0..1 MS
* insert CodeableConceptRule(item.category, 0..1, MS)
* item.category from http://hl7.org/fhir/ValueSet/ex-benefitcategory (required)
* item.modifier 0..* MS
* insert CodeableConceptRule(item.modifier, 0..1, MS)
* item.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* item.programCode 0..* MS
* insert CodeableConceptRule(item.programCode, 0..1, MS)
* item.programCode from http://hl7.org/fhir/ValueSet/ex-program-code (required)
* item.location[x] from http://hl7.org/fhir/ValueSet/service-place (required)
* item.serviced[x] 0..1 MS
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.unitPrice.currency 1..1 MS
* item.unitPrice.currency from http://hl7.org/fhir/ValueSet/currencies (required)
* item.factor 0..1 MS
* item.net 1..1 MS
* item.net.currency 1..1 MS
* item.net.currency from http://hl7.org/fhir/ValueSet/currencies (required)
* item.udi 0..* MS
* insert CodeableConceptRule(item.bodySite, 0..1, MS)
* item.bodySite from BodySiteVS (required)
* insert CodeableConceptRule(item.subSite, 0..1, MS)
* item.subSite from SubSiteVS (required)

* item.detail 0..* MS
* item.detail.sequence 1..1 MS
* insert CodeableConceptRule(item.detail.productOrService, 1..1, MS)
* item.detail.productOrService from SocialHealthAuthorityInterventionsVS (required)
* item.detail.revenue 0..1 MS
* insert CodeableConceptRule(item.detail.revenue, 0..1, MS)
* item.detail.revenue from http://hl7.org/fhir/ValueSet/ex-revenue-center (required)
* item.detail.category 0..1 MS
* insert CodeableConceptRule(item.detail.category, 0..1, MS)
* item.detail.category from http://hl7.org/fhir/ValueSet/ex-benefitcategory (required)
* item.detail.modifier 0..* MS
* insert CodeableConceptRule(item.detail.modifier, 0..1, MS)
* item.detail.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* item.detail.programCode 0..* MS
* insert CodeableConceptRule(item.detail.programCode, 0..1, MS)
* item.detail.programCode from http://hl7.org/fhir/ValueSet/ex-program-code (required)
* item.detail.quantity 1..1 MS
* item.detail.unitPrice 1..1 MS
* item.detail.net 1..1 MS
* item.detail.udi 0..* MS

* item.detail.subDetail 0..* MS
* item.detail.subDetail.sequence 1..1 MS
* insert CodeableConceptRule(item.detail.subDetail.productOrService, 1..1, MS)
* item.detail.subDetail.productOrService from SocialHealthAuthorityInterventionsVS (required)
* item.detail.subDetail.revenue 0..1 MS
* insert CodeableConceptRule(item.detail.subDetail.revenue, 0..1, MS)
* item.detail.subDetail.revenue from http://hl7.org/fhir/ValueSet/ex-revenue-center (required)
* item.detail.subDetail.category 0..1 MS
* insert CodeableConceptRule(item.detail.subDetail.category, 0..1, MS)
* item.detail.subDetail.category from http://hl7.org/fhir/ValueSet/ex-benefitcategory (required)
* item.detail.subDetail.modifier 0..* MS
* insert CodeableConceptRule(item.detail.subDetail.modifier, 0..1, MS)
* item.detail.subDetail.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* item.detail.subDetail.programCode 0..* MS
* insert CodeableConceptRule(item.detail.subDetail.programCode, 0..1, MS)
* item.detail.subDetail.programCode from http://hl7.org/fhir/ValueSet/ex-program-code (required)
* item.detail.subDetail.quantity 1..1 MS
* item.detail.subDetail.unitPrice 1..1 MS
* item.detail.subDetail.net 1..1 MS
* item.detail.subDetail.udi 0..* MS

* total 1..1 MS



Instance: ExampleEclaimsResponse
InstanceOf: EclaimsResponse
Title: "Example Claim Response"
Description: "An example Claim Response resource for Kenya eClaims Preauthorization, fully populated for testing."

* id = "CR-00001"
* meta.profile[0] = "https://fhir.dha.go.ke/eclaims/StructureDefinition/ke-eclaims-claim"

* identifier[0].system = "https://fhir.dha.go.ke/eclaims/Identifier/claim-number"
* identifier[0].value = "CLAIM-00001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/claim-type-cs"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional"

* subType.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/claim-subtype-cs"
* subType.coding[0].code = #inpatient
* subType.coding[0].display = "Inpatient"

* patient = Reference(Patient/PT-0001)
* provider = Reference(Organization/ORG-001)
* insurer = Reference(Organization/INS-001)

* billablePeriod.start = "2025-11-01"
* billablePeriod.end = "2025-11-30"

* created = "2025-12-16T12:00:00+03:00"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"

* related[0].claim = Reference(Claim/CLAIM-0000X)
* related[0].relationship.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/related-claim-relationship-cs"
* related[0].relationship.coding[0].code = #associated
* related[0].relationship.coding[0].display = "Associated"

* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* payee.party = Reference(Organization/ORG-001)
* facility = Reference(Location/LOC-001)

* careTeam[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* careTeam[0].provider = Reference(Practitioner/PRA-001)
* careTeam[0].role.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/claim-care-team-role-cs"
* careTeam[0].role.coding[0].code = #PRIMARY
* careTeam[0].role.coding[0].display = "Primary provider"
* careTeam[0].qualification.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/eclaims-provider-qualification-cs"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Doctor of Medicine"

* supportingInfo[0].sequence = 1
* supportingInfo[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[0].category.coding[0].code = #attachment
* supportingInfo[0].category.coding[0].display = "Attachment"
* supportingInfo[0].valueAttachment.contentType = #application/pdf
* supportingInfo[0].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/claim/CHURCHILL_X-RAY.pdf"
* supportingInfo[0].valueAttachment.title = "CHURCHILL X-RAY"
* supportingInfo[0].valueAttachment.creation = "2025-11-29T15:17:07+03:00"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "http://id.who.int/icd/release/11/mms"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #NC72.5
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Fracture of shaft of femur"
* diagnosis[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-diagnosistype"
* diagnosis[0].type.coding[0].code = #principal
* diagnosis[0].type.coding[0].display = "Principal Diagnosis"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/COV-0001)

* originalPrescription = Reference(MedicationRequest/MED-0001)
* referral = Reference(ServiceRequest/SRV-0001)

* item[0].sequence = 1
* item[0].productOrService.coding[0].system = "https://fhir.dha.go.ke/eclaims/CodeSystem/KenyaSocialHealthAuthorityInterventionCS"
* item[0].productOrService.coding[0].code = #SHA-19-444
* item[0].productOrService.coding[0].display = "Open reduction and internal fixation: Femur"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 145600
* item[0].unitPrice.currency = #KES
* item[0].net.value = 145600
* item[0].net.currency = #KES

* total.value = 145600
* total.currency = #KES






