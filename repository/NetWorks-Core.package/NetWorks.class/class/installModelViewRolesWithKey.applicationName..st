setupNewEnvironment
installModelViewRolesWithKey: modelKey applicationName: clientName
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := BpmApplication
    applicationNamed: modelKey , '-modelViewApplication'
    ifNone: [  ].
  self modelViewApplicationRoles
    do: [ :roleTemplate | 
      | role |
      role := roleTemplate class
        createNewOrGetExisting: roleTemplate name
        in: application applicationName ]