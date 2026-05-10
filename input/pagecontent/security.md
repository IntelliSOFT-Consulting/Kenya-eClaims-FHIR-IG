# Security & Privacy

<div class="alert alert-warning" role="alert">
  <strong>Important:</strong> All production deployments of this Implementation Guide <strong>MUST</strong> comply with the Kenya Data Protection Act 2019 and the data governance provisions of the Kenya Digital Health Act 2023. Health data transmitted using this IG contains sensitive personal health information (PHI) and must be handled accordingly.
</div>

---

### 1. Transport Security

All FHIR API endpoints exchanging data under this IG **SHALL** enforce the following transport-layer controls:

| Requirement | Specification |
|---|---|
| **Protocol** | HTTPS only (HTTP is prohibited) |
| **TLS Version** | TLS 1.2 minimum; TLS 1.3 recommended |
| **Certificate Authority** | Certificates issued by a recognized CA; self-signed certificates prohibited in production |
| **HSTS** | HTTP Strict Transport Security header required (`max-age ≥ 31536000`) |
| **Cipher Suites** | Forward-secrecy ciphers only (e.g., ECDHE-RSA-AES256-GCM-SHA384) |
| **Certificate Pinning** | Recommended for mobile and embedded EMR clients |

---

### 2. Authentication

All actors transmitting or receiving FHIR resources under this IG **SHALL** authenticate using one of the following mechanisms:

#### 2.1 OAuth 2.0 / SMART on FHIR

The preferred authentication framework for EMR-to-HIE and HIE-to-SHA interactions. Implementations **SHALL** support:

- **Client Credentials Flow** (system-to-system, no user interaction) — for automated EMR batch submissions
- **Authorization Code Flow** (user-authorized access) — for provider portal interactions
- **Token Format:** JSON Web Token (JWT) signed with RS256
- **Token Lifetime:** Access tokens **SHALL NOT** exceed 1 hour; refresh tokens **SHALL NOT** exceed 24 hours for clinical sessions
- **Scopes:** Minimum required scopes are `system/Claim.write`, `system/ClaimResponse.read`, `system/Coverage.read`

#### 2.2 Mutual TLS (mTLS)

For system-to-system integrations between the HIE and SHA where OAuth infrastructure is not feasible, mutual TLS client certificate authentication **MAY** be used as an alternative. Client certificates must be issued by DHA's certificate authority.

#### 2.3 API Keys

API keys **SHALL NOT** be used as the sole authentication mechanism for any endpoint transmitting PHI. They **MAY** be used as a secondary factor alongside OAuth tokens for rate-limiting purposes.

---

### 3. Authorization

#### 3.1 Role-Based Access Control (RBAC)

Implementations **SHALL** enforce role-based access controls that restrict which actors can perform which FHIR operations:

| Role | Permitted Operations |
|---|---|
| **Provider EMR** | `POST Claim`, `GET ClaimResponse`, `GET Coverage`, `POST Bundle` |
| **SHA Adjudication Engine** | `GET Claim`, `POST ClaimResponse`, `POST PaymentNotice` |
| **HIE Gateway** | `POST Bundle`, `GET/POST` all claim-related resources |
| **Analytics System** | `GET` on de-identified aggregated resources only |
| **Audit System** | `GET AuditEvent` (read-only) |

#### 3.2 Resource-Level Authorization

- Providers **SHALL** only access claims and coverage records for patients registered under their facility.
- SHA **SHALL** only expose `ClaimResponse` resources to the provider that submitted the corresponding `Claim`.
- Cross-provider claim data access requires explicit patient consent or a regulatory override documented in an `AuditEvent`.

---

### 4. Data Privacy

#### 4.1 Personal Health Information (PHI)

All FHIR resources defined in this IG contain PHI as defined by the Kenya Data Protection Act 2019 (personal identifiers, health conditions, financial data). The following obligations apply:

- **Purpose Limitation:** PHI collected for claims adjudication **SHALL NOT** be used for commercial purposes without explicit patient consent.
- **Data Minimization:** FHIR Bundles **SHALL** include only the data elements required for the specific transaction. Implementers **MUST NOT** include free-text narrative fields containing sensitive information beyond what is specified in profile constraints.
- **Retention:** Claim data **SHALL** be retained for the minimum period required by the Kenya Medical Records Act and **SHALL** be securely disposed of thereafter.
- **Patient Rights:** Patients have the right to access and correct their claims data. Systems **SHALL** provide a mechanism to respond to Data Subject Access Requests (DSARs) as required by the Data Protection Act.

#### 4.2 Pseudonymization and De-identification

- For analytics and research use cases, all PHI **SHALL** be de-identified or pseudonymized before processing.
- The national MPI assigns a pseudonymous SHA Number that **MAY** be used in place of the National ID for patient identity in non-clinical contexts.

---

### 5. Audit Logging

All FHIR operations performed under this IG **SHALL** generate audit log entries conforming to the **IHE ATNA (Audit Trail and Node Authentication)** profile. At minimum, each audit record **SHALL** capture:

| Field | Description |
|---|---|
| `AuditEvent.recorded` | Timestamp of the event (UTC) |
| `AuditEvent.agent` | The system or user that initiated the request |
| `AuditEvent.entity` | The FHIR resource(s) accessed or modified |
| `AuditEvent.action` | C (create), R (read), U (update), D (delete), E (execute) |
| `AuditEvent.outcome` | Success, minor failure, serious failure |
| `AuditEvent.source` | The system generating the audit event |

Audit logs **SHALL** be:
- Immutable and tamper-evident (append-only storage or blockchain-backed)
- Retained for a minimum of **7 years**
- Accessible only to authorized audit personnel and regulatory bodies
- Transmitted to the HIE's central audit log repository via the ATR (Audit Record Repository) endpoint

---

### 6. Data Integrity

- All FHIR Bundles **SHALL** include a `Bundle.meta.lastUpdated` timestamp.
- Digital signatures on Bundles are **RECOMMENDED** for preauthorization requests using the FHIR `Signature` datatype with a provider's registered digital certificate.
- Claim identifiers (`Claim.identifier`) **SHALL** be globally unique within the submitting system's namespace (system + value pair).
- Duplicate submission detection: SHA **SHALL** reject any `Claim` with an identifier that matches a previously accepted claim within the same fiscal year from the same provider.

---

### 7. Incident Response

In the event of a suspected data breach involving PHI transmitted under this IG:

1. The affected system **SHALL** notify the DHA Security Operations Centre within **24 hours** of detection.
2. DHA **SHALL** notify the Office of the Data Protection Commissioner (ODPC) within **72 hours** as required by the Data Protection Act 2019.
3. Affected patients **SHALL** be notified if the breach poses a high risk to their rights and freedoms.
4. A post-incident report **SHALL** be filed with ODPC within **30 days**, documenting root cause, impact scope, and remediation actions.

Contact: **security@dha.go.ke**

---

### 8. Conformance to Security Standards

Implementations claiming conformance to this IG are expected to comply with:

- [FHIR Security](https://www.hl7.org/fhir/security.html) — HL7 base security guidance
- [IHE ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) — Audit Trail and Node Authentication
- [IHE IUA](https://profiles.ihe.net/ITI/IUA/) — Internet User Authorization (OAuth 2.0 for FHIR)
- [SMART App Launch](https://hl7.org/fhir/smart-app-launch/) — SMART on FHIR authorization framework
- **Kenya Data Protection Act 2019** — National data protection law
- **Kenya Digital Health Act 2023** — Digital health governance framework
