datateks
installDatateksProcesses
  | env app orbeonLibraryApplication a417NewDevs a401RequestForQuote nbnAssurance minorWorksMaximo contractorManagement admin |
  "Setup the initial Datateks Environment"
  self defaultEnvironmentClass areUsersMultiEnvironment: false.
  env := (BpmEnvironment newNamed: 'datateks.com.au') addToCache.
  (self instance organisationModels at: #'datateks.com.au') bpmEnvironment: env.
  env
    setFrontofficeApplicationName: 'Wotmworth';
    setBackofficeApplicationName: 'Wotmworth Backoffice';
    setBIApplicationName: 'Wotmworth BI'.
  BpmExceptionCalendar addDefaultCalendarIn: env.
  orbeonLibraryApplication := (OrbeonApplication newNamed: 'orbeon') addToCache.
  a417NewDevs := (OrbeonApplication newNamed: 'a417NewDevs') addToCache.
  a401RequestForQuote := (OrbeonApplication newNamed: 'a401RequestForQuote')
    addToCache.
  nbnAssurance := (OrbeonApplication newNamed: 'nbnAssurance') addToCache.
  contractorManagement := (OrbeonApplication newNamed: 'contractorManagement')
    addToCache.
  minorWorksMaximo := (OrbeonApplication newNamed: 'minorWorksMaximo')
    addToCache.
  admin := BpmUser
    getExistingOrNewUserNamed: 'admin'
    password: 'admin'
    forEnvironment: env.
  env
    registerApplication: a417NewDevs;
    registerApplication: a401RequestForQuote;
    registerApplication: nbnAssurance;
    registerApplication: contractorManagement;
    registerApplication: minorWorksMaximo;
    registerUser: admin.
  self datateksUserInfo
    do: [ :user | 
      | newUser |
      newUser := (BpmUser
        getExistingOrNewUserNamed: (user at: 3)
        password: (user at: 1) asLowercase
        forEnvironment: env)
        givenName: (user at: 1);
        familyName: (user at: 2);
        emailAddress: (user at: 3);
        yourself.
      env registerUser: newUser ].
  self importForms