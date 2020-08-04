export file
reportDescriptionContainerInvoice
  | template |
  template := NWContractorInvoice new.
  ^ (template contractorTitleDescription
    label: '*ContractName';
    yourself) , template contractorEmailAddressDescription
    , (template emptyDescriptionWithLabel: 'POAddressLine1')
    , (template emptyDescriptionWithLabel: 'POAddressLine2')
    , (template emptyDescriptionWithLabel: 'POAddressLine3')
    , (template emptyDescriptionWithLabel: 'POAddressLine4')
    , (template emptyDescriptionWithLabel: 'POCity')
    , (template emptyDescriptionWithLabel: 'PORegion')
    , (template emptyDescriptionWithLabel: 'POPostal')
    , (template emptyDescriptionWithLabel: 'POCountry')
    ,
      (template invoiceNumberDescription
        label: '*InvoiceNumber';
        yourself)
    ,
      (template issueDateDescription
        label: '*InvoiceDate';
        yourself)
    ,
      (template paymentDueDateDescription
        label: '*DueDate';
        yourself)
    , (template emptyDescriptionWithLabel: 'InventoryItemCode')
    ,
      (template titleDescription
        label: 'Description';
        yourself)
    ,
      (template singleQuantityDescription
        label: '*Quantity';
        yourself)
    ,
      (template amountPayableDescription
        label: '*UnitAmount)';
        yourself)
    ,
      (template xeroAccountNumberDescription
        label: '*AccountCode';
        yourself)
    , (template emptyDescriptionWithLabel: '*TaxType')
    , (template emptyDescriptionWithLabel: 'TrackingName1')
    , (template emptyDescriptionWithLabel: 'TrackingOption1')
    , (template emptyDescriptionWithLabel: 'TrackingName2')
    , (template emptyDescriptionWithLabel: 'TrackingOption2')
    , (template emptyDescriptionWithLabel: 'Currency')