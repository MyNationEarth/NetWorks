user access
createUser
  | env application role bpmUser |
  env := self organisationModel bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: self roleName
    in: application applicationName.
  bpmUser := env users
    at: self emailAddress
    ifAbsent: [ 
      | newUser |
      newUser := (BpmUser
        getExistingOrNewUserNamed: self emailAddress
        password: (self emailAddress asLowercase findTokens: $@) first
        forEnvironment: env)
        givenName: self title;
        familyName: '';
        emailAddress: self emailAddress;
        payRate: 0.0;
        yourself.
      env registerUser: newUser.
      role grantUser: newUser ifPresent: [  ] ]