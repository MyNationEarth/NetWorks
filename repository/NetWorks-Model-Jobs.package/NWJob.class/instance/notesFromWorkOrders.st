Accessing
notesFromWorkOrders
  | allNotes |
  allNotes := OrderedCollection new.
  self workOrders do: [ :workOrder | allNotes addAll: workOrder notes ].
  ^ allNotes