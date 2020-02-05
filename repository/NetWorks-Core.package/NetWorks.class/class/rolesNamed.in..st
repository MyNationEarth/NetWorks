bpm roles
rolesNamed: roleNames in: bpmApplication
  "Answer the BpmRole instance"

  ^ roleNames
    collect: [ :roleName | self roleNamed: roleName in: bpmApplication ]