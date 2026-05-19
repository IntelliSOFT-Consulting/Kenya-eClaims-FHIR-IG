
// Authorization & Workflow (Common)
Extension: ProviderAuthToken
Id: provider-auth-token
Title: "Provider Auth Token"
Description: "The authorization token issued to the provider for this session."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: PreauthToken
Id: preauth-token
Title: "Preauthorization Token"
Description: "The specific unique token generated for this preauthorization request."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: RawPreauthSourceData
Id: raw-preauth-source-data
Title: "Raw Preauth Source Data"
Description: "Container for the full legacy JSON payload."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: HasCoinsurance
Id: has-coinsurance
Title: "Has Coinsurance"
Description: "Indicates if the patient has a coinsurance liability."
// Clinical data (Surgical, Renal, Imaging)
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: SessionExpectedDate
Id: session-expected-date
Title: "Session Expected Date"
Description: "The expected date for the dialysis or therapy session."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ClinicalIndications
Id: clinical-indications
Title: "Clinical Indications"
Description: "Clinical reasoning or specific indications for the procedure (e.g., 'End Stage Renal Disease')."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ChiefComplaint
Id: chief-complaint
Title: "Chief Complaint"
Description: "The patient's primary complaint."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: HPI
Id: hpi
Title: "History of Present Illness"
Description: "Detailed history of the present illness."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: VitalSigns
Id: vital-signs
Title: "Vital Signs"
Description: "Recorded vital signs (e.g. Temperature, BP)."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: PhysicalExamination
Id: physical-examination
Title: "Physical Examination"
Description: "Findings from the physical examination."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: Investigations
Id: investigations
Title: "Investigations"
Description: "List of investigations performed or requested (e.g. specific lab tests or imaging modalities)."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: AnaesthesiaType
Id: anaesthesia-type
Title: "Anaesthesia Type"
Description: "Type of anaesthesia to be used (e.g. 'General', 'Local')."
// Optical / Vision specifics
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: Replacement
Id: replacement
Title: "Replacement Type"
Description: "Indicates if this item is 'New' or a 'Replacement'."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ReasonForService
Id: reason-for-service
Title: "Reason For Service"
Description: "The reason for the optical service (e.g., 'Glasses')."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: LensPrescription
Id: lens-prescription
Title: "Lens Prescription"
Description: "Details of the lens prescription (Sphere, Cylinder, Axis)."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: LastReplacementDate
Id: last-replacement-date
Title: "Last Replacement Date"
Description: "Date when the item was last replaced (for eligibility checks)."
// Optical Financials
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ConsultationAmount
Id: consultation-amount
Title: "Consultation Amount"
Description: "The amount charged for the optical consultation service."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: EyeExamAmount
Id: eye-examination-amount
Title: "Eye Examination Amount"
Description: "The amount charged for the eye examination service."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: FrameAmount
Id: frame-amount
Title: "Frame Amount"
Description: "The amount charged for spectacle frames."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: LensAmount
Id: lens-amount
Title: "Lens Amount"
Description: "The amount charged for spectacle lenses."
// Oncology specifics
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: CarcinomaStaging
Id: carcinoma-staging
Title: "Carcinoma Staging"
Description: "Stage of the carcinoma (e.g. 'STAGE_3')."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: Metastases
Id: metastases
Title: "Metastases"
Description: "Details on metastases (e.g. 'None', 'Bone', 'Liver')."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: OtherMetastases
Id: other-metastases
Title: "Other Metastases"
Description: "Details on additional metastases not captured in the main metastases field."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: TreatmentSetting
Id: treatment-setting
Title: "Treatment Setting"
Description: "Setting where treatment is provided (e.g. 'DAY_WARD', 'INPATIENT')."
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: CostPerSession
Id: cost-per-session
Title: "Cost Per Session"
Description: "The cost per chemotherapy/radiotherapy session."
// Line item extensions
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ItemCoverageReference
Id: item-coverage-reference
Title: "Item Coverage Reference"
Description: "Link to the specific coverage/scheme applicable to this line item."
// Patient Invoice Extension
* ^context[0].type = #element
* ^context[0].expression = "Claim.item"
* value[x] only Reference(ke-eclaims-coverage)

Extension: PatientInvoice
Id: extension-patient-invoice
Title: "Patient Invoice Details"
Description: "Details regarding the provider's invoice and patient liability."
// TODO: Should point to LOINC Document Ontology codes
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* extension contains invoiceNumber 0..1 MS
* extension contains invoiceDate 0..1 MS
* extension contains invoiceAmount 0..1 MS
* extension contains patientShare 0..1 MS
* extension contains patientInvoiceIdentifier 0..1 MS
* extension[invoiceNumber].value[x] only string
* extension[invoiceDate].value[x] only date
* extension[invoiceAmount].value[x] only Money
* extension[patientShare].value[x] only Money
* extension[patientInvoiceIdentifier].value[x] only Identifier

Extension: AttachmentType
Id: attachment-type
Title: "Attachment Type"
Description: "Classifies the attachment (e.g. Discharge Summary, Final Bill)."
* ^context[0].type = #element
* ^context[0].expression = "Claim.supportingInfo"
* value[x] only CodeableConcept
* valueCodeableConcept from AttachmentTypeVS (required)
