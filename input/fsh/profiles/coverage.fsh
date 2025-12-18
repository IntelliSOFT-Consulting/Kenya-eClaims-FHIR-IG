Profile: EclaimsCoverage
Parent: Coverage
Id: eclaims-coverage
Title: "Coverage Profile"
Description: "This profile defines constraints on the Coverage resource for use within the Kenya eClaims Implementation Guide. It represents insurance coverage for a patient under a specific insurance scheme, including SHA and specialised schemes such as POMF and POMF_TEACHERS."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS

* insert IdentifierRequiredRule(identifier, 1..*)

* status 1..1 MS

* insert ReferenceRule(beneficiary, Patient, 1..1)

* extension contains PaymentMethodExtension named paymentMethod 0..1 MS
* extension contains MemberStatusExtension named memberStatus 0..1 MS
* extension contains PlanTypeExtension named planType 0..1 MS
* extension contains AnnualLimitsCategoryExtension named annualLimitsCategory 1..1 MS
* extension contains ExclusionExtension named exclusion 0..* MS
* extension contains PreAuthExclusionsExtension named preAuthExclusions 0..* MS
* extension contains WaiverTypeExtension named waiverType 0..1 MS


* beneficiary.reference 1..1
* beneficiary.type 1..1


* period 0..1 MS
* period.start 0..1
* period.end 0..1


* class 1..* MS
* insert CodeableConceptRule(class.type, 1..1, MS)

* class.value 1..1 MS
* class.name 0..1

* insert ReferenceRule(subscriber, Patient, 1..1)

* insert CodeableConceptRule(relationship, 1..1, MS)

* insert ReferenceRule(payor, Organization, 1..1)



// Instance: EclaimsCoverageExample
// InstanceOf: EclaimsCoverage
// Title: "Example SHA Coverage"
// Description: "An example insurance coverage for a patient under the SHA scheme."


// * id = "CR1569230130821-1-sha-coverage"

// * meta.profile[0] = "https://fhir.sha.go.ke/fhir/StructureDefinition/eclaims-coverage"

// * identifier[0].system = "https://fhir.sha.go.ke/fhir/Coverage"
// * identifier[0].value = "CR1569230130821-SHA"


// * status = #active

// * beneficiary.reference = "Patient/CR1569230130821"
// * beneficiary.type = "Patient"

// * period.start = "2025-01-01"
// * period.end = "2025-12-31"

// * class[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/coverage-class"
// * class[0].type.coding.code = #group
// * class[0].type.coding.display = "Group"

// * class[0].value = "SHA-CIVIL-SERVANTS"
// * class[0].name = "SHA Civil Servants Scheme"


// * subscriber.reference = "Patient/CR1569230130821"


// * relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
// * relationship.coding.code = #self
// * relationship.coding.display = "Self"


// * payor[0].reference = "Organization/SHA"
