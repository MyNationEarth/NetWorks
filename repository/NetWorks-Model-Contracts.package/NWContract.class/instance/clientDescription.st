descriptions
clientDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'client';
    options: self organisationModel clients;
    reference: NWClient new titleDescription asContainer;
    label: 'Client';
    priority: 300;
    yourself.
  ^ description