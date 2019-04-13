datateks
installDatateksOrganisationModel
  self instance organisationModels
    at: #'datateks.com.au'
    put:
      (NWOrganisationModel new
        dnsName: 'wotmworth.datateks.com.au';
        logoLarge: BpmFlowUIFileLibrary / #'branddatatekslogoColourPng';
        yourself)