magritte-hooks
hasChanged: changesDictionary
  "If the userName has changed, update the BpmUser"

  super hasChanged: changesDictionary.
  (changesDictionary at: self userNameDescription ifAbsent: [ nil ])
    ifNotNil: [ :userNameChanges | self changeUserNameFrom: userNameChanges first to: userNameChanges last ]