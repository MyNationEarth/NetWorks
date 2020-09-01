descriptions
workOrderApprovalsDescription
  | template |
  template := NWWorkOrder new.
  ^ NWToManyRelationDescription new
    accessor: #'workOrderApprovals';
    classes: {NWWorkOrder};
    reference:
        template titleDescription , template contractorNameOrUnassignedDescription
            , template projectTitleDescription , template samDescription
            , template clientTitleDescription
            , template percentageCompleteDescription;
    label: 'Work Orders';
    priority: 100;
    beSorted;
    beDefinitive;
    yourself