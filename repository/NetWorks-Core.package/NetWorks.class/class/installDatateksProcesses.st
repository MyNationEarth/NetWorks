setup
installDatateksProcesses
  | env app orbeonLibraryApplication a417NewDevs a401RequestForQuote nbnAssurance contractorManagement admin users |
  "Setup the initial Datateks Environment"
  env := (BpmEnvironment newNamed: 'Datateks') addToCache.
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
  users := #('damien' 'marshall' 'gilbert').
  users
    do: [ :user | 
      | newUser |
      newUser := BpmUser getExistingOrNewUserNamed: user password: user.
      env registerUser: newUser ].
  self importForms