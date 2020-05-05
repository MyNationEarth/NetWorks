descriptions
projectBuildSubTypeDescription
  ^ MAStringDescription new
    accessor: #'projectBuildSubType';
    label: 'Project Build Sub Type';
    priority: 400;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    beRequired;
    yourself