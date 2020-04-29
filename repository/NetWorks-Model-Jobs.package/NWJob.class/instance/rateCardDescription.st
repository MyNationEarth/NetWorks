descriptions
rateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCard';
    options: self organisationModel rateCards;
    reference: NWRateCard new titleDescription asContainer;
    default: (self project jobs collect: [ :job | job rateCard ]) first;
    label: 'Rate Card';
    priority: 300;
    beRequired;
    yourself.
  ^ description