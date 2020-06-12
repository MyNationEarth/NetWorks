export file
reportDescriptionContainer
  | template |
  template := NWContractorInvoice new.
  ^ template contractorTitleDescription , template titleDescription
    , template commentDescription , template issueDateDescription
    , template paymentDueDateDescription , template paymentMadeDateDescription
    , template paymentMadeMonthDescription , template amountPayableDescription
    , template isTaxExemptDescription , template amountPaidDescription
    , template projectTitleDescription