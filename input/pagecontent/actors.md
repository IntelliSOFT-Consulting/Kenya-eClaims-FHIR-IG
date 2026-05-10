# Actors & Transactions

This page describes the system actors participating in the Kenya eClaims ecosystem and the FHIR transactions they perform. All transactions use FHIR R4 RESTful interactions over HTTPS.

---

### System Actors

#### Actor 1: Healthcare Provider System (EMR/HMIS)

**Description:** The electronic medical record or hospital management information system operated at a health facility. Responsible for capturing clinical data and generating FHIR-structured claim bundles.

**Examples:** KenyaEMR, Afya Community HMIS, proprietary hospital management systems

**Responsibilities:**
- Register patients and verify coverage prior to service delivery
- Record clinical encounters, diagnoses, medications, and procedures in structured FHIR resources
- Generate and submit FHIR `Claim` Bundles (outpatient, inpatient, pharmacy, preauthorization)
- Receive and process `ClaimResponse` feedback from SHA
- Store preauthorization tokens for subsequent claim submissions
- Receive `PaymentNotice` and reconcile against accounts receivable

**Must support profiles:**
- [EClaimsPatient](StructureDefinition-eclaims-patient.html)
- [EClaimsEncounter](StructureDefinition-eclaims-encounter.html)
- [EClaimsCondition](StructureDefinition-eclaims-condition.html)
- [EclaimsCoverage](StructureDefinition-eclaims-coverage.html)
- [KenyaClaimBase](StructureDefinition-kenya-claim-base.html) / [KenyaClaimSubmission](StructureDefinition-kenya-claim-submission.html)

---

#### Actor 2: Kenya Health Information Exchange (HIE)

**Description:** The national interoperability middleware operated by the Digital Health Agency of Kenya. Routes and validates messages between providers and payers, and resolves patient identities via the Master Patient Index (MPI).

**Responsibilities:**
- Receive FHIR Bundles from provider EMRs via HTTPS REST
- Validate submitted resources against this IG's profiles using the HL7 FHIR Validator
- Resolve patient identifiers against the national MPI (`Patient.identifier` with `NATIONAL-ID` or `SHA-NUMBER`)
- Route conformant claims to the appropriate SHA endpoint
- Return validation errors as FHIR `OperationOutcome` responses
- Log all transactions for audit purposes

**Key interactions:**
- `POST /fhir/Bundle` — Receives claim submissions from providers
- `GET /fhir/ClaimResponse/{id}` — Returns claim status queries
- `POST /fhir/Patient/$match` — Patient identity resolution

---

#### Actor 3: Social Health Authority (SHA) Adjudication Engine

**Description:** SHA's core claims processing system. Applies coverage rules, benefits schedules, and clinical appropriateness criteria to adjudicate submitted claims and preauthorization requests.

**Responsibilities:**
- Receive and validate FHIR `Claim` resources
- Verify member coverage against the SHIF membership registry (`Coverage.subscriber` → MPI)
- Apply the SHA Interventions Catalogue to validate `Claim.item.productOrService` codes
- Evaluate preauthorization requests against clinical guidelines
- Generate and return `ClaimResponse` resources with detailed adjudication breakdowns
- Issue `PaymentNotice` resources upon payment disbursement

**Must support profiles:**
- [EClaimsClaimResponse](StructureDefinition-eclaims-claim-response.html)
- [EClaimsPaymentNotice](StructureDefinition-eclaims-payment-notice.html)

---

#### Actor 4: Private Insurer / Third-Party Administrator (TPA)

**Description:** Private health insurers and TPAs that are registered as approved complementary payers under the SHA framework.

**Responsibilities:**
- Receive FHIR claim bundles for services covered under private scheme benefits
- Adjudicate claims against their own policy rules
- Return `ClaimResponse` with payer-specific adjudication details

**Note:** Private insurers must implement this IG's profiles for claims data elements even where their adjudication logic differs from SHA.

---

#### Actor 5: National Monitoring & Evaluation System

**Description:** DHA's analytics platform for health financing intelligence, fraud detection, and performance-based financing.

**Responsibilities:**
- Consume aggregated, de-identified `Claim` and `ClaimResponse` data from the HIE
- Generate utilization dashboards, outlier detection reports, and trend analyses
- Feed findings back to SHA for claims audit and provider performance review

---

### Transaction Summary

| Transaction ID | Name | Initiator | Responder | FHIR Operation | Profile(s) |
|---|---|---|---|---|---|
| T-01 | Submit Outpatient Claim | Provider EMR | HIE → SHA | `POST Bundle` | KenyaClaimBase, KenyaClaimSubmission |
| T-02 | Request Preauthorization | Provider EMR | SHA | `POST Bundle` | KenyaClaimBase (use=preauthorization) |
| T-03 | Query Claim Status | Provider EMR | SHA | `GET ClaimResponse/{id}` | EClaimsClaimResponse |
| T-04 | Submit Pharmacy Claim | Pharmacy System | HIE → SHA | `POST Bundle` | MedicationDispense, MedicationRequest |
| T-05 | Submit Inpatient Claim | Hospital EMR | HIE → SHA | `POST Bundle` | KenyaClaimSubmission, EpisodeOfCare |
| T-06 | Receive Payment Notice | SHA | Provider EMR | `POST PaymentNotice` | EClaimsPaymentNotice |
| T-07 | Coverage Eligibility Check | Provider EMR | HIE/SHA | `GET Coverage?subscriber={id}` | EclaimsCoverage |
| T-08 | Patient Identity Resolution | Provider EMR | HIE MPI | `POST Patient/$match` | EClaimsPatient |

---

### FHIR Bundle Structure

All claim submissions use a FHIR `Bundle` of type `collection`. The Bundle must include all referenced resources in-line to ensure self-contained, portable claim packages.

**Minimum required resources in a claim Bundle:**

```
Bundle
├── Claim (entry[0]) — the claim itself
├── Patient (entry[1]) — the insured patient
├── Coverage (entry[2]) — coverage details
├── Organization (entry[3]) — provider
├── Organization (entry[4]) — insurer (SHA)
├── Encounter (entry[5]) — the service encounter
└── Condition (entry[n]) — diagnosis/diagnoses
```

**Additional resources included by claim type:**

| Claim Type | Additional Entries |
|---|---|
| Outpatient | `Practitioner` (care team) |
| Inpatient | `EpisodeOfCare`, `DiagnosticReport` |
| Pharmacy | `MedicationRequest`, `MedicationDispense` |
| Preauthorization | `SupportingInfo` attachments (as base64 in `Claim.supportingInfo`) |

---

### Claim Lifecycle State Machine

Claims progress through the following states, tracked via `Claim.status` and `ClaimResponse.outcome`:

```
[Draft] → [Active/Submitted] → [Queued at SHA]
                                      ↓
                             [Under Review / Processing]
                           ↙                          ↘
                  [Complete]                        [Error / Denied]
                      ↓                                    ↓
              [Payment Pending]                  [Provider Corrects & Resubmits]
                      ↓
              [PaymentNotice Issued]
                      ↓
              [Reconciled / Closed]
```

Cancelled claims (`Claim.status = #CANCELLED`) are terminal and cannot be reactivated. Providers must submit a new claim with reference to the cancelled one via `Claim.related`.
