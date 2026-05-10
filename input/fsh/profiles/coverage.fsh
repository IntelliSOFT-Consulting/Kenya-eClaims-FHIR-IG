Profile: EclaimsCoverage
Parent: Coverage
Id: eclaims-coverage
Title: "Coverage Profile"
Description: "This profile defines constraints on the Coverage resource for use within the Kenya eClaims Implementation Guide. It represents insurance coverage for a patient under a specific insurance scheme, including SHA and specialised schemes such as POMF and POMF_TEACHERS."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS

* insert IdentifierRequiredRule(identifier, 1..*)

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)

// Coverage type — bound to MOH-Kenya COVERAGE-TYPE ValueSet
* type 0..1 MS
* insert CodeableConceptRule(type, 0..1, MS)
* type from CoverageTypeVS (required)

// Subscriber
* insert ReferenceRule(subscriber, EClaimsPatient, 1..1)

// Relationship of subscriber to beneficiary
* relationship 1..1 MS
* insert CodeableConceptRule(relationship, 1..1, MS)
* relationship from http://hl7.org/fhir/ValueSet/subscriber-relationship (required)

// Beneficiary
* insert ReferenceRule(beneficiary, EClaimsPatient, 1..1)
* beneficiary.reference 1..1
* beneficiary.type 1..1

// Period
* period 0..1 MS
* period.start 0..1
* period.end 0..1

// Payor
* insert ReferenceRule(payor, EClaimsOrganization, 1..1)

// Class — bound to MOH-Kenya COVERAGE-CLASS ValueSet
* class 1..* MS
* insert CodeableConceptRule(class.type, 1..1, MS)
* class.type from CoverageClassVS (required)
* class.value 1..1 MS
* class.name 0..1

// Cost-to-beneficiary
* costToBeneficiary 0..* MS
* insert CodeableConceptRule(costToBeneficiary.type, 0..1, MS)
* costToBeneficiary.type from http://hl7.org/fhir/ValueSet/coverage-copay-type (required)
* costToBeneficiary.exception 0..* MS
* insert CodeableConceptRule(costToBeneficiary.exception.type, 1..1, MS)
* costToBeneficiary.exception.type from http://hl7.org/fhir/ValueSet/coverage-financial-exception (required)

// Extensions — bound to MOH-Kenya ValueSets
* extension contains PaymentMethodExtension named paymentMethod 0..1 MS
* extension[paymentMethod].valueCodeableConcept from PaymentMethodVS (required)

* extension contains MemberStatusExtension named memberStatus 0..1 MS
* extension[memberStatus].valueCodeableConcept from CoverageMemberStatusVS (required)

* extension contains PlanTypeExtension named planType 0..1 MS
* extension[planType].valueCodeableConcept from CoveragePlanTypeVS (required)

* extension contains AnnualLimitsCategoryExtension named annualLimitsCategory 1..1 MS
* extension[annualLimitsCategory].valueCodeableConcept from http://hl7.org/fhir/ValueSet/service-category (required)

* extension contains ExclusionExtension named exclusion 0..* MS
* extension[exclusion].valueCodeableConcept from ExclusionVS (required)

* extension contains PreAuthExclusionsExtension named preAuthExclusions 0..* MS
* extension[preAuthExclusions].valueCodeableConcept from PreAuthExclusionsVS (required)

* extension contains WaiverTypeExtension named waiverType 0..1 MS
* extension[waiverType].valueCodeableConcept from WaiverTypeVS (required)
