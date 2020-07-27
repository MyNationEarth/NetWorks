export file
reportDescriptionContainer
  | template |
  template := NWContractorInvoice new.
  ^ template contractorTitleDescription
    , template contractorEmailAddressDescription
    , (template emptyDescriptionWithLabel: 'POAddress')
    , (template emptyDescriptionWithLabel: 'POAddress')
    , (template emptyDescriptionWithLabel: 'POAddress')
    , (template emptyDescriptionWithLabel: 'POAddress')
    , (template emptyDescriptionWithLabel: 'POCity')
    , (template emptyDescriptionWithLabel: 'PORegion')
    , (template emptyDescriptionWithLabel: 'POPostal')
    , (template emptyDescriptionWithLabel: 'POCountry')
    , template invoiceNumberDescription , template issueDateDescription
    , template paymentDueDateDescription
    , (template emptyDescriptionWithLabel: 'Inventory')
    , template titleDescription , template singleQuantityDescription
    , template amountPayableDescription , template xeroAccountNumberDescription
    , (template emptyDescriptionWithLabel: 'TaxType')