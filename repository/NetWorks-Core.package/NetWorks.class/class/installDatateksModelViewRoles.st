datateks
installDatateksModelViewRoles
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'datateksModelView'.
  env registerApplication: application.
  {'Project Administrator'.
  'Project Manager'.
  'Project Design'.
  'Accounts'}
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName.
      env users do: [ :user | role grantUser: user ifPresent: [  ] ] ]