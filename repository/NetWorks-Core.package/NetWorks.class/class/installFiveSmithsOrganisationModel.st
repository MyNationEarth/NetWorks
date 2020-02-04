5smiths
installFiveSmithsOrganisationModel
  self instance organisationModels
    at: #'5smiths.com.au'
    ifAbsentPut: [ 
      NWOrganisationModel new
        dnsName: 'networks.5smiths.com.au';
        logoLarge: BpmFlowUIFileLibrary / #'brand5smithsBlackPng';
        yourself ]