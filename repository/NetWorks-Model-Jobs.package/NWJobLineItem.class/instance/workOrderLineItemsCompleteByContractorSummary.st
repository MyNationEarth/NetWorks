Accessing
workOrderLineItemsCompleteByContractorSummary
  ^ String
    streamContents: [ :stream | 
      self workOrderLineItems
        do: [ :workOrderLineItem | 
          stream
            nextPutAll: workOrderLineItem workOrder contractor title;
            nextPutAll: ' (';
            nextPutAll: workOrderLineItem quantityComplete asString;
            nextPutAll: ')' ]
        separatedBy: [ stream nextPutAll: ', ' ] ]