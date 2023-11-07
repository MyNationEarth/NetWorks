handling
handleFiltered: aRequestContext
  (self model
    ifNotNil: [ :model | 
      | hostName organisationModel |
      hostName := aRequestContext request host.
      organisationModel := model organisationWithDnsName: hostName.
      false
        ifTrue: [ 
          (ObjectLogEntry
            info: 'Set OrganisationModel for host: ' , hostName
            object: organisationModel) addToLog ].
      organisationModel ])
    useDuring: [ super handleFiltered: aRequestContext ]