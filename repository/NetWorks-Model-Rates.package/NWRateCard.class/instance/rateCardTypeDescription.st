descriptions
rateCardTypeDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'rateCardType';
    options: self rateCardTypeOptions;
    label: 'Rate Card Type';
    priority: 1500;
    yourself.
  ^ description