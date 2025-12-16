Profile: EclaimsResponse
Parent: Claim
Id: eclaims-claim
Title: "Claim Response - Preauthorization"
Description: "This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It supports institutional claims with detailed clinical, financial, insurance, and adjudication metadata."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS


* identifier 1..1 MS
* status 1..1 MS
* use 1..1 MS

* insert CodeableConceptRule(type, 1..1, MS)
* insert CodeableConceptRule(subType, 0..1, MS)
* insert ReferenceRule(patient, Patient, 1..1)

* billablePeriod 0..1 MS
* created 1..1 MS

* insert ReferenceRule(insurer, Organization, 1..1)

* insert ReferenceRule(provider, Organization, 1..1)

* insert CodeableConceptRule(priority, 1..1, MS)

* related 0..* MS

* insert ReferenceRule(related.claim, Claim, 1..1)
* insert CodeableConceptRule(related.relationship, 1..1, MS)

* prescription 0..1 MS
* prescription only Reference(MedicationRequest or DeviceRequest or VisionPrescription)

* insert ReferenceRule(originalPrescription, MedicationRequest, 1..1)
* insert ReferenceRule(referral, ServiceRequest, 1..1)

* payee 1..1 MS

* insert CodeableConceptRule(payee.type, 1..1, MS)
* payee.party 0..1 MS

* payee.party only Reference(Patient or Organization)

* insert ReferenceRule(facility, Location, 1..1)

* careTeam 1..* MS
* careTeam.sequence 1..1 MS

* insert ReferenceRule(careTeam.provider, Practitioner, 1..1)
* insert CodeableConceptRule(careTeam.role , 1..1, MS)
* insert CodeableConceptRule(careTeam.qualification , 1..1, MS)

* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* supportingInfo.code 0..1 MS
* supportingInfo.timing[x] 0..1 MS
* supportingInfo.value[x] 0..1 MS
* supportingInfo.reason 0..1 MS

* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept

* insert CodeableConceptRule(diagnosis.type , 1..1, MS)
* insert CodeableConceptRule(diagnosis.onAdmission , 0..1, MS)

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
* accident.location[x] 0..1 MS


* item 1..* MS
* item.sequence 1..1 MS
* item.careTeamSequence 1..* MS
* item.diagnosisSequence 0..* MS
* item.informationSequence 0..* MS


* insert CodeableConceptRule(item.productOrService , 1..1, MS)

* item.serviced[x] 0..1 MS
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.factor 0..1 MS
* item.net 1..1 MS
* item.udi 0..* MS

* insert CodeableConceptRule(item.bodySite , 0..1, MS)
* insert CodeableConceptRule(item.subSite , 0..1, MS)

* item.detail 0..* MS
* item.detail.sequence 1..1 MS

* insert CodeableConceptRule(item.detail.productOrService , 1..1, MS)

* item.detail.quantity 1..1 MS
* item.detail.unitPrice 1..1 MS
* item.detail.net 1..1 MS
* item.detail.udi 0..* MS

* item.detail.subDetail 0..* MS
* item.detail.subDetail.sequence 1..1 MS

* insert CodeableConceptRule(item.detail.subDetail.productOrService , 1..1, MS)

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
* meta.profile[0] = "http://fhir.sha.go.ke/fhir/StructureDefinition/eclaims-claim"

* identifier[0].system = "http://fhir.sha.go.ke/fhir/Identifier/claim-number"
* identifier[0].value = "CLAIM-00001"

* status = #active
* use = #preauthorization

* type.coding[0].system = "http://fhir.sha.go.ke/fhir/CodeSystem/claim-type"
* type.coding[0].code = #institutional
* type.coding[0].display = "Institutional Claim"

* subType.coding[0].system = "http://fhir.sha.go.ke/fhir/CodeSystem/claim-subtype"
* subType.coding[0].code = #inpatient
* subType.coding[0].display = "Inpatient"

* patient = Reference(Patient/PT-0001)
* provider = Reference(Organization/ORG-001)
* insurer = Reference(Organization/INS-001)

* billablePeriod.start = "2025-11-01"
* billablePeriod.end = "2025-11-30"

* created = "2025-12-16T12:00:00+03:00"

* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #routine
* priority.coding[0].display = "Routine"

* related[0].claim = Reference(Claim/CLAIM-0000X)
* related[0].relationship.coding[0].system = "http://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type"
* related[0].relationship.coding[0].code = #claim
* related[0].relationship.coding[0].display = "Claim"

* payee.type.coding[0].system = "http://fhir.sha.go.ke/fhir/CodeSystem/payee-type"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"

* payee.party = Reference(Organization/ORG-001)
* facility = Reference(Location/LOC-001)

* careTeam[0].sequence = 1
* item[0].careTeamSequence[0] = 1
* careTeam[0].provider = Reference(Practitioner/PRA-001)
* careTeam[0].role.coding[0].system = "http://terminology.hl7.org/CodeSystem/claimcareteamrole"
* careTeam[0].role.coding[0].code = #primary
* careTeam[0].role.coding[0].display = "Primary Provider"
* careTeam[0].qualification.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0360/2.7"
* careTeam[0].qualification.coding[0].code = #MD
* careTeam[0].qualification.coding[0].display = "Medical Doctor"

* supportingInfo[0].sequence = 1
* supportingInfo[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[0].category.coding[0].code = #attachment
* supportingInfo[0].category.coding[0].display = "Attachment"
* supportingInfo[0].valueAttachment.contentType = #application-pdf
* supportingInfo[0].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/claim/CHURCHILL_X-RAY.pdf"
* supportingInfo[0].valueAttachment.title = "CHURCHILL X-RAY"
* supportingInfo[0].valueAttachment.creation = "2025-11-29T15:17:07+03:00"

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://fhir.sha.go.ke/fhir/terminology/CodeSystem/icd-11"
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
* item[0].productOrService.coding[0].system = "https://fhir.sha.go.ke/fhir/CodeSystem/intervention-codes"
* item[0].productOrService.coding[0].code = #SHA-19-444
* item[0].productOrService.coding[0].display = "Open reduction and internal fixation: Femur"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 145600
* item[0].unitPrice.currency = #KES
* item[0].net.value = 145600
* item[0].net.currency = #KES

* total.value = 145600
* total.currency = #KES






