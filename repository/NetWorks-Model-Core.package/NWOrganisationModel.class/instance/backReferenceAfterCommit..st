magritte-hooks
backReferenceAfterCommit: anOrgnisationModel
  "Setup BpmEnvironment"

  self bpmEnvironment notNil
    ifTrue: [ ^ self ].
  self installBpmEnvironmentWithKey: dnsName applicationName: ecmName