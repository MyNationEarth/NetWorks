rendering
renderNotesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Notes') on: canvas ] ].
  (self memento readUsing: self model notesFromJobDescription)
    ifNotEmpty: [ 
      canvas
        tbsRow: [ 
          canvas tbsColumn
            smallSize: 12;
            with: [ self renderDescriptionsWithLabels: #('Job Notes') on: canvas ] ] ]