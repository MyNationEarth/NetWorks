magritte-hooks
backReferenceAfterCommit: anOrgnisationModel
  "Setup BpmEnvironment"

  self bpmEnvironment notNil
    ifTrue: [ ^ self ].
  NetWorks installNewClientEnvironmentWithKey: dnsName applicationName: ecmName.
  NetWorks
    installNewModelViewApplicationWithKey: dnsName
    applicationName: ecmName