descriptions
clientTitleDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor: #'clientTitle';
    label: 'Client';
    priority: 300;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    yourself