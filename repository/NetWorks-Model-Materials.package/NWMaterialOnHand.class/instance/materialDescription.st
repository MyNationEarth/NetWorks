descriptions
materialDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'material';
    options: self organisationModel materials;
    componentClass: NWAutoCompleteSelectListComponent;
    reference: NWMaterial new titleAndCommentDescription asContainer;
    label: 'Material';
    priority: 300;
    yourself.
  ^ description