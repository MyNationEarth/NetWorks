descriptions
defectsDescription
  <magritteDescription>
  | template |
  template := NWDefect new.
  ^ NWToManyRelationDescription new
    accessor: #'defects';
    classes: {NWDefect};
    reference: template titleDescription , template commentDescription;
    label: 'Quality';
    priority: 100;
    beSorted;
    yourself