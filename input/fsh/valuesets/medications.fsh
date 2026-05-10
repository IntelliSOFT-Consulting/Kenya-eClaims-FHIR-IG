
ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Condition Severity ValueSet"
Description: "ValueSet for the clinical severity of a condition (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/condition-severity)"
* ^url = "https://example.com/fhir/ValueSet/condition-severity"
* ^status = #active
* include codes from system ConditionSeverityCS


ValueSet: MedicationStatusReasonVS
Id: medication-status-reason-vs
Title: "Medication Status Reason ValueSet"
Description: "ValueSet for reasons a medication was stopped or paused (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/reason-medication-status-codes)"
* ^url = "https://example.com/fhir/ValueSet/medication-status-reason"
* ^status = #active
* include codes from system MedicationStatusReasonCS


ValueSet: DosageAdditionalInstructionVS
Id: dosage-additional-instruction-vs
Title: "Dosage Additional Instruction ValueSet"
Description: "ValueSet for additional dosage/dispensing instructions (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/additional-instruction-codes)"
* ^url = "https://example.com/fhir/ValueSet/dosage-additional-instruction"
* ^status = #active
* include codes from system DosageAdditionalInstructionCS


ValueSet: AdministrationMethodVS
Id: administration-method-vs
Title: "Administration Method ValueSet"
Description: "ValueSet for medication administration methods (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/administration-method-codes)"
* ^url = "https://example.com/fhir/ValueSet/administration-method"
* ^status = #active
* include codes from system AdministrationMethodCS


ValueSet: AsNeededReasonVS
Id: as-needed-reason-vs
Title: "As Needed Reason ValueSet"
Description: "ValueSet for conditions that trigger as-needed medication use (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/medication-as-needed-reason)"
* ^url = "https://example.com/fhir/ValueSet/as-needed-reason"
* ^status = #active
* include codes from system AsNeededReasonCS
