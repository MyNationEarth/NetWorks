descriptions
rateCardDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCard';
    options: self organisationModel rateCardsCurrent;
    reference: NWRateCard new titleDescription asContainer;
    default:
        (self project jobs
            ifEmpty: [ nil ]
            ifNotEmpty: [ self project jobs first rateCard ]);
    label: 'Rate Card';
    priority: 300;
    beRequired;
    yourself.
  ^ description