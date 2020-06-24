Accessing
assignmentInformationString
  "Answer a string with information about my assignment. 7/10 assigned to Contractor, Contractor"

  | assignments assignedLineItems contractors |
  assignments := self assignments.
  assignedLineItems := (assignments
    collect: [ :workOrderLineItem | workOrderLineItem jobLineItem ]) asSet.
  contractors := (assignments
    collect: [ :workOrderLineItem | workOrderLineItem workOrder contractor ])
    asSet.
  ^ String
    streamContents: [ :stream | 
      assignedLineItems
        ifEmpty: [ stream nextPutAll: 'Not assigned' ]
        ifNotEmpty: [ 
          stream
            nextPutAll: assignedLineItems size asString;
            nextPut: $/;
            nextPutAll: self lineItems size asString.
          contractors
            ifNotEmpty: [ 
              stream nextPutAll: ' assigned to '.
              contractors
                do: [ :contractor | stream nextPutAll: contractor title ]
                separatedBy: [ stream nextPutAll: ', ' ] ] ] ]