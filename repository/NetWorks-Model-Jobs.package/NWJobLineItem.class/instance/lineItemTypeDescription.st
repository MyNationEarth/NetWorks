descriptions
lineItemTypeDescription
  <magritteDescription>
  | description template |
  template := NWRate new.
  description := MASingleOptionDescription new
    accessor: #'lineItemType';
    options: self job rateCard allRates;
    reference: template titleAndCommentDescription asContainer;
    label: 'Line Item Type';
    comment:
        'Search for a line item type from the rate card titled '
            , self job rateCard title;
    componentClass: NWAutoCompleteSelectListComponent;
    priority: 100;
    beRequired;
    yourself.
  ^ description