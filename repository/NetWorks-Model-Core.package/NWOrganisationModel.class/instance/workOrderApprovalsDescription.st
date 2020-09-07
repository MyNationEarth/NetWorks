descriptions
workOrderApprovalsDescription
  | template |
  template := NWWorkOrderLineItem new.
  ^ NWToManyRelationDescription new
    accessor: #'workOrderApprovals';
    classes: {NWWorkOrderLineItem};
    reference:
        template titleDescription , template contractorTitleDescription
            , template projectTitleDescription , template jobTitleDescription
            , template clientTitleDescription;
    label: 'Work Order Line Items';
    priority: 100;
    beSorted;
    beDefinitive;
    yourself