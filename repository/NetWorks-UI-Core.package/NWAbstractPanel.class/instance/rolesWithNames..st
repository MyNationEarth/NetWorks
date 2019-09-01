testing
rolesWithNames: roleNameCollection
  ^ roleNameCollection
    collect: [ :accessRoleName | 
      BpmFrontOfficeRole
        getRoleNamed: accessRoleName
        in: self modelViewApplication applicationName ]