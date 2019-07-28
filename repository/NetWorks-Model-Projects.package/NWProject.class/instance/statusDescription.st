descriptions
statusDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'status';
    options: self statusOptions;
    label: 'Status';
    priority: 1500;
    yourself.
  ^ description