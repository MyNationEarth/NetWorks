export file
projects
  ^ (NetWorks instance organisationModels at: #'datateks.com.au') projects
    select: [ :p | p aycaNumber notNil and: [ p aycaNumber notEmpty ] ]