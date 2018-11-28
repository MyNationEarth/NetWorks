datateks
installDatateksProcesses
  | env app orbeonLibraryApplication a417NewDevs a401RequestForQuote nbnAssurance contractorManagement admin |
  "Setup the initial Datateks Environment"
  env := (BpmEnvironment newNamed: 'Datateks') addToCache.
  (self instance organisationModels at: #'Datateks') bpmEnvironment: env.
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
  admin := BpmUser getExistingOrNewUserNamed: 'admin' password: 'admin'.
  env
    registerApplication: a417NewDevs;
    registerApplication: a401RequestForQuote;
    registerApplication: nbnAssurance;
    registerApplication: contractorManagement;
    registerUser: admin.
  self datateksUserInfo
    do: [ :user | 
      | newUser |
      newUser := (BpmUser getExistingOrNewUserNamed: (user at: 3))
        password: (user at: 1) asLowercase;
        givenName: (user at: 1);
        familyName: (user at: 2);
        emailAddress: (user at: 3);
        yourself.
      env registerUser: newUser ].
  self importForms