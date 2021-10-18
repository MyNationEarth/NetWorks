setupNewEnvironment
modelViewApplicationRoles
  | application env |
  "Answer a list of roles for the model viewer application"
  application := BpmApplication
    applicationNamed: 'modelViewApplication'
    ifNone: [  ].
  ^ application getAllRoles