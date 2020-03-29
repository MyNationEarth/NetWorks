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
          | newUser |
          "Create a new user "
          newUser := (BpmUser
            getExistingOrNewUserNamed: importedUser centralUser username
            password: 'initialPassword'
            forEnvironment: targetEnvironment)
            givenName: importedUser givenName;
            familyName: importedUser familyName;
            emailAddress: importedUser centralUser username;
            yourself.
          newUser encryptedPasssword: importedUser centralUser password.
          targetEnvironment registerUser: newUser.
          newUser ] ].
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
  self halt.
  importedOrganisationModel bpmEnvironment: targetEnvironment