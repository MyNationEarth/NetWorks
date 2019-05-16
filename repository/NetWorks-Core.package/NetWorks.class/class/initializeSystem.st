setup
initializeSystem
  "Initialize the entire system correcting anything missing while respecting and preserving existing client data"

  WABpmCentralPortal register.
  WABpmFrontofficeLogin register.
  WABpmBackofficeLogin register.
  WABpmBIandChartsLogin register.
  WABpmStartAnonymousProcessPortal register.
  WAOrbeonPersistenceLayer register.
  WAOrbeonLogin register.
  WABpmProcessCreationStaticMessage register.
  BpmSystemInitialization initializeCurrentSystem.
  BpmSystemInitialization createSystemDefaultObjects.
  BpmFlowUIAdmin install.
  NetWorks reset.
  NetWorks installDatateksEnvironment