descriptions
invoicesDescription
  <magritteDescription>
  | template |
  template := NWClientInvoice new.
  ^ NWToManyRelationDescription new
    accessor: #'invoices';
    classes: {NWClientInvoice};
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