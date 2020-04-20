utilities
hasContactForUser: bpmUser
  ^ (self contacts
    detect: [ :contact | contact bpmUser == bpmUser ]
    ifNone: [ nil ]) notNil