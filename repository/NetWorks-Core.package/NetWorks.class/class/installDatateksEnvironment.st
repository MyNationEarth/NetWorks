datateks
installDatateksEnvironment
  "NetWorks installDatateksEnvironment"

  | modelKey |
  modelKey := #'datateks.com.au'.
  BpmSystemInitialization
    initializeCurrentSystem;
    createSystemDefaultObjects.
  self
    installOrganisationModelWithKey: modelKey
    dnsName: 'wotmworth.datateks.com.au'
    logoUrl: BpmFlowUIFileLibrary / #'branddatatekslogoColourPng'.
  self installBpmEnvironmentWithKey: modelKey applicationName: 'Wotmworth'.
  self installModelViewApplicationWithKey: modelKey.
  self
    installAdminUsers:
      #(#('Damien' 'Marov' 'damienmarov@datateks.com.au') #('Marshell' 'Antonio' 'marshellantonio@datateks.com.au'))
    withKey: modelKey