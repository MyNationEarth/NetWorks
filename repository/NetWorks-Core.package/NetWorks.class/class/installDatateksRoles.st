datateks
installDatateksRoles
  | env |
  env := NetWorks datateks bpmEnvironment.
  {'Project Management'.
  'Design'.
  'Finance'}
    do: [ :rolePrefix | 
      env applications
        do: [ :bpmApplication | 
          | role |
          role := self defaultFrontOfficeRoleClass
            createNewOrGetExisting: rolePrefix
            in: bpmApplication applicationName.
          env users do: [ :user | role grantUser: user ifPresent: [  ] ] ] ]