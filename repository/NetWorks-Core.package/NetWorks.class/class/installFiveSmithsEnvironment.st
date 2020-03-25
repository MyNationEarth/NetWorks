5smiths
installFiveSmithsEnvironment
  "NetWorks installFiveSmithsEnvironment"

  BpmSystemInitialization
    initializeCurrentSystem;
    createSystemDefaultObjects.
  self
    installFiveSmithsOrganisationModel;
    installFiveSmithsBpmEnvironment;
    installFiveSmithsModelViewApplication;
    installFiveSmithsModelViewRoles;
    installFiveSmithsUsers	"installFiveSmithsRateCards;"