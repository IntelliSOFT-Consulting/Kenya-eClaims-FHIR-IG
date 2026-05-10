# Terminology Guidance

This page describes the terminology strategy used in the Kenya eClaims FHIR Implementation Guide — which code systems are used, where they come from, and how they are bound to profile elements.

---

### 1. Binding Strength Policy

All coded data elements in this IG use **`required`** binding strength. This means:

- Senders **SHALL** use a code from the bound ValueSet.
- Receivers **SHALL** reject (or flag as invalid) any code that is not in the bound ValueSet.
- There is **no extensibility** — implementers may not use codes outside the bound ValueSet without requesting a change to this IG.

This strict approach is deliberately chosen to ensure:
1. **Machine-processability** — SHA's adjudication engine can reliably interpret all coded values without case-by-case negotiation.
2. **Fraud prevention** — Ambiguous or freely-coded services cannot be claimed against undefined benefit categories.
3. **Interoperability** — Multiple EMR vendors producing the same codes enables national-level aggregation without ETL transformation.

---

### 2. Code System Sources

This IG draws terminology from three sources, in priority order:

#### 2.1 MOH-Kenya Open Concept Lab (OCL)

The primary source for Kenya-specific clinical and administrative terminology. OCL is operated by the Digital Health Agency of Kenya at:

**`https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/`**

OCL-sourced code systems used in this IG include:

| Code System | OCL URL | Used In |
|---|---|---|
| IDENTIFIER-USE | `.../CodeSystem/IDENTIFIER-USE` | Patient, Practitioner identifiers |
| IDENTIFIER-TYPES | `.../CodeSystem/IDENTIFIER-TYPES` | Kenya-specific ID document types |
| NAME-USE | `.../CodeSystem/NAME-USE` | Patient and Practitioner name use |
| CONTACT-POINT-SYSTEM | `.../CodeSystem/CONTACT-POINT-SYSTEM` | Telecom contact system |
| CONTACT-POINT-USE | `.../CodeSystem/CONTACT-POINT-USE` | Telecom contact use |
| ADDRESS-USE | `.../CodeSystem/ADDRESS-USE` | Patient/Org address use |
| ADMINISTRATIVE-GENDER | `.../CodeSystem/ADMINISTRATIVE-GENDER` | Practitioner gender |
| GENDER | `.../CodeSystem/GENDER` | Patient gender (extended) |
| CIVIL-STATUS | `.../CodeSystem/CIVIL-STATUS` | Patient marital status |
| COVERAGE-TYPE | `.../CodeSystem/COVERAGE-TYPE` | Insurance coverage type |
| COVERAGE-CLASS | `.../CodeSystem/COVERAGE-CLASS` | Coverage class category |
| COVERAGE-MEMBER-STATUS | `.../CodeSystem/COVERAGE-MEMBER-STATUS` | Member enrollment status |
| COVERAGE-PLAN-TYPE | `.../CodeSystem/COVERAGE-PLAN-TYPE` | Insurance plan type |
| PAYMENT-METHOD | `.../CodeSystem/PAYMENT-METHOD` | Beneficiary payment method |
| RELATED-CLAIM-RELATIONSHIP | `.../CodeSystem/RELATED-CLAIM-RELATIONSHIP` | Relationship between related claims |
| CLAIM-STATUS | `.../CodeSystem/CLAIM-STATUS` | Claim workflow status |
| CLAIM-TYPE | `.../CodeSystem/CLAIM-TYPE` | Institutional vs Professional |
| CLAIM-SUBTYPE | `.../CodeSystem/CLAIM-SUBTYPE` | Claim subtype (Day Case, Rehab, etc.) |
| CLAIM-USE | `.../CodeSystem/CLAIM-USE` | Claim vs Preauthorization |
| CLAIM-CARE-TEAM-ROLE | `.../CodeSystem/CLAIM-CARE-TEAM-ROLE` | Care team member role |
| CONDITION-CLINICAL-STATUS | `.../CodeSystem/CONDITION-CLINICAL-STATUS` | Clinical status of diagnosis |
| CONDITION-VERIFICATION-STATUS | `.../CodeSystem/CONDITION-VERIFICATION-STATUS` | Verification status of diagnosis |
| CONDITION-CATEGORY | `.../CodeSystem/CONDITION-CATEGORY` | Diagnosis category |
| ENCOUNTER-STATUS | `.../CodeSystem/ENCOUNTER-STATUS` | Encounter workflow status |
| EPISODE-OF-CARE-STATUS | `.../CodeSystem/EPISODE-OF-CARE-STATUS` | Episode status |
| EPISODE-OF-CARE-TYPE | `.../CodeSystem/EPISODE-OF-CARE-TYPE` | Kenya health program types |
| INSTITUTIONAL-BODY-SITE | `.../CodeSystem/INSTITUTIONAL-BODY-SITE` | Body sites for claim items |
| SUBSITE | `.../CodeSystem/SUBSITE` | Sub-site laterality |
| WAIVER-TYPE | `.../CodeSystem/WAIVER-TYPE` | Types of coverage waivers |
| PREAUTH-EXCLUSION-REASON | `.../CodeSystem/PREAUTH-EXCLUSION-REASON` | Reasons for preauth exclusion |
| COVERAGE-EXCLUSION-REASON | `.../CodeSystem/COVERAGE-EXCLUSION-REASON` | Reasons for coverage exclusion |
| KenyaSocialHealthAuthorityInterventions | SHA Interventions Catalogue | Claim line item service codes |
| GenericProducts | PPB Generic Products | Medication codes (pharmacy claims) |

#### 2.2 HL7 Terminology (THO)

For coded elements where no MOH-Kenya equivalent exists, this IG uses code systems published by HL7 and its terminology authority (terminology.hl7.org). These include:

| Code System | Used In | Notes |
|---|---|---|
| `http://hl7.org/fhir/ValueSet/fm-status` | Coverage.status, PaymentNotice.status | FHIR financial module status |
| `http://hl7.org/fhir/ValueSet/claim-type` | Claim.type (extensible fallback) | Standard HL7 claim types |
| `http://hl7.org/fhir/ValueSet/process-priority` | Claim.priority | Standard processing priority |
| `http://hl7.org/fhir/ValueSet/payeetype` | Claim.payee.type | Payee type codes |
| `http://hl7.org/fhir/ValueSet/ex-diagnosistype` | Claim.diagnosis.type | Diagnosis type (principal, secondary, etc.) |
| `http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission` | Claim.diagnosis.onAdmission | Admission status of diagnosis |
| `http://hl7.org/fhir/ValueSet/ex-benefitcategory` | Claim.item.category | Benefit category |
| `http://hl7.org/fhir/ValueSet/fundsreserve` | Claim.fundsReserve | Funds reservation |
| `http://hl7.org/fhir/ValueSet/provider-qualification` | Claim.careTeam.qualification | Practitioner qualifications |
| `http://hl7.org/fhir/ValueSet/claim-informationcategory` | Claim.supportingInfo.category | Supporting information types |
| `http://hl7.org/fhir/ValueSet/subscriber-relationship` | Coverage.relationship | Subscriber-beneficiary relationship |
| `http://hl7.org/fhir/ValueSet/coverage-copay-type` | Coverage.costToBeneficiary.type | Copay category |
| `http://hl7.org/fhir/ValueSet/coverage-financial-exception` | Coverage.costToBeneficiary.exception.type | Financial exception types |
| `http://hl7.org/fhir/ValueSet/service-category` | Coverage annual limit category | Service category for limit tracking |
| `http://terminology.hl7.org/ValueSet/v3-ActEncounterCode` | Encounter.class | Inpatient, Outpatient, Emergency, etc. |
| `http://terminology.hl7.org/ValueSet/v3-ActPriority` | Encounter.priority | Encounter triage priority |
| `http://hl7.org/fhir/ValueSet/diagnosis-role` | EpisodeOfCare.diagnosis.role | Principal, comorbidity, etc. |
| `http://hl7.org/fhir/ValueSet/diagnostic-report-status` | DiagnosticReport.status | Report status |
| `http://hl7.org/fhir/ValueSet/report-codes` | DiagnosticReport.code | LOINC-based report type codes |
| `http://hl7.org/fhir/ValueSet/medicationrequest-status` | MedicationRequest.status | Prescription status |
| `http://hl7.org/fhir/ValueSet/medicationrequest-intent` | MedicationRequest.intent | Prescription intent |
| `http://hl7.org/fhir/ValueSet/medicationrequest-category` | MedicationRequest.category | Prescription setting |
| `http://hl7.org/fhir/ValueSet/request-priority` | MedicationRequest.priority | Urgency |
| `http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType` | MedicationDispense.type | Dispense type |
| `http://hl7.org/fhir/ValueSet/medicationdispense-status` | MedicationDispense.status | Dispense status |
| `http://hl7.org/fhir/ValueSet/medication-statement-status` | MedicationStatement.status | Medication statement status |
| `http://hl7.org/fhir/ValueSet/dose-rate-type` | Dosage.doseAndRate.type | Dose rate calculation type |
| `http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason` | MedicationRequest.substitution.reason | Generic substitution reason |
| `http://hl7.org/fhir/ValueSet/payment-status` | PaymentNotice.paymentStatus | Payment clearance status |
| `http://hl7.org/fhir/ValueSet/adjudication` | ClaimResponse adjudication | Adjudication category |
| `http://hl7.org/fhir/ValueSet/adjudication-reason` | ClaimResponse adjudication reason | Reason for adjudication decision |
| `http://terminology.hl7.org/ValueSet/v3-ActIncidentCode` | Claim.accident.type | Accident/incident codes |
| `http://terminology.hl7.org/ValueSet/v2-2.7-0360` | Practitioner.qualification.code | HL7 v2 degree/license codes |
| `http://hl7.org/fhir/ValueSet/patient-contactrelationship` | Patient.contact.relationship | Next-of-kin relationship |
| `http://hl7.org/fhir/ValueSet/currencies` | Claim monetary amounts | ISO 4217 currency codes |

#### 2.3 Local Kenya Code Systems (No External Source)

For coded elements where SNOMED CT was previously used in FHIR base specifications but is not appropriate for Kenya's licensing and operational context, this IG defines local code systems:

| Code System | Replaces | Used In |
|---|---|---|
| `ConditionSeverityCS` | `http://hl7.org/fhir/ValueSet/condition-severity` (SNOMED CT) | Condition.severity |
| `MedicationStatusReasonCS` | `http://hl7.org/fhir/ValueSet/reason-medication-status-codes` (SNOMED CT) | MedicationStatement.statusReason |
| `DosageAdditionalInstructionCS` | `http://hl7.org/fhir/ValueSet/additional-instruction-codes` (SNOMED CT) | Dosage.additionalInstruction |
| `AdministrationMethodCS` | `http://hl7.org/fhir/ValueSet/administration-method-codes` (SNOMED CT) | Dosage.method |
| `AsNeededReasonCS` | `http://hl7.org/fhir/ValueSet/medication-as-needed-reason` (SNOMED CT) | Dosage.asNeeded[x] |

---

### 3. SNOMED CT Policy

**SNOMED CT is not used in this Implementation Guide.**

This decision was made for the following reasons:

1. **Licensing:** Kenya does not currently hold a national SNOMED CT license through SNOMED International. Use of SNOMED CT concepts in a required binding would make this IG non-implementable for most Kenya health systems.
2. **Operational Preference:** MOH-Kenya and SHA have expressed a preference for terminology maintained and controlled within Kenya's national OCL instance.
3. **Simplicity:** For the clinical concepts required in the eClaims context (body sites, medication routes, diagnosis severity), simpler local code systems are sufficient and easier to maintain.

Any FHIR element that references a SNOMED CT-based HL7 ValueSet in the base specification has been replaced with either a MOH-Kenya OCL ValueSet or a locally defined code system.

---

### 4. ICD-11 for Diagnosis Coding

Diagnoses in `Claim.diagnosis.diagnosisCodeableConcept` are drawn from the WHO ICD-11 for Mortality and Morbidity Statistics (MMS). The code system is maintained locally in `ClaimDiagnosisCodeableConceptCS` and reflects the ICD-11 chapters relevant to the Kenya claims context.

**ICD-11 vs ICD-10:**
- This IG uses ICD-11 as the primary coding system, in alignment with Kenya's stated transition to ICD-11 per WHO guidance.
- ICD-10 codes may be accepted during the transition period via the `Claim.diagnosis.diagnosisCodeableConcept` element by using the ICD-10 code system URI (`http://hl7.org/fhir/sid/icd-10`), but ICD-11 is required for all new submissions from facilities that have upgraded.

---

### 5. SHA Interventions Catalogue

`Claim.item.productOrService` **SHALL** reference a code from the [KenyaSocialHealthAuthorityInterventionsVS](ValueSet-KenyaSocialHealthAuthorityInterventionsVS.html), which maps to the SHA-approved interventions catalogue. This catalogue is maintained by SHA and synchronized into the MOH-Kenya OCL.

Codes follow the pattern:
- `SHA-01-xxx` — Primary Healthcare interventions
- `SHA-02-xxx` — Secondary/Tertiary care interventions
- `PMF-xxx` — Specialized programme (POMF) interventions

Facilities must ensure their EMR item catalogue is mapped to these SHA codes before submitting claims. SHA will reject any claim line item with a code not in the approved catalogue.

---

### 6. Currency

All monetary amounts (`Claim.item.unitPrice`, `Claim.item.net`, `ClaimResponse.total`) use **KES** (Kenyan Shilling) as the currency code, drawn from the ISO 4217 currencies ValueSet. USD or other foreign currencies are not accepted.

---

### 7. Requesting Terminology Changes

To request additions to or corrections of any MOH-Kenya OCL code system used in this IG:

1. Submit a request via the OCL portal at `https://ilm-hie.dha.go.ke/ocl`
2. Include the concept definition, rationale, and example use case
3. Copy `terminology@dha.go.ke` on the submission

For changes to locally defined code systems (ConditionSeverityCS, etc.), raise a GitHub issue at the IG repository or contact `interoperability@dha.go.ke`.
