magritte-hooks
backReferenceAfterCommit: anOrgnisationModel
  "Setup BpmEnvironment"

  self bpmEnvironment notNil
    ifTrue: [ ^ self ].
  NetWorks installBpmEnvironmentWithKey: dnsName applicationName: ecmName.
  NetWorks installModelViewApplicationWithKey: dnsName