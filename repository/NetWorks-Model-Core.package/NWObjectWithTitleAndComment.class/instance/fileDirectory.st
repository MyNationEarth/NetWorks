file system
fileDirectory
  | localDirectoryName |
  localDirectoryName := (self uri startsWith: $/)
    ifFalse: [ self uri ]
    ifTrue: [ self uri allButFirst ].
  ^ (self parentDirectory directoryNamed: localDirectoryName) assureExistence