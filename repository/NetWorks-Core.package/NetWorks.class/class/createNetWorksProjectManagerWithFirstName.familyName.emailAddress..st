utilities
createNetWorksProjectManagerWithFirstName: firstName familyName: familyName emailAddress: emailAddress
  | env application role bpmUser |
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: 'Project Manager'
    in: application applicationName.
  bpmUser := env users
    at: emailAddress
    ifAbsent: [ 
      | newUser |
      newUser := (BpmUser
        getExistingOrNewUserNamed: emailAddress
        password: firstName asLowercase
        forEnvironment: env)
        givenName: firstName;
        familyName: familyName;
        emailAddress: emailAddress;
        payRate: 0.0;
        yourself.
      env registerUser: newUser.
      role grantUser: newUser ifPresent: [  ] ]