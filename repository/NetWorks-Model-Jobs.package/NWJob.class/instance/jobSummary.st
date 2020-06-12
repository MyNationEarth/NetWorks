Accessing
jobSummary
  ^ String
    streamContents: [ :stream | stream nextPutAll: (comment ifNil: [ '' ]) ]