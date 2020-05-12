descriptions
statusDescription
  ^ MAStringDescription new
    accessor: #'status';
    label: 'Status';
    beReadonly;
    priority: 5000;
    reportColumnClass: NWDescribedColumn;
    yourself