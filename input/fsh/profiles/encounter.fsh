// Profile: eClaimsEncounter
// Parent: Encounter
// Id: eclaims-encounter
// Title: "Encounter Profile"
// Description: "This profile defines constraints on the Encounter resource for use within the Kenya eClaims Implementation Guide. It records interactions between a patient and healthcare provider, including visit type, location, and timing, supporting clinical documentation and claim referencing."

// * identifier 1..1
// * status 1..1  
// * class 1..1 
// * class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)

// * serviceType 0..1 
// * serviceType from ServiceTypeVS (extensible)

// * priority 0..1 
// * priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)

// * subject 1..1 
// * subject only Reference(Patient)

// * period 1..1
// * period.start 0..1
// * period.end 0..1

// * hospitalization 0..1 
// * hospitalization.origin 0..1 
// * hospitalization.origin only Reference(Location or Organization)

// * hospitalization.admitSource 0..1 
// * hospitalization.admitSource from AdmitSourceVS (extensible)

// * hospitalization.reAdmission 0..1 
// * hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092 (extensible)

// * hospitalization.dischargeDisposition 0..1 
// * hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (extensible)

// * serviceProvider 1..1 
// * serviceProvider only Reference(Organization)

// // Instance: EncounterExample
// // InstanceOf: Encounter
// // Usage: #example
// // Title: "EncounterExample"
// // Description: "An example of the Encounter resource."
// // * status = #finished
// // * class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
// // * class.code = #AMB
// // * class.display = "ambulatory"

// Instance: KenyaEncounterExample
// InstanceOf: eClaimsEncounter
// Usage: #example
// Title: "Encounter - eClaims Encounter"
// Description: "An example encounter for an eClaims patient send to the national HIE"


// * id = "566d4b06-1213-41a1-9ea9-213212ea9512"

// * identifier.use = #official
// * identifier.system = "https://shr.dha.go.ke/fhir/encounter"
// * identifier.value = "566d4b06-1213-41a1-9ea9-213212ea9512"

// * status = #finished

// * class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
// * class.code = #OP
// * class.display = "outpatient encounter"

// * type[0].coding[0].system = "http://nhts.dha.go.ke/fhir/ValueSet/encounter-types"
// * type[0].coding[0].code = #367336001
// * type[0].coding[0].display = "Chemotherapy"

// * priority.coding[0].system = "http://snomed.info/sct"
// * priority.coding[0].code = #103391001
// * priority.coding[0].display = "Urgent"

// * period.start = "2015-01-17T16:00:00+10:00"
// * period.end = "2015-01-17T16:30:00+10:00"

// * subject.reference = "Patient/CR6164711105276-6"
// * subject.identifier.use = #official
// * subject.identifier.system = "https://hie.dha.go.ke/client-registry"
// * subject.identifier.value = "CR6164711105276-6"

// * participant[0].individual.reference = "Practitioner/PUID-0001662-7"
// * participant[0].individual.type = "Practitioner"
// * participant[0].individual.identifier.use = #official
// * participant[0].individual.identifier.system = "https://hie.dha.go.ke/health-worker-registry"
// * participant[0].individual.identifier.value = "PUID-0001662-7"

// * serviceProvider.reference = "Organization/FID-47-118374-5"
// * serviceProvider.type = "Organization"
// * serviceProvider.identifier.use = #official
// * serviceProvider.identifier.system = "https://hie.dha.go.ke/health-facility-registry"
// * serviceProvider.identifier.value = "FID-47-118374-5"

