Profile: eClaimsPaymentNotice
Parent: PaymentNotice
Id: eclaims-paymentnotice
Title: "PaymentNotice Profile"
Description: "This profile defines constraints on the PaymentNotice resource for use within the Kenya eClaims Implementation Guide. It provides notice of a payment-related event, such as the issuance or receipt of funds for a healthcare claim, supporting financial reconciliation and tracking."

* id ^short = "A unique identifier genreated by the source system to identify the organization resource. This ID must be unique within the bundle, and will be used to reference the organization resource when it is needed within other resources."
* id 1..1

* meta ^short = "Metadata about a resource"
* meta 1..1

* meta.profile ^short = "Profiles this resource claims to conform to"
* meta.profile 1..*

* identifier ^short = "A unique identifier assigned to this payment notice."
* identifier 1..1

* status ^short = "The status of the resource instance."
* status 1..1
* status = #active

* created ^short = "The date when this resource was created."
* created 1..1

* provider ^short = "The practitioner who is responsible for the services rendered to the patient. Usually the same party as the .payee."
* provider 1..1
* provider only Reference(eClaimsOrganization)

* payment ^short = "A reference to the payment which is the subject of this notice."
* payment 1..1

* paymentDate ^short = "The date when the above payment action occurred."
* paymentDate 1..1

* payee ^short = "The party who will receive or has received payment that is the subject of this notification. "
* payee 1..1
* payee only Reference(eClaimsOrganization)

* recipient ^short = "The party who is notified of the payment status."
* recipient 1..1

* amount ^short = "The amount sent to the payee."
* amount 1..1

* paymentStatus ^short = "A code indicating whether payment has been sent or cleared."
* paymentStatus 1..1