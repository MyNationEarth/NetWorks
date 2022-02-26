Accessing
fieldCompleteLatestDate
  ^ (lineItems
    asSortedCollection: [ :a :b | a isNil or: [ b notNil and: [ a fieldCompleteDate > b fieldCompleteDate ] ] ])
    last