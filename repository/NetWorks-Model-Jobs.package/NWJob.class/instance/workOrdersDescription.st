descriptions
workOrdersDescription
  <magritteDescription>
  | template |
  template := NWWorkOrder new.
  ^ NWToManyRelationDescription new
    accessor: #'workOrders';
    classes: {NWWorkOrder};
    reference:
        template titleDescription , template contractorNameOrUnassignedDescription
            , template percentageCompleteDescription
            , template totalNumberOfFilesAndDirectoriesDescription;
    label: 'Work Orders';
    priority: 800;
    beSorted;
    yourself