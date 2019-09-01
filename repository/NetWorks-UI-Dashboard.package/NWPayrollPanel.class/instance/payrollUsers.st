accessing
payrollUsers
  ^ BpmUser getFrontofficeUsers
    select: [ :user | 
      user
        includesAnyRoleOf:
          (self rolesWithNames: #('Project Manager' 'Project Design')) ]