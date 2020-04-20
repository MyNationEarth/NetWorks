user access
bpmUser
  "Answer the BpmUser with userName"

  ^ BpmUser getUserNamed: self userName ifAbsent: [ nil ]