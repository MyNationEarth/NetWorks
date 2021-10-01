setupNewEnvironment
installNewModelViewApplicationWithKey: modelKey
  | defaultEnvironment adminUser application role |
  defaultEnvironment := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := (BpmApplication newNamed: modelKey , '-modelViewApplication')
    addToCache.
  adminUser := self defaultBpmUserClass addAdminUser.
  defaultEnvironment registerApplication: application.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: 'modelViewAdmin'
    in: modelKey , '-modelViewApplication'.
  role isAdmin: true.
  role grantUser: adminUser.
  self installModelViewRolesWithKey: modelKey