5smiths
installFiveSmithsProcesses
  | env app orbeonLibraryApplication a417NewDevs a401RequestForQuote nbnAssurance minorWorksMaximo contractorManagement admin |
  "Setup the initial Datateks Environment"
  self defaultEnvironmentClass areUsersMultiEnvironment: false.
  env := (BpmEnvironment newNamed: '5smiths.com.au') addToCache.
  (self instance organisationModels at: #'5smiths.com.au') bpmEnvironment: env.
  env
    setFrontofficeApplicationName: 'Networks';
    setBackofficeApplicationName: 'Networks Backoffice';
    setBIApplicationName: 'Networks BI'.
  BpmExceptionCalendar addDefaultCalendarIn: env.
  orbeonLibraryApplication := (OrbeonApplication newNamed: 'orbeon') addToCache.
  minorWorksMaximo := (OrbeonApplication newNamed: 'minorWorksMaximo')
    addToCache.
  admin := BpmUser
    getExistingOrNewUserNamed: 'admin'
    password: 'admin'
    forEnvironment: env.
  env
    registerApplication: minorWorksMaximo;
    registerUser: admin