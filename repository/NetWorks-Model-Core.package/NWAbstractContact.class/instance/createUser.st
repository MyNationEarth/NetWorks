user access
createUser
  | env application role bpmUser |
  env := self organisationModel bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: 'Contractor'
    in: application applicationName.
  bpmUser := env users
    at: 'emailAddress'
    ifAbsent: [ 
      | newUser |
      newUser := (BpmUser
        getExistingOrNewUserNamed: 'emailAddress'
        password: 'contactTitle' asLowercase
        forEnvironment: env)
        givenName: 'contactTitle first work all lowercase';
        familyName: '';
        emailAddress: 'emailAddress';
        payRate: 0.0;
        yourself.
      env registerUser: newUser.
      role grantUser: newUser ifPresent: [  ] ]