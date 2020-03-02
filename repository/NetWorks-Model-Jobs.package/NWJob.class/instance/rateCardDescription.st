descriptions
rateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCard';
    options: self organisationModel rateCards;
    reference: NWRateCard new titleDescription asContainer;
    label: 'Rate Card';
    priority: 300;
    yourself.
  ^ description