descriptions
projectDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'project';
    options: self organisationModel projects;
    reference: NWContract new titleDescription asContainer;
    label: 'Project';
    priority: 100;
    beRequired;
    yourself.
  ^ description