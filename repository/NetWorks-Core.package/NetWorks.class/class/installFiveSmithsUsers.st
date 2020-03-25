5smiths
installFiveSmithsUsers
  | env application initialRole |
  env := self defaultEnvironmentClass
    getEnvironmentNamed: '5smiths.com.au'
    ifNone: [  ].
  application := BpmApplication
    applicationNamed: 'modelViewApplication'
    ifNone: [  ].
  initialRole := self defaultFrontOfficeRoleClass
    getRoleNamed: 'modelViewAdmin'
    in: application applicationName.
  #(#('Craig' 'Smith' 'craig'))
    do: [ :user | 
      | newUser loginName |
      loginName := (user at: 3) , '@5smiths.com.au'.
      env users
        at: loginName
        ifAbsent: [ 
          newUser := (BpmUser
            getExistingOrNewUserNamed: loginName
            password: (user at: 1) asLowercase
            forEnvironment: env)
            givenName: (user at: 1);
            familyName: (user at: 2);
            emailAddress: loginName;
            yourself.
          env registerUser: newUser.
          initialRole grantUser: newUser ] ]