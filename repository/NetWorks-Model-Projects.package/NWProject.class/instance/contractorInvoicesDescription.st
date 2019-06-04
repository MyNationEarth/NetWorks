descriptions
contractorInvoicesDescription
  <magritteDescription>
  | template |
  template := NWContractorInvoice new.
  ^ NWToManyRelationDescription new
    accessor: #'contractorInvoices';
    classes: {NWContractorInvoice};
    reference:
        template invoiceNumberDescription , template contractorTitleDescription
            , template amountPayableDescription;
    label: 'Contractor Invoices';
    priority: 400;
    beSorted;
    yourself