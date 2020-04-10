5smiths
installAdminUsers: userList withKey: modelKey
  | env application initialRole |
  env := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := BpmApplication
    applicationNamed: 'modelViewApplication'
    ifNone: [  ].
  initialRole := self defaultBackOfficeRoleClass
    getRoleNamed: 'modelViewAdmin'
    in: application applicationName.
  userList
    do: [ :user | 
      | newUser loginName |
      loginName := user at: 3.
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