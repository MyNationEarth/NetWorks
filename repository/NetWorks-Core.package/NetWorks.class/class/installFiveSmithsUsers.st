5smiths
installFiveSmithsUsers
  | env application initialRole |
  env := NetWorks fiveSmiths bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  initialRole := self defaultFrontOfficeRoleClass
    getRoleNamed: 'Project Administrator'
    in: application applicationName.
  #(#('Craig' 'Smith' 'craig'))
    do: [ :user | 
      | newUser |
      env users
        at: (user at: 3) , '@5smiths.com.au'
        ifAbsent: [ 
          newUser := (BpmUser
            getExistingOrNewUserNamed: (user at: 3)
            password: (user at: 1) asLowercase
            forEnvironment: env)
            givenName: (user at: 1);
            familyName: (user at: 2);
            emailAddress: (user at: 3);
            yourself.
          env registerUser: newUser.
          initialRole grantUser: newUser ] ]