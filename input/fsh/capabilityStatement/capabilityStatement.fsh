Instance: eClaimsFHIRIGCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* id = "eClaimsFHIRIGCapabilityStatement"
* name = "KenyaEClaimsFHIRIGCapabilityStatement"
* title = "Kenya eClaims FHIR IG Capability Statement"
* description = "This CapabilityStatement outlines the functional and technical expectations for systems implementing the Kenya eClaims FHIR Implementation Guide, including supported resource interactions, profiles, operations, and system roles."
* version = "0.1.0"
* status = #active
* date = "2025-07-22"
* publisher = "Safaricom & IntelliSOFT Kenya"
* kind = #requirements // #instance
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml

* rest[0].mode = #server
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(eClaimsPatient)
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #search-type

* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].profile = Canonical(eClaimsPractitioner)
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #search-type

* rest[0].resource[2].type = #Organization
* rest[0].resource[2].profile = Canonical(eClaimsOrganization)
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #search-type


* rest[0].resource[3].type = #Claim
* rest[0].resource[3].profile = Canonical(eClaimsClaim)
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[1].code = #search-type
* rest[0].resource[3].interaction[2].code = #create
* rest[0].resource[3].interaction[3].code = #update

* rest[0].resource[4].type = #ClaimResponse
* rest[0].resource[4].profile = Canonical(eClaimsClaimResponse)
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[1].code = #search-type
* rest[0].resource[4].interaction[2].code = #create
* rest[0].resource[4].interaction[3].code = #update

* rest[0].resource[5].type = #Condition
* rest[0].resource[5].profile = Canonical(eClaimsConditionDiagnosis)
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[1].code = #search-type
* rest[0].resource[5].interaction[2].code = #create
* rest[0].resource[5].interaction[3].code = #update

* rest[0].resource[6].type = #DiagnosticReport
* rest[0].resource[6].profile = Canonical(eClaimsDiagnosticReport)
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[1].code = #search-type
* rest[0].resource[6].interaction[2].code = #create
* rest[0].resource[6].interaction[3].code = #update

* rest[0].resource[7].type = #Encounter
* rest[0].resource[7].profile = Canonical(eClaimsEncounter)
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[1].code = #search-type
* rest[0].resource[7].interaction[2].code = #create
* rest[0].resource[7].interaction[3].code = #update

* rest[0].resource[8].type = #EpisodeOfCare
* rest[0].resource[8].profile = Canonical(eClaimsEpisodeOfCare)
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[1].code = #search-type
* rest[0].resource[8].interaction[2].code = #create
* rest[0].resource[8].interaction[3].code = #update


* rest[0].resource[9].type = #MedicationDispense
* rest[0].resource[9].profile = Canonical(eClaimsMedicationDispense)
* rest[0].resource[9].interaction[0].code = #read
* rest[0].resource[9].interaction[1].code = #search-type
* rest[0].resource[9].interaction[2].code = #create
* rest[0].resource[9].interaction[3].code = #update

* rest[0].resource[10].type = #MedicationRequest
* rest[0].resource[10].profile = Canonical(eClaimsMedicationRequest)
* rest[0].resource[10].interaction[0].code = #read
* rest[0].resource[10].interaction[1].code = #search-type
* rest[0].resource[10].interaction[2].code = #create
* rest[0].resource[10].interaction[3].code = #update

* rest[0].resource[11].type = #MedicationStatement
* rest[0].resource[11].profile = Canonical(eClaimsMedicationStatement)
* rest[0].resource[11].interaction[0].code = #read
* rest[0].resource[11].interaction[1].code = #search-type
* rest[0].resource[11].interaction[2].code = #create
* rest[0].resource[11].interaction[3].code = #update

* rest[0].resource[12].type = #PaymentNotice
* rest[0].resource[12].profile = Canonical(eClaimsPaymentNotice)
* rest[0].resource[12].interaction[0].code = #read
* rest[0].resource[12].interaction[1].code = #search-type
* rest[0].resource[12].interaction[2].code = #create
* rest[0].resource[12].interaction[3].code = #update



// * rest[0].interaction[0].code = #transaction
// * rest[0].interaction[1].code = #batch
// * rest[0].interaction[2].code = #history-system
// * rest[0].interaction[3].code = #search-system
