descriptions
workOrderApprovalsDescription
  | template |
  template := NWWorkOrder new.
  ^ NWToManyRelationDescription new
    accessor: #'workOrderApprovals';
    classes: {NWWorkOrder};
    reference:
        template titleDescription , template contractorNameOrUnassignedDescription
            , template percentageCompleteDescription
            , template totalNumberOfFilesAndDirectoriesDescription;
    label: 'Work Orders Awaiting Approval';
    priority: 100;
    beSorted;
    beDefinitive;
    yourself