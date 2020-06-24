descriptions
assignmentInformationDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor: #'assignmentInformationString';
    label: 'Assignments';
    cssClasses: #('text-left');
    priority: 200;
    reportColumnClass: NWDescribedColumn;
    beReadonly;
    yourself