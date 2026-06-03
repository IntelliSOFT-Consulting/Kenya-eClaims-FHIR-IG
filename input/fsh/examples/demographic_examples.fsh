Instance: EClaimsPatientExample
InstanceOf: EClaimsPatient
Usage: #example
Title: "Example eClaims Patient"
Description: "An example Patient resource conforming to the EClaimsPatient profile."

* id = "ECLM-PT-001"

* identifier[0].use = #official
* identifier[0].type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/identifier-types-cs"
* identifier[0].type.coding[0].code = #SHA-NUMBER
* identifier[0].type.coding[0].display = "SHA Number"
* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/sha-number"
* identifier[0].value = "SHA-2024-001234"

* identifier[1].use = #official
* identifier[1].type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/identifier-types-cs"
* identifier[1].type.coding[0].code = #NATIONAL-ID
* identifier[1].type.coding[0].display = "National ID"
* identifier[1].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/national-id"
* identifier[1].value = "12345678"

* name[0].use = #official
* name[0].family = "Kamau"
* name[0].given[0] = "John"
* name[0].given[1] = "Mwangi"

* telecom[0].system = #phone
* telecom[0].value = "+254712345678"
* telecom[0].use = #mobile

* gender = #male
* birthDate = "1985-06-15"

* address[0].use = #home
* address[0].city = "Nairobi"
* address[0].district = "Westlands"
* address[0].state = "Nairobi County"
* address[0].country = "KE"

* maritalStatus.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/civil-status-cs"
* maritalStatus.coding[0].code = #MARRIED
* maritalStatus.coding[0].display = "Married"

* contact[0].relationship[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship[0].coding[0].code = #N
* contact[0].relationship[0].coding[0].display = "Next-of-Kin"
* contact[0].name.family = "Kamau"
* contact[0].name.given[0] = "Mary"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254798765432"


Instance: EClaimsProviderOrgExample
InstanceOf: EClaimsOrganization
Usage: #example
Title: "Example eClaims Provider Organization"
Description: "An example healthcare provider Organization conforming to EClaimsOrganization."

* id = "ECLM-ORG-001"

* identifier[0].use = #official
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].code = #PRN
* identifier[0].type.coding[0].display = "Provider number"
* identifier[0].value = "PROV-KE-00123"

* active = true

* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #prov
* type[0].coding[0].display = "Healthcare Provider"

* name = "Nairobi General Hospital"

* address[0].use = #work
* address[0].city = "Nairobi"
* address[0].district = "Nairobi Central"
* address[0].state = "Nairobi County"
* address[0].country = "KE"

* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254202345678"


Instance: EClaimsInsurerOrgExample
InstanceOf: EClaimsOrganization
Usage: #example
Title: "Example eClaims Insurer Organization"
Description: "An example Social Health Authority insurer Organization conforming to EClaimsOrganization."

* id = "ECLM-INS-001"

* identifier[0].use = #official
* identifier[0].value = "SHA-KE-001"

* active = true

* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #ins
* type[0].coding[0].display = "Insurance Company"

* name = "Social Health Authority"

* address[0].use = #work
* address[0].city = "Nairobi"
* address[0].district = "Upper Hill"
* address[0].state = "Nairobi County"
* address[0].country = "KE"

* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254203456789"


Instance: EClaimsPractitionerExample
InstanceOf: EClaimsPractitioner
Usage: #example
Title: "Example eClaims Practitioner"
Description: "An example Practitioner resource conforming to EClaimsPractitioner."

* id = "ECLM-PRA-001"

* identifier[0].use = #official
* identifier[0].type.coding[0].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/identifier-types-cs"
* identifier[0].type.coding[0].code = #SHA-NUMBER
* identifier[0].type.coding[0].display = "SHA Number"
* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/provider-number"
* identifier[0].value = "DR-KE-00456"

* active = true

* name[0].use = #official
* name[0].family = "Ochieng"
* name[0].given[0] = "Dr. James"
* name[0].prefix[0] = "Dr."

* telecom[0].system = #phone
* telecom[0].value = "+254711234567"
* telecom[0].use = #work

* gender = #male
* birthDate = "1978-03-22"
