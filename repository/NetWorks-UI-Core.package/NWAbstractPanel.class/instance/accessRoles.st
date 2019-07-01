testing
accessRoles
  "Answer the set of roles, any one of which are able to view this panel"

  ^ self accessRoleNames
    collect: [ :accessRoleName | 
      BpmFrontOfficeRole
        getRoleNamed: accessRoleName
        in: self modelViewApplication applicationName ]