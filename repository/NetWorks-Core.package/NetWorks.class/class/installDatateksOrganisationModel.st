datateks
installDatateksOrganisationModel
  self instance organisationModels
    at: #'Datateks'
    put:
      (NWOrganisationModel new
        dnsName: 'wotmworth.datateks.com.au';
        logoLarge: BpmFlowUIFileLibrary / #'branddatatekslogoTransparentPng';
        yourself)