descriptions
notesFromWorkOrdersDescription
  <magritteDescription>
  | template |
  template := NWNote new.
  ^ NWToManyRelationDescription new
    accessor: #'notesFromWorkOrders';
    classes: {NWNote};
    reference:
        template titleDescription , template commentDescription
            , template referencedObjectTitleDescription
            , template userNameDescription , template dateAndTimeDescription;
    label: 'Work Order Notes';
    priority: 400;
    beDefinitive;
    beSorted;
    yourself