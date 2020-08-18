descriptions
projectDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'project';
    options: self organisationModel projects;
    reference: NWProject new titleDescription asContainer;
    componentClass: NWAutoCompleteSelectListComponent;
    label: 'Project';
    comment:
        'If the incident occurred while working on a particular project, select the project here.';
    priority: 100;
    beSorted;
    yourself.
  ^ description