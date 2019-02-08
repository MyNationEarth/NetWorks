descriptions
rateCategoriesDescription
  <magritteDescription>
  | template |
  template := NWRateCategory new.
  ^ NWToManyRelationDescription new
    accessor: #'rateCategories';
    classes: {NWRateCategory};
    reference:
        template titleDescription , template commentDescription
            , template numberOfRatesDescription;
    label: 'Rate Categories';
    priority: 200;
    beSorted;
    yourself