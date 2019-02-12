magritte-hooks
hasChanged: changesDictionary
  "If the title has changed, update the URI"

  (changesDictionary at: self cspoValueDescription ifAbsent: [ nil ])
    ifNotNil: [ :cspoValueChanges | self designQuantity: cspoValueChanges last / self rate valuePerUnit ]