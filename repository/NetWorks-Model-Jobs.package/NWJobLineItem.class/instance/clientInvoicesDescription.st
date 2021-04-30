descriptions
clientInvoicesDescription
  ^ MAStringDescription new
    accessor: #'clientInvoicesString';
    label: 'Client Invoices';
    cssClasses: #('text-left');
    priority: 200;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    yourself