accessing
tabsToDisplay
  "Acswer the list of tabs the current user can access"

  ^ self tabs
    select: [ :tabData | 
      tabData
        at: #'accessRoleNames'
        ifPresent: [ :accessRoles | 
          self session user
            includesAnyRoleOf:
              (NetWorks rolesNamed: accessRoles in: self modelViewApplication)
            in: self organisationModel bpmEnvironment ]
        ifAbsent: [ true ] ]