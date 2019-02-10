descriptions
contractDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contract';
    options: self organisationModel contracts;
    reference: NWContract new titleDescription asContainer;
    label: 'Contract';
    priority: 100;
    beRequired;
    yourself.
  ^ description