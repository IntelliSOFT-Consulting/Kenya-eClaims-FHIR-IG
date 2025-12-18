Extension: ClaimStateExtension
Id: claim-state-extension
Title: "Claim Workflow State"
Description: "Tracks the specific state of the claim (e.g., Sent Back, Approved, surveillance)."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-state-extension"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

Extension: ClaimExpiryExtension
Id: claim-expiry-extension
Title: "Preauthorization Expiry Date"
Description: "Indicates when the approved preauthorization expires."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/claim-expiry-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS

Extension: PaymentMethodExtension
Id: payment-method-extension
Title: "Paymen tMethod Extension"
Description: "The preferred method of payment for the beneficiary's share (e.g., credit card, direct debit)."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/payment-method-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS


Extension: MemberStatusExtension
Id: member-status-extension
Title: "Current member status Extension"
Description: "Current member status"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/member-status-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS


Extension: PlanTypeExtension
Id: plan-type-extension
Title: "Plan Type Extension "
Description: "The specific type of plan"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/plan-type-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS


Extension: AnnualLimitsCategoryExtension
Id: annual-limit-category-extension
Title: "Annual Limits Category Extension"
Description: "The category of service to which the limit applies."
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/annual-limit-category-extension"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS


Extension: ExclusionExtension
Id: exclusion-extension
Title: "Exclusion Extension "
Description: "A list of services or conditions that are explicitly not covered by this plan."
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ExclusionVS


Extension: PreAuthExclusionsExtension
Id: pre-auth-exclusion-extension
Title: "Preauthorization Expiry Date"
Description: "Services excluded from preauthorization." 
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from PreAuthExclusionsVS



Extension: WaiverTypeExtension
Id: waiver-type-extension
Title: "Preauthorization Expiry Date"
Description: "Indicates when the approved preauthorization expires." 
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from WaiverTypeVS (required)