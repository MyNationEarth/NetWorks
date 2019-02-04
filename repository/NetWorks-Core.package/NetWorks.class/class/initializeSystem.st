setup
initializeSystem
  "Initialize the entire system correcting anything missing while respecting and preserving existing client data"

  WABpmCentralPortal register.
  WABpmFrontofficePortal register.
  WABpmFrontofficePortal register.
  WABpmBIPortal register.
  WABpmStartAnonymousProcessPortal register.
  WAOrbeonProcessLayer register.
  WAOrbeonLogin register.
  WABpmProcessCreationStaticMessage register.
  BpmSystemInitialization initializeCurrentSystem.
  BpmSystemInitialization createSystemDefaultObjects.
  BpmFlowUIAdmin install.
  NetWorks reset.
  NetWorks installDatateksEnvironment