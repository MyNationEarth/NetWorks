Accessing
workOrdersAreFieldComplete
  | fieldCompletedWorkOrders |
  ^ String
    streamContents: [ :stream | 
      fieldCompletedWorkOrders := workOrders
        select: [ :workOrder | workOrder isFieldComplete ].
      fieldCompletedWorkOrders size == workOrders size
        ifTrue: [ stream nextPutAll: 'Yes' ]
        ifFalse: [ 
          fieldCompletedWorkOrders size > 0
            ifTrue: [ 
              stream
                nextPutAll: fieldCompletedWorkOrders size asString;
                nextPut: Character space;
                nextPutAll: 'Complete' ] ] ]