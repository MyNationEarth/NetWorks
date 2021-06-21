descriptions
contractorRateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contractorRateCard';
    options:
        (self organisationModel rateCards
            select: [ :rateCard | rateCard rateCardType == #'Subcontractor' ]);
    reference: NWRateCard new titleDescription asContainer;
    label: 'Subcontractor Rate Card';
    priority: 300;
    beOptional;
    yourself.
  ^ description