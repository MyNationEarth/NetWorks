testing
isTitleUnique: titleString
  "Check the parent collection to see if this title is unique"

  ^ (self parentCollection
    ifNotNil: [ :parentCollection | 
      parentCollection
        detect: [ :item | item ~= self and: [ item title = titleString ] ]
        ifNone: [ nil ] ])
    isNil