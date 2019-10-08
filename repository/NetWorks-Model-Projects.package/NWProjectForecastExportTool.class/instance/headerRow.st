export file
headerRow
  | headerRow |
  headerRow := {'RequestID'.
  'Application Name'.
  'Project Type'.
  'Build Type'.
  'FSAM'.
  'NBN PM'.
  'EFSCD'.
  'EFSCD by Month'.
  'Project Leader'.
  'Project Status'.
  'Site Contact'.
  'Lead-in Ready'.
  'Comms Room Ready'.
  'Internal Pathway Ready'.
  'Test & Coiled'.
  'LAAN Commence'.
  'FORECAST DESIGN SUBMISSION'.
  'ACTUAL DESIGN SUBMISSION'.
  'FORECAST CONSTRUCTION START'.
  'ACTUAL CONSTRUCTION START'.
  'FORECAST: CONSTRUCTION COMPLETE'}.
  (self next: 4 dayOfWeek: 3)
    do: [ :date | headerRow add: 'WS ' , date asString ].
  headerRow
    addAll:
      {'ACTUAL: CONSTRUCTION COMPLETE'.
      'Actual: Construction Complete by Month'.
      'Follow up Date'.
      'Comments:'.
      'FORECAST: PC SUBMIT'}.
  (self next: 4 dayOfWeek: 3)
    do: [ :date | headerRow add: 'WS ' , date asString ].
  headerRow
    addAll:
      {'ACTUAL: PC SUBMIT'.
      'Actual PC Submit by Month'.
      'Comments:'}.
  ^ headerRow