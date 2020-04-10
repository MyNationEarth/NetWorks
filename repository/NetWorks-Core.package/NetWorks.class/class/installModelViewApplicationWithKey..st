setup
installModelViewApplicationWithKey: modelKey
  | defaultEnvironment adminUser application role |
  defaultEnvironment := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
    ifNone: [  ].
  application := (BpmApplication newNamed: 'modelViewApplication') addToCache.
  adminUser := self defaultBpmUserClass addAdminUser.
  defaultEnvironment registerApplication: application.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: 'modelViewAdmin'
    in: 'modelViewApplication'.
  role isAdmin: true.
  role grantUser: adminUser.
  self installModelViewRolesWithKey: modelKey