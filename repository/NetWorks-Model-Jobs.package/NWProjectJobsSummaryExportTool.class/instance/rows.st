export file
rows
  ^ jobs
    inject: OrderedCollection new
    into: [ :rows :job | 
      rows
        addAll: job lineItems;
        yourself ]