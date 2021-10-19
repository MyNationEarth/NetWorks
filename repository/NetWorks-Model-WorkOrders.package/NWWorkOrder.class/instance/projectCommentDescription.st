descriptions
projectCommentDescription
  ^ MAStringDescription new
    accessor: #'projectComment';
    label: 'Project Comment';
    priority: 400;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    beRequired;
    yourself