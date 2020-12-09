Accessing
workOrdersWithLineItemsNotApproved
  | workOrders |
  "Return the work orders for this contractor"
  workOrders := OrderedCollection new.
  self organisationModel projects
    do: [ :project | 
      project jobs
        do: [ :job | 
          workOrders
            addAll:
              (job workOrders
                select: [ :workOrder | 
                  workOrder contractor == self
                    and: [ workOrder lineItems anySatisfy: [ :lineItem | lineItem approvedForInvoice not ] ] ]) ] ].
  ^ workOrders