descriptions
contractorDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contractor';
    options: self organisationModel contractors;
    reference: NWContractor new titleDescription asContainer;
    label: 'Contractor';
    comment: 'Select a contractor';
    priority: 300;
    beRequired;
    yourself.
  ^ description