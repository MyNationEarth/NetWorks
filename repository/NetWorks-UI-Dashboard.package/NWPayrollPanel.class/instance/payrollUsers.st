accessing
payrollUsers
  ^ (BpmUser getFrontofficeUsers
    select: [ :user | 
      user
        includesAnyRoleOf:
          (self
            rolesWithNames:
              #('Project Manager' 'Project Designer' 'Project Construction')) ])
    asSortedCollection: [ :a :b | a givenName < b givenName ]