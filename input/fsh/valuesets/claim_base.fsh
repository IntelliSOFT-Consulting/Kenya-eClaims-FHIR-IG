
ValueSet: SocialHealthAuthorityInterventionsVS
Id: eclaims-social-health-authority-interventions-vs
Title: "Kenya Social Health Authority Interventions ValueSet"
Description: "ValueSet for interventions approved by the Kenya Social Health Authority (MOH-Kenya OCL: KenyaSocialHealthAuthorityInterventions)"
* ^status = #active
* ^experimental = false
* include codes from system KenyaSocialHealthAuthorityInterventionCS


ValueSet: BodySiteVS
Id: eclaims-body-site-vs
Title: "Kenya Institutional Body Site ValueSet"
Description: "ValueSet for body site codes used in Kenya institutional claims (MOH-Kenya OCL: INSTITUTIONAL-BODY-SITE)"
* ^status = #active
* ^experimental = false
* include codes from system KenyaBodySiteCS


ValueSet: SubSiteVS
Id: eclaims-sub-site-vs
Title: "Kenya Subsite ValueSet"
Description: "ValueSet for sub-site codes used in Kenya claims (MOH-Kenya OCL: SUBSITE)"
* ^status = #active
* ^experimental = false
* include codes from system KenyaSubSiteCS


ValueSet: ClaimDiagnosisVS
Id: eclaims-claim-diagnosis-vs
Title: "Claim Diagnosis ValueSet"
Description: "ValueSet for diagnosis codes used in Kenya eClaims, based on ICD-11 categories"
* ^status = #active
* ^experimental = false
* include codes from system ClaimDiagnosisCodeableConceptCS


ValueSet: WaiverTypeVS
Id: eclaims-waiver-type-vs
Title: "Waiver Type ValueSet"
Description: "ValueSet for types of waivers applicable in Kenya health insurance claims (MOH-Kenya OCL: WAIVER-TYPE)"
* ^status = #active
* ^experimental = false
* include codes from system WaiverTypeCS


ValueSet: PreAuthExclusionsVS
Id: eclaims-pre-auth-exclusions-vs
Title: "Preauthorization Exclusion Reason ValueSet"
Description: "ValueSet for reasons a service may be excluded from preauthorization in Kenya (MOH-Kenya OCL: PREAUTH-EXCLUSION-REASON)"
* ^status = #active
* ^experimental = false
* include codes from system PreAuthExclusionsCS


ValueSet: ExclusionVS
Id: eclaims-exclusion-vs
Title: "Coverage Exclusion Reason ValueSet"
Description: "ValueSet for reasons a service is excluded from coverage in Kenya health insurance (MOH-Kenya OCL: COVERAGE-EXCLUSION-REASON)"
* ^status = #active
* ^experimental = false
* include codes from system ExclusionCS


ValueSet: AttachmentTypeVS
Id: eclaims-attachment-type-vs
Title: "Attachment Type ValueSet"
Description: "ValueSet for types of attachments submitted with a claim in Kenya eClaims."
* ^status = #active
* ^experimental = false
* include codes from system AttachmentTypeCS
