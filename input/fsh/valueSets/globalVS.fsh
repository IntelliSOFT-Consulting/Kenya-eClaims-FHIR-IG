Alias: $sct = http://snomed.info/sct
Alias: $hl7 = http://terminology.hl7.org/CodeSystem/admit-source

ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Condition Severity"
Description: "A set of SNOMED CT codes for condition severity, including Severe, Moderate, and Mild."
* ^status = #active
* ^experimental = false
* $sct#24484000 "Severe"
* $sct#1255665007 "Moderate"
* $sct#255604002 "Mild"

ValueSet: ConditionCodeVS
Id: condition-code-vs
Title: "Condition Code"
Description: "A set of SNOMED CT codes for clinical findings."
* ^status = #active
* ^experimental = false
* $sct#404684003 "Clinical finding"
* $sct#3480002 "Burn of wrist"
* $sct#1261007 "Fracture of multiple ribs"

ValueSet: ServiceTypeVS
Id: service-type-vs
Title: "Service Type"
Description: "A set of SNOMED CT codes for service types."
* ^status = #active
* ^experimental = false
* $sct#224891009 "Healthcare service"
* $sct#394579002 "Cardiology"
* $sct#394582007 "Dermatology"


ValueSet: AdmitSourceVS
Id: admit-source-vs
Title: "Admit Source"
Description: "A set of SNOMED CT codes for patient admission sources."
* ^status = #active
* ^experimental = false
* $hl7#hosp-trans "Transferred from other hospital"
* $hl7#emd "From accident/emergency department"
* $hl7#outp "From outpatient department"




ValueSet: BodySiteVS
Id: body-site-vs
Title: "Body Site"
Description: "A set of SNOMED CT codes for body sites."
* ^status = #active
* ^experimental = false
* $sct#344001 "Ankle"
* $sct#774007 "Head and neck"
* $sct#5665001 "Retina"

 


