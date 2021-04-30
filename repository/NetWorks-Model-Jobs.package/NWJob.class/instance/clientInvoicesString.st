Accessing
clientInvoicesString
  ^ String
    streamContents: [ :stream | 
      self clientInvoices
        do: [ :invoice | stream nextPutAll: invoice title ]
        separatedBy: [ stream nextPutAll: ', ' ] ]