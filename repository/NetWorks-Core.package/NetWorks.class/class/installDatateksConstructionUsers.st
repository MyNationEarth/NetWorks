datateks
installDatateksConstructionUsers
  | env application role |
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'datateksModelView'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: 'Construction Staff'
    in: application applicationName.
  self datateksConstructionUserInfo
    do: [ :user | 
      | bpmUser email |
      email := (user second , user first) asLowercase , '@datateks.com.au'.
      bpmUser := env users
        at: email
        ifAbsent: [ 
          | newUser |
          newUser := (BpmUser
            getExistingOrNewUserNamed: email
            password: (user at: 2) asLowercase
            forEnvironment: env)
            givenName: (user at: 2);
            familyName: (user at: 1);
            emailAddress: email;
            payRate: (user third roundTo: 0.01);
            yourself.
          env registerUser: newUser.
          newUser ].
      role grantUser: bpmUser ifPresent: [  ] ]