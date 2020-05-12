descriptions
defectsDescription
  <magritteDescription>
  | template |
  template := NWDefect new.
  ^ NWToManyRelationDescription new
    accessor: #'defects';
    classes: {NWDefect};
    reference:
        template titleDescription , template typeDescription
            , template raisedByDescription , template raisedDateDescription
            , template closedDateDescription , template commentDescription
            , template statusDescription;
    label: 'Quality';
    priority: 400;
    beSorted;
    yourself