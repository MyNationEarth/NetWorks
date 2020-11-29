Accessing
notesFromWorkOrders
  | allNotes |
  allNotes := OrderedCollection new.
  self jobs
    do: [ :job | job workOrders do: [ :workOrder | allNotes addAll: workOrder notes ] ].
  ^ allNotes