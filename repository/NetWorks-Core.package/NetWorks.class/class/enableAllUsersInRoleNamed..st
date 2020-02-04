datateks
enableAllUsersInRoleNamed: roleName
  | application role env |
  "Create Roles in each application and add all roles to all users"
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.
  role := self defaultFrontOfficeRoleClass
    getRoleNamed: roleName
    in: application applicationName.
  env users do: [ :user | role grantUser: user ifPresent: [  ] ]