Accessing
jobSummary
  ^ String
    streamContents: [ :stream | stream nextPutAll: (location ifNil: [ '<unknown location>' ]) ]