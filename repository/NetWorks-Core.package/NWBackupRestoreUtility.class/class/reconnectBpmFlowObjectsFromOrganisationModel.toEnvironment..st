bpmFlow restore
reconnectBpmFlowObjectsFromOrganisationModel: importedOrganisationModel toEnvironment: targetEnvironment
  | targetUsers sourceRoles targetRoles |
  "Reference / recreate users"
  targetUsers := importedOrganisationModel bpmEnvironment users
    collect: [ :importedUser | 
      "Does this user exist in the targetEnvironment"
      targetEnvironment users
        at: importedUser centralUser username
        ifAbsent: [ 
          "Create a new user "
          nil ] ].
  sourceRoles := importedOrganisationModel bpmEnvironment users
    inject: Set new
    into: [ :roles :user | 
      roles
        addAll: user roles;
        yourself ].
  targetRoles := sourceRoles
    inject: Set new
    into: [ :roles :sourceRole | 
      "Reference / recreate roles"
      self defaultFrontOfficeRoleClass ].
  self halt