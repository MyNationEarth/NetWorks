5smiths
patchNewStatusValues
  | preview statusMap failedToMap |
  preview := true.
  failedToMap := OrderedCollection new.
  statusMap := Dictionary new
    at: 'In Design' put: 'New Project';
    at: 'Site Visit' put: 'New Project';
    at: 'In Construction' put: 'In Progress';
    at: 'Completed' put: 'Complete';
    at: 'NBN Delay' put: 'Delayed';
    at: 'Project Cancelled' put: 'Complete';
    yourself.
  NetWorks fiveSmiths projects
    do: [ :p | 
      (statusMap keys includes: p status)
        ifTrue: [ 
          preview
            ifFalse: [ p status: (statusMap at: p status) ] ]
        ifFalse: [ failedToMap add: p ] ].
  ^ failedToMap