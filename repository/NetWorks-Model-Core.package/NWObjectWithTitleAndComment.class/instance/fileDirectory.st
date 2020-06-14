file system
fileDirectory
  | localDirectoryName |
  localDirectoryName := (self uri asString startsWith: $/)
    ifFalse: [ self uri ]
    ifTrue: [ self uri allButFirst ].
  ^ (self parentDirectory directoryNamed: localDirectoryName) assureExistence