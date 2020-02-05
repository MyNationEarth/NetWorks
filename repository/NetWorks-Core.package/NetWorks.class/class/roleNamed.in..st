bpm roles
roleNamed: roleName in: bpmApplication
  "Answer the BpmRole instance"

  ^ self defaultFrontOfficeRoleClass
    getRoleNamed: roleName
    in: bpmApplication applicationName