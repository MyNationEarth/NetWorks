datateks
installDatateksRoles
  | env |
  "Create Roles in each application and add all roles to all users"
  env := NetWorks datateks bpmEnvironment.
  {'Project Administrator'.
  'Project Manager'.
  'Project Design'.
  'Accounts'}
    do: [ :rolePrefix | 
      env applications
        do: [ :bpmApplication | 
          | role |
          role := self defaultFrontOfficeRoleClass
            createNewOrGetExisting: rolePrefix
            in: bpmApplication applicationName.
          env users do: [ :user | role grantUser: user ifPresent: [  ] ] ] ]