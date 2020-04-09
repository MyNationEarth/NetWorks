user access
removeUser
  | env application role bpmUser |
  bpmUser := env users at: self emailAddress ifAbsent: [ ^ false ].
  bpmUser roles do: [ :role | bpmUser removeRole: role ]