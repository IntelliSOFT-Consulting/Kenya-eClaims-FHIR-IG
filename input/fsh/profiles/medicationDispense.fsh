Profile: EClaimsMedicationDispense
Parent: MedicationDispense
Id: ke-eclaims-medicationdispense
Title: "eClaims Medication Dispense Profile"
Description: "This profile defines constraints on the MedicationDispense resource for use within the Kenya eClaims Implementation Guide. It represents the dispensing of a medication to a patient."

* implicitRules 0..1

// Status
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationdispense-status (required)

// Medication — local GenericProducts ValueSet (no SNOMED CT / RxNorm)
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* insert CodeableConceptRule(medicationCodeableConcept, 1..1, MS)
* medicationCodeableConcept from GenericProductsVS (required)

// Subject
* subject 0..1 MS
* subject only Reference(EClaimsPatient)
* subject.reference 1..1 MS
* subject.display 1..1 MS

// Status reason
* statusReason[x] 0..1 MS
* statusReasonCodeableConcept 0..1 MS
* insert CodeableConceptRule(statusReasonCodeableConcept, 0..1, MS)
* statusReasonCodeableConcept from http://hl7.org/fhir/ValueSet/medicationdispense-status-reason (required)

// Performer
* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(EClaimsPractitioner)
* performer.function 0..1 MS
* insert CodeableConceptRule(performer.function, 0..1, MS)
* performer.function from http://hl7.org/fhir/ValueSet/med-admin-perform-function (required)

// Location
* location 0..1 MS

// Authorizing prescription — must reference an eClaims MedicationRequest
* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(EClaimsMedicationRequest)

// Type — HL7 v3 ActPharmacySupplyType (no SNOMED CT)
* type 1..1 MS
* insert CodeableConceptRule(type, 1..1, MS)
* type from http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType (required)

// Quantity dispensed
* quantity 1..1 MS
* quantity.value 1..1 MS
* quantity.unit 1..1 MS
* quantity.system 1..1 MS

// When handed over
* whenHandedOver 1..1 MS

// Dosage instruction
* dosageInstruction 0..* MS
* dosageInstruction.sequence 1..1 MS
* dosageInstruction.text 1..1 MS

// Additional instruction — local ValueSet (no SNOMED CT)
* dosageInstruction.additionalInstruction 1..* MS
* insert CodeableConceptRule(dosageInstruction.additionalInstruction, 1..1, MS)
* dosageInstruction.additionalInstruction from DosageAdditionalInstructionVS (required)

* dosageInstruction.patientInstruction 1..1 MS
* dosageInstruction.timing 1..1 MS

// As needed — local ValueSet (no SNOMED CT)
* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.asNeededCodeableConcept 0..1 MS
* insert CodeableConceptRule(dosageInstruction.asNeededCodeableConcept, 0..1, MS)
* dosageInstruction.asNeededCodeableConcept from AsNeededReasonVS (required)

// Site — Kenya body site ValueSet (no SNOMED CT)
* dosageInstruction.site 1..1 MS
* insert CodeableConceptRule(dosageInstruction.site, 1..1, MS)
* dosageInstruction.site from BodySiteVS (required)

// Route
* dosageInstruction.route 1..1 MS
* insert CodeableConceptRule(dosageInstruction.route, 1..1, MS)
* dosageInstruction.route from http://hl7.org/fhir/ValueSet/route-codes (required)

// Method — local ValueSet (no SNOMED CT)
* dosageInstruction.method 0..1 MS
* insert CodeableConceptRule(dosageInstruction.method, 0..1, MS)
* dosageInstruction.method from AdministrationMethodVS (required)

// Dose and rate
* dosageInstruction.doseAndRate 0..* MS
* dosageInstruction.doseAndRate.type 0..1 MS
* insert CodeableConceptRule(dosageInstruction.doseAndRate.type, 0..1, MS)
* dosageInstruction.doseAndRate.type from http://hl7.org/fhir/ValueSet/dose-rate-type (required)
* dosageInstruction.doseAndRate.dose[x] 0..1 MS
* dosageInstruction.doseAndRate.rate[x] 0..1 MS
* dosageInstruction.maxDosePerPeriod 0..1 MS
* dosageInstruction.maxDosePerAdministration 0..1 MS
* dosageInstruction.maxDosePerLifetime 0..1 MS

// Substitution
* substitution 0..1 MS
* substitution.type 0..1 MS
* insert CodeableConceptRule(substitution.type, 0..1, MS)
* substitution.type from http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode (required)
* substitution.reason 0..* MS
* insert CodeableConceptRule(substitution.reason, 0..1, MS)
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason (required)
