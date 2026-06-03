// -----------------------------------------------------------------------------
// RuleSet: CodeableConceptRule
// Description: Enforces strict 1..1 structure on Codes (System + Code + Display).
// Usage: * insert CodeableConceptRule(type, 1..1, MS)
// -----------------------------------------------------------------------------
RuleSet: CodeableConceptRule(path, card, strength)
* {path} {card} {strength}
* {path}.coding 1..* MS
* {path}.coding.system 1..1 MS
* {path}.coding.code 1..1 MS
* {path}.coding.display 1..1 MS
* {path}.text 0..1 MS

// -----------------------------------------------------------------------------
// RuleSet: IdentifierRequiredRule
// Description: Enforces that identifier has system and value
// Usage: * insert IdentifierRequiredRule(identifier, 1..*)
// -----------------------------------------------------------------------------
RuleSet: IdentifierRequiredRule(path, card)
* {path} {card} MS
* {path}.system 1..1 MS
* {path}.value 1..1 MS

// -----------------------------------------------------------------------------
// RuleSet: ReferenceRule
// Description: Enforces a reference to a specific profile or resource type.
// Usage: * insert ReferenceRule(patient, Patient, 1..1)
// -----------------------------------------------------------------------------
RuleSet: ReferenceRule(path, target, card)
* {path} {card} MS
* {path} only Reference({target})

// -----------------------------------------------------------------------------
// RuleSet: KenyaClaimBaseRules
// Description: Mirrors all constraints defined in KenyaClaimBase so specialty
//              profiles can declare Parent: Claim and insert this RuleSet.
// -----------------------------------------------------------------------------
RuleSet: KenyaClaimBaseRules
* meta 1..1 MS
* meta.profile 1..* MS
* meta.tag from http://hl7.org/fhir/ValueSet/common-tags (required)
* insert IdentifierRequiredRule(identifier, 1..*)
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)
* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)
* insert CodeableConceptRule(type, 1..1, MS)
* type from ClaimTypeVS (required)
* insert CodeableConceptRule(subType, 0..1, MS)
* subType from ClaimSubTypeVS (required)
* insert CodeableConceptRule(priority, 1..1, MS)
* priority from http://hl7.org/fhir/ValueSet/process-priority (required)
* insert ReferenceRule(patient, EClaimsPatient, 1..1)
* insert ReferenceRule(provider, EClaimsOrganization, 1..1)
* insert ReferenceRule(insurer, EClaimsOrganization, 0..1)
* related 0..* MS
* related.claim 1..1 MS
* related.relationship 1..1 MS
* insert CodeableConceptRule(related.relationship, 1..1, MS)
* related.relationship from RelatedClaimRelationshipVS (required)
* payee 1..1 MS
* payee.type 1..1 MS
* insert CodeableConceptRule(payee.type, 1..1, MS)
* payee.type from ClaimResponsePayeeTypeVS (required)
* careTeam 0..* MS
* careTeam.sequence 1..1 MS
* insert ReferenceRule(careTeam.provider, EClaimsPractitioner, 1..1)
* careTeam.role 0..1 MS
* insert CodeableConceptRule(careTeam.role, 0..1, MS)
* careTeam.role from ClaimCareTeamRoleVS (required)
* careTeam.qualification 0..1 MS
* insert CodeableConceptRule(careTeam.qualification, 0..1, MS)
* careTeam.qualification from ProviderQualificationVS (required)
* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* insert CodeableConceptRule(supportingInfo.category, 1..1, MS)
* supportingInfo.category from http://hl7.org/fhir/ValueSet/claim-informationcategory (required)
* supportingInfo.value[x] only Attachment
* supportingInfo.valueAttachment 1..1 MS
* supportingInfo.code 0..1 MS
* insert CodeableConceptRule(supportingInfo.code, 0..1, MS)
* supportingInfo.code from http://hl7.org/fhir/ValueSet/claim-exception (required)
* supportingInfo.reason 0..1 MS
* insert CodeableConceptRule(supportingInfo.reason, 0..1, MS)
* supportingInfo.reason from http://hl7.org/fhir/ValueSet/missing-tooth-reason (required)
* billablePeriod 1..1 MS
* billablePeriod.start 1..1 MS
* billablePeriod.end 1..1 MS
* created 1..1 MS
* extension contains ProviderAuthToken named providerAuthToken 0..1 MS
* extension contains PreauthToken named preauthToken 0..1 MS
* extension contains RawPreauthSourceData named rawData 0..1 MS
* extension contains HasCoinsurance named hasCoinsurance 0..1 MS
* accident 0..1 MS
* accident.type 0..1 MS
* insert CodeableConceptRule(accident.type, 0..1, MS)
* accident.type from http://terminology.hl7.org/ValueSet/v3-ActIncidentCode (required)
* fundsReserve 0..1 MS
* insert CodeableConceptRule(fundsReserve, 0..1, MS)
* fundsReserve from ClaimResponseFundsReserveVS (required)
* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* item.productOrService from SocialHealthAuthorityInterventionsVS (required)
* insert CodeableConceptRule(item.category, 1..1, MS)
* item.category from http://hl7.org/fhir/ValueSet/ex-benefitcategory (required)
* item.serviced[x] 0..1 MS
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.unitPrice.currency 1..1 MS
* item.unitPrice.currency from http://hl7.org/fhir/ValueSet/currencies (required)
* item.net 1..1 MS
* item.net.currency 1..1 MS
* item.net.currency from http://hl7.org/fhir/ValueSet/currencies (required)
* item.bodySite 0..1 MS
* item.bodySite from BodySiteVS (required)
* item.subSite 0..* MS
* item.subSite from SubSiteVS (required)
* item.revenue 0..1 MS
* insert CodeableConceptRule(item.revenue, 0..1, MS)
* item.revenue from http://hl7.org/fhir/ValueSet/ex-revenue-center (required)
* item.modifier 0..* MS
* insert CodeableConceptRule(item.modifier, 0..1, MS)
* item.modifier from http://hl7.org/fhir/ValueSet/claim-modifiers (required)
* item.programCode 0..* MS
* insert CodeableConceptRule(item.programCode, 0..1, MS)
* item.programCode from http://hl7.org/fhir/ValueSet/ex-program-code (required)
* item.location[x] from http://hl7.org/fhir/ValueSet/service-place (required)
* item.detail 0..1 MS
* item.detail.productOrService 1..1 MS
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
* item.detail.subDetail 0..1 MS
* item.detail.subDetail.productOrService 1..1 MS
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
* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* insert CodeableConceptRule(diagnosis.diagnosisCodeableConcept, 1..1, MS)
* diagnosis.diagnosisCodeableConcept from ClaimDiagnosisVS (required)
* diagnosis.packageCode 0..1 MS
* insert CodeableConceptRule(diagnosis.packageCode, 0..1, MS)
* diagnosis.packageCode from http://hl7.org/fhir/ValueSet/ex-diagnosisrelatedgroup (required)
* diagnosis.type 0..* MS
* insert CodeableConceptRule(diagnosis.type, 0..1, MS)
* diagnosis.type from http://hl7.org/fhir/ValueSet/ex-diagnosistype (required)
* diagnosis.onAdmission 0..1 MS
* insert CodeableConceptRule(diagnosis.onAdmission, 0..1, MS)
* diagnosis.onAdmission from http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission (required)
* procedure 0..* MS
* procedure.sequence 1..1 MS
* procedure.type 0..* MS
* insert CodeableConceptRule(procedure.type, 0..1, MS)
* procedure.type from http://hl7.org/fhir/ValueSet/ex-procedure-type (required)
* procedure.procedure[x] from http://hl7.org/fhir/ValueSet/icd-10-procedures (required)
* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insert ReferenceRule(insurance.coverage, EclaimsCoverage, 1..1)
* total 0..1 MS
* total.value 1..1 MS
* total.currency 1..1 MS

