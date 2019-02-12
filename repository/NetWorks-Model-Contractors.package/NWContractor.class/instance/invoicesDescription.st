descriptions
invoicesDescription
  <magritteDescription>
  | template |
  template := NWContractorInvoice new.
  ^ NWToManyRelationDescription new
    accessor: #'invoices';
    classes: {NWContractorInvoice};
    reference:
        template invoiceNumberDescription , template paymentDueDateDescription;
    label: 'Invoices';
    priority: 400;
    beSorted;
    yourself