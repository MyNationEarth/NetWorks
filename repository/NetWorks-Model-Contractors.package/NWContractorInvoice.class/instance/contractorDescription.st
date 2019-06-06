descriptions
contractorDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contractor';
    options: self organisationModel contractors;
    reference: NWContractor new titleDescription asContainer;
    componentClass: NWAutoCompleteSelectListComponent;
    label: 'Contractor';
    priority: 100;
    beRequired;
    beSorted;
    yourself.
  ^ description