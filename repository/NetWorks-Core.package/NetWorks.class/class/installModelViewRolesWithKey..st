setupNewEnvironment
installModelViewRolesWithKey: modelKey
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := BpmApplication
    applicationNamed: modelKey , '-modelViewApplication'
    ifNone: [  ].
  self modelViewApplicationRoles
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName ]