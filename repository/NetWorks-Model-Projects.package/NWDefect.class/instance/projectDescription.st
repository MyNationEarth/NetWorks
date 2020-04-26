descriptions
projectDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'parent';
    options: self organisationModel projects;
    reference: NWProject new titleDescription asContainer;
    componentClass: NWAutoCompleteSelectListComponent;
    label: 'Project';
    priority: 100;
    beSorted;
    beRequired;
    yourself.
  ^ description