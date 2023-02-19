setup
installModelViewApplicationWithKey: modelKey
  | modelViewApplicationName defaultEnvironment adminUser application role |
  defaultEnvironment := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  modelViewApplicationName := modelKey , '-modelView'.
  application := (BpmApplication newNamed: modelViewApplicationName) addToCache.
  adminUser := self defaultBpmUserClass addAdminUser.
  defaultEnvironment registerApplication: application.
  (self instance organisationWithDnsName: modelKey)
    bpmModelViewApplication: application.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: modelKey , '-Admin'
    in: modelViewApplicationName.
  role isAdmin: true.
  role grantUser: adminUser.
  self installModelViewRolesWithKey: modelKey