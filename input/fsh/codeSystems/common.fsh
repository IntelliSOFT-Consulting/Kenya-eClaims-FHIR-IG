
CodeSystem: IdentifierUseCS
Id: identifier-use-cs
Title: "Identifier Use Code System"
Description: "Codes for the use of an identifier. Codes align with FHIR identifier-use to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #usual "Usual"
* #official "Official"
* #temp "Temporary"
* #old "Old"


CodeSystem: IdentifierTypesCS
Id: identifier-types-cs
Title: "Identifier Types Code System"
Description: "Codes for types of identifiers used in Kenya (MOH-Kenya OCL: IDENTIFIER-TYPES)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #NATIONAL-ID "National ID"
* #PASSPORT "Passport"
* #BIRTH-CERTIFICATE "Birth Certificate"
* #ALIEN-ID "Alien ID"
* #REFUGEE-ID "Refugee ID"
* #DRIVING-LICENSE "Driving License"
* #SHA-NUMBER "SHA Number"
* #SHA-APPLICATION-NUMBER "SHA Application Number"
* #KRA-PIN "KRA PIN"
* #DIPLOMAT-ID "Diplomat ID"
* #WALLET-ID "Wallet ID"


CodeSystem: NameUseCS
Id: name-use-cs
Title: "Name Use Code System"
Description: "Codes for the use of a name. Codes align with FHIR name-use to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #official "Official"
* #usual "Usual"
* #nickname "Nickname"
* #anonymous "Anonymous"
* #maiden "Maiden"
* #old "Old"
* #temp "Temporary"


CodeSystem: ContactPointSystemCS
Id: contact-point-system-cs
Title: "Contact Point System Code System"
Description: "Codes for contact point systems. Codes align with FHIR contact-point-system to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #phone "Phone"
* #fax "Fax"
* #email "Email"
* #pager "Pager"
* #url "URL"
* #sms "SMS"
* #other "Other"


CodeSystem: ContactPointUseCS
Id: contact-point-use-cs
Title: "Contact Point Use Code System"
Description: "Codes for contact point use. Codes align with FHIR contact-point-use to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #home "Home"
* #work "Work"
* #temp "Temporary"
* #old "Old"
* #mobile "Mobile"


CodeSystem: AddressUseCS
Id: address-use-cs
Title: "Address Use Code System"
Description: "Codes for the use of an address. Codes align with FHIR address-use to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #home "Home"
* #work "Work"
* #temp "Temporary"
* #old "Old/Incorrect"
* #billing "Billing"


CodeSystem: AdministrativeGenderCS
Id: administrative-gender-cs
Title: "Administrative Gender Code System"
Description: "Codes for administrative gender. Codes align with FHIR administrative-gender to allow required binding as a subset."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #male "Male"
* #female "Female"
* #other "Other"
* #unknown "Unknown"


CodeSystem: GenderCS
Id: gender-cs
Title: "Gender Code System"
Description: "Extended gender identity codes for Kenya (MOH-Kenya OCL: GENDER). Extends beyond FHIR administrative-gender with additional local codes."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #male "Male"
* #female "Female"
* #intersex "Intersex"
* #non-conforming "Non-Conforming"
* #prefer-not-to-say "Prefer Not To Say"
* #transgender "Transgender"
* #genderqueer "Genderqueer"


CodeSystem: CivilStatusCS
Id: civil-status-cs
Title: "Civil Status Code System"
Description: "Codes for civil/marital status (MOH-Kenya OCL: CIVIL-STATUS)"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #SINGLE "Single"
* #MARRIED "Married"
* #SEPARATED "Separated"
* #DIVORCED "Divorced"
* #WIDOW "Widow"
* #WIDOWER "Widower"
* #UNKNOWN "Unknown"
