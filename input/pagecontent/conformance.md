# Conformance Requirements

This page defines what it means to be conformant with the Kenya eClaims FHIR Implementation Guide. Implementations claiming conformance must satisfy the requirements in this section.

---

### 1. Conformance Levels

This IG uses the following conformance language, consistent with HL7 FHIR normative language:

| Keyword | Meaning |
|---|---|
| **SHALL** | Absolute requirement. Non-conformance constitutes a conformance failure. |
| **SHOULD** | Recommended. Non-conformance must be justified. |
| **MAY** | Optional. Implementers may choose to include this capability. |
| **SHALL NOT** | Absolute prohibition. |

---

### 2. Must Support Interpretation

Elements marked **Must Support** (`MS`) in this IG's profiles carry the following meaning:

**For Data Senders (Provider EMRs, Pharmacy Systems):**
- If the system captures the data element, it **SHALL** populate the element in the FHIR resource.
- If the system does not capture the data element and it is optional (min cardinality = 0), the element **MAY** be omitted.
- If the element has min cardinality ≥ 1, the system **SHALL** always populate it.

**For Data Receivers (SHA, HIE, Analytics Systems):**
- The system **SHALL** be capable of processing and storing the element without error.
- The system **SHALL NOT** alter system behavior based on the absence of an optional MS element.
- The system **SHALL** surface the element to end users or downstream systems when present.

---

### 3. Profile Conformance

A FHIR resource instance is conformant with this IG if and only if:

1. It validates without errors against the applicable profile's `StructureDefinition`.
2. All required (`1..1`, `1..*`) elements are populated.
3. All coded elements use codes from the bound `ValueSet` at the declared binding strength (`required` for all coded elements in this IG).
4. All referenced resources either resolve to a resource conformant with the referenced profile, or use a logical reference (identifier only) when the full resource is not available.
5. The resource is submitted as part of a `Bundle` containing all transitively referenced resources (see [Actors & Transactions](actors.html)).

---

### 4. Actor Conformance Requirements

#### 4.1 Healthcare Provider System (EMR/HMIS)

A system claiming conformance as a **Healthcare Provider System** SHALL:

- [ ] Generate FHIR `Claim` resources conformant with [KenyaClaimBase](StructureDefinition-ke-eclaims-claimbase.html) for all claim types.
- [ ] Generate `Claim` resources with `use = #preauthorization` for procedures requiring prior authorization.
- [ ] Include a minimum conformant Bundle per the requirements in [Actors & Transactions](actors.html#fhir-bundle-structure).
- [ ] Populate `Patient.identifier` with at least one identifier of type `SHA-NUMBER` or `NATIONAL-ID`.
- [ ] Populate `Coverage.class` with the patient's SHA scheme classification.
- [ ] Reference `Claim.item.productOrService` codes from the [KenyaSocialHealthAuthorityInterventionsVS](ValueSet-KenyaSocialHealthAuthorityInterventionsVS.html).
- [ ] Reference `Claim.diagnosis.diagnosisCodeableConcept` from the [ClaimDiagnosisCodeableConceptVS](ValueSet-ClaimDiagnosisCodeableConceptVS.html).
- [ ] Receive and process `ClaimResponse` resources without error.
- [ ] Store and reference preauthorization tokens (`ClaimResponse.preAuthRef`) when submitting post-auth claims.

#### 4.2 SHA / Insurer System

A system claiming conformance as an **Insurer/Adjudication System** SHALL:

- [ ] Accept FHIR `Claim` Bundles submitted via `POST /fhir/Bundle`.
- [ ] Validate incoming `Claim` resources against this IG's profiles.
- [ ] Return a valid `ClaimResponse` conformant with [EClaimsClaimResponse](StructureDefinition-ke-eclaims-claimresponse.html) for every accepted `Claim`.
- [ ] Return a FHIR `OperationOutcome` for rejected or invalid submissions.
- [ ] Issue `PaymentNotice` resources conformant with [EClaimsPaymentNotice](StructureDefinition-ke-eclaims-paymentnotice.html) upon payment disbursement.
- [ ] Expose claim status via `GET /fhir/ClaimResponse?request={Claim.identifier}`.

#### 4.3 Kenya HIE Gateway

A system claiming conformance as the **Kenya HIE Gateway** SHALL:

- [ ] Accept FHIR Bundles from provider systems via authenticated `POST /fhir/Bundle`.
- [ ] Validate all resources in the Bundle against this IG's profiles using the HL7 FHIR Validator.
- [ ] Return `OperationOutcome` with structured error details for non-conformant submissions.
- [ ] Route validated Bundles to the appropriate downstream system (SHA, private insurer).
- [ ] Log all transactions as `AuditEvent` resources per [Security & Privacy](security.html#5-audit-logging).
- [ ] Support patient identity resolution via `POST /fhir/Patient/$match`.

---

### 5. Cardinality Summary for Core Claim Elements

The following table summarizes the cardinality requirements for the most critical elements in the Kenya eClaims claim workflow. Full element listings are available on each profile's detail page.

| Profile | Element | Min | Max | Notes |
|---|---|---|---|---|
| KenyaClaimBase | `identifier` | 1 | * | Unique business identifier per claim |
| KenyaClaimBase | `status` | 1 | 1 | From ClaimStatusVS (required) |
| KenyaClaimBase | `use` | 1 | 1 | `claim` or `preauthorization` |
| KenyaClaimBase | `type` | 1 | 1 | From ClaimTypeVS (required) |
| KenyaClaimBase | `patient` | 1 | 1 | Reference to EClaimsPatient |
| KenyaClaimBase | `billablePeriod` | 1 | 1 | Service date range |
| KenyaClaimBase | `insurer` | 0 | 1 | Reference to SHA Organization |
| KenyaClaimBase | `diagnosis` | 1 | * | At least one ICD-11 diagnosis |
| KenyaClaimBase | `item` | 1 | * | At least one service line item |
| KenyaClaimBase | `insurance` | 1 | * | At least one coverage reference |
| EclaimsCoverage | `status` | 1 | 1 | Active/Cancelled/Draft/Entered-in-error |
| EclaimsCoverage | `subscriber` | 1 | 1 | Reference to patient (subscriber) |
| EclaimsCoverage | `beneficiary` | 1 | 1 | Reference to patient (beneficiary) |
| EclaimsCoverage | `class` | 1 | * | SHA coverage class classification |
| EClaimsPatient | `identifier` | 1 | * | SHA Number or National ID required |
| EClaimsPatient | `name.family` | 1 | 1 | Surname required |
| EClaimsPatient | `gender` | 1 | 1 | From GenderVS (required) |
| EClaimsPatient | `birthDate` | 1 | 1 | Required for all patients |

---

### 6. Validation

#### 6.1 FHIR Validator

All implementers SHOULD validate their FHIR resources using the official HL7 FHIR Validator with this IG's package loaded. See [Downloads](downloads.html) for instructions.

#### 6.2 HIE Gateway Validation

The Kenya HIE Gateway performs automated conformance validation on all incoming Bundles. Non-conformant resources are rejected with a structured `OperationOutcome` that includes:

- `OperationOutcome.issue.severity` — `error` | `warning` | `information`
- `OperationOutcome.issue.code` — FHIR issue type code
- `OperationOutcome.issue.details` — Human-readable description of the violation
- `OperationOutcome.issue.expression` — FHIRPath expression identifying the failing element

#### 6.3 Validation Severity Policy

| Severity | HIE Action |
|---|---|
| **Error** — Required element missing, invalid code, cardinality violation | Bundle rejected. `OperationOutcome` returned. |
| **Warning** — Recommended element missing, deprecated code used | Bundle accepted but warning logged. |
| **Information** — Informational note only | Bundle accepted. |

---

### 7. Testing and Certification

Implementers seeking integration certification with SHA **SHALL** complete the following steps:

1. **Unit Testing** — Validate all FHIR resources against this IG using the FHIR Validator (see [Downloads](downloads.html)).
2. **Sandbox Testing** — Submit test claims to the SHA sandbox environment using the test patient dataset published by DHA.
3. **Integration Testing** — Conduct end-to-end testing with the Kenya HIE gateway in the UAT environment.
4. **Certification Review** — Submit test evidence (validator output, sandbox transaction logs) to `certification@dha.go.ke` for review.
5. **Production Onboarding** — Receive production API credentials and go-live sign-off from DHA.

Contact DHA at **interoperability@dha.go.ke** to initiate the certification process.
