Accessing
notesFromJobs
  | allNotes |
  allNotes := OrderedCollection new.
  self jobs do: [ :job | allNotes addAll: job notes ].
  ^ allNotes