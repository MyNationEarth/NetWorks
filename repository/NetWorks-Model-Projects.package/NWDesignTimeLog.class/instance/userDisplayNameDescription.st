descriptions
userDisplayNameDescription
  ^ MAStringDescription new
    accessor: #'userDisplayName';
    label: 'User';
    priority: 400;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    beRequired;
    yourself