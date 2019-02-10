descriptions
rateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCard';
    options: self organisationModel rateCards;
    reference: NWRateCard new titleDescription asContainer;
    label: 'Rate Card';
    group: 'Basics';
    priority: 300;
    beRequired;
    yourself.
  ^ description