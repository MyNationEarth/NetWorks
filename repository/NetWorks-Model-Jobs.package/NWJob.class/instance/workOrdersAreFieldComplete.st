Accessing
workOrdersAreFieldComplete
  | fieldCompletedWorkOrders |
  ^ String
    streamContents: [ :stream | 
      workOrders size == 0
        ifFalse: [ 
          (fieldCompletedWorkOrders := workOrders
            select: [ :workOrder | workOrder isFieldComplete ]) size == 0
            ifFalse: [ 
              fieldCompletedWorkOrders size == workOrders size
                ifTrue: [ stream nextPutAll: 'Yes' ]
                ifFalse: [ 
                  stream
                    nextPutAll: fieldCompletedWorkOrders size asString;
                    nextPut: Character space;
                    nextPutAll: 'Complete' ] ] ] ]