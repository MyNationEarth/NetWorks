*BpmFlow-UI-Core
displayName
  "Answer a name for display"

  ^ String
    streamContents: [ :stream | 
      self givenName ifNotNil: [ :givenName | stream nextPutAll: givenName ].
      self familyName
        ifNotNil: [ :familyName | 
          stream isEmpty
            ifFalse: [ stream nextPut: $  ].
          stream nextPutAll: familyName ] ]