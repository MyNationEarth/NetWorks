descriptions
ratesDescription
  <magritteDescription>
  | template |
  template := NWRate new.
  ^ NWToManyRelationDescription new
    accessor: #'rates';
    classes: {NWRate};
    reference:
        template titleDescription , template commentDescription
            , template sorCodeDescription , template valuePerUnitDescription;
    label: 'Rates';
    priority: 200;
    beSorted;
    yourself