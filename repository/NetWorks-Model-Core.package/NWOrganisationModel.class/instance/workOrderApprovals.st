work order access
workOrderApprovals
  "Answer the collection of WorkOrders awaiting invoicing approval"

  | workOrderApprovals |
  workOrderApprovals := OrderedCollection new.
  self projects
    do: [ :project | 
      project jobs
        do: [ :job | 
          (job workOrders select: [ :workOrder | workOrder hasLineItemsAwaitingApproval ])
            do: [ :workOrder | workOrderApprovals addAll: workOrder lineItemsAwaitingApproval ] ] ].
  ^ workOrderApprovals