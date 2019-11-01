datateks
installDatateksConstructionUsers2
  | env application role |
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'datateksModelView'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: 'Construction Staff'
    in: application applicationName.
  self datateksConstructionUserInfo2
    do: [ :user | 
      | bpmUser email |
      email := (user first , user second) asLowercase , '@datateks.com.au'.
      bpmUser := env users
        at: email
        ifAbsent: [ 
          | newUser |
          newUser := (BpmUser
            getExistingOrNewUserNamed: email
            password: (user at: 1) asLowercase
            forEnvironment: env)
            givenName: (user at: 1);
            familyName: (user at: 2);
            emailAddress: email;
            payRate: (user third roundTo: 0.01);
            yourself.
          env registerUser: newUser.
          newUser ].
      role grantUser: bpmUser ifPresent: [  ] ]