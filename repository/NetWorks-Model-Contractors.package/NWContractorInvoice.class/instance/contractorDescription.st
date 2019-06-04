descriptions
contractorDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contractor';
    options: self organisationModel contractors;
    reference: NWContractor new titleDescription asContainer;
    label: 'Contractor';
    priority: 100;
    beRequired;
    yourself.
  ^ description