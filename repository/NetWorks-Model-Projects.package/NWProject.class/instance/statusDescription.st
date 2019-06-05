descriptions
statusDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'status';
    options: self organisationModel allProjectStatus;
    label: 'Status';
    priority: 1500;
    yourself.
  ^ description