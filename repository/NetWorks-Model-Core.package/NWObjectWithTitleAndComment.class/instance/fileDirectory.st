file system
fileDirectory
  | localDirectoryName |
  localDirectoryName := (self uri asString startsWith: '/')
    ifFalse: [ self uri asString ]
    ifTrue: [ self uri asString allButFirst ].
  ^ (self parentDirectory directoryNamed: localDirectoryName) assureExistence