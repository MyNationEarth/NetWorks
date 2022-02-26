Accessing
fieldCompleteLatestDate
  ^ (lineItems
    asSortedCollection: [ :a :b | 
      a fieldCompleteDate isNil
        or: [ b fieldCompleteDate notNil and: [ a fieldCompleteDate > b fieldCompleteDate ] ] ])
    last