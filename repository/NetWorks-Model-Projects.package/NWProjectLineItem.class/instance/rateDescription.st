descriptions
rateDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rate';
    options: self project rateCard allRates;
    reference: NWRate new titleAndCommentDescription asContainer;
    label: 'Rate';
    priority: 300;
    isRequired;
    yourself.
  ^ description