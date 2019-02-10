descriptions
projectsDescription
  <magritteDescription>
  | template |
  template := NWProject new.
  ^ NWToManyRelationDescription new
    accessor: #'projects';
    classes: {NWProject};
    reference: template titleDescription , template commentDescription;
    label: 'Projects';
    priority: 100;
    beSorted;
    yourself