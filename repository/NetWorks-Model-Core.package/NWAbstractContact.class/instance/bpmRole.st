user access
bpmRole
  "Answer the BpmRole for this contact to login to ModelViewerApplication"

  ^ self defaultFrontOfficeRoleClass
    getRoleNamed: self roleName
    in: 'modelViewApplication'