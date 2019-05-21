magritte hooks
hasChanged: changesDictionary
  "If the title has changed, update the URI"

  super hasChanged: changesDictionary.
  (changesDictionary at: self titleDescription ifAbsent: [ nil ])
    ifNotNil: [ :titleChanges | self pullIdentifiersFromTitle: titleChanges last ]