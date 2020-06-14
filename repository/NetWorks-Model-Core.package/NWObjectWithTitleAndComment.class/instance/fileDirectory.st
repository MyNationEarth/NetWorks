file system
fileDirectory
  ^ (self parentDirectory directoryNamed: self uri asString) assureExistence