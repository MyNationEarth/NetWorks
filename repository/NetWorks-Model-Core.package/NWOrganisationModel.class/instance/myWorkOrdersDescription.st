descriptions
myWorkOrdersDescription
  <magritteDescription>
  | template |
  template := NWWorkOrder new.
  ^ NWToManyRelationDescription new
    accessor: #'myWorkOrders';
    classes: {NWWorkOrder};
    reference:
        template titleDescription , template contractorNameOrUnassignedDescription
            , template percentageCompleteDescription;
    label: 'Work Orders';
    priority: 100;
    beSorted;
    beDefinitive;
    yourself