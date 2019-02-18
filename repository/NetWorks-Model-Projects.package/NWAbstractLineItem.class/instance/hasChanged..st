magritte-hooks
hasChanged: changesDictionary
  "If the title has changed, update the URI"

  (changesDictionary at: self extendedValueDescription ifAbsent: [ nil ])
    ifNotNil: [ :extendedValueChanges | 
      self
        quantity:
          (extendedValueChanges last / self rate valuePerUnit roundTo: 0.01) ]