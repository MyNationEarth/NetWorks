descriptions
invoicesDescription
  <magritteDescription>
  | template |
  template := NWContractorInvoice new.
  ^ NWToManyRelationDescription new
    accessor: #'invoices';
    classes: {NWContractorInvoice};
    reference:
        template invoiceNumberDescription , template projectTitleDescription
            , template issueDateDescription
            , template expectedPaymentDateDescription
            , template contractTitleDescription
            , template amountPayableDescription;
    label: 'Invoices';
    priority: 400;
    beSorted;
    yourself