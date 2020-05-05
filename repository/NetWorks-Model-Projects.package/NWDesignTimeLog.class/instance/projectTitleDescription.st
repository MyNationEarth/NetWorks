descriptions
projectTitleDescription
  ^ MAStringDescription new
    accessor: #'projectTitle';
    label: 'Project Title';
    priority: 400;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    beRequired;
    yourself