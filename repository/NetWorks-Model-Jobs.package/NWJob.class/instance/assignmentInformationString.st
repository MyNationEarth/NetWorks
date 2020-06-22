Accessing
assignmentInformationString
  "Answer a string with information about my assignment"

  ^ String
    streamContents: [ :stream | 
      (self lineItems
        inject: Set new
        into: [ :result :lineItem | 
          result
            addAll: lineItem assignments;
            yourself ])
        do: [ :assignment |  ] ]