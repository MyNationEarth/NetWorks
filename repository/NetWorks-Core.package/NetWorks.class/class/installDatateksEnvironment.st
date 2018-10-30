as yet unclassified
installDatateksEnvironment
  | env app a417NewDevs a401RequestForQuote nbnAssurance clientManagement contractorManagement admin |
  "Setup the initial Datateks Environment"
  env := (BpmEnvironment newNamed: 'Datateks') addToCache.
  BpmExceptionCalendar addDefaultCalendarIn: env.
  a417NewDevs := (OrbeonApplication newNamed: 'a417NewDevs') addToCache.
  a401RequestForQuote := (OrbeonApplication newNamed: 'a401RequestForQuote')
    addToCache.
  nbnAssurance := (OrbeonApplication newNamed: 'nbnAssurance') addToCache.
  clientManagement := (OrbeonApplication newNamed: 'clientManagement')
    addToCache.
  contractorManagement := (OrbeonApplication newNamed: 'contractorManagement')
    addToCache.
  admin := BpmUser getExistingOrNewUserNamed: 'admin' password: 'admin'.
  env
    registerApplication: a417NewDevs;
    registerApplication: a401RequestForQuote;
    registerApplication: nbnAssurance;
    registerApplication: clientManagement;
    registerApplication: contractorManagement;
    registerUser: admin