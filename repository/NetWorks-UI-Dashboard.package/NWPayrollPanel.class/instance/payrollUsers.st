accessing
payrollUsers
  ^ ((BpmUser getFrontofficeUsersIn: self organisationModel bpmEnvironment)
    select: [ :user | 
      user
        includesAnyRoleOf:
          (self
            rolesWithNames:
              #('Project Manager' 'Project Designer' 'Project Construction'))
        in: self organisationModel bpmEnvironment ])
    asSortedCollection: [ :a :b | a givenName < b givenName ]