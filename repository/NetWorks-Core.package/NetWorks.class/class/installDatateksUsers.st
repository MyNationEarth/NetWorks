datateks
installDatateksUsers
  | env |
  env := NetWorks datateks bpmEnvironment.
  self datateksUserInfo
    do: [ :user | 
      | newUser |
      env users
        at: (user at: 3) , '@datateks.com.au'
        ifAbsent: [ 
          newUser := (BpmUser
            getExistingOrNewUserNamed: (user at: 3)
            password: (user at: 1) asLowercase
            forEnvironment: env)
            givenName: (user at: 1);
            familyName: (user at: 2);
            emailAddress: (user at: 3);
            yourself.
          env registerUser: newUser ] ].
  self importForms