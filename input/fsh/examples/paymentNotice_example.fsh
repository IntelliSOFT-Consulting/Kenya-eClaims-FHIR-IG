Instance: EClaimsPaymentReconciliationStub
InstanceOf: PaymentReconciliation
Usage: #example
Title: "Stub PaymentReconciliation for PaymentNotice"
Description: "A minimal stub PaymentReconciliation referenced by the PaymentNotice example."

* id = "ECLM-PR-001"
* status = #active
* period.start = "2025-11-01"
* period.end = "2025-11-30"
* created = "2025-12-01T10:00:00+03:00"
* paymentIssuer = Reference(Organization/ECLM-INS-001)
* outcome = #complete
* paymentDate = "2025-12-01"
* paymentAmount.value = 145600
* paymentAmount.currency = #KES


Instance: EClaimsPaymentNoticeExample
InstanceOf: EClaimsPaymentNotice
Usage: #example
Title: "Example eClaims Payment Notice"
Description: "An example PaymentNotice conforming to EClaimsPaymentNotice."

* id = "ECLM-PN-001"

* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-eclaims-paymentnotice"
* meta.tag[0].system = "http://terminology.hl7.org/CodeSystem/common-tags"
* meta.tag[0].code = #actionable
* meta.tag[0].display = "Actionable"

* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/Identifier/payment-notice-number"
* identifier[0].value = "PN-2025-001234"

* status = #active
* created = "2025-12-01T10:00:00+03:00"

* provider = Reference(Organization/ECLM-ORG-001)

* payment = Reference(PaymentReconciliation/ECLM-PR-001)
* paymentDate = "2025-12-01"

* payee = Reference(Organization/ECLM-ORG-001)
* recipient = Reference(Organization/ECLM-INS-001)

* amount.value = 145600
* amount.currency = #KES

* paymentStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/paymentstatus"
* paymentStatus.coding[0].code = #paid
* paymentStatus.coding[0].display = "Paid"
