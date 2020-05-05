descriptions
projectBuildTypeDescription
  ^ MAStringDescription new
    accessor: #'projectBuildType';
    label: 'Project Build Type';
    priority: 400;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    beRequired;
    yourself