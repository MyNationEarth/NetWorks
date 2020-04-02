export file
projects
  ^ (self organisationModel projects select: [ :p | p designTimeLogs notEmpty ])
    inject: OrderedCollection new
    into: [ :logs :project | 
      logs addAll: project designTimeLogs.
      logs ]