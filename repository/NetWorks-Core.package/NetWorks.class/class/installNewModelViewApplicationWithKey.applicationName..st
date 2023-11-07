setupNewEnvironment
installNewModelViewApplicationWithKey: modelKey applicationName: clientName
  | defaultEnvironment adminUser application role |
  defaultEnvironment := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := (BpmApplication newNamed: modelKey , '-modelViewApplication')
    addToCache.
  (self instance organisationWithDnsName: modelKey)
    bpmModelViewApplication: application.
  adminUser := self defaultBpmUserClass
    getExistingOrNewUserNamed: (clientName , '-admin@' , modelKey) asLowercase.
  defaultEnvironment registerApplication: application.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: 'modelViewAdmin'
    in: modelKey , '-modelViewApplication'.
  role isAdmin: true.
  role grantUser: adminUser.
  self installModelViewRolesWithKey: modelKey applicationName: clientName