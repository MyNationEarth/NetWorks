descriptions
clientDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'client';
    options: self organisationModel clients;
    reference: NWClient new titleDescription asContainer;
    componentClass: NWAutoCompleteSelectListComponent;
    label: 'Client';
    priority: 100;
    beRequired;
    beSorted;
    yourself.
  ^ description