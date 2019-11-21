export file
projects
  ^ ((NetWorks instance organisationModels at: #'datateks.com.au') projects
    select: [ :p | p designTimeLogs notEmpty ])
    inject: OrderedCollection new
    into: [ :logs :project | 
      logs addAll: project designTimeLogs.
      logs ]