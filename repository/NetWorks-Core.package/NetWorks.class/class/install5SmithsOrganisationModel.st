5smiths
install5SmithsOrganisationModel
  self instance organisationModels
    at: #'5Smiths'
    put:
      (NWOrganisationModel new
        dnsName: 'networks.5smiths.com.au';
        logoLarge: BpmFlowUIFileLibrary / #'brand5smiths5smithsBlackPng';
        yourself)