testing
userHasRoleNamed: roleName
  "Answer true if the current user has the role named roleName"

  ^ self session user includesRoleNamed: roleName