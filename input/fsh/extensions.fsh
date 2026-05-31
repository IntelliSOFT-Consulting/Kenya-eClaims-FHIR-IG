Extension: ClaimStateExtension
Id: eclaim-state-extension
Title: "Claim Workflow State"
Description: "Tracks the specific state of the claim (e.g., Sent Back, Approved, surveillance)."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-state-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

Extension: ClaimExpiryExtension
Id: eclaim-expiry-extension
Title: "Preauthorization Expiry Date"
Description: "Indicates when the approved preauthorization expires."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-expiry-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: PaymentMethodExtension
Id: eclaims-payment-method-extension
Title: "Paymen tMethod Extension"
Description: "The preferred method of payment for the beneficiary's share (e.g., credit card, direct debit)."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/payment-method-extension"
* ^context[0].type = #element
* ^context[0].expression = "Coverage"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: MemberStatusExtension
Id: eclaims-member-status-extension
Title: "Current member status Extension"
Description: "Current member status"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/member-status-extension"
* ^context[0].type = #element
* ^context[0].expression = "Coverage"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: PlanTypeExtension
Id: eclaims-plan-type-extension
Title: "Plan Type Extension"
Description: "The specific type of plan"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/plan-type-extension"
* ^context[0].type = #element
* ^context[0].expression = "Coverage"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: AnnualLimitsCategoryExtension
Id: eclaims-annual-limit-category-extension
Title: "Annual Limits Category Extension"
Description: "The category of service to which the limit applies."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/annual-limit-category-extension"
* ^context[0].type = #element
* ^context[0].expression = "Coverage"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: ExclusionExtension
Id: eclaims-exclusion-extension
Title: "Exclusion Extension"
Description: "A list of services or conditions that are explicitly not covered by this plan."
* ^context[0].type = #element
* ^context[0].expression = "Coverage"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ExclusionVS (required)

Extension: PreAuthExclusionsExtension
Id: eclaims-pre-auth-exclusion-extension
Title: "Preauthorization Expiry Date"
Description: "Services excluded from preauthorization." 
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from PreAuthExclusionsVS (required)

Extension: WaiverTypeExtension
Id: eclaims-waiver-type-extension
Title: "Preauthorization Expiry Date"
Description: "Indicates when the approved preauthorization expires." 
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from WaiverTypeVS (required)
