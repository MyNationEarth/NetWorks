magritte-hooks
hasChanged: changesDictionary
  "If the project has changed, update the appropriate collections"

  super hasChanged: changesDictionary.
  (changesDictionary at: self projectDescription ifAbsent: [ nil ])
    ifNotNil: [ :projectChanges |  ]