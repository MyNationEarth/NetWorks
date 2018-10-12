as yet unclassified
initializeSystem
  "Initialize the entire system correcting anything missing while respecting and preserving existing client data"

  WAOrbeonProcessLogin register.
  WAOrbeonBackofficeLogin register.
  WAOrbeonBIandChartsLogin register.
  WAOrbeonProcessLayer register.
  WAOrbeonLogin register.
  WABpmProcessCreationStaticMessage register.
  BpmSystemInitialization initializeCurrentSystem.
  BpmSystemInitialization createSystemDefaultObjects