export file
rows
  | notes |
  notes := OrderedCollection new.
  self organisationModel projects
    do: [ :project | 
      notes addAll: (project notes select: [ :note | note check not ]).
      project jobs
        do: [ :job | 
          notes addAll: (job notes select: [ :note | note check not ]).
          job workOrders
            do: [ :workOrder | notes addAll: (workOrder notes select: [ :note | note check not ]) ] ] ].
  ^ notes