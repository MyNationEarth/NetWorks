descriptions
rateCardsDescription
  <magritteDescription>
  | template |
  template := NWRateCard new.
  ^ NWToManyRelationDescription new
    accessor: #'rateCards';
    classes: {NWRateCard};
    reference:
        template titleDescription , template commentDescription
            , template numberOfRateCategoriesDescription;
    label: 'Rate Cards';
    priority: 100;
    beSorted;
    yourself