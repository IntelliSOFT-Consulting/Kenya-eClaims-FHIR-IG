# Background

### Kenya's Health Financing Landscape

Kenya has approximately 56 million people served by a pluralistic health system spanning national referral hospitals, county-level facilities, faith-based organizations, and private providers. Health services are financed through a combination of government budgets, out-of-pocket payments, and health insurance. Prior to the introduction of Universal Health Coverage (UHC), only an estimated 20% of Kenyans had any form of formal health insurance.

The **Social Health Insurance Act (2023)** repealed the National Hospital Insurance Fund (NHIF) Act and established two successor bodies:

- **Social Health Authority (SHA)** — The statutory insurer responsible for managing the Social Health Insurance Fund (SHIF), the Emergency, Chronic, and Critical Illness Fund (ECCIF), and the Primary Healthcare Fund (PHCF).
- **Social Health Insurance Fund (SHIF)** — The pooled fund into which contributions flow and against which claims are adjudicated.

SHA's mandate covers all Kenyans under a contributory scheme, with subsidized cover for informal sector workers and the vulnerable. This represents a fundamental shift from NHIF's facility-based, flat-rate reimbursement to a benefits-package-driven, provider-payment model that requires granular, structured clinical and financial data.

---

### The Electronic Claims Challenge

Healthcare providers across Kenya use diverse Electronic Medical Record (EMR) and Hospital Management Information System (HMIS) platforms, including:

- KenyaEMR (OpenMRS-based)
- Afya Community Health Information Systems
- Various proprietary hospital management systems
- Paper-based registers at lower-level facilities

Without a standardized electronic claims interface, providers rely on paper forms, PDF attachments, or proprietary API integrations to submit claims. This results in:

| Problem | Impact |
|---|---|
| **Data heterogeneity** | Inconsistent diagnosis coding, drug naming, and service categorization |
| **Delayed adjudication** | Manual processing backlogs extending reimbursement cycles beyond 90 days |
| **Fraud and abuse** | Limited auditability of unbundled or inflated claims |
| **Duplicate submissions** | No shared claim identifier standard across payers |
| **Limited analytics** | Inability to aggregate utilization data for strategic purchasing |

This Implementation Guide addresses these challenges by providing a single, FHIR-based data standard that all EMRs and payers can implement to exchange claims data consistently.

---

### The Digital Health Agency's Role

The **Digital Health Agency (DHA)** of Kenya, established under the Kenya Digital Health Act 2023, is responsible for:

- Developing, publishing, and maintaining Kenya's National Health Information Interoperability Framework (NHIIF)
- Operating the Kenya Health Information Exchange (HIE)
- Curating the Open Concept Lab (OCL) terminology repository (`ilm-hie.dha.go.ke`)
- Publishing FHIR Implementation Guides for priority health domains

The Kenya eClaims FHIR IG is published by DHA in close collaboration with:

- The **Social Health Authority (SHA)** — as the primary claims payer and rules authority
- **IntelliSOFT Consulting** — as technical IG development partner
- The **Ministry of Health's Division of Health Financing** — for policy alignment
- **County Health Management Teams** — representing provider interests
- **EMR vendors and integration partners** — for implementer feasibility

---

### Policy and Legislative Framework

This Implementation Guide is grounded in the following policies and legislation:

| Instrument | Relevance |
|---|---|
| **Kenya Digital Health Act, 2023** | Mandates interoperability standards for all digital health systems; establishes DHA as the standards authority |
| **Social Health Insurance Act, 2023** | Creates SHA, defines contribution and benefits structures, and mandates electronic claims submission |
| **Kenya Health Policy 2014–2030** | Sets the strategic direction for UHC, preventive care, and health system strengthening |
| **Kenya National eHealth Policy 2016–2030** | Guides investment in health IT infrastructure and data governance |
| **Data Protection Act, 2019** | Governs collection, storage, and processing of personal health data |
| **Kenya Medical Records Act** | Defines legal requirements for health record keeping |
| **WHO Global Digital Health Strategy 2020–2025** | International alignment framework for national digital health investments |

---

### SHA Claims Ecosystem

The SHA eClaims ecosystem operates across a tiered architecture:

**Level 1 – Point of Care (Provider)**
Facilities capture clinical encounters, diagnoses, medications, and procedures in their EMR. The EMR packages this data as a FHIR `Bundle` containing a `Claim`, relevant `Patient`, `Encounter`, `Condition`, `Coverage`, and supporting resources.

**Level 2 – Interoperability Layer**
The Kenya Health Information Exchange (HIE) validates, routes, and transforms messages. It enforces this FHIR IG's conformance rules, resolves patient identifiers via the Master Patient Index (MPI), and forwards valid claims to SHA's adjudication engine.

**Level 3 – SHA Adjudication Engine**
SHA's core system evaluates the claim against the member's active coverage, the SHA benefits package (interventions catalogue), and clinical appropriateness rules. It returns a `ClaimResponse` or requests preauthorization via the preauthorization workflow.

**Level 4 – Payment & Reconciliation**
Approved claims trigger payment events notified to providers via `PaymentNotice` resources. Providers reconcile payments against submitted claims using claim identifiers defined in this IG.

---

### Relationship to International Standards

This IG aligns with the following international standards and frameworks:

| Standard | Usage |
|---|---|
| **HL7 FHIR R4** | Base specification for all resource definitions |
| **ICD-11 (WHO)** | Primary diagnosis coding system referenced in `ClaimDiagnosisCodeableConceptCS` |
| **LOINC** | Laboratory and diagnostic report codes in `DiagnosticReport.code` |
| **HL7 Terminology (THO)** | Reused for claim types, encounter classes, and administrative codes |
| **MOH-Kenya OCL** | Primary source for Kenya-specific value sets (identifiers, coverage, episode types, etc.) |
| **SHA Interventions Catalogue** | Service codes used in `Claim.item.productOrService` |

SNOMED CT is **not used** in this IG. All coded elements that would typically reference SNOMED CT (e.g., body sites, medication administration methods, clinical findings) are bound to local Kenya-specific code systems or HL7 terminology equivalents.
