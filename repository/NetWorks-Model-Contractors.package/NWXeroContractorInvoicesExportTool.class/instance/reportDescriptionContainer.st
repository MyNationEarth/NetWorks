export file
reportDescriptionContainer
  | template |
  template := self rows first.
  ^ (template contractorTitleDescription
    label: '*ContactName';
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
    ,
      (template lineItemTypeTitleDescription
        label: 'InventoryItemCode';
        yourself)
    ,
      (template jobTitleAndLineItemTypeCommentDescription
        label: 'Description';
        yourself)
    ,
      (template quantityDescription
        label: '*Quantity';
        yourself)
    ,
      (template unitDescription
        label: '*UnitAmount';
        yourself)
    ,
      (template xeroAccountNumberDescription
        label: '*AccountCode';
        yourself)
    ,
      (template taxTypeDescription
        label: '*TaxType';
        yourself)
    , (template emptyDescriptionWithLabel: 'TrackingName1')
    , (template emptyDescriptionWithLabel: 'TrackingOption1')
    , (template emptyDescriptionWithLabel: 'TrackingName2')
    , (template emptyDescriptionWithLabel: 'TrackingOption2')
    , (template emptyDescriptionWithLabel: 'Currency')