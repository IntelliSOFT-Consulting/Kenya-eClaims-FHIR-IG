Profile: eClaimsEpisodeOfCare
Parent: EpisodeOfCare
Id: eclaims-episodeofcare
Title: "EpisodeOfCare Profile"
Description: "This profile defines constraints on the EpisodeOfCare resource for use within the Kenya eClaims Implementation Guide. It groups related encounters and services delivered to a patient over a defined time period, supporting continuity of care and episode-based claim submissions."


* ^status = #draft
* ^experimental = false
* ^publisher = "IntelliSOFT Consulting Ltd"
* ^version = "1.0.0"

* status 1..1 MS
* statusHistory 0..* MS
* type 1..* MS
* diagnosis 0..* MS
* diagnosis.condition only Reference(Condition)
* diagnosis.role from http://hl7.org/fhir/ValueSet/diagnosis-role (extensible)
* patient 1..1 MS
* managingOrganization 1..1 MS
* period 1..1 MS

* referralRequest 0..* MS
* careManager 0..1 MS
* team 0..* MS


Instance: example-kenyahie-episodeofcare
InstanceOf: eClaimsEpisodeOfCare
Title: "EpisodeOfcare  - Example Kenya HIE EpisodeOfCare"
Description: "An example instance of the Kenya HIE EpisodeOfCare profile."
Usage: #example

* status = #active

* statusHistory[0].status = #planned
* statusHistory[0].period.start = "2024-06-01"
* statusHistory[0].period.end = "2024-06-15"

* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/episodeofcare-type"
* type[0].coding[0].code = #hacc
* type[0].coding[0].display = "Home and Community Care"

* diagnosis[0].condition = Reference(Condition/example-condition)
* diagnosis[0].role.coding[0].system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[0].role.coding[0].code = #AD
* diagnosis[0].role.coding[0].display = "Admission diagnosis"
* diagnosis[0].rank = 1

* patient = Reference(Patient/example-patient)
* managingOrganization = Reference(Organization/example-organization)

* period.start = "2024-06-15"
* period.end = "2024-07-15"

* referralRequest[0] = Reference(ServiceRequest/example-referral)
* careManager = Reference(Practitioner/example-practitioner)
* team[0] = Reference(CareTeam/example-careteam)
