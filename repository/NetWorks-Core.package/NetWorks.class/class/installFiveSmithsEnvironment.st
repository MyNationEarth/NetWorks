5smiths
installFiveSmithsEnvironment
  "NetWorks installFiveSmithsEnvironment"

  | modelKey |
  modelKey := #'5smiths.com.au'.
  BpmSystemInitialization
    initializeCurrentSystem;
    createSystemDefaultObjects.
  self
    installOrganisationModelWithKey: modelKey
    dnsName: 'networks.5smiths.com.au'
    logoUrl: BpmFlowUIFileLibrary / #'brand5smithsBlackPng'.
  self installBpmEnvironmentWithKey: modelKey applicationName: 'NetWorks'.
  self installModelViewApplicationWithKey: modelKey.
  self
    installAdminUsers: #(#('Craig' 'Smith' 'craig@5smiths.com.au'))
    withKey: modelKey