work order access
workOrderApprovals
  "Answer the collection of WorkOrders awaiting invoicing approval"

  | workOrderApprovals |
  workOrderApprovals := OrderedCollection new.
  self projects
    do: [ :project | 
      project jobs
        do: [ :job | 
          workOrderApprovals
            addAll:
              (job workOrders select: [ :workOrder | workOrder hasLineItemsAwatingApproval ]) ] ].
  ^ workOrderApprovals