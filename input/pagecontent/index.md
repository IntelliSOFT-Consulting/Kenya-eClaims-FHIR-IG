# Kenya eClaims FHIR Implementation Guide

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason For Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Kenya eClaims Taskforce</td>
            <td>20th July 2025</td>
            <td>Initial Draft</td>
            <td>1.0</td>
        </tr>
    </tbody>
</table>

### Purpose of this Guide

This FHIR Implementation Guide provides the technical framework for implementers, EMR vendors, health insurance payers, and digital health stakeholders participating in Kenya’s electronic claims (eClaims) ecosystem. It defines standardized FHIR profiles, value sets, and workflows required to facilitate accurate, secure, and consistent transmission of clinical and financial data between healthcare providers and health insurance schemes.

> The guide aims to promote efficiency, accountability, and real-time claim adjudication within Kenya’s health financing landscape.

### Relationship With Other Kenyan IGs

> Other international and national standards were reviewed and considered during the development process to assess the degree of alignment and to facilitate adoption of this standard. These implementation guides include: 
> #### Related Implementation Guides
- [Kenya Core FHIR IG](https://igkenyacore.intellisoftkenya.com)
- [Kenya eClaims FHIR IG](https://igeclaims.intellisoftkenya.com)  
- [Kenya Patient Summary (KPS) FHIR IG](https://igpatientsummary.intellisoftkenya.com)
- [Kenya ePrescription FHIR IG](https://igeprescriptions.intellisoftkenya.com)
- [Kenya Lab Orders FHIR IG](https://iglaborders.intellisoftkenya.com)


### Introduction

The Kenya eClaims FHIR Implementation Guide (IG) supports the development of a unified, standards-based electronic claims exchange system that ensures interoperability between health facilities, intermediary platforms, and insurance payers. It reflects Kenya's broader commitment to a digitally enabled health sector, aligned with the Kenya Digital Health Act 2023 and the Universal Health Coverage (UHC) agenda.

By leveraging HL7 FHIR as the standard for health data exchange, this IG enables structured, machine-readable, and semantically consistent claims data flow—laying the foundation for automation, analytics, and strategic purchasing in healthcare.

### Background

Healthcare providers across Kenya use diverse Electronic Medical Record (EMR) systems to capture patient encounters, diagnoses, medications, procedures, and billing information. However, the lack of a standardized, electronic method to submit claims to insurers results in delays, errors, and inefficiencies.

To address this, the Ministry of Health, in collaboration with counties and insurers, is developing an eClaims architecture that supports digital submission, validation, adjudication, and feedback of claims. This FHIR IG specifies how claims-related resources (such as `Claim`, `ClaimResponse`, `Coverage`, `Patient`, and `Encounter`) are structured and exchanged using FHIR.

This guide facilitates:

- Structured digital claim generation at the point of care.
- Seamless integration between EMRs and claims adjudication engines.
- Feedback to providers about claim statuses and outcomes.
- Analytics on utilization, fraud, and performance-based financing.

### Project Vision & Objectives

The Kenya eClaims initiative seeks to:

- Improve timeliness and accuracy of claim submissions from health facilities.
- Enhance the transparency and traceability of the claims lifecycle.
- Reduce administrative burdens on providers and payers through automation.
- Enable national-level aggregation and analysis of claims data.
- Foster compliance with Kenya’s digital health and health financing policies.

### Kenya eClaims Technical Architecture

The Kenya eClaims system is composed of the following key layers:

1. **Point-of-Service (PoS) EMRs** – Health facility EMRs capture structured clinical and billing data for services rendered.
2. **County/National Interoperability Layer** – Middleware platforms facilitate message routing, validation, and transformation into standardized FHIR formats.
3. **Insurance Payer Systems** – Receive, adjudicate, and respond to submitted claims based on policy rules, benefits packages, and medical guidelines.

Data exchange is governed by secured APIs and standardized FHIR profiles, enabling interoperability between:

- Ministry of Health systems
- County Digital Health platforms
- SHIF and private insurers
- Third-party claim processing hubs

> This implementation guide ensures that each actor in the ecosystem—from the clinician recording a visit to the payer approving a claim—operates on a common data foundation, thereby enabling a sustainable, responsive, and patient-centered health financing system.