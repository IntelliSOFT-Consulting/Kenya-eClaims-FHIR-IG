# Kenya eClaims FHIR Implementation Guide

<div class="alert alert-info" role="alert">
  <strong>Publication Status:</strong> This guide is currently in <em>Draft</em> (CI-Build). It is under active development and subject to change. Feedback is welcome at <a href="mailto:interoperability@dha.go.ke">interoperability@dha.go.ke</a>.
</div>

| Property | Value |
|---|---|
| **Canonical URL** | `https://fhir.dha.go.ke/eclaims` |
| **Version** | 0.1.0 |
| **Status** | Draft |
| **FHIR Version** | R4 (4.0.1) |
| **Publisher** | Digital Health Agency of Kenya |
| **Jurisdiction** | Kenya |
| **License** | CC0-1.0 |

---

### Purpose of This Guide

This FHIR Implementation Guide provides the technical framework for implementers, EMR vendors, health insurance payers, and digital health stakeholders participating in Kenya's electronic claims (eClaims) ecosystem. It defines standardized FHIR R4 profiles, value sets, code systems, and extensions required for accurate, secure, and consistent transmission of clinical and financial data between healthcare providers and health insurance schemes — including the Social Health Authority (SHA), SHIF, and approved private insurers.

> This guide promotes efficiency, accountability, and real-time claim adjudication within Kenya's health financing landscape, in alignment with the **Kenya Digital Health Act 2023** and the **Universal Health Coverage (UHC)** agenda.

---

### Scope

This Implementation Guide covers the following eClaims workflows:

| Domain | Description |
|---|---|
| **Claims Submission** | Structured submission of outpatient, inpatient, and specialized service claims |
| **Preauthorization** | Prior authorization for high-cost procedures, surgery, oncology, renal, optical, and imaging |
| **Claim Response & Adjudication** | Standardized response codes, adjudication details, and error handling |
| **Coverage & Eligibility** | Insurance coverage details including plan type, member status, and benefits |
| **Clinical Context** | Diagnosis, encounter, episode of care, medications, and diagnostic reports |
| **Payment Notification** | Payment notice and reconciliation workflows |

---

### Artifact Summary

The following FHIR artifacts are defined in this Implementation Guide:

<table class="table table-bordered table-striped table-hover">
  <thead class="thead-dark">
    <tr>
      <th>Artifact Type</th>
      <th>Count</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Profiles</strong></td>
      <td>21</td>
      <td>Constrained FHIR resource definitions covering Claim, ClaimResponse, Coverage, Patient, Practitioner, Organization, Encounter, EpisodeOfCare, Condition, DiagnosticReport, MedicationRequest, MedicationStatement, MedicationDispense, PaymentNotice, and specialized Preauthorization profiles</td>
    </tr>
    <tr>
      <td><strong>Extensions</strong></td>
      <td>37</td>
      <td>Custom extensions for Kenya-specific clinical and financial data elements not covered by the base FHIR specification</td>
    </tr>
    <tr>
      <td><strong>Value Sets</strong></td>
      <td>40</td>
      <td>Curated sets of coded values bound to profile elements, sourced from MOH-Kenya OCL, HL7 terminology, and local code systems</td>
    </tr>
    <tr>
      <td><strong>Code Systems</strong></td>
      <td>40</td>
      <td>Local code systems defining Kenya-specific terminology for identifiers, clinical categories, coverage types, claim workflows, and medications</td>
    </tr>
  </tbody>
</table>

---

### Relationship to Other Kenya FHIR IGs

This guide is part of the broader Kenya FHIR Interoperability Framework published by the Digital Health Agency of Kenya. It is designed to complement the following implementation guides:

| Guide | Relationship |
|---|---|
| [Kenya Core FHIR IG](https://fhir.dha.go.ke/core) | Base patient demographic and clinical resource profiles reused in this IG |
| [Kenya NCCP FHIR IG](https://fhir.dha.go.ke/nccp) | Cancer-specific claim and clinical profiles that extend eClaims patterns |
| [Kenya ePrescription FHIR IG](https://fhir.dha.go.ke/eprescription) | MedicationRequest patterns referenced in pharmacy claims |
| [Kenya Patient Summary (KPS) FHIR IG](https://fhir.dha.go.ke/kps) | Patient summary data referenced during eligibility checks |

---

### How to Use This Guide

Implementers should read this guide in the following order:

1. **[Background](background.html)** — Understand Kenya's health financing landscape, SHA/SHIF context, and policy drivers.
2. **[Use Cases](usecases.html)** — Review the target workflows and data exchange scenarios.
3. **[Actors & Transactions](actors.html)** — Identify which actors and message flows apply to your system.
4. **[Conformance Requirements](conformance.html)** — Determine which profiles and capabilities you must implement.
5. **[Artifacts](artifacts.html)** — Browse all profiles, extensions, value sets, and code systems.
6. **[Security & Privacy](security.html)** — Review mandatory security controls for production deployments.
7. **[Terminology Guidance](terminology.html)** — Understand how codes and value sets are applied.
8. **[Downloads](downloads.html)** — Obtain the FHIR package and validation tooling.

---

### Design Principles

This Implementation Guide is built on the following principles:

- **FHIR R4 Compliance** — All profiles conform to HL7 FHIR Release 4 (4.0.1).
- **Kenya-First Terminology** — Local code systems from the MOH-Kenya Open Concept Lab (OCL) are preferred. SNOMED CT is not used; LOINC and HL7 terminology are used where there is no Kenya-specific equivalent.
- **Required Bindings** — All coded data elements use `required` binding strength to enforce unambiguous, machine-processable data.
- **Minimal Footprint** — Profiles constrain only what is necessary for eClaims interoperability; they do not prohibit extensions beyond this scope.
- **Alignment with SHA Business Rules** — Profile cardinalities and extensions reflect the Social Health Authority's operational claim submission and adjudication rules.

---

### Revision History

<table class="table table-hover table-bordered table-striped">
  <thead>
    <tr>
      <th>Version</th>
      <th>Date</th>
      <th>Author</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0.1.0</td>
      <td>July 2025</td>
      <td>Kenya eClaims Technical Working Group</td>
      <td>Initial draft — base claim, coverage, preauthorization, and clinical context profiles</td>
    </tr>
  </tbody>
</table>
