5smiths
install5SmithsProcesses
  | env app orbeonLibraryApplication a417NewDevs a401RequestForQuote nbnAssurance contractorManagement admin |
  "Setup the initial Datateks Environment"
  env := (BpmEnvironment newNamed: '5Smiths') addToCache.
  (self instance organisationModels at: #'5Smiths') bpmEnvironment: env.
  env
    setFrontofficeApplicationName: 'NetWorks';
    setBackofficeApplicationName: 'NetWorks Backoffice';
    setBIApplicationName: 'NetWorks BI'.
  BpmExceptionCalendar addDefaultCalendarIn: env.
  admin := BpmUser getExistingOrNewUserNamed: 'admin' password: 'admin'.
  env registerUser: admin.
  self fiveSmithsUserInfo
    do: [ :user | 
      | newUser |
      newUser := (BpmUser getExistingOrNewUserNamed: (user at: 3))
        password: (user at: 1) asLowercase;
        givenName: (user at: 1);
        familyName: (user at: 2);
        emailAddress: (user at: 3);
        yourself.
      env registerUser: newUser ]