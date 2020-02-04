testing
canBeAccessedByUser: aUser
  "Test to see if the user has permission to access this panel"

  ^ aUser
    includesAnyRoleOf: self accessRoles
    in: self organisationModel bpmEnvironment