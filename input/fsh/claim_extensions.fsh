
// Authorization & Workflow (Common)
Extension: ProviderAuthToken
Id: provider-auth-token
Title: "Provider Auth Token"
Description: "The authorization token issued to the provider for this session."
* value[x] only string

Extension: PreauthToken
Id: preauth-token
Title: "Preauthorization Token"
Description: "The specific unique token generated for this preauthorization request."
* value[x] only string

Extension: RawPreauthSourceData
Id: raw-preauth-source-data
Title: "Raw Preauth Source Data"
Description: "Container for the full legacy JSON payload."
* value[x] only string

Extension: HasCoinsurance
Id: has-coinsurance
Title: "Has Coinsurance"
Description: "Indicates if the patient has a coinsurance liability."
* value[x] only string

// Clinical data (Surgical, Renal, Imaging)
Extension: SessionExpectedDate
Id: session-expected-date
Title: "Session Expected Date"
Description: "The expected date for the dialysis or therapy session."
* value[x] only string

Extension: ClinicalIndications
Id: clinical-indications
Title: "Clinical Indications"
Description: "Clinical reasoning or specific indications for the procedure (e.g., 'End Stage Renal Disease')."
* value[x] only string

Extension: ChiefComplaint
Id: chief-complaint
Title: "Chief Complaint"
Description: "The patient's primary complaint."
* value[x] only string

Extension: HPI
Id: hpi
Title: "History of Present Illness"
Description: "Detailed history of the present illness."
* value[x] only string

Extension: VitalSigns
Id: vital-signs
Title: "Vital Signs"
Description: "Recorded vital signs (e.g. Temperature, BP)."
* value[x] only string

Extension: PhysicalExamination
Id: physical-examination
Title: "Physical Examination"
Description: "Findings from the physical examination."
* value[x] only string

Extension: Investigations
Id: investigations
Title: "Investigations"
Description: "List of investigations performed or requested (e.g. specific lab tests or imaging modalities)."
* value[x] only string

Extension: AnaesthesiaType
Id: anaesthesia-type
Title: "Anaesthesia Type"
Description: "Type of anaesthesia to be used (e.g. 'General', 'Local')."
* value[x] only string

// Optical / Vision specifics
Extension: Replacement
Id: replacement
Title: "Replacement Type"
Description: "Indicates if this item is 'New' or a 'Replacement'."
* value[x] only string

Extension: ReasonForService
Id: reason-for-service
Title: "Reason For Service"
Description: "The reason for the optical service (e.g., 'Glasses')."
* value[x] only string

Extension: LensPrescription
Id: lens-prescription
Title: "Lens Prescription"
Description: "Details of the lens prescription (Sphere, Cylinder, Axis)."
* value[x] only string

Extension: LastReplacementDate
Id: last-replacement-date
Title: "Last Replacement Date"
Description: "Date when the item was last replaced (for eligibility checks)."
* value[x] only string

// Optical Financials
Extension: ConsultationAmount
Id: consultation-amount
Title: "Consultation Amount"
* value[x] only string

Extension: EyeExamAmount
Id: eye-examination-amount
Title: "Eye Examination Amount"
* value[x] only string

Extension: FrameAmount
Id: frame-amount
Title: "Frame Amount"
* value[x] only string

Extension: LensAmount
Id: lens-amount
Title: "Lens Amount"
* value[x] only string

// Oncology specifics
Extension: CarcinomaStaging
Id: carcinoma-staging
Title: "Carcinoma Staging"
Description: "Stage of the carcinoma (e.g. 'STAGE_3')."
* value[x] only string

Extension: Metastases
Id: metastases
Title: "Metastases"
Description: "Details on metastases (e.g. 'None', 'Bone', 'Liver')."
* value[x] only string

Extension: OtherMetastases
Id: other-metastases
Title: "Other Metastases"
* value[x] only string

Extension: TreatmentSetting
Id: treatment-setting
Title: "Treatment Setting"
Description: "Setting where treatment is provided (e.g. 'DAY_WARD', 'INPATIENT')."
* value[x] only string

Extension: CostPerSession
Id: cost-per-session
Title: "Cost Per Session"
Description: "The cost per chemotherapy/radiotherapy session."
* value[x] only string

// Line item extensions
Extension: ItemCoverageReference
Id: item-coverage-reference
Title: "Item Coverage Reference"
Description: "Link to the specific coverage/scheme applicable to this line item."
* value[x] only Reference(eclaims-coverage)

// Patient Invoice Extension
Extension: PatientInvoice
Id: extension-patient-invoice
Title: "Patient Invoice Details"
Description: "Details regarding the provider's invoice and patient liability."
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

// TODO: Should point to LOINC Document Ontology codes
Extension: AttachmentType
Id: attachment-type
Title: "Attachment Type"
Description: "Classifies the attachment (e.g. Discharge Summary, Final Bill)."
* value[x] only CodeableConcept
* valueCodeableConcept from https://fhir.sha.go.ke/fhir/ValueSet/attachment-type-vs (extensible)