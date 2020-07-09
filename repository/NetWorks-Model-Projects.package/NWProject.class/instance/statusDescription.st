descriptions
statusDescription
  <magritteDescription>
  | description statusOptions |
  description := MASingleOptionDescription new
    accessor: #'status';
    options: (statusOptions := self statusOptions);
    default: statusOptions first;
    label: 'Status';
    priority: 1500;
    reportColumnClass: NWDescribedColumn;
    yourself.
  ^ description