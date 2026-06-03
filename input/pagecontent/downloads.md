# Downloads & Validation

This page provides information on downloading the Kenya eClaims FHIR package, validating FHIR resources against this IG, and accessing source files.

---

### 1. FHIR NPM Package

The Kenya eClaims FHIR IG is published as a standard HL7 FHIR NPM package.

| Property | Value |
|---|---|
| **Package ID** | `fhir.kenyaClaimsIG` |
| **Version** | `0.1.0` |
| **Canonical URL** | `https://nshr-uat.sha.go.ke/fhir` |
| **FHIR Version** | 4.0.1 |
| **Status** | Draft |

The package contains all compiled FHIR artifacts in JSON format:
- `StructureDefinition` — All 21 profiles and 37 extensions
- `ValueSet` — All 40 value sets
- `CodeSystem` — All 40 code systems
- `ImplementationGuide` — The IG resource itself

**To install via npm (for FHIR tooling):**
```bash
npm --registry https://fhir.dha.go.ke/npm install fhir.kenyaClaimsIG@0.1.0
```

**Package file (direct download):**

[fhir.kenyaClaimsIG-0.1.0.tgz](package.tgz)

---

### 2. Validating FHIR Resources

#### 2.1 Using the HL7 FHIR Validator (Recommended)

The official HL7 FHIR Validator (`validator_cli.jar`) is the recommended tool for conformance testing.

**Step 1 — Download the validator:**
```bash
wget https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
```

**Step 2 — Validate a resource against this IG:**
```bash
java -jar validator_cli.jar \
  path/to/your-claim.json \
  -version 4.0.1 \
  -ig fhir.kenyaClaimsIG#0.1.0 \
  -recurse
```

**Step 3 — Validate a full Bundle:**
```bash
java -jar validator_cli.jar \
  path/to/claim-bundle.json \
  -version 4.0.1 \
  -ig fhir.kenyaClaimsIG#0.1.0 \
  -profile https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-claimbase
```

**Common validator flags:**

| Flag | Purpose |
|---|---|
| `-version 4.0.1` | Specify FHIR R4 |
| `-ig fhir.kenyaClaimsIG#0.1.0` | Load this IG's package |
| `-profile <url>` | Validate against a specific profile |
| `-recurse` | Validate all resources in a Bundle |
| `-output results.json` | Write output to a JSON file |
| `-level warnings` | Show warnings in addition to errors |

#### 2.2 Online Validator

Use the FHIR Foundation's hosted validator at **[https://validator.fhir.org](https://validator.fhir.org)**:

1. Open the validator in your browser.
2. Paste your FHIR resource JSON in the input area.
3. Under "Implementation Guides", enter: `fhir.kenyaClaimsIG#0.1.0`
4. Click **Validate**.

#### 2.3 Using HAPI FHIR Server for Testing

The Kenya HIE exposes a HAPI FHIR R4 test server with this IG loaded:

- **Base URL:** `https://hie-test.dha.go.ke/fhir`
- **Validation endpoint:** `POST https://hie-test.dha.go.ke/fhir/Claim/$validate`
- **Authentication:** OAuth 2.0 client credentials (contact `interoperability@dha.go.ke` for test credentials)

---

### 3. Source Files

All FSH source files for this IG are publicly available on GitHub:

**Repository:** [https://github.com/IntelliSOFT-Consulting/Kenya-eClaims-FHIR-IG](https://github.com/IntelliSOFT-Consulting/Kenya-eClaims-FHIR-IG)

**File structure:**

```
input/
├── fsh/
│   ├── profiles/               # 21 FHIR profile definitions (.fsh)
│   │   ├── claim_base.fsh      # Base claim profile
│   │   ├── claim_submission.fsh
│   │   ├── coverage.fsh
│   │   ├── patient.fsh
│   │   ├── practitioner.fsh
│   │   ├── organization.fsh
│   │   ├── encounter.fsh
│   │   ├── episodeOfCare.fsh
│   │   ├── condition.fsh
│   │   ├── diagnosticReport.fsh
│   │   ├── medicationRequest.fsh
│   │   ├── medicationStatement.fsh
│   │   ├── medicationDispense.fsh
│   │   ├── paymentNotice.fsh
│   │   ├── claim-preauth-surgical.fsh
│   │   ├── claim-preauth-oncology.fsh
│   │   ├── claim-preauth-renal.fsh
│   │   ├── claim-preauth-imaging.fsh
│   │   ├── claim-preauth-optical.fsh
│   │   ├── claim-response.fsh
│   │   └── claimResponse.fsh
│   ├── valuesets/              # 40 ValueSet definitions (.fsh)
│   │   ├── claim_base.fsh      # Core claim ValueSets
│   │   ├── claim_extended.fsh  # Claim workflow ValueSets
│   │   ├── coverage_extended.fsh
│   │   ├── common.fsh          # Shared identifier/contact ValueSets
│   │   ├── clinical.fsh        # Condition, Encounter, Episode ValueSets
│   │   └── medications.fsh     # Medication ValueSets
│   ├── codeSystems/            # 40 CodeSystem definitions (.fsh)
│   │   ├── claim_base.fsh      # ICD-11, body sites, interventions
│   │   ├── claim_extended.fsh  # Claim workflow codes
│   │   ├── coverage_extended.fsh
│   │   ├── common.fsh          # Shared identifier/contact codes
│   │   ├── clinical.fsh        # Clinical category codes
│   │   └── medications.fsh     # Medication administration codes
│   ├── extensions.fsh          # Coverage and workflow extensions
│   ├── claim_extensions.fsh    # Claim-specific extensions
│   ├── rulesets.fsh            # Reusable FSH rule sets
│   └── Alias.fsh               # System aliases
├── pagecontent/                # Narrative page content (Markdown)
│   ├── index.md
│   ├── background.md
│   ├── usecases.md
│   ├── actors.md
│   ├── security.md
│   ├── conformance.md
│   ├── terminology.md
│   └── downloads.md
└── CSV/                        # Source data dictionary
    └── ICL Copy of Kenya IG Profiles - Kenya e-Claims.csv
```

---

### 4. External Terminology Dependencies

This IG references the following external terminology servers. Implementers may need access to these for runtime terminology validation:

| Terminology | Server URL | Used For |
|---|---|---|
| **MOH-Kenya OCL** | `https://ilm-hie.dha.go.ke/ocl` | All MOH-Kenya-specific ValueSets (identifiers, coverage, clinical categories) |
| **SHA Interventions** | `https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/KenyaSocialHealthAuthorityInterventions` | Claim line item product/service codes |
| **PPB Generic Products** | `https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/GenericProducts` | Pharmacy medication codes |
| **HL7 Terminology** | `https://terminology.hl7.org` | Standard administrative and clinical codes |
| **WHO ICD-11** | `https://icd.who.int/icdapi` | Diagnosis codes |

---

### 5. Building the IG Locally

To build this IG from source using the HL7 IG Publisher:

**Prerequisites:**
- Java 11 or higher
- Node.js 18 or higher
- SUSHI v3.x (`npm install -g fsh-sushi`)

**Steps:**
```bash
# Clone the repository
git clone https://github.com/IntelliSOFT-Consulting/Kenya-eClaims-FHIR-IG.git
cd Kenya-eClaims-FHIR-IG

# Download the IG Publisher (first time)
./_updatePublisher.sh   # macOS/Linux
./_updatePublisher.bat  # Windows

# Run SUSHI to compile FSH to JSON
sushi .

# Build the full IG with the IG Publisher
./_genonce.sh    # macOS/Linux
_genonce.bat     # Windows
```

Output will be generated in the `output/` directory. Open `output/index.html` in a browser to view the built IG.

---

### 6. Contact & Support

| Contact | Purpose |
|---|---|
| **interoperability@dha.go.ke** | Technical queries about this IG |
| **certification@dha.go.ke** | EMR certification and onboarding |
| **terminology@dha.go.ke** | Terminology and code system requests |
| **security@dha.go.ke** | Security incident reporting |
| **GitHub Issues** | [Report a bug or suggest an improvement](https://github.com/IntelliSOFT-Consulting/Kenya-eClaims-FHIR-IG/issues) |

**Digital Health Agency of Kenya**
Upper Hill Medical Centre, Hospital Road, Nairobi
Website: [https://dha.go.ke](https://dha.go.ke)
