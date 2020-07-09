initialization
initialize5SmithsLists
  lists := Dictionary new.
  lists
    at: #'projectStatus'
    put:
      {'New Project'.
      'Ready for Construction'.
      'Delayed'.
      'Field Complete'.
      'Complete'.
      'Claimed'.
      'Closed'}.
  lists at: #'closedStatus' put: {'Closed'}.
  ^ lists