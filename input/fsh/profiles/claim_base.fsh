Profile: KenyaClaimBase
Parent: Claim
Id: kenya-claim-base
Title: "Kenya eClaims Base Profile"
Description: """
This is the foundation for all Financial Claims and Preauthorizations in Kenya. 
It enforces standard identifiers, actor references (Patient, Provider) and common extensions 
used across the entire eClaims ecosystem.
"""
// Identifiers & Metadata
* insert IdentifierRequiredRule(identifier, 1..*)
* status 1..1 MS
* use 1..1 MS

* insert CodeableConceptRule(type, 1..1, MS)
* type from http://hl7.org/fhir/ValueSet/claim-type (extensible)

* insert CodeableConceptRule(subType, 0..1, MS)
* subType from http://terminology.hl7.org/CodeSystem/ex-claimsubtype (extensible)

* insert CodeableConceptRule(priority, 1..1, MS)
* priority from http://hl7.org/fhir/ValueSet/process-priority (required)

// Actors
* insert ReferenceRule(patient, Patient, 1..1)
* insert ReferenceRule(provider, Organization, 1..1)
* insert ReferenceRule(insurer, Organization, 0..1)

* careTeam 0..* MS
* careTeam.sequence 1..1 MS
* insert ReferenceRule(careTeam.provider, Practitioner, 1..1)

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

// Line Items
* item 1..* MS
* item.sequence 1..1 MS
* insert CodeableConceptRule(item.productOrService, 1..1, MS)
* insert CodeableConceptRule(item.category, 1..1, MS)
* item.serviced[x] 0..1 MS
* item.quantity 1..1 MS
* item.unitPrice 1..1 MS
* item.net 1..1 MS
* item.bodySite 0..1 MS
* item.bodySite from KenyaBodySiteVS
* item.subSite 0..1 MS
* item.subSite from KenyaSubSiteVS
* item.detail 0..1 MS
* item.detail.productOrService 1..1 MS
* item.detail.productOrService from KenyaSocialHealthAuthorityInterventionsVS
* item.detail.subDetail 0..1 MS
* item.detail.subDetail.productOrService 1..1 MS
* item.detail.subDetail.productOrService from KenyaSocialHealthAuthorityInterventionsVS



// Clinical & Supporting Info
* diagnosis 1..* MS
* diagnosis.sequence 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* insert CodeableConceptRule(diagnosis.diagnosisCodeableConcept, 1..1, MS)
* diagnosis.diagnosisCodeableConcept from  ClaimDiagnosisCodeableConceptVS

// Attachments (PDFs, Scans)
* supportingInfo 0..* MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.category 1..1 MS
* supportingInfo.value[x] only Attachment
* supportingInfo.valueAttachment 1..1 MS

// Financials
* insurance 1..* MS
* insurance.sequence 1..1 MS
* insurance.focal 1..1 MS
* insert ReferenceRule(insurance.coverage, EclaimsCoverage, 1..1)

* total 0..1 MS
* total.value 1..1 MS
* total.currency 1..1 MS