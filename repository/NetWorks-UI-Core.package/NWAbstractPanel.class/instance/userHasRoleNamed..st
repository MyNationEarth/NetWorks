testing
userHasRoleNamed: roleName
  | role |
  "Answer true if the current user has the role named roleName"
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: roleName
    in: self modelViewApplication applicationName.
  ^ self session user
    includesAnyRoleOf: {role}
    in: self organisationModel bpmEnvironment