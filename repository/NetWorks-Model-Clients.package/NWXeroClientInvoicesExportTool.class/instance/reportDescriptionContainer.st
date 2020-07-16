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
    , template invoiceReferenceDescription , template invoiceDateDescription
    , template invoiceDueDateDescription
    , template inventoryItemTitleDescription
    , template inventorItemCommentDescription
    , template invoiceQuantityDescription
    , template invoiceUnitAmountDescription
    , template invoiceExtendedAmountDescription
    , template xeroAccountCodeDescription , template taxTypeDescription
    , template trackingNumberDescription