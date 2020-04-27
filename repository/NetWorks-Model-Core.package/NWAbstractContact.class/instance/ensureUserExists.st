user access
ensureUserExists
  | env application bpmUser |
  env := self organisationModel bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  bpmUser := env users
    at: self userName
    ifAbsent: [ 
      | newUser |
      newUser := (BpmUser
        getExistingOrNewUserNamed: self userName asLowercase
        password: (self userName asLowercase findTokens: $@) first
        forEnvironment: env)
        givenName: self title;
        familyName: '';
        emailAddress: self emailAddress;
        payRate: 0.0;
        yourself.
      env registerUser: newUser ]