descriptions
rateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCard';
    options:
        (self organisationModel rateCards
            select: [ :rateCard | rateCard rateCardType == #'Client' ]);
    reference: NWRateCard new titleDescription asContainer;
    label: 'SOR Rate Card';
    priority: 300;
    yourself.
  ^ description