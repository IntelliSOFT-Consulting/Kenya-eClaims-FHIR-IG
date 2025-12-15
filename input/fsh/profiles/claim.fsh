Profile: eClaimsClaim
Parent: Claim
Id: eclaims-claim
Title: "Claim Profile"
Description: " This profile defines constraints on the Claim resource for use within the Kenya eClaims Implementation Guide. It captures information about a submitted healthcare claim, including details on the patient, provider, services rendered, and associated costs, supporting reimbursement and health insurance processing."

* ^status = #active
* ^version = "1.0.0"
* ^experimental = false

// Required fields at the root level
* status 1..1 MS
* use 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* insurer 0..1 MS
* provider 1..1 MS
* priority 1..1 MS
* type 1..1 MS

// Diagnosis
* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosisCodeableConcept 1..1 MS
* diagnosis.diagnosisCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (example)

// Insurance
* insurance 1..1 MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insurance.coverage 1..1
* insurance.coverage only Reference(Coverage)

// Item
* item 1..* MS
* item.sequence 1..1 MS
* item.productOrService 1..1 MS
* item.productOrService from http://hl7.org/fhir/ValueSet/service-uscls (example)
* item.category 0..1 MS
* item.category from http://hl7.org/fhir/ValueSet/ex-benefitcategory (example)
* item.quantity 0..1 MS
* item.unitPrice 0..1 MS
* item.unitPrice.currency 0..1 MS
* item.net 0..1 MS
* item.net.currency 0..1 MS


Instance: ExampleKenyaClaim
InstanceOf: eClaimsClaim
Title: "Claim - Example"
Description: "Represents An example Claim instance conforming to the Kenya Claim Profile"
Usage: #example

* id = "f6dc7f9e-1558-4b92-adbd-447771c7b2f9"
* identifier[0].system = "https://uat-mis.apeiro-digital.com/fhir/claim"
* identifier[0].value = "f6dc7f9e-1558-4b92-adbd-447771c7b2f9"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #institutional
* subType.coding[0].system = "http://terminology.hl7.org/CodeSystem/ex-claimsubtype"
* subType.coding[0].code = #op
* use = #preauthorization
* patient.reference = "https://uat-mis.apeiro-digital.com/fhir/Patient/BZ38380568-6"
* patient.type = "Patient"
* patient.identifier.use = #official
* patient.identifier.system = "https://uat-mis.apeiro-digital.com/fhir/identifier/shanumber"
* patient.identifier.value = "BZ38380568-6"
* billablePeriod.start = "2025-01-04"
* billablePeriod.end = "2025-01-05"
* created = "2025-01-03"
* provider.reference = "Organization/FID-22-101101-0"
* provider.type = "Organization"
* provider.identifier.use = #official
* provider.identifier.system = "https://fr.kenya-hie.health/api/v4/Organization"
* provider.identifier.value = "FID-22-101101-0"
* provider.identifier.type.coding[0].system = "http://ts-kenyahie.health/facility-identifier-type"
* provider.identifier.type.coding[0].code = #fr-code
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal

* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "https://uat-mis.apeiro-digital.com/fhir/terminology/CodeSystem/icd-11"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #XT77
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "XT77"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage.reference = "https://uat-mis.apeiro-digital.com/fhir/Coverage/CR6164711105276-6-sha-coverage"

* item[0].sequence = 1
* item[0].category.coding[0].system = "https://uat-mis.apeiro-digital.com/fhir/CodeSystem/category-codes"
* item[0].category.coding[0].code = #procedure
* item[0].category.coding[0].display = "Procedure"
* item[0].productOrService.coding[0].system = "https://uat-mis.apeiro-digital.com/fhir/CodeSystem/intervention-codes"
* item[0].productOrService.coding[0].code = #SHA-12-001
* item[0].productOrService.coding[0].display = "SHA-12-001"
* item[0].servicedDate = "2025-01-04"
* item[0].quantity.value = 1.0
* item[0].unitPrice.value = 50.0
* item[0].unitPrice.currency = #KES
* item[0].factor = 1
* item[0].net.value = 50.0
* item[0].net.currency = #KES
* item[0].extension[0].url = "https://uat-mis.apeiro-digital.com/fhir/sha-coverage/StructureDefinition/Coverage"
* item[0].extension[0].valueReference.reference = "https://uat-mis.apeiro-digital.com/fhir/Coverage/CR6164711105276-6-sha-coverage"

* total.value = 50.0
* total.currency = #KES

