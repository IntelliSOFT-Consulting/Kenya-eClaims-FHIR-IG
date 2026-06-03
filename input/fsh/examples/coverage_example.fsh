Instance: EClaimsCoverageExample
InstanceOf: EclaimsCoverage
Usage: #example
Title: "Example eClaims Coverage"
Description: "An example Coverage resource conforming to EclaimsCoverage."

* id = "ECLM-COV-001"

* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-coverage"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/coverage-number"
* identifier[0].value = "COV-SHA-2024-001234"

* status = #active

* type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/coverage-type-cs"
* type.coding[0].code = #MEDICAL
* type.coding[0].display = "Medical"

* subscriber = Reference(Patient/ECLM-PT-001)
* relationship.coding[0].system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding[0].code = #self
* relationship.coding[0].display = "Self"

* beneficiary = Reference(Patient/ECLM-PT-001)
* beneficiary.reference = "Patient/ECLM-PT-001"
* beneficiary.type = "Patient"

* period.start = "2024-01-01"
* period.end = "2024-12-31"

* payor[0] = Reference(Organization/ECLM-INS-001)

* class[0].type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/coverage-class-cs"
* class[0].type.coding[0].code = #GROUP
* class[0].type.coding[0].display = "Group"
* class[0].value = "SHA-SOCIAL-001"
* class[0].name = "SHA Social Health Scheme"

* extension[paymentMethod].valueCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/payment-method-cs"
* extension[paymentMethod].valueCodeableConcept.coding[0].code = #MOBILE-MONEY
* extension[paymentMethod].valueCodeableConcept.coding[0].display = "Mobile Money"

* extension[memberStatus].valueCodeableConcept.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/coverage-member-status-cs"
* extension[memberStatus].valueCodeableConcept.coding[0].code = #ACTIVE
* extension[memberStatus].valueCodeableConcept.coding[0].display = "Active"

* extension[annualLimitsCategory].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* extension[annualLimitsCategory].valueCodeableConcept.coding[0].code = #17
* extension[annualLimitsCategory].valueCodeableConcept.coding[0].display = "General Practice"
