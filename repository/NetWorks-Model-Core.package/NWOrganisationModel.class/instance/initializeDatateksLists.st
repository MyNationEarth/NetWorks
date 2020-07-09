initialization
initializeDatateksLists
  lists := Dictionary new.
  lists
    at: #'projectStatus'
    put:
      {'Developer Delay'.
      'Heritage Delay'.
      'In Construction'.
      'In Design'.
      'NBN Delay'.
      'NBN External Delay'.
      'NBN Internal Delay'.
      'Parent Site Delay'.
      'Pre-construction'.
      'Site Visit'.
      'Survey and Design'.
      'Completed'.
      'Council Delay'.
      'Project Cancelled'}.
  lists
    at: #'closedStatus'
    put:
      {'Completed'.
      'Project Cancelled'}.
  ^ lists