descriptions
jobsDescription
  <magritteDescription>
  | template |
  template := NWJob new.
  ^ NWToManyRelationDescription new
    accessor: #'jobs';
    classes: {NWJob};
    reference: template titleDescription , template commentDescription;
    label: 'Jobs';
    priority: 400;
    yourself