visiting-description
visitDateDescription: aDescription
  self object
    ifNotNil: [ 
      self stream
        nextPutAll: (self object asStringUsingFormat: #(1 2 3 $/ 1 1 $: false)) ]