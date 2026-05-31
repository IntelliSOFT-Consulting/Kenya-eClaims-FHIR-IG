
ValueSet: ConditionSeverityVS
Id: eclaims-condition-severity-vs
Title: "Condition Severity ValueSet"
Description: "ValueSet for the clinical severity of a condition (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/condition-severity)"
* ^status = #active
* ^experimental = false
* include codes from system ConditionSeverityCS


ValueSet: MedicationStatusReasonVS
Id: medication-status-reason-vs
Title: "Medication Status Reason ValueSet"
Description: "ValueSet for reasons a medication was stopped or paused (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/reason-medication-status-codes)"
* ^status = #active
* ^experimental = false
* include codes from system MedicationStatusReasonCS


ValueSet: DosageAdditionalInstructionVS
Id: eclaims-dosage-additional-instruction-vs
Title: "Dosage Additional Instruction ValueSet"
Description: "ValueSet for additional dosage/dispensing instructions (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/additional-instruction-codes)"
* ^status = #active
* ^experimental = false
* include codes from system DosageAdditionalInstructionCS


ValueSet: AdministrationMethodVS
Id: eclaims-administration-method-vs
Title: "Administration Method ValueSet"
Description: "ValueSet for medication administration methods (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/administration-method-codes)"
* ^status = #active
* ^experimental = false
* include codes from system AdministrationMethodCS


ValueSet: AsNeededReasonVS
Id: eclaims-as-needed-reason-vs
Title: "As Needed Reason ValueSet"
Description: "ValueSet for conditions that trigger as-needed medication use (local replacement for SNOMED CT-based http://hl7.org/fhir/ValueSet/medication-as-needed-reason)"
* ^status = #active
* ^experimental = false
* include codes from system AsNeededReasonCS
