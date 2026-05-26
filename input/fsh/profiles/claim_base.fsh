Profile: KenyaClaimBase
Parent: Claim
Id: ke-eclaims-claimbase
Title: "Kenya eClaims Base Profile"
Description: """
This is the foundation for all Financial Claims and Preauthorizations in Kenya.
It enforces standard identifiers, actor references (Patient, Provider) and common extensions
used across the entire eClaims ecosystem.
"""

// Identifiers & Metadata
* insert IdentifierRequiredRule(identifier, 1..*)
* language from http://hl7.org/fhir/ValueSet/all-languages (preferred)
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)

* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)

* insert CodeableConceptRule(type, 1..1, MS)
* type from ClaimTypeVS (required)

* insert CodeableConceptRule(subType, 0..1, MS)
* subType from ClaimSubTypeVS (required)

* insert CodeableConceptRule(priority, 1..1, MS)
* priority from ProcessPriorityVS (required)

// Actors
* insert ReferenceRule(patient, EClaimsPatient, 1..1)
* insert ReferenceRule(provider, EClaimsOrganization, 1..1)
* insert ReferenceRule(insurer, EClaimsOrganization, 0..1)

// Related claims
* related 0..* MS
* related.claim 1..1 MS
* related.relationship 1..1 MS
* insert CodeableConceptRule(related.relationship, 1..1, MS)
* related.relationship from RelatedClaimRelationshipVS (required)

// Payee
* payee 1..1 MS
* payee.type 1..1 MS
* insert CodeableConceptRule(payee.type, 1..1, MS)
* payee.type from PayeeTypeVS (required)

// Care team
* careTeam 0..* MS
* careTeam.sequence 1..1 MS
* insert ReferenceRule(careTeam.provider, EClaimsPractitioner, 1..1)
* careTeam.role 0..1 MS
* insert CodeableConceptRule(careTeam.role, 0..1, MS)
* careTeam.role from ClaimCareTeamRoleVS (required)
* careTeam.qualification 0..1 MS
* insert CodeableConceptRule(careTeam.qualification, 0..1, MS)
* careTeam.qualification from http://hl7.org/fhir/ValueSet/provider-qualification (required)

// Supporting info
* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* insert CodeableConceptRule(supportingInfo.category, 1..1, MS)
* supportingInfo.category from ClaimInformationCategoryVS (required)
* supportingInfo.value[x] only Attachment
* supportingInfo.valueAttachment 1..1 MS

// Timing
// In Preauth = "Expected Date range"
// In Claim  = "Actual Date range"
* billablePeriod 1..1 MS
* billablePeriod.start 1..1 MS
* billablePeriod.end 1..1 MS
* created 1..1 MS

// Common extensions
* extension contains ProviderAuthToken named providerAuthToken 0..1 MS
* extension contains PreauthToken named preauthToken 0..1 MS
* extension contains RawPreauthSourceData named rawData 0..1 MS
* extension contains HasCoinsurance named hasCoinsurance 0..1 MS

// Accident
* accident 0..1 MS
* accident.type 0..1 MS
* insert CodeableConceptRule(accident.type, 0..1, MS)
* accident.type from http://terminology.hl7.org/ValueSet/v3-ActIncidentCode (required)

// Funds reserve
* fundsReserve 0..1 MS
* insert CodeableConceptRule(fundsReserve, 0..1, MS)
* fundsReserve from http://hl7.org/fhir/ValueSet/fundsreserve (required)

// Line Items
* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* item.productOrService from KenyaSocialHealthAuthorityInterventionsVS (required)
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
* item.bodySite from KenyaBodySiteVS (required)
* item.subSite 0..* MS
* item.subSite from KenyaSubSiteVS (required)
* item.detail 0..1 MS
* item.detail.productOrService 1..1 MS
* item.detail.productOrService from KenyaSocialHealthAuthorityInterventionsVS (required)
* item.detail.subDetail 0..1 MS
* item.detail.subDetail.productOrService 1..1 MS
* item.detail.subDetail.productOrService from KenyaSocialHealthAuthorityInterventionsVS (required)

// Clinical & Diagnosis
* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* insert CodeableConceptRule(diagnosis.diagnosisCodeableConcept, 1..1, MS)
* diagnosis.diagnosisCodeableConcept from ClaimDiagnosisCodeableConceptVS (required)
* diagnosis.type 0..* MS
* insert CodeableConceptRule(diagnosis.type, 0..1, MS)
* diagnosis.type from DiagnosisTypeVS (required)
* diagnosis.onAdmission 0..1 MS
* insert CodeableConceptRule(diagnosis.onAdmission, 0..1, MS)
* diagnosis.onAdmission from http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission (required)

// Insurance
* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insert ReferenceRule(insurance.coverage, EclaimsCoverage, 1..1)

// Totals
* total 0..1 MS
* total.value 1..1 MS
* total.currency 1..1 MS
