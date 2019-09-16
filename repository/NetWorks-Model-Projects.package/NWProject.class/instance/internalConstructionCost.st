Accessing
internalConstructionCost
  "Anser the internalConstructionCost unless there are time logs, in which case total the amount payable for each log."

  ^ self constructionTimeLogs isEmpty
    ifTrue: [ internalConstructionCost ]
    ifFalse: [ 
      self constructionTimeLogs
        inject: 0
        into: [ :total :constructionTimeLog | total + (constructionTimeLog amountPayable ifNil: [ 0 ]) ] ]