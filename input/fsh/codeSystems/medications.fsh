
CodeSystem: ConditionSeverityCS
Id: condition-severity-cs
Title: "Condition Severity Code System"
Description: "Codes for the clinical severity of a condition, replacing SNOMED CT-based HL7 ValueSet"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #MILD "Mild" "The condition has a mild impact on the patient's daily activities."
* #MODERATE "Moderate" "The condition has a moderate impact on the patient's daily activities."
* #SEVERE "Severe" "The condition has a severe impact on the patient's daily activities."
* #LIFE-THREATENING "Life Threatening" "The condition is immediately life threatening."


CodeSystem: MedicationStatusReasonCS
Id: medication-status-reason-cs
Title: "Medication Status Reason Code System"
Description: "Codes for the reason a medication was stopped or paused, replacing SNOMED CT-based HL7 ValueSet"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #SIDE-EFFECT "Side Effect" "Medication stopped due to side effects."
* #INEFFECTIVE "Ineffective" "Medication was not effective."
* #ALLERGY "Allergy" "Medication stopped due to an allergic reaction."
* #PATIENT-REQUEST "Patient Request" "Patient requested to stop the medication."
* #COMPLETED "Completed" "Course of treatment completed."
* #PRESCRIBER-REQUEST "Prescriber Request" "Prescriber requested to stop the medication."
* #CONTRAINDICATION "Contraindication" "Medication stopped due to a contraindication."


CodeSystem: DosageAdditionalInstructionCS
Id: dosage-additional-instruction-cs
Title: "Dosage Additional Instruction Code System"
Description: "Codes for additional dispensing/dosage instructions, replacing SNOMED CT-based HL7 ValueSet"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #WITH-FOOD "With Food" "Take with food."
* #WITHOUT-FOOD "Without Food" "Take on an empty stomach."
* #WITH-WATER "With Water" "Take with plenty of water."
* #AVOID-ALCOHOL "Avoid Alcohol" "Do not take with alcohol."
* #AVOID-DRIVING "Avoid Driving" "Do not operate machinery while taking this medication."
* #DISSOLVE-FIRST "Dissolve First" "Dissolve in water before taking."
* #REFRIGERATE "Refrigerate" "Store in the refrigerator."
* #SHAKE-WELL "Shake Well" "Shake the bottle well before use."
* #AS-DIRECTED "As Directed" "Take as directed by your healthcare provider."


CodeSystem: AdministrationMethodCS
Id: administration-method-cs
Title: "Administration Method Code System"
Description: "Codes for the method of medication administration, replacing SNOMED CT-based HL7 ValueSet"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #SWALLOW "Swallow" "Swallow whole."
* #CHEW "Chew" "Chew before swallowing."
* #DISSOLVE "Dissolve" "Allow to dissolve in the mouth."
* #INHALE "Inhale" "Inhale through the mouth."
* #INJECT "Inject" "Administer by injection."
* #APPLY "Apply" "Apply to the skin or affected area."
* #INFUSE "Infuse" "Administer by intravenous infusion."
* #INSTILL "Instill" "Place drops into the eye, ear, or nose."


CodeSystem: AsNeededReasonCS
Id: as-needed-reason-cs
Title: "As Needed Reason Code System"
Description: "Codes for the condition that triggers as-needed medication use, replacing SNOMED CT-based HL7 ValueSet"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #PAIN "Pain" "Take when experiencing pain."
* #NAUSEA "Nausea" "Take when experiencing nausea."
* #FEVER "Fever" "Take when experiencing fever."
* #INSOMNIA "Insomnia" "Take when unable to sleep."
* #ANXIETY "Anxiety" "Take when experiencing anxiety."
* #DYSPNEA "Dyspnea" "Take when experiencing difficulty breathing."
* #ITCHING "Itching" "Take when experiencing itching."
* #CONSTIPATION "Constipation" "Take when experiencing constipation."
