export file
reportDescriptionContainer
  | template |
  template := NWWorkOrder new.
  ^ template contractorTitleDescription
    , template contractorEmailAddressDescription , template emptyDescription
    , template emptyDescription , template emptyDescription
    , template emptyDescription , template emptyDescription
    , template emptyDescription , template emptyDescription
    , template emptyDescription , template invoiceNumberDescription
    , template invoiceDateDescription , template invoiceDueDateDescription
    , template emptyDescription , template titleDescription
    , template invoiceQuantityDescription
    , template invoiceUnitAmountDescription
    , template xeroAccountCodeDescription , template emptyDescription