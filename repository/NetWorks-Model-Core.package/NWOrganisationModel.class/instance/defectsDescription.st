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
            , template closedDateDescription , template projectTitleDescription
            , template commentDescription;
    label: 'Quality';
    priority: 100;
    beSorted;
    yourself