accessing
tabsToDisplay
  "Acswer the list of tabs the current user can access"

  ^ self tabs
    select: [ :tabData | 
      tabData
        at: #'accessRoles'
        ifPresent: [ :accessRoles | 
          self session user
            includesAnyRoleOf:
              (accessRoles
                collect: [ :accessRoleName | BpmFrontOfficeRole getRoleNamed: accessRoleName in: 'datateksModelView' ]) ]
        ifAbsent: [ true ] ]