datateks
installFiveSmithsModelViewApplication
  | defaultEnvironment adminUser application role |
  defaultEnvironment := self defaultEnvironmentClass
    getEnvironmentNamed: '5smiths.com.au'
    ifNone: [  ].
  application := (BpmApplication newNamed: 'modelViewApplication') addToCache.
  adminUser := self defaultBpmUserClass addAdminUser.
  defaultEnvironment registerApplication: application.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: 'modelViewAdmin'
    in: 'modelViewApplication'.
  role isAdmin: true.
  role grantUser: adminUser